Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 170941ED195
	for <lists+linux-mtd@lfdr.de>; Wed,  3 Jun 2020 15:58:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g1QvsNgLbH37Vb1+5H/kvVXJhZTjS3PCNyQaCa3qiZs=; b=rtCCCWuKFLCpri
	ChNllwn/SmCiJF7E//Ewypzfaoq+TXiC5Pxq21b33wiLuhFxF7iAzhLgfTuFjp4mvEmdwPdrYCZI8
	Gjx85bKRgWKOJ2jzmGpd+qDXFlfxYi/fX02+Jtpjt2RpYlL176h5j3mgYZdJL57FqVmy8A0A+QTS6
	GMNli2Ah7OX4JaWvguhLneVz2KtbWuumo2reO0KAKz1xHdVf6jT9gj8vxM1iWtIn4rnmdNwLm3/v7
	+or0VMqXLA+zPknAXybKAV3iLnX0VrzG0GzhcoxrOtkXh9M9j9qLtEpkun8ypADTCtz710TwUL8TZ
	gscJ1WNoVs3EQ+KmnK5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgTuR-0003W7-JV; Wed, 03 Jun 2020 13:58:23 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgTuI-0003VG-H7
 for linux-mtd@lists.infradead.org; Wed, 03 Jun 2020 13:58:16 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id DE971FF80B;
 Wed,  3 Jun 2020 13:58:03 +0000 (UTC)
Date: Wed, 3 Jun 2020 15:58:02 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH 05/10] mtd: rawnand: fsl_upm: Use
 platform_get_resource() + devm_ioremap_resource()
Message-ID: <20200603155802.12165328@xps13>
In-Reply-To: <20200603134922.1352340-6-boris.brezillon@collabora.com>
References: <20200603134922.1352340-1-boris.brezillon@collabora.com>
 <20200603134922.1352340-6-boris.brezillon@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_065814_704485_CC674863 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.199 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Michael Ellerman <mpe@ellerman.id.au>, Anton Vorontsov <anton@enomsg.org>,
 Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


Boris Brezillon <boris.brezillon@collabora.com> wrote on Wed,  3 Jun
2020 15:49:17 +0200:

> Replace the of_address_to_resource() + devm_ioremap() calls by
> platform_get_resource() + devm_ioremap_resource() ones which allows us
> to get rid of one error message since devm_ioremap_resource() already
> takes care of that.
> 
> Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> ---
>  drivers/mtd/nand/raw/fsl_upm.c | 23 +++++++----------------
>  1 file changed, 7 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/mtd/nand/raw/fsl_upm.c b/drivers/mtd/nand/raw/fsl_upm.c
> index a3e3a968891d..54851e9ea784 100644
> --- a/drivers/mtd/nand/raw/fsl_upm.c
> +++ b/drivers/mtd/nand/raw/fsl_upm.c
> @@ -14,7 +14,6 @@
>  #include <linux/mtd/nand_ecc.h>
>  #include <linux/mtd/partitions.h>
>  #include <linux/mtd/mtd.h>
> -#include <linux/of_address.h>
>  #include <linux/of_platform.h>
>  #include <linux/of_gpio.h>
>  #include <linux/io.h>
> @@ -197,7 +196,7 @@ static int fun_chip_init(struct fsl_upm_nand *fun,
>  static int fun_probe(struct platform_device *ofdev)
>  {
>  	struct fsl_upm_nand *fun;
> -	struct resource io_res;
> +	struct resource *io_res;
>  	const __be32 *prop;
>  	int rnb_gpio;
>  	int ret;
> @@ -208,13 +207,12 @@ static int fun_probe(struct platform_device *ofdev)
>  	if (!fun)
>  		return -ENOMEM;
>  
> -	ret = of_address_to_resource(ofdev->dev.of_node, 0, &io_res);
> -	if (ret) {
> -		dev_err(&ofdev->dev, "can't get IO base\n");
> -		return ret;
> -	}
> +	io_res = platform_get_resource(ofdev, IORESOURCE_MEM, 0);
> +	fun->io_base = devm_ioremap_resource(&ofdev->dev, io_res);

Why not even using devm_platform_ioremap_resource() resource directly?

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
