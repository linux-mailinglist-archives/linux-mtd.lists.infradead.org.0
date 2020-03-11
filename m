Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98BE5181979
	for <lists+linux-mtd@lfdr.de>; Wed, 11 Mar 2020 14:19:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yo/dxuaedGWV56pCgfxSjU4dnx0G3cM2ctK6M/H61oA=; b=mELA+k23AYJxRW
	llh+fhwq56aRRVCalzpaJrWC5G+VJH4Jyxxe06PeQpkLKsq+WoLxVz4EOuNGftefB46EYo72be6RH
	DX5TW+KSRjshwUvIvesbB+aXQXEZvAzFEIhhqlJwTAZ3a91ZeWEuaapLuIVj0Y4Yny6q8uCs3xUKO
	ZW5chjbMebbeq/7jlcLgcGiv4RnyXgykX0fca2iSPH3j2DKPkErT9jaqESJcJoP5IOg1IF9lU0i84
	rwTG4eoSlKvv2nFrN/BMQiKARiujlXtTfM81UqfzzBKYsXQONNze34mMHfHXY2R2tCpLu0kKhdeEW
	NL1/eO7uezBAaxnGk7GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC1Gh-0000nB-R4; Wed, 11 Mar 2020 13:19:27 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC1Gb-0000mf-3R
 for linux-mtd@lists.infradead.org; Wed, 11 Mar 2020 13:19:22 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48csxM0x1Xz1qrfD;
 Wed, 11 Mar 2020 14:19:19 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48csxL75Bfz1qyFF;
 Wed, 11 Mar 2020 14:19:18 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id gG7TZRgOy1AB; Wed, 11 Mar 2020 14:19:17 +0100 (CET)
