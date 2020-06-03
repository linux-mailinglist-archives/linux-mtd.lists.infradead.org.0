Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22DE61ED2FD
	for <lists+linux-mtd@lfdr.de>; Wed,  3 Jun 2020 17:08:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1LbFeZVD4Tq9sGjmghx6qTZqkS6mtsLXhgNtWl568E4=; b=LzjB0tN/z1uOHx
	OS8iL/jbbdKZ8akNaVaO0t0cJTu3bxhvIjtgf+wi3UqUKQDuKHQFFc6EnQ+LTiZEazQfXP9eNvnky
	/ftznPnD7BC0unOVHYqF0LBVHIGStJhdPl352V6h3itPxY2e6SNA8xK7ESEdZIzNaDYRY9+z3wPle
	unnC65YH2RARGgUAFI96zRkHIgdXnJ7zhfe9zb1p/nSdXNKBZYEqZi3sSPmXmj8Y1DBrXfms97MJY
	slg4cFHU8jBIiblAcrt4A3zFoE6P6jFKl2aQv+nh6hyLtVno86y4B1/8Ol7TvTfEPKSpb4K/pPBrF
	fE4m963/on3LOhF/w/NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgV02-0006I5-Ak; Wed, 03 Jun 2020 15:08:14 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgUzi-0006AD-KJ
 for linux-mtd@lists.infradead.org; Wed, 03 Jun 2020 15:07:56 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 482E72A3A88;
 Wed,  3 Jun 2020 16:07:52 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org,
 Ben Dooks <ben-linux@fluff.org>
Subject: [PATCH 0/3] mtd: rawnand: gpio: Convert to exec_op()
Date: Wed,  3 Jun 2020 17:07:43 +0200
Message-Id: <20200603150746.1423257-1-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_080754_792309_8843378E 
X-CRM114-Status: GOOD (  12.06  )
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
Cc: linux-mips@linux-mips.org, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Ralf Baechle <ralf@linux-mips.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, Jamie Iles <jamie@jamieiles.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>, Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hello,

A bit of context to explain the motivation behind those conversions
I've been sending for the last few weeks. The raw NAND subsystem
carries a lot of history which makes any rework not only painful, but
also subject to regressions which we only detect when someone dares to
update its kernel on one of those ancient HW. While carrying drivers
for old HW is not a problem per se, carrying ancient and unmaintained
drivers that are not converted to new APIs is a maintenance burden,
hence this massive conversion attempt I'm conducting here.

So here is a series converting the GPIO NAND controller driver to
exec_op(). I hope I'll find someone to test those changes, but if
there's no one still having access to this HW or no interest in keeping
it supported in recent kernel versions, we should definitely consider
removing the driver instead.

Regards,

Boris

Boris Brezillon (3):
  mtd: rawnand: gpio: Inherit from nand_controller
  mtd: rawnand: gpio: Implement exec_op()
  mtd: rawnand: gpio: Get rid of the legacy interface implementation

 drivers/mtd/nand/raw/gpio.c | 116 ++++++++++++++++++++++++++++--------
 1 file changed, 91 insertions(+), 25 deletions(-)

-- 
2.25.4


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
