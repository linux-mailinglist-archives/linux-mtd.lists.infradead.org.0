Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A1FA1ED5D3
	for <lists+linux-mtd@lfdr.de>; Wed,  3 Jun 2020 20:08:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yx/TCdE/fcx1i2NgTZ1dxKBZwuthC3+kf1XXoHfcrwQ=; b=MjvVs6MNwb2hDP
	cb3niwvtPULQUQnE6S8AULGHRl8MtMMz0a9xD90nNTxT4Ag4mAlWaaWWCmzE7KprkyApqs0tOz1SE
	wXtYVM8yVWTylEc/GYDAa5EB10StgY8vFQSjMKUpjbZLkNvD0MIh0sP1dUs68xOLJA3pvniggBPTP
	w2gUc+SHLF3I52CUI1y1tjDW05z2iYuzzHR9CRNyeZRc4PnvgbwNiq3tOlbiKJQRcJECbEKGTgxAI
	3qWvL5L+F2500u6suZjaDhAxwT/cZaOV+baJh6/7FPls5typ58T8NAUIHWUZM+T+4IBb2Sxs5Z1cK
	jSzDDf+xKJMOonQ6JrQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgXoa-00017e-18; Wed, 03 Jun 2020 18:08:36 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgXer-0005O1-Ld; Wed, 03 Jun 2020 17:58:41 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 6B8F2240009;
 Wed,  3 Jun 2020 17:58:30 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v10 14/20] mtd: rawnand: Use
 nanddev_get/set_ecc_requirements() when relevant