X-Auth-Info: 1T8v6rtKwIkyp13pKWsz0gMwNC0KDn/mRtP+V781I4Q=
Received: from [127.0.0.1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Wed, 11 Mar 2020 14:19:17 +0100 (CET)
Subject: Re: [PATCH] Revert "mtd: rawnand: denali: get
 ->setup_data_interface() working again"
To: Miquel Raynal <miquel.raynal@bootlin.com>
References: <20200205070834.3087104-1-marex@denx.de>
 <45a10680-5fe6-7cab-a7ef-f7f7a952e822@denx.de>
 <20200205105045.6877aca6@xps13>
 <bdb54ba5-648a-0b79-661c-5eb9604a1ee5@denx.de>
 <b6f094b7-01a9-34a2-bf10-019a05bc7cb3@denx.de>
 <20200211170707.2183625e@xps13>
 <b1a10583-e110-9568-4007-aa2b3f38a7be@denx.de>
 <CAK7LNARqYDh4AJ+N-PTHui0H89-humECskJVUxW4cTf6edEBMQ@mail.gmail.com>
 <f4e2deeb-cc0e-fb06-46fa-d6cf4f2a73ad@denx.de>
 <CAK7LNAR4MU+Rfmpz99iwLuEbD4jMwUdh91uz3zyQdvjyLEQcMQ@mail.gmail.com>
 <29cce21c-2214-7238-0bc5-db2c1a54576f@denx.de>
 <CAK7LNASckTZO-9uVjtQH8iKhU0HH9WiMK-CzMxjESQOOUM0cKA@mail.gmail.com>
 <CAK7LNAT3EG0XocC0xT0f=6MBpXLga3FehOjEYbRyP6AJUbqb2Q@mail.gmail.com>
 <311cdc3c-59b5-a46b-62f0-e78fc970134a@denx.de>
 <CAK7LNAT1Bzs68X8PiWQHg4g2bpPGd-WM9D4vwf59XfwwLVuVQQ@mail.gmail.com>
 <e86925d0-805c-d364-57ca-6400b77cffd7@denx.de>
 <CAK7LNARDp1Zru3_XAQyBZHwsRov-QWOnrrwodS8pjszsKy2ysw@mail.gmail.com>
 <d4b4abf4-1af9-d57c-5b93-2d56a5dc456b@denx.de>
 <20200311140807.6f56baf3@xps13>
From: Marek Vasut <marex@denx.de>
Message-ID: <5fa809a3-cd2b-74de-3615-387232051ae2@denx.de>
Date: Wed, 11 Mar 2020 14:19:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200311140807.6f56baf3@xps13>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_061921_440645_96D08D89 
X-CRM114-Status: GOOD (  21.28  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
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
Cc: Dinh Nguyen <dinguyen@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 linux-mtd <linux-mtd@lists.infradead.org>, Tim Sander <tim@krieglstein.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 3/11/20 2:08 PM, Miquel Raynal wrote:
> Hi Marek,

Hi Miquel,

> Marek Vasut <marex@denx.de> wrote on Wed, 11 Mar 2020 13:52:30 +0100:
> 
>> On 3/9/20 11:27 AM, Masahiro Yamada wrote:
>>> Hi.  
>>
>> Hi,
>>
>> [...]
>>
>>>>>> See attached patch, with which (without this revert) you get this:
>>>>>> denali->reg + TWHR2_AND_WE_2_RE = 0x00001414 -> 0x0000143f
>>>>>> denali->reg + TCWAW_AND_ADDR_2_DATA = 0x0000143f -> 0x00001432
>>>>>> denali->reg + RE_2_WE = 0x00000014 -> 0x00000019
>>>>>> denali->reg + ACC_CLKS = 0x00000004 -> 0x00000005
>>>>>> denali->reg + RDWR_EN_LO_CNT = 0x00000002 -> 0x00000009
>>>>>> denali->reg + RDWR_EN_HI_CNT = 0x00000002 -> 0x00000004
>>>>>> denali->reg + CS_SETUP_CNT = 0x00000001 -> 0x00000008
>>>>>> denali->reg + RE_2_RE = 0x00000014 -> 0x00000019  
>>>>>
>>>>> OK, the left-hand side is probably the timing
>>>>> set up by U-Boot.  
>>>>
>>>> Yep, the timings that work. So now, how do you get to those working
>>>> timings using the Linux driver ?  
>>>
>>>
>>> How about
>>> 0001-denali-more-complicated-calculation-for-timings.patch
>>>
>>> + following ?
>>>
>>> diff --git a/drivers/mtd/nand/raw/denali.c b/drivers/mtd/nand/raw/denali.c
>>> index b0482108a127..ea38aa42873e 100644
>>> --- a/drivers/mtd/nand/raw/denali.c
>>> +++ b/drivers/mtd/nand/raw/denali.c
>>> @@ -860,9 +860,9 @@ static int denali_setup_data_interface(struct
>>> nand_chip *chip, int chipnr,
>>>
>>>         /*
>>>          * Determine the minimum of acc_clks to meet the data setup timing.
>>> -        * (one additional clock cycle just in case)
>>> +        * (two additional clock cycles just in case)
>>>          */
>>> -       acc_clks = DIV_ROUND_UP(timings->tREA_max, t_x) + 1;
>>> +       acc_clks = DIV_ROUND_UP(timings->tREA_max, t_x) + 2;
>>>
>>>         /* Determine the minimum of rdwr_en_lo_cnt from RE#/WE# pulse width */
>>>         rdwr_en_lo = DIV_ROUND_UP(max(timings->tRP_min, timings->tWP_min), t_x);  
>>
>> Like the attached one ?
>>
>> That seems to work, but -- the calculated timings differ from the ones
>> which are calculated by U-Boot and which were tested to work well.
>> That's not good, I would expect both timings to be identical:
> 
> There is no such "timings tested to work well".

Hmmm, the board went through full temperature range testing in a chamber
with those timings and passed, and there are boards with those exact
timings deployed for years now with older kernel version, which work
too. So I would expect they are good and "timings tested to work well".

> Timings represent
> minimum and maximum values for certain operations on the NAND bus, you
> can have two different values that will both work in the same
> condition. And it is expected that Linux is more clever than U-Boot

Errr, why ?

> and
> may optimize better the timings depending on the selected mode ([0-5])
> (hence the different calls to ->setup_data_interface().

I would expect those two should produce identical timing parameters,
period, otherwise one or the other is wrong. Thus far, it was Linux that
produced non-working results.

> Run a stress test, if it passes, you should be good :)

Thank you for the hint, I think the stress test thus far could be
considered sufficient. I guess we can agree on that ?

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
