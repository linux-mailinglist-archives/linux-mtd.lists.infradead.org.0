Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBEBC1C5EA1
	for <lists+linux-mtd@lfdr.de>; Tue,  5 May 2020 19:17:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e56aOYUjFkUAlfdkxfcc84dcWbi9LswTxKhJNFMTtH8=; b=An90J6YtlwH34D
	Er4D+jTtv5psljSsw9y6FjkDEtN3CXMmgHR8kDGeIiolzGiu1zUPc1fNOTx0lbnu0EmnuG+jyKB2L
	IzKAqVDJ1OpTDvtdpHsEzGuzo2fP4F2umSgSpytpg/7JrwGtx3j9SWaCH3SN2FW6FV1Q9Zvwc9iw7
	F99qwaDb/uHYi2GSsGgrZyaMDeZgmlwQ7jaSIzw4uK/WoeGk0w0pZ9VAcbso6Xza2+6kZ/vw35Lan
	rqv+jpMUILzJWzhVooqQHhsHaBeWQApL45zWA1Vw8LPrMRTTJGePYErXE9dZaDbg6PiZzAAs4QG8z
	m4481OQEQuJ0Bmfc22VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW1C8-0008Qv-6D; Tue, 05 May 2020 17:17:24 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW19D-0003rE-Gw
 for linux-mtd@lists.infradead.org; Tue, 05 May 2020 17:14:32 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 045Gw53F013112; Tue, 5 May 2020 19:14:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=MMKMMyzzzPUYk6uvJXUW0sOtOYv8aZUtFOljFKKKfZg=;
 b=vFlERtmK/mpE/cf9Tmd2ynhs6B9uccRcBgZ6rnKgautoq7IXNztYasVe+F/xqjSdUrrf
 viWmZovPZfavhxa5nJp08UrdAkmuX0WQobs49T3MfqJjLm0h3xqQpzFYbV7QkkQMUEuM
 M2I1GeL+7jXevtO/aR7/mYFVsateSxJq7DsVVH6pK1QaTdciwFMC7bLWXqWId/0gG7CO
 6hTa74rsSHpE2qfMjQJu0MqwbJazMCTGIE0zbPF/mE9zpMeSVflKxwQzxFb3ILSe3zJd
 KpqxGG09Piq5+bBM5BwgnLE9NqcDZ7o88MEpdun1sREn/Kt3EfPYXDOpMUrVbT2d0xlK ig== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30ryrj9dh9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 05 May 2020 19:14:17 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 6C15910002A;
 Tue,  5 May 2020 19:14:17 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 5BCA92B5A7A;
 Tue,  5 May 2020 19:14:17 +0200 (CEST)
Received: from localhost (10.75.127.47) by SFHDAG6NODE2.st.com (10.75.127.17)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Tue, 5 May 2020 19:14:16 +0200
From: Christophe Kerello <christophe.kerello@st.com>
To: <miquel.raynal@bootlin.com>, <richard@nod.at>, <vigneshr@ti.com>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <gregkh@linuxfoundation.org>, <boris.brezillon@collabora.com>
Subject: [PATCH v3 10/10] mtd: rawnand: stm32_fmc2: get resources from parent
 node
Date: Tue, 5 May 2020 19:11:08 +0200
Message-ID: <1588698668-25288-11-git-send-email-christophe.kerello@st.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1588698668-25288-1-git-send-email-christophe.kerello@st.com>
References: <1588698668-25288-1-git-send-email-christophe.kerello@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG4NODE2.st.com (10.75.127.11) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-05-05_09:2020-05-04,
 2020-05-05 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_101423_878361_80DB9AC3 
