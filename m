Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 423E2DA650
	for <lists+linux-mtd@lfdr.de>; Thu, 17 Oct 2019 09:20:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+PvpJlnpWynW8yjYzBcAjxv7WSsVFe5tUWZX0LKUyLw=; b=mGQxSTMt7Ms0KTVrOE+Zfvh+4G
	f/uYyOsJnH2ol5ARz5sFQulVfHKiX979FgFokwc7IZNl17cB831LdWWqhcjoQQMk8rC70lSGYsejq
	yYEKN2npzA0l/XCaB8oxXHoxmgfJxI1MjuEgra3y5z+CvqKiO8cIgMIUDV1jhO4cdjm+QPPkgANT4
	OkkpXZdiewk3CLAsM6g4u2CvyNhj2+C8ufuF44cAVYTlQGV3DeMh2b4rionuclJQ84LjF2zZzHIUt
	W5wwNBi21Llnd6hLD+LSk5O57FQ9+EUZYEDYHe1MtYEkQnD/u5X+khdRWjahVPTpxlUc4VEsx0Uft
	LHVzwniQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL05O-0004RZ-Pv; Thu, 17 Oct 2019 07:20:38 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL04z-0003gV-1n
 for linux-mtd@lists.infradead.org; Thu, 17 Oct 2019 07:20:14 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Oct 2019 00:20:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,306,1566889200"; d="scan'208";a="396164642"
Received: from sgsxdev004.isng.intel.com (HELO localhost) ([10.226.88.13])
 by fmsmga005.fm.intel.com with ESMTP; 17 Oct 2019 00:20:09 -0700
From: "Ramuthevar,
 Vadivel MuruganX" <vadivel.muruganx.ramuthevar@linux.intel.com>
To: linux-mtd@lists.infradead.org
Subject: [PATCH v4 1/2] mtd: spi-nor: cadence-quadspi: Disable the DAC for
 Intel LGM SoC
Date: Thu, 17 Oct 2019 15:19:59 +0800
Message-Id: <20191017072000.48860-2-vadivel.muruganx.ramuthevar@linux.intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20191017072000.48860-1-vadivel.muruganx.ramuthevar@linux.intel.com>
References: <20191017072000.48860-1-vadivel.muruganx.ramuthevar@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_002013_147130_444085A4 
X-CRM114-Status: GOOD (  15.37  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: cheol.yong.kim@intel.com, devicetree@vger.kernel.org,
 tudor.ambarus@gmail.com, vigneshr@ti.com, boris.brezillon@free-electrons.com,
 richard@nod.at, qi-ming.wu@intel.com, linux-kernel@vger.kernel.org,
 david.oberhollenzer@sigma-star.at,
 Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>,
 miquel.raynal@bootlin.com, jwboyer@gmail.com, computersforpeace@gmail.com,
 dwmw2@infradead.org, cyrille.pitchen@atmel.com, andriy.shevchenko@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>

On Intel Lightning Mountain(LGM) SoCs QSPI controller do not use
Direct Access Controller(DAC).

This patch adds a quirk to disable the Direct Access Controller
for data transfer instead it uses indirect data transfer.

Signed-off-by: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
---
 drivers/mtd/spi-nor/Kconfig           |  2 +-
 drivers/mtd/spi-nor/cadence-quadspi.c | 33 +++++++++++++++++++++++++++------
 2 files changed, 28 insertions(+), 7 deletions(-)

diff --git a/drivers/mtd/spi-nor/Kconfig b/drivers/mtd/spi-nor/Kconfig
index f237fcdf7f86..ef1aa369c2e3 100644
--- a/drivers/mtd/spi-nor/Kconfig
+++ b/drivers/mtd/spi-nor/Kconfig
@@ -36,7 +36,7 @@ config SPI_ASPEED_SMC
 
 config SPI_CADENCE_QUADSPI
 	tristate "Cadence Quad SPI controller"
-	depends on OF && (ARM || ARM64 || COMPILE_TEST)
+	depends on OF && (ARM || ARM64 || COMPILE_TEST || X86)
 	help
 	  Enable support for the Cadence Quad SPI Flash controller.
 
diff --git a/drivers/mtd/spi-nor/cadence-quadspi.c b/drivers/mtd/spi-nor/cadence-quadspi.c
index 7bef63947b29..0ad076eaa81b 100644
--- a/drivers/mtd/spi-nor/cadence-quadspi.c
+++ b/drivers/mtd/spi-nor/cadence-quadspi.c
@@ -34,6 +34,7 @@
 
 /* Quirks */
 #define CQSPI_NEEDS_WR_DELAY		BIT(0)
+#define CQSPI_DISABLE_DAC_MODE		BIT(1)
 
 /* Capabilities mask */
 #define CQSPI_BASE_HWCAPS_MASK					\
@@ -600,6 +601,13 @@ static int cqspi_write_setup(struct spi_nor *nor)
 	struct cqspi_st *cqspi = f_pdata->cqspi;
 	void __iomem *reg_base = cqspi->iobase;
 
+	/* Disable direct access controller */
+	if (!f_pdata->use_direct_mode) {
+		reg = readl(reg_base + CQSPI_REG_CONFIG);
+		reg &= ~CQSPI_REG_CONFIG_ENB_DIR_ACC_CTRL;
+		writel(reg, reg_base + CQSPI_REG_CONFIG);
+	}
+
 	/* Set opcode. */
 	reg = nor->program_opcode << CQSPI_REG_WR_INSTR_OPCODE_LSB;
 	writel(reg, reg_base + CQSPI_REG_WR_INSTR);
@@ -1292,12 +1300,16 @@ static int cqspi_setup_flash(struct cqspi_st *cqspi, struct device_node *np)
 		f_pdata->registered = true;
 
 		if (mtd->size <= cqspi->ahb_size) {
-			f_pdata->use_direct_mode = true;
-			dev_dbg(nor->dev, "using direct mode for %s\n",
-				mtd->name);
-
-			if (!cqspi->rx_chan)
-				cqspi_request_mmap_dma(cqspi);
+			if (ddata && (ddata->quirks & CQSPI_DISABLE_DAC_MODE)) {
+				f_pdata->use_direct_mode = false;
+			} else {
+				f_pdata->use_direct_mode = true;
+				dev_dbg(nor->dev, "using direct mode for %s\n",
+					mtd->name);
+
+				if (!cqspi->rx_chan)
+					cqspi_request_mmap_dma(cqspi);
+			}
 		}
 	}
 
@@ -1501,6 +1513,11 @@ static const struct cqspi_driver_platdata am654_ospi = {
 	.quirks = CQSPI_NEEDS_WR_DELAY,
 };
 
+static const struct cqspi_driver_platdata intel_lgm_qspi = {
+	.hwcaps_mask = CQSPI_BASE_HWCAPS_MASK,
+	.quirks = CQSPI_DISABLE_DAC_MODE,
+};
+
 static const struct of_device_id cqspi_dt_ids[] = {
 	{
 		.compatible = "cdns,qspi-nor",
@@ -1514,6 +1531,10 @@ static const struct of_device_id cqspi_dt_ids[] = {
 		.compatible = "ti,am654-ospi",
 		.data = &am654_ospi,
 	},
+	{
+		.compatible = "intel,lgm-qspi",
+		.data = &intel_lgm_qspi,
+	},
 	{ /* end of table */ }
 };
 
-- 
2.11.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
