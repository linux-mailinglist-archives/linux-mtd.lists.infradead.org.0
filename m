Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2631EEAE65
	for <lists+linux-mtd@lfdr.de>; Thu, 31 Oct 2019 12:05:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l3l3PzKJrq9nhFnX+00acDm9Ph5+ewtOUYdU/trCtK0=; b=rvR5BM2Ta1pcjP
	cA6d38ysQ8LwsqAAyzLLOf76N4M82Hog/CIsRx+p0zaJaRCD1MmxHh4CgBs+nSLoBtYNP0OxaoRlI
	u7+CnpND/Za1PWyQWvxnrovvWzTuaJJhpfnyK41ZVbS2S1mT8gao90vPTFLVg0qfpeF21tnCCRXbi
	/2JnskIIq4IfcqmGJuomPS0oXEYEDfrHUphF86mcnLURDS8EH0eFrM7HO6qDVdBfH1zkYYMw8ivID
	mcZB3Poi76KCNSXPoXFE1VLOTwq60/ZAjf5nELUK4InGrqJmOpKqfecuZYqgsfss2gQvJwbXpgcX7
	iOKm01dauLRrmS06A60g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ8Gl-0000AC-Pe; Thu, 31 Oct 2019 11:05:35 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ8GY-00009p-2V
 for linux-mtd@lists.infradead.org; Thu, 31 Oct 2019 11:05:23 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id A672F28A49B;
 Thu, 31 Oct 2019 11:05:20 +0000 (GMT)
Date: Thu, 31 Oct 2019 12:05:18 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: <Tudor.Ambarus@microchip.com>
Subject: Re: [PATCH v3 13/32] mtd: spi-nor: Print error messages inside Reg
 Ops methods
Message-ID: <20191031120518.5bac1caa@collabora.com>
In-Reply-To: <20191029111615.3706-14-tudor.ambarus@microchip.com>
References: <20191029111615.3706-1-tudor.ambarus@microchip.com>
 <20191029111615.3706-14-tudor.ambarus@microchip.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_040522_248306_BA7E8887 
X-CRM114-Status: GOOD (  15.29  )
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

On Tue, 29 Oct 2019 11:17:09 +0000
<Tudor.Ambarus@microchip.com> wrote:

> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> Spare the callers of printing error messages by themselves.
> 
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> ---
>  drivers/mtd/spi-nor/spi-nor.c | 165 +++++++++++++++++++++++++++++++-----------
>  1 file changed, 123 insertions(+), 42 deletions(-)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index e5ed9012cd50..bc46b946ac77 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -394,6 +394,8 @@ static ssize_t spi_nor_write_data(struct spi_nor *nor, loff_t to, size_t len,
>   */
>  static int spi_nor_write_enable(struct spi_nor *nor)
>  {
> +	int ret;
> +
>  	if (nor->spimem) {
>  		struct spi_mem_op op =
>  			SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_WREN, 1),
> @@ -401,10 +403,16 @@ static int spi_nor_write_enable(struct spi_nor *nor)
>  				   SPI_MEM_OP_NO_DUMMY,
>  				   SPI_MEM_OP_NO_DATA);
>  
> -		return spi_mem_exec_op(nor->spimem, &op);
> +		ret = spi_mem_exec_op(nor->spimem, &op);
> +	} else {
> +		ret = nor->controller_ops->write_reg(nor, SPINOR_OP_WREN,
> +						     NULL, 0);
>  	}
>  
> -	return nor->controller_ops->write_reg(nor, SPINOR_OP_WREN, NULL, 0);
> +	if (ret)
> +		dev_err(nor->dev, "error %d on Write Enable\n", ret);

I thought we agreed on using dev_err_once() here (applies to other
dev_err() calls). If it fails once it's unlikely to succeed on
subsequent calls, and I don't think spamming the kernel logs is very
useful.

> +
> +	return ret;
>  }

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
