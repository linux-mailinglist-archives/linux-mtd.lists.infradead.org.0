Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F7224173
	for <lists+linux-mtd@lfdr.de>; Mon, 20 May 2019 21:46:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e6Dfg3P+hZ8+r7mkG4U5DRgE9iesOxYdCscRW7CTj6A=; b=BZzdtuHS1ZZwmi
	/oNgpzWo2y2Kiq7Q73VxFtA8xVL0Mq3VYWdGagL/NkIwdgX7jj2FvcevuyFcgOpwrfUDLvOLrdA/a
	c7JiYbCN+Rlqb1qvKA5qagdETAVdSkxqSFppW8Vir4xqkqV2uD345GnSnXasfn/YCOigyEkN80Y3B
	eNBfyA8gzfHoPI9x0VTXuxlP21Mz8n2qZDjsU82z5x/9iKiPDHhQyx6f3jGAxWmsWgFYA+TYe3/ev
	oCjgvRUxzFviyPSASMNOMlboaD45HxypxtGPvwYNGfxPDITJgvUrDQ3TPUZ0M4Uq4j3LEBPi3zHyZ
	wQcUzT4zVDrehB6ctKiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSoEb-0004HY-4A; Mon, 20 May 2019 19:46:09 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSoDm-0003JV-AV
 for linux-mtd@lists.infradead.org; Mon, 20 May 2019 19:45:40 +0000
Received: from allycomm.com (184-23-191-215.vpn.dynamic.sonic.net
 [184.23.191.215])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 0F5D53BCD8;
 Mon, 20 May 2019 12:45:13 -0700 (PDT)
From: Jeff Kletsky <lede@allycomm.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Boris Brezillon <bbrezillon@kernel.org>,
 Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>
Subject: [PATCH v3 3/3] mtd: spinand: Add support for GigaDevice GD5F1GQ4UFxxG
Date: Mon, 20 May 2019 12:44:54 -0700
Message-Id: <20190520194454.32175-4-lede@allycomm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190520194454.32175-1-lede@allycomm.com>
References: <20190520194454.32175-1-lede@allycomm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_124518_739522_D43A7889 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: linux-mtd@lists.infradead.org, Jeff Kletsky <git-commits@allycomm.com>,
 linux-kernel@vger.kernel.org, Frieder Schrempf <frieder.schrempf@kontron.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Jeff Kletsky <git-commits@allycomm.com>

The GigaDevice GD5F1GQ4UFxxG SPI NAND is in current production devices
and, while it has the same logical layout as the E-series devices,
it differs in the SPI interfacing in significant ways.

This support is contingent on previous commits to:

  * Add support for two-byte device IDs
  * Define macros for page-read ops with three-byte addresses

http://www.gigadevice.com/datasheet/gd5f1gq4xfxxg/

Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>

Reviewed-by: Frieder Schrempf <frieder.schrempf@kontron.de>
---
 drivers/mtd/nand/spi/gigadevice.c | 79 +++++++++++++++++++++++++------
 1 file changed, 64 insertions(+), 15 deletions(-)

diff --git a/drivers/mtd/nand/spi/gigadevice.c b/drivers/mtd/nand/spi/gigadevice.c
index 0b49d8264bef..d6497ac4c5d8 100644
--- a/drivers/mtd/nand/spi/gigadevice.c
+++ b/drivers/mtd/nand/spi/gigadevice.c
@@ -9,11 +9,17 @@
 #include <linux/mtd/spinand.h>
 
 #define SPINAND_MFR_GIGADEVICE			0xC8
+
 #define GD5FXGQ4XA_STATUS_ECC_1_7_BITFLIPS	(1 << 4)
 #define GD5FXGQ4XA_STATUS_ECC_8_BITFLIPS	(3 << 4)
 
 #define GD5FXGQ4UEXXG_REG_STATUS2		0xf0
 
