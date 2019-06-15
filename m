Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A364703C
	for <lists+linux-mtd@lfdr.de>; Sat, 15 Jun 2019 15:46:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ocklHJHxajS+OzGztBjwWTw/y0NO8EfdXaQ0VJLrHh4=; b=Z2XTeRZjAYlS3+
	WQbbXxJYukVbWyVRGG4T5dGkG4tCQ81jILRaGAmKhouFIMvb8XSmQhzpMcAI6Zezwa8VMBlonswdZ
	PxkOaeQ2ML+2ZF2+SjAAjHO+bflAC5tUdNlXl6eBuTU32pK+O0lMCL50nG3c+pu9xCFf56AswG5MB
	sS17TkcB/6kTm5vtDkGILTcuD02JBsi/+2hbL2g7jbQLQS2YOez9BrVZ1KC3oznpKrOrkGoO2PAxw
	Gr8N/rSHtwHRlnsikrHkIhjNZps00RjU/g+8lZYO0/5n+GIHIKjQZvv8uCejBNOl4Cqr45VDX2mre
	zHZxgCVBroGimHjEqvGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc90v-0001h1-Ti; Sat, 15 Jun 2019 13:46:37 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hc90m-0001gW-Vz
 for linux-mtd@lists.infradead.org; Sat, 15 Jun 2019 13:46:30 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5FDkNLo027375;
 Sat, 15 Jun 2019 08:46:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560606383;
 bh=zuUaNgb92y0ywys5dn49qZAfZcjKHqcER9k00CRIsD4=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=SjA/bfQUQWRPgjM4ydMviFdZA9axFl4NmXEECnUCdnCqMgrZsmr6z3V8ksa80ounQ
 8MEwkDWdy9sw85xbJQkhEjBxJCiF64A/xqSyg9aZximgLj0zcL3NRkixwlFiiac+sB
 FKTmiBxdJ6aQ5tPdqzsFA6wSS075t7W0K2fHng24=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5FDkNWr063300
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Sat, 15 Jun 2019 08:46:23 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Sat, 15
 Jun 2019 08:46:23 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Sat, 15 Jun 2019 08:46:23 -0500
Received: from [10.250.133.146] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5FDkKNg130013;
 Sat, 15 Jun 2019 08:46:21 -0500
Subject: Re: [PATCH v6 03/11] mtd: cfi_cmdset_0002: Call xip_enable() once
 only in do_write_buffer().
To: Tokunori Ikegami <ikegami.t@gmail.com>
References: <20190526153904.28871-1-ikegami.t@gmail.com>
 <20190526153904.28871-4-ikegami.t@gmail.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <906a78b6-547b-e882-3faf-9ebfc140af69@ti.com>
Date: Sat, 15 Jun 2019 19:16:20 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190526153904.28871-4-ikegami.t@gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_064629_107177_FED0810C 
X-CRM114-Status: GOOD (  17.52  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Joakim Tjernlund <Joakim.Tjernlund@infinera.com>,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linux-mtd@lists.infradead.org, Fabio Bettoni <fbettoni@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 26-May-19 9:08 PM, Tokunori Ikegami wrote:
> By the removed goto statement it can be called xip_enable() once.
> Also for a maintainability refactor it to call the function only once.
> 

Please squash this into previous patch.

Regards
Vignesh

> Signed-off-by: Tokunori Ikegami <ikegami.t@gmail.com>
> Cc: Fabio Bettoni <fbettoni@gmail.com>
> Co: Hauke Mehrtens <hauke@hauke-m.de>
> Co: Koen Vandeputte <koen.vandeputte@ncentric.com>
> Cc: Chris Packham <chris.packham@alliedtelesis.co.nz>
> Cc: Joakim Tjernlund <Joakim.Tjernlund@infinera.com>
> Cc: linux-mtd@lists.infradead.org
> ---
> Changes since v5:
> - Rebased on top of Liu Jian's fixes in master.
> - Change the email address of Tokunori Ikegami to ikegami.t@gmail.com.
> 
> Changes since v4:
> - None.
> 
> Changes since v3:
> - Just change the email address of Tokunori Ikegami to ikegami_to@yahoo.co.jp.
> 
> Changes since v2:
> - None.
> 
> Changes since v1:
> - Split from the patch v1 3/3.
> 
>  drivers/mtd/chips/cfi_cmdset_0002.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/mtd/chips/cfi_cmdset_0002.c b/drivers/mtd/chips/cfi_cmdset_0002.c
> index ca41f47c00c1..2654019ee24b 100755
> --- a/drivers/mtd/chips/cfi_cmdset_0002.c
> +++ b/drivers/mtd/chips/cfi_cmdset_0002.c
> @@ -1892,10 +1892,8 @@ static int __xipram do_write_buffer(struct map_info *map, struct flchip *chip,
>  			break;
>  		}
>  
> -		if (chip_good(map, adr, datum)) {
> -			xip_enable(map, chip, adr);
> +		if (chip_good(map, adr, datum))
>  			break;
> -		}
>  
>  		/* Latency issues. Drop the lock, wait a while and retry */
>  		UDELAY(map, chip, adr, 1);
> @@ -1916,13 +1914,14 @@ static int __xipram do_write_buffer(struct map_info *map, struct flchip *chip,
>  				 cfi->device_type, NULL);
>  		cfi_send_gen_cmd(0xF0, cfi->addr_unlock1, chip->start, map, cfi,
>  				 cfi->device_type, NULL);
> -		xip_enable(map, chip, adr);
>  		/* FIXME - should have reset delay before continuing */
>  
>  		printk(KERN_WARNING "MTD %s(): software timeout, address:0x%.8lx.\n",
>  		       __func__, adr);
>  	}
>  
> +	xip_enable(map, chip, adr);
> +
>  	chip->state = FL_READY;
>  	DISABLE_VPP(map);
>  	put_chip(map, chip, adr);
> 

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
