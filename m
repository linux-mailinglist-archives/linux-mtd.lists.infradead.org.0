Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18F3DAD2F1
	for <lists+linux-mtd@lfdr.de>; Mon,  9 Sep 2019 08:05:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sPclXE1Ja9dYmGc3Z/WIH0qlEkCSxP1FTgM6fLdP330=; b=IwPdrWSg2G1e65
	WsRvytjFW1B3Xo8jxFqib/S6oPA1BqnDQb+YCZWCfQzEZgh4b01qZVyn2g6jPp8VxTCJrqO0WpvgO
	j7vsjk9C7pwDSqnjKGc0+VHBN4cImm65iixshdHJjPO29tr5K5sz0PZXK1CxepaqiLMh/q7C5OZ1f
	cCsODLUPDtlm10Mu7Aos2A3lOjFUUUg7nExnkY3rUHuiC/uGY/Y+AywD8/cq1mRgGvSNywvN6t7Kv
	xxR9QRoIK2qFJfRVRRNwtRFFiCI9m24ZxNdxYRfWzSB6b15Y8zIXKtvHZEYIxhrGMQgM6YNDGI5Cr
	Y/YgbqMn7W70lgC+u10Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Cnz-0004UM-78; Mon, 09 Sep 2019 06:05:39 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Cnf-0004Tp-GT
 for linux-mtd@lists.infradead.org; Mon, 09 Sep 2019 06:05:21 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8964wHK019358;
 Mon, 9 Sep 2019 01:04:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1568009098;
 bh=NvIniZd7CzVPU0n1hR9ibj1hyMdPPpPDMXsdbCt6EVA=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Ky7c9maZH4tiK1Odu0zOsoUzJ0T5KwJGMmn0Y6vO532sR8KLDMYEdyWV6aQ0GhfJS
 cLusHceyJ6+7W8kYE+8IhR5m0rlPy97/1Hp5RP+gs4G81btYn8MM9d6+PafWOI7UI6
 WF3MLZaMdifHSfztGD98rWYv0lkelA6e0ASVc66M=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x8964wPL077235
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 9 Sep 2019 01:04:58 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 9 Sep
 2019 01:04:58 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 9 Sep 2019 01:04:58 -0500
Received: from [172.24.145.136] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8964pSs092782;
 Mon, 9 Sep 2019 01:04:52 -0500
Subject: Re: [PATCH v2 2/3] mtd: spi-nor: cadence-quadspi: disable DMA and DAC
 for Intel LGM
To: "Ramuthevar,Vadivel MuruganX"
 <vadivel.muruganx.ramuthevar@linux.intel.com>,
 <linux-mtd@lists.infradead.org>
