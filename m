Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 394BA1507D2
	for <lists+linux-mtd@lfdr.de>; Mon,  3 Feb 2020 14:56:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AzBoKXqu4KJuVS2LLmFX+9+sbjh9MfSNMGh6vA5z/BE=; b=Bp5jT/EJK7dKif
	xWagzJkJeLKgGUxDr4macRlpPqfdCVrJIZXpZKdFez4GQPhi6OtAFKc+3A8AAshhjbbAw5XsLN6xA
	UAwskPmec/xMwvLhJz9L77Naos7NFBz7svakH730OmzjpjR+n7A24+226/m4y+pn+3CSXWuroF/oU
	yynPn35EDE1h5J0OXknDvly0uwjzxmaJCsf7FMv5sLRWfZvXL61UpSCxB0s2+GGvShkMdF7dFmmuo
	MZktAILVm16KFkY6iSv4jP58GVfsF2VdzHf0GscUNSH6Ezvot9pkZGd+f5a9ywzqaKA1kGoKNs8oJ
	rkWEgZfs8VCE6aBZo7cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iycDK-0007HI-3c; Mon, 03 Feb 2020 13:56:34 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iycD9-0007Gk-SI
 for linux-mtd@lists.infradead.org; Mon, 03 Feb 2020 13:56:26 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 013DuMO1041081;
 Mon, 3 Feb 2020 07:56:22 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1580738182;
 bh=1TqDFtj5YkdLxZSSYFoLgg8q5hMv4LZzpIu4JXo59pQ=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Aiu1hp4obj/dfqMqXrTnfIY6AN1ZrRTh+ZXYmwZGwoGPKNlsTMBjC0bak+5sV8rz6
 yxP/MiKsXE2DDCyvLWXsZW7dC4btOfrhJVu4QJB0xplFi0ebB+h57G+4+wj9p0ZTkj
 fl6SGnl2f4JIN23/XIYEiHeGSq7uFtreF5U945Ks=
Received: from DFLE111.ent.ti.com (dfle111.ent.ti.com [10.64.6.32])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 013DuMwa011614
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 3 Feb 2020 07:56:22 -0600
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 3 Feb
 2020 07:56:21 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 3 Feb 2020 07:56:21 -0600
Received: from [172.24.145.136] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 013DuJrd112830;
 Mon, 3 Feb 2020 07:56:20 -0600
Subject: Re: [PATCH v3 2/3] mtd: spi-nor: add 4bit block protection support
To: Jungseung Lee <js07.lee@samsung.com>, Michael Walle <michael@walle.cc>
References: <20200113055907.9029-2-js07.lee@samsung.com>
 <CGME20200122193640epcas1p2e8df0b73bdf6c6389709148702082aef@epcas1p2.samsung.com>
 <20200122193608.3859-1-michael@walle.cc>
 <0c4e70fcf58c93f9b7375d83b50028df225aed82.camel@samsung.com>
 <f4581c4cb231cc4c61b9a146dda5fada@walle.cc>
 <7843bb76c9c3854a4b9fa4b2b69d760e965bbb22.camel@samsung.com>
 <0882ce3e8cf9de25681b475f10154cef@walle.cc>
 <4fd7374e9362895b5c80d7bfe8a05c6552572243.camel@samsung.com>
 <2e02aaef6289f24f672f84eadb28f31a@walle.cc>
 <141fe5bf27542420292864bf2d574a8c94dc6867.camel@samsung.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <687e49cb-96d0-464f-0bc2-4537780e9731@ti.com>
