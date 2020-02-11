Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77385159019
	for <lists+linux-mtd@lfdr.de>; Tue, 11 Feb 2020 14:36:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KU6KMJdUyYu46zagfetJwZJd8YCtCTWE3T2sseZFp/Y=; b=qa/h9Ugde2i8Xo
	UrTAC6l7BxcQSPQ/XigLp2GpCEDzTxdx8UqqTU+UmsUsykte1ah65WFPn5YXyb4RT7WlNTVp/JcVt
	40Jrz20lhN2qIZHXOKNzHlgkSL6LijoOlZ5S1VW8na8+z/whmAu3zaXmxaXgDtERu3M3qAQ+RBBhg
	DsJI+Yiypd5BulbOdBOVomEaauF+gR6WiB8308cgjZczVL8dZhAC9qxNWzvuMrQl2f3bRGRZKBSZF
	qVnrWcYELiCSAIUQu5r3qBes4t18MCW11QGN+rsHJS/KjfllmkJOlwvuDdxRDRryWo3w5Z16fNL/o
	SQN/NO21JS8qlzQdwIDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Vig-0007Cv-QY; Tue, 11 Feb 2020 13:36:54 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1VgF-00044W-TE
 for linux-mtd@lists.infradead.org; Tue, 11 Feb 2020 13:34:26 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01BDYKdc130383;
 Tue, 11 Feb 2020 07:34:20 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1581428060;
 bh=cMU0ZoHMNwzgF9wtY9YX2tbTzNdxYcwJkzgWGGefeMo=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=Jhg6wlkNB3FGRdFvDmQq232btvFOhQSs29CVGQtieeBpXUJ+UluQDZjIluiyEYEvk
 AzXgOR8UH8cqp6j3cp9MXy5WzFf+Hubv0UTRvqo7rsEi9on3nAAHq/faS8vEatptev
 3Wu5j5hINqkDwP7fV53g0yiBdzsaLJsrrhuySH9M=
Received: from DLEE111.ent.ti.com (dlee111.ent.ti.com [157.170.170.22])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01BDYKEK026057;
 Tue, 11 Feb 2020 07:34:20 -0600
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 11
 Feb 2020 07:34:20 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 11 Feb 2020 07:34:20 -0600
Received: from pratyush-OptiPlex-790.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01BDXm5Q087522;
 Tue, 11 Feb 2020 07:34:17 -0600
From: Pratyush Yadav <p.yadav@ti.com>
To: Tudor Ambarus <tudor.ambarus@microchip.com>, Miquel Raynal
 <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, Vignesh
 Raghavendra <vigneshr@ti.com>, Mark Brown <broonie@kernel.org>
