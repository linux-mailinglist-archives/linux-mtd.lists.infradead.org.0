Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D6518164F
	for <lists+linux-mtd@lfdr.de>; Wed, 11 Mar 2020 11:55:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Sk31oIfq7yIxWH4rbTYN9BppJttTSLaCF5AoTnIlKg=; b=COe4DDSOlZ3nYd
	+G5YmE/b0qWD6Ch2KO/N5PrcS2nB1qcVanzAkfiNjbZy6V4ha3qph1f+B1682O0l7B+h8/x/besFb
	a6DYPsOTqqUsCyz8OBBv9Mu+psa7OQTNUBRQ8+77fbH5+OFAhTBBJ7c+7xp0Mnl8M711LBw9fHi1m
	q9yhveeizm/lv2o20i/cXP+pA9ua9gSAdSmgFCMoec2DF1d6PxsVSVLS3CzmPKWLI/wZxYttguNib
	yv0mmd4S+C2UY+2GcBWTSABSr/LuKksZPNHvOn42XafIacaQfWB6ayMrXNc5Du7/KF8dTcCL1qzi9
	n2/ndNjlkk77Cn2JGniA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBz0u-0001XT-67; Wed, 11 Mar 2020 10:55:00 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBz0a-0001P6-NB
 for linux-mtd@lists.infradead.org; Wed, 11 Mar 2020 10:54:42 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 2A4782929C9;
 Wed, 11 Mar 2020 10:54:36 +0000 (GMT)
Date: Wed, 11 Mar 2020 11:54:33 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: shiva.linuxworks@gmail.com
Subject: Re: [PATCH v6 6/6] mtd: spinand: micron: Add new Micron SPI NAND
 devices with multiple dies
Message-ID: <20200311115433.2360bea1@collabora.com>
In-Reply-To: <20200309115230.7207-7-sshivamurthy@micron.com>
References: <20200309115230.7207-1-sshivamurthy@micron.com>
 <20200309115230.7207-7-sshivamurthy@micron.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_035440_889860_E97D4490 
X-CRM114-Status: GOOD (  16.22  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 linux-kernel@vger.kernel.org, Frieder Schrempf <frieder.schrempf@kontron.de>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Shivamurthy Shastri <sshivamurthy@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon,  9 Mar 2020 12:52:30 +0100
shiva.linuxworks@gmail.com wrote:

> From: Shivamurthy Shastri <sshivamurthy@micron.com>
> 
> Add device table for new Micron SPI NAND devices, which have multiple
> dies.
> 
> Also, enable support to select the dies.
> 
> Signed-off-by: Shivamurthy Shastri <sshivamurthy@micron.com>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
>  drivers/mtd/nand/spi/micron.c | 55 +++++++++++++++++++++++++++++++++++
>  1 file changed, 55 insertions(+)
> 
> diff --git a/drivers/mtd/nand/spi/micron.c b/drivers/mtd/nand/spi/micron.c
> index 9db1ab71fcae..f7d148aaa476 100644
> --- a/drivers/mtd/nand/spi/micron.c
> +++ b/drivers/mtd/nand/spi/micron.c
> @@ -20,6 +20,14 @@
>  
>  #define MICRON_CFG_CR			BIT(0)
>  
> +/*
> + * As per datasheet, die selection is done by the 6th bit of Die
> + * Select Register (Address 0xD0).
> + */
> +#define MICRON_DIE_SELECT_REG	0xD0
> +
> +#define MICRON_SELECT_DIE(x)	((x) << 6)
> +
>  static SPINAND_OP_VARIANTS(read_cache_variants,
>  		SPINAND_PAGE_READ_FROM_CACHE_QUADIO_OP(0, 2, NULL, 0),
>  		SPINAND_PAGE_READ_FROM_CACHE_X4_OP(0, 1, NULL, 0),
> @@ -66,6 +74,20 @@ static const struct mtd_ooblayout_ops micron_8_ooblayout = {
>  	.free = micron_8_ooblayout_free,
>  };
>  
> +static int micron_select_target(struct spinand_device *spinand,
> +				unsigned int target)
> +{
> +	struct spi_mem_op op = SPINAND_SET_FEATURE_OP(MICRON_DIE_SELECT_REG,
> +						      spinand->scratchbuf);
> +
> +	if (target > 1)
> +		return -EINVAL;
> +
> +	*spinand->scratchbuf = MICRON_SELECT_DIE(target);
> +
> +	return spi_mem_exec_op(spinand->spimem, &op);
> +}
> +
>  static int micron_8_ecc_get_status(struct spinand_device *spinand,
>  				   u8 status)
>  {
> @@ -133,6 +155,17 @@ static const struct spinand_info micron_spinand_table[] = {
>  		     0,
>  		     SPINAND_ECCINFO(&micron_8_ooblayout,
>  				     micron_8_ecc_get_status)),
> +	/* M79A 4Gb 3.3V */
> +	SPINAND_INFO("MT29F4G01ADAGD", 0x36,
> +		     NAND_MEMORG(1, 2048, 128, 64, 2048, 80, 2, 1, 2),
> +		     NAND_ECCREQ(8, 512),
> +		     SPINAND_INFO_OP_VARIANTS(&read_cache_variants,
> +					      &write_cache_variants,
> +					      &update_cache_variants),
> +		     0,
> +		     SPINAND_ECCINFO(&micron_8_ooblayout,
> +				     micron_8_ecc_get_status),
> +		     SPINAND_SELECT_TARGET(micron_select_target)),
>  	/* M70A 4Gb 3.3V */
>  	SPINAND_INFO("MT29F4G01ABAFD", 0x34,
>  		     NAND_MEMORG(1, 4096, 256, 64, 2048, 40, 1, 1, 1),
> @@ -153,6 +186,28 @@ static const struct spinand_info micron_spinand_table[] = {
>  		     SPINAND_HAS_CR_FEAT_BIT,
>  		     SPINAND_ECCINFO(&micron_8_ooblayout,
>  				     micron_8_ecc_get_status)),
> +	/* M70A 8Gb 3.3V */
> +	SPINAND_INFO("MT29F8G01ADAFD", 0x46,
> +		     NAND_MEMORG(1, 4096, 256, 64, 2048, 40, 1, 1, 2),
> +		     NAND_ECCREQ(8, 512),
> +		     SPINAND_INFO_OP_VARIANTS(&read_cache_variants,
> +					      &write_cache_variants,
> +					      &update_cache_variants),
> +		     SPINAND_HAS_CR_FEAT_BIT,
> +		     SPINAND_ECCINFO(&micron_8_ooblayout,
> +				     micron_8_ecc_get_status),
> +		     SPINAND_SELECT_TARGET(micron_select_target)),
> +	/* M70A 8Gb 1.8V */
> +	SPINAND_INFO("MT29F8G01ADBFD", 0x47,
> +		     NAND_MEMORG(1, 4096, 256, 64, 2048, 40, 1, 1, 2),
> +		     NAND_ECCREQ(8, 512),
> +		     SPINAND_INFO_OP_VARIANTS(&read_cache_variants,
> +					      &write_cache_variants,
> +					      &update_cache_variants),
> +		     SPINAND_HAS_CR_FEAT_BIT,
> +		     SPINAND_ECCINFO(&micron_8_ooblayout,
> +				     micron_8_ecc_get_status),
> +		     SPINAND_SELECT_TARGET(micron_select_target)),
>  };
>  
>  static int micron_spinand_detect(struct spinand_device *spinand)


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
