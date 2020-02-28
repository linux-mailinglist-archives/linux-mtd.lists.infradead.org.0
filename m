Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8043D173B4E
	for <lists+linux-mtd@lfdr.de>; Fri, 28 Feb 2020 16:24:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Q4zY60/+VIFUe7c7JRvjT+27ll8TUD9f1GYhokAqA8=; b=XibbztdozYPc3f
	hCPBpSJy9oPogbgMlWqNAiCLqi0uWcCV6nmQi0z4r1ONdsRdoipbkEOfaQsIZd5gXO7V2GUK05bPB
	h/cB4o4JyBzDc6+tOohfgL0JefRBUId1LB3k+u7wJHQLhYvI6H81G7p08uok/PDlqvM4RBEzVlauF
	S3ri/9p3yceMgwo48+hjM8z1GlWVI52kYhbZPHJeceKUbEqSR4tCt5r5cmMmVEmQNlVIa36wqRhVy
	LBuL/eOQ1zxrnDOMnHhtmQjeO4aoKW573TtlKXUCa9eXhJ7aayb60HFkCwTacl+G1dYgEkQiXdkRH
	SbUZ7CzQKqTrSD3g+N+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7hV5-0005lp-Lj; Fri, 28 Feb 2020 15:24:27 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7hTy-0004mB-6m
 for linux-mtd@lists.infradead.org; Fri, 28 Feb 2020 15:23:19 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id E33A56AC8E6748186BEC;
 Fri, 28 Feb 2020 23:22:53 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS414-HUB.china.huawei.com (10.3.19.214) with Microsoft SMTP Server id
 14.3.439.0; Fri, 28 Feb 2020 23:22:44 +0800
From: John Garry <john.garry@huawei.com>
To: <broonie@kernel.org>
Subject: [PATCH RFC 3/3] spi: HiSilicon v3xx: Use DMI quirk to set controller
 buswidth override bits
Date: Fri, 28 Feb 2020 23:18:51 +0800
Message-ID: <1582903131-160033-4-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1582903131-160033-1-git-send-email-john.garry@huawei.com>
References: <1582903131-160033-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_072318_430350_08E9C11F 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: John Garry <john.garry@huawei.com>, linux-spi@vger.kernel.org,
 linuxarm@huawei.com, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, andriy.shevchenko@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The Huawei D06 board (and variants) can support Quad mode of operation.

Since we have no current method in ACPI SPI bus device resource description
to describe this information, use DMI to detect the board, and set the
controller buswidth override bits.

Signed-off-by: John Garry <john.garry@huawei.com>
---
 drivers/spi/spi-hisi-sfc-v3xx.c | 56 ++++++++++++++++++++++++++++++++-
 1 file changed, 55 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi-hisi-sfc-v3xx.c b/drivers/spi/spi-hisi-sfc-v3xx.c
index 45d906110ed1..e3b57252d075 100644
--- a/drivers/spi/spi-hisi-sfc-v3xx.c
+++ b/drivers/spi/spi-hisi-sfc-v3xx.c
@@ -7,6 +7,7 @@
 
 #include <linux/acpi.h>
 #include <linux/bitops.h>
+#include <linux/dmi.h>
 #include <linux/iopoll.h>
 #include <linux/module.h>
 #include <linux/platform_device.h>
@@ -250,6 +251,44 @@ static const struct spi_controller_mem_ops hisi_sfc_v3xx_mem_ops = {
 	.exec_op = hisi_sfc_v3xx_exec_op,
 };
 
+static int hisi_sfc_v3xx_buswidth_override_bits;
+
+/*
+ * ACPI FW does not allow us to currently set the device buswidth, so quirk it
+ * depending on the board.
+ */
+static int __init hisi_sfc_v3xx_dmi_quirk(const struct dmi_system_id *d)
+{
+	hisi_sfc_v3xx_buswidth_override_bits = SPI_RX_QUAD | SPI_TX_QUAD;
+
+	return 0;
+}
+
+static const struct dmi_system_id hisi_sfc_v3xx_dmi_quirk_table[]  = {
+	{
+	.callback = hisi_sfc_v3xx_dmi_quirk,
+	.matches = {
+		DMI_MATCH(DMI_SYS_VENDOR, "Huawei"),
+		DMI_MATCH(DMI_PRODUCT_NAME, "D06"),
+	},
+	},
+	{
+	.callback = hisi_sfc_v3xx_dmi_quirk,
+	.matches = {
+		DMI_MATCH(DMI_SYS_VENDOR, "Huawei"),
+		DMI_MATCH(DMI_PRODUCT_NAME, "TaiShan 2280 V2"),
+	},
+	},
+	{
+	.callback = hisi_sfc_v3xx_dmi_quirk,
+	.matches = {
+		DMI_MATCH(DMI_SYS_VENDOR, "Huawei"),
+		DMI_MATCH(DMI_PRODUCT_NAME, "TaiShan 200 (Model 2280)"),
+	},
+	},
+	{}
+};
+
 static int hisi_sfc_v3xx_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -265,6 +304,8 @@ static int hisi_sfc_v3xx_probe(struct platform_device *pdev)
 	ctlr->mode_bits = SPI_RX_DUAL | SPI_RX_QUAD |
 			  SPI_TX_DUAL | SPI_TX_QUAD;
 
+	ctlr->buswidth_override_bits = hisi_sfc_v3xx_buswidth_override_bits;
+
 	host = spi_controller_get_devdata(ctlr);
 	host->dev = dev;
 
@@ -320,7 +361,20 @@ static struct platform_driver hisi_sfc_v3xx_spi_driver = {
 	.probe	= hisi_sfc_v3xx_probe,
 };
 
-module_platform_driver(hisi_sfc_v3xx_spi_driver);
+static int __init hisi_sfc_v3xx_spi_init(void)
+{
+	dmi_check_system(hisi_sfc_v3xx_dmi_quirk_table);
+
+	return platform_driver_register(&hisi_sfc_v3xx_spi_driver);
+}
+
+static void __exit hisi_sfc_v3xx_spi_exit(void)
+{
+	platform_driver_unregister(&hisi_sfc_v3xx_spi_driver);
+}
+
+module_init(hisi_sfc_v3xx_spi_init);
+module_exit(hisi_sfc_v3xx_spi_exit);
 
 MODULE_LICENSE("GPL");
 MODULE_AUTHOR("John Garry <john.garry@huawei.com>");
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
