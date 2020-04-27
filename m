Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E6C1BAEE8
	for <lists+linux-mtd@lfdr.de>; Mon, 27 Apr 2020 22:11:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rm9MeaWmjo2004hto++h/EH3H2+2hKkkJv3E1Gomcko=; b=laOxqa5Jc2FAK5
	6cXiiWfvXcGBZUlcHaNoqw7GZuiPiUo+Izj/3GDCk0lmKtUktYb7RqTSOtgtpGX9MXcUuzIf7cXmE
	MO/C+tuI+4Ol7nucMlWM+f/XTOYBQNsZCGuFkK/Ynlg/CG4+RCM7JDiVCx6X55Jn7bo/yK492XGjV
	XQX7rkL5kBnewFkheSxbAGwvdQOp3n5EFu3qUr6HqPf4/Mjpq1GsZpsfsGSLUdH1QCCpsqhDD2zvw
	vNjI74Qtg9lYbhv3L6NzkVTNWcRJ3TkFdPMoHZxw0oDKQa303MBQWYqGcV3NZjBCqapN+gjEfBf3A
	96KsPS3LRYTX64DLRIMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTA5e-00052T-Nd; Mon, 27 Apr 2020 20:10:55 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTA5R-00051Y-Ic
 for linux-mtd@lists.infradead.org; Mon, 27 Apr 2020 20:10:43 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 499wrG2wf8z1r57K;
 Mon, 27 Apr 2020 22:10:38 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 499wrG17wnz1r5QD;
 Mon, 27 Apr 2020 22:10:38 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id i4tqPQhTSciQ; Mon, 27 Apr 2020 22:10:36 +0200 (CEST)
X-Auth-Info: GUUzWNkr5v3OccBIirF+3V7nXhtOcUNOL4F87dnWiJo=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Mon, 27 Apr 2020 22:10:36 +0200 (CEST)
Subject: Re: [PATCH v2 04/12] mtd: rawnand: stm32_fmc2: manage all errors
 cases at probe time
To: Miquel Raynal <miquel.raynal@bootlin.com>
References: <1586966256-29548-1-git-send-email-christophe.kerello@st.com>
 <1586966256-29548-5-git-send-email-christophe.kerello@st.com>
 <20200427194747.224a2402@xps13>
 <40a9bac7-9ed4-b781-f2c2-2d90b4e82749@denx.de>
 <20200427200848.722f4c56@xps13>
 <3527f3b8-225d-6e5a-dd8a-0421d475f70b@denx.de>
 <20200427220806.13741ec0@xps13>
From: Marek Vasut <marex@denx.de>
Message-ID: <456b04f5-4ed7-6f3f-b0e6-9276bea09b50@denx.de>
Date: Mon, 27 Apr 2020 22:10:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200427220806.13741ec0@xps13>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_131041_933480_94DB7D39 
X-CRM114-Status: GOOD (  16.90  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Christophe Kerello <christophe.kerello@st.com>, vigneshr@ti.com,
 tony@atomide.com, richard@nod.at, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-mtd@lists.infradead.org, lee.jones@linaro.org,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 4/27/20 10:08 PM, Miquel Raynal wrote:
> Hi Marek,
> 
> Marek Vasut <marex@denx.de> wrote on Mon, 27 Apr 2020 21:46:44 +0200:
> 
>> On 4/27/20 8:08 PM, Miquel Raynal wrote:
>> [...]
>>>>>>  	/* FMC2 init routine */
>>>>>>  	stm32_fmc2_init(fmc2);
>>>>>> @@ -1997,7 +2001,7 @@ static int stm32_fmc2_probe(struct platform_device *pdev)
>>>>>>  	/* Scan to find existence of the device */
>>>>>>  	ret = nand_scan(chip, nand->ncs);
>>>>>>  	if (ret)
>>>>>> -		goto err_scan;
>>>>>> +		goto err_dma_setup;
>>>>>>  
>>>>>>  	ret = mtd_device_register(mtd, NULL, 0);
>>>>>>  	if (ret)
>>>>>> @@ -2010,7 +2014,7 @@ static int stm32_fmc2_probe(struct platform_device *pdev)
>>>>>>  err_device_register:
>>>>>>  	nand_cleanup(chip);
>>>>>>  
>>>>>> -err_scan:
>>>>>> +err_dma_setup:
>>>>>>  	if (fmc2->dma_ecc_ch)
>>>>>>  		dma_release_channel(fmc2->dma_ecc_ch);
>>>>>>  	if (fmc2->dma_tx_ch)
>>>>>> @@ -2021,6 +2025,7 @@ static int stm32_fmc2_probe(struct platform_device *pdev)
>>>>>>  	sg_free_table(&fmc2->dma_data_sg);
>>>>>>  	sg_free_table(&fmc2->dma_ecc_sg);
>>>>>>  
>>>>>> +err_clk_disable:
>>>>>>  	clk_disable_unprepare(fmc2->clk);
>>>>>>  
>>>>>>  	return ret;    
>>>>>
>>>>> I didn't spot it during my earlier reviews but I really prefer using
>>>>> labels explaining what you do than having the same name of the function
>>>>> which failed. This way you don't have to rework the error path when
>>>>> you handle an additional error.
>>>>>
>>>>> So, would you mind doing this in two steps:
>>>>>
>>>>> 1/
>>>>> Replace
>>>>>
>>>>>     err_scan:
>>>>>
>>>>> with, eg.
>>>>>
>>>>>     release_dma_objs:    
>>>>
>>>> The ^err_ prefix in failpath labels is useful, since it's easily
>>>> possible to match on it with regexes ; not so much on arbitrary label name.  
>>>
>>> I guess so, but is it actually useful to catch labels in a regex? (real
>>> question)  
>>
>> I find it useful to have a unified way to find those labels, e.g.
>> err_because_foo:
>> err_because_bar:
>> err_last_one:
>> is much nicer than:
>> foo_failed:
>> bar_also_failed:
>> its_total_randomness:
> 
> My point being, Christophe, you can use err_ as a prefix but I think
> it's better to use:
> 
>     err_do_this_cleanup
> 
> than
> 
>    err_this_failed

That's fine either way.

>>> Any way I suppose catching ":\n" is already a good approximation to
>>> find labels?  
>>
>> Not very practical with git grep (^err.*: works nicely though)
> 
> I suppose ^.*:$ would work the same ;)

Try and see how much other irrelevant stuff that sucks in ;-)

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
