Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DBE11B1CC4
	for <lists+linux-mtd@lfdr.de>; Tue, 21 Apr 2020 05:27:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y+wuzLmbdSesQt/Xe4WudjKz9MOV1mb8v1TN0735Bc0=; b=ixf4yb5SJE1FIH
	dvg6t1MzjqNeanQ/Q4btQPGmpNrhbWbii4bfxHoFMyas4Cm3nqbNfHGMpyNBgQWtut4PC/n6LtU90
	oW3WEzW4Dyka2lFjtcqz1itAccM0ERLUR68o+oKfMYbbbYtZ1ugIueKvLoUEMa2TmElp0VC2UrAI1
	2b5prcKU2yuDeO/ETl4BV4bIuR0nAotx9qUpS/QacUiMhzhx0ZzMbyvVfT+ywIXbmsKaK4OVdWT5O
	oXxP1z75vz/4BZEfWPI5AbTzNeVGh+EvqXypTGXYN67bvG0LKkBJMHuXRzDdeIQdOgoW/T7muvxyZ
	1G9EnOfPzEKio2rKWWyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQjYv-0000XN-BF; Tue, 21 Apr 2020 03:27:05 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQjYl-0000Wc-0Y
 for linux-mtd@lists.infradead.org; Tue, 21 Apr 2020 03:26:56 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 1294AF1EF88B3019FE46;
 Tue, 21 Apr 2020 11:26:46 +0800 (CST)
Received: from [10.65.58.147] (10.65.58.147) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.487.0;
 Tue, 21 Apr 2020 11:26:35 +0800
Subject: Re: [PATCH v2] mtd: spi-nor: Add support for s25fs128s
To: <Tudor.Ambarus@microchip.com>
References: <1586939433-20861-1-git-send-email-yangyicong@hisilicon.com>
 <3664588.JgWbhVaYgF@192.168.0.120>
From: Yicong Yang <yangyicong@hisilicon.com>
Message-ID: <ef9d5f4f-de37-13e0-3323-65e276f696e3@hisilicon.com>
Date: Tue, 21 Apr 2020 11:27:01 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <3664588.JgWbhVaYgF@192.168.0.120>
X-Originating-IP: [10.65.58.147]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_202655_214729_5EE5DE06 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: richard@nod.at, linux-mtd@lists.infradead.org, vigneshr@ti.com,
 linuxarm@huawei.com, miquel.raynal@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Tudor,


On 2020/4/20 18:18, Tudor.Ambarus@microchip.com wrote:
> On Wednesday, April 15, 2020 11:30:33 AM EEST Yicong Yang wrote:
>> EXTERNAL EMAIL: Do not click links or open attachments unless you know the
>> content is safe
>>
>> Add support for Cypress s25fs128s flash. Previously the flash is
>> decoded as s25fl129p1 by mistake.
>>
>> Add it in the flash info list to correctly decode. No functional
>> changes. Further capability of the flash will be parsed from bfpt.
>>
>> Signed-off-by: Yicong Yang <yangyicong@hisilicon.com>
>> ---
>> Change since v1:
>> - rebase the patch on v5.7 rc1
>>
>>  drivers/mtd/spi-nor/spansion.c | 2 ++
>>  1 file changed, 2 insertions(+)
>>
>> diff --git a/drivers/mtd/spi-nor/spansion.c b/drivers/mtd/spi-nor/spansion.c
>> index 6756202..01640c1 100644
>> --- a/drivers/mtd/spi-nor/spansion.c
>> +++ b/drivers/mtd/spi-nor/spansion.c
>> @@ -29,6 +29,8 @@ static const struct flash_info spansion_parts[] = {
>>         { "s25fl512s",  INFO6(0x010220, 0x4d0080, 256 * 1024, 256,
>>                               SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
>>                               SPI_NOR_HAS_LOCK | USE_CLSR) },
>> +       { "s25fs128s",  INFO6(0x012018, 0x4d0181, 64 * 1024, 256,
>> +               SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ | USE_CLSR) },
> The flash should be named "s25fs128s1" - this would be the flavor with uniform 
> 64kB sectors. One should add a "s25fs128s0" entry for the flavor with uniform 
> 256kB sectors.

Yes, it's right. I'll correct it in next version.


>
> We usually don't add new flashes if they are not tested. Please specify in the 
> commit message with which controller you tested the flash. The minimal test is 
> a read, erase, read back, write and read back. This sequence should verify if 
> read, erase and pp work fine.

Sorry for that. I'll mentioned the tests I've done in next version.

I've tested in SPI/Dual/Quad mode with our hisi-sfc-v3xx controller.
All the operations work well, but something wrong with Quad read and I'm managing to
figure it out.

Regards,
Yicong


>
> Cheers,
> ta
>
>


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
