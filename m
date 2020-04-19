Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B7781AFA30
	for <lists+linux-mtd@lfdr.de>; Sun, 19 Apr 2020 14:53:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kvliYQ/COjpP+TihsfN6/loDMk1W6V9pSzP/rLsMVL8=; b=o8ya7F3+BMn3Ve
	en4YxfSMjan2Cs7A1v5HaWkeIqAkOg13WbwmYww68Fg97R+ymP6S5CPMCaUgxtrmg8DuG0MgSkmWP
	/p276K321ds6fbJ0dvjZiP9fNw6qFj5iA7MT2rXqnOPHPCpDL4iPu1oOUqJgmcCPqKgwnpnv4ndiQ
	9mW3nxB4kGaIY3ml3VEuxkZJA3BwPka/tGlKGHDA0rtdg+VR5A4fYXajL7XcaJ5Cgam2KpOYP3EEp
	sk8HFuHRsghQ3LmwTRsYV30inMlxM0rbdcea45lWr+z+MD2s7JJ9oSxEr1M70VqY1IxTm82KoCzSq
	3+DD5xlZFdIYJRAm19jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ9S2-0007OO-MB; Sun, 19 Apr 2020 12:53:34 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ9QI-0005sk-Q4
 for linux-mtd@lists.infradead.org; Sun, 19 Apr 2020 12:51:50 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 755EB2A0D63;
 Sun, 19 Apr 2020 13:51:45 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 3/9] mtd: rawnand: bcm47xx: Allow compiling the driver when
 COMPILE_TEST=y
Date: Sun, 19 Apr 2020 14:51:34 +0200
Message-Id: <20200419125140.1307309-4-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <20200419125140.1307309-1-boris.brezillon@collabora.com>
References: <20200419125140.1307309-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_055146_967602_441042F9 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Richard Weinberger <richard@nod.at>, Boris Brezillon <bbrezillon@kernel.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 bcm-kernel-feedback-list@broadcom.com, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Makes it easier to spot compile-time issues.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/mtd/nand/raw/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/Kconfig b/drivers/mtd/nand/raw/Kconfig
index 60c4eb9d382f..1f8aa353f764 100644
--- a/drivers/mtd/nand/raw/Kconfig
+++ b/drivers/mtd/nand/raw/Kconfig
@@ -242,7 +242,7 @@ config MTD_NAND_BRCMNAND
 
 config MTD_NAND_BCM47XXNFLASH
 	tristate "BCM4706 BCMA NAND controller"
-	depends on BCMA_NFLASH
+	depends on BCMA_NFLASH || COMPILE_TEST
 	help
 	  BCMA bus can have various flash memories attached, they are
 	  registered by bcma as platform devices. This enables driver for
-- 
2.25.2


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
