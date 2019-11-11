Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 179F1F783F
	for <lists+linux-mtd@lfdr.de>; Mon, 11 Nov 2019 16:59:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iqfJw8Tl9qyJOGQQ8V5fNT52mKo3YbaQWOf7asQt0cU=; b=CFjKVRSt2VrUKb
	A+kdic2WAroBdemNWkU8wunSxWaNYz2cNRRbmn7Mp8rQrZgX587aWcfkhJ0UtzjfBWez56O6cglnt
	uEZVeVfEpW2HgPkRm5mR9cmpXHSCLnMrRlcVF1u4BcZX2y1PZEKyI9X9/fVnKpAepOWNXHIKdAtiT
	ww4jSmgqYwH21Asm2500iM/vq2Ek893Bf7fGADu667M5DVxVEhLuV+1/hxdCKeDQhtLt+EqW80kwa
	E2DSF3Ba/xpHblf47rdOHyCV6VGed8SLm4oP1aZmBdZnGHZkdxBl5upjES185tNdqjULQ6j34HPoK
	n4ZaG9ppzOpqst6DSHvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUC6S-0000GX-D9; Mon, 11 Nov 2019 15:59:44 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUC6F-0000Fv-BS
 for linux-mtd@lists.infradead.org; Mon, 11 Nov 2019 15:59:32 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 5EBB328F865;
 Mon, 11 Nov 2019 15:59:28 +0000 (GMT)
Date: Mon, 11 Nov 2019 16:59:25 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: <Tudor.Ambarus@microchip.com>
Subject: Re: [PATCH] mtd: spi-nor: Make sure nor->spimem and
 nor->controller_ops are mutually exclusive
Message-ID: <20191111165925.3eb56e95@collabora.com>
In-Reply-To: <20191111094358.8271-1-tudor.ambarus@microchip.com>
References: <20191111100241.717a8fb9@collabora.com>
 <20191111094358.8271-1-tudor.ambarus@microchip.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_075931_519958_8143184D 
X-CRM114-Status: GOOD (  14.95  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: linux-mtd@lists.infradead.org, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, 11 Nov 2019 09:44:08 +0000
<Tudor.Ambarus@microchip.com> wrote:

> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> Expand the spi_nor_check() to make sure that nor->spimem and
> nor->controller_ops are mutually exclusive.
> 
> Fixes: b35b9a10362d ("mtd: spi-nor: Move m25p80 code in spi-nor.c")
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
> v3:
> - split checks for better error accuracy
> - s/mutual/mutually
> 
>  drivers/mtd/spi-nor/spi-nor.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index 824649eecd59..f5d24ccf5108 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -2878,6 +2878,7 @@ static int spi_nor_write(struct mtd_info *mtd, loff_t to, size_t len,
>  static int spi_nor_check(struct spi_nor *nor)
>  {
>  	if (!nor->dev ||
> +	    (!nor->spimem && !nor->controller_ops) ||
>  	    (!nor->spimem && nor->controller_ops &&
>  	    (!nor->controller_ops->read ||
>  	     !nor->controller_ops->write ||
> @@ -2887,6 +2888,11 @@ static int spi_nor_check(struct spi_nor *nor)
>  		return -EINVAL;
>  	}
>  
> +	if (nor->spimem && nor->controller_ops) {
> +		dev_err(nor->dev, "nor->spimem and nor->controller_ops are mutually exclusive, please set just one of them.\n");
> +		return -EINVAL;
> +	}
> +
>  	return 0;
>  }
>  


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
