Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D770A1E5D31
	for <lists+linux-mtd@lfdr.de>; Thu, 28 May 2020 12:31:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sZRxVjlDxokv2GTHFznuX7KxeoUUeMDdoMcoAHmi/lM=; b=HeBwR2tCGC4S3/yoHjGSv9/ig+
	JZLCfU3xg3IKh9Pb7MBFslIIF5ncq6A7ZXX0o/8P8e/ZOmgyigG+n4l6uNNsOETVbEACGz2TCGIwW
	K/HQ2LjeAl0n0JuiZGe/mwf4YwlqHlf1wRyU0qUqdkFlZHgUV1YncviIvf519yRNTMnhLWUsmT4n3
	X4QUQ4Mj6nJ+otOtTRefdjl1ohdkbcFEOV3p5dDeME3up6QTSVcLr4QlU53FASBRKSh/Rwn+mBA+X
	Im4DlKMpqVFccBO968ib6YP46/WfXTv/TSStvrnlw/REJ08P/02oh+OrSJTkmCUTAOp3VaJB2RS9m
	byPQilrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeFp9-0003Lu-Qx; Thu, 28 May 2020 10:31:43 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeFoy-0003LL-R4
 for linux-mtd@lists.infradead.org; Thu, 28 May 2020 10:31:34 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04SAVSRj081848;
 Thu, 28 May 2020 05:31:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1590661888;
 bh=AEQTkef1+kNlzNaEHtQu4Pn0JuBaAy+rLXTEbnti/Us=;
 h=Subject:To:References:From:Date:In-Reply-To;
 b=QMaBLY1DCBcVNqupoVs0TM5pAtsLZi10NcXap32Gn+sTFLTJJGQAw68+uxr38Mdia
 u98YUmnGEdA1a5nkDdbcyoW/KpjNRJv6eWG/HgYB1HDuquF/mFwhXiZx4HYNxEv/+l
 /heW0alJzxC8z6R5D5eafJRU96x49KQZbRp2M//Q=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04SAVSwP037047
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 28 May 2020 05:31:28 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 28
 May 2020 05:30:42 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 28 May 2020 05:30:42 -0500
Received: from [10.250.234.195] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04SAUdGW082256;
 Thu, 28 May 2020 05:30:40 -0500
Subject: Re: [PATCH v1 1/1] drivers: mtd: spi-nor: update read capabilities
 for w25q64 and s25fl064k
To: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>, Tudor Ambarus
 <tudor.ambarus@microchip.com>, Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, <linux-mtd@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
References: <20200521052608.32667-1-rayagonda.kokatanur@broadcom.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <9dc3722e-497f-b092-6a97-01e0f7e3843c@ti.com>
Date: Thu, 28 May 2020 16:00:38 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200521052608.32667-1-rayagonda.kokatanur@broadcom.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_033132_997481_B8043EC4 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Hi,

On 21/05/20 10:56 am, Rayagonda Kokatanur wrote:
> Both w25q64 and s25fl064k nor flash support QUAD and DUAL read
> command, hence update the same in flash_info table.
> 

I am guessing both modes were tested on some platform?
Could you add that info here?

> Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
> ---
>  drivers/mtd/spi-nor/spansion.c | 3 ++-
>  drivers/mtd/spi-nor/winbond.c  | 3 ++-
>  2 files changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/mtd/spi-nor/spansion.c b/drivers/mtd/spi-nor/spansion.c
> index 6756202ace4b..c91bbb8d9cd6 100644
> --- a/drivers/mtd/spi-nor/spansion.c
> +++ b/drivers/mtd/spi-nor/spansion.c
> @@ -52,7 +52,8 @@ static const struct flash_info spansion_parts[] = {
>  			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
>  	{ "s25fl016k",  INFO(0xef4015,      0,  64 * 1024,  32,
>  			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
> -	{ "s25fl064k",  INFO(0xef4017,      0,  64 * 1024, 128, SECT_4K) },
> +	{ "s25fl064k",  INFO(0xef4017,      0,  64 * 1024, 128,
> +			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
>  	{ "s25fl116k",  INFO(0x014015,      0,  64 * 1024,  32,
>  			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
>  	{ "s25fl132k",  INFO(0x014016,      0,  64 * 1024,  64, SECT_4K) },
> diff --git a/drivers/mtd/spi-nor/winbond.c b/drivers/mtd/spi-nor/winbond.c
> index 17deabad57e1..2028cab3eff9 100644
> --- a/drivers/mtd/spi-nor/winbond.c
> +++ b/drivers/mtd/spi-nor/winbond.c
> @@ -39,7 +39,8 @@ static const struct flash_info winbond_parts[] = {
>  			    SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
>  			    SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB) },
>  	{ "w25x64", INFO(0xef3017, 0, 64 * 1024, 128, SECT_4K) },
> -	{ "w25q64", INFO(0xef4017, 0, 64 * 1024, 128, SECT_4K) },
> +	{ "w25q64", INFO(0xef4017, 0, 64 * 1024, 128,
> +			 SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
>  	{ "w25q64dw", INFO(0xef6017, 0, 64 * 1024, 128,
>  			   SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
>  			   SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB) },
> 

Regards
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
