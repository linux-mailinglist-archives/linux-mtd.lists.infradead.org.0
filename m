Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7071D1C8773
	for <lists+linux-mtd@lfdr.de>; Thu,  7 May 2020 13:01:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ryr6KArA8Wmdeg5maF2KjFr96F8R1NwoIMoxCzvw5CU=; b=FuhjKyaXhmfFGv
	4Kko4ons4hnFu7/V/+xU2CKbH69Xa2M6byWPXNf5/q4kD401n0p3UrTWwFmqcJFJxksY5ayKYaZ25
	dx+uWblprSJfRhfE8tGKnTgsOdDZG6JcRzZx2my8BavHMnNpWL8jyLl8tbURyfBe3BEOICC2Xpg/Z
	Ry/a6LS0kfv2njppJrLvWTXnxxy32rZKmho3iWPtkUD2++4dp8k8qUFblOA8kQnlIMR6dpOm3SmPs
	UNnI+FkdLPx2cXpW/km93tLwu/v/GFUuWz7wxFCONJbm2ZO1soqokLgW7Oi14k5/QCwCYC4G5KOnh
	uGdppnTcfCbahy/zvTVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWeHI-00054U-E5; Thu, 07 May 2020 11:01:20 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWeH0-00050A-8h
 for linux-mtd@lists.infradead.org; Thu, 07 May 2020 11:01:05 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 9836720014;
 Thu,  7 May 2020 11:00:46 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 <devicetree@vger.kernel.org>, Richard Weinberger <richard@nod.at>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v3 1/8] lib/bch: Rework a little bit the exported function
 names
