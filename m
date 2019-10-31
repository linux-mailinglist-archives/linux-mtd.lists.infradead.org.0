Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28DC9EADBE
	for <lists+linux-mtd@lfdr.de>; Thu, 31 Oct 2019 11:44:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VxH43taDXAqNY9PtOpUnOcH6rHBSqxb6obI6YiTvdsI=; b=BeX57ujX1dI0u7
	73kOez5uBYUEjkJdq5vfU2mDInzls2yHsKilp+1vnKPR7fzM70Ac6/Odxp7M/a17NdmjZOoFOiVCh
	q05LpnHAnt/duBqpOxYDsTgkp8vj+A68IHUiUxxuSmjGk3bHUohk8eoRjUe/VK3tdU0r9SWiaR+8g
	dO5N4+gyZsW4Ga0R99EKQ9RwMIJuXzlpKeXkcBOiD9fwZLQwGkW+eMfuP/M6wp3Qwtrwl/6K7VPaK
	sl0oyyOLv8D8CX4aHdczb03REa4efdQpNj+cnQ6pSc82t3v42QYcKRqgZL65JSHVPQdFCn5VEHjPo
	wJkTK4Zk56PZUd5Mt17Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ7w3-000431-UR; Thu, 31 Oct 2019 10:44:11 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ7vv-000429-Sa
 for linux-mtd@lists.infradead.org; Thu, 31 Oct 2019 10:44:05 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 67FEF28BC5D;
 Thu, 31 Oct 2019 10:44:02 +0000 (GMT)
Date: Thu, 31 Oct 2019 11:43:58 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: <Tudor.Ambarus@microchip.com>
Subject: Re: [PATCH v3 06/32] mtd: spi-nor: Use dev_err() instead of pr_err()
Message-ID: <20191031114358.4f9016d7@collabora.com>
In-Reply-To: <20191029111615.3706-7-tudor.ambarus@microchip.com>
References: <20191029111615.3706-1-tudor.ambarus@microchip.com>
 <20191029111615.3706-7-tudor.ambarus@microchip.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_034404_056497_E985CD3C 
X-CRM114-Status: GOOD (  16.18  )
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

On Tue, 29 Oct 2019 11:16:57 +0000
<Tudor.Ambarus@microchip.com> wrote:

> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> Print identifying information about struct device.
> 
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> ---
>  drivers/mtd/spi-nor/spi-nor.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index e801f390728c..c794eff69fe9 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -448,7 +448,7 @@ static int spi_nor_read_sr(struct spi_nor *nor)
>  	}
>  
>  	if (ret) {
> -		pr_err("error %d reading SR\n", ret);
> +		dev_err(nor->dev, "error %d reading SR\n", ret);

nor->dev is not exactly what we should use since it points to the SPI
NOR controller device in the !SPI_MEM case, and those controllers can
be attached several SPI NOR devs. Ideally we should use mtd->dev, but
that requires splitting the MTD initialization and registration steps
so mtd->dev can have a valid name before registration time.

Anyway, I guess this change is good enough for now, just mentioned the
problem in case anyone is interested working on it.

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

>  		return ret;
>  	}
>  
> @@ -478,7 +478,7 @@ static int spi_nor_read_fsr(struct spi_nor *nor)
>  	}
>  
>  	if (ret) {
> -		pr_err("error %d reading FSR\n", ret);
> +		dev_err(nor->dev, "error %d reading FSR\n", ret);
>  		return ret;
>  	}
>  


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