X-CRM114-Status: GOOD (  21.02  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: marex@denx.de, devicetree@vger.kernel.org,
 Christophe Kerello <christophe.kerello@st.com>, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

FMC2 EBI support has been added. Common resources (registers base
and clock) are now shared between the 2 drivers. It means that the
common resources should now be found in the parent device when EBI
node is available.

Signed-off-by: Christophe Kerello <christophe.kerello@st.com>
---
 drivers/mtd/nand/raw/Kconfig           |  3 +-
 drivers/mtd/nand/raw/stm32_fmc2_nand.c | 89 +++++++++++++++++++++++-----------
 2 files changed, 62 insertions(+), 30 deletions(-)

diff --git a/drivers/mtd/nand/raw/Kconfig b/drivers/mtd/nand/raw/Kconfig
index 12b715a..28dccd5 100644
--- a/drivers/mtd/nand/raw/Kconfig
+++ b/drivers/mtd/nand/raw/Kconfig
@@ -419,8 +419,7 @@ config MTD_NAND_TEGRA
 config MTD_NAND_STM32_FMC2
 	tristate "Support for NAND controller on STM32MP SoCs"
 	depends on MACH_STM32MP157 || COMPILE_TEST
-	select REGMAP
-	select REGMAP_MMIO
+	select MFD_SYSCON
 	help
 	  Enables support for NAND Flash chips on SoCs containing the FMC2
 	  NAND controller. This controller is found on STM32MP SoCs.
diff --git a/drivers/mtd/nand/raw/stm32_fmc2_nand.c b/drivers/mtd/nand/raw/stm32_fmc2_nand.c
index 76571da..dfab6b1 100644
--- a/drivers/mtd/nand/raw/stm32_fmc2_nand.c
+++ b/drivers/mtd/nand/raw/stm32_fmc2_nand.c
@@ -11,8 +11,10 @@
 #include <linux/errno.h>
 #include <linux/interrupt.h>
 #include <linux/iopoll.h>
+#include <linux/mfd/syscon.h>
 #include <linux/module.h>
 #include <linux/mtd/rawnand.h>
+#include <linux/of_address.h>
 #include <linux/pinctrl/consumer.h>
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
@@ -204,16 +206,6 @@
 #define FMC2_BCHDSR4_EBP7		GENMASK(12, 0)
 #define FMC2_BCHDSR4_EBP8		GENMASK(28, 16)
 
-/* Regmap registers configuration */
-#define FMC2_MAX_REGISTER		0x3fc
-
-static const struct regmap_config stm32_fmc2_regmap_cfg = {
-	.reg_bits = 32,
-	.val_bits = 32,
-	.reg_stride = sizeof(u32),
-	.max_register = FMC2_MAX_REGISTER,
-};
-
 enum stm32_fmc2_ecc {
 	FMC2_ECC_HAM = 1,
 	FMC2_ECC_BCH4 = 4,
@@ -261,6 +253,7 @@ struct stm32_fmc2_nfc {
 	phys_addr_t data_phys_addr[FMC2_MAX_CE];
 	struct clk *clk;
 	u8 irq_state;
+	bool has_parent;
 
 	struct dma_chan *dma_tx_ch;
 	struct dma_chan *dma_rx_ch;
@@ -1384,8 +1377,9 @@ static void stm32_fmc2_nfc_init(struct stm32_fmc2_nfc *nfc)
 	pcr |= FIELD_PREP(FMC2_PCR_TAR, FMC2_PCR_TAR_DEFAULT);
 
 	/* Enable FMC2 controller */
-	regmap_update_bits(nfc->regmap, FMC2_BCR1,
-			   FMC2_BCR1_FMC2EN, FMC2_BCR1_FMC2EN);
+	if (!nfc->has_parent)
+		regmap_update_bits(nfc->regmap, FMC2_BCR1,
+				   FMC2_BCR1_FMC2EN, FMC2_BCR1_FMC2EN);
 
 	regmap_write(nfc->regmap, FMC2_PCR, pcr);
 	regmap_write(nfc->regmap, FMC2_PMEM, FMC2_PMEM_DEFAULT);
@@ -1815,6 +1809,53 @@ static int stm32_fmc2_nfc_parse_dt(struct stm32_fmc2_nfc *nfc)
 	return ret;
 }
 
+static int stm32_fmc2_nfc_set_regmap_clk(struct platform_device *pdev,
+					 struct stm32_fmc2_nfc *nfc)
+{
+	struct device *dev = &pdev->dev;
+	struct resource res;
+	int ret;
+
+	if (nfc->has_parent)
+		dev = dev->parent;
+
+	ret = of_address_to_resource(dev->of_node, 0, &res);
+	if (ret)
+		return ret;
+
+	nfc->io_phys_addr = res.start;
+
+	nfc->regmap = device_node_to_regmap(dev->of_node);
+	if (IS_ERR(nfc->regmap))
+		return PTR_ERR(nfc->regmap);
+
+	nfc->clk = devm_clk_get(dev, NULL);
+	if (IS_ERR(nfc->clk))
+		return PTR_ERR(nfc->clk);
+
+	return 0;
+}
+
+static bool stm32_fmc2_nfc_check_for_parent(struct platform_device *pdev)
+{
+	u32 i;
+	int nb_resources = 0;
+
+	/* Count the number of resources in reg property */
+	for (i = 0; i < pdev->num_resources; i++) {
+		struct resource *res = &pdev->resource[i];
+
+		if (resource_type(res) == IORESOURCE_MEM)
+			nb_resources++;
+	}
+
+	/* Each CS needs 3 resources defined (data, cmd and addr) */
+	if (nb_resources % 3)
+		return false;
+
+	return true;
+}
+
 static int stm32_fmc2_nfc_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -1824,8 +1865,8 @@ static int stm32_fmc2_nfc_probe(struct platform_device *pdev)
 	struct resource *res;
 	struct mtd_info *mtd;
 	struct nand_chip *chip;
-	void __iomem *mmio;
 	int chip_cs, mem_region, ret, irq;
+	int num_region = 1;
 
 	nfc = devm_kzalloc(dev, sizeof(*nfc), GFP_KERNEL);
 	if (!nfc)
@@ -1834,23 +1875,19 @@ static int stm32_fmc2_nfc_probe(struct platform_device *pdev)
 	nfc->dev = dev;
 	nand_controller_init(&nfc->base);
 	nfc->base.ops = &stm32_fmc2_nfc_controller_ops;
+	nfc->has_parent = stm32_fmc2_nfc_check_for_parent(pdev);
+	if (nfc->has_parent)
+		num_region = 0;
 
 	ret = stm32_fmc2_nfc_parse_dt(nfc);
 	if (ret)
 		return ret;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	mmio = devm_ioremap_resource(dev, res);
-	if (IS_ERR(mmio))
-		return PTR_ERR(mmio);
-
-	nfc->regmap = devm_regmap_init_mmio(dev, mmio, &stm32_fmc2_regmap_cfg);
-	if (IS_ERR(nfc->regmap))
-		return PTR_ERR(nfc->regmap);
-
-	nfc->io_phys_addr = res->start;
+	ret = stm32_fmc2_nfc_set_regmap_clk(pdev, nfc);
+	if (ret)
+		return ret;
 
-	for (chip_cs = 0, mem_region = 1; chip_cs < FMC2_MAX_CE;
+	for (chip_cs = 0, mem_region = num_region; chip_cs < FMC2_MAX_CE;
 	     chip_cs++, mem_region += 3) {
 		if (!(nfc->cs_assigned & BIT(chip_cs)))
 			continue;
@@ -1888,10 +1925,6 @@ static int stm32_fmc2_nfc_probe(struct platform_device *pdev)
 
 	init_completion(&nfc->complete);
 
-	nfc->clk = devm_clk_get(dev, NULL);
-	if (IS_ERR(nfc->clk))
-		return PTR_ERR(nfc->clk);
-
 	ret = clk_prepare_enable(nfc->clk);
 	if (ret) {
 		dev_err(dev, "can not enable the clock\n");
-- 
1.9.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
