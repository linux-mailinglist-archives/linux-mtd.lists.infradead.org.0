Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E6059DE23
	for <lists+linux-mtd@lfdr.de>; Tue, 27 Aug 2019 08:36:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SVfb076TkzMW9BpDCFiyuVYV8aFs/dlD1Xz0OOG0f5M=; b=oasYSpbaczZddS
	Uto3mz6gM3GKLl4LubP+L3VN7GdxoOxTccsfUTZveBLFZrs7I4w40LSuFKv00gyTpeVJ27PFiDs9M
	8pjTwdLqjIMaWGKXBiSh+oHbzn/gUBuHo6HFCz7SzBT7av1ZeMxq2ZQ7a2TBH6MpE/l8c5BlBmmiq
	fHu/NjZXPeiI+3gcPsBbAIMsN5fykHnIkR4bwYctnkiUetyoyHtw60hPFHC61/T+1nfRYy41ZFapd
	7gOFq55XKUQsVoobMyra2yqcSnrjVWV3hX8i8bOJ9y+XYEl3IXKIsDpNCeyBag9J+97tbhF66csJd
	x72haxHkUA8dYkQhv+8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2V5T-0004vo-4e; Tue, 27 Aug 2019 06:36:15 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2V5J-0004vQ-4W
 for linux-mtd@lists.infradead.org; Tue, 27 Aug 2019 06:36:06 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7R6ZxLI097653;
 Tue, 27 Aug 2019 01:35:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566887759;
 bh=09Eii2YsgE2+5ZtQehM4rI33g3HVTNDXrlwmRAS8znI=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=j5ufs6sEAgHCjGry0SKMtpuFRVcbVskDogLw2ot8VV5h2Ry5m/5tZ3ozbun3qxFCO
 QesN9WkF6OUvzmnQxq3YldgQD4HNTpEjur2AEXPY91K8Wlgl1HBdoVNLGZbH4Y11w5
 nbvSxgRbsZvC81xKCd6gi9dWig28KeNmvc0w34KE=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7R6ZxVw075812
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 27 Aug 2019 01:35:59 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 27
 Aug 2019 01:35:58 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 27 Aug 2019 01:35:58 -0500
Received: from [172.24.145.136] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7R6ZsOx028392;
 Tue, 27 Aug 2019 01:35:55 -0500
Subject: Re: [RESEND PATCH v3 10/20] mtd: spi-nor: Rework the SPI NOR
 lock/unlock logic
To: <Tudor.Ambarus@microchip.com>, <boris.brezillon@collabora.com>,
 <marek.vasut@gmail.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <linux-mtd@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <20190826120821.16351-1-tudor.ambarus@microchip.com>
 <20190826120821.16351-11-tudor.ambarus@microchip.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <52884b82-23fe-86d9-06b2-0dd1d3e57f70@ti.com>
