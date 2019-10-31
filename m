Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F3BEADD3
	for <lists+linux-mtd@lfdr.de>; Thu, 31 Oct 2019 11:49:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BGfQ7r6DdPl8PFwEr0FjqDd+Af7DN/g8jpKrJPmUXA8=; b=pIfn1+yRDxOnj1
	55k0CHacTg2dMZdEY0x/JmqcrwhmWMZTfx+aEsA7OC69O2KHDROBW5ctWIEMzHX5CfRwwHyNGZaXY
	lc2qBKDwscTFElbM1J8szJ1IBqBdTxz5+H3eWxtC3OSxTZ1BYMAiqo937U64aeEqc1x3aUuGrRUni
	ZGzTenJ8hGYuLEwDNJWoEUOY7/2g877J+GWHxXJ7t/et52luykE2oESMtDCgIT3tdsVLrrvSVcMWO
	v/2BJyoE6q+xAGILyhrXW/yLoYhXNjFx75bKFpybyQTtbTXfmwxvWRK0PKBMqiptBmICEBKIy9Q7s
	RugRc/n5u8UjxbmD9d6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ80Y-0005sI-Pw; Thu, 31 Oct 2019 10:48:50 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ80P-0005rH-NV
 for linux-mtd@lists.infradead.org; Thu, 31 Oct 2019 10:48:43 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 4BF18283D0E;
 Thu, 31 Oct 2019 10:48:40 +0000 (GMT)
Date: Thu, 31 Oct 2019 11:48:38 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: <Tudor.Ambarus@microchip.com>
Subject: Re: [PATCH v3 07/32] mtd: spi-nor: Don't overwrite errno from Reg Ops
Message-ID: <20191031114838.3c9aa4ac@collabora.com>
In-Reply-To: <20191029111615.3706-8-tudor.ambarus@microchip.com>
References: <20191029111615.3706-1-tudor.ambarus@microchip.com>
 <20191029111615.3706-8-tudor.ambarus@microchip.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_034841_895158_545BEF58 
X-CRM114-Status: GOOD (  16.46  )
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
Cc: richard@nod.at, linux-mtd@lists.infradead.org, vigneshr@ti.com,
 linux-kernel@vger.kernel.org, miquel.raynal@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 29 Oct 2019 11:16:59 +0000
<Tudor.Ambarus@microchip.com> wrote:

> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> Do not overwrite the error numbers received the Register Operations
> methods.
> 
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
>  drivers/mtd/spi-nor/spi-nor.c | 13 ++++++-------
>  1 file changed, 6 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index c794eff69fe9..1a00438fd061 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -1364,10 +1364,9 @@ static int spi_nor_erase(struct mtd_info *mtd, struct erase_info *instr)
>  
>  		spi_nor_write_enable(nor);
>  
> -		if (spi_nor_erase_chip(nor)) {
> -			ret = -EIO;
> +		ret = spi_nor_erase_chip(nor);
> +		if (ret)
>  			goto erase_err;
> -		}
>  
>  		/*
>  		 * Scale the timeout linearly with the size of the flash, with
> @@ -1839,7 +1838,7 @@ static int spansion_no_read_cr_quad_enable(struct spi_nor *nor)
>  	ret = spi_nor_read_sr(nor);
>  	if (ret < 0) {
>  		dev_err(nor->dev, "error while reading status register\n");
> -		return -EINVAL;
> +		return ret;
>  	}
>  	sr_cr[0] = ret;
>  	sr_cr[1] = CR_QUAD_EN_SPAN;
> @@ -1870,7 +1869,7 @@ static int spansion_read_cr_quad_enable(struct spi_nor *nor)
>  	ret = spi_nor_read_cr(nor);
>  	if (ret < 0) {
>  		dev_err(dev, "error while reading configuration register\n");
> -		return -EINVAL;
> +		return ret;
>  	}
>  
>  	if (ret & CR_QUAD_EN_SPAN)
> @@ -1882,7 +1881,7 @@ static int spansion_read_cr_quad_enable(struct spi_nor *nor)
>  	ret = spi_nor_read_sr(nor);
>  	if (ret < 0) {
>  		dev_err(dev, "error while reading status register\n");
> -		return -EINVAL;
> +		return ret;
>  	}
>  	sr_cr[0] = ret;
>  
> @@ -1932,7 +1931,7 @@ static int sr2_bit7_quad_enable(struct spi_nor *nor)
>  	ret = spi_nor_write_sr2(nor, sr2);
>  	if (ret) {
>  		dev_err(nor->dev, "error while writing status register 2\n");
> -		return -EINVAL;
> +		return ret;
>  	}
>  
>  	ret = spi_nor_wait_till_ready(nor);


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
