Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 181321ED16B
	for <lists+linux-mtd@lfdr.de>; Wed,  3 Jun 2020 15:52:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YvrZM7AoF9sz3Viag//3oxW+0WOH8UGCJxAvWbIrxmo=; b=OakVPVS+UGq6eq
	o/0fhw8HNrjmaNSt9TJBM2WZHpKXMefnW3wbjfdeQDYpNuP4XJwM/3/PM55GZatVIC2tL6G0hLHiD
	GCYDfteO5mn9MR+IWZokAn58lI9wM7ZZldcRLXFy+/9BxITjb7Btt5fycEC0VKUTyjeY8Hyp3NF+Z
	l7VFtuydlnzIvvkScx+OFs/yrl7XbSSb3OgasD66zxgxGDHfiERIx5FAEsBpWCSD+Yjt/ohktPajI
	aE/V32XXz+EfEGuBkfxINZm9SQWeiKM4Gp0Iil8jBG7saN2JFuf9EGglOn3ZoCyxuQQ9gzO68G9ex
	dATjmsWyrynGS14161mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgToO-0006Dm-Q9; Wed, 03 Jun 2020 13:52:08 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgTlq-0001jn-Ce
 for linux-mtd@lists.infradead.org; Wed, 03 Jun 2020 13:49:33 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 360E42A3D74;
 Wed,  3 Jun 2020 14:49:28 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Anton Vorontsov <anton@enomsg.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org
Subject: [PATCH 06/10] mtd: rawnand: fsl_upm: Use gpio descriptors
Date: Wed,  3 Jun 2020 15:49:18 +0200
Message-Id: <20200603134922.1352340-7-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200603134922.1352340-1-boris.brezillon@collabora.com>
References: <20200603134922.1352340-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_064930_595251_7D360E53 
X-CRM114-Status: GOOD (  17.35  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The integer-based GPIO ids are now deprecated in favor of the GPIO desc
API. The PPC platforms have already been converted to GPIOLIB, so let's
use gpio descs in the NAND driver too.

While at it, we use devm_gpiod_get_index_optional() so we can get rid
of the manual gpio desc release done in the init error path and in the
remove function.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/mtd/nand/raw/fsl_upm.c | 44 ++++++++--------------------------
 1 file changed, 10 insertions(+), 34 deletions(-)

diff --git a/drivers/mtd/nand/raw/fsl_upm.c b/drivers/mtd/nand/raw/fsl_upm.c
index 54851e9ea784..977b7aad419b 100644
--- a/drivers/mtd/nand/raw/fsl_upm.c
+++ b/drivers/mtd/nand/raw/fsl_upm.c
@@ -15,7 +15,6 @@
 #include <linux/mtd/partitions.h>
 #include <linux/mtd/mtd.h>
 #include <linux/of_platform.h>
-#include <linux/of_gpio.h>
 #include <linux/io.h>
 #include <linux/slab.h>
 #include <asm/fsl_lbc.h>
@@ -32,7 +31,7 @@ struct fsl_upm_nand {
 	uint8_t upm_addr_offset;
 	uint8_t upm_cmd_offset;
 	void __iomem *io_base;
-	int rnb_gpio[NAND_MAX_CHIPS];
+	struct gpio_desc *rnb_gpio[NAND_MAX_CHIPS];
 	uint32_t mchip_offsets[NAND_MAX_CHIPS];
 	uint32_t mchip_count;
 	uint32_t mchip_number;
@@ -50,7 +49,7 @@ static int fun_chip_ready(struct nand_chip *chip)
 {
 	struct fsl_upm_nand *fun = to_fsl_upm_nand(nand_to_mtd(chip));
 
-	if (gpio_get_value(fun->rnb_gpio[fun->mchip_number]))
+	if (gpiod_get_value(fun->rnb_gpio[fun->mchip_number]))
 		return 1;
 
 	dev_vdbg(fun->dev, "busy\n");
@@ -165,7 +164,7 @@ static int fun_chip_init(struct fsl_upm_nand *fun,
 	if (fun->mchip_count > 1)
 		fun->chip.legacy.select_chip = fun_select_chip;
 
-	if (fun->rnb_gpio[0] >= 0)
+	if (!fun->rnb_gpio[0])
 		fun->chip.legacy.dev_ready = fun_chip_ready;
 
 	mtd->dev.parent = fun->dev;
@@ -198,7 +197,6 @@ static int fun_probe(struct platform_device *ofdev)
 	struct fsl_upm_nand *fun;
 	struct resource *io_res;
 	const __be32 *prop;
-	int rnb_gpio;
 	int ret;
 	int size;
 	int i;
@@ -248,20 +246,12 @@ static int fun_probe(struct platform_device *ofdev)
 	}
 
 	for (i = 0; i < fun->mchip_count; i++) {
-		fun->rnb_gpio[i] = -1;
-		rnb_gpio = of_get_gpio(ofdev->dev.of_node, i);
-		if (rnb_gpio >= 0) {
-			ret = gpio_request(rnb_gpio, dev_name(&ofdev->dev));
-			if (ret) {
-				dev_err(&ofdev->dev,
-					"can't request RNB gpio #%d\n", i);
-				goto err2;
-			}
-			gpio_direction_input(rnb_gpio);
-			fun->rnb_gpio[i] = rnb_gpio;
-		} else if (rnb_gpio == -EINVAL) {
+		fun->rnb_gpio[i] = devm_gpiod_get_index_optional(&ofdev->dev,
+								 NULL, i,
+								 GPIOD_IN);
+		if (IS_ERR(fun->rnb_gpio[i])) {
 			dev_err(&ofdev->dev, "RNB gpio #%d is invalid\n", i);
-			goto err2;
+			return PTR_ERR(fun->rnb_gpio[i]);
 		}
 	}
 
@@ -283,19 +273,11 @@ static int fun_probe(struct platform_device *ofdev)
 
 	ret = fun_chip_init(fun, ofdev->dev.of_node, io_res);
 	if (ret)
-		goto err2;
+		return ret;
 
 	dev_set_drvdata(&ofdev->dev, fun);
 
 	return 0;
-err2:
-	for (i = 0; i < fun->mchip_count; i++) {
-		if (fun->rnb_gpio[i] < 0)
-			break;
-		gpio_free(fun->rnb_gpio[i]);
-	}
-
-	return ret;
 }
 
 static int fun_remove(struct platform_device *ofdev)
@@ -303,18 +285,12 @@ static int fun_remove(struct platform_device *ofdev)
 	struct fsl_upm_nand *fun = dev_get_drvdata(&ofdev->dev);
 	struct nand_chip *chip = &fun->chip;
 	struct mtd_info *mtd = nand_to_mtd(chip);
-	int ret, i;
+	int ret;
 
 	ret = mtd_device_unregister(mtd);
 	WARN_ON(ret);
 	nand_cleanup(chip);
 
-	for (i = 0; i < fun->mchip_count; i++) {
-		if (fun->rnb_gpio[i] < 0)
-			break;
-		gpio_free(fun->rnb_gpio[i]);
-	}
-
 	return 0;
 }
 
-- 
2.25.4


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
