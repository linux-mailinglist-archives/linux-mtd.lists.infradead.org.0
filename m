Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5F91F7AD6
	for <lists+linux-mtd@lfdr.de>; Fri, 12 Jun 2020 17:25:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hrKtSWl73d9JcC/a2NjsFiT/VYdthh0vxrRoZcsyQNE=; b=lTcM8khYbQ59zW
	1ms5cWOAjc6u+tMXSntiHGAgyq3f82nwxh+yxIMhwSbV/dmK2FNkEppYKHmSduSQBaIHzWtkrPIw4
	t+FIjputrx+j90/tYTXxdKbjRpGhsBPlVoHS4kr/FXKuYGHRTPsqxj63OHbszOxDm3fXmoaHdkRNE
	oLqRDrQJ3JUGz4LUrp/b4k3H7ZNlT9OXe2jouDufk0MPxylOhb+ehYktdaw665rEqRSG9FSy2bUjg
	sPjUGnMsv97EfQpcyGpQ0GCb935XQMa1QB9wIuT4RBWwWmZp44YkBpNQh0P8TxGNgk5QL4JvOpex3
	5t1Vx5oMw17g6aQA+mGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjlYh-0004RX-UN; Fri, 12 Jun 2020 15:25:32 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjlXE-0002Xz-0K
 for linux-mtd@lists.infradead.org; Fri, 12 Jun 2020 15:24:02 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 05CFNRn7024867; Fri, 12 Jun 2020 17:23:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=VKuXtI+oKwLUbGWw0bK1JRaRMG7c04L0ar85aWbitOc=;
 b=pA/C8AGDVHHDnA4+i9JL3tWOgrZ5QY/f970LS1wVSI24PDDWLLFvU5VKGwVi5wMY6zi+
 k9lvDwGzI0ZOcL+TpGQTzq5d541qs7NU7hkFDJc9QrHGbGivXGdQlVV61A/wg79ZyDmh
 ja632V8yyTY5ypRh0n9XBuvKNJ9+7tn/IJB1qSMRGrgnTdHnIMUAxlR/IfgDFI9854L7
 P3JnEoMo10HdbFZ8tICb2z+Ntum8mqesLj0aIH4xfMbQHxo4fEsWhmJZ6z9Wj7Q+i3qB
 2IoWPwX1jQSmRXYpE1qDXFESUQ9OCad4ACXLsnR3PLq2vWliOKlapJeLm5+Q9sib02Js kw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 31jppp6g3g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 12 Jun 2020 17:23:54 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 1605C10002A;
 Fri, 12 Jun 2020 17:23:54 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 060BC2B9918;
 Fri, 12 Jun 2020 17:23:54 +0200 (CEST)
Received: from localhost (10.75.127.48) by SFHDAG6NODE2.st.com (10.75.127.17)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Fri, 12 Jun 2020 17:23:53 +0200
From: Christophe Kerello <christophe.kerello@st.com>
To: <miquel.raynal@bootlin.com>, <richard@nod.at>, <vigneshr@ti.com>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>, <arnd@linaro.org>,
 <alexandre.torgue@st.com>
Subject: [PATCH v5 6/6] mtd: rawnand: stm32_fmc2: get resources from parent
 node
Date: Fri, 12 Jun 2020 17:22:42 +0200
Message-ID: <1591975362-22009-7-git-send-email-christophe.kerello@st.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1591975362-22009-1-git-send-email-christophe.kerello@st.com>
References: <1591975362-22009-1-git-send-email-christophe.kerello@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG6NODE3.st.com (10.75.127.18) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-12_11:2020-06-12,
 2020-06-12 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_082400_404036_2F274A4E 
X-CRM114-Status: GOOD (  19.97  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
address and clock) can now be shared between the 2 drivers using
"st,stm32mp1-fmc2-nfc" compatible string. It means that the
common resources should now be found in the parent device when EBI
node is available.

Signed-off-by: Christophe Kerello <christophe.kerello@st.com>
---
Changes in v5:
 - look at the parent compatible string to match what we expect.

 drivers/mtd/nand/raw/Kconfig           |  3 +-
 drivers/mtd/nand/raw/stm32_fmc2_nand.c | 71 ++++++++++++++++++++++++----------
 2 files changed, 51 insertions(+), 23 deletions(-)

