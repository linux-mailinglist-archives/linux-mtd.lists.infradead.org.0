Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E873A1F9351
	for <lists+linux-mtd@lfdr.de>; Mon, 15 Jun 2020 11:25:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h67zFu5vFCNf9TOO9XZyb5OTvbJ4c2121VevvxuDsdU=; b=fEoKxhXZiA9CUJ
	JUgefwDqKmvOjpgqMjZwGn3f6538rxbkzYbDxFId1s3VmTjMoJIaNr4eBZHic31dDVsogZ3xL0TIw
	07oilRlP8aKCAxWG+Dy46B5OJu+xpJCjqzgYPIcKQHpb8IPUukOtrD/E79VROEJEh18dCTxHwSjxj
	sL5MihWNDHUQzsMBiuFdbRUTal/+ok/jri9XTm6uVA2ESozbYs5XlJ881WXpiIoL/IGLep69TRPoU
	sT4/H4f0D4rq43mo3B6XCD7+lfTHbsrJFnj0r2jhaNLh/O+JqqnFTZWT70KTz4l9nPhb7D+hGWt1a
	oUfbqSwiHjs8+Ad9v+Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jklN1-00042j-NL; Mon, 15 Jun 2020 09:25:35 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jklGk-0002Xp-LC
 for linux-mtd@lists.infradead.org; Mon, 15 Jun 2020 09:19:09 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 903ECB74B1FA98706844;
 Mon, 15 Jun 2020 17:19:01 +0800 (CST)
Received: from [10.65.58.147] (10.65.58.147) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.487.0;
 Mon, 15 Jun 2020 17:18:51 +0800
Subject: Re: [RFC PATCH v2 0/2] Add support to Disable the flash quad mode
To: <tudor.ambarus@microchip.com>, <linux-mtd@lists.infradead.org>
References: <1589282819-42358-1-git-send-email-yangyicong@hisilicon.com>
From: Yicong Yang <yangyicong@hisilicon.com>
Message-ID: <1ea70e8c-3160-a80d-3b6d-512f57017840@hisilicon.com>
Date: Mon, 15 Jun 2020 17:19:00 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <1589282819-42358-1-git-send-email-yangyicong@hisilicon.com>
X-Originating-IP: [10.65.58.147]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_021906_883808_948CBDF1 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.191 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: vigneshr@ti.com, sergei.shtylyov@cogentembedded.com, richard@nod.at,
 me@yadavpratyush.com, john.garry@huawei.com, linuxarm@huawei.com,
 alexander.sverdlin@nokia.com, miquel.raynal@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

a friendly ping...
any comments on this?

Thanks.


On 2020/5/12 19:26, Yicong Yang wrote:
> Previously we didn't disable the flash's quad mode when it's removed
> Then comes the problem that if we next time load the flash
> in SPI/Dual mode, it will not be correctly enabled as the quad enable
> bits has not been cleared. I validated the condition on Cypress s25fs128s1.
>
> This series adds the capability to disable the flash's quad mode. And
> restore the flash when it's removed in spi_nor_restore().
>
> RFC:
> - I cleared quad mode bit in spi_nor_restore() when flash removed or
> shutdown, follow what reset 4byte address does. But I don't know if
> there is a situation that the flash is in quad mode by default. If so,
> we should disable it in probe stage.
> - The issue occurs when the user switch the spi mode of the flash.
> Not sure whether a situation exists.
>
> Changes since v1:
> - modify the comments and fix the condition suggested by Pratyush's.
> Link: https://lore.kernel.org/linux-mtd/1587720044-49172-1-git-send-email-yangyicong@hisilicon.com/
>
> Yicong Yang (2):
>   mtd: spi-nor: Add capability to disable flash quad mode
>   mtd: spi-nor: Disable the flash quad mode in spi_nor_restore()
>
>  drivers/mtd/spi-nor/core.c | 56 +++++++++++++++++++++++++++++++++-------------
>  drivers/mtd/spi-nor/core.h |  8 +++----
>  2 files changed, 44 insertions(+), 20 deletions(-)
>


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
