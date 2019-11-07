Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF082F2A19
	for <lists+linux-mtd@lfdr.de>; Thu,  7 Nov 2019 10:05:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4s+B/K9nELHUBRu1KrEQY55DzgLsYQWvW3SOZ18KVjI=; b=ZluDXjK1MShySn
	m9MFu6MAsWK85ar47Z69awe1r1QTHCCDesnIrApJCeIIzTjsnuH/MU7OxUrI7yoOVezgxBdrDAcex
	Lzu4wYLX5vRiOEQy1lwEdd/VE3gt1+kkQ/QJNqmxc5CuQASEtfgR5tUxyzmsmnYwhaEvjpkON1X6I
	ZbtC6uYI+m+llDpR2cfcwG/zleARPfFQokCi7Al2M5wFFbrr2ZPH+2l9OOoqQ5uGQWT87x6Oq+8P5
	HpHhIqTs8Maek6McYQ9CTfRZfMBrpr8YU45OBmH3hbXppcynPL7MwimGqgY3hwHVyvyFjcRI4Y/1Z
	u5jVDcc6ibOCtuNHYyEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSdiu-0003ZO-Nh; Thu, 07 Nov 2019 09:05:00 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSdik-0003Yp-Ko
 for linux-mtd@lists.infradead.org; Thu, 07 Nov 2019 09:04:52 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id xA794nlf031752;
 Thu, 7 Nov 2019 03:04:49 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573117489;
 bh=c7SaiV5MunbvRKA2bTEnfx0HgEpiRX3TkAMURpHJeQI=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=KG/eECMMf5zuzu3Rm+9vEM+1627Fz5/esYE7Luunx8FytdIlWP/XdXsmVw9fHLEaf
 sJxj1AIxLK+CVlG/6XDOrCqOVB036zL/AGP7Un6DXKDhKgS1WOftBgpQESkyybmWEp
 U4kTXlZp8bSOz8HUk611CKnKgzyUZ/oby5Mrvb30=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xA794nU8017354
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 7 Nov 2019 03:04:49 -0600
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 7 Nov
 2019 03:04:33 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 7 Nov 2019 03:04:49 -0600
Received: from [172.24.145.136] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xA794kDo083598;
 Thu, 7 Nov 2019 03:04:47 -0600
Subject: Re: [PATCH v10 2/2] mtd: spi-nor: Set default Quad Enable method for
 ISSI flashes
To: <Tudor.Ambarus@microchip.com>, <sagar.kadam@sifive.com>
References: <CAARK3HkOwyvg=xr7fw1SrP_=B+Gj+waQmtZvgiK4AUpQrbM41Q@mail.gmail.com>
 <20191022172210.19865-1-tudor.ambarus@microchip.com>
 <20191022172210.19865-2-tudor.ambarus@microchip.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <a120a645-5c2f-3023-4747-9bb7601d7c03@ti.com>
Date: Thu, 7 Nov 2019 14:35:21 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191022172210.19865-2-tudor.ambarus@microchip.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_010450_760218_975B4C16 
X-CRM114-Status: GOOD (  18.52  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 22/10/19 10:52 PM, Tudor.Ambarus@microchip.com wrote:
> From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
> 
> Set the default Quad Enable method for ISSI flashes. Used for
> ISSI flashes (IS25WP256D-JMLE) that do not support SFDP tables
> and can not determine the Quad Enable method by parsing BFPT.
> 
> Based on code originally written by Wesley Terpstra <wesley@sifive.com>
> and/or Palmer Dabbelt <palmer@sifive.com>
> https://github.com/riscv/riscv-linux/commit/c94e267766d62bc9a669611c3d0c8ed5ea26569b
> 
> Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
> [tudor.ambarus@microchip.com:
> - rebase, split and adapt for v5.4-rc4,
> - use PMC CFI ID for ISSI. According to JEP106BA, "Programmable Micro Corp"
>   changed its name to Integrated Silicon Solution (ISSI)]
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> ---

Reviewed-by: Vignesh Raghavendra <vigneshr@ti.com>

> Sagar, this is needed just for the ISSI flashes that can't retrieve the
> Quad Enable method from BFPT. It deserves a separate patch. Let me know
> if you are ok with how I reorganized the patches.
> 
>  drivers/mtd/spi-nor/spi-nor.c | 9 +++++++++
>  include/linux/mtd/spi-nor.h   | 1 +
>  2 files changed, 10 insertions(+)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index 3fc1eb20dca5..122e5bedf4f2 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -4385,6 +4385,11 @@ static int spi_nor_setup(struct spi_nor *nor,
>  	return nor->params.setup(nor, hwcaps);
>  }
>  
> +static void issi_set_default_init(struct spi_nor *nor)
> +{
> +	nor->params.quad_enable = macronix_quad_enable;
> +}
> +
>  static void macronix_set_default_init(struct spi_nor *nor)
>  {
>  	nor->params.quad_enable = macronix_quad_enable;
> @@ -4412,6 +4417,10 @@ static void spi_nor_manufacturer_init_params(struct spi_nor *nor)
>  {
>  	/* Init flash parameters based on MFR */
>  	switch (JEDEC_MFR(nor->info)) {
> +	case SNOR_MFR_ISSI:
> +		issi_set_default_init(nor);
> +		break;
> +
>  	case SNOR_MFR_MACRONIX:
>  		macronix_set_default_init(nor);
>  		break;
> diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
> index fc0b4b19c900..b4636ff707ad 100644
> --- a/include/linux/mtd/spi-nor.h
> +++ b/include/linux/mtd/spi-nor.h
> @@ -22,6 +22,7 @@
>  #define SNOR_MFR_INTEL		CFI_MFR_INTEL
>  #define SNOR_MFR_ST		CFI_MFR_ST	/* ST Micro */
>  #define SNOR_MFR_MICRON		CFI_MFR_MICRON	/* Micron */
> +#define SNOR_MFR_ISSI		CFI_MFR_PMC
>  #define SNOR_MFR_MACRONIX	CFI_MFR_MACRONIX
>  #define SNOR_MFR_SPANSION	CFI_MFR_AMD
>  #define SNOR_MFR_SST		CFI_MFR_SST
> 

-- 
Regards
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
