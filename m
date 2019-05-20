Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6360D24310
	for <lists+linux-mtd@lfdr.de>; Mon, 20 May 2019 23:45:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5CAIUOdQJuTzrRRE6iTrtgld0gJKOdNqwY4ne3C9DrQ=; b=O45/tarrVxnubW
	2LMfZQ+e+ONNz2LAf8WPSCAWa9+OzCf6P4tPUcM4N8Nqd+5TgWHYGt8R7hGxJi+DN+/5o24Fnslny
	n9OrvzY0YlGNkoy5tp6CFQ0BDDSrZUokuoPtAAuHchrfLZP3jGd5jJGmjG30Ziyd1PIQpwgZ8e9Tv
	Ox3N3zgCOIaJA8bTmtXtMLCSeZMrUtSBB5p0yzw/x+BgxLsk7hTQ67j5gf+b74nK/u3cAVJVN4GlX
	dRMUq/gOrswV5YwTqWF0QcXwVbTi+cAGFxet8Lgcr/ycQ/gdPyRqM6UKX7kjPqjIh/GRAg1cqTK1j
	VeifL84WZYrqiRnqYBNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSq5p-00042d-0x; Mon, 20 May 2019 21:45:13 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSq5f-0003Bk-CD
 for linux-mtd@lists.infradead.org; Mon, 20 May 2019 21:45:05 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4KLidv2104510;
 Mon, 20 May 2019 16:44:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1558388679;
 bh=0mhihxUdtwx1KaImKx+59h6yR8wNHT4PalPkaJF1ArE=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=BvdmZ/u0fKiFzCYUkb1UbyMW/OAZMx5XKjwL+gRxOuCHOIWV3ZjIZK6NSsgfVvPer
 /NgwJMAKmAUoblS7XhDOBnynokyUt7Jnb2bLg6i/LK+H87D96NQUjnpDhjch03dImp
 B6FprZmz2ckSfUCFW7juOb6oblRk2db2cxFGx3nc=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4KLidk1071808
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 20 May 2019 16:44:39 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 20
 May 2019 16:44:38 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 20 May 2019 16:44:38 -0500
Received: from [172.24.190.89] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4KLiXHF116189;
 Mon, 20 May 2019 16:44:35 -0500
Subject: Re: [PATCH v5 00/11] mtd: cfi_cmdset_0002: Fix flash write issue for
 OpenWrt Project
To: Tokunori Ikegami <ikegami_to@yahoo.co.jp>, Boris Brezillon
 <bbrezillon@kernel.org>
References: <20190205140759.2360-1-ikegami_to@yahoo.co.jp>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <ce575536-c160-c7ef-e862-8345ae6c19fe@ti.com>
Date: Tue, 21 May 2019 03:15:24 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190205140759.2360-1-ikegami_to@yahoo.co.jp>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_144503_505256_7F2B56A6 
X-CRM114-Status: GOOD (  15.21  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
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

Hi,

On 05/02/19 7:37 PM, Tokunori Ikegami wrote:
> The change is based on the fix for flash erase to use chip_good() done in the past.
> And it is fixed as same way in the OpenWrt Project as below.
>   <https://git.openwrt.org/?p=openwrt/openwrt.git;a=commitdiff;h=ddc11c3932c7b7b7df7d5fbd48f207e77619eaa7>
> Also includes some refactoring changes.
> 

This series needs to be rebased on top of Liu Jian's fixes in master.
Please rebase and resend for review. Thanks!

> Signed-off-by: Tokunori Ikegami <ikegami_to@yahoo.co.jp>
> Cc: Fabio Bettoni <fbettoni@gmail.com>
> Co: Hauke Mehrtens <hauke@hauke-m.de>
> Co: Koen Vandeputte <koen.vandeputte@ncentric.com>
> Cc: Chris Packham <chris.packham@alliedtelesis.co.nz>
> Cc: Joakim Tjernlund <Joakim.Tjernlund@infinera.com>
> Cc: linux-mtd@lists.infradead.org
> 
> Tokunori Ikegami (11):
>   mtd: cfi_cmdset_0002: Use chip_good() to retry in do_write_oneword()
>   mtd: cfi_cmdset_0002: Remove chip_ready() from do_write_buffer()
>   mtd: cfi_cmdset_0002: Remove goto statement from do_write_buffer()
>   mtd: cfi_cmdset_0002: Call xip_enable() once only in
>     do_write_buffer().
>   mtd: cfi_cmdset_0002: Split do_write_oneword() to reduce function size
>   mtd: cfi_cmdset_0002: Split do_write_oneword() op_done goto statement
>   mtd: cfi_cmdset_0002: Remove op_done goto statement from
>     do_write_oneword()
>   mtd: cfi_cmdset_0002: Remove retry goto statement from
>     do_write_oneword()
>   mtd: cfi_cmdset_0002: Split write-to-buffer-reset sequence
>   mtd: cfi_cmdset_0002: Split to wait write buffer to check if completed
>   mtd: cfi_cmdset_0002: Split do_write_oneword() to reduce exit paths
> 
>  drivers/mtd/chips/cfi_cmdset_0002.c | 274 ++++++++++++++++++++++--------------
>  1 file changed, 168 insertions(+), 106 deletions(-)
>  mode change 100644 => 100755 drivers/mtd/chips/cfi_cmdset_0002.c
> 

-- 
Regards
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
