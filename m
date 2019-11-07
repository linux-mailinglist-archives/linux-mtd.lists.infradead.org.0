Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7644FF2772
	for <lists+linux-mtd@lfdr.de>; Thu,  7 Nov 2019 06:58:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RtrQEIPok5R5EEzrCFtvKgkgXnLMa76cwLIe8bU+vew=; b=pPdLrELv7yeTXs
	3coabYLoxkwzLE1cC0YKppZf7lJDGfzQsWeJBdg++g42FeeP7SFzckT92VYa8tsYNyspmFcrCxvE9
	Scige8NsNLdXmUhKZsufhKxHUkTTTKOFp/T2k0Fq5KcfMwD6V6P0faP1LANAgMCDbLqv/26lc5H7f
	WUMlHMleBfK/2E49RTNKsoeK3+7OrDbqJj7fop2kms4pZNjKpG9hxpZNOlOp1Zdsrzq2KFw/F51LQ
	h+WJzMsuJR9xS0UvkuPpPs2MEQ1gJi8zfNtwH/dt6opNo7uPPXdLBooWJev0km6Df9n1I6ezP4m+K
	Ct+7PaK1naKQL1jKf+3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSaoZ-00061n-A1; Thu, 07 Nov 2019 05:58:39 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSaoO-00061K-PZ
 for linux-mtd@lists.infradead.org; Thu, 07 Nov 2019 05:58:30 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xA75wKIM089847;
 Wed, 6 Nov 2019 23:58:20 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573106300;
 bh=jtcXtrt/XDwk6BSUhAeIZP7HNrh+PkVsne/qDgcO6vE=;
 h=Subject:From:To:CC:References:Date:In-Reply-To;
 b=zKOvttBmaqGMMkWIvhdYDoMbOrJNqeCRTEY7h8d53PdNc4vNJyHrLqoGZrY4UYslz
 QH5BrwOqpaMQgMQ+vr2zYfp67G47/cmNesYMBwY/+mR+0rSwyWRA2k3QKd9UCKGfB7
 lVhAx93kY9/CmiTnmSafhEw9As3gBbkA/MEPYqe0=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xA75wKHh086371;
 Wed, 6 Nov 2019 23:58:20 -0600
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 6 Nov
 2019 23:58:04 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 6 Nov 2019 23:58:19 -0600
Received: from [172.24.145.136] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id xA75wGDW122702;
 Wed, 6 Nov 2019 23:58:17 -0600
Subject: Re: [PATCH v4 12/20] mtd: spi-nor: Print debug message when the read
 back test fails
From: Vignesh Raghavendra <vigneshr@ti.com>
To: <Tudor.Ambarus@microchip.com>, <boris.brezillon@collabora.com>
References: <20191102112316.20715-1-tudor.ambarus@microchip.com>
 <20191102112316.20715-13-tudor.ambarus@microchip.com>
 <9474c875-94a1-3d19-ddab-b90d352967a9@ti.com>
 <5abf94c6-f2bb-b317-4796-3f9ea1fbf55e@microchip.com>
 <ae91a133-590b-17a4-4a68-be1b8baccce9@ti.com>
Message-ID: <b54c6e97-079e-7ec6-7f25-a70c031fd4a6@ti.com>
Date: Thu, 7 Nov 2019 11:28:52 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <ae91a133-590b-17a4-4a68-be1b8baccce9@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_215828_913073_2E893E29 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: richard@nod.at, linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 miquel.raynal@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 06/11/19 1:09 PM, Vignesh Raghavendra wrote:
> 
> 
> On 06/11/19 12:54 PM, Tudor.Ambarus@microchip.com wrote:
>>
>>
>> On 11/05/2019 02:37 PM, Vignesh Raghavendra wrote:
>>> On 02/11/19 4:53 PM, Tudor.Ambarus@microchip.com wrote:
>>>> From: Tudor Ambarus <tudor.ambarus@microchip.com>
>>>>
>>>> Demystify where the EIO error occurs.
>>>>
>>>> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
>>>> ---
>>> I think this is a small enough change that can be squashed into previous
>>> patch itself
>>>
>>
>> I made separate patches because this is a separate logical change. The previous
>> patch extends the check on all bits of the Status Register, while this one
>> prints a debug message in case of EIO. Thus I tried to have a single logical
>> change contained in a single patch. I'm clearly no expert in this (Boris asked
>> me in v3 to split patches because I did too many things in one patch :) ), so I
>> would keep this as is, but if you still feel that it should be squashed, then
>> I'll do it. Please let me know.
>>
> 
> I am fine either way. I don't have a strong preference...
> 

If you want to keep these separate:

Reviewed-by: Vignesh Raghavendra <vigneshr@ti.com>

Regards
Vignesh


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
