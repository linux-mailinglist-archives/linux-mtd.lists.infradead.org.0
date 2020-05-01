Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AF291C1028
	for <lists+linux-mtd@lfdr.de>; Fri,  1 May 2020 11:07:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yQFbY8GAPUhA1UHc+ubCfTlhV8LDVyt64mxEsdj2v90=; b=fUdXwoL0l9iMGa
	7r6pAJAz92ehmEtiPj2nSnFAi70lpGgoNK/2uSvU893Xg0tGJ7Y4jQCeqOdMtiQzaujo/Iu/XUWVa
	0l1v56g3pVt78C4roh7hzC2fRWANVA7sg+hS86kTBYmyZnZLgVZICY93OH47hJr8sFH5B1bDg+HBI
	oaI11n+61a6hkB5crmqJNEvXBCoQ8Mn+qKnxIdCBm3y1hdMr2knEdrJx1+/mt8GEqfvbW5C3x+83x
	92qVppzA5nDCC4ApVXyXbuzOGuxwzzu916Px0a/kCeEiq2K6sAQlKbViE7E0rt/40bLhpPMu1CbUo
	w2qxGBiIpF0VZb1MV8Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jURdb-0001Ap-Ul; Fri, 01 May 2020 09:07:15 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jURdO-00018s-2L; Fri, 01 May 2020 09:07:03 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id BA5662A2D4D;
 Fri,  1 May 2020 10:06:59 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
	linux-mtd@lists.infradead.org
Subject: [PATCH 0/4] mtd: rawnand: cs553x: Convert to exec_op()
Date: Fri,  1 May 2020 11:06:46 +0200
Message-Id: <20200501090650.1138200-1-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.25.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_020702_241737_10D03A62 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, linux-geode@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Andres Salomon <dilinger@queued.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hello,

A bit of context to explain the motivation behind those conversions
I've been sending for the last couple of weeks. The raw NAND subsystem
carries a lot of history which makes any rework not only painful, but
also subject to regressions which we only detect when someone dares to
update its kernel on one of those ancient HW. While carrying drivers
for old HW is not a problem per se, carrying ancient and unmaintained
drivers that are not converted to new APIs is a maintenance burden,
hence this massive conversion attempt I'm conducting here.

So here is a series converting the CS553X NAND controller driver to
exec_op(), plus a bunch of minor improvements done along the way.
I hope I'll find someone to test those changes, but if there's no one
still using NAND on GEODE or no interest in keeping it supported in
recent kernel versions, we should definitely consider removing the
driver instead.

Regards,

Boris

Boris Brezillon (4):
  mtd: rawnand: cs553x: Declare controllers instead of NAND chips
  mtd: rawnand: cs553x: Stop using chip->legacy.IO_ADDR_{R,W}
  mtd: rawnand: cs553x: Implement exec_op()
  mtd: rawnand: cs553x: Get rid of the legacy interface implementation

 drivers/mtd/nand/raw/cs553x_nand.c | 194 ++++++++++++++++++++---------
 1 file changed, 134 insertions(+), 60 deletions(-)

-- 
2.25.3


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
