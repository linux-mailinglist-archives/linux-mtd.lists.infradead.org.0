Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D284959DD0
	for <lists+linux-mtd@lfdr.de>; Fri, 28 Jun 2019 16:33:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+7diDNuMDl4Xil5y93eD3LCz3QwGE4wZs7K3N7p8C7k=; b=dZeGcdo7y7o0Yw
	sTZtPPwNRSIO8F++UKVMYuyuR6a1i8nZY4U+1TL4+5Yxc9sg8d42aZuKOPgy2bH3F3WP7arpLJcok
	SjI4taXuHGGolbYD6StIg3bF/Gh+Nf1dT+mfCw8SXCVHf5DdQilisfyWoamvaISjhL7xw0WDDmGw7
	VjmDQb6MCW0HXGF9YLduu6dxuROvIMGwYqIUMo3Mhc9yKres/8gkXBHWN13Poj2zvizKTX9G3Wc18
	MVyp0ZdADvpFq3sHUaNvOCZ19Fv3guuN/Nie/Oz6hp6QjL8uThlgK8hcrTFC/1IBGxxaQZm2YKd94
	h2vW2tzpCZzMp01jnsyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgrvy-0001xS-S5; Fri, 28 Jun 2019 14:33:02 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgrvm-0001wW-RS
 for linux-mtd@lists.infradead.org; Fri, 28 Jun 2019 14:32:52 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5SEWOEs119507;
 Fri, 28 Jun 2019 09:32:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1561732344;
 bh=gbEQ2MAf5BreXjP6+h+dDk7mJOuxFlU+NRxCOXS9m7w=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=AkLnTHTtRg4KS+kVRvkLRmV+VhAQcDI3zp86HBbQpW8UjJ590rtHGC7jKKzjTaal7
 DRF9ndtHsDrV5uUNvWTUBE62BsKGq2H8oRPgO718IlsMcxkFKF/ZVU1CPkLIJEb5Mu
 Su9sVgyCRYrHgWUHWiKtx28wJIgDlBx9wojdY310=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5SEWOKn109975
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 28 Jun 2019 09:32:24 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 28
 Jun 2019 09:32:23 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 28 Jun 2019 09:32:23 -0500
Received: from [10.250.132.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5SEWK5h014844;
 Fri, 28 Jun 2019 09:32:21 -0500
Subject: Re: [PATCH] mtd: cfi_cmdset_0002: dynamically determine the max
 sectors
To: Chris Packham <chris.packham@alliedtelesis.co.nz>, <dwmw2@infradead.org>, 
 <computersforpeace@gmail.com>, <marek.vasut@gmail.com>,
 <miquel.raynal@bootlin.com>, <richard@nod.at>
References: <20190522000628.13073-1-chris.packham@alliedtelesis.co.nz>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <b4a2970f-40ff-3c6c-d408-4c19d5d502ad@ti.com>
Date: Fri, 28 Jun 2019 20:02:19 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190522000628.13073-1-chris.packham@alliedtelesis.co.nz>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_073251_032953_B1E08466 
X-CRM114-Status: GOOD (  18.02  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: sr@denx.de, linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi,

On 22-May-19 5:36 AM, Chris Packham wrote:
> Because PPB unlocking unlocks the whole chip cfi_ppb_unlock() needs to
> remember the locked status for each sector so it can re-lock the
> unaddressed sectors. Dynamically calculate the maximum number of sectors
> rather than using a hardcoded value that is too small for larger chips.
> 
> Tested with Spansion S29GL01GS11TFI flash device.
> 
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> ---

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git
branch mtd/next.

Regards
Vignesh

>  drivers/mtd/chips/cfi_cmdset_0002.c | 13 ++++++++-----
>  1 file changed, 8 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/mtd/chips/cfi_cmdset_0002.c b/drivers/mtd/chips/cfi_cmdset_0002.c
> index c8fa5906bdf9..a1a7d334aa82 100644
> --- a/drivers/mtd/chips/cfi_cmdset_0002.c
> +++ b/drivers/mtd/chips/cfi_cmdset_0002.c
> @@ -2533,8 +2533,6 @@ struct ppb_lock {
>  	int locked;
>  };
>  
> -#define MAX_SECTORS			512
> -
>  #define DO_XXLOCK_ONEBLOCK_LOCK		((void *)1)
>  #define DO_XXLOCK_ONEBLOCK_UNLOCK	((void *)2)
>  #define DO_XXLOCK_ONEBLOCK_GETLOCK	((void *)3)
> @@ -2633,6 +2631,7 @@ static int __maybe_unused cfi_ppb_unlock(struct mtd_info *mtd, loff_t ofs,
>  	int i;
>  	int sectors;
>  	int ret;
> +	int max_sectors;
>  
>  	/*
>  	 * PPB unlocking always unlocks all sectors of the flash chip.
> @@ -2640,7 +2639,11 @@ static int __maybe_unused cfi_ppb_unlock(struct mtd_info *mtd, loff_t ofs,
>  	 * first check the locking status of all sectors and save
>  	 * it for future use.
>  	 */
> -	sect = kcalloc(MAX_SECTORS, sizeof(struct ppb_lock), GFP_KERNEL);
> +	max_sectors = 0;
> +	for (i = 0; i < mtd->numeraseregions; i++)
> +		max_sectors += regions[i].numblocks;
> +
> +	sect = kcalloc(max_sectors, sizeof(struct ppb_lock), GFP_KERNEL);
>  	if (!sect)
>  		return -ENOMEM;
>  
> @@ -2689,9 +2692,9 @@ static int __maybe_unused cfi_ppb_unlock(struct mtd_info *mtd, loff_t ofs,
>  		}
>  
>  		sectors++;
> -		if (sectors >= MAX_SECTORS) {
> +		if (sectors >= max_sectors) {
>  			printk(KERN_ERR "Only %d sectors for PPB locking supported!\n",
> -			       MAX_SECTORS);
> +			       max_sectors);
>  			kfree(sect);
>  			return -EINVAL;
>  		}
> 

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
