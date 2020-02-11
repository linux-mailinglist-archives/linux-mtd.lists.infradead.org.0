Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7EF2159A8F
	for <lists+linux-mtd@lfdr.de>; Tue, 11 Feb 2020 21:36:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XNZWVIEwHruEqkKzO5eJt4AP5p6MH0WaRxXxwR6l12M=; b=DMEbMby2qg9cEW
	zVq9SoZg03k9xb4ESKoHZQqPnGPBTXoiB9DbPyFaRN063UBS2ltVntyP1YToIapbgbC1vWZX7H6LO
	CkBjV8wALLDVBfQ1kPeVmY4GKa6LKwJG4an5dDDlcaHoy+eFtKyJrgPUmDMXGWEk1Y/0BQ0BrJNs8
	D4sax/oe/BmjDbyocEy3uqTShBTCKwvf7gX0gsnJXmzQY1GTHSdLE6QXTd0MoWxEH6l722RbG84gZ
	7bMylbDYZucAl6PO9euHl9u4nrAZxpTLqtISWDi2O+bskQQvNgskUFXQiYUhJbpqiwGgcOwWm69va
	TDiOLvtw06kB2ondWQxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1cGP-00005f-3B; Tue, 11 Feb 2020 20:36:09 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1cGH-0008WT-5i
 for linux-mtd@lists.infradead.org; Tue, 11 Feb 2020 20:36:03 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48HF0X0dRcz1qrVS;
 Tue, 11 Feb 2020 21:35:56 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48HF0W7432z1qrn2;
 Tue, 11 Feb 2020 21:35:55 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id NhJL3mr0TFCO; Tue, 11 Feb 2020 21:35:54 +0100 (CET)
X-Auth-Info: YXHRlaqzM1CNfPoHlyupbsJHWzTDdJ2QOXn5AJJ4pSo=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Tue, 11 Feb 2020 21:35:54 +0100 (CET)
Subject: Re: [PATCH] Revert "mtd: rawnand: denali: get
 ->setup_data_interface() working again"
To: Miquel Raynal <miquel.raynal@bootlin.com>
References: <20200205070834.3087104-1-marex@denx.de>
 <20200205101223.21d99d93@xps13>
 <45a10680-5fe6-7cab-a7ef-f7f7a952e822@denx.de>
 <20200205105045.6877aca6@xps13>
 <bdb54ba5-648a-0b79-661c-5eb9604a1ee5@denx.de>
 <b6f094b7-01a9-34a2-bf10-019a05bc7cb3@denx.de>
 <20200211170707.2183625e@xps13>
From: Marek Vasut <marex@denx.de>
Message-ID: <b1a10583-e110-9568-4007-aa2b3f38a7be@denx.de>
Date: Tue, 11 Feb 2020 21:35:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200211170707.2183625e@xps13>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_123601_515342_A4E2270B 
X-CRM114-Status: GOOD (  21.22  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Boris Brezillon <boris.brezillon@collabora.com>, linux-mtd@lists.infradead.org,
 Tim Sander <tim@krieglstein.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 2/11/20 5:07 PM, Miquel Raynal wrote:
> Hi Marek, Masahiro,
> 
> Marek Vasut <marex@denx.de> wrote on Tue, 11 Feb 2020 11:04:10 +0100:
> 
>> On 2/5/20 11:08 AM, Marek Vasut wrote:
>>> On 2/5/20 10:50 AM, Miquel Raynal wrote:  
>>>> Hi Marek,
>>>>
>>>> Marek Vasut <marex@denx.de> wrote on Wed, 5 Feb 2020 10:41:05 +0100:
>>>>  
>>>>> On 2/5/20 10:12 AM, Miquel Raynal wrote:  
>>>>>> Hi Marek,
>>>>>>
>>>>>> Marek Vasut <marex@denx.de> wrote on Wed,  5 Feb 2020 08:08:34 +0100:
>>>>>>     
>>>>>>> This reverts commit d311e0c27b8fcc27f707f8cac48cd8bdc4155224, which
>>>>>>> completely breaks NAND access on Altera SoCFPGA (detected on ArriaV
>>>>>>> SoC).
>>>>>>>
>>>>>>> On SoCFPGA, denali->clk_rate = 31.25 MHz and denali->clk_x_rate = 125 MHz,
>>>>>>> hence the driver sets NAND_KEEP_TIMINGS flag. This did not happen before
>>>>>>> and is actually incorrect, as on SoCFPGA we do not want to retain timings
>>>>>>> from previous stage (the timings might be incorrect or outright invalid).
>>>>>>>
>>>>>>> Cc: Boris Brezillon <boris.brezillon@collabora.com>
>>>>>>> Cc: Dinh Nguyen <dinguyen@kernel.org>
>>>>>>> Cc: Masahiro Yamada <masahiroy@kernel.org>
>>>>>>> Cc: Miquel Raynal <miquel.raynal@bootlin.com>
>>>>>>> Cc: Tim Sander <tim@krieglstein.org>
>>>>>>> To: linux-mtd <linux-mtd@lists.infradead.org>
>>>>>>> ---
>>>>>>>  drivers/mtd/nand/raw/denali.c | 2 +-
>>>>>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>>>>>
>>>>>>> diff --git a/drivers/mtd/nand/raw/denali.c b/drivers/mtd/nand/raw/denali.c
>>>>>>> index b6c463d02167..5fe3c62a756e 100644
>>>>>>> --- a/drivers/mtd/nand/raw/denali.c
>>>>>>> +++ b/drivers/mtd/nand/raw/denali.c
>>>>>>> @@ -1209,7 +1209,7 @@ int denali_chip_init(struct denali_controller *denali,
>>>>>>>  	}
>>>>>>>  
>>>>>>>  	/* clk rate info is needed for setup_data_interface */
>>>>>>> -	if (!denali->clk_rate || !denali->clk_x_rate)    
>>>>>>
>>>>>> I don't get it, if both clk_rate and clk_x_rate are set, the if
>>>>>> condition will not be entered, right?    
>>>>>
>>>>> Err, then it's the other way around and I need to keep the timings on
>>>>> socfpga ?  
>>>>
>>>> Ok.
>>>>
>>>> Do you have a different compatible? Or a register to check? How do you
>>>> discriminate the different platforms by software? The quick and dirty
>>>> solution is to add a special case for your platform and specifically
>>>> use the NAND_KEEP_TIMINGS horror.  
>>>
>>> Sure, there's a socfpga compatible and at least two for uniphier.
>>>   
>>>> But I think using ->software_data_interface is the right solution. So
>>>> I would highly recommend fixing the implementation of this hook
>>>> for your platform and in this case the commit reverted is not the
>>>> culprit, the one introducing setup_data_interface is (for the Fixes:
>>>> tag).  
>>>
>>> I'll leave the details to Yamada-san.  
>>
>> Just got a confirmation that this fixes NAND behavior on SoCFPGA, so
>> this patch should go in in some form.
> 
> I'm sure it fixes it, but it is definitely not going in the right
> direction!
> 
> The right thing to do is fixing ->setup_data_interface().
> 
> The bad thing to do if someone tells me that he will fix
> ->setup_data_interface() in a second time is to keep the
> NAND_KEEP_TIMINGS flag only for a single compatible.

OK, I'll leave that to Yamada-san. I don't really want to interfere with
his work on the Denali NAND driver.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
