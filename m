Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 202631BAE9D
	for <lists+linux-mtd@lfdr.de>; Mon, 27 Apr 2020 22:01:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gRWsHCIAhirjJvyY6zEM5jfvh6fVdrkKJ2i5mYfCc+c=; b=uzonXVRg1Bd6zq
	JIAeY8vB7qrGrIlSdDxmfCKSGJhUYfvjEx2sHN56oIsf/epOk6NK36omN7ybN61SyoIqs/0RE90Xe
	ft7ROZBEZJUx2TddhpUmLUS9igRWaIS7AhN/B5jhzQJmtUDFQ6iJru5F4FDsQ4gCIIJNJrCj5S4PX
	pghIgoC2o1smnoUCHzylU/cJR/cZbpWxfkLZYoep2AEuVWTFvEdm04V27BtNc8ZUIN9eRIMBBICBY
	4rVIGyQl7SYB42FX5InSYjpUxh70HOBswoBcMAWV75tr7dsAY2hx3QNQaiXsRDthy5Co66BCg79+I
	H8sKpUS7GcTD2qJUgihg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT9w7-00052t-Jz; Mon, 27 Apr 2020 20:01:03 +0000
Received: from mail-out.m-online.net ([212.18.0.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT9vv-00051t-Bn
 for linux-mtd@lists.infradead.org; Mon, 27 Apr 2020 20:00:53 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 499wcw00Whz1s0RZ;
 Mon, 27 Apr 2020 22:00:47 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 499wcv5FBWz1r5QD;
 Mon, 27 Apr 2020 22:00:47 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id UwhZWkhUHdp5; Mon, 27 Apr 2020 22:00:45 +0200 (CEST)
X-Auth-Info: JMpryoad1q4gMYykW9V1aNyztGd9wWfmqkL03f1OojI=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Mon, 27 Apr 2020 22:00:45 +0200 (CEST)
Subject: Re: [PATCH v2 04/12] mtd: rawnand: stm32_fmc2: manage all errors
 cases at probe time
To: Miquel Raynal <miquel.raynal@bootlin.com>
References: <1586966256-29548-1-git-send-email-christophe.kerello@st.com>
 <1586966256-29548-5-git-send-email-christophe.kerello@st.com>
 <20200427194747.224a2402@xps13>
 <40a9bac7-9ed4-b781-f2c2-2d90b4e82749@denx.de>
 <20200427200848.722f4c56@xps13>
From: Marek Vasut <marex@denx.de>
Message-ID: <3527f3b8-225d-6e5a-dd8a-0421d475f70b@denx.de>
Date: Mon, 27 Apr 2020 21:46:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200427200848.722f4c56@xps13>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_130051_701616_FBA30804 
X-CRM114-Status: GOOD (  17.11  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.10 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

On 4/27/20 8:08 PM, Miquel Raynal wrote:
[...]
>>>>  	/* FMC2 init routine */
>>>>  	stm32_fmc2_init(fmc2);
>>>> @@ -1997,7 +2001,7 @@ static int stm32_fmc2_probe(struct platform_device *pdev)
>>>>  	/* Scan to find existence of the device */
>>>>  	ret = nand_scan(chip, nand->ncs);
>>>>  	if (ret)
>>>> -		goto err_scan;
>>>> +		goto err_dma_setup;
>>>>  
>>>>  	ret = mtd_device_register(mtd, NULL, 0);
>>>>  	if (ret)
>>>> @@ -2010,7 +2014,7 @@ static int stm32_fmc2_probe(struct platform_device *pdev)
>>>>  err_device_register:
>>>>  	nand_cleanup(chip);
>>>>  
>>>> -err_scan:
>>>> +err_dma_setup:
>>>>  	if (fmc2->dma_ecc_ch)
>>>>  		dma_release_channel(fmc2->dma_ecc_ch);
>>>>  	if (fmc2->dma_tx_ch)
>>>> @@ -2021,6 +2025,7 @@ static int stm32_fmc2_probe(struct platform_device *pdev)
>>>>  	sg_free_table(&fmc2->dma_data_sg);
>>>>  	sg_free_table(&fmc2->dma_ecc_sg);
>>>>  
>>>> +err_clk_disable:
>>>>  	clk_disable_unprepare(fmc2->clk);
>>>>  
>>>>  	return ret;  
>>>
>>> I didn't spot it during my earlier reviews but I really prefer using
>>> labels explaining what you do than having the same name of the function
>>> which failed. This way you don't have to rework the error path when
>>> you handle an additional error.
>>>
>>> So, would you mind doing this in two steps:
>>>
>>> 1/
>>> Replace
>>>
>>>     err_scan:
>>>
>>> with, eg.
>>>
>>>     release_dma_objs:  
>>
>> The ^err_ prefix in failpath labels is useful, since it's easily
>> possible to match on it with regexes ; not so much on arbitrary label name.
> 
> I guess so, but is it actually useful to catch labels in a regex? (real
> question)

I find it useful to have a unified way to find those labels, e.g.
err_because_foo:
err_because_bar:
err_last_one:
is much nicer than:
foo_failed:
bar_also_failed:
its_total_randomness:

> Any way I suppose catching ":\n" is already a good approximation to
> find labels?

Not very practical with git grep (^err.*: works nicely though)

>> btw would it make sense to split the first three patches of this series
>> into a separate series ? This rawnand part seems more like an unrelated
>> cleanup.
> 
> As it seems that the MFD discussion can take longer, then I would say
> yes, at least for the cleanup/misc changes part.
Right

-- 
Best regards,
Marek Vasut

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
