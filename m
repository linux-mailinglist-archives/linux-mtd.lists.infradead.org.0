Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8951C9DE6F
	for <lists+linux-mtd@lfdr.de>; Tue, 27 Aug 2019 09:09:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NvE4xahCsG9cA2Y3ogGUOQRvdC5dgcSyCMISGD62Uxk=; b=cPcmvywoJ2EY2E
	lpSldzhD2ogO+MXANz5PRbNAl49l8tcumQFpW2lNBJ20jMf+8PkVpayADbVU9TyFe9z7O17FcF3pk
	X5WuzIJIPzvD4CG3MIj2ByeN7ForMMOCmVrcMeIp4/efr7F7P7IuI8yE7PvRPiK546TFhyb2kmEz+
	sQlHYhgNwY0chfWtb+1kR/byhwvMaI6L2MXxV57+YG+34bR1bNACKv8CxMBET3ba0LzZuM6YlqS6r
	I9/KdC5lj+uVejwc+RBr01eD91AjExFoNU2AI6qs9yrjsAkf+25s6IH90sYqqIKJcMMUXRvUTULJh
	FFWHTqiYGb0kR5po9x0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Vbs-0000PX-Q9; Tue, 27 Aug 2019 07:09:44 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Vbh-0000PC-Dp
 for linux-mtd@lists.infradead.org; Tue, 27 Aug 2019 07:09:35 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7R79STM106917;
 Tue, 27 Aug 2019 02:09:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566889768;
 bh=L4CsoR9kyF0hZV2P6fxDodIlymhCPt1+Z5sMGLgkq/I=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=U5DGvw3D/XfK5S+7Q7z2auIrJd34DRjTQm7jBm7cP56ljh5no0anoAyl/Av0I7XWg
 SoL6LqpZDjZ0HH7XlR5PnWDI2WhiPjarkEZk/SUHdbayMKLmidu0lN4KU2EzXLaxYM
 BHFmlKJtKr3kPKm4FD75BFZ7xHIRXTxjkiHXSsKg=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7R79SY2094956
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 27 Aug 2019 02:09:28 -0500
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 27
 Aug 2019 02:09:28 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 27 Aug 2019 02:09:28 -0500
Received: from [172.24.145.136] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7R79OAV076726;
 Tue, 27 Aug 2019 02:09:25 -0500
Subject: Re: [RESEND PATCH v3 12/20] mtd: spi-nor: Add
 spansion_post_sfdp_fixups()
To: <Tudor.Ambarus@microchip.com>, <boris.brezillon@collabora.com>,
 <marek.vasut@gmail.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <linux-mtd@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <20190826120821.16351-1-tudor.ambarus@microchip.com>
 <20190826120821.16351-13-tudor.ambarus@microchip.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <8f10d895-f97e-934e-8dd4-be22839a7c77@ti.com>
Date: Tue, 27 Aug 2019 12:40:02 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190826120821.16351-13-tudor.ambarus@microchip.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_000933_554791_C51333A7 
X-CRM114-Status: GOOD (  18.84  )
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
> Add a spansion_post_sfdp_fixups() function to fix the erase opcode,
> erase sector size and set the SNOR_F_4B_OPCODES flag.
> This way, all spansion related quirks are placed in the
> spansion_post_sfdp_fixups() function.
> 
> Signed-off-by: Boris Brezillon <boris.brezillon@bootlin.com>
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> ---

Reviewed-by: Vignesh Raghavendra <vigneshr@ti.com>

Regards
Vignesh

> v3: no changes, rebase on previous commits
> 
>  drivers/mtd/spi-nor/spi-nor.c | 37 +++++++++++++++++++++++--------------
>  1 file changed, 23 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index b8caf5171ff5..c862a59ce9df 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -591,18 +591,6 @@ static u8 spi_nor_convert_3to4_erase(u8 opcode)
>  
>  static void spi_nor_set_4byte_opcodes(struct spi_nor *nor)
>  {
> -	/* Do some manufacturer fixups first */
> -	switch (JEDEC_MFR(nor->info)) {
> -	case SNOR_MFR_SPANSION:
> -		/* No small sector erase for 4-byte command set */
> -		nor->erase_opcode = SPINOR_OP_SE;
> -		nor->mtd.erasesize = nor->info->sector_size;
> -		break;
> -
> -	default:
> -		break;
> -	}
> -
>  	nor->read_opcode = spi_nor_convert_3to4_read(nor->read_opcode);
>  	nor->program_opcode = spi_nor_convert_3to4_program(nor->program_opcode);
>  	nor->erase_opcode = spi_nor_convert_3to4_erase(nor->erase_opcode);
> @@ -4304,6 +4292,19 @@ static void spi_nor_info_init_params(struct spi_nor *nor)
>  	spi_nor_init_uniform_erase_map(map, erase_mask, params->size);
>  }
>  
> +static void spansion_post_sfdp_fixups(struct spi_nor *nor)
> +{
> +	struct mtd_info *mtd = &nor->mtd;
> +
> +	if (mtd->size <= SZ_16M)
> +		return;
> +
> +	nor->flags |= SNOR_F_4B_OPCODES;
> +	/* No small sector erase for 4-byte command set */
> +	nor->erase_opcode = SPINOR_OP_SE;
> +	nor->mtd.erasesize = nor->info->sector_size;
> +}
> +
>  /**
>   * spi_nor_post_sfdp_fixups() - Updates the flash's parameters and settings
>   * after SFDP has been parsed (is also called for SPI NORs that do not
> @@ -4316,6 +4317,15 @@ static void spi_nor_info_init_params(struct spi_nor *nor)
>   */
>  static void spi_nor_post_sfdp_fixups(struct spi_nor *nor)
>  {
> +	switch (JEDEC_MFR(nor->info)) {
> +	case SNOR_MFR_SPANSION:
> +		spansion_post_sfdp_fixups(nor);
> +		break;
> +
> +	default:
> +		break;
> +	}
> +
>  	if (nor->info->fixups && nor->info->fixups->post_sfdp)
>  		nor->info->fixups->post_sfdp(nor);
>  }
> @@ -4862,8 +4872,7 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
>  		nor->addr_width = 3;
>  	}
>  
> -	if (info->flags & SPI_NOR_4B_OPCODES ||
> -	    (JEDEC_MFR(info) == SNOR_MFR_SPANSION && mtd->size > SZ_16M))
> +	if (info->flags & SPI_NOR_4B_OPCODES)
>  		nor->flags |= SNOR_F_4B_OPCODES;
>  
>  	if (nor->addr_width == 4 && nor->flags & SNOR_F_4B_OPCODES &&
> 

-- 
Regards
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
