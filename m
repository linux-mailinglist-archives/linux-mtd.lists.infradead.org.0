Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ADBE7D580
	for <lists+linux-mtd@lfdr.de>; Thu,  1 Aug 2019 08:30:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4NFMOS4b81CV0HRWVt8rh8Q+rvh9IoMFGuXETLmwaK0=; b=jmZ37v60EMtCqq
	b9wvFQIGvoJU3ccvRItyC81UKtdBLiVbcH2WTjIDyCj4H9i4Zv9Q4hr5+p3K/4rGtXv+6LVEadHJ0
	gcGNNxnsVqgAnPRym8rsMVJZniwQcRk0OUqgDfPcB9Jnd9ZGIpU7/hrXCcse9TBn3tKeSM4AUbY86
	JabWoqsn1pupfABbDM+w6oHdJq2OZNDhM18hDYGJ5mJ9weynGHy231UH88IJYsOfVIVXH8d8M8mLt
	Vg/rFo7gyPovdSbQ6RVA1SgihBe1h/C9pOUtTAgn2yw2yaBIOv/omAlPd1nei+te5m2apR1EMnX8r
	itdnYtUHM46aRCvboUQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht4bG-0006bn-3x; Thu, 01 Aug 2019 06:30:06 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht4b4-0006bQ-23
 for linux-mtd@lists.infradead.org; Thu, 01 Aug 2019 06:29:55 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 8F02628B1A0;
 Thu,  1 Aug 2019 07:29:52 +0100 (BST)
Date: Thu, 1 Aug 2019 08:29:49 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: <Tudor.Ambarus@microchip.com>
Subject: Re: [PATCH 3/7] mtd: spi_nor: Rework quad_enable()
Message-ID: <20190801082949.2f08feae@collabora.com>
In-Reply-To: <20190731090315.26798-4-tudor.ambarus@microchip.com>
References: <20190731090315.26798-1-tudor.ambarus@microchip.com>
 <20190731090315.26798-4-tudor.ambarus@microchip.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_232954_364257_02C91C62 
