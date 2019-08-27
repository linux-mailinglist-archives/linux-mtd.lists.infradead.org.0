Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0CE9DCA3
	for <lists+linux-mtd@lfdr.de>; Tue, 27 Aug 2019 06:31:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TqpnclAYagaQqJVlP4wGiz+u/FMWRra6WYLC5yu78O4=; b=YYx/f+ZgFdX3Z7QuIsryrZ9h47
	Ic1FIyDnZkNrVIx6ohcMQlDC+DWC5tO72TxeCkHqzBk6GW92d/GQeyvyEejJsFHwgkWTnlWjmD5sI
	2fatlnuDupH/x7dDWD8xcSPAZbvM6/01mtFcs1h3HhoQrYi8sz9iHD+PxLz+BD3jN/GswgvJaemVz
	LoujzNoiVjiJTV92oDgoVRfRJR6oDwI9xI2hAhvDp3MqEGTE2qohOae0J2pvl3PIAF5GVJ0Jlr/Ya
	dTPRqNEwG9UamzWjOLExvhcHsfFW2UC/N7JZTUKGpyOOOdizJvPtdWrxYZbn2VLUCKE/Vm29ocwAY
	bEUirpjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2T8R-0003hi-Q4; Tue, 27 Aug 2019 04:31:11 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2T8I-0003hN-KD
 for linux-mtd@lists.infradead.org; Tue, 27 Aug 2019 04:31:04 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7R4Uv30063374;
 Mon, 26 Aug 2019 23:30:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566880257;
 bh=EGiOipczL8Z4qduk+YMKG+sLDN+z7tLtIKAdz5Urf1g=;
 h=Subject:To:References:From:Date:In-Reply-To;
 b=e5ER7gVf8jGebfgTPRmTiA/eu561P8reYU/4LrD7VZJOJfmtYs7myetdEJErLjsvt
 1Q4vIGabr8e/WWdMK2YwT63Z4Uc9bb1dIj+s1vT+JNJlU9weRpjEsJJi3C5TEpgXe8
 STxGiBWDdDVTa63FpRu3ayaSS6+8RD92N0cxCim0=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7R4Uucw065472
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 26 Aug 2019 23:30:56 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 26
 Aug 2019 23:30:56 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 26 Aug 2019 23:30:56 -0500
Received: from [172.24.145.136] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7R4Ur5O078337;
 Mon, 26 Aug 2019 23:30:54 -0500
Subject: Re: [RESEND PATCH v3 02/20] mtd: spi-nor: Use nor->params
To: <Tudor.Ambarus@microchip.com>, <boris.brezillon@collabora.com>,
 <marek.vasut@gmail.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <linux-mtd@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <20190826120821.16351-1-tudor.ambarus@microchip.com>
 <20190826120821.16351-3-tudor.ambarus@microchip.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <7430df6b-e31d-b77a-fe84-735fe1a3df18@ti.com>
