Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DEFD81224
	for <lists+linux-mtd@lfdr.de>; Mon,  5 Aug 2019 08:18:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O/tjUZkvxVT0FflMdXnbvCoXV3xPTKb7i055euKQAx4=; b=ZrGKpUUDx9YUkw
	JYFpYgYcjQt2BehSfRxOjlKdz3+UZ9YNWqL8qWYaPK16PJr8F8D/oW/KLp3z/pW7GF/hBUTGvqL/b
	NdwS8H5GAFcIhYyIMpaRYbP/V6nlyTKZYgXeTWg7qQmQIElMxPoHKZ+3BUNyQbQxoeHcJeRGJZdtz
	RSQj4Md4zktU+xBmpQTgFcLvjBMjwNT9EFfF4gnXdyV6Dfy2PoshnhUV5zZfsVpyCs3a8+PirlNfV
	Vb0oyV3tyLeNkfTI0zfU8sNuBr9zUqKjcRYmWN+FnKgPgRky/+XqFc4btbW1qwjVtZvKYH2BLkNyz
	3/9WtxfAlrlT744hRotA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huWJo-0002hg-AK; Mon, 05 Aug 2019 06:18:04 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huWJe-0002hN-Uv
 for linux-mtd@lists.infradead.org; Mon, 05 Aug 2019 06:17:56 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x756Hfu2075491;
 Mon, 5 Aug 2019 01:17:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1564985861;
 bh=exasCwuJ86G358eXNZVxvh3NAnCoduVKquJVHpwvm34=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=M/HcfsoJATT2XUlGxBdf0U1DmjIepGssW2FOBUgKDaFf77ijK5w5JJJUD3vFyjEJP
 eLMHxJA/UcxkumQSbrFTgJjxWmV+d9gS3YFYfDnja5+7/F9JBumrTLcefe0RmXWFm2
 N57RYycOOeSeR+LzIQ50U6/d2gkxXPq2czcrpoWE=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x756Hfbf026623
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 5 Aug 2019 01:17:41 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 5 Aug
 2019 01:17:41 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 5 Aug 2019 01:17:41 -0500
Received: from [172.24.145.136] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x756HY0c063879;
 Mon, 5 Aug 2019 01:17:35 -0500
Subject: Re: [PATCH 3/5] mtd: spi-nor: add Global Block Unlock support
To: <Tudor.Ambarus@microchip.com>, <marek.vasut@gmail.com>
References: <20190717084745.19322-1-tudor.ambarus@microchip.com>
 <20190717084745.19322-4-tudor.ambarus@microchip.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <3fe57110-026f-200f-ee6b-e74bb36d50b9@ti.com>
Date: Mon, 5 Aug 2019 11:48:17 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190717084745.19322-4-tudor.ambarus@microchip.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_231755_081280_8D3C3283 
X-CRM114-Status: GOOD (  21.55  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: richard@nod.at, linux-kernel@vger.kernel.org, Nicolas.Ferre@microchip.com,
 boris.brezillon@collabora.com, linux-mtd@lists.infradead.org,
 miquel.raynal@bootlin.com, computersforpeace@gmail.com, dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 17/07/19 2:18 PM, Tudor.Ambarus@microchip.com wrote:
> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> To avoid inadvertent writes during power-up, some flashes are
> write-protected by default after a power-on reset cycle.
> A Global Block-Protection Unlock command offers a single
> command cycle that unlocks the entire memory array. This is
> identical with what other nor flashes are doing by clearing
> the block protection bits from the status register: disable
> the write protection after a power-on reset cycle.
> 
> We can't determine this purely by manufacturer type and it's not
> autodetectable by anything like SFDP, so make a new flag for it:
> UNLOCK_GLOBAL_BLOCK.
> 
> Note that the Global Block Unlock command has different names
> depending on the manufacturer, but always the same command value:
> 0x98. Macronix's MX25U12835F names it Gang Block Unlock,
> Winbound's W25Q128FV names it Global Block Unlock and
> Microchip's SST26VF064B names it Global Block Protection Unlock.
> 
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>

Reviewed-by: Vignesh Raghavendra <vigneshr@ti.com>


> ---
>  drivers/mtd/spi-nor/spi-nor.c | 21 ++++++++++++++++++++-
>  include/linux/mtd/spi-nor.h   |  1 +
>  2 files changed, 21 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index e9e441f91b68..767e2e6eb1b8 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -250,7 +250,7 @@ struct flash_info {
>  	u16		page_size;
>  	u16		addr_width;
>  
> -	u16		flags;
> +	u32		flags;
>  #define SECT_4K			BIT(0)	/* SPINOR_OP_BE_4K works uniformly */
>  #define SPI_NOR_NO_ERASE	BIT(1)	/* No erase command needed */
>  #define SST_WRITE		BIT(2)	/* use SST byte programming */
> @@ -279,6 +279,7 @@ struct flash_info {
>  #define SPI_NOR_SKIP_SFDP	BIT(13)	/* Skip parsing of SFDP tables */
>  #define USE_CLSR		BIT(14)	/* use CLSR command */
>  #define SPI_NOR_OCTAL_READ	BIT(15)	/* Flash supports Octal Read */
> +#define UNLOCK_GLOBAL_BLOCK	BIT(16) /* Unlock global block protection */
>  
>  	/* Part specific fixup hooks. */
>  	const struct spi_nor_fixups *fixups;
> @@ -1725,6 +1726,20 @@ static int spi_nor_spansion_clear_sr_bp(struct spi_nor *nor)
>  	return spi_nor_clear_sr_bp(nor);
>  }
>  
> +static int spi_nor_unlock_global_block_protection(struct spi_nor *nor)
> +{
> +	int ret;
> +
> +	write_enable(nor);
> +
> +	ret = nor->write_reg(nor, SPINOR_OP_ULBPR, NULL, 0);
> +	if (ret < 0) {
> +		dev_err(nor->dev, "error %d on ULBPR\n", ret);
> +		return ret;
> +	}
> +	return spi_nor_wait_till_ready(nor);
> +}
> +
>  /* Used when the "_ext_id" is two bytes at most */
>  #define INFO(_jedec_id, _ext_id, _sector_size, _n_sectors, _flags)	\
>  		.id = {							\
> @@ -4053,6 +4068,10 @@ static int spi_nor_init(struct spi_nor *nor)
>  				spi_nor_spansion_clear_sr_bp;
>  	}
>  
> +	if (nor->info->flags & UNLOCK_GLOBAL_BLOCK)
> +		nor->disable_write_protection =
> +			spi_nor_unlock_global_block_protection;
> +
>  	if (nor->disable_write_protection) {
>  		err = nor->disable_write_protection(nor);
>  		if (err) {
> diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
> index 6c3273760700..84d279fd287e 100644
> --- a/include/linux/mtd/spi-nor.h
> +++ b/include/linux/mtd/spi-nor.h
> @@ -65,6 +65,7 @@
>  #define SPINOR_OP_CLFSR		0x50	/* Clear flag status register */
>  #define SPINOR_OP_RDEAR		0xc8	/* Read Extended Address Register */
>  #define SPINOR_OP_WREAR		0xc5	/* Write Extended Address Register */
> +#define SPINOR_OP_ULBPR		0x98    /* Global Block Unlock Protection */
>  
>  /* 4-byte address opcodes - used on Spansion and some Macronix flashes. */
>  #define SPINOR_OP_READ_4B	0x13	/* Read data bytes (low frequency) */
> 

-- 
Regards
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
