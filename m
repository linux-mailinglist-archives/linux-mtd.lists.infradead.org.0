Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 790A31E2CF7
	for <lists+linux-mtd@lfdr.de>; Tue, 26 May 2020 21:19:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TTTKIm55Z1C/NsN9dtuC6brtPJlJTu5zThJ9jRTtKB4=; b=RaKpgXzUu6hWFI
	EfTdeqBWBVpv075ZZ6ykEpYO4Ivw1YUqEZdZxypiUO63mnR+iYcYJO3LMyUpwOjnomS8z4WY/Tm6Y
	iSR/kPu6+D5pxeqZqPNaM4qhJljyEkHsky4/llMcm2g+OZp1Y9GtDWuprmaqWwdKKjlUbcRXlI2af
	V8abaegcdDDCslIZh53Dvf/1ETdzPnoyR27tVs1/n3sb3FiW7JAE4/cWs4ANxOHuzs3c0jo8XK4nG
	X6D9tzCYOYI/U2c5vQv4/OCncDtQHGjELhb5VcoHiGcW9en4YnEOLSpdIkjfO1IordcJMDDFJNvOs
	kJUrQdOEIckyjIQ4jdmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdf6o-0002dQ-88; Tue, 26 May 2020 19:19:30 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdf50-0001JB-QW
 for linux-mtd@lists.infradead.org; Tue, 26 May 2020 19:17:40 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 7C52424000F;
 Tue, 26 May 2020 19:17:36 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v5 04/28] mtd: rawnand: Rename the manufacturer structure
Date: Tue, 26 May 2020 21:17:01 +0200
Message-Id: <20200526191725.7591-5-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200526191725.7591-1-miquel.raynal@bootlin.com>
References: <20200526191725.7591-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_121739_188744_8A463064 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Rickard Andersson <rickaran@axis.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

It is currently called nand_manufacturer but could actually be called
nand_manufacturer_desc, like its instances, so that the former name is
left unused for now.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/mtd/nand/raw/internals.h |  6 +++---
 drivers/mtd/nand/raw/nand_base.c | 14 +++++++-------
 drivers/mtd/nand/raw/nand_ids.c  | 16 ++++++++--------
 include/linux/mtd/rawnand.h      |  2 +-
 4 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/mtd/nand/raw/internals.h b/drivers/mtd/nand/raw/internals.h
index 03866b0aadea..a518acfd9b3f 100644
--- a/drivers/mtd/nand/raw/internals.h
+++ b/drivers/mtd/nand/raw/internals.h
@@ -53,12 +53,12 @@ struct nand_manufacturer_ops {
 };
 
 /**
- * struct nand_manufacturer - NAND Flash Manufacturer structure
+ * struct nand_manufacturer_desc - NAND Flash Manufacturer descriptor
  * @name: Manufacturer name
  * @id: manufacturer ID code of device.
  * @ops: manufacturer operations
  */
