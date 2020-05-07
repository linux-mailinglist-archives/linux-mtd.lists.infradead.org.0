Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC2121C8763
	for <lists+linux-mtd@lfdr.de>; Thu,  7 May 2020 12:56:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ruDMtczuRMN34pCO+XRD+BVUS+xUADbMqUthcpC1WDU=; b=bpfcq4fEVujVbG
	gW78rnPZd/g7BoDeRHnT0t+sZ6HydWJ/JTe1AlcYlXSvYgM3fcrmZrimGsgvugEftoyjJLkKhBYih
	mJBtGB0x4iGgPWfPPyjQGhoTnsx/1P6rP6Tq8v04WKNHSzGCABtr+B+PAbN3wHsFCMxYkgJ6/1NsT
	6A1uVdP0QidXTPJpg8WSXlKruuxPvdXB+MaIx+seoxLVhd39Wgd7YxZBjZXKlwwPeRPFVexXErZsA
	RIWegTbq8x5M8wcniWEKwgue7FmsBbYYpTu3rv7INjweDpegUtplhZnhnLsQQLPt9E7DX0cHsMtKt
	Q2TX9aCGTC2USfpu+L1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWeCP-0000vO-NC; Thu, 07 May 2020 10:56:17 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWe9C-0004By-O6
 for linux-mtd@lists.infradead.org; Thu, 07 May 2020 10:53:01 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 53509240008;
 Thu,  7 May 2020 10:52:56 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v5 11/13] mtd: rawnand: Expose monolithic
 read/write_page_raw() helpers
Date: Thu,  7 May 2020 12:52:39 +0200
Message-Id: <20200507105241.14299-12-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200507105241.14299-1-miquel.raynal@bootlin.com>
References: <20200507105241.14299-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_035259_155695_FC5EED6B 
X-CRM114-Status: GOOD (  15.30  )
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

The current nand_read/write_page_raw() helpers are already widely used
but do not fit the purpose of "constrained" controllers which cannot,
for instance, separate command/address cycles with data cycles.

Workaround this issue by proposing alternative helpers that can be
used by these controller drivers instead.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/mtd/nand/raw/nand_base.c | 77 ++++++++++++++++++++++++++++++++
 include/linux/mtd/rawnand.h      |  8 +++-
 2 files changed, 83 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index def4bf9a0c40..065ce31fcf6b 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -2638,6 +2638,47 @@ int nand_read_page_raw(struct nand_chip *chip, uint8_t *buf, int oob_required,
 }
 EXPORT_SYMBOL(nand_read_page_raw);
 
+/**
+ * nand_monolithic_read_page_raw - Monolithic page read in raw mode
+ * @chip: NAND chip info structure
+ * @buf: buffer to store read data
+ * @oob_required: caller requires OOB data read to chip->oob_poi
+ * @page: page number to read
+ *
+ * This is a raw page read, ie. without any error detection/correction.
+ * Monolithic means we are requesting all the relevant data (main plus
+ * eventually OOB) to be loaded in the NAND cache and sent over the
+ * bus (from the NAND chip to the NAND controller) in a single
+ * operation. This is an alternative to nand_read_page_raw(), which
+ * first reads the main data, and if the OOB data is requested too,
+ * then reads more data on the bus.
+ */
+int nand_monolithic_read_page_raw(struct nand_chip *chip, u8 *buf,
+				  int oob_required, int page)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	unsigned int size = mtd->writesize;
+	u8 *read_buf = buf;
+	int ret;
+
+	if (oob_required) {
+		size += mtd->oobsize;
+
+		if (buf != chip->data_buf)
+			read_buf = nand_get_data_buf(chip);
+	}
+
+	ret = nand_read_page_op(chip, page, 0, read_buf, size);
+	if (ret)
+		return ret;
+
+	if (buf != chip->data_buf)
+		memcpy(buf, read_buf, mtd->writesize);
+
+	return 0;
+}
+EXPORT_SYMBOL(nand_monolithic_read_page_raw);
+
 /**
  * nand_read_page_raw_syndrome - [INTERN] read raw page data without ecc
  * @chip: nand chip info structure
@@ -3646,6 +3687,42 @@ int nand_write_page_raw(struct nand_chip *chip, const uint8_t *buf,
 }
 EXPORT_SYMBOL(nand_write_page_raw);
 
+/**
+ * nand_monolithic_write_page_raw - Monolithic page write in raw mode
+ * @chip: NAND chip info structure
+ * @buf: data buffer to write
+ * @oob_required: must write chip->oob_poi to OOB
+ * @page: page number to write
+ *
+ * This is a raw page write, ie. without any error detection/correction.
+ * Monolithic means we are requesting all the relevant data (main plus
+ * eventually OOB) to be sent over the bus and effectively programmed
+ * into the NAND chip arrays in a single operation. This is an
+ * alternative to nand_write_page_raw(), which first sends the main
+ * data, then eventually send the OOB data by latching more data
+ * cycles on the NAND bus, and finally sends the program command to
+ * synchronyze the NAND chip cache.
+ */
+int nand_monolithic_write_page_raw(struct nand_chip *chip, const u8 *buf,
+				   int oob_required, int page)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	unsigned int size = mtd->writesize;
+	u8 *write_buf = (u8 *)buf;
+
+	if (oob_required) {
+		size += mtd->oobsize;
+
+		if (buf != chip->data_buf) {
+			write_buf = nand_get_data_buf(chip);
+			memcpy(write_buf, buf, mtd->writesize);
+		}
+	}
+
+	return nand_prog_page_op(chip, page, 0, write_buf, size);
+}
+EXPORT_SYMBOL(nand_monolithic_write_page_raw);
+
 /**
  * nand_write_page_raw_syndrome - [INTERN] raw page write function
  * @chip: nand chip info structure
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index 70380c91731c..406e9ff0f45c 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -1328,13 +1328,17 @@ int nand_read_oob_std(struct nand_chip *chip, int page);
 int nand_get_set_features_notsupp(struct nand_chip *chip, int addr,
 				  u8 *subfeature_param);
 
-/* Default read_page_raw implementation */
+/* read_page_raw implementations */
 int nand_read_page_raw(struct nand_chip *chip, uint8_t *buf, int oob_required,
 		       int page);
+int nand_monolithic_read_page_raw(struct nand_chip *chip, uint8_t *buf,
+				  int oob_required, int page);
 
-/* Default write_page_raw implementation */
+/* write_page_raw implementations */
 int nand_write_page_raw(struct nand_chip *chip, const uint8_t *buf,
 			int oob_required, int page);
+int nand_monolithic_write_page_raw(struct nand_chip *chip, const uint8_t *buf,
+				   int oob_required, int page);
 
 /* Reset and initialize a NAND device */
 int nand_reset(struct nand_chip *chip, int chipnr);
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
