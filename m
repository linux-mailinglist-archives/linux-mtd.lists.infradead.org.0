Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B36151C875C
	for <lists+linux-mtd@lfdr.de>; Thu,  7 May 2020 12:55:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wFcZ7MbQ4WBYSrfP/CpHZviQDpZDiLoGGdIdtAugGK8=; b=H6mKEJkAxq0jBI
	UPrsgP/qWSsDppi+NPJMPL/W0yogn+l1F4DlaGlHkBVU2GZzo1MCoHEOgisW/F9DQaRT2hVcCe0ff
	gxKHuwD6SXy2VIozzA6Wbs8RT9BrvWLZxwjWn1jzRNTOo0rrkXqTxHCtvSeDJK4i2zUhKKlohYlFh
	hWgqbHk8uOK4lU3YESqtRlLrDNsyStFTnuKw8FjeEN37I26R7nAfnhFVlFd+dcYMrNkZvKtlkfX3n
	JXt7dlYxgnBnIDztbf1h42gmdogc9vMIHMGCIoLSFBknekELqdVH3FtcPZ5A1wdQPKAbq7YFQEfQD
	Qn9FF/KZO/QyNE1cnFAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWeBd-0006Dl-4Y; Thu, 07 May 2020 10:55:29 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWe99-00048f-JG
 for linux-mtd@lists.infradead.org; Thu, 07 May 2020 10:52:57 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id E6531240019;
 Thu,  7 May 2020 10:52:52 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v5 08/13] mtd: rawnand: Give the possibility to verify a read
 operation is supported
