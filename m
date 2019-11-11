Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50578F700B
	for <lists+linux-mtd@lfdr.de>; Mon, 11 Nov 2019 10:03:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ygm5Twzt9/zFmdRvG7k/fR13TVj3X62K79YfSO4Ndcw=; b=TyDi720rABKsOk
	lenuABTWYuGVX2RL44oBXlHPxJhrgqdjQvlVrqlzZBfQ3FTO6xj1/32aFO2rB7DZWfzIpZ8LxW0r4
	9BuPobCLs3OdiHFJX8/tJW/lRV1XiMY72GbSh8kp55wS8urGt2Ma4ecif7cseqwcF7nU8D+KiN01g
	WWHoZbfCSUteeuXEDv9medfacBhvVcqSURLgvKm6oXiTsSMQciUp4uMi16MWTOd3llLIUjFxdQrG8
	qhXGq1R11gR/ira2cKHgQ3k5ObIMqghyhg92AE/CJ2mPI09PG6xwgWXbvEZXMB/el+oR39WoQZXY7
	3cHhatLQEyR2x+KnkCIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU5b7-0000i1-KA; Mon, 11 Nov 2019 09:02:57 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU5ax-0000hO-HH
 for linux-mtd@lists.infradead.org; Mon, 11 Nov 2019 09:02:48 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id BAA6228EAA4;
 Mon, 11 Nov 2019 09:02:44 +0000 (GMT)
Date: Mon, 11 Nov 2019 10:02:41 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: <Tudor.Ambarus@microchip.com>
Subject: Re: [PATCH v2 1/2] mtd: spi-nor: Make sure nor->spimem and
 nor->controller_ops are mutual exclusive
Message-ID: <20191111100241.717a8fb9@collabora.com>
In-Reply-To: <20191025142811.541-1-tudor.ambarus@microchip.com>
References: <20191025123217.12790-1-tudor.ambarus@microchip.com>
 <20191025142811.541-1-tudor.ambarus@microchip.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_010247_702847_B96F4EB1 
X-CRM114-Status: GOOD (  15.61  )
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
Cc: linux-mtd@lists.infradead.org, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, 25 Oct 2019 14:28:34 +0000
<Tudor.Ambarus@microchip.com> wrote:

> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> Expand the spi_nor_check() to make sure that nor->spimem and
> nor->controller_ops are mutual exclusive.

			  ^mutually

> 
> Fixes: b35b9a10362d ("mtd: spi-nor: Move m25p80 code in spi-nor.c")
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> ---
> v2: new patch
> 
>  drivers/mtd/spi-nor/spi-nor.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index a6f9f833c862..b452d3d0de28 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -2741,6 +2741,12 @@ static int spi_nor_check(struct spi_nor *nor)
>  		return -EINVAL;
>  	}
>  
> +	if ((nor->spimem && nor->controller_ops) ||
> +	    (!nor->spimem && !nor->controller_ops)) {
> +		dev_err(nor->dev, "nor->spimem and nor->controller_ops are mutual exclusive\n");

Hm, the test does more than checking that only one of nor->spimem
nor->controller_ops is set, it also checks that at least one of them is
provided. Maybe you should split those tests and have a different error
message for each, or make the error message more generic.

> +		return -EINVAL;
> +	}
> +
>  	return 0;
>  }
>  


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
