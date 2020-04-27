Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 775AB1B9A21
	for <lists+linux-mtd@lfdr.de>; Mon, 27 Apr 2020 10:27:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=20cB1nWaIre9AsGyae7NXSyAPvtjgJmUXEsVeJENvlU=; b=aK/BLh2nQq/3hO
	W9I7tma3uf6c2+O3mzNuZeBjDdOiitR/tBPJ8l6sfyKebogfybT5j5e44SxxaaSr3JTL3PkBu/BZA
	Kzq9ERXaFEmBjitRHI3kmPvNzYroya3TznkQzbOva8JFcxT3w9qwjufkLFcMDU/HPLEGyxxm0y6o6
	G7TvBDZ1tiUeMSVPBURB0/dmnkqC5blnPuBp3V2TIzKUyQzApG4MpvM8deWEKovPJO7Y8ypXhEeUe
	GkbX/iz65WSZTJk6O20g1GH9o/n1VKk1hRIMXSEr1xR7wWfm2FNtRBb8cqI4kIdxBNVkun251hEk6
	4Wysel4jspTG6InSf8yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSz6m-0005YZ-Sc; Mon, 27 Apr 2020 08:27:20 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSz0L-0006B3-QY
 for linux-mtd@lists.infradead.org; Mon, 27 Apr 2020 08:20:47 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 8C91B2A0978;
 Mon, 27 Apr 2020 09:20:39 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: David Woodhouse <dwmw2@infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org
Subject: [PATCH 11/17] mtd: rawnand: cafe: Don't leave ECC enabled in the
 write path
Date: Mon, 27 Apr 2020 10:20:21 +0200
Message-Id: <20200427082028.394719-12-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.25.3
In-Reply-To: <20200427082028.394719-1-boris.brezillon@collabora.com>
References: <20200427082028.394719-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_012042_330440_06E405CD 
X-CRM114-Status: GOOD (  12.98  )
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

cafe_nand_write_page_lowlevel() sets the ECC auto-generation flag but
never clears it, thus forcing the cafe_nand_cmdfunc() to clear it
in certain circumstances. Let's just clear this flag in
cafe_nand_write_page_lowlevel() instead.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/mtd/nand/raw/cafe_nand.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/raw/cafe_nand.c b/drivers/mtd/nand/raw/cafe_nand.c
index 2825489a71b8..31493a201a02 100644
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
@@ -643,6 +642,7 @@ static int cafe_nand_write_page(struct nand_chip *chip,
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct cafe_priv *cafe = nand_get_controller_data(chip);
+	int ret;
 
 	nand_prog_page_begin_op(chip, page, 0, buf, mtd->writesize);
 	chip->legacy.write_buf(chip, chip->oob_poi, mtd->oobsize);
@@ -650,7 +650,14 @@ static int cafe_nand_write_page(struct nand_chip *chip,
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
+	return ret;
 }
 
 /* F_2[X]/(X**6+X+1)  */
-- 
2.25.3


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
