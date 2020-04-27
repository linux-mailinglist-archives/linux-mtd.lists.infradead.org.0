Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 421A11BA477
	for <lists+linux-mtd@lfdr.de>; Mon, 27 Apr 2020 15:19:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NUi0Fih69/X6aRUr7leie54L8vRGaajB3ozIgk4uLzk=; b=F5RQDys+J39r6S
	J9LegkdZCBTfTPHX++U7tqndbBPEugTjsxj4mBhgITV3Do86zFqNwtB1Efb8otd9jYeqiTz+K1xG9
	JzxQ7fA5oCMhHg9nhDcGtyANJ/Us+X0syoCUBltiwZT9ZJFc6q8v7FMugF7jZIuwMmGv06YIKHgfk
	TDQF+fW0vH7L7xDPoejk4DtyQFhFRt2MG813ElG2Q9tfquScm1rB5tR3bI5uyF6AHBNnS4tmO1+Fs
	k6SfWJWkUn98ew+afMoNrHfS+ueMbWuFBp9uItw9iKwx1homjMuDF8ea9/xFin+/c6T3t2LQTTAwO
	YHF7LZpbF8tOB6FCBFng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT3fR-0003IJ-9p; Mon, 27 Apr 2020 13:19:25 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT3fJ-0003Ha-DC
 for linux-mtd@lists.infradead.org; Mon, 27 Apr 2020 13:19:18 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id E380D2001C;
 Mon, 27 Apr 2020 13:19:08 +0000 (UTC)
Date: Mon, 27 Apr 2020 15:19:07 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Victor Fusco <victor@cartesi.io>
Subject: Re: [PATCH] mtd: physmap: Fix mtd device name
Message-ID: <20200427151153.0104ce07@xps13>
In-Reply-To: <20200319143833.24767-1-victor@cartesi.io>
References: <20200319143833.24767-1-victor@cartesi.io>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_061917_577424_9B687580 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Victor,

Please add the maintainers in copy of your patch next time. Otherwise
you might wait a lot before we even figure that you sent us something.

Victor Fusco <victor@cartesi.io> wrote on Thu, 19 Mar
2020 14:38:33 +0000:

> This patch fixes the mtd device name when the "linux,mtd-name" field is
> defined on the Device Tree. A verification to check if the name was
> already defined was missing causing the name to be overwritten with a
> default value.
> 
> Signed-off-by: Victor Fusco <victor@cartesi.io>
> ---
>  drivers/mtd/maps/physmap-core.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mtd/maps/physmap-core.c b/drivers/mtd/maps/physmap-core.c
> index 8f7f966fa9a7..6372197ad865 100644
> --- a/drivers/mtd/maps/physmap-core.c
> +++ b/drivers/mtd/maps/physmap-core.c
> @@ -515,7 +515,8 @@ static int physmap_flash_probe(struct platform_device *dev)
>  		dev_notice(&dev->dev, "physmap platform flash device: %pR\n",
>  			   res);
>  
> -		info->maps[i].name = dev_name(&dev->dev);
> +		if (!info->maps[i].name)
> +			info->maps[i].name = dev_name(&dev->dev);
>  
>  		if (!info->maps[i].phys)
>  			info->maps[i].phys = res->start;
> 

Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
