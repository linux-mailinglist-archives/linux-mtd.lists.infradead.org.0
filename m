Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D431B2DA2
	for <lists+linux-mtd@lfdr.de>; Tue, 21 Apr 2020 19:00:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WBEeex5Wk92Ze67QBuOFLJoVxk19fKYSTI6yL3wOj9c=; b=AfK16G6Y0dqfe7
	116uLxYYDDLhSRfPJAVKsS9evIEmdJ4ga7JYdKVoy7Tz2ojxNUvOgaQx4c0x0UiXgLeHkxqcyb7/e
	B1na3+HwI669tYu3bLE0SldAd8VPKHGH8NCXvkuIvRAEu+MSfOlZTopjgGpYTZe+yQEme4mtBM1NV
	HH2FsUA71+Qtj4jzWFvATYNtMGxaBtSmq+CrdiMVqbG2rDo8pXU89BK68Y48/RxWAAWwL5NnHos+x
	YSdPumUnyrZzd3li8YUHw2lf4HOIif/vkwgSEwyomLBRbGbXIO4ylf68sl1FmTGG4tsvgE+tz1yk1
	na3zx3l1JnYxbwoK8mRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQwGS-0003nx-IQ; Tue, 21 Apr 2020 17:00:52 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQwFU-0008OP-F4
 for linux-mtd@lists.infradead.org; Tue, 21 Apr 2020 16:59:56 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 39092FF808;
 Tue, 21 Apr 2020 16:59:50 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH 2/2] mtd: rawnand: Support Arasan NAND controller
