Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8655516FB05
	for <lists+linux-mtd@lfdr.de>; Wed, 26 Feb 2020 10:38:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G9YkKe+XjAIXvpz6TMHWfwxUH6ydCXNBtyGV04XE0oI=; b=UvBmQNJcnjQHek
	+ifoQjSYpCO/TES9EVZv7RudpJ7iQcRu5M/ARdDX61OfRF8/G5hOTFLhaGIxY1vSMS9agl7xMi+Uf
	0RxKvkpjLuJ/ULeJrpPsgu1uIrkdhNUnJSYLoLlUIPekglzAYf3Vl1F0ctG0EjVLnVEXDzyJa3u5X
	gBz4x/mmXkMIBzRQH/226tdVtsR3+p69r+7DGfNERlX2pNP/3gK8y9rgm4s9HJzEqB+jO4/oRONQx
	apkGKUtplUsicQE/ZYyZjAmP7tMrH4kQePDF/FLYl7+Lxs7zzmmP+gNwmKEbO7GW01Jx5BXaVUBDN
	VC3p6d88rVdvAFdjEVTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6t9c-0002Gf-RO; Wed, 26 Feb 2020 09:38:56 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6t8L-0001FU-1p
 for linux-mtd@lists.infradead.org; Wed, 26 Feb 2020 09:37:39 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01Q9bUa4048417;
 Wed, 26 Feb 2020 03:37:30 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1582709850;
 bh=M3mm3Cf772cMZOC46yELya0QzB+JBMYTKpNqzbT5+78=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=xvFFzasOWP5kbWdXgaHp6613afsmoL1nMzqiYCdfAt0AYbuS8r61IEN4iH686RyXj
 h91btSsp318UeCUo/7LFmtADBwsG6c6JdstMquFUoQUgeI+gfzZPpilvG/hBz3pwBH
 Mw4LOoS0RWfQHCknYpSr0F1TvIbz0/DEFY1ItCS4=
Received: from DFLE110.ent.ti.com (dfle110.ent.ti.com [10.64.6.31])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 01Q9bUM3118977
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 26 Feb 2020 03:37:30 -0600
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 26
 Feb 2020 03:37:30 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 26 Feb 2020 03:37:30 -0600
Received: from pratyush-OptiPlex-790.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01Q9b4AA110613;
 Wed, 26 Feb 2020 03:37:26 -0600
From: Pratyush Yadav <p.yadav@ti.com>
To: Tudor Ambarus <tudor.ambarus@microchip.com>, Miquel Raynal
 <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, Vignesh
 Raghavendra <vigneshr@ti.com>, Mark Brown <broonie@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 05/11] spi: cadence-quadspi: Add support for octal DTR
 flashes
