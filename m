Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 830797E012
	for <lists+linux-mtd@lfdr.de>; Thu,  1 Aug 2019 18:22:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ffo9B0qIQQ7rp6oXte1Mtox18hr7LMoM8obwqKXnlzE=; b=FWkrjYyW7Lpyuj
	ePe5KoGs7mc5RUn1QXz73ezlC59Vwv3LsULD4mMsSCyzBYhaArPkUApoIfArWMrui9NVnQMsiEhnS
	IUZipmjNE/FKGcbvFG1C9egEwSuBUGkKFMLO70LbbeeU9L+5vJhA7mEEwA21aHUHD1JoH6+J/0nkh
	Ytg3VgzgYJp5yAmF8fI3uAcFnBCX/d5CD/qfJDQ9wBOB6C29Vv1PqTMD9XL2BQgKoI4Z0ZdjKEZ68
	sKEWUX+2cE/tFphkO9YY6IgRmg1T5modWcmzUxOzbM0P/U75i1kU111tzI6SmwXpYpDosWApGOSX5
	Wa+aeDrUZ2375GeI3NcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htDqu-00059Z-Od; Thu, 01 Aug 2019 16:22:52 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htDqK-0004Z9-Bk
 for linux-mtd@lists.infradead.org; Thu, 01 Aug 2019 16:22:18 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x71GMBGD039195;
 Thu, 1 Aug 2019 11:22:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1564676531;
 bh=eI17SDdCXOLjG9HiLJcP/9t6fPsWVHSrpdyKsdsYp1o=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=OS5L7fsU0Cqq89DutlOuLPfYK+qTmRK/NScxIng13BWffO1Rt2NLZYoH0KrlWxhhT
 Fevp0mH4HmJJfItrRtLdCseht5XzaCPV1zs8xPplr8rsvLRxUveCDY2x70FSw+U5eC
 tJ8xm03ngNqrElFZBmD4rz1fnCwxKn4jEApvnJW8=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x71GMB3q092951
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 1 Aug 2019 11:22:11 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 1 Aug
 2019 11:22:11 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 1 Aug 2019 11:22:11 -0500
Received: from a0132425.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x71GLxdD097075;
 Thu, 1 Aug 2019 11:22:08 -0500
From: Vignesh Raghavendra <vigneshr@ti.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger
 <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, Tudor Ambarus
 <tudor.ambarus@microchip.com>
Subject: [PATCH v4 3/3] mtd: spi-nor: Rework hwcaps selection for the spi-mem
 case
Date: Thu, 1 Aug 2019 21:52:29 +0530
Message-ID: <20190801162229.28897-4-vigneshr@ti.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190801162229.28897-1-vigneshr@ti.com>
References: <20190801162229.28897-1-vigneshr@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_092216_509819_855B1E37 
X-CRM114-Status: GOOD (  22.52  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
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
Cc: Marek Vasut <marek.vasut@gmail.com>, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org, Tomer Maimon <tmaimon77@gmail.com>,
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
 drivers/mtd/spi-nor/spi-nor.c | 183 +++++++++++++++++++++++++++-------
 include/linux/mtd/spi-nor.h   |  14 +++
 2 files changed, 161 insertions(+), 36 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 866962c715b4..02b40f08ac36 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -2952,6 +2952,129 @@ static int spi_nor_read_sfdp(struct spi_nor *nor, u32 addr,
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
@@ -4361,16 +4484,25 @@ static int spi_nor_setup(struct spi_nor *nor,
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
@@ -4713,11 +4845,11 @@ static int spi_nor_probe(struct spi_mem *spimem)
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
 
@@ -4731,27 +4863,6 @@ static int spi_nor_probe(struct spi_mem *spimem)
 
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
index 4f35b1877889..5f1acb1867dd 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -524,6 +524,20 @@ struct spi_nor_hwcaps {
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
