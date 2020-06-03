Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E2A41ED187
	for <lists+linux-mtd@lfdr.de>; Wed,  3 Jun 2020 15:55:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s0HpDla/sYq5wURpfOwXWiMTJx1tnv3zMxM0ZWn5oL4=; b=RnLbbUMbApD3+c
	r550NOCp6hAGBaa3utVkCs3cmtmtFOLKciS5RHfqVADwtj5RX70LioSXiGMzoW2KqvxCjyN+OHFis
	qR0gfZaGgq/AYZJH16kJcxc8VX6N1W5t1JR6f3Fhd1acoaiyjZt9tdetYRWp4tkI/1BYnV1nISV9b
	PxlewZUlGPh36p/FvT16t4Mx7TMlWSX908lKYojvwwHzOkpvfHIS8sw3X3klu5bsBJT4NFu+0o9z2
	1UcCZsUQssQ6lQ6aXisWYq7EAtxYZ7U9kwcqhGFpaLFuYx2mY/Qv1WDWh5wjLMmeZxuIEFFNmHpVs
	wxmTm6VCD07AeX156G+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgTrA-0000MH-RK; Wed, 03 Jun 2020 13:55:00 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgTov-0006w3-CU
 for linux-mtd@lists.infradead.org; Wed, 03 Jun 2020 13:52:43 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 3A7D9C0012;
 Wed,  3 Jun 2020 13:52:35 +0000 (UTC)
Date: Wed, 3 Jun 2020 15:52:34 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH 03/10] mtd: rawnand: fsl_upm: Allocate the fsl_upm_nand
 object using devm_kzalloc()
Message-ID: <20200603155234.4594f501@xps13>
In-Reply-To: <20200603134922.1352340-4-boris.brezillon@collabora.com>
References: <20200603134922.1352340-1-boris.brezillon@collabora.com>
 <20200603134922.1352340-4-boris.brezillon@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_065241_571881_0ED52296 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
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
2020 15:49:15 +0200:

> This simplifies the init error patch and remove function.

                                 path?

Otherwise:

Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>

> 
> Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> ---
>  drivers/mtd/nand/raw/fsl_upm.c | 18 ++++++------------
>  1 file changed, 6 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/mtd/nand/raw/fsl_upm.c b/drivers/mtd/nand/raw/fsl_upm.c
> index 6eba2f4a2f5a..9cf79c62ef22 100644
> --- a/drivers/mtd/nand/raw/fsl_upm.c
> +++ b/drivers/mtd/nand/raw/fsl_upm.c
> @@ -205,36 +205,34 @@ static int fun_probe(struct platform_device *ofdev)
>  	int size;
>  	int i;
>  
> -	fun = kzalloc(sizeof(*fun), GFP_KERNEL);
> +	fun = devm_kzalloc(&ofdev->dev, sizeof(*fun), GFP_KERNEL);
>  	if (!fun)
>  		return -ENOMEM;
>  
>  	ret = of_address_to_resource(ofdev->dev.of_node, 0, &io_res);
>  	if (ret) {
>  		dev_err(&ofdev->dev, "can't get IO base\n");
> -		goto err1;
> +		return ret;
>  	}
>  
>  	ret = fsl_upm_find(io_res.start, &fun->upm);
>  	if (ret) {
>  		dev_err(&ofdev->dev, "can't find UPM\n");
> -		goto err1;
> +		return ret;
>  	}
>  
>  	prop = of_get_property(ofdev->dev.of_node, "fsl,upm-addr-offset",
>  			       &size);
>  	if (!prop || size != sizeof(uint32_t)) {
>  		dev_err(&ofdev->dev, "can't get UPM address offset\n");
> -		ret = -EINVAL;
> -		goto err1;
> +		return -EINVAL;
>  	}
>  	fun->upm_addr_offset = *prop;
>  
>  	prop = of_get_property(ofdev->dev.of_node, "fsl,upm-cmd-offset", &size);
>  	if (!prop || size != sizeof(uint32_t)) {
>  		dev_err(&ofdev->dev, "can't get UPM command offset\n");
> -		ret = -EINVAL;
> -		goto err1;
> +		return -EINVAL;
>  	}
>  	fun->upm_cmd_offset = *prop;
>  
> @@ -244,7 +242,7 @@ static int fun_probe(struct platform_device *ofdev)
>  		fun->mchip_count = size / sizeof(uint32_t);
>  		if (fun->mchip_count >= NAND_MAX_CHIPS) {
>  			dev_err(&ofdev->dev, "too much multiple chips\n");
> -			goto err1;
> +			return -EINVAL;
>  		}
>  		for (i = 0; i < fun->mchip_count; i++)
>  			fun->mchip_offsets[i] = be32_to_cpu(prop[i]);
> @@ -306,8 +304,6 @@ static int fun_probe(struct platform_device *ofdev)
>  			break;
>  		gpio_free(fun->rnb_gpio[i]);
>  	}
> -err1:
> -	kfree(fun);
>  
>  	return ret;
>  }
> @@ -330,8 +326,6 @@ static int fun_remove(struct platform_device *ofdev)
>  		gpio_free(fun->rnb_gpio[i]);
>  	}
>  
> -	kfree(fun);
> -
>  	return 0;
>  }
>  

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