Subject: [PATCH 9/9] mtd: spi-nor: add support for Cypress Semper flash
Date: Tue, 11 Feb 2020 19:03:48 +0530
Message-ID: <20200211133348.15558-10-p.yadav@ti.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200211133348.15558-1-p.yadav@ti.com>
References: <20200211133348.15558-1-p.yadav@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_053424_055468_C977D7A8 
X-CRM114-Status: GOOD (  21.08  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sekhar Nori <nsekhar@ti.com>, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org, Pratyush Yadav <p.yadav@ti.com>,
 linux-spi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The Cypress Semper flash is an xSPI compliant octal DTR flash. Add
support for using it in octal DTR mode.

The flash by default boots in a hybrid sector mode. Switch to uniform
sector mode on boot. Use the default 20 dummy cycles for a read fast
command.

The SFDP programming on some older versions of the flash was incorrect.
Fixes for that are included in the fixup hooks.

Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 192 ++++++++++++++++++++++++++++++++++
 include/linux/mtd/spi-nor.h   |  14 +++
 2 files changed, 206 insertions(+)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 78e3475fa2a9..367e3d0f65aa 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -260,6 +260,12 @@ struct flash_info {
 
 #define JEDEC_MFR(info)	((info)->id[0])
 
+/* Forward declarations that will be used by s28hs512t_setup(). */
+static int spi_nor_default_setup(struct spi_nor *nor,
+				 const struct spi_nor_hwcaps *hwcaps);
+static void spi_nor_set_pp_settings(struct spi_nor_pp_command *pp,
+				    u8 opcode, enum spi_nor_protocol proto);
+
 /**
  * spi_nor_spimem_setup_op() - Set up common properties of a spi-mem op.
  * @nor:		pointer to a 'struct spi_nor'
@@ -2241,6 +2247,65 @@ static int spi_nor_is_locked(struct mtd_info *mtd, loff_t ofs, uint64_t len)
 	return ret;
 }
 
+/**
+ * spi_nor_cypress_octal_enable() - Enable octal DTR mode on Cypress flashes.
+ * @nor:		pointer to a 'struct spi_nor'
+ *
+ * This also sets the memory access latency cycles to 20, which is the default
+ * in the spi-nor framework.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+static int spi_nor_cypress_octal_enable(struct spi_nor *nor)
+{
+	struct spi_mem_op op;
+	u8 *buf = nor->bouncebuf;
+	u8 addr_width = 3;
+	int ret;
+
+	/* Use 20 dummy cycles for memory array reads. */
+	ret = spi_nor_write_enable(nor);
+	if (ret)
+		return ret;
+
+	*buf = SPINOR_REG_CYPRESS_CFR2V_MEMLAT_8_20;
+	op = (struct spi_mem_op)SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_WR_ANY_REG, 1),
+			SPI_MEM_OP_ADDR(addr_width, SPINOR_REG_CYPRESS_CFR2V, 1),
+			SPI_MEM_OP_NO_DUMMY,
+			SPI_MEM_OP_DATA_OUT(1, buf, 1));
+	ret = spi_mem_exec_op(nor->spimem, &op);
+	if (ret) {
+		dev_warn(nor->dev,
+			 "failed to set default memory latency value: %d\n",
+			 ret);
+		return ret;
+	}
+	ret = spi_nor_wait_till_ready(nor);
+	if (ret)
+		return ret;
+
+	nor->params.reads[SNOR_CMD_READ_8_8_8_DTR].num_wait_states = 20;
+	nor->params.reads[SNOR_CMD_READ_8_8_8_DTR].num_mode_clocks = 0;
+
+	/* Set the octal and DTR enable bits. */
+	ret = spi_nor_write_enable(nor);
+	if (ret)
+		return ret;
+
+	*buf = SPINOR_REG_CYPRESS_CFR5V_OCT_DTR_EN;
+	op = (struct spi_mem_op)SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_WR_ANY_REG, 1),
+			SPI_MEM_OP_ADDR(addr_width, SPINOR_REG_CYPRESS_CFR5V, 1),
+			SPI_MEM_OP_NO_DUMMY,
+			SPI_MEM_OP_DATA_OUT(1, buf, 1));
+	ret = spi_mem_exec_op(nor->spimem, &op);
+	if (ret) {
+		dev_warn(nor->dev, "Failed to enable octal DTR mode\n");
+		return ret;
+	}
+
+	return 0;
+}
+
 /**
  * spi_nor_sr1_bit6_quad_enable() - Set the Quad Enable BIT(6) in the Status
  * Register 1.
@@ -2453,6 +2518,130 @@ static struct spi_nor_fixups gd25q256_fixups = {
 	.default_init = gd25q256_default_init,
 };
 
+static int s28hs512t_setup(struct spi_nor *nor,
+			    const struct spi_nor_hwcaps *hwcaps)
+{
+	struct spi_mem_op op;
+	u8 *buf = nor->bouncebuf;
+	u8 addr_width = 3;
+	int ret;
+
+	if (!nor->spimem) {
+		dev_err(nor->dev,
+			"operation not supported for non-spimem drivers\n");
+		return -ENOTSUPP;
+	}
+
+	/*
+	 * This Cypress flash also supports hybrid sector sizes. Make sure
+	 * uniform sector mode is selected. This is done by setting the bit
+	 * CFR3N[3].
+	 */
+	op = (struct spi_mem_op)
+		SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_RD_ANY_REG, 1),
+			   SPI_MEM_OP_ADDR(addr_width, SPINOR_REG_CYPRESS_CFR3N, 1),
+			   SPI_MEM_OP_NO_DUMMY,
+			   SPI_MEM_OP_DATA_IN(1, buf, 1));
+	ret = spi_mem_exec_op(nor->spimem, &op);
+	if (ret)
+		return ret;
+
+	ret = spi_nor_write_enable(nor);
+	if (ret)
+		return ret;
+
+	/* Set the uniform sector mode bit. */
+	*buf |= SPINOR_REG_CYPRESS_CFR3N_UNISECT;
+	op = (struct spi_mem_op)
+		SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_WR_ANY_REG, 1),
+			   SPI_MEM_OP_ADDR(addr_width, SPINOR_REG_CYPRESS_CFR3N, 1),
+			   SPI_MEM_OP_NO_DUMMY,
+			   SPI_MEM_OP_DATA_OUT(1, buf, 1));
+	ret = spi_mem_exec_op(nor->spimem, &op);
+	if (ret) {
+		dev_err(nor->dev, "Failed to change to uniform sector mode\n");
+		return ret;
+	}
+
+	ret = spi_nor_wait_till_ready(nor);
+	if (ret)
+		return ret;
+
+	return spi_nor_default_setup(nor, hwcaps);
+}
+
+static void s28hs512t_default_init(struct spi_nor *nor)
+{
+	nor->params.octal_dtr_enable = spi_nor_cypress_octal_enable;
+	nor->params.setup = s28hs512t_setup;
+}
+
+static void s28hs512t_post_sfdp_fixup(struct spi_nor *nor)
+{
+	/*
+	 * On older versions of the flash the xSPI Profile 1.0 table has the
+	 * 8D-8D-8D Fast Read opcode as 0x00. But it actually should be 0xEE.
+	 */
+	if (nor->params.reads[SNOR_CMD_READ_8_8_8_DTR].opcode == 0)
+		nor->params.reads[SNOR_CMD_READ_8_8_8_DTR].opcode =
+			SPINOR_OP_CYPRESS_RD_FAST;
+
+	/* This flash is also missing the 4-byte Page Program opcode bit. */
+	spi_nor_set_pp_settings(&nor->params.page_programs[SNOR_CMD_PP],
+				SPINOR_OP_PP_4B, SNOR_PROTO_1_1_1);
+	/*
+	 * Since xSPI Page Program opcode is backward compatible with
+	 * Legacy SPI, use Legacy SPI opcode there as well.
+	 */
+	spi_nor_set_pp_settings(&nor->params.page_programs[SNOR_CMD_PP_8_8_8_DTR],
+				SPINOR_OP_PP_4B, SNOR_PROTO_8_8_8_DTR);
+
+	/*
+	 * The xSPI Profile 1.0 table advertises the number of additional
+	 * address bytes needed for Read Status Register command as 0 but the
+	 * actual value for that is 4.
+	 */
+	nor->params.rdsr_addr_nbytes = 4;
+}
+
+static int s28hs512t_post_bfpt_fixup(struct spi_nor *nor,
+				     const struct sfdp_parameter_header *bfpt_header,
+				     const struct sfdp_bfpt *bfpt,
+				     struct spi_nor_flash_parameter *params)
+{
+	struct spi_mem_op op;
+	u8 *buf = nor->bouncebuf;
+	u8 addr_width = 3;
+	int ret;
+
+	/*
+	 * The BFPT table advertises a 512B page size but the page size is
+	 * actually configurable (with the default being 256B). Read from
+	 * CFR3V[4] and set the correct size.
+	 */
+	op = (struct spi_mem_op)
+		SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_RD_ANY_REG, 1),
+			   SPI_MEM_OP_ADDR(addr_width, SPINOR_REG_CYPRESS_CFR3V, 1),
+			   SPI_MEM_OP_NO_DUMMY,
+			   SPI_MEM_OP_DATA_IN(1, buf, 1));
+	ret = spi_mem_exec_op(nor->spimem, &op);
+	if (ret)
+		return ret;
+
+	if (*buf & SPINOR_REG_CYPRESS_CFR3V_PGSZ)
+		params->page_size = 512;
+	else
+		params->page_size = 256;
+
+	return 0;
+}
+
+static struct spi_nor_fixups s28hs512t_fixups = {
+	.default_init = s28hs512t_default_init,
+	.post_sfdp = s28hs512t_post_sfdp_fixup,
+	.post_bfpt = s28hs512t_post_bfpt_fixup,
+};
+
 /* NOTE: double check command sets and memory organization when you add
  * more nor chips.  This current list focusses on newer chips, which
  * have been converging on command sets which including JEDEC ID.
@@ -2715,6 +2904,9 @@ static const struct flash_info spi_nor_ids[] = {
 	{ "s25fl064l",  INFO(0x016017,      0,  64 * 1024, 128, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ | SPI_NOR_4B_OPCODES) },
 	{ "s25fl128l",  INFO(0x016018,      0,  64 * 1024, 256, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ | SPI_NOR_4B_OPCODES) },
 	{ "s25fl256l",  INFO(0x016019,      0,  64 * 1024, 512, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ | SPI_NOR_4B_OPCODES) },
+	{ "s28hs512t",  INFO(0x345b1a,      0, 256 * 1024, 256, SECT_4K | SPI_NOR_OCTAL_DTR_READ)
+		.fixups = &s28hs512t_fixups,
+	},
 
 	/* SST -- large erase sizes are "overlays", "sectors" are 4K */
 	{ "sst25vf040b", INFO(0xbf258d, 0, 64 * 1024,  8, SECT_4K | SST_WRITE) },
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index c653f6713cfc..e765272fc0f4 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -150,6 +150,20 @@
 #define SR2_QUAD_EN_BIT1	BIT(1)
 #define SR2_QUAD_EN_BIT7	BIT(7)
 