Date: Wed,  3 Jun 2020 19:57:53 +0200
Message-Id: <20200603175759.19948-15-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200603175759.19948-1-miquel.raynal@bootlin.com>
References: <20200603175759.19948-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_105834_535293_933DF9F1 
X-CRM114-Status: GOOD (  19.31  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Julien Su <juliensu@mxic.com.tw>, Miquel Raynal <miquel.raynal@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Mason Yang <masonccyang@mxic.com.tw>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Instead of accessing ->strength/step_size directly.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/atmel/nand-controller.c | 10 +++--
 drivers/mtd/nand/raw/brcmnand/brcmnand.c     |  8 ++--
 drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c   | 13 +++---
 drivers/mtd/nand/raw/marvell_nand.c          |  8 ++--
 drivers/mtd/nand/raw/mtk_nand.c              |  6 ++-
 drivers/mtd/nand/raw/nand_base.c             | 27 +++++++-----
 drivers/mtd/nand/raw/nand_esmt.c             | 15 ++++---
 drivers/mtd/nand/raw/nand_hynix.c            | 44 +++++++++++---------
 drivers/mtd/nand/raw/nand_jedec.c            |  9 +++-
 drivers/mtd/nand/raw/nand_micron.c           | 17 +++++---
 drivers/mtd/nand/raw/nand_onfi.c             | 17 ++++++--
 drivers/mtd/nand/raw/nand_samsung.c          | 22 ++++++----
 drivers/mtd/nand/raw/nand_toshiba.c          | 14 ++++---
 drivers/mtd/nand/raw/sunxi_nand.c            |  6 ++-
 drivers/mtd/nand/raw/tegra_nand.c            | 12 ++++--
 drivers/mtd/nand/spi/core.c                  |  2 +-
 16 files changed, 144 insertions(+), 86 deletions(-)

diff --git a/drivers/mtd/nand/raw/atmel/nand-controller.c b/drivers/mtd/nand/raw/atmel/nand-controller.c
index 85cf396731ce..3fba91d7991a 100644
--- a/drivers/mtd/nand/raw/atmel/nand-controller.c
+++ b/drivers/mtd/nand/raw/atmel/nand-controller.c
@@ -1043,6 +1043,8 @@ static int atmel_hsmc_nand_pmecc_read_page_raw(struct nand_chip *chip,
 
 static int atmel_nand_pmecc_init(struct nand_chip *chip)
 {
+	const struct nand_ecc_props *requirements =
+		nanddev_get_ecc_requirements(&chip->base);
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct atmel_nand *nand = to_atmel_nand(chip);
 	struct atmel_nand_controller *nc;
@@ -1072,15 +1074,15 @@ static int atmel_nand_pmecc_init(struct nand_chip *chip)
 		req.ecc.strength = ATMEL_PMECC_MAXIMIZE_ECC_STRENGTH;
 	else if (chip->ecc.strength)
 		req.ecc.strength = chip->ecc.strength;
-	else if (chip->base.eccreq.strength)
-		req.ecc.strength = chip->base.eccreq.strength;
+	else if (requirements->strength)
+		req.ecc.strength = requirements->strength;
 	else
 		req.ecc.strength = ATMEL_PMECC_MAXIMIZE_ECC_STRENGTH;
 
 	if (chip->ecc.size)
 		req.ecc.sectorsize = chip->ecc.size;
-	else if (chip->base.eccreq.step_size)
-		req.ecc.sectorsize = chip->base.eccreq.step_size;
+	else if (requirements->step_size)
+		req.ecc.sectorsize = requirements->step_size;
 	else
 		req.ecc.sectorsize = ATMEL_PMECC_SECTOR_SIZE_AUTO;
 
diff --git a/drivers/mtd/nand/raw/brcmnand/brcmnand.c b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
index 164617b33942..a774247b0caa 100644
--- a/drivers/mtd/nand/raw/brcmnand/brcmnand.c
+++ b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
@@ -2506,6 +2506,8 @@ static int brcmnand_setup_dev(struct brcmnand_host *host)
 {
 	struct mtd_info *mtd = nand_to_mtd(&host->chip);
 	struct nand_chip *chip = &host->chip;
+	const struct nand_ecc_props *requirements =
+		nanddev_get_ecc_requirements(&chip->base);
 	struct brcmnand_controller *ctrl = host->ctrl;
 	struct brcmnand_cfg *cfg = &host->hwcfg;
 	char msg[128];
@@ -2563,10 +2565,10 @@ static int brcmnand_setup_dev(struct brcmnand_host *host)
 
 	if (chip->ecc.engine_type != NAND_ECC_ENGINE_TYPE_NONE &&
 	    (!chip->ecc.size || !chip->ecc.strength)) {
-		if (chip->base.eccreq.step_size && chip->base.eccreq.strength) {
+		if (requirements->step_size && requirements->strength) {
 			/* use detected ECC parameters */
-			chip->ecc.size = chip->base.eccreq.step_size;
-			chip->ecc.strength = chip->base.eccreq.strength;
+			chip->ecc.size = requirements->step_size;
+			chip->ecc.strength = requirements->strength;
 			dev_info(ctrl->dev, "Using ECC step-size %d, strength %d\n",
 				chip->ecc.size, chip->ecc.strength);
 		}
diff --git a/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c b/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
index d1ea6df9fd64..2bdcbc3197f7 100644
--- a/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
+++ b/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
@@ -272,8 +272,8 @@ static int set_geometry_by_ecc_info(struct gpmi_nand_data *this,
 	default:
 		dev_err(this->dev,
 			"unsupported nand chip. ecc bits : %d, ecc size : %d\n",
-			chip->base.eccreq.strength,
-			chip->base.eccreq.step_size);
+			nanddev_get_ecc_requirements(&chip->base)->strength,
+			nanddev_get_ecc_requirements(&chip->base)->step_size);
 		return -EINVAL;
 	}
 	geo->ecc_chunk_size = ecc_step;
@@ -509,6 +509,8 @@ static int legacy_set_geometry(struct gpmi_nand_data *this)
 
 static int common_nfc_set_geometry(struct gpmi_nand_data *this)
 {
+	struct nand_ecc_props *requirements =
+		nanddev_get_ecc_requirements(&chip->base);
 	struct nand_chip *chip = &this->nand;
 
 	if (chip->ecc.strength > 0 && chip->ecc.size > 0)
@@ -517,13 +519,12 @@ static int common_nfc_set_geometry(struct gpmi_nand_data *this)
 
 	if ((of_property_read_bool(this->dev->of_node, "fsl,use-minimum-ecc"))
 				|| legacy_set_geometry(this)) {
-		if (!(chip->base.eccreq.strength > 0 &&
-		      chip->base.eccreq.step_size > 0))
+		if (!(requirements->strength > 0 && requirements->step_size > 0))
 			return -EINVAL;
 
 		return set_geometry_by_ecc_info(this,
-						chip->base.eccreq.strength,
-						chip->base.eccreq.step_size);
+						requirements->strength,
+						requirements->step_size);
 	}
 
 	return 0;
diff --git a/drivers/mtd/nand/raw/marvell_nand.c b/drivers/mtd/nand/raw/marvell_nand.c
index f9cc03c11deb..3ed315dd7798 100644
--- a/drivers/mtd/nand/raw/marvell_nand.c
+++ b/drivers/mtd/nand/raw/marvell_nand.c
@@ -2244,14 +2244,16 @@ static int marvell_nand_ecc_init(struct mtd_info *mtd,
 				 struct nand_ecc_ctrl *ecc)
 {
 	struct nand_chip *chip = mtd_to_nand(mtd);
+	const struct nand_ecc_props *requirements =
+		nanddev_get_ecc_requirements(&chip->base);
 	struct marvell_nfc *nfc = to_marvell_nfc(chip->controller);
 	int ret;
 
 	if (ecc->engine_type != NAND_ECC_ENGINE_TYPE_NONE &&
 	    (!ecc->size || !ecc->strength)) {
-		if (chip->base.eccreq.step_size && chip->base.eccreq.strength) {
-			ecc->size = chip->base.eccreq.step_size;
-			ecc->strength = chip->base.eccreq.strength;
+		if (requirements->step_size && requirements->strength) {
+			ecc->size = requirements->step_size;
+			ecc->strength = requirements->strength;
 		} else {
 			dev_info(nfc->dev,
 				 "No minimum ECC strength, using 1b/512B\n");
diff --git a/drivers/mtd/nand/raw/mtk_nand.c b/drivers/mtd/nand/raw/mtk_nand.c
index a0294c9161dd..c7b1230110d8 100644
--- a/drivers/mtd/nand/raw/mtk_nand.c
+++ b/drivers/mtd/nand/raw/mtk_nand.c
@@ -1221,6 +1221,8 @@ static int mtk_nfc_set_spare_per_sector(u32 *sps, struct mtd_info *mtd)
 static int mtk_nfc_ecc_init(struct device *dev, struct mtd_info *mtd)
 {
 	struct nand_chip *nand = mtd_to_nand(mtd);
+	const struct nand_ecc_props *requirements =
+		nanddev_get_ecc_requirements(&nand->base);
 	struct mtk_nfc *nfc = nand_get_controller_data(nand);
 	u32 spare;
 	int free, ret;
@@ -1234,8 +1236,8 @@ static int mtk_nfc_ecc_init(struct device *dev, struct mtd_info *mtd)
 	/* if optional dt settings not present */
 	if (!nand->ecc.size || !nand->ecc.strength) {
 		/* use datasheet requirements */
-		nand->ecc.strength = nand->base.eccreq.strength;
-		nand->ecc.size = nand->base.eccreq.step_size;
+		nand->ecc.strength = requirements->strength;
+		nand->ecc.size = requirements->step_size;
 
 		/*
 		 * align eccstrength and eccsize
diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 2821c82b79ad..d22f4243d715 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -4725,6 +4725,8 @@ static inline bool is_full_id_nand(struct nand_flash_dev *type)
 static bool find_full_id_nand(struct nand_chip *chip,
 			      struct nand_flash_dev *type)
 {
+	struct nand_device *base = &chip->base;
+	struct nand_ecc_props requirements;
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct nand_memory_organization *memorg;
 	u8 *id_data = chip->id.data;
@@ -4746,8 +4748,9 @@ static bool find_full_id_nand(struct nand_chip *chip,
 					   memorg->pagesize *
 					   memorg->pages_per_eraseblock);
 		chip->options |= type->options;
-		chip->base.eccreq.strength = NAND_ECC_STRENGTH(type);
-		chip->base.eccreq.step_size = NAND_ECC_STEP(type);
+		requirements.strength = NAND_ECC_STRENGTH(type);
+		requirements.step_size = NAND_ECC_STEP(type);
+		nanddev_set_ecc_requirements(base, &requirements);
 		chip->onfi_timing_mode_default =
 					type->onfi_timing_mode_default;
 
@@ -5449,10 +5452,12 @@ static int
 nand_match_ecc_req(struct nand_chip *chip,
 		   const struct nand_ecc_caps *caps, int oobavail)
 {
+	const struct nand_ecc_props *requirements =
+		nanddev_get_ecc_requirements(&chip->base);
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	const struct nand_ecc_step_info *stepinfo;
-	int req_step = chip->base.eccreq.step_size;
-	int req_strength = chip->base.eccreq.strength;
+	int req_step = requirements->step_size;
+	int req_strength = requirements->strength;
 	int req_corr, step_size, strength, nsteps, ecc_bytes, ecc_bytes_total;
 	int best_step, best_strength, best_ecc_bytes;
 	int best_ecc_bytes_total = INT_MAX;
@@ -5643,9 +5648,11 @@ static bool nand_ecc_strength_good(struct nand_chip *chip)
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct nand_ecc_ctrl *ecc = &chip->ecc;
+	const struct nand_ecc_props *requirements =
+		nanddev_get_ecc_requirements(&chip->base);
 	int corr, ds_corr;
 
-	if (ecc->size == 0 || chip->base.eccreq.step_size == 0)
+	if (ecc->size == 0 || requirements->step_size == 0)
 		/* Not enough information */
 		return true;
 
@@ -5654,10 +5661,10 @@ static bool nand_ecc_strength_good(struct nand_chip *chip)
 	 * the correction density.
 	 */
 	corr = (mtd->writesize * ecc->strength) / ecc->size;
-	ds_corr = (mtd->writesize * chip->base.eccreq.strength) /
-		  chip->base.eccreq.step_size;
+	ds_corr = (mtd->writesize * requirements->strength) /
+		  requirements->step_size;
 
-	return corr >= ds_corr && ecc->strength >= chip->base.eccreq.strength;
+	return corr >= ds_corr && ecc->strength >= requirements->strength;
 }
 
 static int rawnand_erase(struct nand_device *nand, const struct nand_pos *pos)
@@ -5944,8 +5951,8 @@ static int nand_scan_tail(struct nand_chip *chip)
 	if (!nand_ecc_strength_good(chip))
 		pr_warn("WARNING: %s: the ECC used on your system (%db/%dB) is too weak compared to the one required by the NAND chip (%db/%dB)\n",
 			mtd->name, chip->ecc.strength, chip->ecc.size,
-			chip->base.eccreq.strength,
-			chip->base.eccreq.step_size);
+			nanddev_get_ecc_requirements(&chip->base)->strength,
+			nanddev_get_ecc_requirements(&chip->base)->step_size);
 
 	/* Allow subpage writes up to ecc.steps. Not possible for MLC flash */
 	if (!(chip->options & NAND_NO_SUBPAGE_WRITE) && nand_is_slc(chip)) {
diff --git a/drivers/mtd/nand/raw/nand_esmt.c b/drivers/mtd/nand/raw/nand_esmt.c
index 3338c68aaaf1..4412c407aef3 100644
--- a/drivers/mtd/nand/raw/nand_esmt.c
+++ b/drivers/mtd/nand/raw/nand_esmt.c
@@ -10,27 +10,32 @@
 
 static void esmt_nand_decode_id(struct nand_chip *chip)
 {
+	struct nand_device *base = &chip->base;
+	struct nand_ecc_props requirements = {};
+
 	nand_decode_ext_id(chip);
 
 	/* Extract ECC requirements from 5th id byte. */
 	if (chip->id.len >= 5 && nand_is_slc(chip)) {
-		chip->base.eccreq.step_size = 512;
+		requirements.step_size = 512;
 		switch (chip->id.data[4] & 0x3) {
 		case 0x0:
-			chip->base.eccreq.strength = 4;
+			requirements.strength = 4;
 			break;
 		case 0x1:
-			chip->base.eccreq.strength = 2;
+			requirements.strength = 2;
 			break;
 		case 0x2:
-			chip->base.eccreq.strength = 1;
+			requirements.strength = 1;
 			break;
 		default:
 			WARN(1, "Could not get ECC info");
-			chip->base.eccreq.step_size = 0;
+			requirements.step_size = 0;
 			break;
 		}
 	}
+
+	nanddev_set_ecc_requirements(base, &requirements);
 }
 
 static int esmt_nand_init(struct nand_chip *chip)
diff --git a/drivers/mtd/nand/raw/nand_hynix.c b/drivers/mtd/nand/raw/nand_hynix.c
index 7caedaa5b9e5..697219f1006a 100644
--- a/drivers/mtd/nand/raw/nand_hynix.c
+++ b/drivers/mtd/nand/raw/nand_hynix.c
@@ -495,34 +495,36 @@ static void hynix_nand_extract_oobsize(struct nand_chip *chip,
 static void hynix_nand_extract_ecc_requirements(struct nand_chip *chip,
 						bool valid_jedecid)
 {
+	struct nand_device *base = &chip->base;
+	struct nand_ecc_props requirements = {};
 	u8 ecc_level = (chip->id.data[4] >> 4) & 0x7;
 
 	if (valid_jedecid) {
 		/* Reference: H27UCG8T2E datasheet */
-		chip->base.eccreq.step_size = 1024;
+		requirements.step_size = 1024;
 
 		switch (ecc_level) {
 		case 0:
-			chip->base.eccreq.step_size = 0;
-			chip->base.eccreq.strength = 0;
+			requirements.step_size = 0;
+			requirements.strength = 0;
 			break;
 		case 1:
-			chip->base.eccreq.strength = 4;
+			requirements.strength = 4;
 			break;
 		case 2:
-			chip->base.eccreq.strength = 24;
+			requirements.strength = 24;
 			break;
 		case 3:
-			chip->base.eccreq.strength = 32;
+			requirements.strength = 32;
 			break;
 		case 4:
-			chip->base.eccreq.strength = 40;
+			requirements.strength = 40;
 			break;
 		case 5:
-			chip->base.eccreq.strength = 50;
+			requirements.strength = 50;
 			break;
 		case 6:
-			chip->base.eccreq.strength = 60;
+			requirements.strength = 60;
 			break;
 		default:
 			/*
@@ -543,14 +545,14 @@ static void hynix_nand_extract_ecc_requirements(struct nand_chip *chip,
 		if (nand_tech < 3) {
 			/* > 26nm, reference: H27UBG8T2A datasheet */
 			if (ecc_level < 5) {
-				chip->base.eccreq.step_size = 512;
-				chip->base.eccreq.strength = 1 << ecc_level;
+				requirements.step_size = 512;
+				requirements.strength = 1 << ecc_level;
 			} else if (ecc_level < 7) {
 				if (ecc_level == 5)
-					chip->base.eccreq.step_size = 2048;
+					requirements.step_size = 2048;
 				else
-					chip->base.eccreq.step_size = 1024;
-				chip->base.eccreq.strength = 24;
+					requirements.step_size = 1024;
+				requirements.strength = 24;
 			} else {
 				/*
 				 * We should never reach this case, but if that
@@ -563,18 +565,20 @@ static void hynix_nand_extract_ecc_requirements(struct nand_chip *chip,
 		} else {
 			/* <= 26nm, reference: H27UBG8T2B datasheet */
 			if (!ecc_level) {
-				chip->base.eccreq.step_size = 0;
-				chip->base.eccreq.strength = 0;
+				requirements.step_size = 0;
+				requirements.strength = 0;
 			} else if (ecc_level < 5) {
-				chip->base.eccreq.step_size = 512;
-				chip->base.eccreq.strength = 1 << (ecc_level - 1);
+				requirements.step_size = 512;
+				requirements.strength = 1 << (ecc_level - 1);
 			} else {
-				chip->base.eccreq.step_size = 1024;
-				chip->base.eccreq.strength = 24 +
+				requirements.step_size = 1024;
+				requirements.strength = 24 +
 							(8 * (ecc_level - 5));
 			}
 		}
 	}
+
+	nanddev_set_ecc_requirements(base, &requirements);
 }
 
 static void hynix_nand_extract_scrambling_requirements(struct nand_chip *chip,
diff --git a/drivers/mtd/nand/raw/nand_jedec.c b/drivers/mtd/nand/raw/nand_jedec.c
index b15c42f48755..85b6d9372d80 100644
--- a/drivers/mtd/nand/raw/nand_jedec.c
+++ b/drivers/mtd/nand/raw/nand_jedec.c
@@ -23,6 +23,7 @@
  */
 int nand_jedec_detect(struct nand_chip *chip)
 {
+	struct nand_device *base = &chip->base;
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct nand_memory_organization *memorg;
 	struct nand_jedec_params *p;
@@ -120,8 +121,12 @@ int nand_jedec_detect(struct nand_chip *chip)
 	ecc = &p->ecc_info[0];
 
 	if (ecc->codeword_size >= 9) {
-		chip->base.eccreq.strength = ecc->ecc_bits;
-		chip->base.eccreq.step_size = 1 << ecc->codeword_size;
+		struct nand_ecc_props requirements = {
+			.strength = ecc->ecc_bits,
+			.step_size = 1 << ecc->codeword_size,
+		};
+
+		nanddev_set_ecc_requirements(base, &requirements);
 	} else {
 		pr_warn("Invalid codeword size\n");
 	}
diff --git a/drivers/mtd/nand/raw/nand_micron.c b/drivers/mtd/nand/raw/nand_micron.c
index c8ebfd8c77a1..e19f992138f3 100644
--- a/drivers/mtd/nand/raw/nand_micron.c
+++ b/drivers/mtd/nand/raw/nand_micron.c
@@ -413,6 +413,8 @@ enum {
  */
 static int micron_supports_on_die_ecc(struct nand_chip *chip)
 {
+	const struct nand_ecc_props *requirements =
+		nanddev_get_ecc_requirements(&chip->base);
 	u8 id[5];
 	int ret;
 
@@ -425,7 +427,7 @@ static int micron_supports_on_die_ecc(struct nand_chip *chip)
 	/*
 	 * We only support on-die ECC of 4/512 or 8/512
 	 */
-	if  (chip->base.eccreq.strength != 4 && chip->base.eccreq.strength != 8)
+	if  (requirements->strength != 4 && requirements->strength != 8)
 		return MICRON_ON_DIE_UNSUPPORTED;
 
 	/* 0x2 means on-die ECC is available. */
@@ -466,7 +468,7 @@ static int micron_supports_on_die_ecc(struct nand_chip *chip)
 	/*
 	 * We only support on-die ECC of 4/512 or 8/512
 	 */
-	if  (chip->base.eccreq.strength != 4 && chip->base.eccreq.strength != 8)
+	if  (requirements->strength != 4 && requirements->strength != 8)
 		return MICRON_ON_DIE_UNSUPPORTED;
 
 	return MICRON_ON_DIE_SUPPORTED;
@@ -474,6 +476,9 @@ static int micron_supports_on_die_ecc(struct nand_chip *chip)
 
 static int micron_nand_init(struct nand_chip *chip)
 {
+	struct nand_device *base = &chip->base;
+	const struct nand_ecc_props *requirements =
+		nanddev_get_ecc_requirements(base);
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct micron_nand *micron;
 	int ondie;
@@ -523,7 +528,7 @@ static int micron_nand_init(struct nand_chip *chip)
 		 * That's not needed for 8-bit ECC, because the status expose
 		 * a better approximation of the number of bitflips in a page.
 		 */
-		if (chip->base.eccreq.strength == 4) {
+		if (requirements->strength == 4) {
 			micron->ecc.rawbuf = kmalloc(mtd->writesize +
 						     mtd->oobsize,
 						     GFP_KERNEL);
@@ -533,16 +538,16 @@ static int micron_nand_init(struct nand_chip *chip)
 			}
 		}
 
-		if (chip->base.eccreq.strength == 4)
+		if (requirements->strength == 4)
 			mtd_set_ooblayout(mtd,
 					  &micron_nand_on_die_4_ooblayout_ops);
 		else
 			mtd_set_ooblayout(mtd,
 					  &micron_nand_on_die_8_ooblayout_ops);
 
-		chip->ecc.bytes = chip->base.eccreq.strength * 2;
+		chip->ecc.bytes = requirements->strength * 2;
 		chip->ecc.size = 512;
-		chip->ecc.strength = chip->base.eccreq.strength;
+		chip->ecc.strength = requirements->strength;
 		chip->ecc.algo = NAND_ECC_ALGO_BCH;
 		chip->ecc.read_page = micron_nand_read_page_on_die_ecc;
 		chip->ecc.write_page = micron_nand_write_page_on_die_ecc;
diff --git a/drivers/mtd/nand/raw/nand_onfi.c b/drivers/mtd/nand/raw/nand_onfi.c
index be3456627288..45649e03797d 100644
--- a/drivers/mtd/nand/raw/nand_onfi.c
+++ b/drivers/mtd/nand/raw/nand_onfi.c
@@ -34,6 +34,8 @@ u16 onfi_crc16(u16 crc, u8 const *p, size_t len)
 static int nand_flash_detect_ext_param_page(struct nand_chip *chip,
 					    struct nand_onfi_params *p)
 {
+	struct nand_device *base = &chip->base;
+	struct nand_ecc_props requirements;
 	struct onfi_ext_param_page *ep;
 	struct onfi_ext_section *s;
 	struct onfi_ext_ecc_info *ecc;
@@ -94,8 +96,10 @@ static int nand_flash_detect_ext_param_page(struct nand_chip *chip,
 		goto ext_out;
 	}
 
-	chip->base.eccreq.strength = ecc->ecc_bits;
-	chip->base.eccreq.step_size = 1 << ecc->codeword_size;
+	requirements.strength = ecc->ecc_bits;
+	requirements.step_size = 1 << ecc->codeword_size;
+	nanddev_set_ecc_requirements(base, &requirements);
+
 	ret = 0;
 
 ext_out:
@@ -139,6 +143,7 @@ static void nand_bit_wise_majority(const void **srcbufs,
  */
 int nand_onfi_detect(struct nand_chip *chip)
 {
+	struct nand_device *base = &chip->base;
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct nand_memory_organization *memorg;
 	struct nand_onfi_params *p = NULL, *pbuf;
@@ -265,8 +270,12 @@ int nand_onfi_detect(struct nand_chip *chip)
 		chip->options |= NAND_BUSWIDTH_16;
 
 	if (p->ecc_bits != 0xff) {
-		chip->base.eccreq.strength = p->ecc_bits;
-		chip->base.eccreq.step_size = 512;
+		struct nand_ecc_props requirements = {
+			.strength = p->ecc_bits,
+			.step_size = 512,
+		};
+
+		nanddev_set_ecc_requirements(base, &requirements);
 	} else if (onfi_version >= 21 &&
 		(le16_to_cpu(p->features) & ONFI_FEATURE_EXT_PARAM_PAGE)) {
 
diff --git a/drivers/mtd/nand/raw/nand_samsung.c b/drivers/mtd/nand/raw/nand_samsung.c
index 3a4a19e808f6..0be6b7563805 100644
--- a/drivers/mtd/nand/raw/nand_samsung.c
+++ b/drivers/mtd/nand/raw/nand_samsung.c
@@ -10,6 +10,8 @@
 
 static void samsung_nand_decode_id(struct nand_chip *chip)
 {
+	struct nand_device *base = &chip->base;
+	struct nand_ecc_props requirements = {};
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct nand_memory_organization *memorg;
 
@@ -71,23 +73,23 @@ static void samsung_nand_decode_id(struct nand_chip *chip)
 		/* Extract ECC requirements from 5th id byte*/
 		extid = (chip->id.data[4] >> 4) & 0x07;
 		if (extid < 5) {
-			chip->base.eccreq.step_size = 512;
-			chip->base.eccreq.strength = 1 << extid;
+			requirements.step_size = 512;
+			requirements.strength = 1 << extid;
 		} else {
-			chip->base.eccreq.step_size = 1024;
+			requirements.step_size = 1024;
 			switch (extid) {
 			case 5:
-				chip->base.eccreq.strength = 24;
+				requirements.strength = 24;
 				break;
 			case 6:
-				chip->base.eccreq.strength = 40;
+				requirements.strength = 40;
 				break;
 			case 7:
-				chip->base.eccreq.strength = 60;
+				requirements.strength = 60;
 				break;
 			default:
 				WARN(1, "Could not decode ECC info");
-				chip->base.eccreq.step_size = 0;
+				requirements.step_size = 0;
 			}
 		}
 	} else {
@@ -97,8 +99,8 @@ static void samsung_nand_decode_id(struct nand_chip *chip)
 			switch (chip->id.data[1]) {
 			/* K9F4G08U0D-S[I|C]B0(T00) */
 			case 0xDC:
-				chip->base.eccreq.step_size = 512;
-				chip->base.eccreq.strength = 1;
+				requirements.step_size = 512;
+				requirements.strength = 1;
 				break;
 
 			/* K9F1G08U0E 21nm chips do not support subpage write */
@@ -112,6 +114,8 @@ static void samsung_nand_decode_id(struct nand_chip *chip)
 			}
 		}
 	}
+
+	nanddev_set_ecc_requirements(base, &requirements);
 }
 
 static int samsung_nand_init(struct nand_chip *chip)
diff --git a/drivers/mtd/nand/raw/nand_toshiba.c b/drivers/mtd/nand/raw/nand_toshiba.c
index 436ed90a90ad..5d3434587f25 100644
--- a/drivers/mtd/nand/raw/nand_toshiba.c
+++ b/drivers/mtd/nand/raw/nand_toshiba.c
@@ -145,6 +145,8 @@ static void toshiba_nand_benand_init(struct nand_chip *chip)
 
 static void toshiba_nand_decode_id(struct nand_chip *chip)
 {
+	struct nand_device *base = &chip->base;
+	struct nand_ecc_props requirements = {};
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct nand_memory_organization *memorg;
 
@@ -175,23 +177,25 @@ static void toshiba_nand_decode_id(struct nand_chip *chip)
 	 *  - 24nm: 8 bit ECC for each 512Byte is required.
 	 */
 	if (chip->id.len >= 6 && nand_is_slc(chip)) {
-		chip->base.eccreq.step_size = 512;
+		requirements.step_size = 512;
 		switch (chip->id.data[5] & 0x7) {
 		case 0x4:
-			chip->base.eccreq.strength = 1;
+			requirements.strength = 1;
 			break;
 		case 0x5:
-			chip->base.eccreq.strength = 4;
+			requirements.strength = 4;
 			break;
 		case 0x6:
-			chip->base.eccreq.strength = 8;
+			requirements.strength = 8;
 			break;
 		default:
 			WARN(1, "Could not get ECC info");
-			chip->base.eccreq.step_size = 0;
+			requirements.step_size = 0;
 			break;
 		}
 	}
+
+	nanddev_set_ecc_requirements(base, &requirements);
 }
 
 static int tc58teg5dclta00_init(struct nand_chip *chip)
diff --git a/drivers/mtd/nand/raw/sunxi_nand.c b/drivers/mtd/nand/raw/sunxi_nand.c
index c6dd2e6d9ef8..490ba485e939 100644
--- a/drivers/mtd/nand/raw/sunxi_nand.c
+++ b/drivers/mtd/nand/raw/sunxi_nand.c
@@ -1732,6 +1732,8 @@ static void sunxi_nand_ecc_cleanup(struct nand_ecc_ctrl *ecc)
 
 static int sunxi_nand_attach_chip(struct nand_chip *nand)
 {
+	const struct nand_ecc_props *requirements =
+		nanddev_get_ecc_requirements(&nand->base);
 	struct nand_ecc_ctrl *ecc = &nand->ecc;
 	struct device_node *np = nand_get_flash_node(nand);
 	int ret;
@@ -1745,8 +1747,8 @@ static int sunxi_nand_attach_chip(struct nand_chip *nand)
 	nand->options |= NAND_SUBPAGE_READ;
 
 	if (!ecc->size) {
-		ecc->size = nand->base.eccreq.step_size;
-		ecc->strength = nand->base.eccreq.strength;
+		ecc->size = requirements->step_size;
+		ecc->strength = requirements->strength;
 	}
 
 	if (!ecc->size || !ecc->strength)
diff --git a/drivers/mtd/nand/raw/tegra_nand.c b/drivers/mtd/nand/raw/tegra_nand.c
index 2325b06ccc9a..fecdb7e8f9e8 100644
--- a/drivers/mtd/nand/raw/tegra_nand.c
+++ b/drivers/mtd/nand/raw/tegra_nand.c
@@ -840,6 +840,8 @@ static int tegra_nand_get_strength(struct nand_chip *chip, const int *strength,
 				   int strength_len, int bits_per_step,
 				   int oobsize)
 {
+	const struct nand_ecc_props *requirements =
+		nanddev_get_ecc_requirements(&chip->base);
 	bool maximize = chip->ecc.options & NAND_ECC_MAXIMIZE;
 	int i;
 
@@ -855,7 +857,7 @@ static int tegra_nand_get_strength(struct nand_chip *chip, const int *strength,
 		} else {
 			strength_sel = strength[i];
 
-			if (strength_sel < chip->base.eccreq.strength)
+			if (strength_sel < requirements->strength)
 				continue;
 		}
 
@@ -908,6 +910,8 @@ static int tegra_nand_select_strength(struct nand_chip *chip, int oobsize)
 static int tegra_nand_attach_chip(struct nand_chip *chip)
 {
 	struct tegra_nand_controller *ctrl = to_tegra_ctrl(chip->controller);
+	const struct nand_ecc_props *requirements =
+		nanddev_get_ecc_requirements(&chip->base);
 	struct tegra_nand_chip *nand = to_tegra_chip(chip);
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	int bits_per_step;
@@ -919,9 +923,9 @@ static int tegra_nand_attach_chip(struct nand_chip *chip)
 	chip->ecc.engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
 	chip->ecc.size = 512;
 	chip->ecc.steps = mtd->writesize / chip->ecc.size;
-	if (chip->base.eccreq.step_size != 512) {
+	if (requirements->step_size != 512) {
 		dev_err(ctrl->dev, "Unsupported step size %d\n",
-			chip->base.eccreq.step_size);
+			requirements->step_size);
 		return -EINVAL;
 	}
 
@@ -952,7 +956,7 @@ static int tegra_nand_attach_chip(struct nand_chip *chip)
 		if (ret < 0) {
 			dev_err(ctrl->dev,
 				"No valid strength found, minimum %d\n",
-				chip->base.eccreq.strength);
+				requirements->strength);
 			return ret;
 		}
 
diff --git a/drivers/mtd/nand/spi/core.c b/drivers/mtd/nand/spi/core.c
index 56019de28a90..0939e0f9c6a4 100644
--- a/drivers/mtd/nand/spi/core.c
+++ b/drivers/mtd/nand/spi/core.c
@@ -903,7 +903,7 @@ int spinand_match_and_init(struct spinand_device *spinand,
 			continue;
 
 		nand->memorg = table[i].memorg;
-		nand->eccreq = table[i].eccreq;
+		nanddev_set_ecc_requirements(nand, &table[i].eccreq);
 		spinand->eccinfo = table[i].eccinfo;
 		spinand->flags = table[i].flags;
 		spinand->id.len = 1 + table[i].devid.len;
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
