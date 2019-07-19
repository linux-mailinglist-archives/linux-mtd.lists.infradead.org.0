Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5F296E2FE
	for <lists+linux-mtd@lfdr.de>; Fri, 19 Jul 2019 10:58:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UOe7AIlaBe/JNh+VjtKyF8gaeR3HAbuKQVxwqAmZ9ZI=; b=Qk1aVKRNxgtKTW
	Q5W6aX+wFnvqnR50vhKUMpmEW0mWyzxqR7izG0JlaJajL9PndFxZw1v7xMSZIEZTq7NKyDlcG/yNC
	TWcuX3YVA0xGPyEW2zbidLuMNU6NXkQye7dzPVmTbCPvusjpabTyB/FZPEngZABXPauZooDglqzBF
	CzTNADldPfa7ODOC9HVjO+sWBOJQK4wRz8rV6i7f0UuqbOO9g1LnrinQ+I4Brmk3MA2TOUwf5ELLB
	mX/Ot6ARmuDeeaXQ/eBtSOcX+3HInDYDByJ4Q3M+SxRTsIU2zwrJfVaJVTxqx4VZXtQhJRmE+vNvn
	g3k0O/Bgw8ch7bXaRHDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoOiS-00059c-0h; Fri, 19 Jul 2019 08:58:12 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoOiF-000596-DZ
 for linux-mtd@lists.infradead.org; Fri, 19 Jul 2019 08:58:01 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6J8vdEj013636;
 Fri, 19 Jul 2019 03:57:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1563526659;
 bh=7X+kR445JFm1cYpnohKCnbuAIZMZuiFWVELpywmoSV0=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=A+mO3rlnNAl91B8Nq9UoSTvln9pWGTqdsXa5JfkOK3UjxPnPUq1RLJisCHSxeuTSQ
 ldVbeh8gYtrPICER+dmG97ryg1rNn54BogFQ+atZ9+OtbtNA21noNcS/y1+O2APNin
 hwcJ6Z7piMkN2cCFEiYVHbmufC+hAzQFtqsgoFpA=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6J8vdHm045399
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 19 Jul 2019 03:57:39 -0500
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 19
 Jul 2019 03:57:39 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 19 Jul 2019 03:57:38 -0500
Received: from [172.24.145.136] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6J8vZFd089409;
 Fri, 19 Jul 2019 03:57:36 -0500
Subject: Re: [PATCH -next] mtd: hyperbus: fix build error about CONFIG_REGMAP
To: Mao Wenan <maowenan@huawei.com>, <dwmw2@infradead.org>,
 <computersforpeace@gmail.com>, <marek.vasut@gmail.com>,
 <miquel.raynal@bootlin.com>, <richard@nod.at>
References: <20190719010703.63815-1-maowenan@huawei.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <a4c534c3-4105-08cd-874b-91d82f5a9199@ti.com>
Date: Fri, 19 Jul 2019 14:28:16 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190719010703.63815-1-maowenan@huawei.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_015759_540874_3F9A152B 
X-CRM114-Status: GOOD (  16.91  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-mtd@lists.infradead.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 19/07/19 6:37 AM, Mao Wenan wrote:
> When CONFIG_MUX_MMIO and CONFIG_HBMC_AM654 are both 'm', there are
> some building error as below:
> 
> drivers/mux/mmio.c: In function mux_mmio_probe:
> drivers/mux/mmio.c:76:20: error: storage size of field isnt known
>    struct reg_field field;
>                     ^~~~~
> drivers/mux/mmio.c:102:15: error: implicit declaration of function devm_regmap_field_alloc; did you mean devm_mux_chip_alloc? [-Werror=implicit-function-declaration]
>    fields[i] = devm_regmap_field_alloc(dev, regmap, field);
>                ^~~~~~~~~~~~~~~~~~~~~~~
>                devm_mux_chip_alloc
> drivers/mux/mmio.c:76:20: warning: unused variable field [-Wunused-variable]
>    struct reg_field field;
>                     ^~~~~
> cc1: some warnings being treated as errors
> make[2]: *** [drivers/mux/mmio.o] Error 1
> make[1]: *** [drivers/mux] Error 2
> make[1]: *** Waiting for unfinished jobs....
> make: *** [drivers] Error 2
> 
> This because CONFIG_REGMAP is not enable, so change the Kconfig for HBMC_AM654.

Since, hbmc-am654.c does not use regmap APIs directly we don't need to
select REGMAP here. MUX_MMIO is optional for this driver, therefore I
have converted that to an imply clause and posted a fix here:
https://patchwork.ozlabs.org/patch/1133946/

Let me know if that fixes the issue. Thanks for the report!

Regards
Vignesh

> 
> Fixes: b07079f1642c("mtd: hyperbus: Add driver for TI's HyperBus memory controller")
> 
> Signed-off-by: Mao Wenan <maowenan@huawei.com>
> ---
>  drivers/mtd/hyperbus/Kconfig | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/mtd/hyperbus/Kconfig b/drivers/mtd/hyperbus/Kconfig
> index cff6bbd..f324fa6 100644
> --- a/drivers/mtd/hyperbus/Kconfig
> +++ b/drivers/mtd/hyperbus/Kconfig
> @@ -14,6 +14,8 @@ if MTD_HYPERBUS
>  
>  config HBMC_AM654
>  	tristate "HyperBus controller driver for AM65x SoC"
> +	select OF
> +	select REGMAP
>  	select MULTIPLEXER
>  	select MUX_MMIO
>  	help
> 

-- 
Regards
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
