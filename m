Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F3D418F7F5
	for <lists+linux-mtd@lfdr.de>; Mon, 23 Mar 2020 16:00:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=30D301lmxLM86vO6gynY2OEPm6d3aRuOxYoHOg1oEdA=; b=M/5U1y2SVt0Xph
	ZT81pFYSi9eKpPmComQfL2JO6WSJkhVt8h3USW0NQMqMnBmhBv0we/Uv/wH7yISIggc2h11EoWr/4
	4jHYdSTMQhdbKIg8QCIfstCJGkKu45FIsRbcR2UVoee90FArEEsJK02M+1wuWgRLK04z3nbRsby5m
	juSNho6fMcQl6XR46uWZ/1KLfu+p7b7TyicGANzDPU8DWunOsO3ubD/mu7VQVnxMJsQv+sZnjc+2p
	htjQYDFb0q5/NY4VZaFCACmwyWDMhuXPN2SLaQaQ9O/OzW2BBF6Qw5VBsZFy4sm8VKn1p3WANZW1f
	yF3tWJ4jFJMuppkzUFqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGOZB-00082c-AB; Mon, 23 Mar 2020 15:00:37 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGOYL-0007W9-VA
 for linux-mtd@lists.infradead.org; Mon, 23 Mar 2020 14:59:48 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02NEcdc9020191; Mon, 23 Mar 2020 15:59:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=iVFCth3cItjeF/7xPWTjcqjJCMHUx9HuD0DFGnDBFIY=;
 b=RdJJE/M+bvFK7p78dQTKHA5TZ4du6o9Lwz+kGOoRxC+Ib4yKN6dJhsFCtD5Np85vydrq
 Jt8fA9MvoixVOxv44EAm32GvXjjOQaui0WYe2iK4uJYDptX9S0qRk+5yaODTuuQQVdhh
 whSu22RNoFrTqGVx6pXosArAXyYbqJiEQXlK1N0X1qjozbgu6nJli8EYWquET4LVixc+
 fhxSQ5PkkpxQqEPxirROG90FyitHP7428JCY5D4JXhAtJAGLwaGDZQhKojCxxuHe/gKG
 DbxwhzaJbHuJgYK8FYs4w+B5Xm0BOKwquBeWiHi4FCBkbJpeLNzTwARof4JzONW9zmD9 /Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yw9jytgeb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 23 Mar 2020 15:59:36 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 630C810002A;
 Mon, 23 Mar 2020 15:59:36 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 4DAC522193C;
 Mon, 23 Mar 2020 15:59:36 +0100 (CET)
Received: from localhost (10.75.127.45) by SFHDAG6NODE2.st.com (10.75.127.17)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Mon, 23 Mar 2020 15:59:34 +0100
From: Christophe Kerello <christophe.kerello@st.com>
To: <miquel.raynal@bootlin.com>, <richard@nod.at>, <vigneshr@ti.com>,
 <lee.jones@linaro.org>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <tony@atomide.com>
Subject: [02/12] mfd: stm32-fmc2: add STM32 FMC2 controller driver
Date: Mon, 23 Mar 2020 15:58:42 +0100
Message-ID: <1584975532-8038-3-git-send-email-christophe.kerello@st.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1584975532-8038-1-git-send-email-christophe.kerello@st.com>
References: <1584975532-8038-1-git-send-email-christophe.kerello@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG1NODE1.st.com (10.75.127.1) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.645
 definitions=2020-03-23_05:2020-03-21,
 2020-03-23 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_075946_324941_29C47033 
