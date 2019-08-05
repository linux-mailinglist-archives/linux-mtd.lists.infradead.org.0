Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86CD781322
	for <lists+linux-mtd@lfdr.de>; Mon,  5 Aug 2019 09:27:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YMf6sv4gJJfVBcYAJsqFu6WDhR5z9TybMJve8pMJrfg=; b=caojr/SefaOaGy
	xBdZlzNCoF56+bT2kSkB1kOhk1TRDZJgympkKUeJ1hzYQbn0OR1liZP1GSc+QXrlot10xUBa2L5cM
	cQxzQ+IJWHOjXqA4CrjSj4R++lHywngh+/B1Tjl1Ll05C0rFAOQUW2f042qLo7aWs72NT1BKTYvlP
	+30jcw5Z4jIPf89EJKWwXWzbUX0NlXAFdoiQgJK4nY0NLJCk3sdBVA/54NNvxdPD9s1lxx1oczRkz
	UpwHzyiV5RmH0vpHPGAFfE2NKTBGyI1fP4NLZAsgOpHC3UjK+ZZ9lFZqyxogGRILX64wgn/x6gC1X
	+KokxSXeqUSHkR99TBVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huXOb-00009J-Jd; Mon, 05 Aug 2019 07:27:05 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huXOQ-00008n-S2
 for linux-mtd@lists.infradead.org; Mon, 05 Aug 2019 07:26:56 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x757QbJG095128;
 Mon, 5 Aug 2019 02:26:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1564989997;
 bh=uidjpdewfqTdZ5riSTkbMqc93TtOR+1gb9Qd4hk0vgY=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=f6HisGZKsNmeoV1HocrEiJg35w2RV+ih3ZCkUAYKnJLkInX7z0GFEwTLuQZj/VKJh
 m6+kcdxNAQo4Lt8l2t8wS2bMJXD3MtOGldsI0Q3twcOI0pjlSLIYQvrxQpoGodEa5c
 akcogifgJHDe+QQvRWmNiw0BXiie9jcYkGWBEH9Q=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x757QbPZ069705
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 5 Aug 2019 02:26:37 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 5 Aug
 2019 02:26:37 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 5 Aug 2019 02:26:37 -0500
Received: from [172.24.145.136] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x757QYBJ027450;
 Mon, 5 Aug 2019 02:26:35 -0500
Subject: Re: [PATCH] mtd: hyperbus: Kconfig: Fix HBMC_AM654 dependencies
To: Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger
 <richard@nod.at>
References: <20190719082912.10316-1-vigneshr@ti.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <ee11628f-46b7-bfd8-4b32-b87bc133f6d2@ti.com>
Date: Mon, 5 Aug 2019 12:57:18 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190719082912.10316-1-vigneshr@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_002654_985679_8F9F43C1 
X-CRM114-Status: GOOD (  17.68  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Randy Dunlap <rdunlap@infradead.org>, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org, Mao Wenan <maowenan@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 19/07/19 1:59 PM, Vignesh Raghavendra wrote:
> On x86_64, when CONFIG_OF is not disabled:
> 
> WARNING: unmet direct dependencies detected for MUX_MMIO
>   Depends on [n]: MULTIPLEXER [=y] && (OF [=n] || COMPILE_TEST [=n])
>   Selected by [y]:
>   - HBMC_AM654 [=y] && MTD [=y] && MTD_HYPERBUS [=y]
> 
> due to
> config HBMC_AM654
> 	tristate "HyperBus controller driver for AM65x SoC"
> 	select MULTIPLEXER
> 	select MUX_MMIO
> 
> Fix this by making HBMC_AM654 imply MUX_MMIO instead of select so
> that dependencies are taken care of. MUX_MMIO is optional for
> functioning of driver.
> 
> Fixes: b07079f1642c ("mtd: hyperbus: Add driver for TI's HyperBus memory controller")
> Reported-by: Randy Dunlap <rdunlap@infradead.org>
> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>> ---

Applied to mtd/fixes.

>  drivers/mtd/hyperbus/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/mtd/hyperbus/Kconfig b/drivers/mtd/hyperbus/Kconfig
> index cff6bbd226f5..1c691df8eff7 100644
> --- a/drivers/mtd/hyperbus/Kconfig
> +++ b/drivers/mtd/hyperbus/Kconfig
> @@ -15,7 +15,7 @@ if MTD_HYPERBUS
>  config HBMC_AM654
>  	tristate "HyperBus controller driver for AM65x SoC"
>  	select MULTIPLEXER
> -	select MUX_MMIO
> +	imply MUX_MMIO
>  	help
>  	 This is the driver for HyperBus controller on TI's AM65x and
>  	 other SoCs
> 

-- 
Regards
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
