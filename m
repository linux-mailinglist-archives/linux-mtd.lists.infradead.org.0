Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 539EEB4646
	for <lists+linux-mtd@lfdr.de>; Tue, 17 Sep 2019 06:20:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fUjgx+ivvUvBM19BpEa9xkiiXc7D8fVMP3VBEyG/Alc=; b=NSBe/zNXRSpVuy
	lcYxZPEGpHF/ua4GEaP/KaoStXGTPksQVLdfsHyAcM82Zpq6d5UsZNyFzaF7/c9H90S/UXbPoUgN7
	eyu3HtH34fa+E54aH8MuNoazzNmFKtsL4Pm3pMdFj8iNL0rCtLbA6qHyF6YkdUeb6Diwl0jOQQEV9
	YVELVzVF5AyKn1xNuT+vG7PNULNNpqqfZCwboDEU9txEs4pghINW4LBbyT4n9M1YK6b6EzXjc7x1h
	f9VEqrx0MCQlxSkYTOGgVyvZJMM4u9iOAwZ37lT24z30Bu0ALMwJp0sfvU3jJwj37IKhDf65Kbb+f
	kibE2vYq7TZeXtBEt23g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA4ys-0001mN-Ct; Tue, 17 Sep 2019 04:20:46 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA4yY-0001lT-Ud
 for linux-mtd@lists.infradead.org; Tue, 17 Sep 2019 04:20:28 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8H4JvnH094997;
 Mon, 16 Sep 2019 23:19:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1568693997;
 bh=P73JMkJWeKEbpyGMWSEW8V4ubgvBo+oZqb8XLiEt0TI=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=sBF1eVTc5f4JQw6d9bOPt7tLE/VfrWmABQwAT8Bw1YE+LrOIWpvuvL1HR/Cz6BCP2
 DElAISdWsTHBNS08wA6NI0bQPPrSmZJGYsW6KbeeCp/SUzpnwy9iqVOY58vJFZGNkZ
 dj9YCZaX2VDvbiIxEHihQs7VWJLaKai/BcuB68UQ=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x8H4JvNW118025
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 16 Sep 2019 23:19:57 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 16
 Sep 2019 23:19:54 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 16 Sep 2019 23:19:57 -0500
Received: from [172.24.145.136] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8H4JsUK096972;
 Mon, 16 Sep 2019 23:19:55 -0500
Subject: Re: [PATCH v8 0/9] mtd: cfi_cmdset_0002: Fix flash write issue for
 OpenWrt Project
To: Tokunori Ikegami <ikegami.t@gmail.com>
References: <20190805190326.28772-1-ikegami.t@gmail.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <5e018d22-99ae-1155-bf64-105a912a20f5@ti.com>
Date: Tue, 17 Sep 2019 09:50:32 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190805190326.28772-1-ikegami.t@gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_212027_096584_6D929DF6 
X-CRM114-Status: GOOD (  13.42  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Joakim Tjernlund <Joakim.Tjernlund@infinera.com>,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linux-mtd@lists.infradead.org, Fabio Bettoni <fbettoni@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 06/08/19 12:33 AM, Tokunori Ikegami wrote:
> The change is based on the fix for flash erase to use chip_good() done in
> the past. And it is fixed as same way in the OpenWrt Project as below.
>  <https://git.openwrt.org/?p=openwrt/openwrt.git;a=commitdiff;h=ddc11c3932>
> Also includes some refactoring changes.
> 
> Signed-off-by: Tokunori Ikegami <ikegami.t@gmail.com>
> Cc: Fabio Bettoni <fbettoni@gmail.com>
> Co: Hauke Mehrtens <hauke@hauke-m.de>
> Cc: Chris Packham <chris.packham@alliedtelesis.co.nz>
> Cc: Joakim Tjernlund <Joakim.Tjernlund@infinera.com>
> Cc: linux-mtd@lists.infradead.org
> 
> Tokunori Ikegami (9):
>   mtd: cfi_cmdset_0002: Use chip_good() to retry in do_write_oneword()
>   mtd: cfi_cmdset_0002: Remove goto statement from do_write_buffer()
>   mtd: cfi_cmdset_0002: Split do_write_oneword() to reduce function size
>   mtd: cfi_cmdset_0002: Split do_write_oneword() op_done goto statement
>   mtd: cfi_cmdset_0002: Remove op_done goto statement from
>     do_write_oneword()
>   mtd: cfi_cmdset_0002: Split write-to-buffer-reset sequence
>   mtd: cfi_cmdset_0002: Split to wait write buffer to check if completed
>   mtd: cfi_cmdset_0002: Split do_write_oneword() to reduce exit paths
>   mtd: cfi_cmdset_0002: Disable write buffer functions if
>     FORCE_WORD_WRITE is 1
> 
>  drivers/mtd/chips/cfi_cmdset_0002.c | 296 ++++++++++++++++++++++--------------
>  1 file changed, 184 insertions(+), 112 deletions(-)
> 

Merged into git://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git mtd/next

Thanks!

-- 
Regards
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
