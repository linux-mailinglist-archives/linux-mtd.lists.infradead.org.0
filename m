Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40BF51C1807
	for <lists+linux-mtd@lfdr.de>; Fri,  1 May 2020 16:41:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w38ihpeYsp+nhhK7f+pN7DpG73/yLiCj3By6JV2ec6E=; b=BV9ByP6EnNxmHD
	daon5mfz4HMVK5D4c6GU5z303uO3aLaFLqA6klux8KKwPcBu9WAae+wqq1q6sL1E/qxUUZG1sE687
	ZHodWKIK7AlKtl/pvKQfda4ZhvhIDzCUMh+wO95dvZ+LzT2UfpDGX37jtxQFoKRq9Y1lSY5AD1Xgo
	NBGwBQ3PndsY25IZDhsfPoTZs1qOiwPUZLqblVNHGqRQTI0qM6K+E+GFnzBF4z1xhhXKOUPo9YZug
	sXIKqzqwkc+XtIWcrSjgKfZlAoXBVQawlA2+vneNPjhrfHAucH+8Gk9UV8yWP6wK7T2qTsXnJvsN/
	3cjt+KZaIeCTRON7q2Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUWrB-00050B-2e; Fri, 01 May 2020 14:41:37 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUWp5-0000ot-0j
 for linux-mtd@lists.infradead.org; Fri, 01 May 2020 14:39:31 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 99B352A30CA;
 Fri,  1 May 2020 15:39:23 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org
Subject: [PATCH 0/5] mtd: rawnand: diskonchip: Convert to exec_op()
Date: Fri,  1 May 2020 16:39:12 +0200
Message-Id: <20200501143917.1388957-1-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.25.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_073927_206764_9D4363FF 
X-CRM114-Status: GOOD (  10.85  )
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
Cc: Richard Weinberger <richard@nod.at>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>
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

So here is a series converting the DiskOnChip NAND controller driver to
exec_op(), plus a bunch of minor improvements done along the way.

Regards,

Boris

Boris Brezillon (5):
  mtd: rawnand: diskonchip: Make sure doc2001plus_readbuf() works for
    single byte reads
  mtd: rawnand: diskonchip: Get rid of doc2000_readbuf_dword()
  mtd: rawnand: diskonchip: Inherit from nand_controller
  mtd: rawnand: diskonchip: Implement exec_op()
  mtd: rawnand: diskonchip: Get rid of the legacy interface
    implementation

 drivers/mtd/nand/raw/diskonchip.c | 521 ++++++++++++------------------
 1 file changed, 201 insertions(+), 320 deletions(-)

-- 
2.25.3


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
