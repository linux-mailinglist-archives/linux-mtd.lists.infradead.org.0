Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2606012F5EB
	for <lists+linux-mtd@lfdr.de>; Fri,  3 Jan 2020 10:08:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FtTFH7WAZpMIckZ7eV6BbIdViBf5YJXtD90saxt2geo=; b=Jh9JVCt1HdmcpK
	fKiyAITnsTdvIbkcTyUL8n99ghaSSJgbCsAf2fbALdzW/ArKL0LkX12K4Nteev6mFB4Ub5ZkUkami
	ckamKxI1A4eoI9owWghpzZJ7fFZAF8EdWJq/zAz3H/T3xwDEKsmLUQg8Q8A0IIKDDqykqztlAKt5o
	DMdWEJlyEXtVlzCH2fz9U29xQLOQ/WELKwNCcQWofzRfVJ5OA2XPWfwacea4OM/rZmYISw3lq/fwl
	BTk2ZbhxBCTyBY3pOX4iivxoaX3bzx9BH9C/IPrINqGTxLMM8Y2gSTY+hrJ7QRdolrkXG0ztA5/vi
	Cw0Wn9MVhdpKUZZXFIXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inIvr-0002M4-Q5; Fri, 03 Jan 2020 09:07:47 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inIvR-0002Dm-4D; Fri, 03 Jan 2020 09:07:23 +0000
X-Originating-IP: 90.65.102.129
Received: from localhost (lfbn-lyo-1-1670-129.w90-65.abo.wanadoo.fr
 [90.65.102.129])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 89633E000C;
 Fri,  3 Jan 2020 09:07:04 +0000 (UTC)
Date: Fri, 3 Jan 2020 10:07:04 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Subject: Re: [PATCH] mtd: rawnand: atmel: switch to using
 devm_fwnode_gpiod_get()
Message-ID: <20200103090704.GG3040@piout.net>
References: <20200103012238.GA3648@dtor-ws>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200103012238.GA3648@dtor-ws>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_010721_303960_87A96CC6 
X-CRM114-Status: GOOD (  14.88  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
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
 Richard Weinberger <richard@nod.at>, Boris Brezillon <bbrezillon@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi,

On 02/01/2020 17:22:38-0800, Dmitry Torokhov wrote:
> devm_fwnode_get_index_gpiod_from_child() is going away as the name is
> too unwieldy, let's switch to using the new devm_fwnode_gpiod_get().
> 
> Signed-off-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>
> ---
>  drivers/mtd/nand/raw/atmel/nand-controller.c | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/mtd/nand/raw/atmel/nand-controller.c b/drivers/mtd/nand/raw/atmel/nand-controller.c
> index 8d6be90a6fe8a..849bd5f16492d 100644
> --- a/drivers/mtd/nand/raw/atmel/nand-controller.c
> +++ b/drivers/mtd/nand/raw/atmel/nand-controller.c
> @@ -1578,9 +1578,8 @@ static struct atmel_nand *atmel_nand_create(struct atmel_nand_controller *nc,
>  
>  	nand->numcs = numcs;
>  
> -	gpio = devm_fwnode_get_index_gpiod_from_child(nc->dev, "det", 0,
> -						      &np->fwnode, GPIOD_IN,
> -						      "nand-det");
> +	gpio = devm_fwnode_gpiod_get(nc->dev, of_fwnode_hanlde(np),

Shouldn't that be of_fwnode_handle(np)?

> +				     "det", GPIOD_IN, "nand-det");
>  	if (IS_ERR(gpio) && PTR_ERR(gpio) != -ENOENT) {
>  		dev_err(nc->dev,
>  			"Failed to get detect gpio (err = %ld)\n",
> @@ -1624,9 +1623,10 @@ static struct atmel_nand *atmel_nand_create(struct atmel_nand_controller *nc,
>  			nand->cs[i].rb.type = ATMEL_NAND_NATIVE_RB;
>  			nand->cs[i].rb.id = val;
>  		} else {
> -			gpio = devm_fwnode_get_index_gpiod_from_child(nc->dev,
> -							"rb", i, &np->fwnode,
> -							GPIOD_IN, "nand-rb");
> +			gpio = devm_fwnode_gpiod_get_index(nc->dev,
> +							   of_fwnode_handle(np),
> +							   "rb", i, GPIOD_IN,
> +							   "nand-rb");
>  			if (IS_ERR(gpio) && PTR_ERR(gpio) != -ENOENT) {
>  				dev_err(nc->dev,
>  					"Failed to get R/B gpio (err = %ld)\n",
> @@ -1640,10 +1640,10 @@ static struct atmel_nand *atmel_nand_create(struct atmel_nand_controller *nc,
>  			}
>  		}
>  
> -		gpio = devm_fwnode_get_index_gpiod_from_child(nc->dev, "cs",
> -							      i, &np->fwnode,
> -							      GPIOD_OUT_HIGH,
> -							      "nand-cs");
> +		gpio = devm_fwnode_gpiod_get_index(nc->dev,
> +						   of_fwnode_handle(np),
> +						   "cs", i, GPIOD_OUT_HIGH,
> +						   "nand-cs");
>  		if (IS_ERR(gpio) && PTR_ERR(gpio) != -ENOENT) {
>  			dev_err(nc->dev,
>  				"Failed to get CS gpio (err = %ld)\n",
> -- 
> 2.24.1.735.g03f4e72817-goog
> 
> 
> -- 
> Dmitry

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
