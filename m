Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3759C33A
	for <lists+linux-mtd@lfdr.de>; Sun, 25 Aug 2019 14:26:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AfKeUQn6JEEW0DlpYvIIKIhBWczZQd6VkeqGhPLZD5o=; b=Af67WBStoLpCvW
	puh6zmB9GEKKLnPjzdSrogjm0NFGfB8jtoIUPXSqqBJmopsJvK0xEzcsPh2NXbubUCApUMVP9cStO
	pS57D/ZwMWCotxeJZsFZAL/iXOpqyTFgnwYS8cNYYzwdE6Kbhp9mbgX9WeCCLQMZfsNPRV4Pbw3gN
	0GJ2PY+Cak5R1/vffFg63zI6EvuSRC+6HQZLfgoR9EuCXGsWHUUeyPNzGQrzRSEbY6/LtHMF799+N
	gj0M1Xhpbfb3xyejivFh9FuDv1/vtKG3NLo3ey6g24a15Q969cpeo+oeBAmj0dfHAyMs3tu/vg0Nr
	uyAXoWFfD48doHaky4sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1rbN-0008NO-PQ; Sun, 25 Aug 2019 12:26:33 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1rbD-0008N0-UA
 for linux-mtd@lists.infradead.org; Sun, 25 Aug 2019 12:26:25 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 16C29260D63;
 Sun, 25 Aug 2019 13:26:22 +0100 (BST)
Date: Sun, 25 Aug 2019 14:26:18 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: <Tudor.Ambarus@microchip.com>
Subject: Re: [PATCH v2 6/7] mtd: spi-nor: Rework the SPI NOR lock/unlock logic
Message-ID: <20190825142618.70938b43@collabora.com>
In-Reply-To: <20190824120027.14452-7-tudor.ambarus@microchip.com>
References: <20190824120027.14452-1-tudor.ambarus@microchip.com>
 <20190824120027.14452-7-tudor.ambarus@microchip.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_052624_245946_94706F27 
X-CRM114-Status: GOOD (  26.68  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: vigneshr@ti.com, boris.brezillon@bootlin.com, richard@nod.at,
 linux-kernel@vger.kernel.org, marek.vasut@gmail.com,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Sat, 24 Aug 2019 12:00:47 +0000
<Tudor.Ambarus@microchip.com> wrote:

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
>  drivers/mtd/spi-nor/spi-nor.c | 50 ++++++++++++++++++++++++++++++++-----------
>  include/linux/mtd/spi-nor.h   | 23 ++++++++++++++------
>  2 files changed, 53 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index 1629584be30e..fc9e14777212 100644
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
>  	nor->params.quad_enable = NULL;
>  	nor->params.set_4byte = st_micron_set_4byte;
>  }
> @@ -4292,6 +4299,23 @@ static void spi_nor_legacy_init_params(struct spi_nor *nor)
>  }
>  
>  /**
> + * spi_nor_late_init_params() - Late initialization of legacy flash parameters.
> + * @nor:	pointer to a 'struct spi_nor'
> + *
> + * Used to set legacy flash parameters and settings when the ->default_init()
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
> @@ -4316,6 +4340,10 @@ static void spi_nor_legacy_init_params(struct spi_nor *nor)
>   *    Please not that there is a ->post_bfpt() fixup hook that can overwrite the
>   *    flash parameters and settings imediately after parsing the Basic Flash
>   *    Parameter Table.
> + *
> + * 4/ Late legacy flash parameters initialization, used when the
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
> @@ -4730,6 +4760,9 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
>  	if (info->flags & SPI_S3AN)
>  		nor->flags |=  SNOR_F_READY_XSR_RDY;
>  
> +	if (info->flags & SPI_NOR_HAS_LOCK)
> +		nor->flags |= SNOR_F_HAS_LOCK;
> +
>  	/*
>  	 * Atmel, SST, Intel/Numonyx, and others serial NOR tend to power up
>  	 * with the software protection bits set.
> @@ -4754,16 +4787,7 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
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
> index 012731ad339f..6c5eaf607b50 100644
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
> @@ -484,6 +497,7 @@ struct spi_nor;
>   * @quad_enable:	enables SPI NOR quad mode.
>   * @set_4byte:		puts the SPI NOR in 4 byte addressing mode.
>   * @disable_block_protection: disables block protection during power-up.
> + * @locking_ops:	SPI NOR locking methods.
>   */
>  struct spi_nor_flash_parameter {
>  	u64				size;
> @@ -498,6 +512,8 @@ struct spi_nor_flash_parameter {
>  	int (*quad_enable)(struct spi_nor *nor);
>  	int (*set_4byte)(struct spi_nor *nor, bool enable);
>  	int (*disable_block_protection)(struct spi_nor *nor);

Should we move this ->disable_block_protection() hook to
spi_nor_locking_ops? 

> +
> +	const struct spi_nor_locking_ops *locking_ops;
>  };
>  
>  /**
> @@ -538,10 +554,6 @@ struct flash_info;
>   * @erase:		[DRIVER-SPECIFIC] erase a sector of the SPI NOR
>   *			at the offset @offs; if not provided by the driver,
>   *			spi-nor will send the erase opcode via write_reg()
> - * @flash_lock:		[FLASH-SPECIFIC] lock a region of the SPI NOR
> - * @flash_unlock:	[FLASH-SPECIFIC] unlock a region of the SPI NOR
> - * @flash_is_locked:	[FLASH-SPECIFIC] check if a region of the SPI NOR is
> - *			completely locked
>   * @params:		[FLASH-SPECIFIC] SPI-NOR flash parameters and settings.
>   *                      The structure includes legacy flash parameters and
>   *                      settings that can be overwritten by the spi_nor_fixups
> @@ -579,9 +591,6 @@ struct spi_nor {
>  			size_t len, const u_char *write_buf);
>  	int (*erase)(struct spi_nor *nor, loff_t offs);
>  
> -	int (*flash_lock)(struct spi_nor *nor, loff_t ofs, uint64_t len);
> -	int (*flash_unlock)(struct spi_nor *nor, loff_t ofs, uint64_t len);
> -	int (*flash_is_locked)(struct spi_nor *nor, loff_t ofs, uint64_t len);
>  	struct spi_nor_flash_parameter params;
>  
>  	void *priv;


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
