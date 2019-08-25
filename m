Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 535179C30B
	for <lists+linux-mtd@lfdr.de>; Sun, 25 Aug 2019 13:33:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x10X09XwVV5xpu8AhheLgjHOzI8+IrfbNpyMApmBJa8=; b=q/fA3yHvJfXSKI
	2JgrVrFIVDdsBdMtRCx+JySnIIWHJnT4oY+DrnF6jlxjIKZAqU+2WRP+eLkzdnwLK5g2D24tID+8N
	FOawos5hfgxRD6PL15nKDpStbO8cvM35L+9T8348V9eBlt+j6JIX97aNixpM14CDooQW7zN26BnhR
	jW9vKZzmqe5bCGaQe21CgLlhAhBXzz0NcDXDHJfnqg0ExOmqOhzzIEHYbtqsSLw29o25mFzgToOcJ
	gPnjkAU8wtKDlTRmFfmqMwej7ZIIbt7C8F+1VEc0dRS477DB2OXx2yORwUjtDqmfKs5FME7lVMGIt
	DgiTHPhDzDUIPifqA9rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1qlV-0005Ck-FM; Sun, 25 Aug 2019 11:32:57 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1qlJ-0005C0-Lq
 for linux-mtd@lists.infradead.org; Sun, 25 Aug 2019 11:32:48 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 4CB3028A5BC;
 Sun, 25 Aug 2019 12:32:44 +0100 (BST)
Date: Sun, 25 Aug 2019 13:32:41 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: <Tudor.Ambarus@microchip.com>
Subject: Re: [PATCH 3/5] mtd: spi-nor: Drop quad_enable() from 'struct spi-nor'
Message-ID: <20190825133241.5e920e69@collabora.com>
In-Reply-To: <20190823155325.13459-4-tudor.ambarus@microchip.com>
References: <20190823155325.13459-1-tudor.ambarus@microchip.com>
 <20190823155325.13459-4-tudor.ambarus@microchip.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_043245_969168_E47F1C13 
X-CRM114-Status: GOOD (  21.02  )
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
 miquel.raynal@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, 23 Aug 2019 15:53:39 +0000
<Tudor.Ambarus@microchip.com> wrote:

> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> All flash parameters and settings should reside inside
> 'struct spi_nor_flash_parameter'. Drop the local copy of
> quad_enable() and use the one from 'struct spi_nor_flash_parameter'.
> 
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
>  drivers/mtd/spi-nor/spi-nor.c | 38 ++++++++++++++++++++++----------------
>  include/linux/mtd/spi-nor.h   |  2 --
>  2 files changed, 22 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index e9b9cd70a999..6bd104c29cd9 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -4403,7 +4403,6 @@ static int spi_nor_setup(struct spi_nor *nor,
>  {
>  	struct spi_nor_flash_parameter *params = &nor->params;
>  	u32 ignored_mask, shared_mask;
> -	bool enable_quad_io;
>  	int err;
>  
>  	/*
> @@ -4457,17 +4456,27 @@ static int spi_nor_setup(struct spi_nor *nor,
>  		return err;
>  	}
>  
> -	/* Enable Quad I/O if needed. */
> -	enable_quad_io = (spi_nor_get_protocol_width(nor->read_proto) == 4 ||
> -			  spi_nor_get_protocol_width(nor->write_proto) == 4);
> -	if (enable_quad_io && params->quad_enable)
> -		nor->quad_enable = params->quad_enable;
> -	else
> -		nor->quad_enable = NULL;
> -
>  	return 0;
>  }
>  
> +/**
> + * spi_nor_quad_enable() - enable Quad I/O if needed.
> + * @nor:                pointer to a 'struct spi_nor'
> + *
> + * Return: 0 on success, -errno otherwise.
> + */
> +static int spi_nor_quad_enable(struct spi_nor *nor)
> +{
> +	if (!nor->params.quad_enable)
> +		return 0;
> +
> +	if (!(spi_nor_get_protocol_width(nor->read_proto) == 4 ||
> +	      spi_nor_get_protocol_width(nor->write_proto) == 4))
> +		return 0;
> +
> +	return nor->params.quad_enable(nor);
> +}
> +
>  static int spi_nor_init(struct spi_nor *nor)
>  {
>  	int err;
> @@ -4484,12 +4493,10 @@ static int spi_nor_init(struct spi_nor *nor)
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
> @@ -4706,7 +4713,6 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
>  	 * - select op codes for (Fast) Read, Page Program and Sector Erase.
>  	 * - set the number of dummy cycles (mode cycles + wait states).
>  	 * - set the SPI protocols for register and memory accesses.
> -	 * - set the Quad Enable bit if needed (required by SPI x-y-4 protos).
>  	 */
>  	ret = spi_nor_setup(nor, hwcaps);
>  	if (ret)
> diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
> index 77ba692d9348..17787238f0e9 100644
> --- a/include/linux/mtd/spi-nor.h
> +++ b/include/linux/mtd/spi-nor.h
> @@ -535,7 +535,6 @@ struct flash_info;
>   * @flash_unlock:	[FLASH-SPECIFIC] unlock a region of the SPI NOR
>   * @flash_is_locked:	[FLASH-SPECIFIC] check if a region of the SPI NOR is
>   *			completely locked
> - * @quad_enable:	[FLASH-SPECIFIC] enables SPI NOR quad mode
>   * @clear_sr_bp:	[FLASH-SPECIFIC] clears the Block Protection Bits from
>   *			the SPI NOR Status Register.
>   * @params:		[FLASH-SPECIFIC] SPI-NOR flash parameters and settings.
> @@ -579,7 +578,6 @@ struct spi_nor {
>  	int (*flash_lock)(struct spi_nor *nor, loff_t ofs, uint64_t len);
>  	int (*flash_unlock)(struct spi_nor *nor, loff_t ofs, uint64_t len);
>  	int (*flash_is_locked)(struct spi_nor *nor, loff_t ofs, uint64_t len);
> -	int (*quad_enable)(struct spi_nor *nor);
>  	int (*clear_sr_bp)(struct spi_nor *nor);
>  	struct spi_nor_flash_parameter params;
>  


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
