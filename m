Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B336245683
	for <lists+linux-mtd@lfdr.de>; Fri, 14 Jun 2019 09:39:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O970ZOUQafO3PoVCzuGRusupTH2ONaCkHsQVmPiMzrY=; b=Gqw2te1fehx64g
	guQ859grR94GlUPDC9uZjzFgrBCNqHIBunaXVtDxPmemu/Gwgh/08Gg/qN2qVC7O4MJdmbMnIuL8c
	0qefO72GZY0dEYcuyEMt6hfPhoP45D4JfAvNRi4nqLBcOoTJ3GTryh6gVSEJwJWAOwhB9kp2l/waQ
	j86XYzXumsKYUCAZEYDTZkqXMeZUgcHi7Tc7XjoYP+7Ra2KT6xmT0/LRYVQfDgZynOzmhX6Zy+FiO
	fcE9cq3agMieshdIJmkqN3PKEEiEV1s95Xsiqddhk6BHVSXdwUL3NI3Z6gxdxG8YUkMduFK3AQEcw
	FFFFQUK/Dc+00MCsHxvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbgo9-00043z-Vu; Fri, 14 Jun 2019 07:39:33 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbgny-000436-Bp
 for linux-mtd@lists.infradead.org; Fri, 14 Jun 2019 07:39:24 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5E7cn5Y055852;
 Fri, 14 Jun 2019 02:38:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560497929;
 bh=XUtGv9i9kBDE+ZCJi30XsOqMTXyvYkwzq8DviMjz+zI=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=CLau/FocdtepnaKW7TOtwKJtse9EitcdCONvaaKRRuneRloxuF2e3/SFS+fdbb1yc
 z0+xhXgitHRenRN6XhAFyJ5RyCO41grD2xZmIlnjWzp2hv12oO9AYbmq5jnha83gGd
 ISkeVwj0GBS0vcCPzcClrx3bdMFu8x8cMpi3dcTw=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5E7cnMo086540
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 14 Jun 2019 02:38:49 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 14
 Jun 2019 02:38:49 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 14 Jun 2019 02:38:49 -0500
Received: from [172.24.190.89] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5E7citB062587;
 Fri, 14 Jun 2019 02:38:45 -0500
Subject: Re: [PATCH] mtd: cfi_cmdset_0002: dynamically determine the max
 sectors
To: Chris Packham <Chris.Packham@alliedtelesis.co.nz>, "dwmw2@infradead.org"
 <dwmw2@infradead.org>, "computersforpeace@gmail.com"
 <computersforpeace@gmail.com>, "marek.vasut@gmail.com"
 <marek.vasut@gmail.com>, "miquel.raynal@bootlin.com"
 <miquel.raynal@bootlin.com>, "richard@nod.at" <richard@nod.at>
References: <20190522000628.13073-1-chris.packham@alliedtelesis.co.nz>
 <8e80d911f0dd4759b3edc72fb76530d6@svr-chch-ex1.atlnz.lc>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <8039faae-0ea3-fe85-ae2d-3e7853410a7d@ti.com>
Date: Fri, 14 Jun 2019 13:09:32 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <8e80d911f0dd4759b3edc72fb76530d6@svr-chch-ex1.atlnz.lc>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_003922_510313_159B8F1C 
X-CRM114-Status: GOOD (  17.52  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "sr@denx.de" <sr@denx.de>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



On 14/06/19 8:53 AM, Chris Packham wrote:
> Hi All,
> 
> I think this may have got lost in the change of maintainer for mtd.
> 

I do have this in my queue of patches for mtd/next and will forward to
Miquel once he is back.


> On 22/05/19 12:06 PM, Chris Packham wrote:
>> Because PPB unlocking unlocks the whole chip cfi_ppb_unlock() needs to
>> remember the locked status for each sector so it can re-lock the
>> unaddressed sectors. Dynamically calculate the maximum number of sectors
>> rather than using a hardcoded value that is too small for larger chips.
>>
>> Tested with Spansion S29GL01GS11TFI flash device.
>>
>> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>

Acked-by: Vignesh Raghavendra <vigneshr@ti.com>

Regards
Vignesh

>> ---
>>   drivers/mtd/chips/cfi_cmdset_0002.c | 13 ++++++++-----
>>   1 file changed, 8 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/mtd/chips/cfi_cmdset_0002.c b/drivers/mtd/chips/cfi_cmdset_0002.c
>> index c8fa5906bdf9..a1a7d334aa82 100644
>> --- a/drivers/mtd/chips/cfi_cmdset_0002.c
>> +++ b/drivers/mtd/chips/cfi_cmdset_0002.c
>> @@ -2533,8 +2533,6 @@ struct ppb_lock {
>>   	int locked;
>>   };
>>   
>> -#define MAX_SECTORS			512
>> -
>>   #define DO_XXLOCK_ONEBLOCK_LOCK		((void *)1)
>>   #define DO_XXLOCK_ONEBLOCK_UNLOCK	((void *)2)
>>   #define DO_XXLOCK_ONEBLOCK_GETLOCK	((void *)3)
>> @@ -2633,6 +2631,7 @@ static int __maybe_unused cfi_ppb_unlock(struct mtd_info *mtd, loff_t ofs,
>>   	int i;
>>   	int sectors;
>>   	int ret;
>> +	int max_sectors;
>>   
>>   	/*
>>   	 * PPB unlocking always unlocks all sectors of the flash chip.
>> @@ -2640,7 +2639,11 @@ static int __maybe_unused cfi_ppb_unlock(struct mtd_info *mtd, loff_t ofs,
>>   	 * first check the locking status of all sectors and save
>>   	 * it for future use.
>>   	 */
>> -	sect = kcalloc(MAX_SECTORS, sizeof(struct ppb_lock), GFP_KERNEL);
>> +	max_sectors = 0;
>> +	for (i = 0; i < mtd->numeraseregions; i++)
>> +		max_sectors += regions[i].numblocks;
>> +
>> +	sect = kcalloc(max_sectors, sizeof(struct ppb_lock), GFP_KERNEL);
>>   	if (!sect)
>>   		return -ENOMEM;
>>   
>> @@ -2689,9 +2692,9 @@ static int __maybe_unused cfi_ppb_unlock(struct mtd_info *mtd, loff_t ofs,
>>   		}
>>   
>>   		sectors++;
>> -		if (sectors >= MAX_SECTORS) {
>> +		if (sectors >= max_sectors) {
>>   			printk(KERN_ERR "Only %d sectors for PPB locking supported!\n",
>> -			       MAX_SECTORS);
>> +			       max_sectors);
>>   			kfree(sect);
>>   			return -EINVAL;
>>   		}
>>
> 

-- 
Regards
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
