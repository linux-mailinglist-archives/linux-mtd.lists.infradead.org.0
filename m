Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E51E15836B
	for <lists+linux-mtd@lfdr.de>; Thu, 27 Jun 2019 15:27:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JN3kW7QLWDTQO18deGXIwy2W+kBrPpXgzMM2c7nshKM=; b=GvPsxerNCqEP3n
	Ma6NlgY3eo46hr8/TQ/jFw6zav20vrHYT81/5jx8qEx7jVxAtLDpQcWbsolBAWTfSnXGKlvpYQOdg
	bloY9FRW5KorWKL+CopZbPeJQe0oho7vfIgvQ9GxVUtsZKdqWFkE9L9lNw9L78UFzh1NqcFiAc895
	ZVr8ecTvuF3YE9lNKk6l0Lg9xet/Ot4i50cHjRnS54PSQukrpIHQCUps3ZPqSwMwgUm0+2Qcdlox8
	xA385w9Tt2/gafzVfrNi8Hpw/0ljT+ZUlHfVN6pd+NHsnUs7Bvr4EjHTPo98aVeE0fnEMOlMiQk/F
	6I/ZoaeUNffWTcqCj+/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgURP-00081E-30; Thu, 27 Jun 2019 13:27:55 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgURD-00080G-0t
 for linux-mtd@lists.infradead.org; Thu, 27 Jun 2019 13:27:45 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5RDRXvw060752;
 Thu, 27 Jun 2019 08:27:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1561642053;
 bh=xq/Qn8cyjc0wU5dUtTeO+f9uJWKfCB/3ok/DX4zAubo=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=bOz1LZTIoZSzGVnXJ3yCUWh1AF44gQjGDX6nm8ZYYVMH3Fz4shwBBmOMbaHaFx2qS
 IZC3aQAXO9a17k/3I4i5gMw3MXFkezydNtljdXrS6wBfjnjiSidxJeHGA+kGXzxNXD
 ErgjRNGrHhjRmTJ7of8pOpoR6cpwy1BlEhL9g7wY=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5RDRXA1102542
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 27 Jun 2019 08:27:33 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 27
 Jun 2019 08:27:33 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 27 Jun 2019 08:27:33 -0500
Received: from [172.24.190.89] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5RDRUfv111336;
 Thu, 27 Jun 2019 08:27:31 -0500
Subject: Re: [PATCHv6 2/2] mtd: spi-nor: cadence-quadspi: add reset control
To: Dinh Nguyen <dinguyen@kernel.org>, <linux-mtd@lists.infradead.org>
References: <20190613113138.8280-1-dinguyen@kernel.org>
 <20190613113138.8280-2-dinguyen@kernel.org>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <ea6000bd-51ec-d9bd-7d48-e5bebcc621dd@ti.com>
Date: Thu, 27 Jun 2019 18:58:15 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190613113138.8280-2-dinguyen@kernel.org>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_062743_151959_ACC1B0AD 
X-CRM114-Status: GOOD (  20.42  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: marex@denx.de, Tien-Fong Chee <tien.fong.chee@intel.com>,
 tudor.ambarus@microchip.com, bbrezillon@kernel.org,
 linux-kernel@vger.kernel.org, computersforpeace@gmail.com, dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 13/06/19 5:01 PM, Dinh Nguyen wrote:
> Get the reset control properties for the QSPI controller and bring them
> out of reset. Most will have just one reset bit, but there is an additional
> OCP reset bit that is used ECC. The OCP reset bit will also need to get
> de-asserted as well. [1]
> 
> The reason this patch is needed is in the case where a bootloader leaves
> the QSPI controller in a reset state, or a state where init cannot occur
> successfully, the patch will put the QSPI controller into a clean state.
> 
> [1] https://www.intel.com/content/www/us/en/programmable/hps/arria-10/hps.html#reg_soc_top/sfo1429890575955.html
> 
> Suggested-by: Tien-Fong Chee <tien.fong.chee@intel.com>
> Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
> ---


Reviewed-by: Vignesh Raghavendra <vigneshr@ti.com>

Regards
Vignesh

> v6: no need to check for reset pointer in assert/deassert as the call to
>     assert/deassert is already doing the checking
> v5: remove udelay(not needed) on tested hardware
>     group reset assert/deassert together
>     update commit message with reasoning for patch
> v4: fix compile error
> v3: return full error by using PTR_ERR(rtsc)
>     move reset control calls until after the clock enables
>     use udelay(2) to be safe
>     Add optional OCP(Open Core Protocol) reset signal
> v2: use devm_reset_control_get_optional_exclusive
>     print an error message
>     return -EPROBE_DEFER
> ---
>  drivers/mtd/spi-nor/cadence-quadspi.c | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 
> diff --git a/drivers/mtd/spi-nor/cadence-quadspi.c b/drivers/mtd/spi-nor/cadence-quadspi.c
> index 792628750eec..732323c2adb1 100644
> --- a/drivers/mtd/spi-nor/cadence-quadspi.c
> +++ b/drivers/mtd/spi-nor/cadence-quadspi.c
> @@ -34,6 +34,7 @@
>  #include <linux/of.h>
>  #include <linux/platform_device.h>
>  #include <linux/pm_runtime.h>
> +#include <linux/reset.h>
>  #include <linux/sched.h>
>  #include <linux/spi/spi.h>
>  #include <linux/timer.h>
> @@ -1336,6 +1337,8 @@ static int cqspi_probe(struct platform_device *pdev)
>  	struct cqspi_st *cqspi;
>  	struct resource *res;
>  	struct resource *res_ahb;
> +	struct reset_control *rstc;
> +	struct reset_control *rstc_ocp;
>  	const struct cqspi_driver_platdata *ddata;
>  	int ret;
>  	int irq;
> @@ -1402,6 +1405,25 @@ static int cqspi_probe(struct platform_device *pdev)
>  		goto probe_clk_failed;
>  	}
>  
> +	/* Obtain QSPI reset control */
> +	rstc = devm_reset_control_get_optional_exclusive(dev, "qspi");
> +	if (IS_ERR(rstc)) {
> +		dev_err(dev, "Cannot get QSPI reset.\n");
> +		return PTR_ERR(rstc);
> +	}
> +
> +	rstc_ocp = devm_reset_control_get_optional_exclusive(dev, "qspi-ocp");
> +	if (IS_ERR(rstc_ocp)) {
> +		dev_err(dev, "Cannot get QSPI OCP reset.\n");
> +		return PTR_ERR(rstc_ocp);
> +	}
> +
> +	reset_control_assert(rstc);
> +	reset_control_deassert(rstc);
> +
> +	reset_control_assert(rstc_ocp);
> +	reset_control_deassert(rstc_ocp);
> +
>  	cqspi->master_ref_clk_hz = clk_get_rate(cqspi->clk);
>  	ddata  = of_device_get_match_data(dev);
>  	if (ddata && (ddata->quirks & CQSPI_NEEDS_WR_DELAY))
> 

-- 
Regards
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
