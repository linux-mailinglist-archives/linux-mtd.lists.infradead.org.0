Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBA3C1C3138
	for <lists+linux-mtd@lfdr.de>; Mon,  4 May 2020 03:54:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jIXDU0hpDm9qA0+54uBojU+W3DYUUf23b9OtAeQGY9U=; b=dpKBL1pspSNX7e
	Gutu1WohpVgX5zuCK2RgFBevlqxb096uug+Wd1GJMmAwkecATV9O2RDbOmvCP1e4YG0t6HeUwbxbc
	nKEbHRagdOU2ZGkbNOZhJePbj98osCAyP3QS2J1wmUaH9U7rsw1WByd/wnKQc2XnwH4UhMk3Hmvtq
	W3Jl5X/R99el629d/XgxYs5UQa9WNbyWwONVkysi52gPAuu39fkpGXQQhaz5yqMd3JY3NjY5WmLLo
	cWeEs5O3dCMA5fKIZMUFXe1d/pSLXUuVqsxvBpfXHmjJLutYHcB/dsltZtDMUMfeMjQLecr7Fef4Z
	QqCeW+rmOV02n3qmta1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVQJl-0001zI-WC; Mon, 04 May 2020 01:54:50 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVQJe-0001yr-LB
 for linux-mtd@lists.infradead.org; Mon, 04 May 2020 01:54:44 +0000
IronPort-SDR: mYZ5wMzQQKgQVl8/qtvGDICt/gSiaP3O/Hncu4s5pg5eMWIOB3m932U5ahqDJubeonucdF37u7
 Gl6rMjzGtOKQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2020 18:54:41 -0700
IronPort-SDR: +K6sCkShmZESFUbbo2klA7BEdPF5P/FaeDoasO6Y2gHWSiiVI3NSo2It6Y6D5VPKZ2L0R5xHi+
 ImAPHKkfLjTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,350,1583222400"; d="scan'208";a="277393423"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga002.jf.intel.com with ESMTP; 03 May 2020 18:54:41 -0700
Received: from [10.214.154.10] (vramuthx-mobl1.gar.corp.intel.com
 [10.214.154.10])
 by linux.intel.com (Postfix) with ESMTP id DBD83580646;
 Sun,  3 May 2020 18:54:36 -0700 (PDT)
Subject: Re: [PATCH v4 2/2] mtd: rawnand: Add NAND controller support on Intel
 LGM SoC
To: Boris Brezillon <boris.brezillon@collabora.com>
References: <20200429104205.18780-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200429104205.18780-3-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200429162249.55d38ee8@collabora.com>
 <9d77c64c-d0f9-7a13-3391-d05bf458bdb1@linux.intel.com>
 <20200429164832.6800fc70@collabora.com>
 <2e83a2f7-853c-f0e2-f686-daf1e0649eae@linux.intel.com>
 <20200429173107.5c6d2f55@collabora.com>
 <1de9ba29-30f1-6829-27e0-6f141e9bb1e6@linux.intel.com>
 <20200430102114.29b6552f@collabora.com>
 <1df71cf7-4cae-4cd0-864c-0812bb2cc123@linux.intel.com>
 <20200430103658.4b0b979e@collabora.com>
 <1d5aec11-a7b5-01c2-6614-16e57c64511b@linux.intel.com>
 <20200430143600.27031639@collabora.com>
From: "Ramuthevar, Vadivel MuruganX"
 <vadivel.muruganx.ramuthevar@linux.intel.com>
Message-ID: <eed59a7a-b91d-84cd-add0-31e108d87e6f@linux.intel.com>
Date: Mon, 4 May 2020 09:54:35 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200430143600.27031639@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_185442_740747_09CA8ACB 
X-CRM114-Status: GOOD (  17.75  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
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
Reply-To: vadivel.muruganx.ramuthevar@linux.intel.com
Cc: cheol.yong.kim@intel.com, devicetree@vger.kernel.org,
 masonccyang@mxic.com.tw, anders.roxell@linaro.org, vigneshr@ti.com,
 arnd@arndb.de, hauke.mehrtens@intel.com, richard@nod.at,
 brendanhiggins@google.com, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, robh+dt@kernel.org, linux-mtd@lists.infradead.org,
 miquel.raynal@bootlin.com, tglx@linutronix.de, qi-ming.wu@intel.com,
 andriy.shevchenko@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Boris,

   Thank you very much for the review comments and giving inputs...

On 30/4/2020 8:36 pm, Boris Brezillon wrote:
> On Thu, 30 Apr 2020 17:07:03 +0800
> "Ramuthevar, Vadivel MuruganX"
> <vadivel.muruganx.ramuthevar@linux.intel.com> wrote:
> 
>>>>> The question is, is it the same value we have in nand_pa or it is
>>>>> different?
>>>>>       
>>>> Different address which is 0xE1400000 NAND_BASE_PHY address.
>>>
>>> Then why didn't you tell me they didn't match when I suggested to pass
>>
>> sorry, because you keep asking nand_pa after that only I realized that.
>>
>>> nand_pa? So now the question is, what does this address represent?
>>
>>                  EBU-MODULE
>>    _________     _______________________
>> |         |   |            |NAND CTRL  |
>> | FPI BUS |==>| CS0(0x174) | 0xE100    ( 0xE14/0xE1C) NAND_PHY_BASE
>> |_________|   |_CS1(0x17C)_|__________ |
>>
>> EBU_CONRTROLLER_BASE : 0xE0F0_0000
>> HSNAND_BASE: 0xE100_0000
>> NAND_CS0: 0xE140_0000
>> NAND_CS1: 0xE1C0_0000
>>
>> MEM_REGION_BASE_CS0: 0x17400 (internal to ebu controller )
>> MEM_REGION_BASE_CS1: 0x17C00
>>
> 
> Hm, I wonder if we shouldn't use a 'ranges' property to describe this
> address translation. Something like
> 
> 	ebu@xxx {
> 		ranges = <0x17400000 0xe1400000 0x1000>,
> 			 <0x17c00000 0xe1c00000 0x1000>;
> 		reg = <0x17400000>, <0x17c00000>;
> 		reg-names = "cs-0", "cs-1";
> 	}
> 
> The translated address (0xE1X00000) will be available in res->start,
> and the non-translated one (0x17X00000) can be retrieved with
> of_get_address(). All you'd have to do then would be calculate the
> mask:
> 
> 	mask = (translated_address & original_address) >> 22;
> 	num_comp_bits = fls(mask);
> 	WARN_ON(mask != GENMASK(num_comp_bits - 1, 0));
> 
> Which allows you to properly set the ADDR_SEL() register without
> relying on some hardcoded values:
> 
> 	writel(original_address | EBU_ADDR_SEL_REGEN |
> 	       EBU_ADDR_COMP_BITS(num_comp_bits),
> 	       ebu_host->ebu + EBU_ADDR_SEL(csid));
> 
> That's quite important if we want to merge the xway NAND driver with
> this one.

Thanks! , for the optimized and made it generic way, will update in the 
next patch-set.

Regards
Vadivel
> 

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
