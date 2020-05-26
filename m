Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31BC11C52E2
	for <lists+linux-mtd@lfdr.de>; Tue,  5 May 2020 12:17:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aT8cQLJOuYkjvRI1SRcJCYeiLYRUYiZBdbuLYXMDEh8=; b=LLn0JB6q4w9U/k
	mtdIuStIDvtxPpJNJq6jVQGrFMNFKEkQ9AJCIrOne6gaZZCypkHUgWT1uNOy82CZ0Vf9op0yycZxi
	13woJU4iAu+/z1YVU9FO/e3vnut7DVOdk+6KM8dYw3DFoSGziQjwxt8w4jzvwuRiBvH/d40HqJtFf
	LnKVJckZNgNG1NN2w9FPT1Wsnh3tAONQkDlgnRCioiAfqaCzGRgaHoOsMpQoEL9REzIKkLMsa0Twd
	a/bDpg7Vy9v2YhX6w+cV+OO3Mee2nqJKrgl4LzkofB2goIwiS4BX54Scsk1deSmmnmoceDTHFELHC
	kNAmbQzbfNps6aU6cwfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVudd-0003xt-1V; Tue, 05 May 2020 10:17:21 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVuaR-000787-Cr
 for linux-mtd@lists.infradead.org; Tue, 05 May 2020 10:14:08 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:d3ea:1c7:41fd:3038])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 6065B2A1B17;
 Tue,  5 May 2020 11:14:01 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org,
 Lubomir Rintel <lkundrak@v3.sk>
Subject: [PATCH v2 12/19] mtd: rawnand: cafe: Don't leave ECC enabled in the
 write path
Date: Tue,  5 May 2020 12:13:46 +0200
Message-Id: <20200505101353.1776394-13-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.25.3
In-Reply-To: <20200505101353.1776394-1-boris.brezillon@collabora.com>
References: <20200505101353.1776394-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_031403_627872_0270B483 
X-CRM114-Status: GOOD (  13.21  )
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

cafe_nand_write_pagel() sets the ECC auto-generation flag but
never clears it, thus forcing cafe_nand_cmdfunc() to clear it
in certain circumstances. Let's just clear this flag in
where it's been set instead.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>
Tested-by: Lubomir Rintel <lkundrak@v3.sk>
---
Changes in v2:
* Add R-b/T-b
* Fix commit message
* Add blank line before return statement
---
 drivers/mtd/nand/raw/cafe_nand.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/raw/cafe_nand.c b/drivers/mtd/nand/raw/cafe_nand.c
index e41ea95b3088..f7e537836d55 100644
--- a/drivers/mtd/nand/raw/cafe_nand.c
+++ b/drivers/mtd/nand/raw/cafe_nand.c
@@ -261,7 +261,6 @@ static void cafe_nand_cmdfunc(struct nand_chip *chip, unsigned command,
 			    CAFE_FIELD_PREP(NAND_CTRL2, CMD2, command),
 			    NAND_CTRL2);
 		ctl1 = cafe->ctl1;
-		cafe->ctl2 &= ~CAFE_NAND_CTRL2_AUTO_WRITE_ECC;
 		dev_dbg(&cafe->pdev->dev, "Continue command, ctl1 %08x, #data %d\n",
 			cafe->ctl1, cafe->nr_data);
 		goto do_command;
@@ -641,6 +640,7 @@ static int cafe_nand_write_page(struct nand_chip *chip,
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct cafe_priv *cafe = nand_get_controller_data(chip);
+	int ret;
 
 	nand_prog_page_begin_op(chip, page, 0, buf, mtd->writesize);
 	chip->legacy.write_buf(chip, chip->oob_poi, mtd->oobsize);
@@ -648,7 +648,15 @@ static int cafe_nand_write_page(struct nand_chip *chip,
 	/* Set up ECC autogeneration */
 	cafe->ctl2 |= CAFE_NAND_CTRL2_AUTO_WRITE_ECC;
 
-	return nand_prog_page_end_op(chip);
+	ret = nand_prog_page_end_op(chip);
+
+	/*
+	 * And clear it before returning so that following write operations
+	 * that do not involve ECC don't generate ECC bytes.
+	 */
+	cafe->ctl2 &= ~CAFE_NAND_CTRL2_AUTO_WRITE_ECC;
+
+	return ret;
 }
 
 /* F_2[X]/(X**6+X+1)  */
-- 
2.25.3


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
