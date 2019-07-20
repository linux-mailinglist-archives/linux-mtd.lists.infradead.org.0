Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A026EE5B
	for <lists+linux-mtd@lfdr.de>; Sat, 20 Jul 2019 10:01:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2qh8nktwR7z5H5rwoStHAGAOJnDVXH9C+Fqc8DrNUXM=; b=l1Sn+CA7i2xZbt
	vm6L2Dk4adEYWLrL7NNTGajwVb55DRuId7vF3vZsbHFUTEEVTi1Kn0UG09nT5Bfo07eyu4b187HF5
	UPGUksrlbd2vbwpMkm/Xj0DbgWkcNoURmfD8pL19h1ypRWgioFfg/5Qq4dQfCm4Il+yi2wVR7jEW3
	n/e2X2p2L9tUm17oeMe+QYh5V6/q86bPsOjPI7C8FTW7n3PJ074/oZ/lgs2NVEr6VLw6Gmtv/0avX
	NaWrdX8nS8HwpeiRVQsLC4vaZsrpjbqiHxFSla2uZVxnGtg9VK/G9wqaqqmYCxw6WqZUewNuFpw+U
	HWPQTyokSqYNAaxBXsag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hokJM-0002l6-Bm; Sat, 20 Jul 2019 08:01:44 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hokII-0002GT-9B
 for linux-mtd@lists.infradead.org; Sat, 20 Jul 2019 08:00:40 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6K80W4c078951;
 Sat, 20 Jul 2019 03:00:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1563609632;
 bh=G2dFa5gqh0pxSKoDZZ1GmICjzR13jLfmt4ybJwHlBV8=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=QzmqGUBdbQo/WK0eX/95/Fge7riBAZvImlDuvmqCOAwJ9GOehW9ta3MqoRMqpnPH0
 +Y4N06aT0kyKUBaaOvHE7hajPkhW3N6Elm9DbUpxab/Cj55ux3ccsqZEOW5+Pv+Sqs
 BTRevxNoR/bpYve5X9u+0glKkBoFQK6n1wCkBEt8=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6K80We9110083
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Sat, 20 Jul 2019 03:00:32 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Sat, 20
 Jul 2019 03:00:32 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Sat, 20 Jul 2019 03:00:32 -0500
Received: from a0132425.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6K80NJ9072322;
 Sat, 20 Jul 2019 03:00:29 -0500
From: Vignesh Raghavendra <vigneshr@ti.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger
 <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, Tudor Ambarus
 <tudor.ambarus@microchip.com>
Subject: [PATCH v2 2/2] mtd: spi-nor: Rework hwcaps selection for the spi-mem
 case