X-CRM114-Status: GOOD (  21.17  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: marex@denx.de, Christophe Kerello <christophe.kerello@st.com>,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The driver adds the support for the STMicroelectronics FMC2 controller
found on STM32MP SOCs.

The FMC2 functional block makes the interface with: synchronous and
asynchronous static memories (such as PSNOR, PSRAM or other
memory-mapped peripherals) and NAND flash memories.

Signed-off-by: Christophe Kerello <christophe.kerello@st.com>
---
 drivers/mfd/Kconfig            |  12 +++
 drivers/mfd/Makefile           |   1 +
 drivers/mfd/stm32-fmc2.c       | 120 ++++++++++++++++++++++
 include/linux/mfd/stm32-fmc2.h | 226 +++++++++++++++++++++++++++++++++++++++++
 4 files changed, 359 insertions(+)
 create mode 100644 drivers/mfd/stm32-fmc2.c
 create mode 100644 include/linux/mfd/stm32-fmc2.h

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 2b20329..5260582 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -1922,6 +1922,18 @@ config MFD_ROHM_BD71828
 	  Also included is a Coulomb counter, a real-time clock (RTC), and
 	  a 32.768 kHz clock gate.
 
+config MFD_STM32_FMC2
+	tristate "Support for FMC2 controllers on STM32MP SoCs"
+	depends on MACH_STM32MP157 || COMPILE_TEST
+	select MFD_CORE
+	select REGMAP
+	select REGMAP_MMIO
+	help
+	  Select this option to enable STM32 FMC2 driver used for FMC2 External
+	  Bus Interface controller and FMC2 NAND flash controller. This driver
+	  provides core support for the STM32 FMC2 controllers, in order to use
+	  the actual functionality of the device other drivers must be enabled.
+
 config MFD_STM32_LPTIMER
 	tristate "Support for STM32 Low-Power Timer"
 	depends on (ARCH_STM32 && OF) || COMPILE_TEST
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index b83f172..880de3c 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -256,5 +256,6 @@ obj-$(CONFIG_MFD_ROHM_BD70528)	+= rohm-bd70528.o
 obj-$(CONFIG_MFD_ROHM_BD71828)	+= rohm-bd71828.o
 obj-$(CONFIG_MFD_ROHM_BD718XX)	+= rohm-bd718x7.o
 obj-$(CONFIG_MFD_STMFX) 	+= stmfx.o
+obj-$(CONFIG_MFD_STM32_FMC2) 	+= stm32-fmc2.o
 
 obj-$(CONFIG_SGI_MFD_IOC3)	+= ioc3.o
diff --git a/drivers/mfd/stm32-fmc2.c b/drivers/mfd/stm32-fmc2.c
new file mode 100644
index 0000000..975fbd3
--- /dev/null
+++ b/drivers/mfd/stm32-fmc2.c
@@ -0,0 +1,120 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) STMicroelectronics 2020
+ */
+
+#include <linux/mfd/stm32-fmc2.h>
+#include <linux/module.h>
+#include <linux/of_platform.h>
+#include <linux/pinctrl/consumer.h>
+#include <linux/reset.h>
+
+/* Regmap registers configuration */
+#define FMC2_MAX_REGISTER		0x3fc
+
+static const struct regmap_config stm32_fmc2_regmap_cfg = {
+	.reg_bits = 32,
+	.val_bits = 32,
+	.reg_stride = sizeof(u32),
+	.max_register = FMC2_MAX_REGISTER,
+};
+
+static void stm32_fmc2_enable(struct stm32_fmc2 *fmc2)
+{
+	if (atomic_inc_return(&fmc2->nb_ctrl_used) == 1)
+		regmap_update_bits(fmc2->regmap, FMC2_BCR1,
+				   FMC2_BCR1_FMC2EN, FMC2_BCR1_FMC2EN);
+}
+
+static void stm32_fmc2_disable(struct stm32_fmc2 *fmc2)
+{
+	if (atomic_dec_and_test(&fmc2->nb_ctrl_used))
+		regmap_update_bits(fmc2->regmap, FMC2_BCR1,
+				   FMC2_BCR1_FMC2EN, 0);
+}
+
+static int stm32_fmc2_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct reset_control *rstc;
+	struct stm32_fmc2 *fmc2;
+	struct resource *res;
+	void __iomem *mmio;
+	int ret;
+
+	fmc2 = devm_kzalloc(dev, sizeof(*fmc2), GFP_KERNEL);
+	if (!fmc2)
+		return -ENOMEM;
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	mmio = devm_ioremap_resource(dev, res);
+	if (IS_ERR(mmio))
+		return PTR_ERR(mmio);
+
+	fmc2->regmap = devm_regmap_init_mmio(dev, mmio,
+					     &stm32_fmc2_regmap_cfg);
+	if (IS_ERR(fmc2->regmap))
+		return PTR_ERR(fmc2->regmap);
+
+	fmc2->reg_phys_addr = res->start;
+
+	fmc2->clk = devm_clk_get(dev, NULL);
+	if (IS_ERR(fmc2->clk))
+		return PTR_ERR(fmc2->clk);
+
+	rstc = devm_reset_control_get(dev, NULL);
+	if (PTR_ERR(rstc) == -EPROBE_DEFER)
+		return -EPROBE_DEFER;
+
+	ret = clk_prepare_enable(fmc2->clk);
+	if (ret)
+		return ret;
+
+	if (!IS_ERR(rstc)) {
+		reset_control_assert(rstc);
+		reset_control_deassert(rstc);
+	}
+
+	fmc2->enable = stm32_fmc2_enable;
+	fmc2->disable = stm32_fmc2_disable;
+
+	platform_set_drvdata(pdev, fmc2);
+
+	clk_disable_unprepare(fmc2->clk);
+
+	return devm_of_platform_populate(dev);
+}
+
+static int __maybe_unused stm32_fmc2_suspend(struct device *dev)
+{
+	return pinctrl_pm_select_sleep_state(dev);
+}
+
+static int __maybe_unused stm32_fmc2_resume(struct device *dev)
+{
+	return pinctrl_pm_select_default_state(dev);
+}
+
+static SIMPLE_DEV_PM_OPS(stm32_fmc2_pm_ops, stm32_fmc2_suspend,
+			 stm32_fmc2_resume);
+
+static const struct of_device_id stm32_fmc2_match[] = {
+	{.compatible = "st,stm32mp1-fmc2"},
+	{}
+};
+MODULE_DEVICE_TABLE(of, stm32_fmc2_match);
+
+static struct platform_driver stm32_fmc2_driver = {
+	.probe	= stm32_fmc2_probe,
+	.driver	= {
+		.name = "stm32_fmc2",
+		.of_match_table = stm32_fmc2_match,
+		.pm = &stm32_fmc2_pm_ops,
+	},
+};
+module_platform_driver(stm32_fmc2_driver);
+
+MODULE_ALIAS("platform:stm32_fmc2");
+MODULE_AUTHOR("Christophe Kerello <christophe.kerello@st.com>");
+MODULE_DESCRIPTION("STMicroelectronics STM32 FMC2 driver");
+MODULE_LICENSE("GPL v2");
diff --git a/include/linux/mfd/stm32-fmc2.h b/include/linux/mfd/stm32-fmc2.h
new file mode 100644
index 0000000..bd623a3
--- /dev/null
+++ b/include/linux/mfd/stm32-fmc2.h
@@ -0,0 +1,226 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) STMicroelectronics 2020
+ */
+
+#ifndef _LINUX_STM32_FMC2_H_
+#define _LINUX_STM32_FMC2_H_
+
+#include <linux/atomic.h>
+#include <linux/bitfield.h>
+#include <linux/clk.h>
+#include <linux/regmap.h>
+
+/* FMC2 Controller Registers */
+#define FMC2_BCR1			0x0
+#define FMC2_BTR1			0x4
+#define FMC2_BCR(x)			((x) * 0x8 + FMC2_BCR1)
+#define FMC2_BTR(x)			((x) * 0x8 + FMC2_BTR1)
+#define FMC2_PCSCNTR			0x20
+#define FMC2_PCR			0x80
+#define FMC2_SR				0x84
+#define FMC2_PMEM			0x88
+#define FMC2_PATT			0x8c
+#define FMC2_HECCR			0x94
+#define FMC2_BWTR1			0x104
+#define FMC2_BWTR(x)			((x) * 0x8 + FMC2_BWTR1)
+#define FMC2_ISR			0x184
+#define FMC2_ICR			0x188
+#define FMC2_CSQCR			0x200
+#define FMC2_CSQCFGR1			0x204
+#define FMC2_CSQCFGR2			0x208
+#define FMC2_CSQCFGR3			0x20c
+#define FMC2_CSQAR1			0x210
+#define FMC2_CSQAR2			0x214
+#define FMC2_CSQIER			0x220
+#define FMC2_CSQISR			0x224
+#define FMC2_CSQICR			0x228
+#define FMC2_CSQEMSR			0x230
+#define FMC2_BCHIER			0x250
+#define FMC2_BCHISR			0x254
+#define FMC2_BCHICR			0x258
+#define FMC2_BCHPBR1			0x260
+#define FMC2_BCHPBR2			0x264
+#define FMC2_BCHPBR3			0x268
+#define FMC2_BCHPBR4			0x26c
+#define FMC2_BCHDSR0			0x27c
+#define FMC2_BCHDSR1			0x280
+#define FMC2_BCHDSR2			0x284
+#define FMC2_BCHDSR3			0x288
+#define FMC2_BCHDSR4			0x28c
+
+/* Register: FMC2_BCR1 */
+#define FMC2_BCR1_CCLKEN		BIT(20)
+#define FMC2_BCR1_FMC2EN		BIT(31)
+
+/* Register: FMC2_BCRx */
+#define FMC2_BCR_MBKEN			BIT(0)
+#define FMC2_BCR_MUXEN			BIT(1)
+#define FMC2_BCR_MTYP			GENMASK(3, 2)
+#define FMC2_BCR_MWID			GENMASK(5, 4)
+#define FMC2_BCR_FACCEN			BIT(6)
+#define FMC2_BCR_BURSTEN		BIT(8)
+#define FMC2_BCR_WAITPOL		BIT(9)
+#define FMC2_BCR_WAITCFG		BIT(11)
+#define FMC2_BCR_WREN			BIT(12)
+#define FMC2_BCR_WAITEN			BIT(13)
+#define FMC2_BCR_EXTMOD			BIT(14)
+#define FMC2_BCR_ASYNCWAIT		BIT(15)
+#define FMC2_BCR_CPSIZE			GENMASK(18, 16)
+#define FMC2_BCR_CBURSTRW		BIT(19)
+#define FMC2_BCR_NBLSET			GENMASK(23, 22)
+
+/* Register: FMC2_BTRx/FMC2_BWTRx */
+#define FMC2_BXTR_ADDSET		GENMASK(3, 0)
+#define FMC2_BXTR_ADDHLD		GENMASK(7, 4)
+#define FMC2_BXTR_DATAST		GENMASK(15, 8)
+#define FMC2_BXTR_BUSTURN		GENMASK(19, 16)
+#define FMC2_BTR_CLKDIV			GENMASK(23, 20)
+#define FMC2_BTR_DATLAT			GENMASK(27, 24)
+#define FMC2_BXTR_ACCMOD		GENMASK(29, 28)
+#define FMC2_BXTR_DATAHLD		GENMASK(31, 30)
+
+/* Register: FMC2_PCSCNTR */
+#define FMC2_PCSCNTR_CSCOUNT		GENMASK(15, 0)
+#define FMC2_PCSCNTR_CNTBEN(x)		BIT((x) + 16)
+
+/* Register: FMC2_PCR */
+#define FMC2_PCR_PWAITEN		BIT(1)
+#define FMC2_PCR_PBKEN			BIT(2)
+#define FMC2_PCR_PWID			GENMASK(5, 4)
+#define FMC2_PCR_PWID_BUSWIDTH_8	0
+#define FMC2_PCR_PWID_BUSWIDTH_16	1
+#define FMC2_PCR_ECCEN			BIT(6)
+#define FMC2_PCR_ECCALG			BIT(8)
+#define FMC2_PCR_TCLR			GENMASK(12, 9)
+#define FMC2_PCR_TCLR_DEFAULT		0xf
+#define FMC2_PCR_TAR			GENMASK(16, 13)
+#define FMC2_PCR_TAR_DEFAULT		0xf
+#define FMC2_PCR_ECCSS			GENMASK(19, 17)
+#define FMC2_PCR_ECCSS_512		1
+#define FMC2_PCR_ECCSS_2048		3
+#define FMC2_PCR_BCHECC			BIT(24)
+#define FMC2_PCR_WEN			BIT(25)
+
+/* Register: FMC2_SR */
+#define FMC2_SR_NWRF			BIT(6)
+
+/* Register: FMC2_PMEM */
+#define FMC2_PMEM_MEMSET		GENMASK(7, 0)
+#define FMC2_PMEM_MEMWAIT		GENMASK(15, 8)
+#define FMC2_PMEM_MEMHOLD		GENMASK(23, 16)
+#define FMC2_PMEM_MEMHIZ		GENMASK(31, 24)
+
+/* Register: FMC2_PATT */
+#define FMC2_PATT_ATTSET		GENMASK(7, 0)
+#define FMC2_PATT_ATTWAIT		GENMASK(15, 8)
+#define FMC2_PATT_ATTHOLD		GENMASK(23, 16)
+#define FMC2_PATT_ATTHIZ		GENMASK(31, 24)
+
+/* Register: FMC2_ISR */
+#define FMC2_ISR_IHLF			BIT(1)
+
+/* Register: FMC2_ICR */
+#define FMC2_ICR_CIHLF			BIT(1)
+
+/* Register: FMC2_CSQCR */
+#define FMC2_CSQCR_CSQSTART		BIT(0)
+
+/* Register: FMC2_CSQCFGR1 */
+#define FMC2_CSQCFGR1_CMD2EN		BIT(1)
+#define FMC2_CSQCFGR1_DMADEN		BIT(2)
+#define FMC2_CSQCFGR1_ACYNBR		GENMASK(6, 4)
+#define FMC2_CSQCFGR1_CMD1		GENMASK(15, 8)
+#define FMC2_CSQCFGR1_CMD2		GENMASK(23, 16)
+#define FMC2_CSQCFGR1_CMD1T		BIT(24)
+#define FMC2_CSQCFGR1_CMD2T		BIT(25)
+
+/* Register: FMC2_CSQCFGR2 */
+#define FMC2_CSQCFGR2_SQSDTEN		BIT(0)
+#define FMC2_CSQCFGR2_RCMD2EN		BIT(1)
+#define FMC2_CSQCFGR2_DMASEN		BIT(2)
+#define FMC2_CSQCFGR2_RCMD1		GENMASK(15, 8)
+#define FMC2_CSQCFGR2_RCMD2		GENMASK(23, 16)
+#define FMC2_CSQCFGR2_RCMD1T		BIT(24)
+#define FMC2_CSQCFGR2_RCMD2T		BIT(25)
+
+/* Register: FMC2_CSQCFGR3 */
+#define FMC2_CSQCFGR3_SNBR		GENMASK(13, 8)
+#define FMC2_CSQCFGR3_AC1T		BIT(16)
+#define FMC2_CSQCFGR3_AC2T		BIT(17)
+#define FMC2_CSQCFGR3_AC3T		BIT(18)
+#define FMC2_CSQCFGR3_AC4T		BIT(19)
+#define FMC2_CSQCFGR3_AC5T		BIT(20)
+#define FMC2_CSQCFGR3_SDT		BIT(21)
+#define FMC2_CSQCFGR3_RAC1T		BIT(22)
+#define FMC2_CSQCFGR3_RAC2T		BIT(23)
+
+/* Register: FMC2_CSQCAR1 */
+#define FMC2_CSQCAR1_ADDC1		GENMASK(7, 0)
+#define FMC2_CSQCAR1_ADDC2		GENMASK(15, 8)
+#define FMC2_CSQCAR1_ADDC3		GENMASK(23, 16)
+#define FMC2_CSQCAR1_ADDC4		GENMASK(31, 24)
+
+/* Register: FMC2_CSQCAR2 */
+#define FMC2_CSQCAR2_ADDC5		GENMASK(7, 0)
+#define FMC2_CSQCAR2_NANDCEN		GENMASK(11, 10)
+#define FMC2_CSQCAR2_SAO		GENMASK(31, 16)
+
+/* Register: FMC2_CSQIER */
+#define FMC2_CSQIER_TCIE		BIT(0)
+
+/* Register: FMC2_CSQICR */
+#define FMC2_CSQICR_CLEAR_IRQ		GENMASK(4, 0)
+
+/* Register: FMC2_CSQEMSR */
+#define FMC2_CSQEMSR_SEM		GENMASK(15, 0)
+
+/* Register: FMC2_BCHIER */
+#define FMC2_BCHIER_DERIE		BIT(1)
+#define FMC2_BCHIER_EPBRIE		BIT(4)
+
+/* Register: FMC2_BCHICR */
+#define FMC2_BCHICR_CLEAR_IRQ		GENMASK(4, 0)
+
+/* Register: FMC2_BCHDSR0 */
+#define FMC2_BCHDSR0_DUE		BIT(0)
+#define FMC2_BCHDSR0_DEF		BIT(1)
+#define FMC2_BCHDSR0_DEN		GENMASK(7, 4)
+
+/* Register: FMC2_BCHDSR1 */
+#define FMC2_BCHDSR1_EBP1		GENMASK(12, 0)
+#define FMC2_BCHDSR1_EBP2		GENMASK(28, 16)
+
+/* Register: FMC2_BCHDSR2 */
+#define FMC2_BCHDSR2_EBP3		GENMASK(12, 0)
+#define FMC2_BCHDSR2_EBP4		GENMASK(28, 16)
+
+/* Register: FMC2_BCHDSR3 */
+#define FMC2_BCHDSR3_EBP5		GENMASK(12, 0)
+#define FMC2_BCHDSR3_EBP6		GENMASK(28, 16)
+
+/* Register: FMC2_BCHDSR4 */
+#define FMC2_BCHDSR4_EBP7		GENMASK(12, 0)
+#define FMC2_BCHDSR4_EBP8		GENMASK(28, 16)
+
+/*
+ * struct stm32_fmc2 - STM32 FMC2 data assigned by parent device
+ * @clk: clock reference for this instance
+ * @regmap: register map reference for this instance
+ * @reg_phys_addr: physical address of the register map
+ * @nb_ctrl_used: number of used controller
+ * @nwait_is_used: NWAIT signal in used by a controller
+ * @enable: enable the FMC2 IP
+ * @disable: disable the FMC2 IP
+ */
+struct stm32_fmc2 {
+	struct clk *clk;
+	struct regmap *regmap;
+	phys_addr_t reg_phys_addr;
+	atomic_t nb_ctrl_used;
+	atomic_t nwait_is_used;
+	void (*enable)(struct stm32_fmc2 *fmc2);
+	void (*disable)(struct stm32_fmc2 *fmc2);
+};
+
+#endif
-- 
1.9.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
