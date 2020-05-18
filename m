Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 059301D7E28
	for <lists+linux-mtd@lfdr.de>; Mon, 18 May 2020 18:18:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JHGtq8JyVYiSPFUb+MgI95T2f1noXcT98xBxQ2eM9nc=; b=iQIgflR3BXRvTc
	fR7o7A/7gTMPLjufurfHyXbkxUjy3CfQ/kbocVfDgRtpRLqDd/a5bxTQV38flO/kFRpvJqD6IsGbo
	yjfdupRoWxjam2wl3al5R/h6aHPrKFg65spci78ong5zzUfZPf8r5nbSQ/TFllt/ZbNacu49GUyT8
	3SDPygAITHPxjicZkpnkkrlqLCVAQSVgiLRf0nqpayuoTuednq7zmjS9/cP24wLakyd3q0gie2L5x
	lSb7P5tRV68zK8St3nwuES1+E1eE6umuIT34hn6IBZMw7uX5aVxF9v5OH3RU7i51F89kSAZIzAgxM
	luMeNr+womTsL/q7jnVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaiT9-0006yx-3w; Mon, 18 May 2020 16:18:23 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaiSm-0006oQ-FB
 for linux-mtd@lists.infradead.org; Mon, 18 May 2020 16:18:01 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 0F94E2A0A62;
 Mon, 18 May 2020 17:17:59 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>
Subject: [PATCH v3 1/6] mtd: rawnand: atmel: Enable the NFC controller at
 probe time
Date: Mon, 18 May 2020 18:17:49 +0200
Message-Id: <20200518161754.302415-2-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200518161754.302415-1-boris.brezillon@collabora.com>
References: <20200518161754.302415-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_091800_638534_66826517 
X-CRM114-Status: GOOD (  12.48  )
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
Cc: Richard Weinberger <richard@nod.at>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

No need to enable it everytime select_chip() is called. If we really
care about PM, we should implement runtime PM hooks and disable the
controller and all its clocks when the controller has been unused for
some time.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>
Reviewed-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
Changes in v3:
* Add R-b

Changes in v2:
* New patch
---
 drivers/mtd/nand/raw/atmel/nand-controller.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/mtd/nand/raw/atmel/nand-controller.c b/drivers/mtd/nand/raw/atmel/nand-controller.c
index 46a3724a788e..5d9ccc227c99 100644
--- a/drivers/mtd/nand/raw/atmel/nand-controller.c
+++ b/drivers/mtd/nand/raw/atmel/nand-controller.c
@@ -525,11 +525,8 @@ static void atmel_hsmc_nand_select_chip(struct nand_chip *chip, int cs)
 
 	atmel_nand_select_chip(chip, cs);
 
-	if (!nand->activecs) {
-		regmap_write(nc->base.smc, ATMEL_HSMC_NFC_CTRL,
-			     ATMEL_HSMC_NFC_CTRL_DIS);
+	if (!nand->activecs)
 		return;
-	}
 
 	if (nand->activecs->rb.type == ATMEL_NAND_NATIVE_RB)
 		chip->legacy.dev_ready = atmel_hsmc_nand_dev_ready;
@@ -542,8 +539,6 @@ static void atmel_hsmc_nand_select_chip(struct nand_chip *chip, int cs)
 			   ATMEL_HSMC_NFC_CFG_PAGESIZE(mtd->writesize) |
 			   ATMEL_HSMC_NFC_CFG_SPARESIZE(mtd->oobsize) |
 			   ATMEL_HSMC_NFC_CFG_RSPARE);
-	regmap_write(nc->base.smc, ATMEL_HSMC_NFC_CTRL,
-		     ATMEL_HSMC_NFC_CTRL_EN);
 }
 
 static int atmel_nfc_exec_op(struct atmel_hsmc_nand_controller *nc, bool poll)
@@ -2248,6 +2243,9 @@ atmel_hsmc_nand_controller_remove(struct atmel_nand_controller *nc)
 		return ret;
 
 	hsmc_nc = container_of(nc, struct atmel_hsmc_nand_controller, base);
+	regmap_write(hsmc_nc->base.smc, ATMEL_HSMC_NFC_CTRL,
+		     ATMEL_HSMC_NFC_CTRL_DIS);
+
 	if (hsmc_nc->sram.pool)
 		gen_pool_free(hsmc_nc->sram.pool,
 			      (unsigned long)hsmc_nc->sram.virt,
@@ -2300,6 +2298,8 @@ static int atmel_hsmc_nand_controller_probe(struct platform_device *pdev,
 	/* Initial NFC configuration. */
 	regmap_write(nc->base.smc, ATMEL_HSMC_NFC_CFG,
 		     ATMEL_HSMC_NFC_CFG_DTO_MAX);
+	regmap_write(nc->base.smc, ATMEL_HSMC_NFC_CTRL,
+		     ATMEL_HSMC_NFC_CTRL_EN);
 
 	ret = atmel_nand_controller_add_nands(&nc->base);
 	if (ret)
-- 
2.25.4


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
