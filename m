Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9059A39188
	for <lists+linux-mtd@lfdr.de>; Fri,  7 Jun 2019 18:03:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7os7/M9FCrnOWXXzhCXt51VUGz/KVPJv/PSWBV695aw=; b=NJAlOeAu7oBsK5
	FnNwNAYVDgn7xcDKjh7v+X4TSMdylMGiWEGkNZPEjZTLuSRQhf+7NjF+YW5izv3D5VV/LGy6VBCTU
	C4tcHcIF8l9+nvz/iBYBFJV795nVYBkrMP9G2TmA2ARRh42iaXu16xDrjgloMQb2bJ9GrAjTVu1gg
	LA2SAEUzhlsNjA5KksHz4k+xwbMEsv4H80aIm9FMnA4RuhxQF/mIMaodqraebXWw2LeaaS8zvTW8n
	7aHpufCJG8FDQX4V3aWarArVLQkU1Qt5de7R7IpwqBWXyg47rKGcpxW1D1F80wpmhhdOPOv+NAXyR
	SZYs80P26g46+tI/ci/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZHKa-0007P0-08; Fri, 07 Jun 2019 16:03:04 +0000
Received: from outils.crapouillou.net ([89.234.176.41] helo=crapouillou.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZHKM-0007Ma-20
 for linux-mtd@lists.infradead.org; Fri, 07 Jun 2019 16:02:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
 s=mail; t=1559923362; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-transfer-encoding:content-transfer-encoding:
 in-reply-to:references; bh=zrjX+l5PeyKLlwgC655C0foBZhkNjJeOz8J5di0UnrI=;
 b=ijs4Q/Ek+i8vGOKkh0aUWY6sygKgckbDWaGyu7zHlO7vNHemPqLSYE7UvCs6JsJP2RVaH/
 XUiGLr99rSFwnkxgWzAcqgvS40xifWm7X/rBss1JEPa9styFktxNMbyoO0xwfnvPoYefVc
 KprUyBUI/K80kbW8NYHrIT74ByUv2UQ=
From: Paul Cercueil <paul@crapouillou.net>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>, Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH 1/2] mtd/rawnand: ingenic-ecc: Make probe function
 __init_or_module
Date: Fri,  7 Jun 2019 18:01:59 +0200
Message-Id: <20190607160200.16052-1-paul@crapouillou.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_090250_291256_144E9931 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Paul Cercueil <paul@crapouillou.net>, od@zcrc.me,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This allows the probe function to be dropped after the kernel finished
its initialization, in the case where the driver was not compiled as a
module.

Signed-off-by: Paul Cercueil <paul@crapouillou.net>
---
 drivers/mtd/nand/raw/ingenic/ingenic_ecc.c | 2 +-
 drivers/mtd/nand/raw/ingenic/ingenic_ecc.h | 3 ++-
 drivers/mtd/nand/raw/ingenic/jz4780_bch.c  | 2 +-
 3 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/raw/ingenic/ingenic_ecc.c b/drivers/mtd/nand/raw/ingenic/ingenic_ecc.c
index d3e085c5685a..74eff8fb5d32 100644
--- a/drivers/mtd/nand/raw/ingenic/ingenic_ecc.c
+++ b/drivers/mtd/nand/raw/ingenic/ingenic_ecc.c
@@ -124,7 +124,7 @@ void ingenic_ecc_release(struct ingenic_ecc *ecc)
 }
 EXPORT_SYMBOL(ingenic_ecc_release);
 
-int ingenic_ecc_probe(struct platform_device *pdev)
+int __init_or_module ingenic_ecc_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct ingenic_ecc *ecc;
diff --git a/drivers/mtd/nand/raw/ingenic/ingenic_ecc.h b/drivers/mtd/nand/raw/ingenic/ingenic_ecc.h
index 2cda439b5e11..535eb8f29df6 100644
--- a/drivers/mtd/nand/raw/ingenic/ingenic_ecc.h
+++ b/drivers/mtd/nand/raw/ingenic/ingenic_ecc.h
@@ -4,6 +4,7 @@
 
 #include <linux/compiler_types.h>
 #include <linux/err.h>
+#include <linux/module.h>
 #include <linux/mutex.h>
 #include <linux/types.h>
 #include <uapi/asm-generic/errno-base.h>
@@ -78,6 +79,6 @@ struct ingenic_ecc {
 	struct mutex lock;
 };
 
-int ingenic_ecc_probe(struct platform_device *pdev);
+int __init_or_module ingenic_ecc_probe(struct platform_device *pdev);
 
 #endif /* __DRIVERS_MTD_NAND_INGENIC_ECC_INTERNAL_H__ */
diff --git a/drivers/mtd/nand/raw/ingenic/jz4780_bch.c b/drivers/mtd/nand/raw/ingenic/jz4780_bch.c
index 079266a0d6cf..cc0656ac505d 100644
--- a/drivers/mtd/nand/raw/ingenic/jz4780_bch.c
+++ b/drivers/mtd/nand/raw/ingenic/jz4780_bch.c
@@ -229,7 +229,7 @@ static int jz4780_correct(struct ingenic_ecc *bch,
 	return ret;
 }
 
-static int jz4780_bch_probe(struct platform_device *pdev)
+static int __init_or_module jz4780_bch_probe(struct platform_device *pdev)
 {
 	struct ingenic_ecc *bch;
 	int ret;
-- 
2.21.0.593.g511ec345e18


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
