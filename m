Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BBF596207
	for <lists+linux-mtd@lfdr.de>; Tue, 20 Aug 2019 16:10:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RdlWBfRhYc2ZgiJ32OwbXGxXxZIK5RiaKhAS9Ypt+JA=; b=X+xCduRkjK9RzFyISObymdFLt
	9E8Xho2TnLC4Xaz+gfDQFVP5TpHygO7dRZKHPI3B18H3yIYxn1rY6Gyf7LBxqPCBo00uO+CBLipFg
	fSvzbyrFEGbmnW2MZzLh/RTV62PNjy9uKOQqAOfI31EHn4xBi8wsngr0q9HvHC/qMvE54ml6X2vZu
	A3aHelaKVK4YrrSqMnsIhqOXBILDj3pZodhv0dut6WmNfTnp/uBYlYjQRP5iMZtT/yTthiv15NX+R
	bTw02E1U+IKsfQbSZf3xHPXdRG7unmkbueH2dNOFtiaYCX2vtYGgrv+0L54y2o7w03/i+0Xs++O1V
	c72GfOqEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i04pi-0000Jx-CF; Tue, 20 Aug 2019 14:09:58 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i04pN-0000Im-4g
 for linux-mtd@lists.infradead.org; Tue, 20 Aug 2019 14:09:39 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 8ED62CBA83DCFAA8EE97;
 Tue, 20 Aug 2019 22:09:29 +0800 (CST)
Received: from [127.0.0.1] (10.202.227.238) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.439.0;
 Tue, 20 Aug 2019 22:09:23 +0800
Subject: Re: [PATCH] docs: mtd: Update spi nor reference driver
To: Vignesh Raghavendra <vigneshr@ti.com>, Schrempf Frieder
 <frieder.schrempf@kontron.de>, "corbet@lwn.net" <corbet@lwn.net>,
 "mchehab+samsung@kernel.org" <mchehab+samsung@kernel.org>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>
References: <1565107583-68506-1-git-send-email-john.garry@huawei.com>
 <6c4bb892-6cf5-af46-3ace-b333fd47ef14@huawei.com>
 <9b074db7-b95d-a081-2fba-7b2b82997332@kontron.de>
 <ab2d3c29-982f-cb13-e2a2-e6d8da8f1438@huawei.com>
 <b2a475eb-58e6-e7c7-7b8f-b1be04cf27c0@ti.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <c5e063e8-5025-8206-f819-6ce5228ef0fb@huawei.com>
Date: Tue, 20 Aug 2019 15:09:15 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <b2a475eb-58e6-e7c7-7b8f-b1be04cf27c0@ti.com>
X-Originating-IP: [10.202.227.238]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_070938_255214_D7545F62 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "tudor.ambarus@microchip.com" <tudor.ambarus@microchip.com>,
 "richard@nod.at" <richard@nod.at>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "marek.vasut@gmail.com" <marek.vasut@gmail.com>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>,
 wanghuiqiang <wanghuiqiang@huawei.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 19/08/2019 05:39, Vignesh Raghavendra wrote:
> Hi,
>
> On 16/08/19 3:50 PM, John Garry wrote:
>> On 06/08/2019 17:40, Schrempf Frieder wrote:
> [...]
>>
>> Hi,
>>
>> Could someone kindly advise on the following:
>>

Hi Vignesh,

>> I am looking at ACPI support only for an mtd spi nor driver we're
>> targeting for mainline support.
>>
>
> If its a new driver, please add it under drivers/spi implementing SPI
> MEM framework.
> There are few drivers under drivers/spi that can be used as example.
> (Search for "spi_mem_ops"

Ok, fine. I note that in doing this I would still be using the spi nor 
framework indirectly through the m25p80 driver.

>> So for the host, I could use a proprietary HID in the DSDT for matching
>> in the kernel driver.
>>
>> About the child spi flash devices, is the recommendation to just use
>> PRP0001 HID and "jedec,spi-nor" compatible?
>>
>
> I am not quite familiar with ACPI systems, but child flash device should
> use "jedec,spi-nor" as compatible.

Right, so to use SPI MEM framework, it looks like I will have to use 
PRP0001 and "jedec,spi-nor" as compatible.

My reluctance in using PRP0001 and compatible "jedec,spi-nor" is how 
other OS can understand this.

All the best,
John

>
> Regards
> Vignesh
>
>> thanks,
>> John
>>
>>


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