-struct nand_manufacturer {
+struct nand_manufacturer_desc {
 	int id;
 	char *name;
 	const struct nand_manufacturer_ops *ops;
@@ -79,7 +79,7 @@ extern const struct nand_manufacturer_ops toshiba_nand_manuf_ops;
 extern const struct mtd_pairing_scheme dist3_pairing_scheme;
 
 /* Core functions */
-const struct nand_manufacturer *nand_get_manufacturer(u8 id);
+const struct nand_manufacturer_desc *nand_get_manufacturer_desc(u8 id);
 int nand_bbm_get_next_page(struct nand_chip *chip, int page);
 int nand_markbad_bbm(struct nand_chip *chip, loff_t ofs);
 int nand_erase_nand(struct nand_chip *chip, struct erase_info *instr,
diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index b86f641f6d74..14f1359a60b8 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -4880,9 +4880,9 @@ static void nand_manufacturer_cleanup(struct nand_chip *chip)
 }
 
 static const char *
-nand_manufacturer_name(const struct nand_manufacturer *manufacturer)
+nand_manufacturer_name(const struct nand_manufacturer_desc *manufacturer_desc)
 {
-	return manufacturer ? manufacturer->name : "Unknown";
+	return manufacturer_desc ? manufacturer_desc->name : "Unknown";
 }
 
 /*
@@ -4890,7 +4890,7 @@ nand_manufacturer_name(const struct nand_manufacturer *manufacturer)
  */
 static int nand_detect(struct nand_chip *chip, struct nand_flash_dev *type)
 {
-	const struct nand_manufacturer *manufacturer;
+	const struct nand_manufacturer_desc *manufacturer_desc;
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct nand_memory_organization *memorg;
 	int busw, ret;
@@ -4947,8 +4947,8 @@ static int nand_detect(struct nand_chip *chip, struct nand_flash_dev *type)
 	chip->id.len = nand_id_len(id_data, ARRAY_SIZE(chip->id.data));
 
 	/* Try to identify manufacturer */
-	manufacturer = nand_get_manufacturer(maf_id);
-	chip->manufacturer.desc = manufacturer;
+	manufacturer_desc = nand_get_manufacturer_desc(maf_id);
+	chip->manufacturer.desc = manufacturer_desc;
 
 	if (!type)
 		type = nand_flash_ids;
@@ -5027,7 +5027,7 @@ static int nand_detect(struct nand_chip *chip, struct nand_flash_dev *type)
 		 */
 		pr_info("device found, Manufacturer ID: 0x%02x, Chip ID: 0x%02x\n",
 			maf_id, dev_id);
-		pr_info("%s %s\n", nand_manufacturer_name(manufacturer),
+		pr_info("%s %s\n", nand_manufacturer_name(manufacturer_desc),
 			mtd->name);
 		pr_warn("bus width %d instead of %d bits\n", busw ? 16 : 8,
 			(chip->options & NAND_BUSWIDTH_16) ? 16 : 8);
@@ -5062,7 +5062,7 @@ static int nand_detect(struct nand_chip *chip, struct nand_flash_dev *type)
 
 	pr_info("device found, Manufacturer ID: 0x%02x, Chip ID: 0x%02x\n",
 		maf_id, dev_id);
-	pr_info("%s %s\n", nand_manufacturer_name(manufacturer),
+	pr_info("%s %s\n", nand_manufacturer_name(manufacturer_desc),
 		chip->parameters.model);
 	pr_info("%d MiB, %s, erase size: %d KiB, page size: %d, OOB size: %d\n",
 		(int)(targetsize >> 20), nand_is_slc(chip) ? "SLC" : "MLC",
diff --git a/drivers/mtd/nand/raw/nand_ids.c b/drivers/mtd/nand/raw/nand_ids.c
index ba27902fc54b..e0dbc2e316c7 100644
--- a/drivers/mtd/nand/raw/nand_ids.c
+++ b/drivers/mtd/nand/raw/nand_ids.c
@@ -166,7 +166,7 @@ struct nand_flash_dev nand_flash_ids[] = {
 };
 
 /* Manufacturer IDs */
-static const struct nand_manufacturer nand_manufacturers[] = {
+static const struct nand_manufacturer_desc nand_manufacturer_descs[] = {
 	{NAND_MFR_AMD, "AMD/Spansion", &amd_nand_manuf_ops},
 	{NAND_MFR_ATO, "ATO"},
 	{NAND_MFR_EON, "Eon"},
@@ -186,20 +186,20 @@ static const struct nand_manufacturer nand_manufacturers[] = {
 };
 
 /**
- * nand_get_manufacturer - Get manufacturer information from the manufacturer
- *			   ID
+ * nand_get_manufacturer_desc - Get manufacturer information from the
+ *                              manufacturer ID
  * @id: manufacturer ID
  *
- * Returns a pointer a nand_manufacturer object if the manufacturer is defined
+ * Returns a nand_manufacturer_desc object if the manufacturer is defined
  * in the NAND manufacturers database, NULL otherwise.
  */
-const struct nand_manufacturer *nand_get_manufacturer(u8 id)
+const struct nand_manufacturer_desc *nand_get_manufacturer_desc(u8 id)
 {
 	int i;
 
-	for (i = 0; i < ARRAY_SIZE(nand_manufacturers); i++)
-		if (nand_manufacturers[i].id == id)
-			return &nand_manufacturers[i];
+	for (i = 0; i < ARRAY_SIZE(nand_manufacturer_descs); i++)
+		if (nand_manufacturer_descs[i].id == id)
+			return &nand_manufacturer_descs[i];
 
 	return NULL;
 }
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index b33cd68852c4..d8492d966b40 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -1163,7 +1163,7 @@ struct nand_chip {
 	void *priv;
 
 	struct {
-		const struct nand_manufacturer *desc;
+		const struct nand_manufacturer_desc *desc;
 		void *priv;
 	} manufacturer;
 };
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
