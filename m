Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2378F1BBD09
	for <lists+linux-mtd@lfdr.de>; Tue, 28 Apr 2020 14:06:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B/3Sq2WM96DI4QrL/Ewfy3ni9Vy8oiyne0wkT4UxBLY=; b=IKlo8DTHDOR9Hm
	CAtSppRRcJEwkdi5q/W1MP74hGdBYF29SCk1tQQUZ0EvqW71YgdIuk6UPfI3adSxmMpvuvmPrIri7
	SpqoeZlSSGcMDvcQdfQDAKpXLGXDkIpgzA5tSGTiHKkzhuvyFEJ0AfxIFwXD/CPQHXYCy5HZaCoPW
	P3r8fsWnSfoGjKSINdyYcoX2JqeH+5cNhOmzVrQEQ2sRzos7qFHu4KIASd6fJkfjx6EMgAA4E2vEU
	9w+VPPwtS4g2MBjuUm1soEp0GdacniN5OrLcdOqVDXbEVD0OLEVLslir5lS/vaA0UW5LgfFvnol+9
	59ubOeyltr+83XgcW5zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTP0a-0006Ep-E2; Tue, 28 Apr 2020 12:06:40 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTP0P-0006DO-5j
 for linux-mtd@lists.infradead.org; Tue, 28 Apr 2020 12:06:32 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03SC6NEK037007;
 Tue, 28 Apr 2020 07:06:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588075583;
 bh=TJsF3HRiXQf/U6w/7dbdpvYq0nEa1vktnAGD5mxa+yM=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=taC0aVwyRiYEuMPn+9SJUWb5pMLCyOWcU0FWq31YFg6DQSwNyEU1ECLAJwx0bPyPm
 T0hBWF0PUFCcL3DWu2VUvp8L6JhwZ3zniSnGkzyh1aDa3taPg5HAWPirvQD1jgBW1c
 /lczS87YGKgQr9eZWTCkef7Ke2xcLeXQNjP6dI+8=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03SC6Mw1074982;
 Tue, 28 Apr 2020 07:06:23 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 28
 Apr 2020 07:06:22 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 28 Apr 2020 07:06:22 -0500
Received: from [10.250.234.195] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03SC6KcA067195;
 Tue, 28 Apr 2020 07:06:21 -0500
Subject: Re: [PATCH 1/2] mtd: spi-nor: Uniformize the return value in
 spi_nor_*_ready()
To: <Tudor.Ambarus@microchip.com>, <sergei.shtylyov@cogentembedded.com>
References: <20200421063129.244466-1-tudor.ambarus@microchip.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <38a730a2-2a16-6ed4-3203-31e1fbe8dd99@ti.com>
Date: Tue, 28 Apr 2020 17:36:19 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200421063129.244466-1-tudor.ambarus@microchip.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_050630_982939_7C4352BB 
X-CRM114-Status: GOOD (  15.85  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 21/04/20 12:01 pm, Tudor.Ambarus@microchip.com wrote:
> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> spi_nor_ready() returns 1 if ready, 0 if not ready and -errono on errors.

s/-errono/-errno

With that:

Reviewed-by: Vignesh Raghavendra <vigneshr@ti.com>

> Do the same in all the spi_nor_*_ready() children.
> 
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> ---
>  drivers/mtd/spi-nor/core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
> index cc68ea84318e..9dcc53bda8b0 100644
> --- a/drivers/mtd/spi-nor/core.c
> +++ b/drivers/mtd/spi-nor/core.c
> @@ -640,7 +640,7 @@ static int spi_nor_fsr_ready(struct spi_nor *nor)
>  		return -EIO;
>  	}
>  
> -	return nor->bouncebuf[0] & FSR_READY;
> +	return !!(nor->bouncebuf[0] & FSR_READY);
>  }
>  
>  /**
> 

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