Date: Tue, 27 Aug 2019 10:01:31 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190826120821.16351-3-tudor.ambarus@microchip.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_213102_750814_7C157ECD 
X-CRM114-Status: GOOD (  23.83  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 26/08/19 5:38 PM, Tudor.Ambarus@microchip.com wrote:
> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> The Flash parameters and settings are now stored in 'struct spi_nor'.
> Use this instead of the stack allocated params.
> 
> Few functions stop passing pointer to params, as they can get it from
> 'struct spi_nor'. spi_nor_parse_sfdp() and children will keep passing
> pointer to params because of the roll-back mechanism: in case the
> parsing of SFDP fails, the legacy flash parameter and settings will be
> restored.
> 
> Zeroing params is no longer needed because all SPI NOR users kzalloc
> 'struct spi_nor'.
> 
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
> ---

Reviewed-by: Vignesh Raghavendra <vigneshr@ti.com>

Regards
Vignesh

> v3: collect R-b
> 
>  drivers/mtd/spi-nor/spi-nor.c | 46 ++++++++++++++++++-------------------------
>  1 file changed, 19 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index d35dc6a97521..e9b9cd70a999 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -2974,16 +2974,13 @@ static int spi_nor_spimem_check_pp(struct spi_nor *nor,
>   * spi_nor_spimem_adjust_hwcaps - Find optimal Read/Write protocol
>   *                                based on SPI controller capabilities
>   * @nor:        pointer to a 'struct spi_nor'
> - * @params:     pointer to the 'struct spi_nor_flash_parameter'
> - *              representing SPI NOR flash capabilities
>   * @hwcaps:     pointer to resulting capabilities after adjusting
>   *              according to controller and flash's capability
>   */
>  static void
> -spi_nor_spimem_adjust_hwcaps(struct spi_nor *nor,
> -			     const struct spi_nor_flash_parameter *params,
> -			     u32 *hwcaps)
> +spi_nor_spimem_adjust_hwcaps(struct spi_nor *nor, u32 *hwcaps)
>  {
> +	struct spi_nor_flash_parameter *params =  &nor->params;
>  	unsigned int cap;
>  
>  	/* DTR modes are not supported yet, mask them all. */
> @@ -4129,16 +4126,13 @@ static int spi_nor_parse_sfdp(struct spi_nor *nor,
>  	return err;
>  }
>  
> -static int spi_nor_init_params(struct spi_nor *nor,
> -			       struct spi_nor_flash_parameter *params)
> +static int spi_nor_init_params(struct spi_nor *nor)
>  {
> +	struct spi_nor_flash_parameter *params = &nor->params;
>  	struct spi_nor_erase_map *map = &nor->erase_map;
>  	const struct flash_info *info = nor->info;
>  	u8 i, erase_mask;
>  
> -	/* Set legacy flash parameters as default. */
> -	memset(params, 0, sizeof(*params));
> -
>  	/* Set SPI NOR sizes. */
>  	params->size = (u64)info->sector_size * info->n_sectors;
>  	params->page_size = info->page_size;
> @@ -4255,7 +4249,6 @@ static int spi_nor_init_params(struct spi_nor *nor,
>  }
>  
>  static int spi_nor_select_read(struct spi_nor *nor,
> -			       const struct spi_nor_flash_parameter *params,
>  			       u32 shared_hwcaps)
>  {
>  	int cmd, best_match = fls(shared_hwcaps & SNOR_HWCAPS_READ_MASK) - 1;
> @@ -4268,7 +4261,7 @@ static int spi_nor_select_read(struct spi_nor *nor,
>  	if (cmd < 0)
>  		return -EINVAL;
>  
> -	read = &params->reads[cmd];
> +	read = &nor->params.reads[cmd];
>  	nor->read_opcode = read->opcode;
>  	nor->read_proto = read->proto;
>  
> @@ -4287,7 +4280,6 @@ static int spi_nor_select_read(struct spi_nor *nor,
>  }
>  
>  static int spi_nor_select_pp(struct spi_nor *nor,
> -			     const struct spi_nor_flash_parameter *params,
>  			     u32 shared_hwcaps)
>  {
>  	int cmd, best_match = fls(shared_hwcaps & SNOR_HWCAPS_PP_MASK) - 1;
> @@ -4300,7 +4292,7 @@ static int spi_nor_select_pp(struct spi_nor *nor,
>  	if (cmd < 0)
>  		return -EINVAL;
>  
> -	pp = &params->page_programs[cmd];
> +	pp = &nor->params.page_programs[cmd];
>  	nor->program_opcode = pp->opcode;
>  	nor->write_proto = pp->proto;
>  	return 0;
> @@ -4407,9 +4399,9 @@ static int spi_nor_select_erase(struct spi_nor *nor, u32 wanted_size)
>  }
>  
>  static int spi_nor_setup(struct spi_nor *nor,
> -			 const struct spi_nor_flash_parameter *params,
>  			 const struct spi_nor_hwcaps *hwcaps)
>  {
> +	struct spi_nor_flash_parameter *params = &nor->params;
>  	u32 ignored_mask, shared_mask;
>  	bool enable_quad_io;
>  	int err;
> @@ -4426,7 +4418,7 @@ static int spi_nor_setup(struct spi_nor *nor,
>  		 * need to discard some of them based on what the SPI
>  		 * controller actually supports (using spi_mem_supports_op()).
>  		 */
> -		spi_nor_spimem_adjust_hwcaps(nor, params, &shared_mask);
> +		spi_nor_spimem_adjust_hwcaps(nor, &shared_mask);
>  	} else {
>  		/*
>  		 * SPI n-n-n protocols are not supported when the SPI
> @@ -4442,7 +4434,7 @@ static int spi_nor_setup(struct spi_nor *nor,
>  	}
>  
>  	/* Select the (Fast) Read command. */
> -	err = spi_nor_select_read(nor, params, shared_mask);
> +	err = spi_nor_select_read(nor, shared_mask);
>  	if (err) {
>  		dev_err(nor->dev,
>  			"can't select read settings supported by both the SPI controller and memory.\n");
> @@ -4450,7 +4442,7 @@ static int spi_nor_setup(struct spi_nor *nor,
>  	}
>  
>  	/* Select the Page Program command. */
> -	err = spi_nor_select_pp(nor, params, shared_mask);
> +	err = spi_nor_select_pp(nor, shared_mask);
>  	if (err) {
>  		dev_err(nor->dev,
>  			"can't select write settings supported by both the SPI controller and memory.\n");
> @@ -4553,11 +4545,11 @@ static const struct flash_info *spi_nor_match_id(const char *name)
>  int spi_nor_scan(struct spi_nor *nor, const char *name,
>  		 const struct spi_nor_hwcaps *hwcaps)
>  {
> -	struct spi_nor_flash_parameter params;
>  	const struct flash_info *info = NULL;
>  	struct device *dev = nor->dev;
>  	struct mtd_info *mtd = &nor->mtd;
>  	struct device_node *np = spi_nor_get_flash_node(nor);
> +	struct spi_nor_flash_parameter *params = &nor->params;
>  	int ret;
>  	int i;
>  
> @@ -4639,7 +4631,7 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
>  		nor->clear_sr_bp = spi_nor_clear_sr_bp;
>  
>  	/* Parse the Serial Flash Discoverable Parameters table. */
> -	ret = spi_nor_init_params(nor, &params);
> +	ret = spi_nor_init_params(nor);
>  	if (ret)
>  		return ret;
>  
> @@ -4649,7 +4641,7 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
>  	mtd->type = MTD_NORFLASH;
>  	mtd->writesize = 1;
>  	mtd->flags = MTD_CAP_NORFLASH;
> -	mtd->size = params.size;
> +	mtd->size = params->size;
>  	mtd->_erase = spi_nor_erase;
>  	mtd->_read = spi_nor_read;
>  	mtd->_resume = spi_nor_resume;
> @@ -4688,18 +4680,18 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
>  		mtd->flags |= MTD_NO_ERASE;
>  
>  	mtd->dev.parent = dev;
> -	nor->page_size = params.page_size;
> +	nor->page_size = params->page_size;
>  	mtd->writebufsize = nor->page_size;
>  
>  	if (np) {
>  		/* If we were instantiated by DT, use it */
>  		if (of_property_read_bool(np, "m25p,fast-read"))
> -			params.hwcaps.mask |= SNOR_HWCAPS_READ_FAST;
> +			params->hwcaps.mask |= SNOR_HWCAPS_READ_FAST;
>  		else
> -			params.hwcaps.mask &= ~SNOR_HWCAPS_READ_FAST;
> +			params->hwcaps.mask &= ~SNOR_HWCAPS_READ_FAST;
>  	} else {
>  		/* If we weren't instantiated by DT, default to fast-read */
> -		params.hwcaps.mask |= SNOR_HWCAPS_READ_FAST;
> +		params->hwcaps.mask |= SNOR_HWCAPS_READ_FAST;
>  	}
>  
>  	if (of_property_read_bool(np, "broken-flash-reset"))
> @@ -4707,7 +4699,7 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
>  
>  	/* Some devices cannot do fast-read, no matter what DT tells us */
>  	if (info->flags & SPI_NOR_NO_FR)
> -		params.hwcaps.mask &= ~SNOR_HWCAPS_READ_FAST;
> +		params->hwcaps.mask &= ~SNOR_HWCAPS_READ_FAST;
>  
>  	/*
>  	 * Configure the SPI memory:
> @@ -4716,7 +4708,7 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
>  	 * - set the SPI protocols for register and memory accesses.
>  	 * - set the Quad Enable bit if needed (required by SPI x-y-4 protos).
>  	 */
> -	ret = spi_nor_setup(nor, &params, hwcaps);
> +	ret = spi_nor_setup(nor, hwcaps);
>  	if (ret)
>  		return ret;
>  
> 

-- 
Regards
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