+#define GD5FXGQ4UXFXXG_STATUS_ECC_MASK		(7 << 4)
+#define GD5FXGQ4UXFXXG_STATUS_ECC_NO_BITFLIPS	(0 << 4)
+#define GD5FXGQ4UXFXXG_STATUS_ECC_1_3_BITFLIPS	(1 << 4)
+#define GD5FXGQ4UXFXXG_STATUS_ECC_UNCOR_ERROR	(7 << 4)
+
 static SPINAND_OP_VARIANTS(read_cache_variants,
 		SPINAND_PAGE_READ_FROM_CACHE_QUADIO_OP(0, 2, NULL, 0),
 		SPINAND_PAGE_READ_FROM_CACHE_X4_OP(0, 1, NULL, 0),
@@ -22,6 +28,14 @@ static SPINAND_OP_VARIANTS(read_cache_variants,
 		SPINAND_PAGE_READ_FROM_CACHE_OP(true, 0, 1, NULL, 0),
 		SPINAND_PAGE_READ_FROM_CACHE_OP(false, 0, 1, NULL, 0));
 
+static SPINAND_OP_VARIANTS(read_cache_variants_f,
+		SPINAND_PAGE_READ_FROM_CACHE_QUADIO_OP(0, 2, NULL, 0),
+		SPINAND_PAGE_READ_FROM_CACHE_X4_OP_3A(0, 1, NULL, 0),
+		SPINAND_PAGE_READ_FROM_CACHE_DUALIO_OP(0, 1, NULL, 0),
+		SPINAND_PAGE_READ_FROM_CACHE_X2_OP_3A(0, 1, NULL, 0),
+		SPINAND_PAGE_READ_FROM_CACHE_OP_3A(true, 0, 1, NULL, 0),
+		SPINAND_PAGE_READ_FROM_CACHE_OP_3A(false, 0, 0, NULL, 0));
+
 static SPINAND_OP_VARIANTS(write_cache_variants,
 		SPINAND_PROG_LOAD_X4(true, 0, NULL, 0),
 		SPINAND_PROG_LOAD(true, 0, NULL, 0));
@@ -59,6 +73,11 @@ static int gd5fxgq4xa_ooblayout_free(struct mtd_info *mtd, int section,
 	return 0;
 }
 
+static const struct mtd_ooblayout_ops gd5fxgq4xa_ooblayout = {
+	.ecc = gd5fxgq4xa_ooblayout_ecc,
+	.free = gd5fxgq4xa_ooblayout_free,
+};
+
 static int gd5fxgq4xa_ecc_get_status(struct spinand_device *spinand,
 					 u8 status)
 {
@@ -83,7 +102,7 @@ static int gd5fxgq4xa_ecc_get_status(struct spinand_device *spinand,
 	return -EINVAL;
 }
 
-static int gd5fxgq4uexxg_ooblayout_ecc(struct mtd_info *mtd, int section,
+static int gd5fxgq4_variant2_ooblayout_ecc(struct mtd_info *mtd, int section,
 				       struct mtd_oob_region *region)
 {
 	if (section)
@@ -95,7 +114,7 @@ static int gd5fxgq4uexxg_ooblayout_ecc(struct mtd_info *mtd, int section,
 	return 0;
 }
 
-static int gd5fxgq4uexxg_ooblayout_free(struct mtd_info *mtd, int section,
+static int gd5fxgq4_variant2_ooblayout_free(struct mtd_info *mtd, int section,
 					struct mtd_oob_region *region)
 {
 	if (section)
@@ -108,6 +127,11 @@ static int gd5fxgq4uexxg_ooblayout_free(struct mtd_info *mtd, int section,
 	return 0;
 }
 
+static const struct mtd_ooblayout_ops gd5fxgq4_variant2_ooblayout = {
+	.ecc = gd5fxgq4_variant2_ooblayout_ecc,
+	.free = gd5fxgq4_variant2_ooblayout_free,
+};
+
 static int gd5fxgq4uexxg_ecc_get_status(struct spinand_device *spinand,
 					u8 status)
 {
@@ -150,15 +174,25 @@ static int gd5fxgq4uexxg_ecc_get_status(struct spinand_device *spinand,
 	return -EINVAL;
 }
 
-static const struct mtd_ooblayout_ops gd5fxgq4xa_ooblayout = {
-	.ecc = gd5fxgq4xa_ooblayout_ecc,
-	.free = gd5fxgq4xa_ooblayout_free,
-};
+static int gd5fxgq4ufxxg_ecc_get_status(struct spinand_device *spinand,
+					u8 status)
+{
+	switch (status & GD5FXGQ4UXFXXG_STATUS_ECC_MASK) {
+	case GD5FXGQ4UXFXXG_STATUS_ECC_NO_BITFLIPS:
+		return 0;
 
-static const struct mtd_ooblayout_ops gd5fxgq4uexxg_ooblayout = {
-	.ecc = gd5fxgq4uexxg_ooblayout_ecc,
-	.free = gd5fxgq4uexxg_ooblayout_free,
-};
+	case GD5FXGQ4UXFXXG_STATUS_ECC_1_3_BITFLIPS:
+		return 3;
+
+	case GD5FXGQ4UXFXXG_STATUS_ECC_UNCOR_ERROR:
+		return -EBADMSG;
+
+	default: /* (2 << 4) through (6 << 4) are 4-8 corrected errors */
+		return ((status & GD5FXGQ4UXFXXG_STATUS_ECC_MASK) >> 4) + 2;
+	}
+
+	return -EINVAL;
+}
 
 static const struct spinand_info gigadevice_spinand_table[] = {
 	SPINAND_INFO("GD5F1GQ4xA", 0xF1,
@@ -195,25 +229,40 @@ static const struct spinand_info gigadevice_spinand_table[] = {
 					      &write_cache_variants,
 					      &update_cache_variants),
 		     0,
-		     SPINAND_ECCINFO(&gd5fxgq4uexxg_ooblayout,
+		     SPINAND_ECCINFO(&gd5fxgq4_variant2_ooblayout,
 				     gd5fxgq4uexxg_ecc_get_status)),
+	SPINAND_INFO("GD5F1GQ4UFxxG", 0xb148,
+		     NAND_MEMORG(1, 2048, 128, 64, 1024, 1, 1, 1),
+		     NAND_ECCREQ(8, 512),
+		     SPINAND_INFO_OP_VARIANTS(&read_cache_variants_f,
+					      &write_cache_variants,
+					      &update_cache_variants),
+		     0,
+		     SPINAND_ECCINFO(&gd5fxgq4_variant2_ooblayout,
+				     gd5fxgq4ufxxg_ecc_get_status)),
 };
 
 static int gigadevice_spinand_detect(struct spinand_device *spinand)
 {
 	u8 *id = spinand->id.data;
+	u16 did;
 	int ret;
 
 	/*
-	 * For GD NANDs, There is an address byte needed to shift in before IDs
-	 * are read out, so the first byte in raw_id is dummy.
+	 * Earlier GDF5-series devices (A,E) return [0][MID][DID]
+	 * Later (F) devices return [MID][DID1][DID2]
 	 */
-	if (id[1] != SPINAND_MFR_GIGADEVICE)
+
+	if (id[0] == SPINAND_MFR_GIGADEVICE)
+		did = (id[1] << 8) + id[2];
+	else if (id[0] == 0 && id[1] == SPINAND_MFR_GIGADEVICE)
+		did = id[2];
+	else
 		return 0;
 
 	ret = spinand_match_and_init(spinand, gigadevice_spinand_table,
 				     ARRAY_SIZE(gigadevice_spinand_table),
-				     id[2]);
+				     did);
 	if (ret)
 		return ret;
 
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