References: <20190827035827.21024-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20190827035827.21024-3-vadivel.muruganx.ramuthevar@linux.intel.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <2596ecd4-4ba6-ff7d-472f-1f6e664b4a97@ti.com>
Date: Mon, 9 Sep 2019 11:35:26 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190827035827.21024-3-vadivel.muruganx.ramuthevar@linux.intel.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_230519_637447_FCEDE134 
X-CRM114-Status: GOOD (  25.25  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi,

On 27/08/19 9:28 AM, Ramuthevar,Vadivel MuruganX wrote:
> From: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
> 
> on Intel's Lightning Mountain(LGM) SoCs QSPI controller do not use
> Direct Memory Access(DMA) and Direct Access Controller(DAC).
> 
> This patch introduces to properly disable the DMA and DAC
> for data transfer instead it uses indirect data transfer.
> 
> Signed-off-by: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
> ---
>  drivers/mtd/spi-nor/Kconfig           |  2 +-
>  drivers/mtd/spi-nor/cadence-quadspi.c | 21 ++++++++++++++++++---
>  2 files changed, 19 insertions(+), 4 deletions(-)
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
> index 67f15a1f16fd..69fa13e95110 100644
> --- a/drivers/mtd/spi-nor/cadence-quadspi.c
> +++ b/drivers/mtd/spi-nor/cadence-quadspi.c
> @@ -517,12 +517,16 @@ static int cqspi_indirect_read_execute(struct spi_nor *nor, u8 *rxbuf,
>  	struct cqspi_st *cqspi = f_pdata->cqspi;
>  	void __iomem *reg_base = cqspi->iobase;
>  	void __iomem *ahb_base = cqspi->ahb_base;
> +	u32 trigger_address = cqspi->trigger_address;
>  	unsigned int remaining = n_rx;
>  	unsigned int mod_bytes = n_rx % 4;
>  	unsigned int bytes_to_read = 0;
>  	u8 *rxbuf_end = rxbuf + n_rx;
>  	int ret = 0;
>  
> +	if (!f_pdata->use_direct_mode)
> +		writel(trigger_address, reg_base + CQSPI_REG_INDIRECTTRIGGER);
> +

Again, as I pointed out previously, this should not be needed.
cqspi_controller_init() already does above configuration and no need to
touch this register on every read.

>  	writel(from_addr, reg_base + CQSPI_REG_INDIRECTRDSTARTADDR);
>  	writel(remaining, reg_base + CQSPI_REG_INDIRECTRDBYTES);
>  
> @@ -609,6 +613,14 @@ static int cqspi_write_setup(struct spi_nor *nor)
>  	struct cqspi_st *cqspi = f_pdata->cqspi;
>  	void __iomem *reg_base = cqspi->iobase;
>  
> +	/* Disable the DMA and direct access controller */
> +	if (!f_pdata->use_direct_mode) {
> +		reg = readl(reg_base + CQSPI_REG_CONFIG);
> +		reg &= ~CQSPI_REG_CONFIG_ENB_DIR_ACC_CTRL;
> +		reg &= ~CQSPI_REG_CONFIG_DMA_MASK;
> +		writel(reg, reg_base + CQSPI_REG_CONFIG);
> +	}
> +

You did not respond to my previous comment. Why would you need to clear
CQSPI_REG_CONFIG_DMA_MASK field, if reset default is 0 anyway?

>  	/* Set opcode. */
>  	reg = nor->program_opcode << CQSPI_REG_WR_INSTR_OPCODE_LSB;
>  	writel(reg, reg_base + CQSPI_REG_WR_INSTR);
> @@ -1171,7 +1183,8 @@ static int cqspi_of_get_pdata(struct platform_device *pdev)
>  		return -ENXIO;
>  	}
>  
> -	cqspi->rclk_en = of_property_read_bool(np, "cdns,rclk-en");
> +	if (!of_device_is_compatible(np, "intel,lgm-qspi"))
> +		cqspi->rclk_en = of_property_read_bool(np, "cdns,rclk-en");
>  

If you don't want to use this property, then just drop it from your DT.
Don't override it in the driver based on compatible.

>  	return 0;
>  }
> @@ -1301,7 +1314,8 @@ static int cqspi_setup_flash(struct cqspi_st *cqspi, struct device_node *np)
>  		f_pdata->registered = true;
>  
>  		if (mtd->size <= cqspi->ahb_size) {
> -			f_pdata->use_direct_mode = true;
> +			f_pdata->use_direct_mode =
> +				!(of_device_is_compatible(np, "intel,lgm-qspi"));

Looks like, you haven't followed any of my advice. Please add a quirk
flag to disable DAC mode. Something like:

#define CQSPI_DISABLE_DAC_MODE BIT(1)

static const struct cqspi_driver_platdata intel_lgm_qspi = {
        .hwcaps_mask = CQSPI_BASE_HWCAPS_MASK,
        .quirks = CQSPI_DISABLE_DAC_MODE,
};

static const struct of_device_id cqspi_dt_ids[] = {

	...

        {
                .compatible = "intel,lgm-qspi",
                .data = &intel_lgm_qspi,
        },

	...
};


Then in cqspi_setup_flash(),

	if (mtd->size <= cqspi->ahb_size &&
		!ddata->quirks & CQSPI_DISABLE_DAC_MODE) {
		f_pdata->use_direct_mode = true;
		...
	}	


>  			dev_dbg(nor->dev, "using direct mode for %s\n",
>  				mtd->name);
>  
> @@ -1347,7 +1361,7 @@ static int cqspi_probe(struct platform_device *pdev)
>  	}
>  
>  	/* Obtain QSPI clock. */
> -	cqspi->clk = devm_clk_get(dev, NULL);
> +	cqspi->clk = devm_clk_get(dev, "qspi");

This will break DT backward compatibility. Existing DTs don't have
clock-names = "qspi". Hence, this code will error out.
What I meant in the previous mail was: if device does not have multiple
clk inputs then there is no need for clock-names and there is no need to
touch this part of code.

	cqspi->clk = devm_clk_get(dev, NULL);

This should just work fine even on your board. So drop this hunk.

>  	if (IS_ERR(cqspi->clk)) {
>  		dev_err(dev, "Cannot claim QSPI clock.\n");
>  		return PTR_ERR(cqspi->clk);
> @@ -1369,6 +1383,7 @@ static int cqspi_probe(struct platform_device *pdev)
>  		return PTR_ERR(cqspi->ahb_base);
>  	}
>  	cqspi->mmap_phys_base = (dma_addr_t)res_ahb->start;
> +	cqspi->trigger_address = res_ahb->start;

Nope, this is not needed. See:
https://elixir.bootlin.com/linux/v5.3-rc6/source/drivers/mtd/spi-nor/cadence-quadspi.c#L1168

Populate the trigger-address using cdns,trigger-address property in DT

>  	cqspi->ahb_size = resource_size(res_ahb);
>  
>  	init_completion(&cqspi->transfer_complete);
> 

-- 
Regards
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
