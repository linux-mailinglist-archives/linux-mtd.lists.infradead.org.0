Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 428C715433E
	for <lists+linux-mtd@lfdr.de>; Thu,  6 Feb 2020 12:39:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z03JzrgWVl7QuyCMdi/9gqbaxbYE2+oYyqgJIzGNPeo=; b=KDhoeZvwYTQB4fhJx6XJFtmUn
	Zmp4cIqMCUtAekoxPFUGUzL8f4T+0wxi1Pfj/LjjXlHMSdQ/FhXFR9w+A7kyWqDg/f6UBh4+C/4Ya
	7vigcZF9Y/nqZGNYFCCwBuphBESvZZf2YD4QdgM+HMgjml3SLzV1Aa9Iz8yV1cyhVhsQXwwGLjO2U
	08CKvO/Q/GARKm6P2Hx3H+GkFTi2eFv1e2ViX+Cbh+hIfFsFnZzWEGaOmxD+n7nVwW/oV0gPYIs5k
	f3Mo1nEOt/eCEMlgJP+gDtqCZE6O+PfEuk862Ct0zhOGgwiKMX4n78sC/+1++RMYlQpe3jwOtlx2O
	JXjaDErJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izfV2-0003AJ-KS; Thu, 06 Feb 2020 11:39:12 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izfUw-00039x-9t
 for linux-mtd@lists.infradead.org; Thu, 06 Feb 2020 11:39:08 +0000
Received: from LHREML711-CAH.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id 5B506B2E9A5132123161;
 Thu,  6 Feb 2020 11:39:01 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 LHREML711-CAH.china.huawei.com (10.201.108.34) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 6 Feb 2020 11:39:01 +0000
Received: from [127.0.0.1] (10.202.226.45) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Thu, 6 Feb 2020
 11:39:00 +0000
