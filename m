Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DDE5D8B07
	for <lists+linux-mtd@lfdr.de>; Wed, 16 Oct 2019 10:33:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3CRn9bGRO6BJNkMuox98Z4aw2YOlmmqfGg2uDV7EE/Q=; b=miPhMkIcO0OPIC
	TKTB7ucsFt4lZ9jCJs9ud4SmPWYsd5Q7bNdSjHDx2lv3CLiBttXRrwPQGMO7mRhr0Wfd1DN5gC1ax
	AgAw9Ane5sgbrSbIjB/2IM1n0oKbLDbo9q34VVY8r9Lvl4gzckUzWXQrUGn6srQGV9Deo4GXdqe5r
	ftlHJO5vSnpRleg/SsNUxtGFg/CxovwLHAaH7rc/0ZDsTzhCV/am/44EoDMvNwsCFUc6bGCpI1Oed
	taLWU/gre0wgPrwaZxIWByIL64MF5inmyjceqAEHWeOlit1uCI4g/rP2t/PTiKedoS5omtyrE3xbo
	sSjdusDQtMArfqoQ3NTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKejq-0003iG-JX; Wed, 16 Oct 2019 08:32:58 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKeje-0003hj-UO
 for linux-mtd@lists.infradead.org; Wed, 16 Oct 2019 08:32:48 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x9G8WSR3035081;
 Wed, 16 Oct 2019 03:32:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1571214748;
 bh=s39FpZDsIVijRksoigZfypRpHO/kfg6d4vyQscJS4zg=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=LIpQPLqRojaXAO9e6h2CjCm6EfW3BMXspS/9xYx3A4KALSm/3UDMadNC/jHJ+JW3d
 oz8i6my0ueNEkbJRnwRO1wIN7oXK9JDg3SJ6K+NdhJTDqGFwTk7szvxN8BTnjpEb1/
 m/YZuQGEOOFhtM3zGDYHW4/jTkdakRyh2jXAUF1E=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x9G8WSmb033171
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 16 Oct 2019 03:32:28 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 16
 Oct 2019 03:32:21 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 16 Oct 2019 03:32:28 -0500
Received: from [172.24.145.136] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9G8WKU2052788;
 Wed, 16 Oct 2019 03:32:22 -0500
Subject: Re: [PATCH v3 2/3] mtd: spi-nor: cadence-quadspi: Disable the DAC for
 Intel LGM SoC
To: "Ramuthevar,Vadivel MuruganX"
 <vadivel.muruganx.ramuthevar@linux.intel.com>,
 <linux-mtd@lists.infradead.org>
