Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 514AC1F3523
	for <lists+linux-mtd@lfdr.de>; Tue,  9 Jun 2020 09:42:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BZ7aZehyE4+0oZerWh05HrH1tBh5ftHRI+Xz0l43qpc=; b=nMdMkantEmuQXLgZYw9IH3DAjV
	m4QMqEINoB+MTpCca88qwl7i1/2DYQyOw6jjkFmFh/rsF18UM+1cnCFoA4lA/WkT/CcjDuRsxy6mz
	msBSzB0Z1bTzeQJLnGSSdRpMhofayUm8zZm6ob6qQizGLdP+SIQc2zNBZ+bvK0W6l2IkqLzVmDIRx
	xG6CCXo3cHFUYnCBSmw/floWuKYdpATqafujXU+iHFej69HIU0E5VGR4WFFZtFDrco7xRZEFlyQf1
	lox6agPtesT1q3Z+x/tnFJo1GR0PDG7jcbh//32ooeNudHKxgDde64Wjntzj9ksKlILIVAYsYrkg5
	FavXoXGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiYtt-0003lS-6o; Tue, 09 Jun 2020 07:42:25 +0000
Received: from lucky1.263xmail.com ([211.157.147.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiYsB-0002HG-Fp; Tue, 09 Jun 2020 07:40:43 +0000
Received: from localhost (unknown [192.168.167.235])
 by lucky1.263xmail.com (Postfix) with ESMTP id DEB36C381B;
 Tue,  9 Jun 2020 15:40:29 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from ubuntu18.lan (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P31250T139912844142336S1591688422511107_; 
 Tue, 09 Jun 2020 15:40:29 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <f90476ae267498405b581178837b1174>
X-RL-SENDER: yifeng.zhao@rock-chips.com
X-SENDER: zyf@rock-chips.com
X-LOGIN-NAME: yifeng.zhao@rock-chips.com
X-FST-TO: miquel.raynal@bootlin.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
From: Yifeng Zhao <yifeng.zhao@rock-chips.com>
To: miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 robh+dt@kernel.org
Subject: [PATCH v6 2/8] mtd: rawnand: rockchip: NFC drivers for RK3308,
 RK2928 and others
Date: Tue,  9 Jun 2020 15:40:19 +0800
Message-Id: <20200609074020.23860-3-yifeng.zhao@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200609074020.23860-1-yifeng.zhao@rock-chips.com>
References: <20200609074020.23860-1-yifeng.zhao@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_004040_060200_8CDD18F3 
X-CRM114-Status: GOOD (  21.98  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.133 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [211.157.147.133 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-mtd@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This driver supports Rockchip NFC (NAND Flash Controller) found on RK3308,
RK2928, RKPX30, RV1108 and other SOCs. The driver has been tested using
8-bit NAND interface on the ARM based RK3308 platform.

Support Rockchip SoCs and NFC versions:
- PX30 and RK3326(NFCv900).
	ECC: 16/40/60/70 bits/1KB.
	CLOCK: ahb and nfc.
- RK3308 and RV1108(NFCv800).
	ECC: 16 bits/1KB.
	CLOCK: ahb and nfc.
- RK3036 and RK3128(NFCv622).
	ECC: 16/24/40/60 bits/1KB.
	CLOCK: ahb and nfc.
- RK3066, RK3188 and RK2928(NFCv600).
	ECC: 16/24/40/60 bits/1KB.
	CLOCK: ahb.

Support feature:
- Read full page data by DMA.
- Support HW ECC(one step is 1KB).
- Support 2 - 32K page size.
- Support 4 CS(depend on Soc)

Limitations:
- Unsupport 512B ecc step.
- Raw page read and write without ecc redundancy code. So could not support
  raw data dump and restore.
- Untested on some SOCs.
- Unsupport subpage.
- Unsupport randomizer.
- The original bad block mask is not supported. It is recommended to use
  the BBT(bad block table).

Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
---

Changes in v6:
- The mtd->name set by NAND label property.
- Add some comments.
- Fix compile error.

Changes in v5:
- Add boot blocks support  with different ecc for bootrom.
- Rename rockchip-nand.c to rockchip-nand-controller.c.
- Unification of other variable names.
- Remove some compatible define.

Changes in v4:
- Define platform data structure for the register offsets.
- The compatible define with rkxx_nfc.
- Use SET_SYSTEM_SLEEP_PM_OPS to define PM_OPS.
- Use exec_op instead of legacy hooks.

Changes in v3: None
Changes in v2:
- Fix compile error.
- Include header files sorted by file name.

 drivers/mtd/nand/raw/Kconfig                  |   21 +
 drivers/mtd/nand/raw/Makefile                 |    1 +
 .../mtd/nand/raw/rockchip-nand-controller.c   | 1393 +++++++++++++++++
 3 files changed, 1415 insertions(+)
 create mode 100644 drivers/mtd/nand/raw/rockchip-nand-controller.c

diff --git a/drivers/mtd/nand/raw/Kconfig b/drivers/mtd/nand/raw/Kconfig
index a80a46bb5b8b..59e6e2a48ab9 100644
--- a/drivers/mtd/nand/raw/Kconfig
+++ b/drivers/mtd/nand/raw/Kconfig
@@ -433,6 +433,27 @@ config MTD_NAND_MESON
 	  Enables support for NAND controller on Amlogic's Meson SoCs.
 	  This controller is found on Meson SoCs.
 
+config MTD_NAND_ROCKCHIP
+	tristate "Rockchip NAND controller"
+	depends on ARCH_ROCKCHIP || COMPILE_TEST
+	depends on HAS_IOMEM
+	help
+	  Enables support for NAND controller on Rockchip SoCs.
+	  There are four different versions of NAND FLASH Controllers,
+	  including:
+	  - PX30 and RK3326(NFCv900).
+		ECC: 16/40/60/70 bits/1KB.
+		CLOCK: ahb and nfc.
+	  - RK3308 and RV1108(NFCv800).
+		ECC: 16 bits/1KB.
+		CLOCK: ahb and nfc.
+	  - RK3036 and RK3128(NFCv622).
+		ECC: 16/24/40/60 bits/1KB.
+		CLOCK: ahb and nfc.
+	  - RK3066, RK3188 and RK2928(NFCv600).
+		ECC: 16/24/40/60 bits/1KB.
+		CLOCK: ahb.
+
 config MTD_NAND_GPIO
 	tristate "GPIO assisted NAND controller"
 	depends on GPIOLIB || COMPILE_TEST
diff --git a/drivers/mtd/nand/raw/Makefile b/drivers/mtd/nand/raw/Makefile
index 2d136b158fb7..a54aa85f49b1 100644
--- a/drivers/mtd/nand/raw/Makefile
+++ b/drivers/mtd/nand/raw/Makefile
@@ -58,6 +58,7 @@ obj-$(CONFIG_MTD_NAND_TEGRA)		+= tegra_nand.o
 obj-$(CONFIG_MTD_NAND_STM32_FMC2)	+= stm32_fmc2_nand.o
 obj-$(CONFIG_MTD_NAND_MESON)		+= meson_nand.o
 obj-$(CONFIG_MTD_NAND_CADENCE)		+= cadence-nand-controller.o
+obj-$(CONFIG_MTD_NAND_ROCKCHIP)		+= rockchip-nand-controller.o
 
 nand-objs := nand_base.o nand_legacy.o nand_bbt.o nand_timings.o nand_ids.o
 nand-objs += nand_onfi.o
diff --git a/drivers/mtd/nand/raw/rockchip-nand-controller.c b/drivers/mtd/nand/raw/rockchip-nand-controller.c
new file mode 100644
index 000000000000..3d6cbca3565a
--- /dev/null
+++ b/drivers/mtd/nand/raw/rockchip-nand-controller.c
@@ -0,0 +1,1393 @@
+// SPDX-License-Identifier: GPL-2.0 OR MIT
+/*
+ * Rockchip NAND Flash controller driver.
+ * Copyright (C) 2020 Rockchip Inc.
+ * Author: Yifeng Zhao <yifeng.zhao@rock-chips.com>
+ */
+
+#include <linux/clk.h>
+#include <linux/delay.h>
+#include <linux/dma-mapping.h>
+#include <linux/dmaengine.h>
+#include <linux/interrupt.h>
+#include <linux/iopoll.h>
+#include <linux/module.h>
+#include <linux/mtd/mtd.h>
+#include <linux/mtd/rawnand.h>
+#include <linux/of.h>
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+
+/*
+ * NFC Page Data Layout:
+ *	1024 Bytes Data + 4Bytes sys data + 28Bytes~124Bytes ecc +
+ *	1024 Bytes Data + 4Bytes sys data + 28Bytes~124Bytes ecc +
+ *	......
+ * NAND Page Data Layout:
+ *	1024 * n Data + m Bytes oob
+ * Original Bad Block Mask Location:
+ *	First byte of oob(spare).
+ * nand_chip->oob_poi data layout:
+ *	4Bytes sys data + .... + 4Bytes sys data + ecc data.
+ */
+
+/* NAND controller register definition */
+#define	NFC_READ		(0)
+#define	NFC_WRITE		(1)
+#define	NFC_FMCTL		(0x00)
+#define		FMCTL_CE_SEL_M		0xFF
+#define		FMCTL_CE_SEL(x)		(1 << (x))
+#define		FMCTL_WP		BIT(8)
+#define		FMCTL_RDY		BIT(9)
+#define	NFC_FMWAIT		(0x04)
+#define		FLCTL_RST		BIT(0)
+#define		FLCTL_WR		(1)	/* 0: read, 1: write */
+#define		FLCTL_XFER_ST		BIT(2)
+#define		FLCTL_XFER_EN		BIT(3)
+#define		FLCTL_ACORRECT		BIT(10) /* Auto correct error bits. */
+#define		FLCTL_XFER_READY	BIT(20)
+#define		FLCTL_XFER_SECTOR	(22)
+#define		FLCTL_TOG_FIX		BIT(29)
+#define		BCHCTL_BANK_M	(7 << 5)
+#define		BCHCTL_BANK	(5)
+#define		DMA_ST			BIT(0)
+#define		DMA_WR			(1)	/* 0: write, 1: read */
+#define		DMA_EN			BIT(2)
+#define		DMA_AHB_SIZE		(3)	/* 0: 1, 1: 2, 2: 4 */
+#define		DMA_BURST_SIZE		(6)	/* 0: 1, 3: 4, 5: 8, 7: 16 */
+#define		DMA_INC_NUM		(9)	/* 1 - 16 */
+#define		ECC_ERR_CNT(x, e) ((((x) >> (e).low) & (e).low_mask) \
+			| (((x) >> (e).high) & (e).high_mask) << (e).low_bn)
+#define		INT_DMA			BIT(0)
+#define	NFC_BANK		(0x800)
+#define	NFC_BANK_STEP		(0x100)
+#define		BANK_DATA		(0x00)
+#define		BANK_ADDR		(0x04)
+#define		BANK_CMD		(0x08)
+#define	NFC_SRAM0		(0x1000)
+#define	NFC_SRAM1		(0x1400)
+#define	NFC_SRAM_SIZE		(0x400)
+#define	NFC_TIMEOUT		(500000)
+#define	NFC_MAX_OOB_PER_STEP	128
+#define	NFC_MIN_OOB_PER_STEP	64
+#define	MAX_DATA_SIZE		0xFFFC
+#define	MAX_ADDRESS_CYC		6
+#define	NFC_ECC_MAX_MODES	4
+#define	NFC_MAX_NSELS		(8) /* Some Socs only have 1 or 2 CSs. */
+#define	NFC_SYS_DATA_SIZE	(4) /* 4 bytes sys data in oob pre 1024 data.*/
+#define	RK_DEFAULT_CLOCK_RATE	(150 * 1000 * 1000) /* 150 Mhz */
+#define	ACCTIMING(csrw, rwpw, rwcs) ((csrw) << 12 | (rwpw) << 5 | (rwcs))
+
+enum nfc_type {
+	NFC_V6,
+	NFC_V8,
+	NFC_V9,
+};
+
+/**
+ * struct rk_ecc_cnt_status: represent a ecc status data.
+ * @err_flag_bit: error flag bit index at register.
+ * @low: ecc count low bit index at register.
+ * @low_mask: mask bit.
+ * @low_bn: ecc count low bit number.
+ * @high: ecc count high bit index at register.
+ * @high_mask: mask bit
+ */
+struct ecc_cnt_status {
+	u8 err_flag_bit;
+	u8 low;
+	u8 low_mask;
+	u8 low_bn;
+	u8 high;
+	u8 high_mask;
+};
+
+/**
+ * @type: nfc version
+ * @ecc_strengths: ecc strengths
+ * @ecc_cfgs: ecc config values
+ * @flctl_off: FLCTL register offset
+ * @bchctl_off: BCHCTL register offset
+ * @dma_data_buf_off: DMA_DATA_BUF register offset
+ * @dma_oob_buf_off: DMA_OOB_BUF register offset
+ * @dma_cfg_off: DMA_CFG register offset
+ * @dma_st_off: DMA_ST register offset
+ * @bch_st_off: BCG_ST register offset
+ * @randmz_off: RANDMZ register offset
+ * @int_en_off: interrupt enable register offset
+ * @int_clr_off: interrupt clean register offset
+ * @int_st_off: interrupt status register offset
+ * @oob0_off: oob0 register offset
+ * @oob1_off: oob1 register offset
+ * @ecc0: represent ECC0 status data
+ * @ecc1: represent ECC1 status data
+ */
+struct nfc_cfg {
+	enum nfc_type type;
+	u8 ecc_strengths[NFC_ECC_MAX_MODES];
+	u32 ecc_cfgs[NFC_ECC_MAX_MODES];
+	u32 flctl_off;
+	u32 bchctl_off;
+	u32 dma_cfg_off;
+	u32 dma_data_buf_off;
+	u32 dma_oob_buf_off;
+	u32 dma_st_off;
+	u32 bch_st_off;
+	u32 randmz_off;
+	u32 int_en_off;
+	u32 int_clr_off;
+	u32 int_st_off;
+	u32 oob0_off;
+	u32 oob1_off;
+	struct ecc_cnt_status ecc0;
+	struct ecc_cnt_status ecc1;
+};
+
+struct rk_nfc_nand_chip {
+	struct list_head node;
+	struct nand_chip chip;
+
+	u32 spare_per_sector;
+	u32 oob_buf_per_sector;
+	u32 boot_blks;
+	u32 boot_ecc;
+
+	int nsels;
+	u8 sels[0];
+	/* Nothing after this field. */
+};
+
+struct rk_nfc_clk {
+	int nfc_rate;
+	struct clk *nfc_clk;
+	struct clk *ahb_clk;
+};
+
+struct rk_nfc {
+	struct nand_controller controller;
+	struct rk_nfc_clk clk;
+
+	struct device *dev;
+	const struct nfc_cfg *cfg;
+	void __iomem *regs;
+
+	int selected_bank;
+	int band_offset;
+
+	struct completion done;
+	struct list_head chips;
+
+	u8 *buffer;
+	u8 *page_buf;
+	u32 *oob_buf;
+
+	unsigned long assigned_cs;
+};
+
+static inline struct rk_nfc_nand_chip *to_rk_nand(struct nand_chip *chip)
+{
+	return container_of(chip, struct rk_nfc_nand_chip, chip);
+}
+
+static inline u8 *data_ptr(struct nand_chip *chip, const u8 *p, int i)
+{
+	return (u8 *)p + i * chip->ecc.size;
+}
+
+static inline u8 *oob_ptr(struct nand_chip *chip, int i)
+{
+	u8 *poi;
+
+	poi = chip->oob_poi + i * NFC_SYS_DATA_SIZE;
+
+	return poi;
+}
+
+static inline int rk_data_len(struct nand_chip *chip)
+{
+	struct rk_nfc_nand_chip *rk_nand = to_rk_nand(chip);
+
+	return chip->ecc.size + rk_nand->spare_per_sector;
+}
+
+static inline u8 *rk_data_ptr(struct nand_chip *chip,  int i)
+{
+	struct rk_nfc *nfc = nand_get_controller_data(chip);
+
+	return nfc->buffer + i * rk_data_len(chip);
+}
+
+static inline u8 *rk_oob_ptr(struct nand_chip *chip, int i)
+{
+	struct rk_nfc *nfc = nand_get_controller_data(chip);
+
+	return nfc->buffer + i * rk_data_len(chip) + chip->ecc.size;
+}
+
+static void rk_nfc_select_chip(struct nand_chip *chip, int cs)
+{
+	struct rk_nfc *nfc = nand_get_controller_data(chip);
+	struct rk_nfc_nand_chip *rk_nand = to_rk_nand(chip);
+	u32 val;
+
+	if (cs < 0) {
+		nfc->selected_bank = -1;
+		/* Deselect the currently selected target. */
+		val = readl_relaxed(nfc->regs + NFC_FMCTL);
+		val &= ~FMCTL_CE_SEL_M;
+		writel(val, nfc->regs + NFC_FMCTL);
+		return;
+	}
+
+	nfc->selected_bank = rk_nand->sels[cs];
+	nfc->band_offset = NFC_BANK + nfc->selected_bank * NFC_BANK_STEP;
+
+	val = readl_relaxed(nfc->regs + NFC_FMCTL);
+	val &= ~FMCTL_CE_SEL_M;
+	val |= FMCTL_CE_SEL(nfc->selected_bank);
+
+	writel(val, nfc->regs + NFC_FMCTL);
+}
+
+static inline int rk_nfc_wait_ioready(struct rk_nfc *nfc)
+{
+	int rc;
+	u32 val;
+
+	rc = readl_poll_timeout_atomic(nfc->regs + NFC_FMCTL, val,
+				       val & FMCTL_RDY, 10, NFC_TIMEOUT);
+
+	return rc;
+}
+
+static inline u8 rk_nfc_read_byte(struct nand_chip *chip)
+{
+	struct rk_nfc *nfc = nand_get_controller_data(chip);
+
+	return readb_relaxed(nfc->regs + nfc->band_offset + BANK_DATA);
+}
+
+static void rk_nfc_read_buf(struct nand_chip *chip, u8 *buf, int len)
+{
+	int i;
+
+	for (i = 0; i < len; i++)
+		buf[i] = rk_nfc_read_byte(chip);
+}
+
+static void rk_nfc_write_byte(struct nand_chip *chip, u8 byte)
+{
+	struct rk_nfc *nfc = nand_get_controller_data(chip);
+
+	writeb(byte, nfc->regs + nfc->band_offset + BANK_DATA);
+}
+
+static void rk_nfc_write_buf(struct nand_chip *chip, const u8 *buf, int len)
+{
+	int i;
+
+	for (i = 0; i < len; i++)
+		rk_nfc_write_byte(chip, buf[i]);
+}
+
+static int rk_nfc_cmd(struct nand_chip *chip,
+		      const struct nand_subop *subop)
+{
+	struct rk_nfc *nfc = nand_get_controller_data(chip);
+	unsigned int i, j, remaining, start;
+	int reg_offset = nfc->band_offset;
+	void __iomem *data_reg;
+	u8 *inbuf = NULL;
+	const u8 *outbuf;
+	u32 cnt = 0;
+	int ret = 0;
+
+
+	for (i = 0; i < subop->ninstrs; i++) {
+		const struct nand_op_instr *instr = &subop->instrs[i];
+
+		switch (instr->type) {
+		case NAND_OP_CMD_INSTR:
+			writeb(instr->ctx.cmd.opcode,
+			       nfc->regs + reg_offset + BANK_CMD);
+			break;
+
+		case NAND_OP_ADDR_INSTR:
+			remaining = nand_subop_get_num_addr_cyc(subop, i);
+			start = nand_subop_get_addr_start_off(subop, i);
+
+			for (j = 0; j < 8 && j + start < remaining; j++)
+				writeb(instr->ctx.addr.addrs[j + start],
+				       nfc->regs + reg_offset + BANK_ADDR);
+			break;
+
+		case NAND_OP_DATA_IN_INSTR:
+		case NAND_OP_DATA_OUT_INSTR:
+			start = nand_subop_get_data_start_off(subop, i);
+			cnt = nand_subop_get_data_len(subop, i);
+			data_reg = nfc->regs + nfc->band_offset + BANK_DATA;
+
+			if (instr->type == NAND_OP_DATA_OUT_INSTR) {
+				outbuf = instr->ctx.data.buf.out + start;
+				for (j = 0; j < cnt; j++)
+					writeb(outbuf[j], data_reg);
+			} else {
+				inbuf = instr->ctx.data.buf.in + start;
+				for (j = 0; j < cnt; j++)
+					inbuf[j] = readb_relaxed(data_reg);
+			}
+			break;
+
+		case NAND_OP_WAITRDY_INSTR:
+			if (rk_nfc_wait_ioready(nfc) < 0) {
+				ret = -ETIMEDOUT;
+				dev_err(nfc->dev, "IO not ready\n");
+			}
+			break;
+		}
+	}
+
+	return ret;
+}
+
+static const struct nand_op_parser rk_nfc_op_parser = NAND_OP_PARSER(
+	NAND_OP_PARSER_PATTERN(
+		rk_nfc_cmd,
+		NAND_OP_PARSER_PAT_CMD_ELEM(true),
+		NAND_OP_PARSER_PAT_ADDR_ELEM(true, MAX_ADDRESS_CYC),
+		NAND_OP_PARSER_PAT_CMD_ELEM(true),
+		NAND_OP_PARSER_PAT_WAITRDY_ELEM(true),
+		NAND_OP_PARSER_PAT_DATA_IN_ELEM(true, MAX_DATA_SIZE)),
+	NAND_OP_PARSER_PATTERN(
+		rk_nfc_cmd,
+		NAND_OP_PARSER_PAT_CMD_ELEM(true),
+		NAND_OP_PARSER_PAT_ADDR_ELEM(true, MAX_ADDRESS_CYC),
+		NAND_OP_PARSER_PAT_DATA_OUT_ELEM(true, MAX_DATA_SIZE),
+		NAND_OP_PARSER_PAT_CMD_ELEM(true),
+		NAND_OP_PARSER_PAT_WAITRDY_ELEM(true)),
+);
+
+static int rk_nfc_exec_op(struct nand_chip *chip,
+			  const struct nand_operation *op,
+			  bool check_only)
+{
+	rk_nfc_select_chip(chip, op->cs);
+	return nand_op_parser_exec_op(chip, &rk_nfc_op_parser, op,
+				      check_only);
+}
+
+static int rk_nfc_setup_data_interface(struct nand_chip *chip, int csline,
+				       const struct nand_data_interface *conf)
+{
+	struct rk_nfc *nfc = nand_get_controller_data(chip);
+	const struct nand_sdr_timings *timings;
+	u32 rate, tc2rw, trwpw, trw2c;
+	u32 temp;
+
+	if (csline == NAND_DATA_IFACE_CHECK_ONLY)
+		return 0;
+
+	/* Not onfi nand flash. */
+	if (!chip->parameters.onfi)
+		return 0;
+
+	timings = nand_get_sdr_timings(conf);
+	if (IS_ERR(timings))
+		return -ENOTSUPP;
+
+	if (IS_ERR(nfc->clk.nfc_clk))
+		rate = clk_get_rate(nfc->clk.ahb_clk);
+	else
+		rate = clk_get_rate(nfc->clk.nfc_clk);
+
+	/* Turn clock rate into KHz. */
+	rate /= 1000;
+
+	tc2rw = 1;
+	trw2c = 1;
+
+	trwpw = max(timings->tWC_min, timings->tRC_min) / 1000;
+	trwpw = DIV_ROUND_UP(trwpw * rate, 1000000);
+
+	temp = timings->tREA_max / 1000;
+	temp = DIV_ROUND_UP(temp * rate, 1000000);
+
+	if (trwpw < temp)
+		trwpw = temp;
+
+	/*
+	 * ACCON: access timing control register
+	 * -------------------------------------
+	 * 31:18: reserved
+	 * 17:12: csrw, clock cycles from the falling edge of CSn to the
+		 falling edge of RDn or WRn
+	 * 11:11: reserved
+	 * 10:05: rwpw, the width of RDn or WRn in processor clock cycles
+	 * 04:00: rwcs, clock cycles from the rising edge of RDn or WRn to the
+		 rising edge of CSn
+	 */
+	temp = ACCTIMING(tc2rw, trwpw, trw2c);
+	writel(temp, nfc->regs + NFC_FMWAIT);
+
+	return 0;
+}
+
+static int rk_nfc_hw_ecc_setup(struct nand_chip *chip,
+			       struct nand_ecc_ctrl *ecc,
+			       uint32_t strength)
+{
+	struct rk_nfc *nfc = nand_get_controller_data(chip);
+	u32 reg, i;
+
+	for (i = 0; i < NFC_ECC_MAX_MODES; i++) {
+		if (ecc->strength == nfc->cfg->ecc_strengths[i]) {
+			reg = nfc->cfg->ecc_cfgs[i];
+			break;
+		}
+	}
+
+	if (i >= NFC_ECC_MAX_MODES)
+		return -EINVAL;
+
+	writel(reg, nfc->regs + nfc->cfg->bchctl_off);
+
+	return 0;
+}
+
+static void rk_nfc_xfer_start(struct rk_nfc *nfc, u8 rw, u8 n_KB,
+			      dma_addr_t dma_data, dma_addr_t dma_oob)
+{
+	u32 dma_reg, fl_reg, bch_reg;
+
+	dma_reg = DMA_ST | ((!rw) << DMA_WR)  | DMA_EN | (2 << DMA_AHB_SIZE) |
+	      (7 << DMA_BURST_SIZE) | (16 << DMA_INC_NUM);
+
+	fl_reg = (rw << FLCTL_WR) | FLCTL_XFER_EN | FLCTL_ACORRECT |
+		 (n_KB << FLCTL_XFER_SECTOR) | FLCTL_TOG_FIX;
+
+	if (nfc->cfg->type == NFC_V6 || nfc->cfg->type == NFC_V8) {
+		bch_reg = readl_relaxed(nfc->regs + nfc->cfg->bchctl_off);
+		bch_reg = (bch_reg & (~BCHCTL_BANK_M)) |
+			  (nfc->selected_bank << BCHCTL_BANK);
+		writel(bch_reg, nfc->regs + nfc->cfg->bchctl_off);
+	}
+
+	writel(dma_reg, nfc->regs + nfc->cfg->dma_cfg_off);
+	writel((u32)dma_data, nfc->regs + nfc->cfg->dma_data_buf_off);
+	writel((u32)dma_oob, nfc->regs + nfc->cfg->dma_oob_buf_off);
+	writel(fl_reg, nfc->regs + nfc->cfg->flctl_off);
+	fl_reg |= FLCTL_XFER_ST;
+	writel(fl_reg, nfc->regs + nfc->cfg->flctl_off);
+}
+
+static int rk_nfc_wait_for_xfer_done(struct rk_nfc *nfc)
+{
+	void __iomem *ptr;
+	int ret = 0;
+	u32 reg;
+
+	ptr = nfc->regs + nfc->cfg->flctl_off;
+
+	ret = readl_poll_timeout_atomic(ptr, reg,
+					reg & FLCTL_XFER_READY,
+					10, NFC_TIMEOUT);
+
+	return ret;
+}
+
+static int rk_nfc_write_page(struct mtd_info *mtd, struct nand_chip *chip,
+			     const u8 *buf, int page, int raw)
+{
+	struct rk_nfc *nfc = nand_get_controller_data(chip);
+	struct rk_nfc_nand_chip *rk_nand = to_rk_nand(chip);
+	struct nand_ecc_ctrl *ecc = &chip->ecc;
+	int oob_step = (ecc->bytes > 60) ? NFC_MAX_OOB_PER_STEP :
+			NFC_MIN_OOB_PER_STEP;
+	int pages_per_blk = mtd->erasesize / mtd->writesize;
+	int ret = 0, i, boot_rom_mode = 0;
+	dma_addr_t dma_data, dma_oob;
+	u32 reg;
+	u8 *oob;
+
+	nand_prog_page_begin_op(chip, page, 0, NULL, 0);
+
+	if (!raw) {
+		memcpy(nfc->page_buf, buf, mtd->writesize);
+		memset(nfc->oob_buf, 0xff, oob_step * ecc->steps);
+
+		/*
+		 * The first 8(some devices are 4 or 16) blocks in use by
+		 * the boot ROM and the first 32 bits of oob need to link
+		 * to the next page address in the same block.
+		 * Config the ECC algorithm supported by the boot ROM.
+		 */
+		if (page < pages_per_blk * rk_nand->boot_blks &&
+		    chip->options & NAND_IS_BOOT_MEDIUM) {
+			boot_rom_mode = 1;
+			if (rk_nand->boot_ecc != ecc->strength)
+				rk_nfc_hw_ecc_setup(chip, ecc,
+						    rk_nand->boot_ecc);
+		}
+
+		/*
+		 * Swap the first oob with the seventh oob and bad block
+		 * mask is saved at the seventh oob.
+		 */
+		swap(chip->oob_poi[0], chip->oob_poi[7]);
+
+		for (i = 0; i < ecc->steps; i++) {
+			oob = chip->oob_poi + i * NFC_SYS_DATA_SIZE;
+			reg = oob[0] | oob[1] << 8 | oob[2] << 16 |
+			      oob[3] << 24;
+			if (!i && boot_rom_mode)
+				reg = (page & (pages_per_blk - 1)) * 4;
+
+			if (nfc->cfg->type == NFC_V6 ||
+			    nfc->cfg->type == NFC_V8)
+				nfc->oob_buf[i * oob_step / 4] = reg;
+			else
+				nfc->oob_buf[i] = reg;
+		}
+
+		dma_data = dma_map_single(nfc->dev, (void *)nfc->page_buf,
+					  mtd->writesize, DMA_TO_DEVICE);
+		dma_oob = dma_map_single(nfc->dev, nfc->oob_buf,
+					 ecc->steps * oob_step,
+					 DMA_TO_DEVICE);
+
+		reinit_completion(&nfc->done);
+		writel(INT_DMA, nfc->regs + nfc->cfg->int_en_off);
+
+		rk_nfc_xfer_start(nfc, NFC_WRITE, ecc->steps, dma_data,
+				  dma_oob);
+		ret = wait_for_completion_timeout(&nfc->done,
+						  msecs_to_jiffies(100));
+		if (!ret)
+			dev_warn(nfc->dev, "write: wait dma done timeout.\n");
+		/*
+		 * Whether the DMA transfer is completed or not. The driver
+		 * needs to check the NFC`s status register to see if the data
+		 * transfer was completed.
+		 */
+		ret = rk_nfc_wait_for_xfer_done(nfc);
+
+		dma_unmap_single(nfc->dev, dma_data, mtd->writesize,
+				 DMA_TO_DEVICE);
+		dma_unmap_single(nfc->dev, dma_oob, ecc->steps * oob_step,
+				 DMA_TO_DEVICE);
+
+		if (boot_rom_mode && rk_nand->boot_ecc != ecc->strength)
+			rk_nfc_hw_ecc_setup(chip, ecc, ecc->strength);
+
+		if (ret) {
+			ret = -EIO;
+			dev_err(nfc->dev,
+				 "write: wait transfer done timeout.\n");
+		}
+	} else {
+		rk_nfc_write_buf(chip, buf, mtd->writesize + + mtd->oobsize);
+	}
+
+	if (ret)
+		return ret;
+
+	ret = nand_prog_page_end_op(chip);
+
+	/* Deselect the currently selected target. */
+	rk_nfc_select_chip(chip, -1);
+
+	return ret;
+}
+
+static int rk_nfc_write_page_raw(struct nand_chip *chip, const u8 *buf,
+				 int oob_on, int page)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct rk_nfc *nfc = nand_get_controller_data(chip);
+	u32 i;
+
+	memset(nfc->buffer, 0xff, mtd->writesize + mtd->oobsize);
+	swap(chip->oob_poi[0], chip->oob_poi[7]);
+	for (i = 0; i < chip->ecc.steps; i++) {
+		if (buf)
+			memcpy(rk_data_ptr(chip, i), data_ptr(chip, buf, i),
+			       chip->ecc.size);
+
+		memcpy(rk_oob_ptr(chip, i), oob_ptr(chip, i),
+		       NFC_SYS_DATA_SIZE);
+	}
+
+	return rk_nfc_write_page(mtd, chip, nfc->buffer, page, 1);
+}
+
+static int rk_nfc_write_oob_std(struct nand_chip *chip, int page)
+{
+	return rk_nfc_write_page_raw(chip, NULL, 1, page);
+}
+
+static int rk_nfc_read_page(struct mtd_info *mtd, struct nand_chip *chip,
+			    u32 data_offs, u32 readlen,
+			    u8 *buf, int page, int raw)
+{
+	struct rk_nfc *nfc = nand_get_controller_data(chip);
+	struct rk_nfc_nand_chip *rk_nand = to_rk_nand(chip);
+	struct nand_ecc_ctrl *ecc = &chip->ecc;
+	int oob_step = (ecc->bytes > 60) ? NFC_MAX_OOB_PER_STEP :
+			NFC_MIN_OOB_PER_STEP;
+	int pages_per_blk = mtd->erasesize / mtd->writesize;
+	dma_addr_t dma_data, dma_oob;
+	int ret = 0, i, boot_rom_mode = 0;
+	int bitflips = 0, bch_st;
+	u8 *oob;
+	u32 tmp;
+
+	nand_read_page_op(chip, page, 0, NULL, 0);
+	if (!raw) {
+		dma_data = dma_map_single(nfc->dev, nfc->page_buf,
+					  mtd->writesize,
+					  DMA_FROM_DEVICE);
+		dma_oob = dma_map_single(nfc->dev, nfc->oob_buf,
+					 ecc->steps * oob_step,
+					 DMA_FROM_DEVICE);
+
+		/*
+		 * The first 8(some devices are 4 or 16) blocks in use by
+		 * the bootrom.
+		 * Config the ECC algorithm supported by the boot ROM.
+		 */
+		if (page < pages_per_blk * rk_nand->boot_blks &&
+		    chip->options & NAND_IS_BOOT_MEDIUM) {
+			boot_rom_mode = 1;
+			if (rk_nand->boot_ecc != ecc->strength)
+				rk_nfc_hw_ecc_setup(chip, ecc,
+						    rk_nand->boot_ecc);
+		}
+
+		reinit_completion(&nfc->done);
+		writel(INT_DMA, nfc->regs + nfc->cfg->int_en_off);
+		rk_nfc_xfer_start(nfc, NFC_READ, ecc->steps, dma_data,
+				  dma_oob);
+		ret = wait_for_completion_timeout(&nfc->done,
+						  msecs_to_jiffies(100));
+		if (!ret)
+			dev_warn(nfc->dev, "read: wait dma done timeout.\n");
+		/*
+		 * Whether the DMA transfer is completed or not. The driver
+		 * needs to check the NFC`s status register to see if the data
+		 * transfer was completed.
+		 */
+		ret = rk_nfc_wait_for_xfer_done(nfc);
+		dma_unmap_single(nfc->dev, dma_data, mtd->writesize,
+				 DMA_FROM_DEVICE);
+		dma_unmap_single(nfc->dev, dma_oob, ecc->steps * oob_step,
+				 DMA_FROM_DEVICE);
+
+		if (ret) {
+			bitflips = -EIO;
+			dev_err(nfc->dev,
+				 "read: wait transfer done timeout.\n");
+			goto out;
+		}
+
+		for (i = 0; i < ecc->steps; i++) {
+			oob = chip->oob_poi + i * NFC_SYS_DATA_SIZE;
+			if (nfc->cfg->type == NFC_V6 ||
+			    nfc->cfg->type == NFC_V8)
+				tmp = nfc->oob_buf[i * oob_step / 4];
+			else
+				tmp = nfc->oob_buf[i];
+			*oob++ = (u8)tmp;
+			*oob++ = (u8)(tmp >> 8);
+			*oob++ = (u8)(tmp >> 16);
+			*oob++ = (u8)(tmp >> 24);
+		}
+
+		/*
+		 * Swap the first oob with the seventh oob and bad block
+		 * mask is saved at the seventh oob.
+		 */
+		swap(chip->oob_poi[0], chip->oob_poi[7]);
+
+		for (i = 0; i < ecc->steps / 2; i++) {
+			bch_st = readl_relaxed(nfc->regs +
+					       nfc->cfg->bch_st_off + i * 4);
+			if (bch_st & BIT(nfc->cfg->ecc0.err_flag_bit) ||
+			    bch_st & BIT(nfc->cfg->ecc1.err_flag_bit)) {
+				mtd->ecc_stats.failed++;
+				bitflips = -1;
+			} else {
+				ret = ECC_ERR_CNT(bch_st, nfc->cfg->ecc0);
+				mtd->ecc_stats.corrected += ret;
+				bitflips = max_t(u32, bitflips, ret);
+
+				ret = ECC_ERR_CNT(bch_st, nfc->cfg->ecc1);
+				mtd->ecc_stats.corrected += ret;
+				bitflips = max_t(u32, bitflips, ret);
+			}
+		}
+out:
+		memcpy(buf, nfc->page_buf, mtd->writesize);
+
+		if (boot_rom_mode && rk_nand->boot_ecc != ecc->strength)
+			rk_nfc_hw_ecc_setup(chip, ecc, ecc->strength);
+
+		if (bitflips < 0)
+			dev_err(nfc->dev, "read page: %x ecc error!\n", page);
+	} else {
+		rk_nfc_read_buf(chip, buf, mtd->writesize + mtd->oobsize);
+	}
+	/* Deselect the currently selected target. */
+	rk_nfc_select_chip(chip, -1);
+
+	return bitflips;
+}
+
+static int rk_nfc_write_page_hwecc(struct nand_chip *chip, const u8 *buf,
+				   int oob_on, int page)
+{
+	return rk_nfc_write_page(nand_to_mtd(chip), chip, buf, page, 0);
+}
+
+static int rk_nfc_read_page_hwecc(struct nand_chip *chip, u8 *p, int oob_on,
+				  int pg)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+
+	return rk_nfc_read_page(mtd, chip, 0, mtd->writesize, p, pg, 0);
+}
+
+static int rk_nfc_read_page_raw(struct nand_chip *chip, u8 *buf, int oob_on,
+				int page)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct rk_nfc *nfc = nand_get_controller_data(chip);
+	int i, ret;
+
+	ret = rk_nfc_read_page(mtd, chip, 0, mtd->writesize, nfc->buffer,
+			       page, 1);
+	if (ret < 0)
+		return ret;
+
+	for (i = 0; i < chip->ecc.steps; i++) {
+		memcpy(oob_ptr(chip, i), rk_oob_ptr(chip, i),
+		       NFC_SYS_DATA_SIZE);
+
+		if (buf)
+			memcpy(data_ptr(chip, buf, i), rk_data_ptr(chip, i),
+			       chip->ecc.size);
+	}
+	swap(chip->oob_poi[0], chip->oob_poi[7]);
+
+	return ret;
+}
+
+static int rk_nfc_read_oob_std(struct nand_chip *chip, int page)
+{
+	return rk_nfc_read_page_raw(chip, NULL, 1, page);
+}
+
+static inline void rk_nfc_hw_init(struct rk_nfc *nfc)
+{
+	/* Disable flash wp. */
+	writel(FMCTL_WP, nfc->regs + NFC_FMCTL);
+	/* Config default timing 40ns at 150 Mhz nfc clock. */
+	writel(0x1081, nfc->regs + NFC_FMWAIT);
+	/* Disable randomizer and DMA. */
+	writel(0, nfc->regs + nfc->cfg->randmz_off);
+	writel(0, nfc->regs + nfc->cfg->dma_cfg_off);
+	writel(FLCTL_RST, nfc->regs + nfc->cfg->flctl_off);
+}
+
+static irqreturn_t rk_nfc_irq(int irq, void *id)
+{
+	struct rk_nfc *nfc = id;
+	u32 sta, ien;
+
+	sta = readl_relaxed(nfc->regs + nfc->cfg->int_st_off);
+	ien = readl_relaxed(nfc->regs + nfc->cfg->int_en_off);
+
+	if (!(sta & ien))
+		return IRQ_NONE;
+
+	writel(sta, nfc->regs + nfc->cfg->int_clr_off);
+	writel(~sta & ien, nfc->regs + nfc->cfg->int_en_off);
+
+	complete(&nfc->done);
+
+	return IRQ_HANDLED;
+}
+
+static int rk_nfc_enable_clk(struct device *dev, struct rk_nfc_clk *clk)
+{
+	int ret;
+
+	if (!IS_ERR(clk->nfc_clk)) {
+		ret = clk_prepare_enable(clk->nfc_clk);
+		if (ret) {
+			dev_err(dev, "failed to enable nfc clk\n");
+			return ret;
+		}
+	}
+
+	ret = clk_prepare_enable(clk->ahb_clk);
+	if (ret) {
+		dev_err(dev, "failed to enable ahb clk\n");
+		if (!IS_ERR(clk->nfc_clk))
+			clk_disable_unprepare(clk->nfc_clk);
+		return ret;
+	}
+
+	return 0;
+}
+
+static void rk_nfc_disable_clk(struct rk_nfc_clk *clk)
+{
+	if (!IS_ERR(clk->nfc_clk))
+		clk_disable_unprepare(clk->nfc_clk);
+	clk_disable_unprepare(clk->ahb_clk);
+}
+
+static int rk_nfc_ooblayout_free(struct mtd_info *mtd, int section,
+				 struct mtd_oob_region *oob_region)
+{
+	struct nand_chip *chip = mtd_to_nand(mtd);
+
+	if (section >= chip->ecc.steps)
+		return -ERANGE;
+
+	if (!section) {
+		/* The first byte is bad block mask flag. */
+		oob_region->length = NFC_SYS_DATA_SIZE - 1;
+		oob_region->offset = 1;
+	} else {
+		oob_region->length = NFC_SYS_DATA_SIZE;
+		oob_region->offset = section * NFC_SYS_DATA_SIZE;
+	}
+
+	return 0;
+}
+
+static int rk_nfc_ooblayout_ecc(struct mtd_info *mtd, int section,
+				struct mtd_oob_region *oob_region)
+{
+	struct nand_chip *chip = mtd_to_nand(mtd);
+
+	if (section)
+		return -ERANGE;
+
+	oob_region->offset = NFC_SYS_DATA_SIZE * chip->ecc.steps;
+	oob_region->length = mtd->oobsize - oob_region->offset;
+
+	return 0;
+}
+
+static const struct mtd_ooblayout_ops rk_nfc_ooblayout_ops = {
+	.free = rk_nfc_ooblayout_free,
+	.ecc = rk_nfc_ooblayout_ecc,
+};
+
+static int rk_nfc_ecc_init(struct device *dev, struct mtd_info *mtd)
+{
+	struct nand_chip *chip = mtd_to_nand(mtd);
+	struct rk_nfc *nfc = nand_get_controller_data(chip);
+	struct nand_ecc_ctrl *ecc = &chip->ecc;
+	const u8 *strengths = nfc->cfg->ecc_strengths;
+	u8 max_strength, nfc_max_strength;
+	int i;
+
+	nfc_max_strength = nfc->cfg->ecc_strengths[0];
+	/* If optional dt settings not present. */
+	if (!ecc->size || !ecc->strength ||
+	    ecc->strength > nfc_max_strength) {
+		/* Use datasheet requirements. */
+		ecc->strength = chip->base.eccreq.strength;
+		ecc->size = chip->base.eccreq.step_size;
+
+		/*
+		 * Align eccstrength and eccsize.
+		 * This controller only supports 512 and 1024 sizes.
+		 */
+		if (chip->ecc.size < 1024) {
+			if (mtd->writesize > 512) {
+				chip->ecc.size = 1024;
+				chip->ecc.strength <<= 1;
+			} else {
+				dev_err(dev, "ecc.size not supported\n");
+				return -EINVAL;
+			}
+		} else {
+			chip->ecc.size = 1024;
+		}
+
+		ecc->steps = mtd->writesize / ecc->size;
+
+		/*
+		 * HW ECC always request ECC bytes for 1024 bytes blocks.
+		 * 4 Bytes is oob for sys data.
+		 */
+		max_strength = ((mtd->oobsize / ecc->steps) - 4) * 8 /
+				 fls(8 * 1024);
+		if (max_strength > nfc_max_strength)
+			max_strength = nfc_max_strength;
+
+		for (i = 0; i < 4; i++) {
+			if (max_strength >= strengths[i])
+				break;
+		}
+
+		if (i >= 4) {
+			dev_err(nfc->dev, "unsupported strength\n");
+			return -ENOTSUPP;
+		}
+
+		ecc->strength = strengths[i];
+	}
+	ecc->steps = mtd->writesize / ecc->size;
+	ecc->bytes = DIV_ROUND_UP(ecc->strength * fls(8 * 1024), 8);
+	/* HW ECC always work with even numbers of ECC bytes. */
+	ecc->bytes = ALIGN(ecc->bytes, 2);
+
+	rk_nfc_hw_ecc_setup(chip, ecc, ecc->strength);
+
+	return 0;
+}
+
+static int rk_nfc_attach_chip(struct nand_chip *chip)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct device *dev = mtd->dev.parent;
+	struct rk_nfc *nfc = nand_get_controller_data(chip);
+	struct rk_nfc_nand_chip *rk_nand = to_rk_nand(chip);
+	struct nand_ecc_ctrl *ecc = &chip->ecc;
+	int len;
+	int ret;
+
+	if (chip->options & NAND_BUSWIDTH_16) {
+		dev_err(dev, "16 bits bus width not supported");
+		return -EINVAL;
+	}
+
+	if (ecc->mode != NAND_ECC_HW)
+		return 0;
+
+	ret = rk_nfc_ecc_init(dev, mtd);
+	if (ret)
+		return ret;
+	rk_nand->spare_per_sector = ecc->bytes + NFC_SYS_DATA_SIZE;
+
+	/* Check buffer first, avoid duplicate alloc buffer. */
+	if (nfc->buffer)
+		return 0;
+
+	len = mtd->writesize + mtd->oobsize;
+	nfc->buffer = devm_kzalloc(dev, len, GFP_KERNEL | GFP_DMA);
+	if (!nfc->buffer)
+		return -ENOMEM;
+
+	nfc->page_buf = nfc->buffer;
+	len = ecc->steps * NFC_MAX_OOB_PER_STEP;
+	nfc->oob_buf = devm_kzalloc(dev, len, GFP_KERNEL | GFP_DMA);
+	if (!nfc->oob_buf) {
+		devm_kfree(dev, nfc->buffer);
+		nfc->buffer = NULL;
+		nfc->oob_buf = NULL;
+		return -ENOMEM;
+	}
+
+	chip->ecc.write_page_raw = rk_nfc_write_page_raw;
+	chip->ecc.write_page = rk_nfc_write_page_hwecc;
+	chip->ecc.write_oob_raw = rk_nfc_write_oob_std;
+	chip->ecc.write_oob = rk_nfc_write_oob_std;
+
+	chip->ecc.read_page_raw = rk_nfc_read_page_raw;
+	chip->ecc.read_page = rk_nfc_read_page_hwecc;
+	chip->ecc.read_oob_raw = rk_nfc_read_oob_std;
+	chip->ecc.read_oob = rk_nfc_read_oob_std;
+
+	return 0;
+}
+
+static const struct nand_controller_ops rk_nfc_controller_ops = {
+	.attach_chip = rk_nfc_attach_chip,
+	.exec_op = rk_nfc_exec_op,
+	.setup_data_interface = rk_nfc_setup_data_interface,
+};
+
+static int rk_nfc_nand_chip_init(struct device *dev, struct rk_nfc *nfc,
+				 struct device_node *np)
+{
+	struct rk_nfc_nand_chip *nand;
+	struct nand_chip *chip;
+	struct mtd_info *mtd;
+	int nsels;
+	u32 tmp;
+	int ret;
+	int i;
+
+	if (!of_get_property(np, "reg", &nsels))
+		return -ENODEV;
+	nsels /= sizeof(u32);
+	if (!nsels || nsels > NFC_MAX_NSELS) {
+		dev_err(dev, "invalid reg property size %d\n", nsels);
+		return -EINVAL;
+	}
+
+	nand = devm_kzalloc(dev, sizeof(*nand) + nsels * sizeof(u8),
+			    GFP_KERNEL);
+	if (!nand)
+		return -ENOMEM;
+
+	nand->nsels = nsels;
+	for (i = 0; i < nsels; i++) {
+		ret = of_property_read_u32_index(np, "reg", i, &tmp);
+		if (ret) {
+			dev_err(dev, "reg property failure : %d\n", ret);
+			return ret;
+		}
+
+		if (tmp >= NFC_MAX_NSELS) {
+			dev_err(dev, "invalid CS: %u\n", tmp);
+			return -EINVAL;
+		}
+
+		if (test_and_set_bit(tmp, &nfc->assigned_cs)) {
+			dev_err(dev, "CS %u already assigned\n", tmp);
+			return -EINVAL;
+		}
+
+		nand->sels[i] = tmp;
+	}
+
+	chip = &nand->chip;
+	chip->controller = &nfc->controller;
+
+	nand_set_flash_node(chip, np);
+
+	nand_set_controller_data(chip, nfc);
+
+	chip->options |= NAND_USE_BOUNCE_BUFFER | NAND_NO_SUBPAGE_WRITE;
+	chip->bbt_options = NAND_BBT_USE_FLASH | NAND_BBT_NO_OOB;
+
+	/* Set default mode in case dt entry is missing. */
+	chip->ecc.mode = NAND_ECC_HW;
+
+	mtd = nand_to_mtd(chip);
+	mtd->owner = THIS_MODULE;
+	mtd->dev.parent = dev;
+
+	if (!mtd->name) {
+		dev_err(nfc->dev, "NAND label property is mandatory\n");
+		return -EINVAL;
+	}
+
+	mtd_set_ooblayout(mtd, &rk_nfc_ooblayout_ops);
+	rk_nfc_hw_init(nfc);
+	ret = nand_scan(chip, nsels);
+	if (ret)
+		return ret;
+
+	if (chip->options & NAND_IS_BOOT_MEDIUM) {
+		ret = of_property_read_u32(np, "rockchip,boot-blks", &tmp);
+		nand->boot_blks = ret ? 0 : tmp;
+
+		ret = of_property_read_u32(np, "rockchip,boot-ecc-strength",
+					   &tmp);
+		nand->boot_ecc = ret ? chip->ecc.strength : tmp;
+	}
+
+	ret = mtd_device_register(mtd, NULL, 0);
+	if (ret) {
+		dev_err(dev, "mtd parse partition error\n");
+		nand_release(chip);
+		return ret;
+	}
+
+	list_add_tail(&nand->node, &nfc->chips);
+
+	return 0;
+}
+
+static int rk_nfc_nand_chips_init(struct device *dev, struct rk_nfc *nfc)
+{
+	struct device_node *np = dev->of_node;
+	struct device_node *nand_np;
+	int ret = -EINVAL;
+	int tmp;
+
+	for_each_child_of_node(np, nand_np) {
+		tmp = rk_nfc_nand_chip_init(dev, nfc, nand_np);
+		if (tmp) {
+			of_node_put(nand_np);
+			return ret;
+		}
+		/* At least one nand chip is initialized. */
+		ret = 0;
+	}
+
+	return ret;
+}
+
+static struct nfc_cfg nfc_v6_cfg = {
+		.type			= NFC_V6,
+		.ecc_strengths		= {60, 40, 24, 16},
+		.ecc_cfgs		= {
+			0x00040011, 0x00040001, 0x00000011, 0x00000001,
+		},
+		.flctl_off		= 0x08,
+		.bchctl_off		= 0x0C,
+		.dma_cfg_off		= 0x10,
+		.dma_data_buf_off	= 0x14,
+		.dma_oob_buf_off	= 0x18,
+		.dma_st_off		= 0x1C,
+		.bch_st_off		= 0x20,
+		.randmz_off		= 0x150,
+		.int_en_off		= 0x16C,
+		.int_clr_off		= 0x170,
+		.int_st_off		= 0x174,
+		.oob0_off		= 0x200,
+		.oob1_off		= 0x230,
+		.ecc0			= {
+			.err_flag_bit	= 2,
+			.low		= 3,
+			.low_mask	= 0x1F,
+			.low_bn		= 5,
+			.high		= 27,
+			.high_mask	= 0x1,
+		},
+		.ecc1			= {
+			.err_flag_bit	= 15,
+			.low		= 16,
+			.low_mask	= 0x1F,
+			.low_bn		= 5,
+			.high		= 29,
+			.high_mask	= 0x1,
+		},
+};
+
+static struct nfc_cfg nfc_v8_cfg = {
+		.type			= NFC_V8,
+		.ecc_strengths		= {16, 16, 16, 16},
+		.ecc_cfgs		= {
+			0x00000001, 0x00000001, 0x00000001, 0x00000001,
+		},
+		.flctl_off		= 0x08,
+		.bchctl_off		= 0x0C,
+		.dma_cfg_off		= 0x10,
+		.dma_data_buf_off	= 0x14,
+		.dma_oob_buf_off	= 0x18,
+		.dma_st_off		= 0x1C,
+		.bch_st_off		= 0x20,
+		.bch_st_off		= 0x20,
+		.randmz_off		= 0x150,
+		.int_en_off		= 0x16C,
+		.int_clr_off		= 0x170,
+		.int_st_off		= 0x174,
+		.oob0_off		= 0x200,
+		.oob1_off		= 0x230,
+		.ecc0			= {
+			.err_flag_bit	= 2,
+			.low		= 3,
+			.low_mask	= 0x1F,
+			.low_bn		= 5,
+			.high		= 27,
+			.high_mask	= 0x1,
+		},
+		.ecc1			= {
+			.err_flag_bit	= 15,
+			.low		= 16,
+			.low_mask	= 0x1F,
+			.low_bn		= 5,
+			.high		= 29,
+			.high_mask	= 0x1,
+		},
+};
+
+static struct nfc_cfg nfc_v9_cfg = {
+		.type			= NFC_V9,
+		.ecc_strengths		= {70, 60, 40, 16},
+		.ecc_cfgs		= {
+			0x00000001, 0x06000001, 0x04000001, 0x02000001,
+		},
+		.flctl_off		= 0x10,
+		.bchctl_off		= 0x20,
+		.dma_cfg_off		= 0x30,
+		.dma_data_buf_off	= 0x34,
+		.dma_oob_buf_off	= 0x38,
+		.dma_st_off		= 0x3C,
+		.bch_st_off		= 0x150,
+		.randmz_off		= 0x208,
+		.int_en_off		= 0x120,
+		.int_clr_off		= 0x124,
+		.int_st_off		= 0x128,
+		.oob0_off		= 0x200,
+		.oob1_off		= 0x204,
+		.ecc0			= {
+			.err_flag_bit	= 2,
+			.low		= 3,
+			.low_mask	= 0x7F,
+			.low_bn		= 7,
+			.high		= 0,
+			.high_mask	= 0x0,
+		},
+		.ecc1			= {
+			.err_flag_bit	= 18,
+			.low		= 19,
+			.low_mask	= 0x7F,
+			.low_bn		= 7,
+			.high		= 0,
+			.high_mask	= 0x0,
+		},
+};
+
+static const struct of_device_id rk_nfc_id_table[] = {
+	{.compatible = "rockchip,px30-nfc",
+		.data = &nfc_v9_cfg },
+	{.compatible = "rockchip,rk2928-nfc",
+		.data = &nfc_v6_cfg },
+	{.compatible = "rockchip,rv1108-nfc",
+		.data = &nfc_v8_cfg },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, rk_nfc_id_table);
+
+static int rk_nfc_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct rk_nfc *nfc;
+	struct resource *res;
+	int ret, irq;
+
+	nfc = devm_kzalloc(dev, sizeof(*nfc), GFP_KERNEL);
+	if (!nfc)
+		return -ENOMEM;
+
+	nand_controller_init(&nfc->controller);
+	INIT_LIST_HEAD(&nfc->chips);
+	nfc->controller.ops = &rk_nfc_controller_ops;
+
+	nfc->cfg = of_device_get_match_data(dev);
+	nfc->dev = dev;
+
+	init_completion(&nfc->done);
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	nfc->regs = devm_ioremap_resource(dev, res);
+	if (IS_ERR(nfc->regs)) {
+		ret = PTR_ERR(nfc->regs);
+		goto release_nfc;
+	}
+
+	nfc->clk.nfc_clk = devm_clk_get(dev, "nfc");
+	if (IS_ERR(nfc->clk.nfc_clk)) {
+		dev_dbg(dev, "no nfc clk\n");
+		/* Some old device, sush as rk3066, has no nfc clk. */
+	}
+
+	nfc->clk.ahb_clk = devm_clk_get(dev, "ahb");
+	if (IS_ERR(nfc->clk.ahb_clk)) {
+		dev_err(dev, "no ahb clk\n");
+		ret = PTR_ERR(nfc->clk.ahb_clk);
+		goto release_nfc;
+	}
+
+	ret = rk_nfc_enable_clk(dev, &nfc->clk);
+	if (ret)
+		goto release_nfc;
+
+	irq = platform_get_irq(pdev, 0);
+	if (irq < 0) {
+		dev_err(dev, "no nfc irq resource\n");
+		ret = -EINVAL;
+		goto clk_disable;
+	}
+
+	writel(0, nfc->regs + nfc->cfg->int_en_off);
+	ret = devm_request_irq(dev, irq, rk_nfc_irq, 0x0, "rk-nand", nfc);
+	if (ret) {
+		dev_err(dev, "failed to request nfc irq\n");
+		goto clk_disable;
+	}
+
+	platform_set_drvdata(pdev, nfc);
+
+	ret = rk_nfc_nand_chips_init(dev, nfc);
+	if (ret) {
+		dev_err(dev, "failed to init nand chips\n");
+		goto clk_disable;
+	}
+	return 0;
+
+clk_disable:
+	rk_nfc_disable_clk(&nfc->clk);
+release_nfc:
+	return ret;
+}
+
+static int rk_nfc_remove(struct platform_device *pdev)
+{
+	struct rk_nfc *nfc = platform_get_drvdata(pdev);
+	struct rk_nfc_nand_chip *nand;
+
+	while (!list_empty(&nfc->chips)) {
+		nand = list_first_entry(&nfc->chips, struct rk_nfc_nand_chip,
+					node);
+		nand_release(&nand->chip);
+		list_del(&nand->node);
+	}
+
+	rk_nfc_disable_clk(&nfc->clk);
+
+	return 0;
+}
+
+static int __maybe_unused rk_nfc_suspend(struct device *dev)
+{
+	struct rk_nfc *nfc = dev_get_drvdata(dev);
+
+	rk_nfc_disable_clk(&nfc->clk);
+
+	return 0;
+}
+
+static int __maybe_unused rk_nfc_resume(struct device *dev)
+{
+	struct rk_nfc *nfc = dev_get_drvdata(dev);
+	struct rk_nfc_nand_chip *nand;
+	struct nand_chip *chip;
+	int ret;
+	u32 i;
+
+	ret = rk_nfc_enable_clk(dev, &nfc->clk);
+	if (ret)
+		return ret;
+
+	/* Reset NAND chip if VCC was powered off. */
+	list_for_each_entry(nand, &nfc->chips, node) {
+		chip = &nand->chip;
+		for (i = 0; i < nand->nsels; i++)
+			nand_reset(chip, i);
+	}
+
+	return 0;
+}
+
+static const struct dev_pm_ops rk_nfc_pm_ops = {
+	SET_SYSTEM_SLEEP_PM_OPS(rk_nfc_suspend, rk_nfc_resume)
+};
+
+static struct platform_driver rk_nfc_driver = {
+	.probe = rk_nfc_probe,
+	.remove = rk_nfc_remove,
+	.driver = {
+		.name = "rockchip-nfc",
+		.of_match_table = rk_nfc_id_table,
+		.pm = &rk_nfc_pm_ops,
+	},
+};
+
+module_platform_driver(rk_nfc_driver);
+
+MODULE_LICENSE("Dual MIT/GPL");
+MODULE_AUTHOR("Yifeng Zhao <yifeng.zhao@rock-chips.com>");
+MODULE_DESCRIPTION("Rockchip Nand Flash Controller Driver");
+MODULE_ALIAS("platform:rockchip-nand-controller");
-- 
2.17.1




______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
