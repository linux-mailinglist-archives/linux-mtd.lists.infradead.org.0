Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D038D21AA
	for <lists+linux-mtd@lfdr.de>; Thu, 10 Oct 2019 09:33:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+zsN7VGu7vGKmSxehYICvoUkd/RXIlmCsq5VZdH8AWA=; b=YUCANPDSnNS6LJ
	LGarfC1qMvb6AaME0G/ISTqwhVYl8bO2z9iW6BfjPY0woMPVDrE1SA9/0XObaSGmueqGsBPgmzOJy
	vUNykBX0gJUdeE5Uma5jAA1N489FI+m4HdlFOnj5KLc/aouH2NYQbi8bxedalRdBButLZdbWJUiMS
	eKELtInxFOGjyUlz2MO6pB1ZsydhX2Tnf1ZC0VWQjEklPy7JCZigmzopSm0PUkaejoYWJVNOTy9xD
	8tdylM7M+4/B8eUHooE6lZlAwP13Jt4LZHSqeuD75UpR3xw/jX9G/BaYg6IhOeZv5hMI/vJSTECLr
	HIe9r8LX9xfZIMizeBLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iISxC-0002iG-GI; Thu, 10 Oct 2019 07:33:42 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iISwj-0002Xz-GI; Thu, 10 Oct 2019 07:33:15 +0000
Received: from dhcp-172-31-174-146.wireless.concordia.ca (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 96F5D290783;
 Thu, 10 Oct 2019 08:33:11 +0100 (BST)
Date: Thu, 10 Oct 2019 09:33:08 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: <Tudor.Ambarus@microchip.com>
Subject: Re: [PATCH v2 09/22] mtd: spi-nor: Fix retlen handling in sst_write()
Message-ID: <20191010093308.2fe94974@dhcp-172-31-174-146.wireless.concordia.ca>
In-Reply-To: <20190924074533.6618-10-tudor.ambarus@microchip.com>
References: <20190924074533.6618-1-tudor.ambarus@microchip.com>
 <20190924074533.6618-10-tudor.ambarus@microchip.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_003313_807197_7625E1DB 
X-CRM114-Status: GOOD (  18.70  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org, vigneshr@ti.com,
 geert+renesas@glider.be, andrew@aj.id.au, richard@nod.at,
 linux-kernel@vger.kernel.org, vz@mleia.com, marek.vasut@gmail.com,
 jonas@norrbonn.se, linux-mtd@lists.infradead.org, joel@jms.id.au,
 miquel.raynal@bootlin.com, matthias.bgg@gmail.com,
 linux-mediatek@lists.infradead.org, computersforpeace@gmail.com,
 dwmw2@infradead.org, linux-aspeed@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 24 Sep 2019 07:46:21 +0000
<Tudor.Ambarus@microchip.com> wrote:

> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> In case the write of the first byte failed, retlen was incorrectly
> incremented to *retlen += actual; on the exit path. retlen should be
> incremented when actual data was written to the flash.
> 
> Rename 'sst_write_err' label to 'out' as it is no longer generic for
> all the write errors in the sst_write() method, and may introduce
> confusion.

Renaming the label is indeed a good thing, but should be done in a
separate patch.

> 
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> ---
>  drivers/mtd/spi-nor/spi-nor.c | 22 +++++++++++-----------
>  1 file changed, 11 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index 0aee068a5835..be5dee622d51 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -2665,12 +2665,12 @@ static int sst_write(struct mtd_info *mtd, loff_t to, size_t len,
>  		/* write one byte. */
>  		ret = spi_nor_write_data(nor, to, 1, buf);
>  		if (ret < 0)
> -			goto sst_write_err;
> +			goto unlock_and_unprep;
>  		WARN(ret != 1, "While writing 1 byte written %i bytes\n",
>  		     (int)ret);
>  		ret = spi_nor_wait_till_ready(nor);
>  		if (ret)
> -			goto sst_write_err;
> +			goto unlock_and_unprep;
>  	}
>  	to += actual;

Not sure we need this new label, we can just have:

	actual = 0;
	/* Start write from odd address. */
	if (to % 2) {
		nor->program_opcode = SPINOR_OP_BP;

		/* write one byte. */
		ret = spi_nor_write_data(nor, to, 1, buf);
		if (ret < 0)
			goto out;
		WARN(ret != 1, "While writing 1 byte written %i
		bytes\n", (int)ret);
		ret = spi_nor_wait_till_ready(nor);
		if (ret)
			goto out;

		to++;
		actual++;
	}

>  
> @@ -2681,12 +2681,12 @@ static int sst_write(struct mtd_info *mtd, loff_t to, size_t len,
>  		/* write two bytes. */
>  		ret = spi_nor_write_data(nor, to, 2, buf + actual);
>  		if (ret < 0)
> -			goto sst_write_err;
> +			goto out;
>  		WARN(ret != 2, "While writing 2 bytes written %i bytes\n",
>  		     (int)ret);
>  		ret = spi_nor_wait_till_ready(nor);
>  		if (ret)
> -			goto sst_write_err;
> +			goto out;
>  		to += 2;
>  		nor->sst_write_second = true;
>  	}
> @@ -2694,35 +2694,35 @@ static int sst_write(struct mtd_info *mtd, loff_t to, size_t len,
>  
>  	ret = spi_nor_write_disable(nor);
>  	if (ret)
> -		goto sst_write_err;
> +		goto out;
>  
>  	ret = spi_nor_wait_till_ready(nor);
>  	if (ret)
> -		goto sst_write_err;
> +		goto out;
>  
>  	/* Write out trailing byte if it exists. */
>  	if (actual != len) {
>  		ret = spi_nor_write_enable(nor);
>  		if (ret)
> -			goto sst_write_err;
> +			goto out;
>  
>  		nor->program_opcode = SPINOR_OP_BP;
>  		ret = spi_nor_write_data(nor, to, 1, buf + actual);
>  		if (ret < 0)
> -			goto sst_write_err;
> +			goto out;
>  		WARN(ret != 1, "While writing 1 byte written %i bytes\n",
>  		     (int)ret);
>  		ret = spi_nor_wait_till_ready(nor);
>  		if (ret)
> -			goto sst_write_err;
> +			goto out;
>  
>  		ret = spi_nor_write_disable(nor);
>  		if (ret)
> -			goto sst_write_err;
> +			goto out;
>  
>  		actual += 1;
>  	}
> -sst_write_err:
> +out:
>  	*retlen += actual;
>  unlock_and_unprep:
>  	spi_nor_unlock_and_unprep(nor, SPI_NOR_OPS_WRITE);


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
