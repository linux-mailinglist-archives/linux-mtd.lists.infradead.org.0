Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3869B1C98AA
	for <lists+linux-mtd@lfdr.de>; Thu,  7 May 2020 20:04:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=50Za541dIRtSDuV8VoEgB95haBiFcPF7aGaCKFSY26s=; b=hEa6ZLvMImwejW
	Bksrj7DNq8HgSNz3IVYc4X1ZtW5muSc/yx4oddEak//540I7GUOK/r4GYkDZhJC6cQcYVHJdvmI+m
	QHiC7O8rpikrNeYeisGFqUEJkOVdNOY1DlSPrptCBdJBBK9YRupEKsYWhUEeH+JZQXTm/ygYlgd/C
	F5V5+qKW1Ug2DPt6MPF58wtFAWZOUrAeDGHZq1Z3ALEtCaMUXceJI8UF83nLLSA53kTTN5tPHN2qJ
	XXQDzlczabfozcVdzOiH7tv9ac0uUMXxezRk3HCYx/5L912keWoZeTwdtD7eDTEOWcoeWyx53IxUI
	xQviUreMp6cULdy252Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWksh-000547-Ii; Thu, 07 May 2020 18:04:23 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWksI-0004tZ-Cv
 for linux-mtd@lists.infradead.org; Thu, 07 May 2020 18:03:59 +0000
X-Originating-IP: 42.109.205.33
Received: from localhost (unknown [42.109.205.33])
 (Authenticated sender: me@yadavpratyush.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id E413C240003;
 Thu,  7 May 2020 18:03:51 +0000 (UTC)
Date: Thu, 7 May 2020 23:33:46 +0530
From: Pratyush Yadav <me@yadavpratyush.com>
To: Daniel Walker <danielwa@cisco.com>
Subject: Re: [RFC-PATCH] mtd: spi-nor: add conditional 4B opcodes
Message-ID: <20200507180346.gwni4hf6kb6gd2e5@yadavpratyush.com>
References: <20200507162047.30788-1-danielwa@cisco.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507162047.30788-1-danielwa@cisco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_110358_568267_759A4966 
X-CRM114-Status: GOOD (  19.26  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org,
 xe-linux-external@cisco.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 07/05/20 09:20AM, Daniel Walker wrote:
> Some chips have 4B opcodes, but there is no way to know if they have
> them. This device tree option allows platform owners to force enable 4b
> opcodes when they know their chips support it even when it can be
> automatically identified.

Do you mean that two chips might have the same ID but one of them can 
support 4B opcodes and the other can not? Is it possible to detect this 
in a fixup hook? I think it would be better to do something like this in 
a fixup hook instead of via device tree.
 
> Cc: xe-linux-external@cisco.com
> Signed-off-by: Daniel Walker <danielwa@cisco.com>
> ---
>  drivers/mtd/spi-nor/core.c      | 5 +++++
>  drivers/mtd/spi-nor/core.h      | 5 +++++
>  drivers/mtd/spi-nor/micron-st.c | 2 +-
>  3 files changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
> index cc68ea84318e..2bd130687f4b 100644
> --- a/drivers/mtd/spi-nor/core.c
> +++ b/drivers/mtd/spi-nor/core.c
> @@ -3134,6 +3134,11 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
>  	if (info->flags & SPI_NOR_HAS_LOCK)
>  		nor->flags |= SNOR_F_HAS_LOCK;
>  
> +	/* Add SPI_NOR_4B_OPCODES if force in the device tree */
> +	if (info->flags & SPI_NOR_COND_4B_OPCODES &&
> +		of_property_read_bool(np, "force-4b-opcodes"))
> +		info->flags |= SPI_NOR_4B_OPCODES;
> +
>  	mtd->_write = spi_nor_write;
>  
>  	/* Init flash parameters based on flash_info struct and SFDP */
> diff --git a/drivers/mtd/spi-nor/core.h b/drivers/mtd/spi-nor/core.h
> index 6f2f6b27173f..49e17415d834 100644
> --- a/drivers/mtd/spi-nor/core.h
> +++ b/drivers/mtd/spi-nor/core.h
> @@ -312,6 +312,11 @@ struct flash_info {
>  					 * Must be used with SPI_NOR_4BIT_BP.
>  					 */
>  
> +#define SPI_NOR_COND_4B_OPCODES	BIT(19) /*
> +					 * Same as SPI_NOR_4B_OPCODES, but
> +					 * must also be force in the device
> +					 * tree.
> +					 */
>  	/* Part specific fixup hooks. */
>  	const struct spi_nor_fixups *fixups;
>  };
> diff --git a/drivers/mtd/spi-nor/micron-st.c b/drivers/mtd/spi-nor/micron-st.c
> index 6c034b9718e2..f827454eaa5f 100644
> --- a/drivers/mtd/spi-nor/micron-st.c
> +++ b/drivers/mtd/spi-nor/micron-st.c
> @@ -37,7 +37,7 @@ static const struct flash_info st_parts[] = {
>  			       SPI_NOR_QUAD_READ | SPI_NOR_4B_OPCODES) },
>  	{ "n25q256a",    INFO(0x20ba19, 0, 64 * 1024,  512, SECT_4K |
>  			      USE_FSR | SPI_NOR_DUAL_READ |
> -			      SPI_NOR_QUAD_READ) },
> +			      SPI_NOR_QUAD_READ | SPI_NOR_COND_4B_OPCODES) },
>  	{ "mt25qu256a",  INFO6(0x20bb19, 0x104400, 64 * 1024,  512,
>  			       SECT_4K | USE_FSR | SPI_NOR_DUAL_READ |
>  			       SPI_NOR_QUAD_READ | SPI_NOR_4B_OPCODES) },

-- 
Regards,
Pratyush Yadav

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