Date: Mon, 3 Feb 2020 19:26:58 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <141fe5bf27542420292864bf2d574a8c94dc6867.camel@samsung.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_055624_023092_5536642F 
X-CRM114-Status: GOOD (  36.08  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 URIBL_DBL_ABUSE_MALW   Contains an abused malware URL listed in
 the Spamhaus DBL blocklist [URIs: infradead.org]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: tudor.ambarus@microchip.com, linux-mtd@lists.infradead.org,
 js07.lee@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Michael,

On 30/01/20 1:47 pm, Jungseung Lee wrote:
[...]

>>>>>>>>>  	/*
>>>>>>>>>  	 * Need smallest pow such that:
>>>>>>>>>  	 *
>>>>>>>>> @@ -1908,7 +1972,17 @@ static int stm_lock(struct
>>>>>>>>> spi_nor
>>>>>>>>> *nor,
>>>>>>>>> loff_t ofs, uint64_t len)
>>>>>>>>>  	 *   pow = ceil(log2(size / len)) = log2(size)
>>>>>>>>> -
>>>>>>>>> floor(log2(len))
>>>>>>>>>  	 */
>>>>>>>>>  	pow = ilog2(mtd->size) - ilog2(lock_len);
>>>>>>>>> -	val = mask - (pow << SR_BP_SHIFT);
>>>>>>>>> +
>>>>>>>>> +	if (nor->flags & SNOR_F_HAS_SR_BP3) {
>>>>>>>>> +		val = ilog2(nor->n_sectors) + 1 - pow;
>>>>>>>>
>>>>>>>> Why do you use a new calculation here? As far as I can
>>>>>>>> see,
>>>>>>>> the
>>>>>>>> method is
>>>>>>>> the same except that is has one bit more. That also
>>>>>>>> raises
>>>>>>>> the
>>>>>>>> question why
>>>>>>>> n_sectors is now needed?
>>>>>>>>

Flash devices have variable sector size, 64KB, 128KB or 256KB... While
mapping of number of sectors locked to BP bits is dependent on rules 1
to 3 you mentioned below, the size or area of flash protected depends on
sector size.

So, the current formula in spi-nor.c (ignoring TB and other boilerplate):

pow = ilog2(mtd->size) - ilog2(lock_len);
val = mask - (pow << shift);

This works only for devices with 64KB sector size as 8MB flash with 64KB
sector size would have 128 sectors (BP0-2 => 0b111 => 2^7).

A more generic formula would be:

Find n where 2^(n - 1) = len/sector-size
OR 2^ (n - 1) = len * n_sectors / mtd->size

Which solves to:

pow = ilog2(mtd->size) - ilog2(lock_len);
val = ilog2(nor->n_sectors) + 1 - pow;

I see this is what Jungseung has tried to implement here.  Please
correct me if I got this wrong.

This, combined with point (3) below should provide a generic
implementation that should support a wide variety of flashes.

Of course, there are always exceptions and they need to be handled using
custom hooks.

I don't have the patch that you shared with Jungseung. I would greatly
appreciate, if you and Jungseung could work on patch with above logic as
well as fixes to handle overflow case?

Thanks a lot Jungseung and Michael for your efforts!

Regards
Vignesh

>>>>>>>> Can't we just initialize the mask with
>>>>>>>>
>>>>>>>> mask = SR_BP2 | SR_BP1 | SR_BP0;
>>>>>>>> if (nor->flags & SNOR_F_HAS_SR_BP3)
>>>>>>>>     mask |= SR_BP3_BIT5;
>>>>>>>>
>>>>>>>> do the calculation and checks and then move the
>>>>>>>> SR_BP3_BIT5
>>>>>>>> to
>>>>>>>> SR_BP3_BIT6
>>>>>>>> if SNOR_F_HAS_SR_BP3_BIT6 is set.
>>>>>>>>
>>>>>>>
>>>>>>> For most of flashes that supporting BP0-2, the smallest
>>>>>>> protected
>>>>>>> portion is fixed as 1/64
>>>>>>> and it can be properly handled by existing
>>>>>>> calculation. (Actually it's not fully generic, see flashes
>>>>>>> like
>>>>>>> w25q40bw or m25p80. Of course, it doesn't have
>>>>>>> SPI_NOR_HAS_LOCK
>>>>>>> flag
>>>>>>> even though it has BP0-2 bit in SR)
>>>>>>
>>>>>> No. The rules are always the same wether there are three or
>>>>>> four
>>>>>> BP
>>>>>> bits (the example in stm_lock() has not enough information on
>>>>>> this):
>>>>>>
>>>>>> (1) the first setting (besides 0) protects one sector. The
>>>>>> second
>>>>>>      protects 2, the third 4 and so on. eg 2^N
>>>>>> (2) the last setting is _always_ protect all, just like the
>>>>>> '0'
>>>>>> setting
>>>>>>      is always protect none.
>>>>>> (3) if there is an overflow because there are no more free
>>>>>> slots
>>>>>> for
>>>>>>      further settings (for 3 bits with flashes > 32MBit, for
>>>>>> 4
>>>>>>      bits if should be flashes > 16GBit), the first entry
>>>>>> will be
>>>>>>      discarded (eg the very first is the "just one sector"
>>>>>> entry).
>>>>>>
>>>>>> This is true for all flashes which uses this kind of setting,
>>>>>> have a
>>>>>> look at the m25p80 or w25q40bw, these are no exception. It is
>>>>>> just
>>>>>> the
>>>>>> notation "lower 1/64" which is only true for flashes which
>>>>>> either
>>>>>> overflows in (3) or fill all entries (eg. with 3bits that
>>>>>> would
>>>>>> be
>>>>>> the
>>>>>> 32Mbit version).
>>>>>>
>>>>>
>>>>> Looks like you noticed that we need new calculation method that
>>>>> would
>>>>> be based on n_sectors :).
>>>>
>>>> No it will work without that (if I'm not mistaken). Give me some
>>>> time
>>>> and I'll post a patch.
>>>
>>> No, it must be based on n_sectors. To make 4bit block protection
>>> more
>>> generic, the lock sector size must NOT fixed as 64KB (as can be
>>> checked
>>> from your patch). See "mt35xu02g" and check the protected area and
>>> number of sectors from it's datasheet.
>>
>> There is no public datasheet as far as I can see. And yes, actually
>> n_sectors is my "mtd-size / sector_size". But I don't see how
>> n_sectors
>> would help if the sector size changes.
>>
>>> The rule you mentioned "the first setting (besides 0) protects one
>>> sector" is alawys true for *4bit* block protection. That's why I
>>> choose
>>> n_sectors for new calculation.
>>
>> And how does flashes behave once all the free slots are full? It was
>> the
>> same with the 3bit flashes, they only overflowed with "newer"/bigger
>> flashes.
>>
>>
>>>>
>>>>> Rule (1) is NOT true for some flashes
>>>>> supporting BP0-2 and that's why I said that smallest protected
>>>>> portion
>>>>> is fixed as '1/64' for these flashes.
>>>>
>>>> No, you have to apply rule (3). (1) is only the starting point.
>>>> It
>>>> is
>>>> kind
>>>> of a sliding window.
>>>>
>>>>> See this one.
>>>>>
>>>>> W25Q20EW	256KB	1/4 ... = 64KB		BP2
>>>>> W25Q128JV	16MB	1/64 ... = 256KB	BP2 <--
>>>>> S25FL132K	4MB	1/64 ... = 64KB		BP2 <--
>>>>> S25FL164K	8MB
>>>>> 1/64 ... = 128KB	BP2 <--
>>>>
>>>> All these flashes need (3) to be applied, thus (1) doesn't apply
>>>> anymore.
>>>>
>>>> Let me give you an example for the 64MBit case, the settings
>>>> would
>>>> be:
>>>>
>>>> 0 sectors (corresponds to protect none)
>>>> 1 sector
>>>> 2 sectors
>>>> 4 sectors
>>>> 8 sectors
>>>> 16 sectors
>>>> 32 sectors
>>>> 64 sectors
>>>> 128 sectors (corresponds to protect all)
>>>>
>>>> Unfortunately, we have only 8 slots (because 3 BP bits),
>>>> therefore
>>>> we
>>>> have
>>>> to discard some setting. According to rule (2) 0 is always
>>>> "protect
>>>> none"
>>>> and 7 is always "protect all". Thus we have 6 settings left.
>>>> According
>>>> to
>>>> rule (3) we discard the first ones. In this case, this is the "1
>>>> sector"
>>>> setting. Thus we end up with the following possible settings:
>>>>
>>>> 0 sectors (corresponds to protect none)
>>>> 2 sectors
>>>> 4 sectors
>>>> 8 sectors
>>>> 16 sectors
>>>> 32 sectors
>>>> 64 sectors
>>>> 128 sectors (corresponds to protect all)
>>>>
>>>> If you have a 128Mbit flash, the next setting that would be
>>>> discarded
>>>> is
>>>> "2 sectors". Thus it would start with:
>>>>
>>>> 0 sectors (corresponds to protect none)
>>>> 4 sectors
>>>> [..]
>>>> 256 sectors (corresponds to protect all)
>>>>
>>>>
>>>> Another example W25Q20EW, following possible settings:
>>>>
>>>> 0 sectors (corresponds to protect none)
>>>> 1 sector
>>>> 2 sectors
>>>> 4 sectors (corresponds to protect all)
>>>>
>>>> We now have less settings then our 8 possible slots. So this is
>>>> where
>>>> rule (1) applies, because according to that the "1 sector"
>>>> setting is
>>>> the first possible setting besides 0.
>>>>
>>>> And this also applies to the 4 bit protection bits.
>>>>
>>>>
>>>>
>>>>> W25Q256JV	32MB	1/512 ... =
>>>>> 64KB	BP3
>>>>> S25FL128L	16MB	1/256 ... = 64KB	BP3
>>>>> S25FL256L	32MB	1/512 ... = 64KB	BP3
>>>>>
>>>>> In current BP implementation, block protection is just working
>>>>> for
>>>>> some
>>>>> flashes that has smallest protected portion as '1/64'.
>>>>
>>>> No its currently working for all except flashes smaller than
>>>> 32Mbit.
>>>
>>> No. Not working for flashes supporting 4bit block protection.
>>>
>>>> Applied to the 4 bits, this would mean "it works for all except
>>>> flashes
>>>> smaller than 8Gbit" which are practially all. As I said, this is
>>>> a
>>>> bug
>>>> and once this bug is fixed, there should be no difference between
>>>> 3
>>>> and 4 bits.
>>>>
>>>> -michael
>>>>
>>>
>>> The exact fact is that locks operate in two different ways
>>> according to
>>> flash model.
>>>
>>> (1) the smallest protected portion is fixed.
>>> 	for BP0-2 : 1/64
>>> 	for BP0-1 : 1/4
>>
>> As mentioned earlier, the ratio nomenclature is missleading and only 
>> valid if the table is completely filled up.
>>
>> Take a flash with 128kB and three BP bits (or even only two BP
>> bits). 
>> The
>> smallest portion will be 64kB (which is one sector and not 1/64).
>>
>> Thus the smallest portion is always one sector, unless the table is
>> overflowing, then the smallest will settle to 1/4 (for two), 1/64
>> (for 
>> three)
>> and 1/16384 (for four bits).
>>
>>> (2) the smallest protected portion is inversely propotional with
>>> number
>>> of sectors.
>>>
>>> For the flashes supporting 3bit block protection, (1) and (2) are
>>> mixed
>>> and used. But all the flashes supporting 4bit block protection
>>> listed
>>> on spi-nor.c, only (2) is used.
>>
>> It is not mixed it just depends on the flash size (and the number of
>> protection bits).
>>
> 
> It is mixed. Let's compare "en25qh128" from EON with "w25q128jv" from
> Winbond. They have the same capacity(128MBit) and also supporting 3bit
> block protection. (Note that the named BP3 bit of "en25qh128" is
> working exactly same with T/B bit.)
> 
> "en25qh128" is following (2) and "w25q128jv" is following (1). It seems
> impossible to distinguish them by the flash size or the number of
> protection bits. 
> 
> I also still have no idea how your three rules are applicable for 2bit
> block protection (bp0-1).
> 
>>> Each method requires each formula. I have no idea how to handle it
>>> with
>>> one formula (probably adding number of exceptional handling?)
>>> without
>>> any sectional flag. "w25q128jv(bp0-2)" is following (1) and
>>> "n25q128a(bp0-3)" is following (2).
>>
>> Well one uses three BPs the other four, and they all follow the
>> three 
>> rules
>> above. Did you try my patch? Because I've (at least in userspace)
>> tested
>> it with 4 bits and got the correct results.
>>
>> And yes, its actually two different formulas, but not for 3 and 4
>> bits like in your patch. 
> 
> The title of my patch is "add 4bit block protection support". I just
> let 3bit block protection as it is, I've implemented something what I
> could check. As I mentioned, for all the flashes supporting 4bit block
> protection only (2) is used and this patch has been implemented based
> on this fact.
> 
>> It is rather one formula (A) for flashes which don't 
>> exhaust
>> the BP bits (eg. for 3 bits this would be flashes <= 16Mbit and for
>> 4 
>> bits
>> this would be for flashes <=8Gbit) and one (B) for the flashes where 
>> every
>> BP bit combination is used. What is at the moment in the kernel is
>> the
>> second one, thus it will fail for flashes <= 16Mbit and 3 BP bits;
>> and 
>> it
>> also fails for all flashes with 4 bits. My patch does a fixup on (B)
>> to
>> match the results of (A), because doing this is less invasive; and as
>> mentioned in the patch annex, might also be rewritten for a better
>> understanding.
> 
> I've never seen spi flashes greater than 8Gbit (maybe you also), so I
> am not sure whether the three rules are applicable to 4 bit block
> protection. Even the three rules doesn't seem to be general enough for
> 3bit or 2bit block protection.
> 
>>
>>
>> -michael
>>
>>>
>>>>>
>>>>> We need new fomula based on n_sectors for BP3 at least.
>>>>
>>>> No they are the same, but yes there is a bug in the current
>>>> implementation.
>>>>
>>>> -michael
>>>>
>>>>>
>>>>>> So for the 3 bit case the following flashes are border cases:
>>>>>>   - 16mbit (less settings than slots)
>>>>>>   - 32mbit (number of settings and free slots match)
>>>>>>   - 64mbit (more settings than slots, first setting is
>>>>>> discarded)
>>>>>>
>>>>>> That being said, I suspect all the 16mbit flashes (and below)
>>>>>> which
>>>>>> have
>>>>>> the _LOCK bit set are broken, because the entries has to be
>>>>>> shifted.
>>>>>> I'll
>>>>>> look into that later. This is the same "issue" you have with
>>>>>> the
>>>>>> 4
>>>>>> bits.
>>>>>> So if this is fixed, you should not need another formula for
>>>>>> the
>>>>>> 4
>>>>>> bit
>>>>>> case.
>>>>>>
>>>>>>> We need new calculation method for 4bit block protection
>>>>>>> and
>>>>>>> for
>>>>>>> making
>>>>>>> it more generic, I choose n_sectors.
>>>>>>>
>>>>>>> On all the flashes I checked, n_sectors is proper value for
>>>>>>> getting
>>>>>>> block protected portion.
>>>>>>>
>>>>>>> 		density	portion	n_sectors
>>>>>>> W25M512JV	64MB	1/512	512
>>>>>>> N25Q128A	16MB	1/256	256
>>>>>>> N25Q512A	64MB	1/1024	1024
>>>>>>> MT25QL02GCBB	256MB	1/4096	4096
>>>>>>
>>>>>> The rules above apply to these flashes, too. Could you double
>>>>>> check
>>>>>> that?
>>>>>>
>>>>>> -michael
>>>>>>
>>>>>>>
>>>>>>>>> +		val = val << SR_BP_SHIFT;
>>>>>>>>> +
>>>>>>>>> +		if (val & BIT(5) && mask & SR_BP3_BIT6)
>>>>>>>>> +			val = (val & ~BIT(5)) | BIT(6);
>>>>>>>>> +	} else {
>>>>>>>>> +		val = mask - (pow << SR_BP_SHIFT);
>>>>>>>>> +	}
>>>>>>>>> +
>>>>>>>>>  	if (val & ~mask)
>>>>>>>>>  		return -EINVAL;
>>>>>>>>>  	/* Don't "lock" with no region! */
>>>>>>>>> @@ -1983,6 +2057,13 @@ static int stm_unlock(struct
>>>>>>>>> spi_nor
>>>>>>>>> *nor,
>>>>>>>>> loff_t ofs, uint64_t len)
>>>>>>>>>
>>>>>>>>>  	if (nor->flags & SNOR_F_HAS_SR_TB_BIT6)
>>>>>>>>>  		tb_mask = SR_TB_BIT6;
>>>>>>>>> +
>>>>>>>>> +	if (nor->flags & SNOR_F_HAS_SR_BP3) {
>>>>>>>>> +		if (nor->flags &
>>>>>>>>> SNOR_F_HAS_SR_BP3_BIT6)
>>>>>>>>> +			mask = mask | SR_BP3_BIT6;
>>>>>>>>> +		else
>>>>>>>>> +			mask = mask | SR_BP3_BIT5;
>>>>>>>>> +	}
>>>>>>>>>  	/*
>>>>>>>>>  	 * Need largest pow such that:
>>>>>>>>>  	 *
>>>>>>>>> @@ -1995,13 +2076,20 @@ static int stm_unlock(struct
>>>>>>>>> spi_nor
>>>>>>>>> *nor,
>>>>>>>>> loff_t ofs, uint64_t len)
>>>>>>>>>  	pow = ilog2(mtd->size) -
>>>>>>>>> order_base_2(lock_len);
>>>>>>>>>  	if (lock_len == 0) {
>>>>>>>>>  		val = 0; /* fully unlocked */
>>>>>>>>> +	} else if (nor->flags & SNOR_F_HAS_SR_BP3) {
>>>>>>>>> +		val = ilog2(nor->n_sectors) + 1 - pow;
>>>>>>>>> +		val = val << SR_BP_SHIFT;
>>>>>>>>> +
>>>>>>>>> +		if (val & BIT(5) && mask & SR_BP3_BIT6)
>>>>>>>>> +			val = (val & ~BIT(5)) | BIT(6);
>>>>>>>>>  	} else {
>>>>>>>>>  		val = mask - (pow << SR_BP_SHIFT);
>>>>>>>>> -		/* Some power-of-two sizes are not
>>>>>>>>> supported */
>>>>>>>>> -		if (val & ~mask)
>>>>>>>>> -			return -EINVAL;
>>>>>>>>>  	}
>>>>>>>>>
>>>>>>>>> +	/* Some power-of-two sizes are not supported */
>>>>>>>>> +	if (val & ~mask)
>>>>>>>>> +		return -EINVAL;
>>>>>>>>> +
>>>>>>>>>  	status_new = (status_old & ~mask & ~tb_mask) |
>>>>>>>>> val;
>>>>>>>>>
>>>>>>>>>  	/* Don't protect status register if we're fully
>>>>>>>>> unlocked */
>>>>>>>>> @@ -4736,6 +4824,7 @@ static void
>>>>>>>>> spi_nor_info_init_params(struct
>>>>>>>>> spi_nor *nor)
>>>>>>>>>  	/* Set SPI NOR sizes. */
>>>>>>>>>  	params->size = (u64)info->sector_size * info-
>>>>>>>>>> n_sectors;
>>>>>>>>>
>>>>>>>>>  	params->page_size = info->page_size;
>>>>>>>>> +	params->n_sectors = info->n_sectors;
>>>>>>>>>
>>>>>>>>>  	if (!(info->flags & SPI_NOR_NO_FR)) {
>>>>>>>>>  		/* Default to Fast Read for DT and non-
>>>>>>>>> DT
>>>>>>>>> platform
>>>>>>>>> devices. */
>>>>>>>>> @@ -5192,6 +5281,11 @@ int spi_nor_scan(struct spi_nor
>>>>>>>>> *nor,
>>>>>>>>> const
>>>>>>>>> char *name,
>>>>>>>>>  		nor->flags |= SNOR_F_NO_OP_CHIP_ERASE;
>>>>>>>>>  	if (info->flags & USE_CLSR)
>>>>>>>>>  		nor->flags |= SNOR_F_USE_CLSR;
>>>>>>>>> +	if (info->flags & SPI_NOR_HAS_BP3) {
>>>>>>>>> +		nor->flags |= SNOR_F_HAS_SR_BP3;
>>>>>>>>> +		if (info->flags & SPI_NOR_BP3_SR_BIT6)
>>>>>>>>> +			nor->flags |=
>>>>>>>>> SNOR_F_HAS_SR_BP3_BIT6;
>>>>>>>>> +	}
>>>>>>>>>
>>>>>>>>>  	if (info->flags & SPI_NOR_NO_ERASE)
>>>>>>>>>  		mtd->flags |= MTD_NO_ERASE;
>>>>>>>>> @@ -5199,6 +5293,7 @@ int spi_nor_scan(struct spi_nor
>>>>>>>>> *nor,
>>>>>>>>> const
>>>>>>>>> char *name,
>>>>>>>>>  	mtd->dev.parent = dev;
>>>>>>>>>  	nor->page_size = params->page_size;
>>>>>>>>>  	mtd->writebufsize = nor->page_size;
>>>>>>>>> +	nor->n_sectors = params->n_sectors;
>>>>>>>>>
>>>>>>>>>  	if (of_property_read_bool(np, "broken-flash-
>>>>>>>>> reset"))
>>>>>>>>>  		nor->flags |= SNOR_F_BROKEN_RESET;
>>>>>>>>> diff --git a/include/linux/mtd/spi-nor.h
>>>>>>>>> b/include/linux/mtd/spi-
>>>>>>>>> nor.h
>>>>>>>>> index 541c06d042e8..92d550501daf 100644
>>>>>>>>> --- a/include/linux/mtd/spi-nor.h
>>>>>>>>> +++ b/include/linux/mtd/spi-nor.h
>>>>>>>>> @@ -129,7 +129,9 @@
>>>>>>>>>  #define SR_BP1			BIT(3)	/* Block
>>>>>>>>> protect 1
>>>>>>>>> */
>>>>>>>>>  #define SR_BP2			BIT(4)	/* Block
>>>>>>>>> protect 2
>>>>>>>>> */
>>>>>>>>>  #define SR_TB_BIT5		BIT(5)	/* Top/Bottom
>>>>>>>>> protect
>>>>>>>>> */
>>>>>>>>> +#define SR_BP3_BIT5		BIT(5)	/* Block
>>>>>>>>> protect 3
>>>>>>>>> */
>>>>>>>>
>>>>>>>> maybe just name it SR_BP3? would also be more consistent
>>>>>>>> with
>>>>>>>> the
>>>>>>>> proposal
>>>>>>>> above.
>>>>>>>>
>>>>>>>>>  #define SR_TB_BIT6		BIT(6)	/* Top/Bottom
>>>>>>>>> protect
>>>>>>>>> */
>>>>>>>>> +#define SR_BP3_BIT6		BIT(6)	/* Block
>>>>>>>>> protect 3
>>>>>>>>> */
>>>>>>>>>  #define SR_SRWD			BIT(7)	/* SR
>>>>>>>>> write
>>>>>>>>> protect
>>>>>>>>> */
>>>>>>>>>  /* Spansion/Cypress specific status bits */
>>>>>>>>>  #define SR_E_ERR		BIT(5)
>>>>>>>>> @@ -248,6 +250,8 @@ enum spi_nor_option_flags {
>>>>>>>>>  	SNOR_F_HAS_16BIT_SR	= BIT(9),
>>>>>>>>>  	SNOR_F_NO_READ_CR	= BIT(10),
>>>>>>>>>  	SNOR_F_HAS_SR_TB_BIT6	= BIT(11),
>>>>>>>>> +	SNOR_F_HAS_SR_BP3	= BIT(12),
>>>>>>>>> +	SNOR_F_HAS_SR_BP3_BIT6	= BIT(13),
>>>>>>>>>
>>>>>>>>>  };
>>>>>>>>>
>>>>>>>>> @@ -519,6 +523,7 @@ struct spi_nor_locking_ops {
>>>>>>>>>   *
>>>>>>>>>   * @size:		the flash memory density in
>>>>>>>>> bytes.
>>>>>>>>>   * @page_size:		the page size of the SPI NOR
>>>>>>>>> flash
>>>>>>>>> memory.
>>>>>>>>> + * @n_sectors:		number of sectors
>>>>>>>>>   * @hwcaps:		describes the read and page
>>>>>>>>> program
>>>>>>>>> hardware
>>>>>>>>>   *			capabilities.
>>>>>>>>>   * @reads:		read capabilities ordered by
>>>>>>>>> priority:
>>>>>>>>> the
>>>>>>>>> higher index
>>>>>>>>> @@ -541,6 +546,7 @@ struct spi_nor_locking_ops {
>>>>>>>>>  struct spi_nor_flash_parameter {
>>>>>>>>>  	u64				size;
>>>>>>>>>  	u32				page_size;
>>>>>>>>> +	u16				n_sectors;
>>>>>>>>>
>>>>>>>>>  	struct spi_nor_hwcaps		hwcaps;
>>>>>>>>>  	struct spi_nor_read_command	reads[SNOR_CMD_
>>>>>>>>> READ_MAX
>>>>>>>>> ];
>>>>>>>>> @@ -573,6 +579,7 @@ struct flash_info;
>>>>>>>>>   * @bouncebuf_size:	size of the bounce buffer
>>>>>>>>>   * @info:		spi-nor part JDEC MFR id and
>>>>>>>>> other info
>>>>>>>>>   * @page_size:		the page size of the SPI NOR
>>>>>>>>> + * @n_sector:		number of sectors
>>>>>>>>>   * @addr_width:		number of address bytes
>>>>>>>>>   * @erase_opcode:	the opcode for erasing a sector
>>>>>>>>>   * @read_opcode:	the read opcode
>>>>>>>>> @@ -599,6 +606,7 @@ struct spi_nor {
>>>>>>>>>  	size_t			bouncebuf_size;
>>>>>>>>>  	const struct flash_info	*info;
>>>>>>>>>  	u32			page_size;
>>>>>>>>> +	u16			n_sectors;
>>>>>>>>>  	u8			addr_width;
>>>>>>>>>  	u8			erase_opcode;
>>>>>>>>>  	u8			read_opcode;
>>>>>>>>> --
>>>>>>>>> 2.17.1
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> ______________________________________________________
>>>>>>>>> Linux MTD discussion mailing list
>>>>>>>>>
>>>>>>>
>>>>>>>
>>>>>
>>>>>
>>>
>>>
> https://protect2.fireeye.com/url?k=06b6dd5d-5b7d5a63-06b75612-0cc47a31309a-83164929001f7741&u=http://lists.infradead.org/mailman/listinfo/linux-mtd/
>>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>
>>>>>>
>>>>
>>>>
>>
>>
> 
> Thanks,
> Jungseung Lee
> 

-- 
Regards
Vignesh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