Date: Thu,  7 May 2020 12:52:36 +0200
Message-Id: <20200507105241.14299-9-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200507105241.14299-1-miquel.raynal@bootlin.com>
References: <20200507105241.14299-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_035255_917654_6B396675 
X-CRM114-Status: GOOD (  17.52  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Michal Simek <monstr@monstr.eu>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This can be used to discriminate between two path in the parameter
page detection: use data_in cycles (like before) if supported, use the
CHANGE READ COLUMN command otherwise.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/mtd/nand/raw/fsmc_nand.c    |  2 +-
 drivers/mtd/nand/raw/marvell_nand.c |  4 +--
 drivers/mtd/nand/raw/nand_base.c    | 48 +++++++++++++++++------------
 drivers/mtd/nand/raw/nand_jedec.c   |  2 +-
 drivers/mtd/nand/raw/nand_legacy.c  |  8 +++--
 drivers/mtd/nand/raw/nand_micron.c  |  6 ++--
 drivers/mtd/nand/raw/nand_onfi.c    |  3 +-
 include/linux/mtd/rawnand.h         |  2 +-
 8 files changed, 44 insertions(+), 31 deletions(-)

diff --git a/drivers/mtd/nand/raw/fsmc_nand.c b/drivers/mtd/nand/raw/fsmc_nand.c
index 59ef2b6a21b5..735c2216149f 100644
--- a/drivers/mtd/nand/raw/fsmc_nand.c
+++ b/drivers/mtd/nand/raw/fsmc_nand.c
@@ -694,7 +694,7 @@ static int fsmc_read_page_hwecc(struct nand_chip *chip, u8 *buf,
 	for (i = 0, s = 0; s < eccsteps; s++, i += eccbytes, p += eccsize) {
 		nand_read_page_op(chip, page, s * eccsize, NULL, 0);
 		chip->ecc.hwctl(chip, NAND_ECC_READ);
-		ret = nand_read_data_op(chip, p, eccsize, false);
+		ret = nand_read_data_op(chip, p, eccsize, false, false);
 		if (ret)
 			return ret;
 
diff --git a/drivers/mtd/nand/raw/marvell_nand.c b/drivers/mtd/nand/raw/marvell_nand.c
index 88269c44b2b4..a79ce4bdd31c 100644
--- a/drivers/mtd/nand/raw/marvell_nand.c
+++ b/drivers/mtd/nand/raw/marvell_nand.c
@@ -1224,12 +1224,12 @@ static int marvell_nfc_hw_ecc_bch_read_page_raw(struct nand_chip *chip, u8 *buf,
 
 		/* Read spare bytes */
 		nand_read_data_op(chip, oob + (lt->spare_bytes * chunk),
-				  spare_len, false);
+				  spare_len, false, false);
 
 		/* Read ECC bytes */
 		nand_read_data_op(chip, oob + ecc_offset +
 				  (ALIGN(lt->ecc_bytes, 32) * chunk),
-				  ecc_len, false);
+				  ecc_len, false, false);
 	}
 
 	return 0;
diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 1b7d7574dfc0..def4bf9a0c40 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -690,7 +690,8 @@ int nand_soft_waitrdy(struct nand_chip *chip, unsigned long timeout_ms)
 	 */
 	timeout_ms = jiffies + msecs_to_jiffies(timeout_ms) + 1;
 	do {
-		ret = nand_read_data_op(chip, &status, sizeof(status), true);
+		ret = nand_read_data_op(chip, &status, sizeof(status), true,
+					false);
 		if (ret)
 			break;
 
@@ -770,7 +771,7 @@ void panic_nand_wait(struct nand_chip *chip, unsigned long timeo)
 			u8 status;
 
 			ret = nand_read_data_op(chip, &status, sizeof(status),
-						true);
+						true, false);
 			if (ret)
 				return;
 
@@ -1868,6 +1869,8 @@ EXPORT_SYMBOL_GPL(nand_reset_op);
  * @buf: buffer used to store the data
  * @len: length of the buffer
  * @force_8bit: force 8-bit bus access
+ * @check_only: do not actually run the command, only checks if the
+ *              controller driver supports it
  *
  * This function does a raw data read on the bus. Usually used after launching
  * another NAND operation like nand_read_page_op().
@@ -1876,7 +1879,7 @@ EXPORT_SYMBOL_GPL(nand_reset_op);
  * Returns 0 on success, a negative error code otherwise.
  */
 int nand_read_data_op(struct nand_chip *chip, void *buf, unsigned int len,
-		      bool force_8bit)
+		      bool force_8bit, bool check_only)
 {
 	if (!len || !buf)
 		return -EINVAL;
@@ -1889,9 +1892,15 @@ int nand_read_data_op(struct nand_chip *chip, void *buf, unsigned int len,
 
 		instrs[0].ctx.data.force_8bit = force_8bit;
 
+		if (check_only)
+			return nand_check_op(chip, &op);
+
 		return nand_exec_op(chip, &op);
 	}
 
+	if (check_only)
+		return 0;
+
 	if (force_8bit) {
 		u8 *p = buf;
 		unsigned int i;
@@ -2620,7 +2629,7 @@ int nand_read_page_raw(struct nand_chip *chip, uint8_t *buf, int oob_required,
 
 	if (oob_required) {
 		ret = nand_read_data_op(chip, chip->oob_poi, mtd->oobsize,
-					false);
+					false, false);
 		if (ret)
 			return ret;
 	}
@@ -2652,7 +2661,7 @@ static int nand_read_page_raw_syndrome(struct nand_chip *chip, uint8_t *buf,
 		return ret;
 
 	for (steps = chip->ecc.steps; steps > 0; steps--) {
-		ret = nand_read_data_op(chip, buf, eccsize, false);
+		ret = nand_read_data_op(chip, buf, eccsize, false, false);
 		if (ret)
 			return ret;
 
@@ -2660,14 +2669,14 @@ static int nand_read_page_raw_syndrome(struct nand_chip *chip, uint8_t *buf,
 
 		if (chip->ecc.prepad) {
 			ret = nand_read_data_op(chip, oob, chip->ecc.prepad,
-						false);
+						false, false);
 			if (ret)
 				return ret;
 
 			oob += chip->ecc.prepad;
 		}
 
-		ret = nand_read_data_op(chip, oob, eccbytes, false);
+		ret = nand_read_data_op(chip, oob, eccbytes, false, false);
 		if (ret)
 			return ret;
 
@@ -2675,7 +2684,7 @@ static int nand_read_page_raw_syndrome(struct nand_chip *chip, uint8_t *buf,
 
 		if (chip->ecc.postpad) {
 			ret = nand_read_data_op(chip, oob, chip->ecc.postpad,
-						false);
+						false, false);
 			if (ret)
 				return ret;
 
@@ -2685,7 +2694,7 @@ static int nand_read_page_raw_syndrome(struct nand_chip *chip, uint8_t *buf,
 
 	size = mtd->oobsize - (oob - chip->oob_poi);
 	if (size) {
-		ret = nand_read_data_op(chip, oob, size, false);
+		ret = nand_read_data_op(chip, oob, size, false, false);
 		if (ret)
 			return ret;
 	}
@@ -2878,14 +2887,15 @@ static int nand_read_page_hwecc(struct nand_chip *chip, uint8_t *buf,
 	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
 		chip->ecc.hwctl(chip, NAND_ECC_READ);
 
-		ret = nand_read_data_op(chip, p, eccsize, false);
+		ret = nand_read_data_op(chip, p, eccsize, false, false);
 		if (ret)
 			return ret;
 
 		chip->ecc.calculate(chip, p, &ecc_calc[i]);
 	}
 
-	ret = nand_read_data_op(chip, chip->oob_poi, mtd->oobsize, false);
+	ret = nand_read_data_op(chip, chip->oob_poi, mtd->oobsize, false,
+				false);
 	if (ret)
 		return ret;
 
@@ -2964,7 +2974,7 @@ static int nand_read_page_hwecc_oob_first(struct nand_chip *chip, uint8_t *buf,
 
 		chip->ecc.hwctl(chip, NAND_ECC_READ);
 
-		ret = nand_read_data_op(chip, p, eccsize, false);
+		ret = nand_read_data_op(chip, p, eccsize, false, false);
 		if (ret)
 			return ret;
 
@@ -3021,13 +3031,13 @@ static int nand_read_page_syndrome(struct nand_chip *chip, uint8_t *buf,
 
 		chip->ecc.hwctl(chip, NAND_ECC_READ);
 
-		ret = nand_read_data_op(chip, p, eccsize, false);
+		ret = nand_read_data_op(chip, p, eccsize, false, false);
 		if (ret)
 			return ret;
 
 		if (chip->ecc.prepad) {
 			ret = nand_read_data_op(chip, oob, chip->ecc.prepad,
-						false);
+						false, false);
 			if (ret)
 				return ret;
 
@@ -3036,7 +3046,7 @@ static int nand_read_page_syndrome(struct nand_chip *chip, uint8_t *buf,
 
 		chip->ecc.hwctl(chip, NAND_ECC_READSYN);
 
-		ret = nand_read_data_op(chip, oob, eccbytes, false);
+		ret = nand_read_data_op(chip, oob, eccbytes, false, false);
 		if (ret)
 			return ret;
 
@@ -3046,7 +3056,7 @@ static int nand_read_page_syndrome(struct nand_chip *chip, uint8_t *buf,
 
 		if (chip->ecc.postpad) {
 			ret = nand_read_data_op(chip, oob, chip->ecc.postpad,
-						false);
+						false, false);
 			if (ret)
 				return ret;
 
@@ -3074,7 +3084,7 @@ static int nand_read_page_syndrome(struct nand_chip *chip, uint8_t *buf,
 	/* Calculate remaining oob bytes */
 	i = mtd->oobsize - (oob - chip->oob_poi);
 	if (i) {
-		ret = nand_read_data_op(chip, oob, i, false);
+		ret = nand_read_data_op(chip, oob, i, false, false);
 		if (ret)
 			return ret;
 	}
@@ -3376,7 +3386,7 @@ static int nand_read_oob_syndrome(struct nand_chip *chip, int page)
 			sndrnd = 1;
 		toread = min_t(int, length, chunk);
 
-		ret = nand_read_data_op(chip, bufpoi, toread, false);
+		ret = nand_read_data_op(chip, bufpoi, toread, false, false);
 		if (ret)
 			return ret;
 
@@ -3384,7 +3394,7 @@ static int nand_read_oob_syndrome(struct nand_chip *chip, int page)
 		length -= toread;
 	}
 	if (length > 0) {
-		ret = nand_read_data_op(chip, bufpoi, length, false);
+		ret = nand_read_data_op(chip, bufpoi, length, false, false);
 		if (ret)
 			return ret;
 	}
diff --git a/drivers/mtd/nand/raw/nand_jedec.c b/drivers/mtd/nand/raw/nand_jedec.c
index 15937e02c64f..63069f1948a8 100644
--- a/drivers/mtd/nand/raw/nand_jedec.c
+++ b/drivers/mtd/nand/raw/nand_jedec.c
@@ -51,7 +51,7 @@ int nand_jedec_detect(struct nand_chip *chip)
 	}
 
 	for (i = 0; i < JEDEC_PARAM_PAGES; i++) {
-		ret = nand_read_data_op(chip, p, sizeof(*p), true);
+		ret = nand_read_data_op(chip, p, sizeof(*p), true, false);
 		if (ret) {
 			ret = 0;
 			goto free_jedec_param_page;
diff --git a/drivers/mtd/nand/raw/nand_legacy.c b/drivers/mtd/nand/raw/nand_legacy.c
index f91e92e1b972..d64791c06a97 100644
--- a/drivers/mtd/nand/raw/nand_legacy.c
+++ b/drivers/mtd/nand/raw/nand_legacy.c
@@ -225,7 +225,8 @@ static void nand_wait_status_ready(struct nand_chip *chip, unsigned long timeo)
 	do {
 		u8 status;
 
-		ret = nand_read_data_op(chip, &status, sizeof(status), true);
+		ret = nand_read_data_op(chip, &status, sizeof(status), true,
+					false);
 		if (ret)
 			return;
 
@@ -552,7 +553,8 @@ static int nand_wait(struct nand_chip *chip)
 					break;
 			} else {
 				ret = nand_read_data_op(chip, &status,
-							sizeof(status), true);
+							sizeof(status), true,
+							false);
 				if (ret)
 					return ret;
 
@@ -563,7 +565,7 @@ static int nand_wait(struct nand_chip *chip)
 		} while (time_before(jiffies, timeo));
 	}
 
-	ret = nand_read_data_op(chip, &status, sizeof(status), true);
+	ret = nand_read_data_op(chip, &status, sizeof(status), true, false);
 	if (ret)
 		return ret;
 
diff --git a/drivers/mtd/nand/raw/nand_micron.c b/drivers/mtd/nand/raw/nand_micron.c
index 56654030ec7f..3a37d48c9472 100644
--- a/drivers/mtd/nand/raw/nand_micron.c
+++ b/drivers/mtd/nand/raw/nand_micron.c
@@ -212,7 +212,7 @@ static int micron_nand_on_die_ecc_status_4(struct nand_chip *chip, u8 status,
 	 */
 	if (!oob_required) {
 		ret = nand_read_data_op(chip, chip->oob_poi, mtd->oobsize,
-					false);
+					false, false);
 		if (ret)
 			return ret;
 	}
@@ -304,10 +304,10 @@ micron_nand_read_page_on_die_ecc(struct nand_chip *chip, uint8_t *buf,
 	if (ret)
 		goto out;
 
-	ret = nand_read_data_op(chip, buf, mtd->writesize, false);
+	ret = nand_read_data_op(chip, buf, mtd->writesize, false, false);
 	if (!ret && oob_required)
 		ret = nand_read_data_op(chip, chip->oob_poi, mtd->oobsize,
-					false);
+					false, false);
 
 	if (chip->ecc.strength == 4)
 		max_bitflips = micron_nand_on_die_ecc_status_4(chip, status,
diff --git a/drivers/mtd/nand/raw/nand_onfi.c b/drivers/mtd/nand/raw/nand_onfi.c
index ee0f2c2549c1..e6ffbe8c9a0c 100644
--- a/drivers/mtd/nand/raw/nand_onfi.c
+++ b/drivers/mtd/nand/raw/nand_onfi.c
@@ -167,7 +167,8 @@ int nand_onfi_detect(struct nand_chip *chip)
 	}
 
 	for (i = 0; i < ONFI_PARAM_PAGES; i++) {
-		ret = nand_read_data_op(chip, &pbuf[i], sizeof(*pbuf), true);
+		ret = nand_read_data_op(chip, &pbuf[i], sizeof(*pbuf), true,
+					false);
 		if (ret) {
 			ret = 0;
 			goto free_onfi_param_page;
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index d1f5c5258e35..70380c91731c 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -1363,7 +1363,7 @@ int nand_change_write_column_op(struct nand_chip *chip,
 				unsigned int offset_in_page, const void *buf,
 				unsigned int len, bool force_8bit);
 int nand_read_data_op(struct nand_chip *chip, void *buf, unsigned int len,
-		      bool force_8bit);
+		      bool force_8bit, bool check_only);
 int nand_write_data_op(struct nand_chip *chip, const void *buf,
 		       unsigned int len, bool force_8bit);
 
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