References: <20190909104733.14273-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20190909104733.14273-3-vadivel.muruganx.ramuthevar@linux.intel.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <85355c80-1344-db22-ae31-0f20f30b9754@ti.com>
Date: Wed, 16 Oct 2019 14:02:50 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190909104733.14273-3-vadivel.muruganx.ramuthevar@linux.intel.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_013247_063371_4285DCEB 
X-CRM114-Status: GOOD (  21.25  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: cheol.yong.kim@intel.com, devicetree@vger.kernel.org,
 tudor.ambarus@gmail.com, andriy.shevchenko@intel.com,
 boris.brezillon@free-electrons.com, richard@nod.at, qi-ming.wu@intel.com,
 linux-kernel@vger.kernel.org, david.oberhollenzer@sigma-star.at,
 miquel.raynal@bootlin.com, jwboyer@gmail.com, computersforpeace@gmail.com,
 dwmw2@infradead.org, cyrille.pitchen@atmel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 09/09/19 4:17 PM, Ramuthevar,Vadivel MuruganX wrote:
> From: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
> 
> on Intel's Lightning Mountain(LGM) SoCs QSPI controller do not use

s/on/On

> Direct Access Controller(DAC).
> 
> This patch introduces to properly disable the Direct Access Controller

"This patch adds a quirk to disable..." or something something similar

> for data transfer instead it uses indirect data transfer.
> 
> Signed-off-by: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
> ---
>  drivers/mtd/spi-nor/Kconfig           |  2 +-
>  drivers/mtd/spi-nor/cadence-quadspi.c | 21 +++++++++++++++++++++
>  2 files changed, 22 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mtd/spi-nor/Kconfig b/drivers/mtd/spi-nor/Kconfig
> index 6de83277ce8b..ba2e372ae514 100644
> --- a/drivers/mtd/spi-nor/Kconfig
> +++ b/drivers/mtd/spi-nor/Kconfig
> @@ -34,7 +34,7 @@ config SPI_ASPEED_SMC
>  
>  config SPI_CADENCE_QUADSPI
>  	tristate "Cadence Quad SPI controller"
> -	depends on OF && (ARM || ARM64 || COMPILE_TEST)
> +	depends on OF && (ARM || ARM64 || COMPILE_TEST || X86)
>  	help
>  	  Enable support for the Cadence Quad SPI Flash controller.
>  
> diff --git a/drivers/mtd/spi-nor/cadence-quadspi.c b/drivers/mtd/spi-nor/cadence-quadspi.c
> index 67f15a1f16fd..73b9fbd1508a 100644
> --- a/drivers/mtd/spi-nor/cadence-quadspi.c
> +++ b/drivers/mtd/spi-nor/cadence-quadspi.c
> @@ -33,6 +33,7 @@
>  
>  /* Quirks */
>  #define CQSPI_NEEDS_WR_DELAY		BIT(0)
> +#define CQSPI_DISABLE_DAC_MODE		BIT(1)
>  
>  /* Capabilities mask */
>  #define CQSPI_BASE_HWCAPS_MASK					\
> @@ -609,6 +610,13 @@ static int cqspi_write_setup(struct spi_nor *nor)
>  	struct cqspi_st *cqspi = f_pdata->cqspi;
>  	void __iomem *reg_base = cqspi->iobase;
>  
> +	/* Disable direct access controller */
> +	if (!f_pdata->use_direct_mode) {
> +		reg = readl(reg_base + CQSPI_REG_CONFIG);
> +		reg &= ~CQSPI_REG_CONFIG_ENB_DIR_ACC_CTRL;
> +		writel(reg, reg_base + CQSPI_REG_CONFIG);
> +	}
> +
>  	/* Set opcode. */
>  	reg = nor->program_opcode << CQSPI_REG_WR_INSTR_OPCODE_LSB;
>  	writel(reg, reg_base + CQSPI_REG_WR_INSTR);
> @@ -1328,6 +1336,7 @@ static int cqspi_probe(struct platform_device *pdev)
>  	struct resource *res_ahb;
>  	struct reset_control *rstc, *rstc_ocp;
>  	const struct cqspi_driver_platdata *ddata;
> +	struct cqspi_flash_pdata *f_pdata;
>  	int ret;
>  	int irq;
>  
> @@ -1436,6 +1445,9 @@ static int cqspi_probe(struct platform_device *pdev)
>  		goto probe_setup_failed;
>  	}
>  
> +	if (ddata && (ddata->quirks & CQSPI_DISABLE_DAC_MODE))
> +		f_pdata->use_direct_mode = false;
> +

If you do this here, you will still end up acquiring a DMA channel in
cqspi_request_mmap_dma() (called from cqspi_setup_flash()). So, please
move the check to cqspi_setup_flash().

>  	return ret;
>  probe_setup_failed:
>  	cqspi_controller_enable(cqspi, 0);
> @@ -1510,6 +1522,11 @@ static const struct cqspi_driver_platdata am654_ospi = {
>  	.quirks = CQSPI_NEEDS_WR_DELAY,
>  };
>  
> +static const struct cqspi_driver_platdata intel_lgm_qspi = {
> +	.hwcaps_mask = CQSPI_BASE_HWCAPS_MASK,
> +	.quirks = CQSPI_DISABLE_DAC_MODE,
> +};
> +
>  static const struct of_device_id cqspi_dt_ids[] = {
>  	{
>  		.compatible = "cdns,qspi-nor",
> @@ -1523,6 +1540,10 @@ static const struct of_device_id cqspi_dt_ids[] = {
>  		.compatible = "ti,am654-ospi",
>  		.data = &am654_ospi,
>  	},
> +	{
> +		.compatible = "intel,lgm-qspi",
> +		.data = &intel_lgm_qspi,
> +	},
>  	{ /* end of table */ }
>  };
>  
> 

-- 
Regards
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
