Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 646841B386A
	for <lists+linux-mtd@lfdr.de>; Wed, 22 Apr 2020 09:03:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hlPL9Kohdfe2no911uhGkQnH11vO359SOC6PDm6tT/Q=; b=JooMXEFfAAY67b
	8fF7Y2Vd1AmCi/Vb+HALCeffHCMBiRLADPZgX+LXun5AuOlb60DBYsZUHxwd7ePUOFVSD4r1BOzOx
	yNR2TFxaB1LLwvKpsWwaYngjsBcEcSUauk1epOmI0A27zCtVx/5M0zseINUiBI5/wWWg60lRZp1kC
	FvA8d6JmklpuaNszZ0Ggv+nz6DBtUOtwDqAKZPE6nYsHGplbtjYH5ZK1adM7aE4lxK0iYhFbUY/nI
	TbjxmyOd6+RZqmOfCT5PQc1c17iQ7Zgm+5zVWIL+BUY3//VeYVDfKYd1fj98F02Pd/ea5MrJvMKV5
	FDcDQrfM6m0wo+qgBz/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR9PL-0004ek-F0; Wed, 22 Apr 2020 07:02:55 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR9PC-0004e5-I1
 for linux-mtd@lists.infradead.org; Wed, 22 Apr 2020 07:02:47 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id B8CB32A191E;
 Wed, 22 Apr 2020 08:02:44 +0100 (BST)
Date: Wed, 22 Apr 2020 09:02:40 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH 7/8] mtd: rawnand: jedec: Use an intermediate variable
 to decomplefixy conditions
Message-ID: <20200422090240.44fb9838@collabora.com>
In-Reply-To: <20200421164637.8086-8-miquel.raynal@bootlin.com>
References: <20200421164637.8086-1-miquel.raynal@bootlin.com>
 <20200421164637.8086-8-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_000246_726422_30BB2D37 
X-CRM114-Status: GOOD (  15.13  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: Michal Simek <monstr@monstr.eu>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 21 Apr 2020 18:46:36 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Before reworking a little bit the JEDEC detection code, let's
> decomplefixy an if statement.

Same comment as earlier, it's not about complexity but readability.

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  drivers/mtd/nand/raw/nand_jedec.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/mtd/nand/raw/nand_jedec.c b/drivers/mtd/nand/raw/nand_jedec.c
> index 9b540e76f84f..4cc1ea512887 100644
> --- a/drivers/mtd/nand/raw/nand_jedec.c
> +++ b/drivers/mtd/nand/raw/nand_jedec.c
> @@ -28,6 +28,7 @@ int nand_jedec_detect(struct nand_chip *chip)
>  	int jedec_version = 0;
>  	char id[5];
>  	int i, val, ret;
> +	u16 crc;
>  
>  	memorg = nanddev_get_memorg(&chip->base);
>  
> @@ -54,8 +55,8 @@ int nand_jedec_detect(struct nand_chip *chip)
>  			goto free_jedec_param_page;
>  		}
>  
> -		if (onfi_crc16(ONFI_CRC_BASE, (uint8_t *)p, 510) ==
> -				le16_to_cpu(p->crc))
> +		crc = onfi_crc16(ONFI_CRC_BASE, (u8 *)p, 510);
> +		if (crc == le16_to_cpu(p->crc))
>  			break;
>  	}
>  


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
