Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 211E81E9D86
	for <lists+linux-mtd@lfdr.de>; Mon,  1 Jun 2020 07:50:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x0vmlyX6nk/sPPnyEUqVnLVythTuPpsRn9QLEh0RwTw=; b=kdf5WxeoSHmXkt
	tyQosbUQ3kX80qMars8Sn6aGyaT2dgTXq2WSFMHKNtu8xuOM/L9c4K4WOVTd2YZOAZxiWzBbqHDaA
	IjvBL5XejFj/a+0dtvFvCzS6lSS4Oxe7Si94qAI6uYdTu3EAqMuPjn3UGsHNe7gVktEZtpm5gEUQW
	4UlJPGFJeBrqdidQQklFQDHw2p74GBUrzZcIfNY4C7U8G3FxjZL9wnA3MsnKgHKWww1h8bNAVWkE+
	m24dMCFLSf8lfvKM15TFvsLGtBiTfNPe+bN112ouMUpZyLajr7YyzNGWsfgqpOXdBTrizsuRvnopK
	eT/rkpC4KbloiQKK1B9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfdKZ-0002S9-Ec; Mon, 01 Jun 2020 05:49:51 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfdIs-00019Z-DV
 for linux-mtd@lists.infradead.org; Mon, 01 Jun 2020 05:48:15 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0515m00p121041;
 Mon, 1 Jun 2020 00:48:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1590990480;
 bh=y3SKi6/vUUcatvX5ga+Vt4zV8zDeLY9p5+tXqrzF3fU=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=jfMAXaRwnsU6m6xsQVAMijUU9HECxBFPBkh6WOuczU/33qBqrvXWNEGdsOaD5w0pR
 hrP+1fQHPrVvI5yjGsLI2qBEIqtBlxSHm8kxzwMRqibQswUkg8uyHBJJZoPoaz2Tgz
 K2KuCcOdcmhSmW40BH96DptVgVt/b6COtoBiA0LU=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0515m0mV074274;
 Mon, 1 Jun 2020 00:48:00 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 1 Jun
 2020 00:47:59 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 1 Jun 2020 00:47:59 -0500
Received: from ula0132425.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0515lRPn038289;
 Mon, 1 Jun 2020 00:47:56 -0500
From: Vignesh Raghavendra <vigneshr@ti.com>
To: Tudor Ambarus <tudor.ambarus@microchip.com>, Mark Brown
 <broonie@kernel.org>
Subject: [PATCH v3 7/8] mtd: spi-nor: Convert cadence-quadspi to use spi-mem
 framework