Date: Tue, 21 Apr 2020 18:59:46 +0200
Message-Id: <20200421165946.21471-3-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200421165946.21471-1-miquel.raynal@bootlin.com>
References: <20200421165946.21471-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_095952_790848_E65F262F 
X-CRM114-Status: GOOD (  20.81  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
Cc: Michal Simek <monstr@monstr.eu>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Add an Arasan NAND controller driver.

This work is based on contributions from Naga Sureshkumar Relli.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/Kconfig                  |    7 +
 drivers/mtd/nand/raw/Makefile                 |    1 +
 drivers/mtd/nand/raw/arasan-nand-controller.c | 1092 +++++++++++++++++
 3 files changed, 1100 insertions(+)
 create mode 100644 drivers/mtd/nand/raw/arasan-nand-controller.c

diff --git a/drivers/mtd/nand/raw/Kconfig b/drivers/mtd/nand/raw/Kconfig
index a80a46bb5b8b..579474baa75d 100644
--- a/drivers/mtd/nand/raw/Kconfig
+++ b/drivers/mtd/nand/raw/Kconfig
@@ -457,6 +457,13 @@ config MTD_NAND_CADENCE
 	  Enable the driver for NAND flash on platforms using a Cadence NAND
 	  controller.
 
+config MTD_NAND_ARASAN
+	tristate "Support for Arasan NAND flash controller"
+	depends on HAS_IOMEM && HAS_DMA
+	help
+	  Enables the driver for the Arasan NAND flash controller on
+	  Zynq Ultrascale+ MPSoC.
+
 comment "Misc"
 
 config MTD_SM_COMMON
diff --git a/drivers/mtd/nand/raw/Makefile b/drivers/mtd/nand/raw/Makefile
index 2d136b158fb7..6f80a205e940 100644
--- a/drivers/mtd/nand/raw/Makefile
+++ b/drivers/mtd/nand/raw/Makefile
@@ -58,6 +58,7 @@ obj-$(CONFIG_MTD_NAND_TEGRA)		+= tegra_nand.o
 obj-$(CONFIG_MTD_NAND_STM32_FMC2)	+= stm32_fmc2_nand.o
 obj-$(CONFIG_MTD_NAND_MESON)		+= meson_nand.o
 obj-$(CONFIG_MTD_NAND_CADENCE)		+= cadence-nand-controller.o
+obj-$(CONFIG_MTD_NAND_ARASAN)		+= arasan-nand-controller.o
 
 nand-objs := nand_base.o nand_legacy.o nand_bbt.o nand_timings.o nand_ids.o
 nand-objs += nand_onfi.o
diff --git a/drivers/mtd/nand/raw/arasan-nand-controller.c b/drivers/mtd/nand/raw/arasan-nand-controller.c
new file mode 100644
index 000000000000..aa0146003b7c
--- /dev/null
+++ b/drivers/mtd/nand/raw/arasan-nand-controller.c
@@ -0,0 +1,1092 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Arasan NAND Flash Controller Driver
+ *
+ * Copyright (C) 2014 - 2020 Xilinx, Inc.
+ * Author:
+ *   Miquel Raynal <miquel.raynal@bootlin.com>
+ * Original work (fully rewritten):
+ *   Punnaiah Choudary Kalluri <punnaia@xilinx.com>
+ *   Naga Sureshkumar Relli <nagasure@xilinx.com>
+ */
+
+#include <linux/clk.h>
+#include <linux/delay.h>
+#include <linux/dma-mapping.h>
+#include <linux/interrupt.h>
+#include <linux/iopoll.h>
+#include <linux/module.h>
+#include <linux/mtd/mtd.h>
+#include <linux/mtd/nand_bch.h>
+#include <linux/mtd/partitions.h>
+#include <linux/mtd/rawnand.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/slab.h>
+
+#define PKT_REG			0x00
+#define   PKT_SIZE(x)		((x) & GENMASK(10, 0))
+#define   PKT_STEPS(x)		(((x) << 12) & GENMASK(23, 12))
+
+#define MEM_ADDR1_REG		0x04
+
+#define MEM_ADDR2_REG		0x08
+#define   ADDR2_STRENGTH(x)	(((x) << 25) & GENMASK(27, 25))
+#define   ADDR2_CS(x)		(((x) << 30) & GENMASK(31, 30))
+
+#define CMD_REG			0x0C
+#define   CMD_1(x)		(x)
+#define   CMD_2(x)		((x) << 8)
+#define   CMD_PAGE_SIZE(x)	(((x) << 23) & GENMASK(25, 23))
+#define   CMD_DMA_ENABLE	BIT(27)
+#define   CMD_NADDRS(x)		(((x) << 28) & GENMASK(30, 28))
+#define   CMD_ECC_ENABLE	BIT(31)
+
+#define PROG_REG		0x10
+#define   PROG_PGRD		BIT(0)
+#define   PROG_ERASE		BIT(2)
+#define   PROG_STATUS		BIT(3)
+#define   PROG_PGPROG		BIT(4)
+#define   PROG_RDID		BIT(6)
+#define   PROG_RDPARAM		BIT(7)
+#define   PROG_RST		BIT(8)
+#define   PROG_GET_FEATURE	BIT(9)
+#define   PROG_SET_FEATURE	BIT(10)
+
+#define INTR_STS_EN_REG		0x14
+#define INTR_SIG_EN_REG		0x18
+#define INTR_STS_REG		0x1C
+#define   WRITE_READY		BIT(0)
+#define   READ_READY		BIT(1)
+#define   XFER_COMPLETE		BIT(2)
+#define   DMA_BOUNDARY		BIT(6)
+#define   EVENT_MASK		GENMASK(7, 0)
+
+#define READY_STS_REG		0x20
+
+#define DMA_ADDR0_REG		0x50
+#define DMA_ADDR1_REG		0x24
+
+#define FLASH_STS_REG		0x28
+
+#define DATA_PORT_REG		0x30
+
+#define ECC_REG			0x34
+#define   ECC_BCH_EN		BIT(27)
+#define   ECC_SIZE_SHIFT	16
+
+#define ECC_ERR_CNT_REG		0x38
+#define   PAGE_ERR_CNT(x)	(((x) & GENMASK(16, 8)) >> 8)
+#define   PKT_ERR_CNT_MASK(x)	((x) & GENMASK(7, 0))
+
+#define DATA_INTERFACE_REG	0x6C
+#define   DIFACE_SDR_MODE(x)	((x) & GENMASK(2, 0))
+#define   DIFACE_DDR_MODE(x)	(((x) << 3) & GENMASK(5, 3))
+#define   DIFACE_SDR		0
+#define   DIFACE_NVDDR		BIT(9)
+
+#define ANFC_MAX_CS		2
+#define ANFC_DFLT_TIMEOUT_MS	1000
+#define ANFC_MAX_CHUNK_SIZE	SZ_1M
+#define ANFC_MAX_PARAM_SIZE	SZ_4K
+#define ANFC_MAX_PKT_SIZE	(SZ_2K - 1)
+#define ANFC_MAX_ADDR_CYC	5U
+
+#define ANFC_SDR_LS_CORE_CLK	100000000
+#define ANFC_SDR_HS_CORE_CLK	80000000
+
+/**
+ * struct anfc_op - Defines how to execute an operation
+ * @pkt_reg: Packet register
+ * @addr1_reg: Memory address 1 register
+ * @addr2_reg: Memory address 2 register
+ * @cmd_reg: Command register
+ * @prog_reg: Program register
+ * @rdy_timeout_ms: Timeout for waits on Ready/Busy pin
+ * @steps: Number of "packets" to read/write
+ * @len: Data transfer length
+ * @read: Data transfer direction from the controller point of view
+ */
+struct anfc_op {
+	u32 pkt_reg;
+	u32 addr1_reg;
+	u32 addr2_reg;
+	u32 cmd_reg;
+	u32 prog_reg;
+	unsigned int rdy_timeout_ms;
+	unsigned int steps;
+	unsigned int len;
+	bool read;
+	u8 *buf;
+};
+
+/**
+ * struct arasan_nand - Defines the NAND chip related information
+ * @node:		Used to store NAND chips into a list
+ * @chip:		NAND chip information structure
+ * @cs:			Chip select line
+ * @rb:			Ready-busy line
+ * @page_sz:		Register value of the page_sz field to use
+ * @clk:		Expected clock frequency to use
+ * @timing_mode:	Data interface timing mode to use
+ * @ecc_conf:		Hardware ECC configuration value
+ * @strength:		Register value of the ECC strength
+ * @raddr_cycles:	Row address cycle information
+ * @caddr_cycles:	Column address cycle information
+ */
+struct arasan_nand {
+	struct list_head node;
+	struct nand_chip chip;
+	unsigned int cs;
+	unsigned int rb;
+	unsigned int page_sz;
+	unsigned long clk;
+	u32 timing_mode;
+	u32 ecc_conf;
+	u32 strength;
+	u16 raddr_cycles;
+	u16 caddr_cycles;
+};
+
+/**
+ * struct arasan_nfc - Defines the Arasan NAND flash controller driver instance
+ * @dev:		Pointer to the device structure
+ * @base:		Remapped register area
+ * @controller_clk:		Pointer to the system clock
+ * @bus_clk:		Pointer to the flash clock.
+ * @controller:		Base controller structure
+ * @chips:		List of all NAND chips attached to the controller
+ * @assigned_cs:	Bitmask describing already assigned CS lines
+ * @cur_cs:		Currently selected chip
+ * @cur_clk:		Current clock rate
+ * @event:		Completion event for nand status events.
+ */
+struct arasan_nfc {
+	struct device *dev;
+	void __iomem *base;
+	struct clk *controller_clk;
+	struct clk *bus_clk;
+	struct nand_controller controller;
+	struct list_head chips;
+	unsigned long assigned_cs;
+	unsigned int cur_cs;
+	unsigned int cur_clk;
+	struct completion event;
+};
+
+static struct arasan_nand *to_arasan_nand(struct nand_chip *nand)
+{
+	return container_of(nand, struct arasan_nand, chip);
+}
+
+static struct arasan_nfc *to_anfc(struct nand_controller *ctrl)
+{
+	return container_of(ctrl, struct arasan_nfc, controller);
+}
+
+static void anfc_enable_int(struct arasan_nfc *nfc, u32 mask)
+{
+	mask &= EVENT_MASK;
+	writel(mask, nfc->base + INTR_SIG_EN_REG);
+}
+
+static void anfc_disable_int(struct arasan_nfc *nfc, u32 mask)
+{
+	mask &= ~EVENT_MASK;
+	mask &= EVENT_MASK;
+	writel(mask, nfc->base + INTR_SIG_EN_REG);
+}
+
+static int anfc_wait_for_event(struct arasan_nfc *nfc, unsigned int event,
+			       unsigned int timeout)
+{
+	int ret;
+
+	if (!timeout)
+		timeout = ANFC_DFLT_TIMEOUT_MS;
+
+	reinit_completion(&nfc->event);
+	anfc_enable_int(nfc, event);
+	ret = wait_for_completion_timeout(&nfc->event,
+					  msecs_to_jiffies(timeout));
+	anfc_disable_int(nfc, event);
+	if (!ret) {
+		dev_err(nfc->dev, "Timeout waiting event 0x%x\n", event);
+		return -ETIMEDOUT;
+	}
+
+	return 0;
+}
+
+static int anfc_wait_for_rb(struct arasan_nfc *nfc, struct nand_chip *chip,
+			    unsigned int timeout)
+{
+	struct arasan_nand *arasan_nand = to_arasan_nand(chip);
+	u32 val;
+	int ret;
+
+	ret = readl_relaxed_poll_timeout(nfc->base + READY_STS_REG, val,
+					 val & BIT(arasan_nand->rb),
+					 0, ANFC_DFLT_TIMEOUT_MS);
+	if (ret) {
+		dev_err(nfc->dev, "Timeout waiting for R/B 0x%x\n",
+			readl(nfc->base + READY_STS_REG));
+		return -ETIMEDOUT;
+	}
+
+	return 0;
+}
+
+static void anfc_trigger_op(struct arasan_nfc *nfc, struct anfc_op *nfc_op)
+{
+	writel(nfc_op->pkt_reg, nfc->base + PKT_REG);
+	writel(nfc_op->addr1_reg, nfc->base + MEM_ADDR1_REG);
+	writel(nfc_op->addr2_reg, nfc->base + MEM_ADDR2_REG);
+	writel(nfc_op->cmd_reg, nfc->base + CMD_REG);
+	writel(nfc_op->prog_reg, nfc->base + PROG_REG);
+}
+
+static int anfc_len_to_steps(struct nand_chip *chip, unsigned int len)
+{
+	unsigned int steps = 1, pktsize = len;
+
+	while (pktsize > ANFC_MAX_PKT_SIZE) {
+		steps *= 2;
+		pktsize = DIV_ROUND_UP(len, steps);
+	}
+
+	return steps;
+}
+
+static int anfc_read_page_hwecc(struct nand_chip *chip, u8 *buf,
+				int oob_required, int page)
+{
+	struct arasan_nand *arasan_nand = to_arasan_nand(chip);
+	struct arasan_nfc *nfc = to_anfc(chip->controller);
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	dma_addr_t paddr;
+	u32 ret;
+	struct anfc_op nfc_op = {
+		.pkt_reg =
+			PKT_SIZE(chip->ecc.size) |
+			PKT_STEPS(chip->ecc.steps),
+		.addr1_reg =
+			(page & 0xFF) << (8 * (arasan_nand->caddr_cycles)) |
+			(((page >> 8) & 0xFF) << (8 * (1 + arasan_nand->caddr_cycles))),
+		.addr2_reg =
+			((page >> 16) & 0xFF) |
+			ADDR2_STRENGTH(arasan_nand->strength) |
+			ADDR2_CS(arasan_nand->cs),
+		.cmd_reg =
+			CMD_1(NAND_CMD_READ0) |
+			CMD_2(NAND_CMD_READSTART) |
+			CMD_PAGE_SIZE(arasan_nand->page_sz) |
+			CMD_DMA_ENABLE |
+			CMD_NADDRS(arasan_nand->caddr_cycles + arasan_nand->raddr_cycles) |
+			CMD_ECC_ENABLE,
+		.prog_reg = PROG_PGRD,
+	};
+
+	paddr = dma_map_single(nfc->dev, buf, mtd->writesize, DMA_FROM_DEVICE);
+	if (dma_mapping_error(nfc->dev, paddr)) {
+		dev_err(nfc->dev, "Buffer mapping error");
+		return -EIO;
+	}
+
+	writel(paddr, nfc->base + DMA_ADDR0_REG);
+	writel((paddr >> 32), nfc->base + DMA_ADDR1_REG);
+
+	anfc_trigger_op(nfc, &nfc_op);
+	ret = anfc_wait_for_event(nfc, XFER_COMPLETE, 0);
+	dma_unmap_single(nfc->dev, paddr, mtd->writesize, DMA_FROM_DEVICE);
+	if (ret) {
+		dev_err(nfc->dev, "Error reading page %d\n", page);
+		return ret;
+	}
+
+	if (oob_required) {
+		ret = nand_change_read_column_op(chip, mtd->writesize,
+						 chip->oob_poi, mtd->oobsize,
+						 false);
+		if (ret)
+			return ret;
+	}
+
+	/* TODO: handle bitflips */
+
+	return 0;
+}
+
+static int anfc_write_page_hwecc(struct nand_chip *chip, const u8 *buf,
+				 int oob_required, int page)
+{
+	struct arasan_nand *arasan_nand = to_arasan_nand(chip);
+	struct arasan_nfc *nfc = to_anfc(chip->controller);
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	unsigned int len = mtd->writesize + (oob_required ? mtd->oobsize : 0);
+	dma_addr_t paddr;
+	u32 ret;
+	struct anfc_op nfc_op = {
+		.pkt_reg =
+			PKT_SIZE(chip->ecc.size) |
+			PKT_STEPS(chip->ecc.steps),
+		.addr1_reg =
+			(page & 0xFF) << (8 * (arasan_nand->caddr_cycles)) |
+			(((page >> 8) & 0xFF) << (8 * (1 + arasan_nand->caddr_cycles))),
+		.addr2_reg =
+			((page >> 16) & 0xFF) |
+			ADDR2_STRENGTH(arasan_nand->strength) |
+			ADDR2_CS(arasan_nand->cs),
+		.cmd_reg =
+			CMD_1(NAND_CMD_SEQIN) |
+			CMD_2(NAND_CMD_PAGEPROG) |
+			CMD_PAGE_SIZE(arasan_nand->page_sz) |
+			CMD_DMA_ENABLE |
+			CMD_NADDRS(arasan_nand->caddr_cycles + arasan_nand->raddr_cycles) |
+			CMD_ECC_ENABLE,
+		.prog_reg = PROG_PGPROG,
+	};
+
+	paddr = dma_map_single(nfc->dev, (void *)buf, len, DMA_TO_DEVICE);
+	if (dma_mapping_error(nfc->dev, paddr)) {
+		dev_err(nfc->dev, "Buffer mapping error");
+		return -EIO;
+	}
+
+	writel(paddr, nfc->base + DMA_ADDR0_REG);
+	writel((paddr >> 32), nfc->base + DMA_ADDR1_REG);
+
+	anfc_trigger_op(nfc, &nfc_op);
+	ret = anfc_wait_for_event(nfc, XFER_COMPLETE, 0);
+	dma_unmap_single(nfc->dev, paddr, len, DMA_TO_DEVICE);
+	if (ret)
+		dev_err(nfc->dev, "Error writing page %d\n", page);
+
+	return ret;
+}
+
+/* NAND framework ->exec_op() hooks and related helpers */
+static void anfc_parse_instructions(struct nand_chip *chip,
+				    const struct nand_subop *subop,
+				    struct anfc_op *nfc_op)
+{
+	struct arasan_nand *arasan_nand = to_arasan_nand(chip);
+	const struct nand_op_instr *instr = NULL;
+	bool first_cmd = true;
+	unsigned int op_id;
+	int i;
+
+	memset(nfc_op, 0, sizeof(*nfc_op));
+	nfc_op->addr2_reg = ADDR2_CS(arasan_nand->cs);
+
+	for (op_id = 0; op_id < subop->ninstrs; op_id++) {
+		unsigned int offset, naddrs, pktsize;
+		const u8 *addrs;
+		u8 *buf;
+
+		instr = &subop->instrs[op_id];
+
+		switch (instr->type) {
+		case NAND_OP_CMD_INSTR:
+			if (first_cmd)
+				nfc_op->cmd_reg |= CMD_1(instr->ctx.cmd.opcode);
+			else
+				nfc_op->cmd_reg |= CMD_2(instr->ctx.cmd.opcode);
+
+			first_cmd = false;
+			break;
+
+		case NAND_OP_ADDR_INSTR:
+			offset = nand_subop_get_addr_start_off(subop, op_id);
+			naddrs = nand_subop_get_num_addr_cyc(subop, op_id);
+			addrs = &instr->ctx.addr.addrs[offset];
+			nfc_op->cmd_reg |= CMD_NADDRS(naddrs);
+
+			for (i = 0; i < min(ANFC_MAX_ADDR_CYC, naddrs); i++) {
+				if (i < 4)
+					nfc_op->addr1_reg |= addrs[i] << i * 8;
+				else
+					nfc_op->addr2_reg |= addrs[i];
+			}
+
+			break;
+		case NAND_OP_DATA_IN_INSTR:
+			nfc_op->read = true;
+			fallthrough;
+		case NAND_OP_DATA_OUT_INSTR:
+			offset = nand_subop_get_data_start_off(subop, op_id);
+			buf = instr->ctx.data.buf.in;
+			nfc_op->buf = &buf[offset];
+			nfc_op->len = nand_subop_get_data_len(subop, op_id);
+			nfc_op->steps = anfc_len_to_steps(chip, nfc_op->len);
+			pktsize = DIV_ROUND_UP(nfc_op->len, nfc_op->steps);
+			nfc_op->pkt_reg = PKT_SIZE(round_up(pktsize, 4)) |
+					  PKT_STEPS(nfc_op->steps);
+			break;
+		case NAND_OP_WAITRDY_INSTR:
+			nfc_op->rdy_timeout_ms = instr->ctx.waitrdy.timeout_ms;
+			break;
+		}
+	}
+}
+
+static int anfc_rw_pio_op(struct arasan_nfc *nfc, struct anfc_op *nfc_op)
+{
+	unsigned int dwords = (nfc_op->len / 4) / nfc_op->steps;
+	unsigned int last_len = nfc_op->len % 4;
+	unsigned int offset, dir;
+	u8 *buf = nfc_op->buf;
+	int ret, i;
+
+	for (i = 0; i < nfc_op->steps; i++) {
+		dir = nfc_op->read ? READ_READY : WRITE_READY;
+		ret = anfc_wait_for_event(nfc, dir, 0);
+		if (ret) {
+			dev_err(nfc->dev, "PIO %s ready signal not received\n",
+				nfc_op->read ? "Read" : "Write");
+			return ret;
+		}
+
+		offset = i * (dwords * 4);
+		if (nfc_op->read)
+			ioread32_rep(nfc->base + DATA_PORT_REG, &buf[offset],
+				     dwords);
+		else
+			iowrite32_rep(nfc->base + DATA_PORT_REG, &buf[offset],
+				      dwords);
+	}
+
+	if (last_len) {
+		u32 remainder;
+
+		offset = nfc_op->len - last_len;
+
+		if (nfc_op->read) {
+			remainder = readl(nfc->base + DATA_PORT_REG);
+			memcpy(&buf[offset], &remainder, last_len);
+		} else {
+			memcpy(&remainder, &buf[offset], last_len);
+			writel(remainder, nfc->base + DATA_PORT_REG);
+		}
+	}
+
+	return anfc_wait_for_event(nfc, XFER_COMPLETE, 0);
+}
+
+static int anfc_misc_data_type_exec(struct nand_chip *chip,
+				    const struct nand_subop *subop,
+				    u32 prog_reg)
+{
+	struct arasan_nfc *nfc = to_anfc(chip->controller);
+	struct anfc_op nfc_op = {};
+	int ret;
+
+	anfc_parse_instructions(chip, subop, &nfc_op);
+	nfc_op.prog_reg = prog_reg;
+	anfc_trigger_op(nfc, &nfc_op);
+
+	if (nfc_op.rdy_timeout_ms) {
+		ret = anfc_wait_for_rb(nfc, chip, nfc_op.rdy_timeout_ms);
+		if (ret)
+			return ret;
+	}
+
+	return anfc_rw_pio_op(nfc, &nfc_op);
+}
+
+static int anfc_param_read_type_exec(struct nand_chip *chip,
+				     const struct nand_subop *subop)
+{
+	return anfc_misc_data_type_exec(chip, subop, PROG_RDPARAM);
+}
+
+static int anfc_data_read_type_exec(struct nand_chip *chip,
+				    const struct nand_subop *subop)
+{
+	return anfc_misc_data_type_exec(chip, subop, PROG_PGRD);
+}
+
+static int anfc_param_write_type_exec(struct nand_chip *chip,
+				      const struct nand_subop *subop)
+{
+	return anfc_misc_data_type_exec(chip, subop, PROG_SET_FEATURE);
+}
+
+static int anfc_data_write_type_exec(struct nand_chip *chip,
+				     const struct nand_subop *subop)
+{
+	return anfc_misc_data_type_exec(chip, subop, PROG_PGPROG);
+}
+
+static int anfc_misc_zerolen_type_exec(struct nand_chip *chip,
+				       const struct nand_subop *subop,
+				       u32 prog_reg)
+{
+	struct arasan_nfc *nfc = to_anfc(chip->controller);
+	struct anfc_op nfc_op = {};
+	int ret;
+
+	anfc_parse_instructions(chip, subop, &nfc_op);
+	nfc_op.prog_reg = prog_reg;
+	anfc_trigger_op(nfc, &nfc_op);
+
+	ret = anfc_wait_for_event(nfc, XFER_COMPLETE, 0);
+	if (ret)
+		return ret;
+
+	if (nfc_op.rdy_timeout_ms)
+		ret = anfc_wait_for_rb(nfc, chip, nfc_op.rdy_timeout_ms);
+
+	return ret;
+}
+
+static int anfc_status_type_exec(struct nand_chip *chip,
+				 const struct nand_subop *subop)
+{
+	struct arasan_nfc *nfc = to_anfc(chip->controller);
+	u32 tmp;
+	int ret;
+
+	/*
+	 * This controller does not allow to proceed with a CMD+DATA_IN cycle
+	 * manually on the bus by reading data from the data register. Instead,
+	 * the controller abstract the status read operation with its own status
+	 * register after ordering a read status operation. Hence, the following
+	 * hack.
+	 */
+	if (subop->instrs[0].ctx.cmd.opcode != NAND_CMD_STATUS)
+		return -ENOTSUPP;
+
+	ret = anfc_misc_zerolen_type_exec(chip, subop, PROG_STATUS);
+	if (ret)
+		return ret;
+
+	tmp = readl(nfc->base + FLASH_STS_REG);
+	memcpy(subop->instrs[1].ctx.data.buf.in, &tmp, 1);
+
+	return 0;
+}
+
+static int anfc_reset_type_exec(struct nand_chip *chip,
+				const struct nand_subop *subop)
+{
+	return anfc_misc_zerolen_type_exec(chip, subop, PROG_RST);
+}
+
+static int anfc_erase_type_exec(struct nand_chip *chip,
+				const struct nand_subop *subop)
+{
+	return anfc_misc_zerolen_type_exec(chip, subop, PROG_ERASE);
+}
+
+static int anfc_wait_type_exec(struct nand_chip *chip,
+			       const struct nand_subop *subop)
+{
+	struct arasan_nfc *nfc = to_anfc(chip->controller);
+	struct anfc_op nfc_op = {};
+
+	anfc_parse_instructions(chip, subop, &nfc_op);
+
+	return anfc_wait_for_rb(nfc, chip, nfc_op.rdy_timeout_ms);
+}
+
+static const struct nand_op_parser anfc_op_parser = NAND_OP_PARSER(
+	NAND_OP_PARSER_PATTERN(
+		anfc_param_read_type_exec,
+		NAND_OP_PARSER_PAT_CMD_ELEM(false),
+		NAND_OP_PARSER_PAT_ADDR_ELEM(false, ANFC_MAX_ADDR_CYC),
+		NAND_OP_PARSER_PAT_WAITRDY_ELEM(true),
+		NAND_OP_PARSER_PAT_DATA_IN_ELEM(false, ANFC_MAX_CHUNK_SIZE)),
+	NAND_OP_PARSER_PATTERN(
+		anfc_param_write_type_exec,
+		NAND_OP_PARSER_PAT_CMD_ELEM(false),
+		NAND_OP_PARSER_PAT_ADDR_ELEM(false, ANFC_MAX_ADDR_CYC),
+		NAND_OP_PARSER_PAT_DATA_OUT_ELEM(false, ANFC_MAX_PARAM_SIZE)),
+	NAND_OP_PARSER_PATTERN(
+		anfc_data_read_type_exec,
+		NAND_OP_PARSER_PAT_CMD_ELEM(false),
+		NAND_OP_PARSER_PAT_ADDR_ELEM(false, ANFC_MAX_ADDR_CYC),
+		NAND_OP_PARSER_PAT_CMD_ELEM(false),
+		NAND_OP_PARSER_PAT_WAITRDY_ELEM(true),
+		NAND_OP_PARSER_PAT_DATA_IN_ELEM(false, ANFC_MAX_CHUNK_SIZE)),
+	NAND_OP_PARSER_PATTERN(
+		anfc_data_write_type_exec,
+		NAND_OP_PARSER_PAT_CMD_ELEM(false),
+		NAND_OP_PARSER_PAT_ADDR_ELEM(false, ANFC_MAX_ADDR_CYC),
+		NAND_OP_PARSER_PAT_DATA_OUT_ELEM(false, ANFC_MAX_CHUNK_SIZE),
+		NAND_OP_PARSER_PAT_CMD_ELEM(false)),
+	NAND_OP_PARSER_PATTERN(
+		anfc_reset_type_exec,
+		NAND_OP_PARSER_PAT_CMD_ELEM(false),
+		NAND_OP_PARSER_PAT_WAITRDY_ELEM(false)),
+	NAND_OP_PARSER_PATTERN(
+		anfc_erase_type_exec,
+		NAND_OP_PARSER_PAT_CMD_ELEM(false),
+		NAND_OP_PARSER_PAT_ADDR_ELEM(false, ANFC_MAX_ADDR_CYC),
+		NAND_OP_PARSER_PAT_CMD_ELEM(false),
+		NAND_OP_PARSER_PAT_WAITRDY_ELEM(false)),
+	NAND_OP_PARSER_PATTERN(
+		anfc_status_type_exec,
+		NAND_OP_PARSER_PAT_CMD_ELEM(false),
+		NAND_OP_PARSER_PAT_DATA_IN_ELEM(false, ANFC_MAX_CHUNK_SIZE)),
+	NAND_OP_PARSER_PATTERN(
+		anfc_wait_type_exec,
+		NAND_OP_PARSER_PAT_WAITRDY_ELEM(false)),
+	);
+
+static int anfc_select_target(struct nand_chip *chip, int target)
+{
+	struct arasan_nand *arasan_nand = to_arasan_nand(chip);
+	struct arasan_nfc *nfc = to_anfc(chip->controller);
+	int ret;
+
+	if (target < 0) {
+		nfc->cur_cs = target;
+		return 0;
+	}
+
+	if (nfc->cur_cs == arasan_nand->cs)
+		return 0;
+
+	nfc->cur_cs = target;
+
+	/* Update clock frequency */
+	if (nfc->cur_clk != arasan_nand->clk) {
+		clk_disable_unprepare(nfc->controller_clk);
+		ret = clk_set_rate(nfc->controller_clk, arasan_nand->clk);
+		if (ret) {
+			dev_err(nfc->dev, "Failed to change clock rate\n");
+			return ret;
+		}
+
+		ret = clk_prepare_enable(nfc->controller_clk);
+		if (ret) {
+			dev_err(nfc->dev,
+				"Failed to re-enable the controller clock\n");
+			return ret;
+		}
+
+		nfc->cur_clk = arasan_nand->clk;
+	}
+
+	/* Update the controller timings and the potential ECC configuration */
+	writel(arasan_nand->timing_mode, nfc->base + DATA_INTERFACE_REG);
+	writel(arasan_nand->ecc_conf, nfc->base + ECC_REG);
+
+	return 0;
+}
+
+static int anfc_exec_op(struct nand_chip *chip,
+			const struct nand_operation *op,
+			bool check_only)
+{
+	int ret;
+
+	ret = anfc_select_target(chip, op->cs);
+	if (ret)
+		return ret;
+
+	return nand_op_parser_exec_op(chip, &anfc_op_parser,
+				      op, check_only);
+}
+
+static int anfc_setup_data_interface(struct nand_chip *chip, int target,
+				     const struct nand_data_interface *conf)
+{
+	struct arasan_nand *arasan_nand = to_arasan_nand(chip);
+	struct arasan_nfc *nfc = to_anfc(chip->controller);
+	struct device_node *np = nfc->dev->of_node;
+
+	if (target < 0)
+		return 0;
+
+	arasan_nand->timing_mode = DIFACE_SDR |
+				   DIFACE_SDR_MODE(conf->timings.mode);
+	arasan_nand->clk = ANFC_SDR_HS_CORE_CLK;
+
+	/*
+	 * Due to a hardware bug in the ZynqMP SoC, SDR timing modes 0-1 work
+	 * with f > 90MHz (default clock is 100MHz) but signals are unstable
+	 * with higher modes. Hence we decrease a little bit the clock rate to
+	 * 80MHz when using modes 2-5 with this SoC.
+	 */
+	if (of_device_is_compatible(np, "xlnx,zynqmp-nand-controller") &&
+	    arasan_nand->timing_mode >= 2)
+		arasan_nand->clk = ANFC_SDR_LS_CORE_CLK;
+
+	return 0;
+}
+
+static int anfc_init_hw_ecc_controller(struct arasan_nfc *nfc,
+				       struct nand_chip *chip)
+{
+	struct arasan_nand *arasan_nand = to_arasan_nand(chip);
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct nand_ecc_ctrl *ecc = &chip->ecc;
+	u32 ecc_reg_col, ecc_reg_len;
+
+	switch (mtd->writesize) {
+	case SZ_512:
+	case SZ_2K:
+	case SZ_4K:
+	case SZ_8K:
+	case SZ_16K:
+		break;
+	default:
+		dev_err(nfc->dev, "Unsupported page size %d\n", mtd->writesize);
+		return -EINVAL;
+	}
+
+	if (!ecc->size || !ecc->strength) {
+		ecc->size = chip->base.eccreq.step_size;
+		ecc->strength = chip->base.eccreq.strength;
+	}
+
+	if (!ecc->size || !ecc->strength) {
+		dev_err(nfc->dev,
+			"Missing controller ECC step size/strength\n");
+		return -EINVAL;
+	}
+
+	switch (ecc->strength) {
+	case 1:
+		arasan_nand->strength = 0x0;
+		break;
+	case 12:
+		arasan_nand->strength = 0x1;
+		break;
+	case 8:
+		arasan_nand->strength = 0x2;
+		break;
+	case 4:
+		arasan_nand->strength = 0x3;
+		break;
+	case 24:
+		arasan_nand->strength = 0x4;
+		break;
+	default:
+		dev_err(nfc->dev, "Unsupported strength %d\n", ecc->strength);
+		return -EINVAL;
+	}
+
+	switch (ecc->size) {
+	case SZ_512:
+	case SZ_1K:
+		break;
+	default:
+		dev_err(nfc->dev, "Unsupported step size %d\n", ecc->strength);
+		return -EINVAL;
+	}
+
+	mtd_set_ooblayout(mtd, &nand_ooblayout_lp_ops);
+
+	/* Regular BCH byte number calculation */
+	ecc->bytes = DIV_ROUND_UP(ecc->strength * fls(8 * ecc->size), 8);
+	ecc->steps = mtd->writesize / ecc->size;
+	ecc->total = ecc->bytes * ecc->steps;
+
+	ecc_reg_col = mtd->writesize + mtd->oobsize - ecc->total;
+	ecc_reg_len = ecc->total << ECC_SIZE_SHIFT;
+	arasan_nand->ecc_conf = ecc_reg_col | ecc_reg_len;
+	if (ecc->algo == NAND_ECC_BCH)
+		arasan_nand->ecc_conf |= ECC_BCH_EN;
+
+	ecc->read_page = anfc_read_page_hwecc;
+	ecc->write_page = anfc_write_page_hwecc;
+
+	return 0;
+}
+
+static int anfc_nand_attach_chip(struct nand_chip *chip)
+{
+	struct arasan_nand *arasan_nand = to_arasan_nand(chip);
+	struct arasan_nfc *nfc = to_anfc(chip->controller);
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	int ret = 0;
+
+	if (mtd->writesize <= SZ_512)
+		arasan_nand->caddr_cycles = 1;
+	else
+		arasan_nand->caddr_cycles = 2;
+
+	if (chip->options & NAND_ROW_ADDR_3)
+		arasan_nand->raddr_cycles = 3;
+	else
+		arasan_nand->raddr_cycles = 2;
+
+	switch (mtd->writesize) {
+	case 512:
+		arasan_nand->page_sz = 0;
+		break;
+	case 1024:
+		arasan_nand->page_sz = 5;
+		break;
+	case 2048:
+		arasan_nand->page_sz = 1;
+		break;
+	case 4096:
+		arasan_nand->page_sz = 2;
+		break;
+	case 8192:
+		arasan_nand->page_sz = 3;
+		break;
+	case 16384:
+		arasan_nand->page_sz = 4;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	switch (chip->ecc.mode) {
+	case NAND_ECC_HW:
+		ret = anfc_init_hw_ecc_controller(nfc, chip);
+	case NAND_ECC_NONE:
+	case NAND_ECC_SOFT:
+	case NAND_ECC_ON_DIE:
+		break;
+	default:
+		dev_err(nfc->dev, "Unsupported ECC mode: %d\n",
+			chip->ecc.mode);
+		return -EINVAL;
+	}
+
+	return ret;
+}
+
+static const struct nand_controller_ops anfc_ops = {
+	.exec_op = anfc_exec_op,
+	.setup_data_interface = anfc_setup_data_interface,
+	.attach_chip = anfc_nand_attach_chip,
+};
+
+static int arasan_nand_chip_init(struct arasan_nfc *nfc,
+				 struct device_node *np)
+{
+	struct arasan_nand *arasan_nand;
+	struct nand_chip *chip;
+	struct mtd_info *mtd;
+	int cs, rb, ret;
+
+	arasan_nand = devm_kzalloc(nfc->dev, sizeof(*arasan_nand), GFP_KERNEL);
+	if (!arasan_nand)
+		return -ENOMEM;
+
+	/* Only one CS can be asserted at a time */
+	if (of_property_count_elems_of_size(np, "reg", sizeof(u32)) != 1) {
+		dev_err(nfc->dev, "Invalid reg property\n");
+		return -EINVAL;
+	}
+
+	ret = of_property_read_u32(np, "reg", &cs);
+	if (ret)
+		return ret;
+
+	ret = of_property_read_u32(np, "nand-rb", &rb);
+	if (ret)
+		return ret;
+
+	if (cs >= ANFC_MAX_CS || rb >= ANFC_MAX_CS) {
+		dev_err(nfc->dev, "Wrong CS %d or RB %d\n", cs, rb);
+		return -EINVAL;
+	}
+
+	if (test_and_set_bit(cs, &nfc->assigned_cs)) {
+		dev_err(nfc->dev, "Already assigned CS %d\n", cs);
+		return -EINVAL;
+	}
+
+	arasan_nand->cs = cs;
+	arasan_nand->rb = rb;
+
+	chip = &arasan_nand->chip;
+	mtd = nand_to_mtd(chip);
+	mtd->dev.parent = nfc->dev;
+	chip->controller = &nfc->controller;
+	chip->options = NAND_BUSWIDTH_AUTO | NAND_NO_SUBPAGE_WRITE |
+			NAND_USE_BOUNCE_BUFFER;
+
+	nand_set_flash_node(chip, np);
+	if (!mtd->name) {
+		dev_err(nfc->dev, "NAND label property is mandatory\n");
+		return -EINVAL;
+	}
+
+	ret = nand_scan(chip, 1);
+	if (ret) {
+		dev_err(nfc->dev, "Scan operation failed\n");
+		return ret;
+	}
+
+	ret = mtd_device_register(mtd, NULL, 0);
+	if (ret) {
+		nand_release(chip);
+		return ret;
+	}
+
+	list_add_tail(&arasan_nand->node, &nfc->chips);
+
+	return 0;
+}
+
+static void arasan_nand_chips_cleanup(struct arasan_nfc *nfc)
+{
+	struct arasan_nand *arasan_nand, *tmp;
+
+	list_for_each_entry_safe(arasan_nand, tmp, &nfc->chips, node) {
+		nand_release(&arasan_nand->chip);
+		list_del(&arasan_nand->node);
+	}
+}
+
+static int arasan_nand_chips_init(struct arasan_nfc *nfc)
+{
+	struct device_node *np = nfc->dev->of_node, *nand_np;
+	int nchips = of_get_child_count(np);
+	int ret;
+
+	if (!nchips || nchips > ANFC_MAX_CS) {
+		dev_err(nfc->dev, "Incorrect number of NAND chips (%d)\n",
+			nchips);
+		return -EINVAL;
+	}
+
+	for_each_child_of_node(np, nand_np) {
+		ret = arasan_nand_chip_init(nfc, nand_np);
+		if (ret) {
+			of_node_put(nand_np);
+			arasan_nand_chips_cleanup(nfc);
+			break;
+		}
+	}
+
+	return ret;
+}
+
+static void anfc_reset(struct arasan_nfc *nfc)
+{
+	anfc_disable_int(nfc, EVENT_MASK);
+
+	/* Enable all interrupt status */
+	writel(EVENT_MASK, nfc->base + INTR_STS_EN_REG);
+}
+
+static irqreturn_t anfc_irq_handler(int irq, void *dev_id)
+{
+	struct arasan_nfc *nfc = dev_id;
+	u32 st = readl_relaxed(nfc->base + INTR_STS_REG);
+	u32 ien = readl_relaxed(nfc->base + INTR_SIG_EN_REG) & EVENT_MASK;
+	u32 active = st & ien;
+
+	if (!active)
+		return IRQ_NONE;
+
+	anfc_disable_int(nfc, active);
+	writel(st, nfc->base + INTR_STS_REG);
+	complete(&nfc->event);
+
+	return IRQ_HANDLED;
+}
+
+static int anfc_probe(struct platform_device *pdev)
+{
+	struct arasan_nfc *nfc;
+	int irq;
+	int ret;
+
+	nfc = devm_kzalloc(&pdev->dev, sizeof(*nfc), GFP_KERNEL);
+	if (!nfc)
+		return -ENOMEM;
+
+	nfc->dev = &pdev->dev;
+	nand_controller_init(&nfc->controller);
+	nfc->controller.ops = &anfc_ops;
+	INIT_LIST_HEAD(&nfc->chips);
+
+	init_completion(&nfc->event);
+
+	nfc->base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(nfc->base))
+		return PTR_ERR(nfc->base);
+
+	anfc_reset(nfc);
+
+	irq = platform_get_irq(pdev, 0);
+	if (irq < 0)
+		return irq;
+
+	ret = devm_request_irq(&pdev->dev, irq, anfc_irq_handler,
+			       0, "arasan-nfc", nfc);
+	if (ret)
+		return ret;
+
+	nfc->controller_clk = devm_clk_get(&pdev->dev, "controller");
+	if (IS_ERR(nfc->controller_clk))
+		return PTR_ERR(nfc->controller_clk);
+
+	nfc->bus_clk = devm_clk_get(&pdev->dev, "bus");
+	if (IS_ERR(nfc->bus_clk))
+		return PTR_ERR(nfc->bus_clk);
+
+	ret = clk_prepare_enable(nfc->controller_clk);
+	if (ret)
+		return ret;
+
+	ret = clk_prepare_enable(nfc->bus_clk);
+	if (ret)
+		goto disable_controller_clk;
+
+	ret = arasan_nand_chips_init(nfc);
+	if (ret)
+		goto disable_bus_clk;
+
+	platform_set_drvdata(pdev, nfc);
+
+	return 0;
+
+disable_bus_clk:
+	clk_disable_unprepare(nfc->bus_clk);
+
+disable_controller_clk:
+	clk_disable_unprepare(nfc->controller_clk);
+
+	return ret;
+}
+
+static int anfc_remove(struct platform_device *pdev)
+{
+	struct arasan_nfc *nfc = platform_get_drvdata(pdev);
+
+	arasan_nand_chips_cleanup(nfc);
+
+	clk_disable_unprepare(nfc->bus_clk);
+	clk_disable_unprepare(nfc->controller_clk);
+
+	return 0;
+}
+
+static const struct of_device_id anfc_ids[] = {
+	{
+		.compatible = "xlnx,zynqmp-nand-controller",
+	},
+	{
+		.compatible = "arasan,nfc-v3p10",
+	},
+	{}
+};
+MODULE_DEVICE_TABLE(of, anfc_ids);
+
+static struct platform_driver anfc_driver = {
+	.driver = {
+		.name = "arasan-nand-controller",
+		.of_match_table = anfc_ids,
+	},
+	.probe = anfc_probe,
+	.remove = anfc_remove,
+};
+module_platform_driver(anfc_driver);
+
+MODULE_LICENSE("GPL v2");
+MODULE_AUTHOR("Punnaiah Choudary Kalluri <punnaia@xilinx.com>");
+MODULE_AUTHOR("Naga Sureshkumar Relli <nagasure@xilinx.com>");
+MODULE_AUTHOR("Miquel Raynal <miquel.raynal@bootlin.com>");
+MODULE_DESCRIPTION("Arasan NAND Flash Controller Driver");
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
