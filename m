Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 587D2D8B74
	for <lists+linux-mtd@lfdr.de>; Wed, 16 Oct 2019 10:41:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xo0D3agaJwGdaZnz4zdMRMcVWxGl24YC+DbgmXqtupw=; b=JW7u5/H+OsqhQ2
	UsAnemW+aNEpedfHoNoz3WjZgdMWQnRV3Itbq+0V/lVlzNtAeigAKv3T76+4pEvLV7QMXvEkPpxiu
	MgPQed+9EfhT4Im34Ln1xBz3g+QGfgTtFV1FH/WWm++3I36vgdOjiWjlw3cyVIvifiSN3wAYbDpAT
	FJ+T3c2f+hHwCLUXUnmrSEoE/XlbLuYTcezFo1R4MHo0AunQzwyA25Rt22Sw1f3/4JAqWz574ukDv
	ETDBxn9VFpKzTVT0TChkD8Eu653mn/VnifA3CMHt5I1MPJmXOFKrA9hReeDa8afyn7ypI711KphpB
	xXlmT1WG2ZTv51R5aD3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKesN-0008PZ-1X; Wed, 16 Oct 2019 08:41:47 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKesA-0008OX-KV
 for linux-mtd@lists.infradead.org; Wed, 16 Oct 2019 08:41:36 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x9G8fQnT054935;
 Wed, 16 Oct 2019 03:41:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1571215286;
 bh=aSRpuLVp5PoC9Dq+98yBbK/K+q52Oq+i7oGbPusjzIs=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=IupuLxn5B/Ry75qSBUOS3YhHXhxCLYq3BDscxUdS3jqm0CZCiVGKerYAz8fpodgG8
 3y3O6VcA4ZrtQJ5yTDsOoYyaSA3wCSscjPy+QcMqaRSp7EV1xegxyWgLmvXGYMF/IZ
 kSa/0XSjoUbWrxXzW+jHaIzsbKzJVVHSAAz/vnqg=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9G8fQ1e101268;
 Wed, 16 Oct 2019 03:41:26 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 16
 Oct 2019 03:41:25 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 16 Oct 2019 03:41:19 -0500
Received: from [172.24.145.136] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9G8fLCx117756;
 Wed, 16 Oct 2019 03:41:22 -0500
Subject: Re: [PATCH] Fix reading support of the 1-4-4-DTR read-mode from the
 wrong bit of the SFDP table which is part of the linux-imx fork located in
 the following repo:
 https://source.codeaurora.org/external/imx/linux-imx/?h=imx_4.14.98_2.1.0
To: Christoph Fink <christoph.fink@omicron-lab.com>
References: <1568184843-11300-1-git-send-email-christoph.fink@omicron-lab.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <2c950e5b-bf77-b2a8-d7ee-6c669948b68f@ti.com>
Date: Wed, 16 Oct 2019 14:11:51 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1568184843-11300-1-git-send-email-christoph.fink@omicron-lab.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_014134_753650_9AE64ADA 
X-CRM114-Status: GOOD (  19.73  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Boris Brezillon <boris.brezillon@free-electrons.com>,
 Marek Vasut <marek.vasut@gmail.com>, Richard Weinberger <richard@nod.at>,
 linux-kernel@vger.kernel.org, Christoph Fink <fink.christoph@gmail.com>,
 linux-mtd@lists.infradead.org, Cyrille Pitchen <cyrille.pitchen@wedev4u.fr>,
 Han Xu <han.xu@nxp.com>, Brian Norris <computersforpeace@gmail.com>,
 Huang Shijie <shijie8@gmail.com>, David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 11/09/19 12:24 PM, Christoph Fink wrote:
> From: Christoph Fink <fink.christoph@gmail.com>
> 

This patch is not against mainline kernel. There is no support for DTR
mode in kernel yet. Below hunk is not even present in the spi-nor.c.

For future submissions:
Subject line should be one line summary of the patch starting with
prefix "mtd: spi-nor:" (hint: run git log on file to know the format)
and commit message should have detailed description of the patch

Regards
Vignesh


> Signed-off-by: Christoph Fink <fink.christoph@gmail.com>
> ---
>  drivers/mtd/spi-nor/spi-nor.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index 8cc4b04..7fd52fa 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -2089,7 +2089,7 @@ static const struct sfdp_bfpt_read sfdp_bfpt_reads[] = {
>  	/* Fast Read 1-4-4-DTR */
>  	{
>  		SNOR_HWCAPS_READ_1_4_4_DTR,
> -		BFPT_DWORD(1), BIT(21),	/* Supported bit */
> +		BFPT_DWORD(1), BIT(19),	/* Supported bit */
>  		BFPT_DWORD(3), 0,	/* Settings */
>  		SNOR_PROTO_1_4_4_DTR,
>  	},
> 

-- 
Regards
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
