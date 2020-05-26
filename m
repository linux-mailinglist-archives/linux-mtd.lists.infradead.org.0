Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE1A1CB7CD
	for <lists+linux-mtd@lfdr.de>; Fri,  8 May 2020 20:56:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fyefFxuxMMlwR7ih/8hLfj8Gj4RFbpI74c7qxNyEbm0=; b=FOeMp7lri+i9T6
	B8auJYKIdhFKJBszAeKk37ZBkZk4gEaZ7DUkE4mpfOI78BbvnAbv+Vws+t+U6OeyKCoC4D5nlK8uH
	MouZKuV69qbq/Thbnn9XBPoWGrfzw+bCVu6dehvF+7yskEL1owUjCwYshvEKdZwshwxbu8T5mEBqt
	C9e8OLwRX8HI3TbbnvR75GZ+004Vjxzj2ctuM4h6fEzn+bK55sOFHzuOTfG6iBngeMiCGuTAdovOY
	Ia1IbdOcxy4bncOSDYEb07AO6KWyyVElXhHB1Loc4x7beO4byDkriQOhA1TBaM+IshXbL+MiBNxD7
	TQEHc5kINwWzyKNGJPDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX8Aw-0008Or-5B; Fri, 08 May 2020 18:56:46 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX89U-0006k2-F4
 for linux-mtd@lists.infradead.org; Fri, 08 May 2020 18:55:18 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 048Isok9041770;
 Fri, 8 May 2020 13:54:50 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588964090;
 bh=5+AXR5SrX42+acbZCSDv1ai6NbQTlDljtTfawPkCDCs=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=vkE5/F26rfmlS1cg/GH+baBHHaCOxfMa2hkB25bNA3KCHpS1JPMBXFh/cfWcd/2t/
 T9dB0cyVjHCERe2f6iKx+vAshUlnCB1+OXzZw/8H3ce9isq2uznYSdyjwh/qi2zGMG
 gnGUjde9LNuKCUWHKVq3Upf2EfnB38CPApA+toE0=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 048Iso5A013748
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 8 May 2020 13:54:50 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 8 May
 2020 13:54:50 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 8 May 2020 13:54:50 -0500
Received: from ula0132425.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 048IsGpY077355;
 Fri, 8 May 2020 13:54:46 -0500
From: Vignesh Raghavendra <vigneshr@ti.com>
To: Tudor Ambarus <tudor.ambarus@microchip.com>, Mark Brown
 <broonie@kernel.org>
Subject: [PATCH 6/6] spi: Move cadence-quadspi driver to drivers/spi/
Date: Sat, 9 May 2020 00:24:11 +0530
Message-ID: <20200508185411.487-7-vigneshr@ti.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200508185411.487-1-vigneshr@ti.com>
References: <20200508185411.487-1-vigneshr@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_115516_642686_867C1254 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Now that cadence-quadspi has been converted to use spi-mem framework,
move it under drivers/spi/

Update license header to match SPI subsystem style

Signed-off-by: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
---
 drivers/mtd/spi-nor/controllers/Kconfig            | 11 -----------
 drivers/mtd/spi-nor/controllers/Makefile           |  1 -
 drivers/spi/Kconfig                                | 11 +++++++++++
 drivers/spi/Makefile                               |  1 +
 .../spi-cadence-quadspi.c}                         | 14 +++++++-------
 5 files changed, 19 insertions(+), 19 deletions(-)
 rename drivers/{mtd/spi-nor/controllers/cadence-quadspi.c => spi/spi-cadence-quadspi.c} (99%)

diff --git a/drivers/mtd/spi-nor/controllers/Kconfig b/drivers/mtd/spi-nor/controllers/Kconfig
index 10b86660b821..95fcd4b435be 100644
--- a/drivers/mtd/spi-nor/controllers/Kconfig
+++ b/drivers/mtd/spi-nor/controllers/Kconfig
@@ -9,17 +9,6 @@ config SPI_ASPEED_SMC
 	  and support for the SPI flash memory controller (SPI) for
 	  the host firmware. The implementation only supports SPI NOR.
 
-config SPI_CADENCE_QUADSPI
-	tristate "Cadence Quad SPI controller"
-	depends on OF && (ARM || ARM64 || COMPILE_TEST)
-	help
-	  Enable support for the Cadence Quad SPI Flash controller.
-
-	  Cadence QSPI is a specialized controller for connecting an SPI
-	  Flash over 1/2/4-bit wide bus. Enable this option if you have a
-	  device with a Cadence QSPI controller and want to access the
-	  Flash as an MTD device.
-
 config SPI_HISI_SFC
 	tristate "Hisilicon FMC SPI-NOR Flash Controller(SFC)"
 	depends on ARCH_HISI || COMPILE_TEST
