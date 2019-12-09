Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F7F8116EBC
	for <lists+linux-mtd@lfdr.de>; Mon,  9 Dec 2019 15:12:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cULX0GWZZszOfZH8XgSrv+a+STBRxK/dHksu1+4dC7E=; b=bJ8m+XsyH8xuXk
	UerdYEt1EyW4wTt3JDk9n/Kd0yg+xqSUIj9HBi1Or4V2P3MMQbmYiNUSncAeoLR6Bkc13Ly8oA4Ws
	14rh+96+m0e1KzGJ20BuvTFZvywANK8twMsK+sQNAcpN7JGPVAxZ1YNUuBDDreO9wBSK7GUAX/soA
	lHV9/gzWTPBkiw+s35uyiZD4KDBfrMbZ8zxBBatj15EuHaECvwXzuZyMZfU9F3/RNAVtQSIufswj4
	/qGyhAd49nT2mhMDJS7ecxnNFBn2Z1itBz0G8v31nlG3J1lVvGDIA00ftHba+873Un3f2gMPSzO/7
	RxWoYxUnTTVrK6GSguBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieJlg-00085D-Sx; Mon, 09 Dec 2019 14:12:08 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieJlY-00082m-R8
 for linux-mtd@lists.infradead.org; Mon, 09 Dec 2019 14:12:02 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id B5CB71F1F54802B1C6EE;
 Mon,  9 Dec 2019 22:11:49 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.439.0; Mon, 9 Dec 2019 22:11:41 +0800
From: John Garry <john.garry@huawei.com>
To: <broonie@kernel.org>, <marek.vasut@gmail.com>,
 <tudor.ambarus@microchip.com>
Subject: [PATCH v2 1/3] mtd: spi-nor: hisi-sfc: Try to provide some clarity on
 which SFC we are
Date: Mon, 9 Dec 2019 22:08:08 +0800
Message-ID: <1575900490-74467-2-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1575900490-74467-1-git-send-email-john.garry@huawei.com>
References: <1575900490-74467-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_061201_054973_997843C8 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: chenxiang66@hisilicon.com, linux-kernel@vger.kernel.org,
 John Garry <john.garry@huawei.com>, linuxarm@huawei.com, fengsheng5@huawei.com,
 linux-spi@vger.kernel.org, linux-mtd@lists.infradead.org,
 xuejiancheng@hisilicon.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The driver is for the HiSilicon FMC (Flash Memory Controller), which
supports SPI NOR in addition other memory technologies, like SPI NAND.

Indeed, the naming in the driver is a little inappropriate, especially
considering that there is already another HiSilicon SPI NOR flash
controller (which I believe the FMC is derived from).

Since we now want to provide software support for this other HiSilicon
controller, update code comments to at least try to make it clear that
this driver is for the FMC.

Signed-off-by: John Garry <john.garry@huawei.com>
---
 drivers/mtd/spi-nor/Kconfig    | 4 ++--
 drivers/mtd/spi-nor/hisi-sfc.c | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/spi-nor/Kconfig b/drivers/mtd/spi-nor/Kconfig
index f237fcdf7f86..c1eda67d1ad2 100644
--- a/drivers/mtd/spi-nor/Kconfig
+++ b/drivers/mtd/spi-nor/Kconfig
@@ -46,11 +46,11 @@ config SPI_CADENCE_QUADSPI
 	  Flash as an MTD device.
 
 config SPI_HISI_SFC
-	tristate "Hisilicon SPI-NOR Flash Controller(SFC)"
+	tristate "Hisilicon FMC SPI-NOR Flash Controller(SFC)"
 	depends on ARCH_HISI || COMPILE_TEST
 	depends on HAS_IOMEM
 	help
-	  This enables support for hisilicon SPI-NOR flash controller.
+	  This enables support for HiSilicon FMC SPI-NOR flash controller.
 
 config SPI_MTK_QUADSPI
 	tristate "MediaTek Quad SPI controller"
diff --git a/drivers/mtd/spi-nor/hisi-sfc.c b/drivers/mtd/spi-nor/hisi-sfc.c
index a1258216f89d..6db964bf3b0e 100644
--- a/drivers/mtd/spi-nor/hisi-sfc.c
+++ b/drivers/mtd/spi-nor/hisi-sfc.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
 /*
- * HiSilicon SPI Nor Flash Controller Driver
+ * HiSilicon FMC SPI-NOR flash controller driver
  *
  * Copyright (c) 2015-2016 HiSilicon Technologies Co., Ltd.
  */
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
