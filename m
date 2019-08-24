Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6D419BE36
	for <lists+linux-mtd@lfdr.de>; Sat, 24 Aug 2019 16:15:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yVAkVCC0Ygc9FoU35bmgwo3/bOSK5TjdJEA/pb3xJm0=; b=pcnVY08ocxKX3E
	/NetSGrZECdElIEzakXJiuWBb3WeoSDPTMSfZjqT12WaVl5SrJLaDmaoQjXpJbQwYWYqvpaf8D1pj
	ejxIAK344LfwWV0rbOkla/31QZUsSbAHHw+GBwvv7w/f/RzNEfdCt0jZMEqIj/CaHjRXppMMf2nTV
	Gc7ws9kl1batU2c+knAHOcAo+z+VoXAYSW6oX2ML8rMndICN074BrvV+1ts82LKjzgplexbEfDxhi
	Y4UTZwoiQ2QoSRlbzk83SCsrzsGOuuZc09GnJ0qsbpAsOWtySkw8ygiDvt33vGDG4Jc5FVFxSQydq
	lpB+hI6mjeWgdoIqsSsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1WpY-0007bc-PS; Sat, 24 Aug 2019 14:15:49 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1WpF-0007az-OU
 for linux-mtd@lists.infradead.org; Sat, 24 Aug 2019 14:15:31 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7OEFESG089947;
 Sat, 24 Aug 2019 09:15:14 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566656114;
 bh=NWO1dJivia0EnGfMulUsccXLfXHlI53Biy5LNzeg6ps=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=JYmdfYFty6mcZvJcoI8mFdZ4BoWAFZ/cMMfkLhgm/v7RggkaRCwdg9IvG+r/6aCsj
 1LcA/WMMBixZ4AwkhhOAD/QL70xUghpmASasZwga99qnifeMj5FAKOkVVLYwHECHml
 vpiN+CnqofbexpCLdSQhQXh/L5qPrK+yvqrUyCYg=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7OEFEoW096395
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Sat, 24 Aug 2019 09:15:14 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Sat, 24
 Aug 2019 09:15:13 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Sat, 24 Aug 2019 09:15:14 -0500
Received: from [10.250.132.16] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7OEFBdw071127;
 Sat, 24 Aug 2019 09:15:12 -0500
Subject: Re: [PATCH] mtd: hyperbus: fix dependency and build error
To: Miquel Raynal <miquel.raynal@bootlin.com>, Randy Dunlap
 <rdunlap@infradead.org>
References: <9b1b4ab1-681f-0ef9-7b5c-b6545f7464d2@infradead.org>
 <20190824124807.393f125d@xps13>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <4626f8cb-0802-e154-d204-15d35081dd27@ti.com>
Date: Sat, 24 Aug 2019 19:45:11 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190824124807.393f125d@xps13>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_071529_882592_75794D81 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Geert Uytterhoeven <geert@linux-m68k.org>, linux-mtd@lists.infradead.org,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Miquel,

On 24-Aug-19 4:18 PM, Miquel Raynal wrote:
> Hi Vignesh,
> 
> Randy Dunlap <rdunlap@infradead.org> wrote on Tue, 13 Aug 2019 16:03:13
> -0700:
> 
>> From: Randy Dunlap <rdunlap@infradead.org>
>>
>> lib/devres.c, which implements devm_ioremap_resource(), is only built
>> when CONFIG_HAS_IOMEM is set/enabled, so MTD_HYPERBUS should depend
>> on HAS_IOMEM.  Fixes a build error and a Kconfig warning (as seen on
>> UML builds):
>>
>> WARNING: unmet direct dependencies detected for MTD_COMPLEX_MAPPINGS
>>   Depends on [n]: MTD [=m] && HAS_IOMEM [=n]
>>   Selected by [m]:
>>   - MTD_HYPERBUS [=m] && MTD [=m]
>>
>> ERROR: "devm_ioremap_resource" [drivers/mtd/hyperbus/hyperbus-core.ko] undefined!
>>
>> Fixes: dcc7d3446a0f ("mtd: Add support for HyperBus memory devices")
>> Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
>> Cc: Vignesh Raghavendra <vigneshr@ti.com>
>> Cc: Miquel Raynal <miquel.raynal@bootlin.com>
>> Cc: Geert Uytterhoeven <geert@linux-m68k.org>
>> Cc: linux-mtd@lists.infradead.org
>> ---
> 
> This patch looks like a good candidate for fixes, shall I send a fixes
> PR next week with it? (Acked-by wished)
> 

Yes, that would be great. I was about to send across patch bundle myself.

Acked-by: Vignesh Raghavendra <vigneshr@ti.com>

Thanks
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
