Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D72CBEE8
	for <lists+linux-mtd@lfdr.de>; Fri,  4 Oct 2019 17:18:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6dGwPzEvQHhMTqkj7//bda1/s5qqREaFmX1kIgaSaPA=; b=dyUPuvZzTLgTsAG39Du/X9S24
	OC3f9Kry7dcl8UrZ9VpG8LsCqv0FtwU8zCWUwv0MBCB3Ldyq1PlhY1jAWR+r+ripPDxzJwgmL6fzz
	KmiqCUtHz1PRT2VHYaczl3XvXcYrK+iPgR35JFIstp16cbHYwP31fpNevNABl4CrVT3BZvSaYybwa
	wtpjRd+RsgopXjmm5/6z4IjLeUJzSvAo7N/GybRYP8OQoYwov/DlgJOfIFO0EPbJE3fbD5y6zIokH
	DkSCsIPmxZnQwY+NZ/iq3O5g3RtXOfZFpk4Nx9qggRpWr/q9ChvJGF3ZguU8BHzBKrsSfO+HmM2dk
	mTCaFE4nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGPLI-0000qZ-2S; Fri, 04 Oct 2019 15:18:04 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGPL7-0000ob-4r
 for linux-mtd@lists.infradead.org; Fri, 04 Oct 2019 15:17:54 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id CBC177038409EE3651A3;
 Fri,  4 Oct 2019 23:17:46 +0800 (CST)
Received: from [127.0.0.1] (10.202.227.179) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.439.0;
 Fri, 4 Oct 2019 23:17:42 +0800
Subject: Re: [PATCH] mtd: spi-nor: Fix direction of the write_sr() transfer
To: <Tudor.Ambarus@microchip.com>, <vigneshr@ti.com>,
 <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <linux-mtd@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <c703dec2-dd11-5898-83ad-fb06127b6575@huawei.com>
 <20191004104746.23537-1-tudor.ambarus@microchip.com>
 <9156860e-d257-bee6-fac8-a1821e4b5bf2@microchip.com>
 <60f0c52f-1301-57eb-59ba-b2893107d5d6@huawei.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <6eecffe2-539f-f1a1-2008-3877c5f5c3ef@huawei.com>
Date: Fri, 4 Oct 2019 16:17:38 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <60f0c52f-1301-57eb-59ba-b2893107d5d6@huawei.com>
X-Originating-IP: [10.202.227.179]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_081753_359562_9F9D5F49 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 04/10/2019 12:31, John Garry wrote:
> On 04/10/2019 11:48, Tudor.Ambarus@microchip.com wrote:
>> John, does this fix your problem?
>
> It fixes the problem in the flash_lock -u command no longer errors like
> this:
> root@ubuntu:/home/john# sudo flash_lock -u /dev/mtd0
> flash_lock: error!: could not unlock device: /dev/mtd0
>
> However, with this change, even when the flash is unlocked I cannot
> write, so there is something else wrong. It's probably a bug in my
> under-development driver. I'm looking at it now.

Just to confirm, I tested an earlier HW version with my driver and flash 
lock/unlock function is ok. There seems something wrong with the latest 
HW version which I need to understand.

Anyway:
Tested-by: John Garry <john.garry@huawei.com>

Thanks,
John

>
>>
>> On 10/04/2019 01:47 PM, Tudor Ambarus - M18064 wrote:
>>> From: Tudor Ambarus <tudor.ambarus@microchip.com>
>>>
>>> write_sr() sends data to the SPI memory, fix the direction.
>>>
>>> Fixes: b35b9a10362d ("mtd: spi-nor: Move m25p80 code in spi-nor.c")
>>> Reported-by: John Garry <john.garry@huawei.com>
>>> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
>>> ---
>>>  drivers/mtd/spi-nor/spi-nor.c | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/mtd/spi-nor/spi-nor.c
>>> b/drivers/mtd/spi-nor/spi-nor.c
>>> index 1d8621d43160..7acf4a93b592 100644
>>> --- a/drivers/mtd/spi-nor/spi-nor.c
>>> +++ b/drivers/mtd/spi-nor/spi-nor.c
>>> @@ -487,7 +487,7 @@ static int write_sr(struct spi_nor *nor, u8 val)
>>>              SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_WRSR, 1),
>>>                     SPI_MEM_OP_NO_ADDR,
>>>                     SPI_MEM_OP_NO_DUMMY,
>>> -                   SPI_MEM_OP_DATA_IN(1, nor->bouncebuf, 1));
>>> +                   SPI_MEM_OP_DATA_OUT(1, nor->bouncebuf, 1));
>>>
>>>          return spi_mem_exec_op(nor->spimem, &op);
>>>      }
>>>
>



______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