Date: Wed, 26 Feb 2020 15:06:57 +0530
Message-ID: <20200226093703.19765-6-p.yadav@ti.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200226093703.19765-1-p.yadav@ti.com>
References: <20200226093703.19765-1-p.yadav@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_013737_187250_F762A7D0 
X-CRM114-Status: GOOD (  23.81  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-mtd@lists.infradead.org, Pratyush Yadav <p.yadav@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Set up opcode extension and enable/disable DTR mode based on whether the
command is DTR or not.

xSPI flashes can have a 4-byte dummy address associated with some
commands like the Read Status Register command in octal DTR mode. Since
the flash does not support sending the dummy address, we can not use
automatic write completion polling in DTR mode. Further, no write
completion polling makes it impossible to use DAC mode for DTR writes.
In that mode, the controller does not know beforehand how long a write
will be and so it can de-assert Chip Select (CS#) at any time. Once CS#
is de-assert, the flash will go into burning phase. But since the
controller does not do write completion polling, it does not know when
the flash is busy and might send in writes while the flash is not ready.

So, disable write completion polling and make writes go through indirect
mode for DTR writes and let spi-mem take care of polling the SR.

Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
---
 drivers/spi/spi-cadence-quadspi.c | 247 ++++++++++++++++++++++++++----
 1 file changed, 214 insertions(+), 33 deletions(-)

diff --git a/drivers/spi/spi-cadence-quadspi.c b/drivers/spi/spi-cadence-quadspi.c
index 000f01c18c87..d43bf30e1cde 100644
--- a/drivers/spi/spi-cadence-quadspi.c
+++ b/drivers/spi/spi-cadence-quadspi.c
@@ -52,6 +52,7 @@ struct cqspi_flash_pdata {
 	u8		inst_width;
 	u8		addr_width;
 	u8		data_width;
+	bool		is_dtr;
 	u8		cs;
 	bool		registered;
 };
@@ -111,6 +112,8 @@ struct cqspi_driver_platdata {
 #define CQSPI_REG_CONFIG_CHIPSELECT_LSB		10
 #define CQSPI_REG_CONFIG_DMA_MASK		BIT(15)
 #define CQSPI_REG_CONFIG_BAUD_LSB		19
+#define CQSPI_REG_CONFIG_DTR_PROTO		BIT(24)
+#define CQSPI_REG_CONFIG_DUAL_OPCODE		BIT(30)
 #define CQSPI_REG_CONFIG_IDLE_LSB		31
 #define CQSPI_REG_CONFIG_CHIPSELECT_MASK	0xF
 #define CQSPI_REG_CONFIG_BAUD_MASK		0xF
@@ -217,6 +220,14 @@ struct cqspi_driver_platdata {
 #define CQSPI_REG_CMDWRITEDATALOWER		0xA8
 #define CQSPI_REG_CMDWRITEDATAUPPER		0xAC
 
+#define CQSPI_REG_POLLING_STATUS		0xB0
+#define CQSPI_REG_POLLING_STATUS_DUMMY_LSB	16
+
+#define CQSPI_REG_OP_EXT_LOWER			0xE0
+#define CQSPI_REG_OP_EXT_READ_LSB		24
+#define CQSPI_REG_OP_EXT_WRITE_LSB		16
+#define CQSPI_REG_OP_EXT_STIG_LSB		0
+
 /* Interrupt status bits */
 #define CQSPI_REG_IRQ_MODE_ERR			BIT(0)
 #define CQSPI_REG_IRQ_UNDERFLOW			BIT(1)
@@ -291,6 +302,69 @@ static unsigned int cqspi_calc_rdreg(struct cqspi_flash_pdata *f_pdata)
 	return rdreg;
 }
 
+static int cqspi_set_protocol(struct cqspi_flash_pdata *f_pdata,
+			      const struct spi_mem_op *op)
+{
+	f_pdata->inst_width = CQSPI_INST_TYPE_SINGLE;
+	f_pdata->addr_width = CQSPI_INST_TYPE_SINGLE;
+	f_pdata->data_width = CQSPI_INST_TYPE_SINGLE;
+	f_pdata->is_dtr = op->data.is_dtr && op->cmd.is_dtr && op->addr.is_dtr;
+
+	switch (op->data.buswidth) {
+	case 0:
+		break;
+	case 1:
+		f_pdata->data_width = CQSPI_INST_TYPE_SINGLE;
+		break;
+	case 2:
+		f_pdata->data_width = CQSPI_INST_TYPE_DUAL;
+		break;
+	case 4:
+		f_pdata->data_width = CQSPI_INST_TYPE_QUAD;
+		break;
+	case 8:
+		f_pdata->data_width = CQSPI_INST_TYPE_OCTAL;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	/* Right now we only support 8-8-8 DTR mode. */
+	if (f_pdata->is_dtr) {
+		switch (op->cmd.buswidth) {
+		case 0:
+			break;
+		case 8:
+			f_pdata->inst_width = CQSPI_INST_TYPE_OCTAL;
+			break;
+		default:
+			return -EINVAL;
+		}
+
+		switch (op->addr.buswidth) {
+		case 0:
+			break;
+		case 8:
+			f_pdata->addr_width = CQSPI_INST_TYPE_OCTAL;
+			break;
+		default:
+			return -EINVAL;
+		}
+
+		switch (op->data.buswidth) {
+		case 0:
+			break;
+		case 8:
+			f_pdata->data_width = CQSPI_INST_TYPE_OCTAL;
+			break;
+		default:
+			return -EINVAL;
+		}
+	}
+
+	return 0;
+}
+
 static int cqspi_wait_idle(struct cqspi_st *cqspi)
 {
 	const unsigned int poll_idle_retry = 3;
@@ -348,6 +422,60 @@ static int cqspi_exec_flash_cmd(struct cqspi_st *cqspi, unsigned int reg)
 	return cqspi_wait_idle(cqspi);
 }
 
+static int cqspi_setup_opcode_ext(struct cqspi_flash_pdata *f_pdata,
+				  const struct spi_mem_op *op,
+				  unsigned int shift)
+{
+	struct cqspi_st *cqspi = f_pdata->cqspi;
+	void __iomem *reg_base = cqspi->iobase;
+	int ret;
+	unsigned int reg;
+	u8 ext;
+
+	ret = spi_mem_get_cmd_ext(op, &ext);
+	if (ret)
+		return ret;
+	reg = readl(reg_base + CQSPI_REG_OP_EXT_LOWER);
+	reg &= ~(0xff << shift);
+	reg |= ext << shift;
+	writel(reg, reg_base + CQSPI_REG_OP_EXT_LOWER);
+
+	return 0;
+}
+
+static int cqspi_enable_dtr(struct cqspi_flash_pdata *f_pdata,
+			    const struct spi_mem_op *op, unsigned int shift,
+			    bool enable)
+{
+	struct cqspi_st *cqspi = f_pdata->cqspi;
+	void __iomem *reg_base = cqspi->iobase;
+	unsigned int reg;
+	int ret;
+
+	reg = readl(reg_base + CQSPI_REG_CONFIG);
+
+	/*
+	 * We enable dual byte opcode here. The callers have to set up the
+	 * extension opcode based on which type of operation it is.
+	 */
+	if (enable) {
+		reg |= CQSPI_REG_CONFIG_DTR_PROTO;
+		reg |= CQSPI_REG_CONFIG_DUAL_OPCODE;
+
+		/* Set up command opcode extension. */
+		ret = cqspi_setup_opcode_ext(f_pdata, op, shift);
+		if (ret)
+			return ret;
+	} else {
+		reg &= ~CQSPI_REG_CONFIG_DTR_PROTO;
+		reg &= ~CQSPI_REG_CONFIG_DUAL_OPCODE;
+	}
+
+	writel(reg, reg_base + CQSPI_REG_CONFIG);
+
+	return cqspi_wait_idle(cqspi);
+}
+
 static int cqspi_command_read(struct cqspi_flash_pdata *f_pdata,
 			      const struct spi_mem_op *op)
 {
@@ -361,6 +489,15 @@ static int cqspi_command_read(struct cqspi_flash_pdata *f_pdata,
 	size_t read_len;
 	int status;
 
+	status = cqspi_set_protocol(f_pdata, op);
+	if (status)
+		return status;
+
+	status = cqspi_enable_dtr(f_pdata, op, CQSPI_REG_OP_EXT_STIG_LSB,
+				  f_pdata->is_dtr);
+	if (status)
+		return status;
+
 	if (!n_rx || n_rx > CQSPI_STIG_DATA_LEN_MAX || !rxbuf) {
 		dev_err(&cqspi->pdev->dev,
 			"Invalid input argument, len %zu rxbuf 0x%p\n",
@@ -410,6 +547,16 @@ static int cqspi_command_write(struct cqspi_flash_pdata *f_pdata,
 	unsigned int reg;
 	unsigned int data;
 	size_t write_len;
+	int ret;
+
+	ret = cqspi_set_protocol(f_pdata, op);
+	if (ret)
+		return ret;
+
+	ret = cqspi_enable_dtr(f_pdata, op, CQSPI_REG_OP_EXT_STIG_LSB,
+			       f_pdata->is_dtr);
+	if (ret)
+		return ret;
 
 	if (n_tx > CQSPI_STIG_DATA_LEN_MAX || (n_tx && !txbuf)) {
 		dev_err(&cqspi->pdev->dev,
@@ -418,6 +565,9 @@ static int cqspi_command_write(struct cqspi_flash_pdata *f_pdata,
 		return -EINVAL;
 	}
 
+	reg = cqspi_calc_rdreg(f_pdata);
+	writel(reg, reg_base + CQSPI_REG_RD_INSTR);
+
 	reg = opcode << CQSPI_REG_CMDCTRL_OPCODE_LSB;
 
 	if (op->addr.nbytes) {
@@ -456,16 +606,25 @@ static int cqspi_read_setup(struct cqspi_flash_pdata *f_pdata,
 	void __iomem *reg_base = cqspi->iobase;
 	unsigned int dummy_clk = 0;
 	unsigned int reg;
+	int ret;
+
+	ret = cqspi_enable_dtr(f_pdata, op, CQSPI_REG_OP_EXT_READ_LSB,
+			       f_pdata->is_dtr);
+	if (ret)
+		return ret;
 
 	reg = op->cmd.opcode << CQSPI_REG_RD_INSTR_OPCODE_LSB;
 	reg |= cqspi_calc_rdreg(f_pdata);
 
 	/* Setup dummy clock cycles */
-	dummy_clk = op->dummy.nbytes * 8;
+	dummy_clk = op->dummy.nbytes * (8 / op->dummy.buswidth);
+	if (f_pdata->is_dtr)
+		dummy_clk /= 2;
+
 	if (dummy_clk > CQSPI_DUMMY_CLKS_MAX)
 		dummy_clk = CQSPI_DUMMY_CLKS_MAX;
 
-	if (dummy_clk / 8)
+	if (dummy_clk)
 		reg |= (dummy_clk & CQSPI_REG_RD_INSTR_DUMMY_MASK)
 		       << CQSPI_REG_RD_INSTR_DUMMY_LSB;
 
@@ -575,15 +734,38 @@ static int cqspi_write_setup(struct cqspi_flash_pdata *f_pdata,
 			     const struct spi_mem_op *op)
 {
 	unsigned int reg;
+	int ret;
 	struct cqspi_st *cqspi = f_pdata->cqspi;
 	void __iomem *reg_base = cqspi->iobase;
 
+	ret = cqspi_enable_dtr(f_pdata, op, CQSPI_REG_OP_EXT_WRITE_LSB,
+			       f_pdata->is_dtr);
+	if (ret)
+		return ret;
+
 	/* Set opcode. */
 	reg = op->cmd.opcode << CQSPI_REG_WR_INSTR_OPCODE_LSB;
+	reg |= f_pdata->data_width << CQSPI_REG_WR_INSTR_TYPE_DATA_LSB;
+	reg |= f_pdata->addr_width << CQSPI_REG_WR_INSTR_TYPE_ADDR_LSB;
 	writel(reg, reg_base + CQSPI_REG_WR_INSTR);
 	reg = cqspi_calc_rdreg(f_pdata);
 	writel(reg, reg_base + CQSPI_REG_RD_INSTR);
 
+	/* Set up the command opcode extension. */
+	if (f_pdata->is_dtr) {
+		/*
+		 * Some flashes like the cypress Semper flash expect a 4-byte
+		 * dummy address with the Read SR command in DTR mode, but this
+		 * controller does not support sending address with the Read SR
+		 * command. So, disable write completion polling on the
+		 * controller's side. spi-nor will take care of polling the
+		 * status register.
+		 */
+		reg = readl(reg_base + CQSPI_REG_WR_COMPLETION_CTRL);
+		reg |= CQSPI_REG_WR_DISABLE_AUTO_POLL;
+		writel(reg, reg_base + CQSPI_REG_WR_COMPLETION_CTRL);
+	}
+
 	reg = readl(reg_base + CQSPI_REG_SIZE);
 	reg &= ~CQSPI_REG_SIZE_ADDRESS_MASK;
 	reg |= (op->addr.nbytes - 1);
@@ -833,35 +1015,6 @@ static void cqspi_configure(struct cqspi_flash_pdata *f_pdata,
 		cqspi_controller_enable(cqspi, 1);
 }
 
-static int cqspi_set_protocol(struct cqspi_flash_pdata *f_pdata,
-			      const struct spi_mem_op *op)
-{
-	f_pdata->inst_width = CQSPI_INST_TYPE_SINGLE;
-	f_pdata->addr_width = CQSPI_INST_TYPE_SINGLE;
-	f_pdata->data_width = CQSPI_INST_TYPE_SINGLE;
-
-	if (op->data.dir == SPI_MEM_DATA_IN) {
-		switch (op->data.buswidth) {
-		case 1:
-			f_pdata->data_width = CQSPI_INST_TYPE_SINGLE;
-			break;
-		case 2:
-			f_pdata->data_width = CQSPI_INST_TYPE_DUAL;
-			break;
-		case 4:
-			f_pdata->data_width = CQSPI_INST_TYPE_QUAD;
-			break;
-		case 8:
-			f_pdata->data_width = CQSPI_INST_TYPE_OCTAL;
-			break;
-		default:
-			return -EINVAL;
-		}
-	}
-
-	return 0;
-}
-
 static ssize_t cqspi_write(struct cqspi_flash_pdata *f_pdata,
 			   const struct spi_mem_op *op)
 {
@@ -879,7 +1032,16 @@ static ssize_t cqspi_write(struct cqspi_flash_pdata *f_pdata,
 	if (ret)
 		return ret;
 
-	if (cqspi->use_dac_mode && ((to + len) <= cqspi->ahb_size)) {
+	/*
+	 * Some flashes like the Cypress Semper flash expect a dummy 4-byte
+	 * address (all 0s) with the read status register command in DTR mode.
+	 * But this controller does not support sending dummy address bytes to
+	 * the flash when it is polling the write completion register in DTR
+	 * mode. So, we can not use direct mode when in DTR mode for writing
+	 * data.
+	 */
+	if (!f_pdata->is_dtr && cqspi->use_dac_mode
+	    && ((to + len) <= cqspi->ahb_size)) {
 		memcpy_toio(cqspi->ahb_base + to, buf, len);
 		return cqspi_wait_idle(cqspi);
 	}
@@ -1006,6 +1168,23 @@ static int cqspi_exec_mem_op(struct spi_mem *mem, const struct spi_mem_op *op)
 	return ret;
 }
 
+static bool cqspi_supports_mem_op(struct spi_mem *mem,
+				 const struct spi_mem_op *op)
+{
+	bool all_true, all_false;
+
+	all_true = op->cmd.is_dtr && op->addr.is_dtr && op->dummy.is_dtr &&
+		   op->data.is_dtr;
+	all_false = !op->cmd.is_dtr && !op->addr.is_dtr && !op->dummy.is_dtr &&
+		    !op->data.is_dtr;
+
+	/* Mixed DTR modes not supported. */
+	if (!(all_true || all_false))
+		return false;
+
+	return spi_mem_default_supports_op(mem, op);
+}
+
 static int cqspi_of_get_flash_pdata(struct platform_device *pdev,
 				    struct cqspi_flash_pdata *f_pdata,
 				    struct device_node *np)
@@ -1136,6 +1315,7 @@ static int cqspi_request_mmap_dma(struct cqspi_st *cqspi)
 
 static const struct spi_controller_mem_ops cqspi_mem_ops = {
 	.exec_op = cqspi_exec_mem_op,
+	.supports_op = cqspi_supports_mem_op,
 };
 
 static int cqspi_setup_flash(struct cqspi_st *cqspi)
@@ -1187,7 +1367,8 @@ static int cqspi_probe(struct platform_device *pdev)
 		dev_err(&pdev->dev, "spi_alloc_master failed\n");
 		return -ENOMEM;
 	}
-	master->mode_bits = SPI_RX_QUAD | SPI_TX_DUAL | SPI_RX_DUAL;
+	master->mode_bits = SPI_RX_OCTAL | SPI_TX_OCTAL | SPI_RX_QUAD |
+			    SPI_TX_DUAL | SPI_RX_DUAL | SPI_RX_DTR | SPI_TX_DTR;
 	master->mem_ops = &cqspi_mem_ops;
 	master->dev.of_node = pdev->dev.of_node;
 
-- 
2.25.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