Subject: Re: [PATCH v2] mtd: spi-nor: Fixup page size for S25FS-S
To: Alexander A Sverdlin <alexander.sverdlin@nokia.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>
References: <20200205165736.4964-1-alexander.sverdlin@nokia.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <62a35797-4e78-f6b0-de86-50004bc636ca@huawei.com>
Date: Thu, 6 Feb 2020 11:38:59 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200205165736.4964-1-alexander.sverdlin@nokia.com>
Content-Language: en-US
X-Originating-IP: [10.202.226.45]
X-ClientProxiedBy: lhreml720-chm.china.huawei.com (10.201.108.71) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_033906_494397_9C5913FF 
X-CRM114-Status: GOOD (  22.91  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Boris Brezillon <bbrezillon@kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>, Marek
 Vasut <marek.vasut@gmail.com>, Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 05/02/2020 16:57, Alexander A Sverdlin wrote:
> From: Alexander Sverdlin <alexander.sverdlin@nokia.com>
> 
> Spansion S25FS-S family has an issue in Basic Flash Parameter Table:
> DWORD-11 bits 7-4 specify write page size 512 bytes. In reality this
> is configurable in the non-volatile CR3NV register and even factory
> default configuration is "wrap at 256 bytes". So blind relying on BFPT
> breaks write operation on these Flashes.
> 
> All this story is vendor-specific, so add the corresponding fixup hook
> which first restores the safe page size of 256 bytes from
> struct flash_info but checks is more performant 512 bytes configuration
> is active and adjusts the page_size accordingly.
> 
> Cc: stable@vger.kernel.org
> Fixes: f384b352c ("mtd: spi-nor: parse Serial Flash Discoverable Parameters (SFDP) tables")
> Signed-off-by: Alexander Sverdlin <alexander.sverdlin@nokia.com>
> ---
> Changelog:
> v2: Thankfully rebased on the hint from John Garry
> 
>   drivers/mtd/spi-nor/spi-nor.c | 39 +++++++++++++++++++++++++++++++++++++--
>   include/linux/mtd/spi-nor.h   |  5 +++++
>   2 files changed, 42 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index 928a660..c0a5041 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -2302,6 +2302,39 @@ static struct spi_nor_fixups gd25q256_fixups = {
>   	.default_init = gd25q256_default_init,
>   };
>   

Hi Alexander,

Thanks for the quick turnaround. But, sorry to say, this does not look 
right:

> +/* Spansion S25FS-S SFDP workarounds */
> +static int s25fs_s_post_bfpt_fixups(struct spi_nor *nor,
> +	const struct sfdp_parameter_header *bfpt_header,
> +	const struct sfdp_bfpt *bfpt,
> +	struct spi_nor_flash_parameter *params)
> +{
> +	const struct flash_info *info = nor->info;
> +	u8 read_opcode, buf;
> +	int ret;
> +
> +	/* Default is safe */
> +	params->page_size = info->page_size;
> +
> +	/*
> +	 * But is the chip configured for more performant 512 bytes write page
> +	 * size?
> +	 */
> +	read_opcode = nor->read_opcode;
> +
> +	nor->read_opcode = SPINOR_OP_RDAR;
> +	ret = nor->read(nor, SPINOR_REG_CR3V, 1, &buf);

The read method is now gone from struct spi_nor, moved into 
spi_nor.controller_ops. And we also support spi_mem ops now.

In fact, I find that the SFDP signature is not correct for me for this 
part, so I need to check that first...

Thanks,
John

> +	if (!ret && (buf & CR3V_02H_V))
> +		params->page_size = 512;
> +
> +	nor->read_opcode = read_opcode;
> +
> +	return ret;
> +}
> +
> +static const struct spi_nor_fixups s25fs_s_fixups = {
> +	.post_bfpt = s25fs_s_post_bfpt_fixups,
> +};
> +
>   /* NOTE: double check command sets and memory organization when you add
>    * more nor chips.  This current list focusses on newer chips, which
>    * have been converging on command sets which including JEDEC ID.
> @@ -2536,7 +2569,8 @@ static const struct flash_info spi_nor_ids[] = {
>   			SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ | USE_CLSR) },
>   	{ "s25fl128s1", INFO6(0x012018, 0x4d0180, 64 * 1024, 256,
>   			SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ | USE_CLSR) },
> -	{ "s25fl256s0", INFO(0x010219, 0x4d00, 256 * 1024, 128, USE_CLSR) },
> +	{ "s25fl256s0", INFO(0x010219, 0x4d00, 256 * 1024, 128, USE_CLSR)
> +			.fixups = &s25fs_s_fixups, },
>   	{ "s25fl256s1", INFO(0x010219, 0x4d01,  64 * 1024, 512, SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ | USE_CLSR) },
>   	{ "s25fl512s",  INFO6(0x010220, 0x4d0080, 256 * 1024, 256,
>   			SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
> @@ -2546,7 +2580,8 @@ static const struct flash_info spi_nor_ids[] = {
>   	{ "s25sl12800", INFO(0x012018, 0x0300, 256 * 1024,  64, 0) },
>   	{ "s25sl12801", INFO(0x012018, 0x0301,  64 * 1024, 256, 0) },
>   	{ "s25fl129p0", INFO(0x012018, 0x4d00, 256 * 1024,  64, SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ | USE_CLSR) },
> -	{ "s25fl129p1", INFO(0x012018, 0x4d01,  64 * 1024, 256, SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ | USE_CLSR) },
> +	{ "s25fl129p1", INFO(0x012018, 0x4d01,  64 * 1024, 256, SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ | USE_CLSR)
> +			.fixups = &s25fs_s_fixups, },
>   	{ "s25sl004a",  INFO(0x010212,      0,  64 * 1024,   8, 0) },
>   	{ "s25sl008a",  INFO(0x010213,      0,  64 * 1024,  16, 0) },
>   	{ "s25sl016a",  INFO(0x010214,      0,  64 * 1024,  32, 0) },
> diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
> index 5abd91c..7ce3e79 100644
> --- a/include/linux/mtd/spi-nor.h
> +++ b/include/linux/mtd/spi-nor.h
> @@ -116,6 +116,7 @@
>   /* Used for Spansion flashes only. */
>   #define SPINOR_OP_BRWR		0x17	/* Bank register write */
>   #define SPINOR_OP_CLSR		0x30	/* Clear status register 1 */
> +#define SPINOR_OP_RDAR		0x65	/* Read Any Register */
>   
>   /* Used for Micron flashes only. */
>   #define SPINOR_OP_RD_EVCR      0x65    /* Read EVCR register */
> @@ -150,6 +151,10 @@
>   #define SR2_QUAD_EN_BIT1	BIT(1)
>   #define SR2_QUAD_EN_BIT7	BIT(7)
>   
> +/* Used for Spansion flashes RDAR command only. */
> +#define SPINOR_REG_CR3V		0x800004
> +#define CR3V_02H_V		BIT(4)	/* Page Buffer Wrap */
> +
>   /* Supported SPI protocols */
>   #define SNOR_PROTO_INST_MASK	GENMASK(23, 16)
>   #define SNOR_PROTO_INST_SHIFT	16
> 


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