Date: Sat, 20 Jul 2019 13:30:23 +0530
Message-ID: <20190720080023.5279-3-vigneshr@ti.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190720080023.5279-1-vigneshr@ti.com>
References: <20190720080023.5279-1-vigneshr@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_010038_520571_53421917 
X-CRM114-Status: GOOD (  22.51  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Marek Vasut <marek.vasut@gmail.com>,
 Yogesh Narayan Gaur <yogeshnarayan.gaur@nxp.com>,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 Boris Brezillon <bbrezillon@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Boris Brezillon <boris.brezillon@bootlin.com>

The spi-mem layer provides a spi_mem_supports_op() function to check
whether a specific operation is supported by the controller or not.
This is much more accurate than the hwcaps selection logic based on
SPI_{RX,TX}_ flags.

Rework the hwcaps selection logic to use spi_mem_supports_op() when
nor->spimem != NULL.

Signed-off-by: Boris Brezillon <boris.brezillon@bootlin.com>
Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
---
v2:
Refractor spi_nor_spimem_adjust_hwcaps to avoid looping twice over
WCAPS
Add docs to new functions
Rework spi_nor_spimem_check_op() logic

 drivers/mtd/spi-nor/spi-nor.c | 183 +++++++++++++++++++++++++++-------
 include/linux/mtd/spi-nor.h   |  14 +++
 2 files changed, 161 insertions(+), 36 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index f428a6d4022b..924dbaf3fa49 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -3028,6 +3028,129 @@ static int spi_nor_read_sfdp(struct spi_nor *nor, u32 addr,
 	return ret;
 }
 
+/**
+ * spi_nor_spimem_check_op - check if the operation is supported
+ *                           by controller
+ *@nor:        pointer to a 'struct spi_nor'
+ *@op:         pointer to op template to be checked
+ *
+ * Returns 0 if operation is supported, -ENOTSUPP otherwise.
+ */
+static int spi_nor_spimem_check_op(struct spi_nor *nor,
+				   struct spi_mem_op *op)
+{
+	/*
+	 * First test with 4 address bytes. The opcode itself might
+	 * be a 3B addressing opcode but we don't care, because
+	 * SPI controller implementation should not check the opcode,
+	 * but just the sequence.
+	 */
+	op->addr.nbytes = 4;
+	if (!spi_mem_supports_op(nor->spimem, op)) {
+		/* If flash size <16MB, 3 address bytes are sufficient */
+		if (nor->mtd.size <= SZ_16M) {
+			op->addr.nbytes = 3;
+			if (!spi_mem_supports_op(nor->spimem, op))
+				return -ENOTSUPP;
+		}
+	}
+
+	return 0;
+}
+
+/**
+ * spi_nor_spimem_check_readop - check if the read op is supported
+ *                               by controller
+ *@nor:         pointer to a 'struct spi_nor'
+ *@read:        pointer to op template to be checked
+ *
+ * Returns 0 if operation is supported, -ENOTSUPP otherwise.
+ */
+static int spi_nor_spimem_check_readop(struct spi_nor *nor,
+				       const struct spi_nor_read_command *read)
+{
+	struct spi_mem_op op = SPI_MEM_OP(SPI_MEM_OP_CMD(read->opcode, 1),
+					  SPI_MEM_OP_ADDR(3, 0, 1),
+					  SPI_MEM_OP_DUMMY(0, 1),
+					  SPI_MEM_OP_DATA_IN(0, NULL, 1));
+
+	op.cmd.buswidth = spi_nor_get_protocol_inst_nbits(read->proto);
+	op.addr.buswidth = spi_nor_get_protocol_addr_nbits(read->proto);
+	op.data.buswidth = spi_nor_get_protocol_data_nbits(read->proto);
+	op.dummy.buswidth = op.addr.buswidth;
+	op.dummy.nbytes = (read->num_mode_clocks + read->num_wait_states) *
+			  op.dummy.buswidth / 8;
+
+	return spi_nor_spimem_check_op(nor, &op);
+}
+
+/**
+ * spi_nor_spimem_check_pp - check if the page program op is supported
+ *                           by controller
+ *@nor:         pointer to a 'struct spi_nor'
+ *@pp:          pointer to op template to be checked
+ *
+ * Returns 0 if operation is supported, -ENOTSUPP otherwise.
+ */
+static int spi_nor_spimem_check_pp(struct spi_nor *nor,
+				   const struct spi_nor_pp_command *pp)
+{
+	struct spi_mem_op op = SPI_MEM_OP(SPI_MEM_OP_CMD(pp->opcode, 1),
+					  SPI_MEM_OP_ADDR(3, 0, 1),
+					  SPI_MEM_OP_NO_DUMMY,
+					  SPI_MEM_OP_DATA_OUT(0, NULL, 1));
+
+	op.cmd.buswidth = spi_nor_get_protocol_inst_nbits(pp->proto);
+	op.addr.buswidth = spi_nor_get_protocol_addr_nbits(pp->proto);
+	op.data.buswidth = spi_nor_get_protocol_data_nbits(pp->proto);
+
+	return spi_nor_spimem_check_op(nor, &op);
+}
+
+/**
+ * spi_nor_spimem_adjust_hwcaps - Find optimal Read/Write protocol
+ *                                based on SPI controller capabilities
+ * @nor:        pointer to a 'struct spi_nor'
+ * @params:     pointer to the 'struct spi_nor_flash_parameter'
+ *              representing SPI NOR flash capabilities
+ * @hwcaps:     pointer to resulting capabilities after adjusting
+ *              according to controller and flash's capability
+ */
+static void
+spi_nor_spimem_adjust_hwcaps(struct spi_nor *nor,
+			     const struct spi_nor_flash_parameter *params,
+			     u32 *hwcaps)
+{
+	unsigned int cap;
+
+	/* DTR modes are not supported yet, mask them all. */
+	*hwcaps &= ~SNOR_HWCAPS_DTR;
+
+	/* X-X-X modes are not supported yet, mask them all. */
+	*hwcaps &= ~SNOR_HWCAPS_X_X_X;
+
+	/* Start with read commands. */
+	for (cap = 0; cap < sizeof(*hwcaps) * BITS_PER_BYTE; cap++) {
+		int rdidx, ppidx;
+
+		if (!(*hwcaps & BIT(cap)))
+			continue;
+
+		rdidx = spi_nor_hwcaps_read2cmd(BIT(cap));
+		if (rdidx >= 0 &&
+		    spi_nor_spimem_check_readop(nor, &params->reads[rdidx]))
+			*hwcaps &= ~BIT(cap);
+
+		ppidx = spi_nor_hwcaps_pp2cmd(BIT(cap));
+		if (ppidx < 0)
+			continue;
+
+		if (spi_nor_spimem_check_pp(nor,
+					    &params->page_programs[ppidx]))
+			*hwcaps &= ~BIT(cap);
+	}
+}
+
 /**
  * spi_nor_read_sfdp_dma_unsafe() - read Serial Flash Discoverable Parameters.
  * @nor:	pointer to a 'struct spi_nor'
@@ -4437,16 +4560,25 @@ static int spi_nor_setup(struct spi_nor *nor,
 	 */
 	shared_mask = hwcaps->mask & params->hwcaps.mask;
 
-	/* SPI n-n-n protocols are not supported yet. */
-	ignored_mask = (SNOR_HWCAPS_READ_2_2_2 |
-			SNOR_HWCAPS_READ_4_4_4 |
-			SNOR_HWCAPS_READ_8_8_8 |
-			SNOR_HWCAPS_PP_4_4_4 |
-			SNOR_HWCAPS_PP_8_8_8);
-	if (shared_mask & ignored_mask) {
-		dev_dbg(nor->dev,
-			"SPI n-n-n protocols are not supported yet.\n");
-		shared_mask &= ~ignored_mask;
+	if (nor->spimem) {
+		/*
+		 * When called from spi_nor_probe(), all caps are set and we
+		 * need to discard some of them based on what the SPI
+		 * controller actually supports (using spi_mem_supports_op()).
+		 */
+		spi_nor_spimem_adjust_hwcaps(nor, params, &shared_mask);
+	} else {
+		/*
+		 * SPI n-n-n protocols are not supported when the SPI
+		 * controller directly implements the spi_nor interface.
+		 * Yet another reason to switch to spi-mem.
+		 */
+		ignored_mask = SNOR_HWCAPS_X_X_X;
+		if (shared_mask & ignored_mask) {
+			dev_dbg(nor->dev,
+				"SPI n-n-n protocols are not supported.\n");
+			shared_mask &= ~ignored_mask;
+		}
 	}
 
 	/* Select the (Fast) Read command. */
@@ -4775,11 +4907,11 @@ static int spi_nor_probe(struct spi_mem *spimem)
 	struct spi_device *spi = spimem->spi;
 	struct flash_platform_data *data = dev_get_platdata(&spi->dev);
 	struct spi_nor *nor;
-	struct spi_nor_hwcaps hwcaps = {
-		.mask = SNOR_HWCAPS_READ |
-			SNOR_HWCAPS_READ_FAST |
-			SNOR_HWCAPS_PP,
-	};
+	/*
+	 * Enable all caps by default. The core will mask them after
+	 * checking what's really supported using spi_mem_supports_op().
+	 */
+	const struct spi_nor_hwcaps hwcaps = { .mask = SNOR_HWCAPS_ALL };
 	char *flash_name;
 	int ret;
 
@@ -4806,27 +4938,6 @@ static int spi_nor_probe(struct spi_mem *spimem)
 
 	spi_mem_set_drvdata(spimem, nor);
 
-	if (spi->mode & SPI_RX_OCTAL) {
-		hwcaps.mask |= SNOR_HWCAPS_READ_1_1_8;
-
-		if (spi->mode & SPI_TX_OCTAL)
-			hwcaps.mask |= (SNOR_HWCAPS_READ_1_8_8 |
-					SNOR_HWCAPS_PP_1_1_8 |
-					SNOR_HWCAPS_PP_1_8_8);
-	} else if (spi->mode & SPI_RX_QUAD) {
-		hwcaps.mask |= SNOR_HWCAPS_READ_1_1_4;
-
-		if (spi->mode & SPI_TX_QUAD)
-			hwcaps.mask |= (SNOR_HWCAPS_READ_1_4_4 |
-					SNOR_HWCAPS_PP_1_1_4 |
-					SNOR_HWCAPS_PP_1_4_4);
-	} else if (spi->mode & SPI_RX_DUAL) {
-		hwcaps.mask |= SNOR_HWCAPS_READ_1_1_2;
-
-		if (spi->mode & SPI_TX_DUAL)
-			hwcaps.mask |= SNOR_HWCAPS_READ_1_2_2;
-	}
-
 	if (data && data->name)
 		nor->mtd.name = data->name;
 
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index e18c03f72ded..4521a38452d6 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -526,6 +526,20 @@ struct spi_nor_hwcaps {
 #define SNOR_HWCAPS_PP_1_8_8	BIT(21)
 #define SNOR_HWCAPS_PP_8_8_8	BIT(22)
 
+#define SNOR_HWCAPS_X_X_X	(SNOR_HWCAPS_READ_2_2_2 |	\
+				 SNOR_HWCAPS_READ_4_4_4 |	\
+				 SNOR_HWCAPS_READ_8_8_8 |	\
+				 SNOR_HWCAPS_PP_4_4_4 |		\
+				 SNOR_HWCAPS_PP_8_8_8)
+
+#define SNOR_HWCAPS_DTR		(SNOR_HWCAPS_READ_1_1_1_DTR |	\
+				 SNOR_HWCAPS_READ_1_2_2_DTR |	\
+				 SNOR_HWCAPS_READ_1_4_4_DTR |	\
+				 SNOR_HWCAPS_READ_1_8_8_DTR)
+
+#define SNOR_HWCAPS_ALL		(SNOR_HWCAPS_READ_MASK |	\
+				 SNOR_HWCAPS_PP_MASK)
+
 /**
  * spi_nor_scan() - scan the SPI NOR
  * @nor:	the spi_nor structure
-- 
2.22.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
