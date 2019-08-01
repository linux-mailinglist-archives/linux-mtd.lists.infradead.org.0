Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52CE57D57B
	for <lists+linux-mtd@lfdr.de>; Thu,  1 Aug 2019 08:24:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IPMlyUUGHt9ZQAelCeiiRtq07QHg7KUiO8E/fp2fmr0=; b=NTBZLUK2HbIYsZ
	3zQWLQVBnmAhXkZHCZfb6Y0FlJlAxnUDbc4uvaiRwfBkdzzaJBjMi58Eau3/ywCCdqMSLvCQFQhwt
	So8llraXd26LmRi3RhtkklMjDXGrvLMbka6WshmPlHQS+3rFdvFggTvTX+uIJfSogxXwnnIwvDi1r
	dNziLVyipPp3EzPIhTqpDkzG7rvfHEvdTQbpP6aaRTl4Ploz2jRyBzo0RaPTqPFAdoCA7I2k88VqF
	2nOk0opYuhAp/7KuDJxfEP5dgmI/vRb9eOtdLH24/xXiACZTzq1sbPlEgT67/drDzLNFqA8fft0uq
	0iAl+UiTsNjDLw1hy+8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht4W1-0004ac-CF; Thu, 01 Aug 2019 06:24:41 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht4Vu-0004aD-Dj
 for linux-mtd@lists.infradead.org; Thu, 01 Aug 2019 06:24:36 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id F2B9B28BFE1;
 Thu,  1 Aug 2019 07:24:32 +0100 (BST)
Date: Thu, 1 Aug 2019 08:24:29 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: <Tudor.Ambarus@microchip.com>
Subject: Re: [PATCH 1/7] mtd: spi-nor: Add default_init() hook to tweak
 flash parameters
Message-ID: <20190801082429.28feb2b5@collabora.com>
In-Reply-To: <20190731090315.26798-2-tudor.ambarus@microchip.com>
References: <20190731090315.26798-1-tudor.ambarus@microchip.com>
 <20190731090315.26798-2-tudor.ambarus@microchip.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_232434_727042_A6D32475 
X-CRM114-Status: GOOD (  23.54  )
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
Cc: vigneshr@ti.com, richard@nod.at, linux-kernel@vger.kernel.org,
 marek.vasut@gmail.com, linux-mtd@lists.infradead.org,
 miquel.raynal@bootlin.com, computersforpeace@gmail.com, dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, 31 Jul 2019 09:03:27 +0000
<Tudor.Ambarus@microchip.com> wrote:

> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> As of now, the flash parameters initialization logic is as following:
> 
> a/ default flash parameters init in spi_nor_init_params()
> b/ manufacturer specific flash parameters updates, split across entire
>    spi-nor core code
> c/ flash parameters updates based on SFDP tables
> d/ post BFPT flash parameter updates
> 
> In the quest of removing the manufacturer specific code from the spi-nor
> core, we want to impose a timeline/priority on how the flash parameters
> are updated. The following sequence of calls is pursued:
> 
> 1/ spi-nor core legacy flash parameters init:
> 	spi_nor_default_init_params()
> 
> 2/ MFR-based manufacturer flash parameters init:
> 	nor->manufacturer->fixups->default_init()
> 
> 3/ specific flash_info tweeks done when decisions can not be done just on
>    MFR:
> 	nor->info->fixups->default_init()
> 
> 4/ SFDP tables flash parameters init - SFDP knows better:
> 	spi_nor_sfdp_init_params()
> 
> 5/ post SFDP tables flash parameters updates - in case manufacturers get
>    the serial flash tables wrong or incomplete.
> 	nor->info->fixups->post_sfdp()
>    The later can be extended to nor->manufacturer->fixups->post_sfdp() if
>    needed.
> 
> This patch opens doors for steps 2/ and 3/.
> 
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
>  drivers/mtd/spi-nor/spi-nor.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index 28a64dbdaea9..ac00f90ebaa9 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -219,12 +219,17 @@ struct sfdp_bfpt {
>  
>  /**
>   * struct spi_nor_fixups - SPI NOR fixup hooks
> + * @default_init: called after default flash parameters init. Used to tweak
> + *                flash parameters when information provided by the flash_info
> + *                table is incomplete or wrong.
>   * @post_bfpt: called after the BFPT table has been parsed
>   *
>   * Those hooks can be used to tweak the SPI NOR configuration when the SFDP
>   * table is broken or not available.
>   */
>  struct spi_nor_fixups {
> +	void (*default_init)(struct spi_nor *nor,
> +			     struct spi_nor_flash_parameter *params);
>  	int (*post_bfpt)(struct spi_nor *nor,
>  			 const struct sfdp_parameter_header *bfpt_header,
>  			 const struct sfdp_bfpt *bfpt,
> @@ -4267,6 +4272,14 @@ static int spi_nor_parse_sfdp(struct spi_nor *nor,
>  	return err;
>  }
>  
> +static void
> +spi_nor_manufacturer_init_params(struct spi_nor *nor,
> +				 struct spi_nor_flash_parameter *params)
> +{
> +	if (nor->info->fixups && nor->info->fixups->default_init)
> +		return nor->info->fixups->default_init(nor, params);
> +}
> +
>  static int spi_nor_init_params(struct spi_nor *nor,
>  			       struct spi_nor_flash_parameter *params)
>  {
> @@ -4370,6 +4383,8 @@ static int spi_nor_init_params(struct spi_nor *nor,
>  			params->quad_enable = info->quad_enable;
>  	}
>  
> +	spi_nor_manufacturer_init_params(nor, params);
> +
>  	if ((info->flags & (SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ)) &&
>  	    !(info->flags & SPI_NOR_SKIP_SFDP)) {
>  		struct spi_nor_flash_parameter sfdp_params;


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