Date: Tue, 27 Aug 2019 12:06:32 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190826120821.16351-11-tudor.ambarus@microchip.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_233605_289179_69B7E1FD 
X-CRM114-Status: GOOD (  28.21  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
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
Cc: boris.brezillon@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 26/08/19 5:38 PM, Tudor.Ambarus@microchip.com wrote:
> From: Boris Brezillon <boris.brezillon@bootlin.com>
> 
> Add the SNOR_F_HAS_LOCK flag and set it when SPI_NOR_HAS_LOCK is set
> in the flash_info entry or when it's a Micron or ST flash.
> 
> Move the locking hooks in a separate struct so that we have just
> one field to update when we change the locking implementation.
> 
> Signed-off-by: Boris Brezillon <boris.brezillon@bootlin.com>
> [tudor.ambarus@microchip.com: use ->default_init() hook, introduce
> spi_nor_late_init_params(), set ops in nor->params]
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> ---
> v3: no changes, clear_sr_bp() is handled in the last patch of the
> series.
> 

Reviewed-by: Vignesh Raghavendra <vigneshr@ti.com>

One suggestion below:


>  drivers/mtd/spi-nor/spi-nor.c | 50 ++++++++++++++++++++++++++++++++-----------
>  include/linux/mtd/spi-nor.h   | 23 ++++++++++++++------
>  2 files changed, 53 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index 235e82a121a1..3f997797fa9d 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -1598,6 +1598,12 @@ static int stm_is_locked(struct spi_nor *nor, loff_t ofs, uint64_t len)
>  	return stm_is_locked_sr(nor, ofs, len, status);
>  }
>  
> +static const struct spi_nor_locking_ops stm_locking_ops = {
> +	.lock = stm_lock,
> +	.unlock = stm_unlock,
> +	.is_locked = stm_is_locked,
> +};
> +
>  static int spi_nor_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
>  {
>  	struct spi_nor *nor = mtd_to_spi_nor(mtd);
> @@ -1607,7 +1613,7 @@ static int spi_nor_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
>  	if (ret)
>  		return ret;
>  
> -	ret = nor->flash_lock(nor, ofs, len);
> +	ret = nor->params.locking_ops->lock(nor, ofs, len);
>  
>  	spi_nor_unlock_and_unprep(nor, SPI_NOR_OPS_UNLOCK);
>  	return ret;
> @@ -1622,7 +1628,7 @@ static int spi_nor_unlock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
>  	if (ret)
>  		return ret;
>  
> -	ret = nor->flash_unlock(nor, ofs, len);
> +	ret = nor->params.locking_ops->unlock(nor, ofs, len);
>  
>  	spi_nor_unlock_and_unprep(nor, SPI_NOR_OPS_LOCK);
>  	return ret;
> @@ -1637,7 +1643,7 @@ static int spi_nor_is_locked(struct mtd_info *mtd, loff_t ofs, uint64_t len)
>  	if (ret)
>  		return ret;
>  
> -	ret = nor->flash_is_locked(nor, ofs, len);
> +	ret = nor->params.locking_ops->is_locked(nor, ofs, len);
>  
>  	spi_nor_unlock_and_unprep(nor, SPI_NOR_OPS_LOCK);
>  	return ret;
> @@ -4148,6 +4154,7 @@ static void macronix_set_default_init(struct spi_nor *nor)
>  
>  static void st_micron_set_default_init(struct spi_nor *nor)
>  {
> +	nor->flags = SNOR_F_HAS_LOCK;

This is okay for now. But Perhaps its safer to do:

	nor->flags |= SNOR_F_HAS_LOCK;

so that we don't override flags if set earlier than
spi_nor_manufacturer_init_params(). I see that patch 20/20 does indeed
present one such case wrt atmel/Xilinix flashes IIUC

Regards
Vignesh

>  	nor->params.quad_enable = NULL;
>  	nor->params.set_4byte = st_micron_set_4byte;
>  }
> @@ -4292,6 +4299,23 @@ static void spi_nor_info_init_params(struct spi_nor *nor)
>  }
>  
>  /**
> + * spi_nor_late_init_params() - Late initialization of default flash parameters.
> + * @nor:	pointer to a 'struct spi_nor'
> + *
> + * Used to set default flash parameters and settings when the ->default_init()
> + * hook or the SFDP parser let voids.
> + */
> +static void spi_nor_late_init_params(struct spi_nor *nor)
> +{
> +	/*
> +	 * NOR protection support. When locking_ops are not provided, we pick
> +	 * the default ones.
> +	 */
> +	if (nor->flags & SNOR_F_HAS_LOCK && !nor->params.locking_ops)
> +		nor->params.locking_ops = &stm_locking_ops;
> +}
> +
> +/**
>   * spi_nor_init_params() - Initialize the flash's parameters and settings.
>   * @nor:	pointer to a 'struct spi-nor'.
>   *
> @@ -4316,6 +4340,10 @@ static void spi_nor_info_init_params(struct spi_nor *nor)
>   *    Please not that there is a ->post_bfpt() fixup hook that can overwrite the
>   *    flash parameters and settings imediately after parsing the Basic Flash
>   *    Parameter Table.
> + *
> + * 4/ Late default flash parameters initialization, used when the
> + * ->default_init() hook or the SFDP parser do not set specific params.
> + *		spi_nor_late_init_params()
>   */
>  static void spi_nor_init_params(struct spi_nor *nor)
>  {
> @@ -4326,6 +4354,8 @@ static void spi_nor_init_params(struct spi_nor *nor)
>  	if ((nor->info->flags & (SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ)) &&
>  	    !(nor->info->flags & SPI_NOR_SKIP_SFDP))
>  		spi_nor_sfdp_init_params(nor);
> +
> +	spi_nor_late_init_params(nor);
>  }
>  
>  static int spi_nor_select_read(struct spi_nor *nor,
> @@ -4707,6 +4737,9 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
>  	if (info->flags & SPI_S3AN)
>  		nor->flags |=  SNOR_F_READY_XSR_RDY;
>  
> +	if (info->flags & SPI_NOR_HAS_LOCK)
> +		nor->flags |= SNOR_F_HAS_LOCK;
> +
>  	/*
>  	 * Atmel, SST, Intel/Numonyx, and others serial NOR tend to power up
>  	 * with the software protection bits set.
> @@ -4731,16 +4764,7 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
>  	mtd->_read = spi_nor_read;
>  	mtd->_resume = spi_nor_resume;
>  
> -	/* NOR protection support for STmicro/Micron chips and similar */
> -	if (JEDEC_MFR(info) == SNOR_MFR_ST ||
> -	    JEDEC_MFR(info) == SNOR_MFR_MICRON ||
> -	    info->flags & SPI_NOR_HAS_LOCK) {
> -		nor->flash_lock = stm_lock;
> -		nor->flash_unlock = stm_unlock;
> -		nor->flash_is_locked = stm_is_locked;
> -	}
> -
> -	if (nor->flash_lock && nor->flash_unlock && nor->flash_is_locked) {
> +	if (nor->params.locking_ops) {
>  		mtd->_lock = spi_nor_lock;
>  		mtd->_unlock = spi_nor_unlock;
>  		mtd->_is_locked = spi_nor_is_locked;
> diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
> index 7da89dd483cb..ea3bcac54dc2 100644
> --- a/include/linux/mtd/spi-nor.h
> +++ b/include/linux/mtd/spi-nor.h
> @@ -243,6 +243,7 @@ enum spi_nor_option_flags {
>  	SNOR_F_BROKEN_RESET	= BIT(6),
>  	SNOR_F_4B_OPCODES	= BIT(7),
>  	SNOR_F_HAS_4BAIT	= BIT(8),
> +	SNOR_F_HAS_LOCK		= BIT(9),
>  };
>  
>  /**
> @@ -466,6 +467,18 @@ enum spi_nor_pp_command_index {
>  struct spi_nor;
>  
>  /**
> + * struct spi_nor_locking_ops - SPI NOR locking methods
> + * @lock:	lock a region of the SPI NOR.
> + * @unlock:	unlock a region of the SPI NOR.
> + * @is_locked:	check if a region of the SPI NOR is completely locked
> + */
> +struct spi_nor_locking_ops {
> +	int (*lock)(struct spi_nor *nor, loff_t ofs, uint64_t len);
> +	int (*unlock)(struct spi_nor *nor, loff_t ofs, uint64_t len);
> +	int (*is_locked)(struct spi_nor *nor, loff_t ofs, uint64_t len);
> +};
> +
> +/**
>   * struct spi_nor_flash_parameter - SPI NOR flash parameters and settings.
>   * Includes legacy flash parameters and settings that can be overwritten
>   * by the spi_nor_fixups hooks, or dynamically when parsing the JESD216
> @@ -483,6 +496,7 @@ struct spi_nor;
>   *                      Table.
>   * @quad_enable:	enables SPI NOR quad mode.
>   * @set_4byte:		puts the SPI NOR in 4 byte addressing mode.
> + * @locking_ops:	SPI NOR locking methods.
>   */
>  struct spi_nor_flash_parameter {
>  	u64				size;
> @@ -496,6 +510,8 @@ struct spi_nor_flash_parameter {
>  
>  	int (*quad_enable)(struct spi_nor *nor);
>  	int (*set_4byte)(struct spi_nor *nor, bool enable);
> +
> +	const struct spi_nor_locking_ops *locking_ops;
>  };
>  
>  /**
> @@ -536,10 +552,6 @@ struct flash_info;
>   * @erase:		[DRIVER-SPECIFIC] erase a sector of the SPI NOR
>   *			at the offset @offs; if not provided by the driver,
>   *			spi-nor will send the erase opcode via write_reg()
> - * @flash_lock:		[FLASH-SPECIFIC] lock a region of the SPI NOR
> - * @flash_unlock:	[FLASH-SPECIFIC] unlock a region of the SPI NOR
> - * @flash_is_locked:	[FLASH-SPECIFIC] check if a region of the SPI NOR is
> - *			completely locked
>   * @clear_sr_bp:	[FLASH-SPECIFIC] clears the Block Protection Bits from
>   *			the SPI NOR Status Register.
>   * @params:		[FLASH-SPECIFIC] SPI-NOR flash parameters and settings.
> @@ -579,9 +591,6 @@ struct spi_nor {
>  			size_t len, const u_char *write_buf);
>  	int (*erase)(struct spi_nor *nor, loff_t offs);
>  
> -	int (*flash_lock)(struct spi_nor *nor, loff_t ofs, uint64_t len);
> -	int (*flash_unlock)(struct spi_nor *nor, loff_t ofs, uint64_t len);
> -	int (*flash_is_locked)(struct spi_nor *nor, loff_t ofs, uint64_t len);
>  	int (*clear_sr_bp)(struct spi_nor *nor);
>  	struct spi_nor_flash_parameter params;
>  
> 

-- 
Regards
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