Date: Thu,  7 May 2020 13:00:27 +0200
Message-Id: <20200507110034.14736-2-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200507110034.14736-1-miquel.raynal@bootlin.com>
References: <20200507110034.14736-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_040102_624302_5F22932A 
X-CRM114-Status: GOOD (  19.70  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
 [217.70.183.200 listed in bl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
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
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Ivan Djelic <ivan.djelic@parrot.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

There are four exported functions, all suffixed by _bch, which is clearly not the norm. Before exporting more functions, let's rename them by prefixing them with bch_ instead.

This is a mechanical change:
    init_bch -> bch_init
    free_bch -> bch_free
    encode_bch -> bch_encode
    decode_bch -> bch_decode

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Ivan Djelic <ivan.djelic@parrot.com>
---
 drivers/mtd/devices/docg3.c     | 10 +++---
 drivers/mtd/nand/raw/nand_bch.c | 10 +++---
 include/linux/bch.h             |  8 ++---
 lib/bch.c                       | 64 ++++++++++++++++-----------------
 4 files changed, 46 insertions(+), 46 deletions(-)

diff --git a/drivers/mtd/devices/docg3.c b/drivers/mtd/devices/docg3.c
index eb0f4600efd1..799df8d03357 100644
--- a/drivers/mtd/devices/docg3.c
+++ b/drivers/mtd/devices/docg3.c
@@ -647,7 +647,7 @@ static int doc_ecc_bch_fix_data(struct docg3 *docg3, void *buf, u8 *hwecc)
 
 	for (i = 0; i < DOC_ECC_BCH_SIZE; i++)
 		ecc[i] = bitrev8(hwecc[i]);
-	numerrs = decode_bch(docg3->cascade->bch, NULL,
+	numerrs = bch_decode(docg3->cascade->bch, NULL,
 			     DOC_ECC_BCH_COVERED_BYTES,
 			     NULL, ecc, NULL, errorpos);
 	BUG_ON(numerrs == -EINVAL);
@@ -1984,8 +1984,8 @@ static int __init docg3_probe(struct platform_device *pdev)
 		return ret;
 	cascade->base = base;
 	mutex_init(&cascade->lock);
-	cascade->bch = init_bch(DOC_ECC_BCH_M, DOC_ECC_BCH_T,
-			     DOC_ECC_BCH_PRIMPOLY);
+	cascade->bch = bch_init(DOC_ECC_BCH_M, DOC_ECC_BCH_T,
+				DOC_ECC_BCH_PRIMPOLY);
 	if (!cascade->bch)
 		return ret;
 
@@ -2021,7 +2021,7 @@ static int __init docg3_probe(struct platform_device *pdev)
 	ret = -ENODEV;
 	dev_info(dev, "No supported DiskOnChip found\n");
 err_probe:
-	free_bch(cascade->bch);
+	bch_free(cascade->bch);
 	for (floor = 0; floor < DOC_MAX_NBFLOORS; floor++)
 		if (cascade->floors[floor])
 			doc_release_device(cascade->floors[floor]);
@@ -2045,7 +2045,7 @@ static int docg3_release(struct platform_device *pdev)
 		if (cascade->floors[floor])
 			doc_release_device(cascade->floors[floor]);
 
-	free_bch(docg3->cascade->bch);
+	bch_free(docg3->cascade->bch);
 	return 0;
 }
 
diff --git a/drivers/mtd/nand/raw/nand_bch.c b/drivers/mtd/nand/raw/nand_bch.c
index 17527310c3a1..d95fcc7358e9 100644
--- a/drivers/mtd/nand/raw/nand_bch.c
+++ b/drivers/mtd/nand/raw/nand_bch.c
@@ -41,7 +41,7 @@ int nand_bch_calculate_ecc(struct nand_chip *chip, const unsigned char *buf,
 	unsigned int i;
 
 	memset(code, 0, chip->ecc.bytes);
-	encode_bch(nbc->bch, buf, chip->ecc.size, code);
+	bch_encode(nbc->bch, buf, chip->ecc.size, code);
 
 	/* apply mask so that an erased page is a valid codeword */
 	for (i = 0; i < chip->ecc.bytes; i++)
@@ -67,7 +67,7 @@ int nand_bch_correct_data(struct nand_chip *chip, unsigned char *buf,
 	unsigned int *errloc = nbc->errloc;
 	int i, count;
 
-	count = decode_bch(nbc->bch, NULL, chip->ecc.size, read_ecc, calc_ecc,
+	count = bch_decode(nbc->bch, NULL, chip->ecc.size, read_ecc, calc_ecc,
 			   NULL, errloc);
 	if (count > 0) {
 		for (i = 0; i < count; i++) {
@@ -130,7 +130,7 @@ struct nand_bch_control *nand_bch_init(struct mtd_info *mtd)
 	if (!nbc)
 		goto fail;
 
-	nbc->bch = init_bch(m, t, 0);
+	nbc->bch = bch_init(m, t, 0);
 	if (!nbc->bch)
 		goto fail;
 
@@ -182,7 +182,7 @@ struct nand_bch_control *nand_bch_init(struct mtd_info *mtd)
 		goto fail;
 
 	memset(erased_page, 0xff, eccsize);
-	encode_bch(nbc->bch, erased_page, eccsize, nbc->eccmask);
+	bch_encode(nbc->bch, erased_page, eccsize, nbc->eccmask);
 	kfree(erased_page);
 
 	for (i = 0; i < eccbytes; i++)
@@ -205,7 +205,7 @@ EXPORT_SYMBOL(nand_bch_init);
 void nand_bch_free(struct nand_bch_control *nbc)
 {
 	if (nbc) {
-		free_bch(nbc->bch);
+		bch_free(nbc->bch);
 		kfree(nbc->errloc);
 		kfree(nbc->eccmask);
 		kfree(nbc);
diff --git a/include/linux/bch.h b/include/linux/bch.h
index aa765af85c38..9c35e7cd5890 100644
--- a/include/linux/bch.h
+++ b/include/linux/bch.h
@@ -53,14 +53,14 @@ struct bch_control {
 	struct gf_poly *poly_2t[4];
 };
 
-struct bch_control *init_bch(int m, int t, unsigned int prim_poly);
+struct bch_control *bch_init(int m, int t, unsigned int prim_poly);
 
-void free_bch(struct bch_control *bch);
+void bch_free(struct bch_control *bch);
 
-void encode_bch(struct bch_control *bch, const uint8_t *data,
+void bch_encode(struct bch_control *bch, const uint8_t *data,
 		unsigned int len, uint8_t *ecc);
 
-int decode_bch(struct bch_control *bch, const uint8_t *data, unsigned int len,
+int bch_decode(struct bch_control *bch, const uint8_t *data, unsigned int len,
 	       const uint8_t *recv_ecc, const uint8_t *calc_ecc,
 	       const unsigned int *syn, unsigned int *errloc);
 
diff --git a/lib/bch.c b/lib/bch.c
index 052d3fb753a0..1091841ac716 100644
--- a/lib/bch.c
+++ b/lib/bch.c
@@ -23,15 +23,15 @@
  * This library provides runtime configurable encoding/decoding of binary
  * Bose-Chaudhuri-Hocquenghem (BCH) codes.
  *
- * Call init_bch to get a pointer to a newly allocated bch_control structure for
+ * Call bch_init to get a pointer to a newly allocated bch_control structure for
  * the given m (Galois field order), t (error correction capability) and
  * (optional) primitive polynomial parameters.
  *
- * Call encode_bch to compute and store ecc parity bytes to a given buffer.
- * Call decode_bch to detect and locate errors in received data.
+ * Call bch_encode to compute and store ecc parity bytes to a given buffer.
+ * Call bch_decode to detect and locate errors in received data.
  *
  * On systems supporting hw BCH features, intermediate results may be provided
- * to decode_bch in order to skip certain steps. See decode_bch() documentation
+ * to bch_decode in order to skip certain steps. See bch_decode() documentation
  * for details.
  *
  * Option CONFIG_BCH_CONST_PARAMS can be used to force fixed values of
@@ -115,9 +115,9 @@ struct gf_poly_deg1 {
 };
 
 /*
- * same as encode_bch(), but process input data one byte at a time
+ * same as bch_encode(), but process input data one byte at a time
  */
-static void encode_bch_unaligned(struct bch_control *bch,
+static void bch_encode_unaligned(struct bch_control *bch,
 				 const unsigned char *data, unsigned int len,
 				 uint32_t *ecc)
 {
@@ -174,7 +174,7 @@ static void store_ecc8(struct bch_control *bch, uint8_t *dst,
 }
 
 /**
- * encode_bch - calculate BCH ecc parity of data
+ * bch_encode - calculate BCH ecc parity of data
  * @bch:   BCH control structure
  * @data:  data to encode
  * @len:   data length in bytes
@@ -187,7 +187,7 @@ static void store_ecc8(struct bch_control *bch, uint8_t *dst,
  * The exact number of computed ecc parity bits is given by member @ecc_bits of
  * @bch; it may be less than m*t for large values of t.
  */
-void encode_bch(struct bch_control *bch, const uint8_t *data,
+void bch_encode(struct bch_control *bch, const uint8_t *data,
 		unsigned int len, uint8_t *ecc)
 {
 	const unsigned int l = BCH_ECC_WORDS(bch)-1;
@@ -215,7 +215,7 @@ void encode_bch(struct bch_control *bch, const uint8_t *data,
 	m = ((unsigned long)data) & 3;
 	if (m) {
 		mlen = (len < (4-m)) ? len : 4-m;
-		encode_bch_unaligned(bch, data, mlen, bch->ecc_buf);
+		bch_encode_unaligned(bch, data, mlen, bch->ecc_buf);
 		data += mlen;
 		len  -= mlen;
 	}
@@ -255,13 +255,13 @@ void encode_bch(struct bch_control *bch, const uint8_t *data,
 
 	/* process last unaligned bytes */
 	if (len)
-		encode_bch_unaligned(bch, data, len, bch->ecc_buf);
+		bch_encode_unaligned(bch, data, len, bch->ecc_buf);
 
 	/* store ecc parity bytes into original parity buffer */
 	if (ecc)
 		store_ecc8(bch, ecc, bch->ecc_buf);
 }
-EXPORT_SYMBOL_GPL(encode_bch);
+EXPORT_SYMBOL_GPL(bch_encode);
 
 static inline int modulo(struct bch_control *bch, unsigned int v)
 {
@@ -952,7 +952,7 @@ static int chien_search(struct bch_control *bch, unsigned int len,
 #endif /* USE_CHIEN_SEARCH */
 
 /**
- * decode_bch - decode received codeword and find bit error locations
+ * bch_decode - decode received codeword and find bit error locations
  * @bch:      BCH control structure
  * @data:     received data, ignored if @calc_ecc is provided
  * @len:      data length in bytes, must always be provided
@@ -966,22 +966,22 @@ static int chien_search(struct bch_control *bch, unsigned int len,
  *  invalid parameters were provided
  *
  * Depending on the available hw BCH support and the need to compute @calc_ecc
- * separately (using encode_bch()), this function should be called with one of
+ * separately (using bch_encode()), this function should be called with one of
  * the following parameter configurations -
  *
  * by providing @data and @recv_ecc only:
- *   decode_bch(@bch, @data, @len, @recv_ecc, NULL, NULL, @errloc)
+ *   bch_decode(@bch, @data, @len, @recv_ecc, NULL, NULL, @errloc)
  *
  * by providing @recv_ecc and @calc_ecc:
- *   decode_bch(@bch, NULL, @len, @recv_ecc, @calc_ecc, NULL, @errloc)
+ *   bch_decode(@bch, NULL, @len, @recv_ecc, @calc_ecc, NULL, @errloc)
  *
  * by providing ecc = recv_ecc XOR calc_ecc:
- *   decode_bch(@bch, NULL, @len, NULL, ecc, NULL, @errloc)
+ *   bch_decode(@bch, NULL, @len, NULL, ecc, NULL, @errloc)
  *
  * by providing syndrome results @syn:
- *   decode_bch(@bch, NULL, @len, NULL, NULL, @syn, @errloc)
+ *   bch_decode(@bch, NULL, @len, NULL, NULL, @syn, @errloc)
  *
- * Once decode_bch() has successfully returned with a positive value, error
+ * Once bch_decode() has successfully returned with a positive value, error
  * locations returned in array @errloc should be interpreted as follows -
  *
  * if (errloc[n] >= 8*len), then n-th error is located in ecc (no need for
@@ -993,7 +993,7 @@ static int chien_search(struct bch_control *bch, unsigned int len,
  * Note that this function does not perform any data correction by itself, it
  * merely indicates error locations.
  */
-int decode_bch(struct bch_control *bch, const uint8_t *data, unsigned int len,
+int bch_decode(struct bch_control *bch, const uint8_t *data, unsigned int len,
 	       const uint8_t *recv_ecc, const uint8_t *calc_ecc,
 	       const unsigned int *syn, unsigned int *errloc)
 {
@@ -1012,7 +1012,7 @@ int decode_bch(struct bch_control *bch, const uint8_t *data, unsigned int len,
 			/* compute received data ecc into an internal buffer */
 			if (!data || !recv_ecc)
 				return -EINVAL;
-			encode_bch(bch, data, len, NULL);
+			bch_encode(bch, data, len, NULL);
 		} else {
 			/* load provided calculated ecc */
 			load_ecc8(bch, bch->ecc_buf, calc_ecc);
@@ -1053,7 +1053,7 @@ int decode_bch(struct bch_control *bch, const uint8_t *data, unsigned int len,
 	}
 	return (err >= 0) ? err : -EBADMSG;
 }
-EXPORT_SYMBOL_GPL(decode_bch);
+EXPORT_SYMBOL_GPL(bch_decode);
 
 /*
  * generate Galois field lookup tables
@@ -1236,7 +1236,7 @@ static uint32_t *compute_generator_polynomial(struct bch_control *bch)
 }
 
 /**
- * init_bch - initialize a BCH encoder/decoder
+ * bch_init - initialize a BCH encoder/decoder
  * @m:          Galois field order, should be in the range 5-15
  * @t:          maximum error correction capability, in bits
  * @prim_poly:  user-provided primitive polynomial (or 0 to use default)
@@ -1246,17 +1246,17 @@ static uint32_t *compute_generator_polynomial(struct bch_control *bch)
  *
  * This initialization can take some time, as lookup tables are built for fast
  * encoding/decoding; make sure not to call this function from a time critical
- * path. Usually, init_bch() should be called on module/driver init and
- * free_bch() should be called to release memory on exit.
+ * path. Usually, bch_init() should be called on module/driver init and
+ * bch_free() should be called to release memory on exit.
  *
  * You may provide your own primitive polynomial of degree @m in argument
- * @prim_poly, or let init_bch() use its default polynomial.
+ * @prim_poly, or let bch_init() use its default polynomial.
  *
- * Once init_bch() has successfully returned a pointer to a newly allocated
+ * Once bch_init() has successfully returned a pointer to a newly allocated
  * BCH control structure, ecc length in bytes is given by member @ecc_bytes of
  * the structure.
  */
-struct bch_control *init_bch(int m, int t, unsigned int prim_poly)
+struct bch_control *bch_init(int m, int t, unsigned int prim_poly)
 {
 	int err = 0;
 	unsigned int i, words;
@@ -1347,16 +1347,16 @@ struct bch_control *init_bch(int m, int t, unsigned int prim_poly)
 	return bch;
 
 fail:
-	free_bch(bch);
+	bch_free(bch);
 	return NULL;
 }
-EXPORT_SYMBOL_GPL(init_bch);
+EXPORT_SYMBOL_GPL(bch_init);
 
 /**
- *  free_bch - free the BCH control structure
+ *  bch_free - free the BCH control structure
  *  @bch:    BCH control structure to release
  */
-void free_bch(struct bch_control *bch)
+void bch_free(struct bch_control *bch)
 {
 	unsigned int i;
 
@@ -1377,7 +1377,7 @@ void free_bch(struct bch_control *bch)
 		kfree(bch);
 	}
 }
-EXPORT_SYMBOL_GPL(free_bch);
+EXPORT_SYMBOL_GPL(bch_free);
 
 MODULE_LICENSE("GPL");
 MODULE_AUTHOR("Ivan Djelic <ivan.djelic@parrot.com>");
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
