Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76DC61B8B91
	for <lists+linux-mtd@lfdr.de>; Sun, 26 Apr 2020 05:04:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sgwe9U2SHAyjzdTBQN5Xi+YqbA/jNGerOSJjzjNHd6k=; b=J7ss14H7vHWkx+
	g6tv8+OlvRsu7J2FGfw9zZE6QjNf1bJJJJjMLAMPN4z/dX0VL5zuUHfk+5rC1O3tNqe0JFOtu5E8a
	8ziIWTIDKJUh9DpoHNejQNO+fh9yMg1Lqcf5SS6WD3vjZg1dJNZ/Q62ufstt7AdakdBMC9uEFjsfM
	vbWHd1MCxqEFi2ylIhf0uT3g6o3qX82fmqxs0qlveJWazCqbMYLFNmnTUxi+uGX1pHoCpElrlW33D
	/BkooM36XvFXtmDRUldHXMA3l9ZNXW2ENADbM/ZSDoCJ9Cn45xrohPpUt+54ss6m/T57z6IkeDoZi
	Miq+v/MBCfwESQyp7O/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSXar-0005jq-K6; Sun, 26 Apr 2020 03:04:33 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSXah-0005iq-MO
 for linux-mtd@lists.infradead.org; Sun, 26 Apr 2020 03:04:25 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 640C2A2C525F7642F21E;
 Sun, 26 Apr 2020 11:04:16 +0800 (CST)
Received: from [10.65.58.147] (10.65.58.147) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.487.0;
 Sun, 26 Apr 2020 11:04:10 +0800
Subject: Re: [RFC PATCH 2/2] mtd: spi-nor: Disable the flash quad mode in
 spi_nor_restore()
To: Pratyush Yadav <me@yadavpratyush.com>
References: <1587720044-49172-1-git-send-email-yangyicong@hisilicon.com>
 <1587720044-49172-3-git-send-email-yangyicong@hisilicon.com>
 <20200424133552.oymmxczeyuak6wo7@yadavpratyush.com>
From: Yicong Yang <yangyicong@hisilicon.com>
Message-ID: <76c70029-054e-be97-b56b-333c51f5ed41@hisilicon.com>
Date: Sun, 26 Apr 2020 11:04:25 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <20200424133552.oymmxczeyuak6wo7@yadavpratyush.com>
X-Originating-IP: [10.65.58.147]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_200423_901451_AEF3D117 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: vigneshr@ti.com, sergei.shtylyov@cogentembedded.com,
 tudor.ambarus@microchip.com, richard@nod.at, john.garry@huawei.com,
 linuxarm@huawei.com, linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 alexander.sverdlin@nokia.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Pratyush,


On 2020/4/24 21:35, Pratyush Yadav wrote:
> Hi Yicong,
>
> On 24/04/20 05:20PM, Yicong Yang wrote:
>> If the flash's quad mode is enabled, it'll remain in the quad mode when
>> it's removed. If we drive the flash next time in SPI/Dual mode, then
>> problem occurs as the flash's quad enable bit is not cleared.
>>
>> Disable the quad mode in spi_nor_restore(), the flash will leave
>> quad mode when remove. This will make sure the flash always enter the
>> correct mode when loaded.
>>
>> Signed-off-by: Yicong Yang <yangyicong@hisilicon.com>
>> ---
>>  drivers/mtd/spi-nor/core.c | 5 +++++
>>  1 file changed, 5 insertions(+)
>>
>> diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
>> index d0516e8..611c0b7 100644
>> --- a/drivers/mtd/spi-nor/core.c
>> +++ b/drivers/mtd/spi-nor/core.c
>> @@ -3001,6 +3001,11 @@ void spi_nor_restore(struct spi_nor *nor)
>>  	if (nor->addr_width == 4 && !(nor->flags & SNOR_F_4B_OPCODES) &&
>>  	    nor->flags & SNOR_F_BROKEN_RESET)
>>  		nor->params->set_4byte_addr_mode(nor, false);
>> +
>> +	/* disable quad mode */
>> +	if (spi_nor_get_protocol_width(nor->read_proto) == 4 ||
>> +	    spi_nor_get_protocol_width(nor->write_proto) == 4)
>> +		nor->params->quad_enable(nor, false);
> If a flash doesn't have a quad enable function, this will lead to a NULL 
> pointer access. Please use spi_nor_quad_enable() instead.

Okay. My careless. Thanks for pointing it out.

Thanks,
Yicong


>
>>  }
>>  EXPORT_SYMBOL_GPL(spi_nor_restore);


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
