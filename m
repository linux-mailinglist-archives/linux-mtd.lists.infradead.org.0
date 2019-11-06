Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7B7DF0E7F
	for <lists+linux-mtd@lfdr.de>; Wed,  6 Nov 2019 06:45:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hgrfYU4V7KK5uLRZ1Uz8D0Bh5SK2+Ch0adhwdYllf+8=; b=QFsqECOHuK+2Ou
	MLsGncygzMwKqe/r3+VJ+YAWmjH1MtOaa+akcpJ2ffPfQKyW97tiok3FuE3051un7J372TFrfiCA3
	PuJ2RcQ81eXukLDJo3P1KhxwWC6BLpEYzSOptuxnVATBQp008DobTkfk9zG8HvWHYStL6DRm4oq/T
	4MaHDlAAE1wfjeoa9k62SidbC2tGLCI8KEZULv99fw/CPafaS7yLlvm4JhiZm+wLjm9LsRJjvd+1v
	2hiAcBrP3As2+ihBb3LKt0F5BKFzn9UUy6Ok27y6w0XjVO8D7J+A7oBWrrYY+rNC6YRmi62vSPqrV
	ZBPz/J0FAZJYcfm7eC4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSE86-0005KA-Mc; Wed, 06 Nov 2019 05:45:18 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSE7y-0005JS-Ov
 for linux-mtd@lists.infradead.org; Wed, 06 Nov 2019 05:45:12 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id xA65j4Bx125992;
 Tue, 5 Nov 2019 23:45:04 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573019104;
 bh=kcsJtvuh/ZeYHZ1N0JL53sjXg9t96k4SlPrBCY1RDFs=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=l/he5zoLUijOOSORmhEb1GICJ1ah3Vn/JDhbB4eEZAKuK32RWg3K4LPwYhxYagm8F
 N9pQ0d7BEwqHwJ+sZocNT0PEAMVHE9QxfmBBlGKO+sIORegv1rGZiNy1wPMGxZqhtd
 CHhC3WsqTeKpcYSjJPYOOWXgBMG8j6ZKChhCDOP0=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xA65j4Z7030988;
 Tue, 5 Nov 2019 23:45:04 -0600
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 5 Nov
 2019 23:44:49 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 5 Nov 2019 23:44:49 -0600
Received: from [172.24.145.136] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id xA65j1PK071193;
 Tue, 5 Nov 2019 23:45:02 -0600
Subject: Re: [PATCH v4 16/20] mtd: spi-nor: Rename CR_QUAD_EN_SPAN to
 SR2_QUAD_EN_BIT1
To: <Tudor.Ambarus@microchip.com>, <boris.brezillon@collabora.com>
References: <20191102112316.20715-1-tudor.ambarus@microchip.com>
 <20191102112316.20715-17-tudor.ambarus@microchip.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <56381a82-0bf9-a018-90c6-64405c2d23c1@ti.com>
Date: Wed, 6 Nov 2019 11:15:37 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191102112316.20715-17-tudor.ambarus@microchip.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_214510_896340_D68DC370 
X-CRM114-Status: GOOD (  19.58  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: richard@nod.at, linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 miquel.raynal@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 02/11/19 4:53 PM, Tudor.Ambarus@microchip.com wrote:
> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> JEDEC Basic Flash Parameter Table, 15th DWORD, bits 22:20,
> refers to this bit as "bit 1 of the status register 2".
> Rename the macro accordingly.
> 
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>

Reviewed-by: Vignesh Raghavendra <vigneshr@ti.com>

Regards
Vignesh

> ---
>  drivers/mtd/spi-nor/spi-nor.c | 10 +++++-----
>  include/linux/mtd/spi-nor.h   |  4 +---
>  2 files changed, 6 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index 8f11c00e8ae5..e367a4862ec1 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -1026,7 +1026,7 @@ static int spi_nor_write_16bit_sr_and_check(struct spi_nor *nor, u8 sr1)
>  		 * Write Status (01h) command is available just for the cases
>  		 * in which the QE bit is described in SR2 at BIT(1).
>  		 */
> -		sr_cr[1] = CR_QUAD_EN_SPAN;
> +		sr_cr[1] = SR2_QUAD_EN_BIT1;
>  	} else {
>  		sr_cr[1] = 0;
>  	}
> @@ -2074,7 +2074,7 @@ static int spansion_no_read_cr_quad_enable(struct spi_nor *nor)
>  	if (ret)
>  		return ret;
>  
> -	sr_cr[1] = CR_QUAD_EN_SPAN;
> +	sr_cr[1] = SR2_QUAD_EN_BIT1;
>  
>  	ret = spi_nor_write_sr(nor, sr_cr, 2);
>  	if (ret)
> @@ -2118,10 +2118,10 @@ static int spansion_read_cr_quad_enable(struct spi_nor *nor)
>  	if (ret)
>  		return ret;
>  
> -	if (sr_cr[1] & CR_QUAD_EN_SPAN)
> +	if (sr_cr[1] & SR2_QUAD_EN_BIT1)
>  		return 0;
>  
> -	sr_cr[1] |= CR_QUAD_EN_SPAN;
> +	sr_cr[1] |= SR2_QUAD_EN_BIT1;
>  
>  	/* Keep the current value of the Status Register. */
>  	ret = spi_nor_read_sr(nor, sr_cr);
> @@ -2256,7 +2256,7 @@ static int spi_nor_spansion_clear_sr_bp(struct spi_nor *nor)
>  	 * When the configuration register Quad Enable bit is one, only the
>  	 * Write Status (01h) command with two data bytes may be used.
>  	 */
> -	if (sr_cr[1] & CR_QUAD_EN_SPAN) {
> +	if (sr_cr[1] & SR2_QUAD_EN_BIT1) {
>  		ret = spi_nor_read_sr(nor, sr_cr);
>  		if (ret)
>  			return ret;
> diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
> index d6ec55cc6d97..f626e0e52909 100644
> --- a/include/linux/mtd/spi-nor.h
> +++ b/include/linux/mtd/spi-nor.h
> @@ -144,10 +144,8 @@
>  #define FSR_P_ERR		BIT(4)	/* Program operation status */
>  #define FSR_PT_ERR		BIT(1)	/* Protection error bit */
>  
> -/* Configuration Register bits. */
> -#define CR_QUAD_EN_SPAN		BIT(1)	/* Spansion Quad I/O */
> -
>  /* Status Register 2 bits. */
> +#define SR2_QUAD_EN_BIT1	BIT(1)
>  #define SR2_QUAD_EN_BIT7	BIT(7)
>  
>  /* Supported SPI protocols */
> 

-- 
Regards
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
