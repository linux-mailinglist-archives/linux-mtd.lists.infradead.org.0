Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3216CD88BB
	for <lists+linux-mtd@lfdr.de>; Wed, 16 Oct 2019 08:43:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B8usbx11eCNrNj7MrB57NA5IKwLcYX+8LkRQagzMxYs=; b=Yro59GtNrCmEsC
	oCicgRJlbr52uC90MUOymms4lLBe2szOKRXT4cLH/OrjtOOuww01UByftOhoF4LfJ4+7VGF7ttD62
	wT5k2GzRShHjnBwliRf9Jxg1N78KYPKM0ffeuI+E77Hc6YJS5JplUQXLgeksO0Qb4bGZ9o8Y0PE6A
	wJc6KX/aI3QU8rQPWtEAYlwAByBfZ2GS2xKmrQngvbMqoIAyxKRH7wKFh4mhVKowLmFR/uABcdfXc
	nrU898GUfWmXeg3CjSv0t5/5XbIJ+8m/8sGfB4CEG7FIclGCTwUNh4Dgy5t1ZQyZqyUo1JzW4GRSH
	tSkV0xSLyvbK+UTYWbSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKd27-0006qy-Am; Wed, 16 Oct 2019 06:43:43 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKd1w-0006qD-Qp
 for linux-mtd@lists.infradead.org; Wed, 16 Oct 2019 06:43:34 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 6DAC0FFD524B483FA4BD;
 Wed, 16 Oct 2019 14:43:19 +0800 (CST)
Received: from [127.0.0.1] (10.177.31.14) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.439.0; Wed, 16 Oct 2019
 14:43:18 +0800
Subject: Re: [PATCH] mtd: cfi_cmdset_0002: don't free cfi->cfiq in error path
 of cfi_amdstd_setup()
To: Vignesh Raghavendra <vigneshr@ti.com>
References: <20191008023637.133416-1-houtao1@huawei.com>
 <CAFLxGvyea-knZOz5K7uPNZLfCVkJRrO0+Cb7Xb4EaRa+gzTNDQ@mail.gmail.com>
 <c5fd14ba-c905-58e6-c253-9dedb1b53ad0@ti.com>
From: Hou Tao <houtao1@huawei.com>
Message-ID: <ea390a6d-12a0-7391-13a2-0caeae7656b5@huawei.com>
Date: Wed, 16 Oct 2019 14:43:16 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <c5fd14ba-c905-58e6-c253-9dedb1b53ad0@ti.com>
Content-Language: en-US
X-Originating-IP: [10.177.31.14]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_234333_039209_106238F2 
X-CRM114-Status: GOOD (  17.45  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: Richard Weinberger <richard.weinberger@gmail.com>,
 Richard Weinberger <richard@nod.at>, Marek
 Vasut <marek.vasut@gmail.com>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi,

On 2019/10/16 13:38, Vignesh Raghavendra wrote:
> Hi Hou,
> 
> On 16/10/19 1:17 AM, Richard Weinberger wrote:
>> On Tue, Oct 8, 2019 at 4:29 AM Hou Tao <houtao1@huawei.com> wrote:
>>>
>>> Else there may be a double-free problem, because cfi->cfiq will
>>> be freed by mtd_do_chip_probe() if both the two invocations of
>>> check_cmd_set() return failure.
>>>
>>> Also check cfi_intelext_setup() & cfi_staa_setup() to find out
>>> that cfi->cfiq is not freed as well in these functions.
>>
> 
> I guess you are trying to imply cfi_amdstd_setup() equivalents in
> cfi_cmdset_0001.c (cfi_intelext_setup()) and cfi_cmdset_0020.c
> (cfi_staa_setup()) dont't call kfree(cfi->cfiq). So cfi_amdstd_setup()
> should not be freeing that pointer either?
> 
No. The lines are used to illustrate the same mistake doesn't happen
in cfi_cmdset_0001 & 0020 instead of cfi_cmdstd_setup() needs to do
the same thing as others cmdset.

> This reference to other drivers in commit msg is quite confusing. My
> suggestion would be to drop above line.
>
It's OK for me if you drop these line.

> Let me know if that sound good. I will drop the it while applying.
> 
> 
Regards,
Tao

>> This sentence does not make sense to me.
>>
>>> Signed-off-by: Hou Tao <houtao1@huawei.com>
>>> ---
>>>  drivers/mtd/chips/cfi_cmdset_0002.c | 1 -
>>>  1 file changed, 1 deletion(-)
>>>
>>> diff --git a/drivers/mtd/chips/cfi_cmdset_0002.c b/drivers/mtd/chips/cfi_cmdset_0002.c
>>> index cf8c8be40a9c..7eaa4b523197 100644
>>> --- a/drivers/mtd/chips/cfi_cmdset_0002.c
>>> +++ b/drivers/mtd/chips/cfi_cmdset_0002.c
>>> @@ -785,7 +785,6 @@ static struct mtd_info *cfi_amdstd_setup(struct mtd_info *mtd)
>>>         kfree(mtd->eraseregions);
>>>         kfree(mtd);
>>>         kfree(cfi->cmdset_priv);
>>> -       kfree(cfi->cfiq);
>>>         return NULL;
>>>  }
>>
>> Other than that,
>> Reviewed-by: Richard Weinberger <richard@nod.at>
>>
> 


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