X-CRM114-Status: GOOD (  27.00  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: vigneshr@ti.com, richard@nod.at, linux-kernel@vger.kernel.org,
 marek.vasut@gmail.com, linux-mtd@lists.infradead.org,
 miquel.raynal@bootlin.com, computersforpeace@gmail.com, dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, 31 Jul 2019 09:03:31 +0000
<Tudor.Ambarus@microchip.com> wrote:

> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> The goal is to move the quad_enable manufacturer specific init in the
> nor->manufacturer->fixups->default_init()
> 
> The legacy/core quad_enable() implementation is spansion_quad_enable(),
> select this method by default.
> 
> Set specific manufacturer fixups->default_init() hooks to overwrite
> the default quad_enable() implementation when needed.
> 
> Get rid of the spi_nor_flash_parameter int (*quad_enable)() pointer to
> function, as we always choose to overwrite the nor->quad_enable,
> if needed.
> 
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> ---
>  drivers/mtd/spi-nor/spi-nor.c | 103 +++++++++++++++++++++++-------------------
>  1 file changed, 57 insertions(+), 46 deletions(-)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index 94aba5ce1462..a906c36260c8 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -101,8 +101,6 @@ struct spi_nor_flash_parameter {
>  	struct spi_nor_hwcaps		hwcaps;
>  	struct spi_nor_read_command	reads[SNOR_CMD_READ_MAX];
>  	struct spi_nor_pp_command	page_programs[SNOR_CMD_PP_MAX];
> -
> -	int (*quad_enable)(struct spi_nor *nor);
>  };
>  
>  struct sfdp_parameter_header {
> @@ -2275,7 +2273,7 @@ static void gd25q256_default_init(struct spi_nor *nor,
>  	 * indicate the quad_enable method for this case, we need
>  	 * set it in the default_init fixup hook.
>  	 */
> -	params->quad_enable = macronix_quad_enable;
> +	nor->quad_enable = macronix_quad_enable;
>  }
>  
>  static struct spi_nor_fixups gd25q256_fixups = {
> @@ -3618,24 +3616,24 @@ static int spi_nor_parse_bfpt(struct spi_nor *nor,
>  	/* Quad Enable Requirements. */
>  	switch (bfpt.dwords[BFPT_DWORD(15)] & BFPT_DWORD15_QER_MASK) {
>  	case BFPT_DWORD15_QER_NONE:
> -		params->quad_enable = NULL;
> +		nor->quad_enable = NULL;
>  		break;
>  
>  	case BFPT_DWORD15_QER_SR2_BIT1_BUGGY:
>  	case BFPT_DWORD15_QER_SR2_BIT1_NO_RD:
> -		params->quad_enable = spansion_no_read_cr_quad_enable;
> +		nor->quad_enable = spansion_no_read_cr_quad_enable;
>  		break;
>  
>  	case BFPT_DWORD15_QER_SR1_BIT6:
> -		params->quad_enable = macronix_quad_enable;
> +		nor->quad_enable = macronix_quad_enable;
>  		break;
>  
>  	case BFPT_DWORD15_QER_SR2_BIT7:
> -		params->quad_enable = sr2_bit7_quad_enable;
> +		nor->quad_enable = sr2_bit7_quad_enable;
>  		break;
>  
>  	case BFPT_DWORD15_QER_SR2_BIT1:
> -		params->quad_enable = spansion_read_cr_quad_enable;
> +		nor->quad_enable = spansion_read_cr_quad_enable;
>  		break;
>  
>  	default:
> @@ -4286,10 +4284,41 @@ static int spi_nor_parse_sfdp(struct spi_nor *nor,
>  	return err;
>  }
>  
> +static void macronix_set_default_init(struct spi_nor *nor)
> +{
> +	nor->quad_enable = macronix_quad_enable;
> +}
> +
> +static void st_micron_set_default_init(struct spi_nor *nor)
> +{
> +	nor->quad_enable = NULL;
> +}
> +
> +static void spi_nor_mfr_init_params(struct spi_nor *nor,
> +				    struct spi_nor_flash_parameter *params)

So now we have spi_nor_mfr_init_params() and
spi_nor_manufacturer_init_params(), that's a bit confusing. Can't we
just inline the below code in the spi_nor_manufacturer_init_params()
func? I guess this func will be removed anyway, so maybe it's not
such a big deal.

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> +{
> +	switch (JEDEC_MFR(nor->info)) {
> +	case SNOR_MFR_MACRONIX:
> +		macronix_set_default_init(nor);
> +		break;
> +
> +	case SNOR_MFR_ST:
> +	case SNOR_MFR_MICRON:
> +		st_micron_set_default_init(nor);
> +		break;
> +
> +	default:
> +		break;
> +	}
> +}
> +
>  static void
>  spi_nor_manufacturer_init_params(struct spi_nor *nor,
>  				 struct spi_nor_flash_parameter *params)
>  {
> +	/* Init flash parameters based on MFR */
> +	spi_nor_mfr_init_params(nor, params);
> +
>  	if (nor->info->fixups && nor->info->fixups->default_init)
>  		return nor->info->fixups->default_init(nor, params);
>  }
> @@ -4369,25 +4398,6 @@ static int spi_nor_init_params(struct spi_nor *nor,
>  			       SPINOR_OP_SE);
>  	spi_nor_init_uniform_erase_map(map, erase_mask, params->size);
>  
> -	/* Select the procedure to set the Quad Enable bit. */
> -	if (params->hwcaps.mask & (SNOR_HWCAPS_READ_QUAD |
> -				   SNOR_HWCAPS_PP_QUAD)) {
> -		switch (JEDEC_MFR(info)) {
> -		case SNOR_MFR_MACRONIX:
> -			params->quad_enable = macronix_quad_enable;
> -			break;
> -
> -		case SNOR_MFR_ST:
> -		case SNOR_MFR_MICRON:
> -			break;
> -
> -		default:
> -			/* Kept only for backward compatibility purpose. */
> -			params->quad_enable = spansion_quad_enable;
> -			break;
> -		}
> -	}
> -
>  	spi_nor_manufacturer_init_params(nor, params);
>  
>  	if ((info->flags & (SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ)) &&
> @@ -4569,7 +4579,6 @@ static int spi_nor_setup(struct spi_nor *nor,
>  			 const struct spi_nor_hwcaps *hwcaps)
>  {
>  	u32 ignored_mask, shared_mask;
> -	bool enable_quad_io;
>  	int err;
>  
>  	/*
> @@ -4617,21 +4626,23 @@ static int spi_nor_setup(struct spi_nor *nor,
>  
>  	/* Select the Sector Erase command. */
>  	err = spi_nor_select_erase(nor, nor->info->sector_size);
> -	if (err) {
> +	if (err)
>  		dev_err(nor->dev,
>  			"can't select erase settings supported by both the SPI controller and memory.\n");
> -		return err;
> -	}
>  
> -	/* Enable Quad I/O if needed. */
> -	enable_quad_io = (spi_nor_get_protocol_width(nor->read_proto) == 4 ||
> -			  spi_nor_get_protocol_width(nor->write_proto) == 4);
> -	if (enable_quad_io && params->quad_enable)
> -		nor->quad_enable = params->quad_enable;
> -	else
> -		nor->quad_enable = NULL;
> +	return err;
> +}
>  
> -	return 0;
> +static int spi_nor_quad_enable(struct spi_nor *nor)
> +{
> +	if (!nor->quad_enable)
> +		return 0;
> +
> +	if (!(spi_nor_get_protocol_width(nor->read_proto) == 4 ||
> +	      spi_nor_get_protocol_width(nor->write_proto) == 4))
> +		return 0;
> +
> +	return nor->quad_enable(nor);
>  }
>  
>  static int spi_nor_init(struct spi_nor *nor)
> @@ -4650,12 +4661,10 @@ static int spi_nor_init(struct spi_nor *nor)
>  		}
>  	}
>  
> -	if (nor->quad_enable) {
> -		err = nor->quad_enable(nor);
> -		if (err) {
> -			dev_err(nor->dev, "quad mode not supported\n");
> -			return err;
> -		}
> +	err = spi_nor_quad_enable(nor);
> +	if (err) {
> +		dev_err(nor->dev, "quad mode not supported\n");
> +		return err;
>  	}
>  
>  	if (nor->addr_width == 4 && !(nor->flags & SNOR_F_4B_OPCODES)) {
> @@ -4782,6 +4791,9 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
>  	    nor->info->flags & SPI_NOR_HAS_LOCK)
>  		nor->clear_sr_bp = spi_nor_clear_sr_bp;
>  
> +	/* Kept only for backward compatibility purpose. */
> +	nor->quad_enable = spansion_quad_enable;
> +
>  	/* Parse the Serial Flash Discoverable Parameters table. */
>  	ret = spi_nor_init_params(nor, &params);
>  	if (ret)
> @@ -4858,7 +4870,6 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
>  	 * - select op codes for (Fast) Read, Page Program and Sector Erase.
>  	 * - set the number of dummy cycles (mode cycles + wait states).
>  	 * - set the SPI protocols for register and memory accesses.
> -	 * - set the Quad Enable bit if needed (required by SPI x-y-4 protos).
>  	 */
>  	ret = spi_nor_setup(nor, &params, hwcaps);
>  	if (ret)


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
