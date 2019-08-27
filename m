Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E92339DE6C
	for <lists+linux-mtd@lfdr.de>; Tue, 27 Aug 2019 09:08:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sy/biKp/XkXtiSPaEjJWp6jz9/Z8iXSKl/UfQDcG50E=; b=KSKAI/c97BUIv8jTUUvs2VCUBg
	S4ofAwy73rfmSodV9PdJnelhfR39YEmxDrnhSnXCwDhlmf+kaAFoqgUenMyGcnWsd6/b4F5xn/YKD
	zDuCN8wljhUU8b2dEd8xZB9Ad0KLPuEgA5A8Bar2jOwnHKaCUtlRz74NDEt0tDAJ8NPKY5R4MaCVa
	Ne7LUwz+z6QYVez7IAkBz3GnjENxGXoUwwO1LC6N68M9pivSnzV+75G5oQjlfAdpODJq4Q+fdkblo
	8i7bzW7Sk8ezwaJD5g6fFnioqPV8CN9stvGf0MqPVqjvDFgZ5mYn6uRKoHqR0mwIdrkP9mklblDHb
	C7wGhVxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Vat-00007X-9W; Tue, 27 Aug 2019 07:08:43 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2VaH-0008St-Eg
 for linux-mtd@lists.infradead.org; Tue, 27 Aug 2019 07:08:08 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7R77wR8107482;
 Tue, 27 Aug 2019 02:07:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566889678;
 bh=PCxP+40YzX+tEzQv6QKBeOSXIm269hKb5UP4zPgjr5w=;
 h=Subject:To:References:From:Date:In-Reply-To;
 b=yaR5jXIPiCPynmxjbss5zoEUwu0WM+DZyv5TaVH3dQgMERxS222siYtcoSDA/089a
 mb5jw9H0p5ielwd0HDz/5qstcO625xrTX3XNfzvf1pZ6NQa54a7H7Q96BtjDlj+Wjx
 DfUOJIvf3s8Lg1sqKu8IXPBRd1karSe1GsWf2bns=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7R77w0a092602
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 27 Aug 2019 02:07:58 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 27
 Aug 2019 02:07:57 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 27 Aug 2019 02:07:58 -0500
Received: from [172.24.145.136] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7R77sc3027294;
 Tue, 27 Aug 2019 02:07:55 -0500
Subject: Re: [RESEND PATCH v3 11/20] mtd: spi-nor: Add post_sfdp() hook to
 tweak flash config
To: <Tudor.Ambarus@microchip.com>, <boris.brezillon@collabora.com>,
 <marek.vasut@gmail.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <linux-mtd@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <20190826120821.16351-1-tudor.ambarus@microchip.com>
 <20190826120821.16351-12-tudor.ambarus@microchip.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <0b7a1322-6a8a-b1df-7039-95e651b869b9@ti.com>
Date: Tue, 27 Aug 2019 12:38:32 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190826120821.16351-12-tudor.ambarus@microchip.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_000806_267770_00A8F3E7 
X-CRM114-Status: GOOD (  23.59  )
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
> From: Boris Brezillon <boris.brezillon@bootlin.com>
> 
> SFDP tables are sometimes wrong and we need a way to override the
> config chosen by the SFDP parsing logic without discarding all of it.
> 
> Add a new hook called after the SFDP parsing has taken place to deal
> with such problems.
> 
> Signed-off-by: Boris Brezillon <boris.brezillon@bootlin.com>
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> ---

Reviewed-by: Vignesh Raghavendra <vigneshr@ti.com>

Regards
Vignesh

> v3: no changes, rebase on previous commits
> 
>  drivers/mtd/spi-nor/spi-nor.c | 33 ++++++++++++++++++++++++++++++++-
>  1 file changed, 32 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index 3f997797fa9d..b8caf5171ff5 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -158,6 +158,11 @@ struct sfdp_bfpt {
>   *                flash parameters when information provided by the flash_info
>   *                table is incomplete or wrong.
>   * @post_bfpt: called after the BFPT table has been parsed
> + * @post_sfdp: called after SFDP has been parsed (is also called for SPI NORs
> + *             that do not support RDSFDP). Typically used to tweak various
> + *             parameters that could not be extracted by other means (i.e.
> + *             when information provided by the SFDP/flash_info tables are
> + *             incomplete or wrong).
>   *
>   * Those hooks can be used to tweak the SPI NOR configuration when the SFDP
>   * table is broken or not available.
> @@ -168,6 +173,7 @@ struct spi_nor_fixups {
>  			 const struct sfdp_parameter_header *bfpt_header,
>  			 const struct sfdp_bfpt *bfpt,
>  			 struct spi_nor_flash_parameter *params);
> +	void (*post_sfdp)(struct spi_nor *nor);
>  };
>  
>  struct flash_info {
> @@ -4299,6 +4305,22 @@ static void spi_nor_info_init_params(struct spi_nor *nor)
>  }
>  
>  /**
> + * spi_nor_post_sfdp_fixups() - Updates the flash's parameters and settings
> + * after SFDP has been parsed (is also called for SPI NORs that do not
> + * support RDSFDP).
> + * @nor:	pointer to a 'struct spi_nor'
> + *
> + * Typically used to tweak various parameters that could not be extracted by
> + * other means (i.e. when information provided by the SFDP/flash_info tables
> + * are incomplete or wrong).
> + */
> +static void spi_nor_post_sfdp_fixups(struct spi_nor *nor)
> +{
> +	if (nor->info->fixups && nor->info->fixups->post_sfdp)
> +		nor->info->fixups->post_sfdp(nor);
> +}
> +
> +/**
>   * spi_nor_late_init_params() - Late initialization of default flash parameters.
>   * @nor:	pointer to a 'struct spi_nor'
>   *
> @@ -4341,7 +4363,14 @@ static void spi_nor_late_init_params(struct spi_nor *nor)
>   *    flash parameters and settings imediately after parsing the Basic Flash
>   *    Parameter Table.
>   *
> - * 4/ Late default flash parameters initialization, used when the
> + * which can be overwritten by:
> + * 4/ Post SFDP flash parameters initialization. Used to tweak various
> + *    parameters that could not be extracted by other means (i.e. when
> + *    information provided by the SFDP/flash_info tables are incomplete or
> + *    wrong).
> + *		spi_nor_post_sfdp_fixups()
> + *
> + * 5/ Late default flash parameters initialization, used when the
>   * ->default_init() hook or the SFDP parser do not set specific params.
>   *		spi_nor_late_init_params()
>   */
> @@ -4355,6 +4384,8 @@ static void spi_nor_init_params(struct spi_nor *nor)
>  	    !(nor->info->flags & SPI_NOR_SKIP_SFDP))
>  		spi_nor_sfdp_init_params(nor);
>  
> +	spi_nor_post_sfdp_fixups(nor);
> +
>  	spi_nor_late_init_params(nor);
>  }
>  
> 

-- 
Regards
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