+/* For Cypress flash. */
+#define SPINOR_OP_RD_ANY_REG			0x65	/* Read any register */
+#define SPINOR_OP_WR_ANY_REG			0x71	/* Write any register */
+#define SPINOR_REG_CYPRESS_CFR2V		0x00800003
+#define SPINOR_REG_CYPRESS_CFR2V_MEMLAT_8_20	0x8
+#define SPINOR_REG_CYPRESS_CFR3N		0x00000004
+#define SPINOR_REG_CYPRESS_CFR3V		0x00800004
+#define SPINOR_REG_CYPRESS_CFR3V_PGSZ		BIT(4) /* Page size. */
+#define SPINOR_REG_CYPRESS_CFR3N_UNISECT	BIT(3) /* Uniform sector mode */
+#define SPINOR_REG_CYPRESS_CFR4V		0x00800005
+#define SPINOR_REG_CYPRESS_CFR5V		0x00800006
+#define SPINOR_REG_CYPRESS_CFR5V_OCT_DTR_EN	0x3
+#define SPINOR_OP_CYPRESS_RD_FAST		0xee
+
 /* Supported SPI protocols */
 #define SNOR_PROTO_INST_MASK	GENMASK(23, 16)
 #define SNOR_PROTO_INST_SHIFT	16
-- 
2.25.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
