Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 203FD6EF82
	for <lists+linux-mtd@lfdr.de>; Sat, 20 Jul 2019 15:46:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P6fK5D65UGz6aYwXUrDuWvL9FW7BG8E3BN6nodDSMYQ=; b=hKY/Ab4Xu4WGf1
	gXA5Xyrsyu4jInJeHnd+VMX1Vsvm2mFktGRjHloGCLN8ouYCubykevsjyFAB82Q39yc7h1X4h7IKd
	somgy2JDa6HR+rtle4At59uLlwP9+ZQEPSQytXW14HUYI+iSVbvBRA7i655KWEkwp9eokLpgrD3hR
	Lgw3yHy/bocUsBvAFBDGuutWjVF2s+DCWUpruhYk+aTAu+H4vV9P2ztTIxL8t/7CH/2y0LgVRln+p
	46SitED5DSb+lS+Hy+CpQOW4HWgC2TPuloYhTh0F8BghqrkkkT9NxC5BdukxCdu4cHlOjXTHqhUyG
	5y3Pgq3oJ54nhwvQNvPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hopgc-0000w0-Ad; Sat, 20 Jul 2019 13:46:06 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hopgM-0000vu-Gi
 for linux-mtd@bombadil.infradead.org; Sat, 20 Jul 2019 13:45:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RIOU5LAIILgInsLZKUJUGf35teEgUvYEPJttEJyAaQY=; b=hc2vn/K3NITr/qd1/BeBsZT89k
 zpOPsH5kbh9nphMRj0YhRabkG2m1KOYcLKyR3VLjEXzz5541Dbqq7VCmAmNGuhaxjQlb7Z4KMTjmB
 TVMtHk3ecngXCQITb+nv8IrZob3Q4piWDyvRQ8hmi/Y2d08pzOq9QgikWJskvrscwbo5VVFSGyv0v
 +mQPo3uZbr3Z+kTRfPEQys46PYqncVZSM7HXqbMdMsaAWJSfulRFirm35y6RWxJ59ovNr3Ojmzgi/
 0aMqZ+Q4OfkizaD2yOJH7YYBFGGmsOkTd+caVR3EgB0JyvZEewk5PIgcmdnFoNif3cYLEm2cWO3nS
 cXprQMaw==;
Received: from static-50-53-52-16.bvtn.or.frontiernet.net ([50.53.52.16]
 helo=[192.168.1.17])
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hopgF-00027k-Q9; Sat, 20 Jul 2019 13:45:44 +0000
Subject: Re: [PATCH] mtd: hyperbus: Kconfig: Fix HBMC_AM654 dependencies
To: Vignesh Raghavendra <vigneshr@ti.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>
References: <20190719082912.10316-1-vigneshr@ti.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <83175738-a41e-04e6-7be2-85213dfdc416@infradead.org>
Date: Sat, 20 Jul 2019 06:45:40 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190719082912.10316-1-vigneshr@ti.com>
Content-Language: en-US
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
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 Mao Wenan <maowenan@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 7/19/19 1:29 AM, Vignesh Raghavendra wrote:
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
> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>

Acked-by: Randy Dunlap <rdunlap@infradead.org> # build-tested

Thanks.

> ---
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
~Randy

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