diff --git a/drivers/mtd/nand/raw/Kconfig b/drivers/mtd/nand/raw/Kconfig
index 0a03ebf..8dd0d7c 100644
--- a/drivers/mtd/nand/raw/Kconfig
+++ b/drivers/mtd/nand/raw/Kconfig
@@ -415,8 +415,7 @@ config MTD_NAND_TEGRA
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
index 6aa3695..396b325 100644
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
@@ -253,6 +245,7 @@ struct stm32_fmc2_nfc {
 	struct nand_controller base;
 	struct stm32_fmc2_nand nand;
 	struct device *dev;
+	struct device *cdev;
 	struct regmap *regmap;
 	void __iomem *data_base[FMC2_MAX_CE];
 	void __iomem *cmd_base[FMC2_MAX_CE];
@@ -1384,8 +1377,9 @@ static void stm32_fmc2_nfc_init(struct stm32_fmc2_nfc *nfc)
 	pcr |= FIELD_PREP(FMC2_PCR_TAR, FMC2_PCR_TAR_DEFAULT);
 
 	/* Enable FMC2 controller */
-	regmap_update_bits(nfc->regmap, FMC2_BCR1,
-			   FMC2_BCR1_FMC2EN, FMC2_BCR1_FMC2EN);
+	if (nfc->dev == nfc->cdev)
+		regmap_update_bits(nfc->regmap, FMC2_BCR1,
+				   FMC2_BCR1_FMC2EN, FMC2_BCR1_FMC2EN);
 
 	regmap_write(nfc->regmap, FMC2_PCR, pcr);
 	regmap_write(nfc->regmap, FMC2_PMEM, FMC2_PMEM_DEFAULT);
@@ -1815,6 +1809,33 @@ static int stm32_fmc2_nfc_parse_dt(struct stm32_fmc2_nfc *nfc)
 	return ret;
 }
 
+static int stm32_fmc2_nfc_set_cdev(struct stm32_fmc2_nfc *nfc)
+{
+	struct device *dev = nfc->dev;
+	bool ebi_found = false;
+
+	if (dev->parent && of_device_is_compatible(dev->parent->of_node,
+						   "st,stm32mp1-fmc2-ebi"))
+		ebi_found = true;
+
+	if (of_device_is_compatible(dev->of_node, "st,stm32mp1-fmc2-nfc")) {
+		if (ebi_found) {
+			nfc->cdev = dev->parent;
+
+			return 0;
+		}
+
+		return -EINVAL;
+	}
+
+	if (ebi_found)
+		return -EINVAL;
+
+	nfc->cdev = dev;
+
+	return 0;
+}
+
 static int stm32_fmc2_nfc_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -1824,8 +1845,9 @@ static int stm32_fmc2_nfc_probe(struct platform_device *pdev)
 	struct resource *res;
 	struct mtd_info *mtd;
 	struct nand_chip *chip;
-	void __iomem *mmio;
+	struct resource cres;
 	int chip_cs, mem_region, ret, irq;
+	int start_region = 0;
 
 	nfc = devm_kzalloc(dev, sizeof(*nfc), GFP_KERNEL);
 	if (!nfc)
@@ -1835,22 +1857,28 @@ static int stm32_fmc2_nfc_probe(struct platform_device *pdev)
 	nand_controller_init(&nfc->base);
 	nfc->base.ops = &stm32_fmc2_nfc_controller_ops;
 
+	ret = stm32_fmc2_nfc_set_cdev(nfc);
+	if (ret)
+		return ret;
+
 	ret = stm32_fmc2_nfc_parse_dt(nfc);
 	if (ret)
 		return ret;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	mmio = devm_ioremap_resource(dev, res);
-	if (IS_ERR(mmio))
-		return PTR_ERR(mmio);
+	ret = of_address_to_resource(nfc->cdev->of_node, 0, &cres);
+	if (ret)
+		return ret;
+
+	nfc->io_phys_addr = cres.start;
 
-	nfc->regmap = devm_regmap_init_mmio(dev, mmio, &stm32_fmc2_regmap_cfg);
+	nfc->regmap = device_node_to_regmap(nfc->cdev->of_node);
 	if (IS_ERR(nfc->regmap))
 		return PTR_ERR(nfc->regmap);
 
-	nfc->io_phys_addr = res->start;
+	if (nfc->dev == nfc->cdev)
+		start_region = 1;
 
-	for (chip_cs = 0, mem_region = 1; chip_cs < FMC2_MAX_CE;
+	for (chip_cs = 0, mem_region = start_region; chip_cs < FMC2_MAX_CE;
 	     chip_cs++, mem_region += 3) {
 		if (!(nfc->cs_assigned & BIT(chip_cs)))
 			continue;
@@ -1888,7 +1916,7 @@ static int stm32_fmc2_nfc_probe(struct platform_device *pdev)
 
 	init_completion(&nfc->complete);
 
-	nfc->clk = devm_clk_get(dev, NULL);
+	nfc->clk = devm_clk_get(nfc->cdev, NULL);
 	if (IS_ERR(nfc->clk))
 		return PTR_ERR(nfc->clk);
 
@@ -2029,6 +2057,7 @@ static SIMPLE_DEV_PM_OPS(stm32_fmc2_nfc_pm_ops, stm32_fmc2_nfc_suspend,
 
 static const struct of_device_id stm32_fmc2_nfc_match[] = {
 	{.compatible = "st,stm32mp15-fmc2"},
+	{.compatible = "st,stm32mp1-fmc2-nfc"},
 	{}
 };
 MODULE_DEVICE_TABLE(of, stm32_fmc2_nfc_match);
-- 
1.9.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
