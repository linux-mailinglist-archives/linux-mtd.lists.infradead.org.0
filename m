Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C29AA1B48E3
	for <lists+linux-mtd@lfdr.de>; Wed, 22 Apr 2020 17:38:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qOjm2XLBUAbeLN3oOWMIlKw0TWxceGukFg3K92khQ3E=; b=OJYLbJEIqKy9KV
	acz2jd/O1/ZrF2oRSppSO6rrxMycnQvYjBBIeCqS/M4qag1fRbr+fTRvipAnkcokqeEb00w2Zo1qO
	jwVy7UBDpXAImEyywjAR8M+5pPzs6Mv5QmVsBWwXwT+GY2l8Lz540ulz2M0bf9rWr7gagSgyxFdZw
	yKeUbYQ12ofr71fUqLVE8/ZrIsTC2ko3BOXw5IXfuNOdwcGsNOTyng7uQgxGH68+UusnPL3Gbzh8y
	vAZzha8QX2jzSMsnU9oUjQyzR1YPpbrbs3dHRbBplbP5bBjFlellUCkLtNSOA8hyFm+wLJn9C+W0s
	dXjf6AVeBYmWbWae3qXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRHRv-0006P8-As; Wed, 22 Apr 2020 15:38:07 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRHRg-0006Kx-Kb
 for linux-mtd@lists.infradead.org; Wed, 22 Apr 2020 15:37:57 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 496l1q1PrBz1qs3y;
 Wed, 22 Apr 2020 17:37:51 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 496l1q0Hhfz1qqkk;
 Wed, 22 Apr 2020 17:37:51 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id L9jfpJQAEmpH; Wed, 22 Apr 2020 17:37:48 +0200 (CEST)
X-Auth-Info: e0W/HInL22tuuvHdriLQ2n8QzAPQDVvOM5CA7DC8bMM=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Wed, 22 Apr 2020 17:37:47 +0200 (CEST)
Subject: Re: [PATCH v2] mtd: rawnand: denali: add more delays before latching
 incoming data
To: Miquel Raynal <miquel.raynal@bootlin.com>
References: <20200317071821.9916-1-yamada.masahiro@socionext.com>
 <6093dfab-1e9e-824a-b639-33d340b377f9@denx.de>
 <20200422173600.304c7cf2@xps13>
From: Marek Vasut <marex@denx.de>
Message-ID: <95757315-9cf6-fbd8-af2d-3ac39753a757@denx.de>
Date: Wed, 22 Apr 2020 17:37:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200422173600.304c7cf2@xps13>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_083752_996056_45C0AADD 
X-CRM114-Status: GOOD (  15.56  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
 linux-mtd@lists.infradead.org, Vignesh Raghavendra <vigneshr@ti.com>,
 linux-kernel@vger.kernel.org, Richard Weinberger <richard@nod.at>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 4/22/20 5:36 PM, Miquel Raynal wrote:
> Hi Marek,
> 
> Marek Vasut <marex@denx.de> wrote on Wed, 22 Apr 2020 17:29:53 +0200:
> 
>> On 3/17/20 8:18 AM, Masahiro Yamada wrote:
>>> The Denali IP have several registers to specify how many clock cycles
>>> should be waited between falling/rising signals. You can improve the
>>> NAND access performance by programming these registers with optimized
>>> values.
>>>
>>> Because struct nand_sdr_timings represents the device requirement
>>> in pico seconds, denali_setup_data_interface() computes the register
>>> values by dividing the device timings with the clock period.
>>>
>>> Marek Vasut reported this driver in the latest kernel does not work
>>> on his SOCFPGA board. (The on-board NAND chip is mode 5)
>>>
>>> The suspicious parameter is acc_clks, so this commit relaxes it.
>>>
>>> The Denali NAND Flash Memory Controller User's Guide describes this
>>> register as follows:
>>>
>>>   acc_clks
>>>     signifies the number of bus interface clk_x clock cycles,
>>>     controller should wait from read enable going low to sending
>>>     out a strobe of clk_x for capturing of incoming data.
>>>
>>> Currently, acc_clks is calculated only based on tREA, the delay on the
>>> chip side. This does not include additional delays that come from the
>>> data path on the PCB and in the SoC, load capacity of the pins, etc.
>>>
>>> This relatively becomes a big factor on faster timing modes like mode 5.
>>>
>>> Before supporting the ->setup_data_interface() hook (e.g. Linux 4.12),
>>> the Denali driver hacks acc_clks in a couple of ways [1] [2] to support
>>> the timing mode 5.
>>>
>>> We would not go back to the hard-coded acc_clks, but we need to include
>>> this factor into the delay somehow. Let's say the amount of the additional
>>> delay is 10000 pico sec.
>>>
>>> In the new calculation, acc_clks is determined by timings->tREA_max +
>>> data_setup_on_host.
>>>
>>> Also, prolong the RE# low period to make sure the data hold is met.
>>>
>>> Finally, re-center the data latch timing for extra safety.
>>>
>>> [1] https://github.com/torvalds/linux/blob/v4.12/drivers/mtd/nand/denali.c#L276
>>> [2] https://github.com/torvalds/linux/blob/v4.12/drivers/mtd/nand/denali.c#L282
>>>
>>> Reported-by: Marek Vasut <marex@denx.de>
>>> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>  
>>
>> I tested it on the AV SoCFPGA, this seems to work, so feel free to apply.
> 
> 
> Great! Thanks a lot for testing, would you mind sending your Tested-by?

Lightly
Tested-by: Marek Vasut <marex@denx.de>

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
