Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE6FFEFD15
	for <lists+linux-mtd@lfdr.de>; Tue,  5 Nov 2019 13:21:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YL5kEa9dVWxGZlgLHdZBzFcw4OClLv5NE4n4bPf4+Z0=; b=iTiM3cdnsoxWqV
	iM5SwUzG/4k/zVc1otIr2QWf8a9OeZUk9qcExvOahZLIgZuW3dVH6xdynvDHmbaHtu3AfM+XrnWoB
	XTUWPjsJkZwC161Kz6CIRl8az7kPlzQHEEXtPq1tSQ6lPjNBcb/YxCssvkTgs5IuHNKLLi+QUzy6P
	9q/2sqk31QybH7ik4tmtfRqGvRv1ulCo/Ij7/NhPJHTvppQqfKDLYKslao8vXZoLdlK4yMpxfOlQN
	zWJ7Wm5uQr6TA436fzzaMPuEkwP1f8HZTa2jo8XMEaITmi8i6kh5k4i02YXb2V+Xe3X1tJgIVVs7J
	YLkQvVCMs2IacLcMp1Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRxpy-0001yC-8u; Tue, 05 Nov 2019 12:21:30 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRxpm-0001xb-6y
 for linux-mtd@lists.infradead.org; Tue, 05 Nov 2019 12:21:19 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id xA5CLBP0017462;
 Tue, 5 Nov 2019 06:21:11 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1572956471;
 bh=XdarqqgV7CHO0J2b+o2EUifq7q1n3LIXgOfSWZleKzs=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=C4H9JKTA2iE5k236NiEEMmGP9j7dDeyU6c93yRxvFIMME+Tcf+XQMHzfdFcCKjQ8n
 33mwcBJDVBvDeeBHwGTsu6IP1uDrvRrxnHHmFK4q4gyxkb4WdYPbS6CGOhvpobeIN4
 +nF7pDmW7WS8QVJrAOYaPmafaSN/i8emD07SYVLc=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xA5CLBiW050932
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 5 Nov 2019 06:21:11 -0600
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 5 Nov
 2019 06:21:10 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 5 Nov 2019 06:20:56 -0600
Received: from [172.24.145.136] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id xA5CL8X5070778;
 Tue, 5 Nov 2019 06:21:09 -0600
Subject: Re: [PATCH v4 11/20] mtd: spi-nor: Check all the bits written, not
 just the BP ones
To: <Tudor.Ambarus@microchip.com>, <boris.brezillon@collabora.com>
References: <20191102112316.20715-1-tudor.ambarus@microchip.com>
 <20191102112316.20715-12-tudor.ambarus@microchip.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <037932b0-329f-f974-25b5-ac584ad69262@ti.com>
Date: Tue, 5 Nov 2019 17:51:44 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191102112316.20715-12-tudor.ambarus@microchip.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_042118_336515_694752B0 
X-CRM114-Status: GOOD (  17.47  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: richard@nod.at, linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 miquel.raynal@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 02/11/19 4:53 PM, Tudor.Ambarus@microchip.com wrote:
> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> Check that all the bits written in the write_sr_and_check() method
> match the status_new received value. Failing to write the other bits
> is dangerous too, extend the check.
> 
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> ---

Reviewed-by: Vignesh Raghavendra <vigneshr@ti.com>

Regards
Vignesh

>  drivers/mtd/spi-nor/spi-nor.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index 14146619bf19..8f5e9833081b 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -960,8 +960,7 @@ static int spi_nor_write_sr(struct spi_nor *nor, const u8 *sr, size_t len)
>  }
>  
>  /* Write status register and ensure bits in mask match written values */
> -static int spi_nor_write_sr_and_check(struct spi_nor *nor, u8 status_new,
> -				      u8 mask)
> +static int spi_nor_write_sr_and_check(struct spi_nor *nor, u8 status_new)
>  {
>  	int ret;
>  
> @@ -975,7 +974,7 @@ static int spi_nor_write_sr_and_check(struct spi_nor *nor, u8 status_new,
>  	if (ret)
>  		return ret;
>  
> -	return ((nor->bouncebuf[0] & mask) != (status_new & mask)) ? -EIO : 0;
> +	return (nor->bouncebuf[0] != status_new) ? -EIO : 0;
>  }
>  
>  /**
> @@ -1774,7 +1773,7 @@ static int stm_lock(struct spi_nor *nor, loff_t ofs, uint64_t len)
>  	if ((status_new & mask) < (status_old & mask))
>  		return -EINVAL;
>  
> -	return spi_nor_write_sr_and_check(nor, status_new, mask);
> +	return spi_nor_write_sr_and_check(nor, status_new);
>  }
>  
>  /*
> @@ -1859,7 +1858,7 @@ static int stm_unlock(struct spi_nor *nor, loff_t ofs, uint64_t len)
>  	if ((status_new & mask) > (status_old & mask))
>  		return -EINVAL;
>  
> -	return spi_nor_write_sr_and_check(nor, status_new, mask);
> +	return spi_nor_write_sr_and_check(nor, status_new);
>  }
>  
>  /*
> 

-- 
Regards
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