diff --git a/drivers/mtd/spi-nor/controllers/Makefile b/drivers/mtd/spi-nor/controllers/Makefile
index 46e6fbe586e3..e7abba491d98 100644
--- a/drivers/mtd/spi-nor/controllers/Makefile
+++ b/drivers/mtd/spi-nor/controllers/Makefile
@@ -1,6 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
 obj-$(CONFIG_SPI_ASPEED_SMC)	+= aspeed-smc.o
-obj-$(CONFIG_SPI_CADENCE_QUADSPI)	+= cadence-quadspi.o
 obj-$(CONFIG_SPI_HISI_SFC)	+= hisi-sfc.o
 obj-$(CONFIG_SPI_NXP_SPIFI)	+= nxp-spifi.o
 obj-$(CONFIG_SPI_INTEL_SPI)	+= intel-spi.o
diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
index 17e7e4afc0fc..15f308571163 100644
--- a/drivers/spi/Kconfig
+++ b/drivers/spi/Kconfig
@@ -200,6 +200,17 @@ config SPI_CADENCE
 	  This selects the Cadence SPI controller master driver
 	  used by Xilinx Zynq and ZynqMP.
 
+config SPI_CADENCE_QUADSPI
+	tristate "Cadence Quad SPI controller"
+	depends on OF && (ARM || ARM64 || COMPILE_TEST)
+	help
+	  Enable support for the Cadence Quad SPI Flash controller.
+
+	  Cadence QSPI is a specialized controller for connecting an SPI
+	  Flash over 1/2/4-bit wide bus. Enable this option if you have a
+	  device with a Cadence QSPI controller and want to access the
+	  Flash as an MTD device.
+
 config SPI_CLPS711X
 	tristate "CLPS711X host SPI controller"
 	depends on ARCH_CLPS711X || COMPILE_TEST
diff --git a/drivers/spi/Makefile b/drivers/spi/Makefile
index 889368f4ad53..f03834d1d312 100644
--- a/drivers/spi/Makefile
+++ b/drivers/spi/Makefile
@@ -31,6 +31,7 @@ obj-$(CONFIG_SPI_BCM_QSPI)		+= spi-iproc-qspi.o spi-brcmstb-qspi.o spi-bcm-qspi.
 obj-$(CONFIG_SPI_BITBANG)		+= spi-bitbang.o
 obj-$(CONFIG_SPI_BUTTERFLY)		+= spi-butterfly.o
 obj-$(CONFIG_SPI_CADENCE)		+= spi-cadence.o
+obj-$(CONFIG_SPI_CADENCE_QUADSPI)	+= spi-cadence-quadspi.o
 obj-$(CONFIG_SPI_CLPS711X)		+= spi-clps711x.o
 obj-$(CONFIG_SPI_COLDFIRE_QSPI)		+= spi-coldfire-qspi.o
 obj-$(CONFIG_SPI_DAVINCI)		+= spi-davinci.o
diff --git a/drivers/mtd/spi-nor/controllers/cadence-quadspi.c b/drivers/spi/spi-cadence-quadspi.c
similarity index 99%
rename from drivers/mtd/spi-nor/controllers/cadence-quadspi.c
rename to drivers/spi/spi-cadence-quadspi.c
index d788692efc55..de009e44f2aa 100644
--- a/drivers/mtd/spi-nor/controllers/cadence-quadspi.c
+++ b/drivers/spi/spi-cadence-quadspi.c
@@ -1,11 +1,11 @@
 // SPDX-License-Identifier: GPL-2.0-only
-/*
- * Driver for Cadence QSPI Controller
- *
- * Copyright Altera Corporation (C) 2012-2014. All rights reserved.
- * Copyright Intel Corporation (C) 2019-2020. All rights reserved.
- * Copyright (C) 2020 Texas Instruments Incorporated - http://www.ti.com
- */
+//
+// Driver for Cadence QSPI Controller
+//
+// Copyright Altera Corporation (C) 2012-2014. All rights reserved.
+// Copyright Intel Corporation (C) 2019-2020. All rights reserved.
+// Copyright (C) 2020 Texas Instruments Incorporated - http://www.ti.com
+
 #include <linux/clk.h>
 #include <linux/completion.h>
 #include <linux/delay.h>
-- 
2.26.2


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