Date: Mon, 1 Jun 2020 11:17:24 +0530
Message-ID: <20200601054725.2060-8-vigneshr@ti.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200601054725.2060-1-vigneshr@ti.com>
References: <20200601054725.2060-1-vigneshr@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_224806_962727_4609EB7B 
X-CRM114-Status: GOOD (  18.45  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: marex@denx.de, Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>, dinguyen@kernel.org,
 simon.k.r.goldschmidt@gmail.com, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org,
 Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>,
 linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>

Move cadence-quadspi driver to use spi-mem framework. This is required
to make the driver support for SPI NAND flashes in future.

Driver is feature compliant with existing SPI NOR version.

Signed-off-by: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
---
 .../mtd/spi-nor/controllers/cadence-quadspi.c | 476 +++++++-----------
 1 file changed, 191 insertions(+), 285 deletions(-)

diff --git a/drivers/mtd/spi-nor/controllers/cadence-quadspi.c b/drivers/mtd/spi-nor/controllers/cadence-quadspi.c
index 6b1cbad25e3f..c12a1c0191b9 100644
--- a/drivers/mtd/spi-nor/controllers/cadence-quadspi.c
+++ b/drivers/mtd/spi-nor/controllers/cadence-quadspi.c
@@ -3,6 +3,8 @@
  * Driver for Cadence QSPI Controller
  *
  * Copyright Altera Corporation (C) 2012-2014. All rights reserved.
+ * Copyright Intel Corporation (C) 2019-2020. All rights reserved.
+ * Copyright (C) 2020 Texas Instruments Incorporated - http://www.ti.com
  */
 #include <linux/clk.h>
 #include <linux/completion.h>
@@ -17,9 +19,6 @@
 #include <linux/jiffies.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
-#include <linux/mtd/mtd.h>
-#include <linux/mtd/partitions.h>
-#include <linux/mtd/spi-nor.h>
 #include <linux/of_device.h>
 #include <linux/of.h>
 #include <linux/platform_device.h>
@@ -27,6 +26,7 @@
 #include <linux/reset.h>
 #include <linux/sched.h>
 #include <linux/spi/spi.h>
+#include <linux/spi/spi-mem.h>
 #include <linux/timer.h>
 
 #define CQSPI_NAME			"cadence-qspi"
@@ -36,16 +36,12 @@
 #define CQSPI_NEEDS_WR_DELAY		BIT(0)
 #define CQSPI_DISABLE_DAC_MODE		BIT(1)
 
-/* Capabilities mask */
-#define CQSPI_BASE_HWCAPS_MASK					\
-	(SNOR_HWCAPS_READ | SNOR_HWCAPS_READ_FAST |		\
-	SNOR_HWCAPS_READ_1_1_2 | SNOR_HWCAPS_READ_1_1_4 |	\
-	SNOR_HWCAPS_PP)
+/* Capabilities */
+#define CQSPI_SUPPORTS_OCTAL		BIT(0)
 
 struct cqspi_st;
 
 struct cqspi_flash_pdata {
-	struct spi_nor	nor;
 	struct cqspi_st	*cqspi;
 	u32		clk_rate;
 	u32		read_delay;
@@ -57,8 +53,6 @@ struct cqspi_flash_pdata {
 	u8		addr_width;
 	u8		data_width;
 	u8		cs;
-	bool		registered;
-	bool		use_direct_mode;
 };
 
 struct cqspi_st {
@@ -71,7 +65,6 @@ struct cqspi_st {
 	void __iomem		*ahb_base;
 	resource_size_t		ahb_size;
 	struct completion	transfer_complete;
-	struct mutex		bus_mutex;
 
 	struct dma_chan		*rx_chan;
 	struct completion	rx_dma_complete;
@@ -85,6 +78,7 @@ struct cqspi_st {
 	bool			rclk_en;
 	u32			trigger_address;
 	u32			wr_delay;
+	bool			use_direct_mode;
 	struct cqspi_flash_pdata f_pdata[CQSPI_MAX_CHIPSELECT];
 };
 
@@ -283,9 +277,8 @@ static irqreturn_t cqspi_irq_handler(int this_irq, void *dev)
 	return IRQ_HANDLED;
 }
 
-static unsigned int cqspi_calc_rdreg(struct spi_nor *nor)
+static unsigned int cqspi_calc_rdreg(struct cqspi_flash_pdata *f_pdata)
 {
-	struct cqspi_flash_pdata *f_pdata = nor->priv;
 	u32 rdreg = 0;
 
 	rdreg |= f_pdata->inst_width << CQSPI_REG_RD_INSTR_TYPE_INSTR_LSB;
@@ -352,19 +345,21 @@ static int cqspi_exec_flash_cmd(struct cqspi_st *cqspi, unsigned int reg)
 	return cqspi_wait_idle(cqspi);
 }
 
-static int cqspi_command_read(struct spi_nor *nor, u8 opcode,
-			      u8 *rxbuf, size_t n_rx)
+static int cqspi_command_read(struct cqspi_flash_pdata *f_pdata,
+			      const struct spi_mem_op *op)
 {
-	struct cqspi_flash_pdata *f_pdata = nor->priv;
 	struct cqspi_st *cqspi = f_pdata->cqspi;
 	void __iomem *reg_base = cqspi->iobase;
+	u8 *rxbuf = op->data.buf.in;
+	u8 opcode = op->cmd.opcode;
+	size_t n_rx = op->data.nbytes;
 	unsigned int rdreg;
 	unsigned int reg;
 	size_t read_len;
 	int status;
 
 	if (!n_rx || n_rx > CQSPI_STIG_DATA_LEN_MAX || !rxbuf) {
-		dev_err(nor->dev,
+		dev_err(&cqspi->pdev->dev,
 			"Invalid input argument, len %zu rxbuf 0x%p\n",
 			n_rx, rxbuf);
 		return -EINVAL;
@@ -372,7 +367,7 @@ static int cqspi_command_read(struct spi_nor *nor, u8 opcode,
 
 	reg = opcode << CQSPI_REG_CMDCTRL_OPCODE_LSB;
 
-	rdreg = cqspi_calc_rdreg(nor);
+	rdreg = cqspi_calc_rdreg(f_pdata);
 	writel(rdreg, reg_base + CQSPI_REG_RD_INSTR);
 
 	reg |= (0x1 << CQSPI_REG_CMDCTRL_RD_EN_LSB);
@@ -401,25 +396,36 @@ static int cqspi_command_read(struct spi_nor *nor, u8 opcode,
 	return 0;
 }
 
-static int cqspi_command_write(struct spi_nor *nor, const u8 opcode,
-			       const u8 *txbuf, size_t n_tx)
+static int cqspi_command_write(struct cqspi_flash_pdata *f_pdata,
+			       const struct spi_mem_op *op)
 {
-	struct cqspi_flash_pdata *f_pdata = nor->priv;
 	struct cqspi_st *cqspi = f_pdata->cqspi;
 	void __iomem *reg_base = cqspi->iobase;
+	const u8 opcode = op->cmd.opcode;
+	const u8 *txbuf = op->data.buf.out;
+	size_t n_tx = op->data.nbytes;
 	unsigned int reg;
 	unsigned int data;
 	size_t write_len;
-	int ret;
 
 	if (n_tx > CQSPI_STIG_DATA_LEN_MAX || (n_tx && !txbuf)) {
-		dev_err(nor->dev,
+		dev_err(&cqspi->pdev->dev,
 			"Invalid input argument, cmdlen %zu txbuf 0x%p\n",
 			n_tx, txbuf);
 		return -EINVAL;
 	}
 
 	reg = opcode << CQSPI_REG_CMDCTRL_OPCODE_LSB;
+
+	if (op->addr.nbytes) {
+		reg |= (0x1 << CQSPI_REG_CMDCTRL_ADDR_EN_LSB);
+		reg |= ((op->addr.nbytes - 1) &
+			CQSPI_REG_CMDCTRL_ADD_BYTES_MASK)
+			<< CQSPI_REG_CMDCTRL_ADD_BYTES_LSB;
+
+		writel(op->addr.val, reg_base + CQSPI_REG_CMDADDRESS);
+	}
+
 	if (n_tx) {
 		reg |= (0x1 << CQSPI_REG_CMDCTRL_WR_EN_LSB);
 		reg |= ((n_tx - 1) & CQSPI_REG_CMDCTRL_WR_BYTES_MASK)
@@ -437,73 +443,46 @@ static int cqspi_command_write(struct spi_nor *nor, const u8 opcode,
 			writel(data, reg_base + CQSPI_REG_CMDWRITEDATAUPPER);
 		}
 	}
-	ret = cqspi_exec_flash_cmd(cqspi, reg);
-	return ret;
-}
-
-static int cqspi_command_write_addr(struct spi_nor *nor,
-				    const u8 opcode, const unsigned int addr)
-{
-	struct cqspi_flash_pdata *f_pdata = nor->priv;
-	struct cqspi_st *cqspi = f_pdata->cqspi;
-	void __iomem *reg_base = cqspi->iobase;
-	unsigned int reg;
-
-	reg = opcode << CQSPI_REG_CMDCTRL_OPCODE_LSB;
-	reg |= (0x1 << CQSPI_REG_CMDCTRL_ADDR_EN_LSB);
-	reg |= ((nor->addr_width - 1) & CQSPI_REG_CMDCTRL_ADD_BYTES_MASK)
-		<< CQSPI_REG_CMDCTRL_ADD_BYTES_LSB;
-
-	writel(addr, reg_base + CQSPI_REG_CMDADDRESS);
 
 	return cqspi_exec_flash_cmd(cqspi, reg);
 }
 
-static int cqspi_read_setup(struct spi_nor *nor)
+static int cqspi_read_setup(struct cqspi_flash_pdata *f_pdata,
+			    const struct spi_mem_op *op)
 {
-	struct cqspi_flash_pdata *f_pdata = nor->priv;
 	struct cqspi_st *cqspi = f_pdata->cqspi;
 	void __iomem *reg_base = cqspi->iobase;
 	unsigned int dummy_clk = 0;
 	unsigned int reg;
 
-	reg = nor->read_opcode << CQSPI_REG_RD_INSTR_OPCODE_LSB;
-	reg |= cqspi_calc_rdreg(nor);
+	reg = op->cmd.opcode << CQSPI_REG_RD_INSTR_OPCODE_LSB;
+	reg |= cqspi_calc_rdreg(f_pdata);
 
 	/* Setup dummy clock cycles */
-	dummy_clk = nor->read_dummy;
+	dummy_clk = op->dummy.nbytes * 8;
 	if (dummy_clk > CQSPI_DUMMY_CLKS_MAX)
 		dummy_clk = CQSPI_DUMMY_CLKS_MAX;
 
-	if (dummy_clk / 8) {
-		reg |= (1 << CQSPI_REG_RD_INSTR_MODE_EN_LSB);
-		/* Set mode bits high to ensure chip doesn't enter XIP */
-		writel(0xFF, reg_base + CQSPI_REG_MODE_BIT);
-
-		/* Need to subtract the mode byte (8 clocks). */
-		if (f_pdata->inst_width != CQSPI_INST_TYPE_QUAD)
-			dummy_clk -= 8;
-
-		if (dummy_clk)
-			reg |= (dummy_clk & CQSPI_REG_RD_INSTR_DUMMY_MASK)
-			       << CQSPI_REG_RD_INSTR_DUMMY_LSB;
-	}
+	if (dummy_clk)
+		reg |= (dummy_clk & CQSPI_REG_RD_INSTR_DUMMY_MASK)
+		       << CQSPI_REG_RD_INSTR_DUMMY_LSB;
 
 	writel(reg, reg_base + CQSPI_REG_RD_INSTR);
 
 	/* Set address width */
 	reg = readl(reg_base + CQSPI_REG_SIZE);
 	reg &= ~CQSPI_REG_SIZE_ADDRESS_MASK;
-	reg |= (nor->addr_width - 1);
+	reg |= (op->addr.nbytes - 1);
 	writel(reg, reg_base + CQSPI_REG_SIZE);
 	return 0;
 }
 
-static int cqspi_indirect_read_execute(struct spi_nor *nor, u8 *rxbuf,
-				       loff_t from_addr, const size_t n_rx)
+static int cqspi_indirect_read_execute(struct cqspi_flash_pdata *f_pdata,
+				       u8 *rxbuf, loff_t from_addr,
+				       const size_t n_rx)
 {
-	struct cqspi_flash_pdata *f_pdata = nor->priv;
 	struct cqspi_st *cqspi = f_pdata->cqspi;
+	struct device *dev = &cqspi->pdev->dev;
 	void __iomem *reg_base = cqspi->iobase;
 	void __iomem *ahb_base = cqspi->ahb_base;
 	unsigned int remaining = n_rx;
@@ -526,13 +505,13 @@ static int cqspi_indirect_read_execute(struct spi_nor *nor, u8 *rxbuf,
 
 	while (remaining > 0) {
 		if (!wait_for_completion_timeout(&cqspi->transfer_complete,
-				msecs_to_jiffies(CQSPI_READ_TIMEOUT_MS)))
+						 msecs_to_jiffies(CQSPI_READ_TIMEOUT_MS)))
 			ret = -ETIMEDOUT;
 
 		bytes_to_read = cqspi_get_rd_sram_level(cqspi);
 
 		if (ret && bytes_to_read == 0) {
-			dev_err(nor->dev, "Indirect read timeout, no bytes\n");
+			dev_err(dev, "Indirect read timeout, no bytes\n");
 			goto failrd;
 		}
 
@@ -568,8 +547,7 @@ static int cqspi_indirect_read_execute(struct spi_nor *nor, u8 *rxbuf,
 	ret = cqspi_wait_for_bit(reg_base + CQSPI_REG_INDIRECTRD,
 				 CQSPI_REG_INDIRECTRD_DONE_MASK, 0);
 	if (ret) {
-		dev_err(nor->dev,
-			"Indirect read completion error (%i)\n", ret);
+		dev_err(dev, "Indirect read completion error (%i)\n", ret);
 		goto failrd;
 	}
 
@@ -591,32 +569,32 @@ static int cqspi_indirect_read_execute(struct spi_nor *nor, u8 *rxbuf,
 	return ret;
 }
 
-static int cqspi_write_setup(struct spi_nor *nor)
+static int cqspi_write_setup(struct cqspi_flash_pdata *f_pdata,
+			     const struct spi_mem_op *op)
 {
 	unsigned int reg;
-	struct cqspi_flash_pdata *f_pdata = nor->priv;
 	struct cqspi_st *cqspi = f_pdata->cqspi;
 	void __iomem *reg_base = cqspi->iobase;
 
 	/* Set opcode. */
-	reg = nor->program_opcode << CQSPI_REG_WR_INSTR_OPCODE_LSB;
+	reg = op->cmd.opcode << CQSPI_REG_WR_INSTR_OPCODE_LSB;
 	writel(reg, reg_base + CQSPI_REG_WR_INSTR);
-	reg = cqspi_calc_rdreg(nor);
+	reg = cqspi_calc_rdreg(f_pdata);
 	writel(reg, reg_base + CQSPI_REG_RD_INSTR);
 
 	reg = readl(reg_base + CQSPI_REG_SIZE);
 	reg &= ~CQSPI_REG_SIZE_ADDRESS_MASK;
-	reg |= (nor->addr_width - 1);
+	reg |= (op->addr.nbytes - 1);
 	writel(reg, reg_base + CQSPI_REG_SIZE);
 	return 0;
 }
 
-static int cqspi_indirect_write_execute(struct spi_nor *nor, loff_t to_addr,
-					const u8 *txbuf, const size_t n_tx)
+static int cqspi_indirect_write_execute(struct cqspi_flash_pdata *f_pdata,
+					loff_t to_addr, const u8 *txbuf,
+					const size_t n_tx)
 {
-	const unsigned int page_size = nor->page_size;
-	struct cqspi_flash_pdata *f_pdata = nor->priv;
 	struct cqspi_st *cqspi = f_pdata->cqspi;
+	struct device *dev = &cqspi->pdev->dev;
 	void __iomem *reg_base = cqspi->iobase;
 	unsigned int remaining = n_tx;
 	unsigned int write_bytes;
@@ -646,7 +624,7 @@ static int cqspi_indirect_write_execute(struct spi_nor *nor, loff_t to_addr,
 	while (remaining > 0) {
 		size_t write_words, mod_bytes;
 
-		write_bytes = remaining > page_size ? page_size : remaining;
+		write_bytes = remaining;
 		write_words = write_bytes / 4;
 		mod_bytes = write_bytes % 4;
 		/* Write 4 bytes at a time then single bytes. */
@@ -663,8 +641,8 @@ static int cqspi_indirect_write_execute(struct spi_nor *nor, loff_t to_addr,
 		}
 
 		if (!wait_for_completion_timeout(&cqspi->transfer_complete,
-					msecs_to_jiffies(CQSPI_TIMEOUT_MS))) {
-			dev_err(nor->dev, "Indirect write timeout\n");
+						 msecs_to_jiffies(CQSPI_TIMEOUT_MS))) {
+			dev_err(dev, "Indirect write timeout\n");
 			ret = -ETIMEDOUT;
 			goto failwr;
 		}
@@ -679,8 +657,7 @@ static int cqspi_indirect_write_execute(struct spi_nor *nor, loff_t to_addr,
 	ret = cqspi_wait_for_bit(reg_base + CQSPI_REG_INDIRECTWR,
 				 CQSPI_REG_INDIRECTWR_DONE_MASK, 0);
 	if (ret) {
-		dev_err(nor->dev,
-			"Indirect write completion error (%i)\n", ret);
+		dev_err(dev, "Indirect write completion error (%i)\n", ret);
 		goto failwr;
 	}
 
@@ -704,9 +681,8 @@ static int cqspi_indirect_write_execute(struct spi_nor *nor, loff_t to_addr,
 	return ret;
 }
 
-static void cqspi_chipselect(struct spi_nor *nor)
+static void cqspi_chipselect(struct cqspi_flash_pdata *f_pdata)
 {
-	struct cqspi_flash_pdata *f_pdata = nor->priv;
 	struct cqspi_st *cqspi = f_pdata->cqspi;
 	void __iomem *reg_base = cqspi->iobase;
 	unsigned int chip_select = f_pdata->cs;
@@ -745,9 +721,8 @@ static unsigned int calculate_ticks_for_ns(const unsigned int ref_clk_hz,
 	return ticks;
 }
 
-static void cqspi_delay(struct spi_nor *nor)
+static void cqspi_delay(struct cqspi_flash_pdata *f_pdata)
 {
-	struct cqspi_flash_pdata *f_pdata = nor->priv;
 	struct cqspi_st *cqspi = f_pdata->cqspi;
 	void __iomem *iobase = cqspi->iobase;
 	const unsigned int ref_clk_hz = cqspi->master_ref_clk_hz;
@@ -831,11 +806,10 @@ static void cqspi_controller_enable(struct cqspi_st *cqspi, bool enable)
 	writel(reg, reg_base + CQSPI_REG_CONFIG);
 }
 
-static void cqspi_configure(struct spi_nor *nor)
+static void cqspi_configure(struct cqspi_flash_pdata *f_pdata,
+			    unsigned long sclk)
 {
-	struct cqspi_flash_pdata *f_pdata = nor->priv;
 	struct cqspi_st *cqspi = f_pdata->cqspi;
-	const unsigned int sclk = f_pdata->clk_rate;
 	int switch_cs = (cqspi->current_cs != f_pdata->cs);
 	int switch_ck = (cqspi->sclk != sclk);
 
@@ -845,14 +819,14 @@ static void cqspi_configure(struct spi_nor *nor)
 	/* Switch chip select. */
 	if (switch_cs) {
 		cqspi->current_cs = f_pdata->cs;
-		cqspi_chipselect(nor);
+		cqspi_chipselect(f_pdata);
 	}
 
 	/* Setup baudrate divisor and delays */
 	if (switch_ck) {
 		cqspi->sclk = sclk;
 		cqspi_config_baudrate_div(cqspi);
-		cqspi_delay(nor);
+		cqspi_delay(f_pdata);
 		cqspi_readdata_capture(cqspi, !cqspi->rclk_en,
 				       f_pdata->read_delay);
 	}
@@ -861,26 +835,25 @@ static void cqspi_configure(struct spi_nor *nor)
 		cqspi_controller_enable(cqspi, 1);
 }
 
-static int cqspi_set_protocol(struct spi_nor *nor, const int read)
+static int cqspi_set_protocol(struct cqspi_flash_pdata *f_pdata,
+			      const struct spi_mem_op *op)
 {
-	struct cqspi_flash_pdata *f_pdata = nor->priv;
-
 	f_pdata->inst_width = CQSPI_INST_TYPE_SINGLE;
 	f_pdata->addr_width = CQSPI_INST_TYPE_SINGLE;
 	f_pdata->data_width = CQSPI_INST_TYPE_SINGLE;
 
-	if (read) {
-		switch (nor->read_proto) {
-		case SNOR_PROTO_1_1_1:
+	if (op->data.dir == SPI_MEM_DATA_IN) {
+		switch (op->data.buswidth) {
+		case 1:
 			f_pdata->data_width = CQSPI_INST_TYPE_SINGLE;
 			break;
-		case SNOR_PROTO_1_1_2:
+		case 2:
 			f_pdata->data_width = CQSPI_INST_TYPE_DUAL;
 			break;
-		case SNOR_PROTO_1_1_4:
+		case 4:
 			f_pdata->data_width = CQSPI_INST_TYPE_QUAD;
 			break;
-		case SNOR_PROTO_1_1_8:
+		case 8:
 			f_pdata->data_width = CQSPI_INST_TYPE_OCTAL;
 			break;
 		default:
@@ -888,36 +861,32 @@ static int cqspi_set_protocol(struct spi_nor *nor, const int read)
 		}
 	}
 
-	cqspi_configure(nor);
-
 	return 0;
 }
 
-static ssize_t cqspi_write(struct spi_nor *nor, loff_t to,
-			   size_t len, const u_char *buf)
+static ssize_t cqspi_write(struct cqspi_flash_pdata *f_pdata,
+			   const struct spi_mem_op *op)
 {
-	struct cqspi_flash_pdata *f_pdata = nor->priv;
 	struct cqspi_st *cqspi = f_pdata->cqspi;
+	loff_t to = op->addr.val;
+	size_t len = op->data.nbytes;
+	const u_char *buf = op->data.buf.out;
 	int ret;
 
-	ret = cqspi_set_protocol(nor, 0);
+	ret = cqspi_set_protocol(f_pdata, op);
 	if (ret)
 		return ret;
 
-	ret = cqspi_write_setup(nor);
+	ret = cqspi_write_setup(f_pdata, op);
 	if (ret)
 		return ret;
 
-	if (f_pdata->use_direct_mode) {
+	if (cqspi->use_direct_mode && ((to + len) <= cqspi->ahb_size)) {
 		memcpy_toio(cqspi->ahb_base + to, buf, len);
-		ret = cqspi_wait_idle(cqspi);
-	} else {
-		ret = cqspi_indirect_write_execute(nor, to, buf, len);
+		return cqspi_wait_idle(cqspi);
 	}
-	if (ret)
-		return ret;
 
-	return len;
+	return cqspi_indirect_write_execute(f_pdata, to, buf, len);
 }
 
 static void cqspi_rx_dma_callback(void *param)
@@ -927,11 +896,11 @@ static void cqspi_rx_dma_callback(void *param)
 	complete(&cqspi->rx_dma_complete);
 }
 
-static int cqspi_direct_read_execute(struct spi_nor *nor, u_char *buf,
-				     loff_t from, size_t len)
+static int cqspi_direct_read_execute(struct cqspi_flash_pdata *f_pdata,
+				     u_char *buf, loff_t from, size_t len)
 {
-	struct cqspi_flash_pdata *f_pdata = nor->priv;
 	struct cqspi_st *cqspi = f_pdata->cqspi;
+	struct device *dev = &cqspi->pdev->dev;
 	enum dma_ctrl_flags flags = DMA_CTRL_ACK | DMA_PREP_INTERRUPT;
 	dma_addr_t dma_src = (dma_addr_t)cqspi->mmap_phys_base + from;
 	int ret = 0;
@@ -944,15 +913,15 @@ static int cqspi_direct_read_execute(struct spi_nor *nor, u_char *buf,
 		return 0;
 	}
 
-	dma_dst = dma_map_single(nor->dev, buf, len, DMA_FROM_DEVICE);
-	if (dma_mapping_error(nor->dev, dma_dst)) {
-		dev_err(nor->dev, "dma mapping failed\n");
+	dma_dst = dma_map_single(dev, buf, len, DMA_FROM_DEVICE);
+	if (dma_mapping_error(dev, dma_dst)) {
+		dev_err(dev, "dma mapping failed\n");
 		return -ENOMEM;
 	}
 	tx = dmaengine_prep_dma_memcpy(cqspi->rx_chan, dma_dst, dma_src,
 				       len, flags);
 	if (!tx) {
-		dev_err(nor->dev, "device_prep_dma_memcpy error\n");
+		dev_err(dev, "device_prep_dma_memcpy error\n");
 		ret = -EIO;
 		goto err_unmap;
 	}
@@ -964,7 +933,7 @@ static int cqspi_direct_read_execute(struct spi_nor *nor, u_char *buf,
 
 	ret = dma_submit_error(cookie);
 	if (ret) {
-		dev_err(nor->dev, "dma_submit_error %d\n", cookie);
+		dev_err(dev, "dma_submit_error %d\n", cookie);
 		ret = -EIO;
 		goto err_unmap;
 	}
@@ -973,94 +942,68 @@ static int cqspi_direct_read_execute(struct spi_nor *nor, u_char *buf,
 	if (!wait_for_completion_timeout(&cqspi->rx_dma_complete,
 					 msecs_to_jiffies(len))) {
 		dmaengine_terminate_sync(cqspi->rx_chan);
-		dev_err(nor->dev, "DMA wait_for_completion_timeout\n");
+		dev_err(dev, "DMA wait_for_completion_timeout\n");
 		ret = -ETIMEDOUT;
 		goto err_unmap;
 	}
 
 err_unmap:
-	dma_unmap_single(nor->dev, dma_dst, len, DMA_FROM_DEVICE);
+	dma_unmap_single(dev, dma_dst, len, DMA_FROM_DEVICE);
 
 	return ret;
 }
 
-static ssize_t cqspi_read(struct spi_nor *nor, loff_t from,
-			  size_t len, u_char *buf)
+static ssize_t cqspi_read(struct cqspi_flash_pdata *f_pdata,
+			  const struct spi_mem_op *op)
 {
-	struct cqspi_flash_pdata *f_pdata = nor->priv;
+	struct cqspi_st *cqspi = f_pdata->cqspi;
+	loff_t from = op->addr.val;
+	size_t len = op->data.nbytes;
+	u_char *buf = op->data.buf.in;
 	int ret;
 
-	ret = cqspi_set_protocol(nor, 1);
+	ret = cqspi_set_protocol(f_pdata, op);
 	if (ret)
 		return ret;
 
-	ret = cqspi_read_setup(nor);
+	ret = cqspi_read_setup(f_pdata, op);
 	if (ret)
 		return ret;
 
-	if (f_pdata->use_direct_mode)
-		ret = cqspi_direct_read_execute(nor, buf, from, len);
-	else
-		ret = cqspi_indirect_read_execute(nor, buf, from, len);
-	if (ret)
-		return ret;
+	if (cqspi->use_direct_mode && ((from + len) <= cqspi->ahb_size))
+		return cqspi_direct_read_execute(f_pdata, buf, from, len);
 
-	return len;
+	return cqspi_indirect_read_execute(f_pdata, buf, from, len);
 }
 
-static int cqspi_erase(struct spi_nor *nor, loff_t offs)
+static int cqspi_mem_process(struct spi_mem *mem, const struct spi_mem_op *op)
 {
-	int ret;
-
-	ret = cqspi_set_protocol(nor, 0);
-	if (ret)
-		return ret;
-
-	/* Set up command buffer. */
-	ret = cqspi_command_write_addr(nor, nor->erase_opcode, offs);
-	if (ret)
-		return ret;
-
-	return 0;
-}
-
-static int cqspi_prep(struct spi_nor *nor)
-{
-	struct cqspi_flash_pdata *f_pdata = nor->priv;
-	struct cqspi_st *cqspi = f_pdata->cqspi;
-
-	mutex_lock(&cqspi->bus_mutex);
-
-	return 0;
-}
+	struct cqspi_st *cqspi = spi_master_get_devdata(mem->spi->master);
+	struct cqspi_flash_pdata *f_pdata;
 
-static void cqspi_unprep(struct spi_nor *nor)
-{
-	struct cqspi_flash_pdata *f_pdata = nor->priv;
-	struct cqspi_st *cqspi = f_pdata->cqspi;
+	f_pdata = &cqspi->f_pdata[mem->spi->chip_select];
+	cqspi_configure(f_pdata, mem->spi->max_speed_hz);
 
-	mutex_unlock(&cqspi->bus_mutex);
-}
+	if (op->data.dir == SPI_MEM_DATA_IN && op->data.buf.in) {
+		if (!op->addr.nbytes)
+			return cqspi_command_read(f_pdata, op);
 
-static int cqspi_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf, size_t len)
-{
-	int ret;
+		return cqspi_read(f_pdata, op);
+	}
 
-	ret = cqspi_set_protocol(nor, 0);
-	if (!ret)
-		ret = cqspi_command_read(nor, opcode, buf, len);
+	if (!op->addr.nbytes || !op->data.buf.out)
+		return cqspi_command_write(f_pdata, op);
 
-	return ret;
+	return cqspi_write(f_pdata, op);
 }
 
-static int cqspi_write_reg(struct spi_nor *nor, u8 opcode, const u8 *buf,
-			   size_t len)
+static int cqspi_exec_mem_op(struct spi_mem *mem, const struct spi_mem_op *op)
 {
 	int ret;
 
-	ret = cqspi_set_protocol(nor, 0);
-	if (!ret)
-		ret = cqspi_command_write(nor, opcode, buf, len);
+	ret = cqspi_mem_process(mem, op);
+	if (ret)
+		dev_err(&mem->spi->dev, "operation failed with %d\n", ret);
 
 	return ret;
 }
@@ -1102,26 +1045,26 @@ static int cqspi_of_get_flash_pdata(struct platform_device *pdev,
 	return 0;
 }
 
-static int cqspi_of_get_pdata(struct platform_device *pdev)
+static int cqspi_of_get_pdata(struct cqspi_st *cqspi)
 {
-	struct device_node *np = pdev->dev.of_node;
-	struct cqspi_st *cqspi = platform_get_drvdata(pdev);
+	struct device *dev = &cqspi->pdev->dev;
+	struct device_node *np = dev->of_node;
 
 	cqspi->is_decoded_cs = of_property_read_bool(np, "cdns,is-decoded-cs");
 
 	if (of_property_read_u32(np, "cdns,fifo-depth", &cqspi->fifo_depth)) {
-		dev_err(&pdev->dev, "couldn't determine fifo-depth\n");
+		dev_err(dev, "couldn't determine fifo-depth\n");
 		return -ENXIO;
 	}
 
 	if (of_property_read_u32(np, "cdns,fifo-width", &cqspi->fifo_width)) {
-		dev_err(&pdev->dev, "couldn't determine fifo-width\n");
+		dev_err(dev, "couldn't determine fifo-width\n");
 		return -ENXIO;
 	}
 
 	if (of_property_read_u32(np, "cdns,trigger-address",
 				 &cqspi->trigger_address)) {
-		dev_err(&pdev->dev, "couldn't determine trigger-address\n");
+		dev_err(dev, "couldn't determine trigger-address\n");
 		return -ENXIO;
 	}
 
@@ -1185,47 +1128,30 @@ static int cqspi_request_mmap_dma(struct cqspi_st *cqspi)
 	return 0;
 }
 
-static const struct spi_nor_controller_ops cqspi_controller_ops = {
-	.prepare = cqspi_prep,
-	.unprepare = cqspi_unprep,
-	.read_reg = cqspi_read_reg,
-	.write_reg = cqspi_write_reg,
-	.read = cqspi_read,
-	.write = cqspi_write,
-	.erase = cqspi_erase,
+static const struct spi_controller_mem_ops cqspi_mem_ops = {
+	.exec_op = cqspi_exec_mem_op,
 };
 
-static int cqspi_setup_flash(struct cqspi_st *cqspi, struct device_node *np)
+static int cqspi_setup_flash(struct cqspi_st *cqspi)
 {
 	struct platform_device *pdev = cqspi->pdev;
 	struct device *dev = &pdev->dev;
-	const struct cqspi_driver_platdata *ddata;
-	struct spi_nor_hwcaps hwcaps;
+	struct device_node *np = dev->of_node;
 	struct cqspi_flash_pdata *f_pdata;
-	struct spi_nor *nor;
-	struct mtd_info *mtd;
 	unsigned int cs;
-	int i, ret;
-
-	ddata = of_device_get_match_data(dev);
-	if (!ddata) {
-		dev_err(dev, "Couldn't find driver data\n");
-		return -EINVAL;
-	}
-	hwcaps.mask = ddata->hwcaps_mask;
+	int ret;
 
 	/* Get flash device data */
 	for_each_available_child_of_node(dev->of_node, np) {
 		ret = of_property_read_u32(np, "reg", &cs);
 		if (ret) {
 			dev_err(dev, "Couldn't determine chip select.\n");
-			goto err;
+			return ret;
 		}
 
 		if (cs >= CQSPI_MAX_CHIPSELECT) {
-			ret = -EINVAL;
 			dev_err(dev, "Chip select %d out of range.\n", cs);
-			goto err;
+			return -EINVAL;
 		}
 
 		f_pdata = &cqspi->f_pdata[cs];
@@ -1234,90 +1160,51 @@ static int cqspi_setup_flash(struct cqspi_st *cqspi, struct device_node *np)
 
 		ret = cqspi_of_get_flash_pdata(pdev, f_pdata, np);
 		if (ret)
-			goto err;
-
-		nor = &f_pdata->nor;
-		mtd = &nor->mtd;
-
-		mtd->priv = nor;
-
-		nor->dev = dev;
-		spi_nor_set_flash_node(nor, np);
-		nor->priv = f_pdata;
-		nor->controller_ops = &cqspi_controller_ops;
-
-		mtd->name = devm_kasprintf(dev, GFP_KERNEL, "%s.%d",
-					   dev_name(dev), cs);
-		if (!mtd->name) {
-			ret = -ENOMEM;
-			goto err;
-		}
-
-		ret = spi_nor_scan(nor, NULL, &hwcaps);
-		if (ret)
-			goto err;
-
-		ret = mtd_device_register(mtd, NULL, 0);
-		if (ret)
-			goto err;
-
-		f_pdata->registered = true;
-
-		if (mtd->size <= cqspi->ahb_size &&
-		    !(ddata->quirks & CQSPI_DISABLE_DAC_MODE)) {
-			f_pdata->use_direct_mode = true;
-			dev_dbg(nor->dev, "using direct mode for %s\n",
-				mtd->name);
-
-			if (!cqspi->rx_chan) {
-				ret = cqspi_request_mmap_dma(cqspi);
-				if (ret == -EPROBE_DEFER)
-					goto err;
-			}
-		}
+			return ret;
 	}
 
 	return 0;
-
-err:
-	for (i = 0; i < CQSPI_MAX_CHIPSELECT; i++)
-		if (cqspi->f_pdata[i].registered)
-			mtd_device_unregister(&cqspi->f_pdata[i].nor.mtd);
-	return ret;
 }
 
 static int cqspi_probe(struct platform_device *pdev)
 {
-	struct device_node *np = pdev->dev.of_node;
+	const struct cqspi_driver_platdata *ddata;
+	struct reset_control *rstc, *rstc_ocp;
 	struct device *dev = &pdev->dev;
+	struct spi_master *master;
+	struct resource *res_ahb;
 	struct cqspi_st *cqspi;
 	struct resource *res;
-	struct resource *res_ahb;
-	struct reset_control *rstc, *rstc_ocp;
-	const struct cqspi_driver_platdata *ddata;
 	int ret;
 	int irq;
 
-	cqspi = devm_kzalloc(dev, sizeof(*cqspi), GFP_KERNEL);
-	if (!cqspi)
+	master = spi_alloc_master(&pdev->dev, sizeof(*cqspi));
+	if (!master) {
+		dev_err(&pdev->dev, "spi_alloc_master failed\n");
 		return -ENOMEM;
+	}
+	master->mode_bits = SPI_RX_QUAD | SPI_RX_DUAL;
+	master->mem_ops = &cqspi_mem_ops;
+	master->dev.of_node = pdev->dev.of_node;
+
+	cqspi = spi_master_get_devdata(master);
 
-	mutex_init(&cqspi->bus_mutex);
 	cqspi->pdev = pdev;
-	platform_set_drvdata(pdev, cqspi);
 
 	/* Obtain configuration from OF. */
-	ret = cqspi_of_get_pdata(pdev);
+	ret = cqspi_of_get_pdata(cqspi);
 	if (ret) {
 		dev_err(dev, "Cannot get mandatory OF data.\n");
-		return -ENODEV;
+		ret = -ENODEV;
+		goto probe_master_put;
 	}
 
 	/* Obtain QSPI clock. */
 	cqspi->clk = devm_clk_get(dev, NULL);
 	if (IS_ERR(cqspi->clk)) {
 		dev_err(dev, "Cannot claim QSPI clock.\n");
-		return PTR_ERR(cqspi->clk);
+		ret = PTR_ERR(cqspi->clk);
+		goto probe_master_put;
 	}
 
 	/* Obtain and remap controller address. */
@@ -1325,7 +1212,8 @@ static int cqspi_probe(struct platform_device *pdev)
 	cqspi->iobase = devm_ioremap_resource(dev, res);
 	if (IS_ERR(cqspi->iobase)) {
 		dev_err(dev, "Cannot remap controller address.\n");
-		return PTR_ERR(cqspi->iobase);
+		ret = PTR_ERR(cqspi->iobase);
+		goto probe_master_put;
 	}
 
 	/* Obtain and remap AHB address. */
@@ -1333,7 +1221,8 @@ static int cqspi_probe(struct platform_device *pdev)
 	cqspi->ahb_base = devm_ioremap_resource(dev, res_ahb);
 	if (IS_ERR(cqspi->ahb_base)) {
 		dev_err(dev, "Cannot remap AHB address.\n");
-		return PTR_ERR(cqspi->ahb_base);
+		ret = PTR_ERR(cqspi->ahb_base);
+		goto probe_master_put;
 	}
 	cqspi->mmap_phys_base = (dma_addr_t)res_ahb->start;
 	cqspi->ahb_size = resource_size(res_ahb);
@@ -1342,14 +1231,16 @@ static int cqspi_probe(struct platform_device *pdev)
 
 	/* Obtain IRQ line. */
 	irq = platform_get_irq(pdev, 0);
-	if (irq < 0)
-		return -ENXIO;
+	if (irq < 0) {
+		ret = -ENXIO;
+		goto probe_master_put;
+	}
 
 	pm_runtime_enable(dev);
 	ret = pm_runtime_get_sync(dev);
 	if (ret < 0) {
 		pm_runtime_put_noidle(dev);
-		return ret;
+		goto probe_master_put;
 	}
 
 	ret = clk_prepare_enable(cqspi->clk);
@@ -1379,9 +1270,15 @@ static int cqspi_probe(struct platform_device *pdev)
 
 	cqspi->master_ref_clk_hz = clk_get_rate(cqspi->clk);
 	ddata  = of_device_get_match_data(dev);
-	if (ddata && (ddata->quirks & CQSPI_NEEDS_WR_DELAY))
-		cqspi->wr_delay = 5 * DIV_ROUND_UP(NSEC_PER_SEC,
-						   cqspi->master_ref_clk_hz);
+	if (ddata) {
+		if (ddata->quirks & CQSPI_NEEDS_WR_DELAY)
+			cqspi->wr_delay = 5 * DIV_ROUND_UP(NSEC_PER_SEC,
+						cqspi->master_ref_clk_hz);
+		if (ddata->hwcaps_mask & CQSPI_SUPPORTS_OCTAL)
+			master->mode_bits |= SPI_RX_OCTAL;
+		if (!(ddata->quirks & CQSPI_DISABLE_DAC_MODE))
+			cqspi->use_direct_mode = true;
+	}
 
 	ret = devm_request_irq(dev, irq, cqspi_irq_handler, 0,
 			       pdev->name, cqspi);
@@ -1395,13 +1292,25 @@ static int cqspi_probe(struct platform_device *pdev)
 	cqspi->current_cs = -1;
 	cqspi->sclk = 0;
 
-	ret = cqspi_setup_flash(cqspi, np);
+	ret = cqspi_setup_flash(cqspi);
 	if (ret) {
-		dev_err(dev, "Cadence QSPI NOR probe failed %d\n", ret);
+		dev_err(dev, "failed to setup flash parameters %d\n", ret);
 		goto probe_setup_failed;
 	}
 
-	return ret;
+	if (cqspi->use_direct_mode) {
+		ret = cqspi_request_mmap_dma(cqspi);
+		if (ret == -EPROBE_DEFER)
+			goto probe_setup_failed;
+	}
+
+	ret = devm_spi_register_master(dev, master);
+	if (ret) {
+		dev_err(&pdev->dev, "failed to register SPI ctlr %d\n", ret);
+		goto probe_setup_failed;
+	}
+
+	return 0;
 probe_setup_failed:
 	cqspi_controller_enable(cqspi, 0);
 probe_reset_failed:
@@ -1409,17 +1318,14 @@ static int cqspi_probe(struct platform_device *pdev)
 probe_clk_failed:
 	pm_runtime_put_sync(dev);
 	pm_runtime_disable(dev);
+probe_master_put:
+	spi_master_put(master);
 	return ret;
 }
 
 static int cqspi_remove(struct platform_device *pdev)
 {
 	struct cqspi_st *cqspi = platform_get_drvdata(pdev);
-	int i;
-
-	for (i = 0; i < CQSPI_MAX_CHIPSELECT; i++)
-		if (cqspi->f_pdata[i].registered)
-			mtd_device_unregister(&cqspi->f_pdata[i].nor.mtd);
 
 	cqspi_controller_enable(cqspi, 0);
 
@@ -1462,17 +1368,15 @@ static const struct dev_pm_ops cqspi__dev_pm_ops = {
 #endif
 
 static const struct cqspi_driver_platdata cdns_qspi = {
-	.hwcaps_mask = CQSPI_BASE_HWCAPS_MASK,
 	.quirks = CQSPI_DISABLE_DAC_MODE,
 };
 
 static const struct cqspi_driver_platdata k2g_qspi = {
-	.hwcaps_mask = CQSPI_BASE_HWCAPS_MASK,
 	.quirks = CQSPI_NEEDS_WR_DELAY,
 };
 
 static const struct cqspi_driver_platdata am654_ospi = {
-	.hwcaps_mask = CQSPI_BASE_HWCAPS_MASK | SNOR_HWCAPS_READ_1_1_8,
+	.hwcaps_mask = CQSPI_SUPPORTS_OCTAL,
 	.quirks = CQSPI_NEEDS_WR_DELAY,
 };
 
@@ -1511,3 +1415,5 @@ MODULE_LICENSE("GPL v2");
 MODULE_ALIAS("platform:" CQSPI_NAME);
 MODULE_AUTHOR("Ley Foon Tan <lftan@altera.com>");
 MODULE_AUTHOR("Graham Moore <grmoore@opensource.altera.com>");
+MODULE_AUTHOR("Vadivel Murugan R <vadivel.muruganx.ramuthevar@intel.com>");
+MODULE_AUTHOR("Vignesh Raghavendra <vigneshr@ti.com>");
-- 
2.26.2


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
