Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A378574C
	for <lists+linux-mtd@lfdr.de>; Thu,  8 Aug 2019 02:43:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=72+T2+upyHi4Z9APQT4lvY2xoomN+VrIV93FlzAAYhc=; b=cao33Ps2fE4qAOOo8jd864LaY
	QMt6fn4QP0wwqXg8F8QM4zcg56oMxkC+2/mmefjHAPBEGpCpQPRBWEs6XLcns2sn/E9NrjeVYDrOv
	uEjXrxxXplOELQsJWUmgajY4HylAsZ6690YPJXYiAg9puSBlc1NgLtYf0egETnJsSvD/yZCxJGtyq
	FXsPf2BthaLezL6D/psOzTkQtkHer7Gd1xVdQI1zg7Z8UYY4Oc18ng5rAUNfGuOqXKkb80uS9KHBv
	GilYSzYwytVzxdLDcSLimEEmDyfUt5MdpLoTav5+Qs9VPBGBr2q0U8E4+88cLD7Vy4rmPYPj95Z1Y
	bsykkedbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvWWt-00031J-Gl; Thu, 08 Aug 2019 00:43:43 +0000
Received: from icp-osb-irony-out5.external.iinet.net.au ([203.59.1.221])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvWWd-00030y-Ac
 for linux-mtd@lists.infradead.org; Thu, 08 Aug 2019 00:43:29 +0000
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2AeAAAZb0td/zXSMGcNWRkBAQEBAQE?=
 =?us-ascii?q?BAQEBAQEHAQEBAQEBgWeEM4QekBYBAQEBAQaBCQglg2eGAI84gWcJAQEBAQE?=
 =?us-ascii?q?BAQEBNwEBhD8CgnU4EwEEAQEBBAEBAgEJAYVShhkBAQEDIwQRQRALDQsCAiY?=
 =?us-ascii?q?CAlcGDQYCAQGDHoF3qxJxfzMahS+DOoFJgQwogWOKGHiBB4ERJwyCXz6EEQE?=
 =?us-ascii?q?SAQODJ4JYBIwnIIhGgS+UcAmCHpQdBhuNXQOKUqdQgQhxMxoIKAiDJ4FLgQM?=
 =?us-ascii?q?XjjNgjGaCQwEB?=
X-IPAS-Result: =?us-ascii?q?A2AeAAAZb0td/zXSMGcNWRkBAQEBAQEBAQEBAQEHAQEBA?=
 =?us-ascii?q?QEBgWeEM4QekBYBAQEBAQaBCQglg2eGAI84gWcJAQEBAQEBAQEBNwEBhD8Cg?=
 =?us-ascii?q?nU4EwEEAQEBBAEBAgEJAYVShhkBAQEDIwQRQRALDQsCAiYCAlcGDQYCAQGDH?=
 =?us-ascii?q?oF3qxJxfzMahS+DOoFJgQwogWOKGHiBB4ERJwyCXz6EEQESAQODJ4JYBIwnI?=
 =?us-ascii?q?IhGgS+UcAmCHpQdBhuNXQOKUqdQgQhxMxoIKAiDJ4FLgQMXjjNgjGaCQwEB?=
X-IronPort-AV: E=Sophos;i="5.64,358,1559491200"; d="scan'208";a="243956099"
Received: from unknown (HELO [10.44.0.22]) ([103.48.210.53])
 by icp-osb-irony-out5.iinet.net.au with ESMTP; 08 Aug 2019 08:43:17 +0800
Subject: Re: GPMI iMX6ull timeout on DMA
To: Miquel Raynal <miquel.raynal@bootlin.com>
References: <89ae32a0-9b19-4735-90eb-4ffa22aad704@kernel.org>
 <20190729103655.095297a2@xps13>
 <18734a1d-17d9-d390-58ef-ad8ca1be925f@kernel.org>
 <20190729144730.4a58de32@xps13>
 <17b49e7d-ff63-315f-cf12-3474f7228c6d@kernel.org>
 <781dd4e6-a694-c3e1-ee13-9c5c51598623@kernel.org>
 <53cb8db7-bcf8-ee7c-84ee-59a14a04aad9@kernel.org>
 <20190730103822.7576645d@xps13>
 <0a6afd79-d5ca-24da-a62c-11146a3522f6@kernel.org>
 <20190731082823.6284f5a9@collabora.com>
 <e47b1de2-501a-9a1f-e980-48d2c396811a@kernel.org>
 <20190802145109.00c4a4eb@collabora.com>
 <b739696d-bb1d-bb04-cd45-3019712e29ad@kernel.org>
 <20190807180552.4d85fe28@xps13>
From: Greg Ungerer <gerg@kernel.org>
Message-ID: <4e9761d0-b5f3-8531-3523-06d7a2ae028c@kernel.org>
Date: Thu, 8 Aug 2019 10:43:15 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190807180552.4d85fe28@xps13>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_174327_629667_51BE15E6 
X-CRM114-Status: GOOD (  14.90  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [203.59.1.221 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: s.hauer@pengutronix.de, Boris Brezillon <boris.brezillon@collabora.com>,
 linux-mtd@lists.infradead.org,
 Michael Nazzareno Trimarchi <michael@amarulasolutions.com>,
 Boris Brezillon <bbrezillon@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Miquel,

On 8/8/19 2:05 am, Miquel Raynal wrote:
> Greg Ungerer <gerg@kernel.org> wrote on Mon, 5 Aug 2019 15:51:05 +1000:
>> On 2/8/19 10:51 pm, Boris Brezillon wrote:
>>> On Fri, 2 Aug 2019 22:34:57 +1000
>>> Greg Ungerer <gerg@kernel.org> wrote:
>>>> On 31/7/19 4:28 pm, Boris Brezillon wrote:
>>>>> On Wed, 31 Jul 2019 12:05:44 +1000
>>>>> Greg Ungerer <gerg@kernel.org> wrote:
>>>>>> On 30/7/19 6:38 pm, Miquel Raynal wrote:
>>>>>>> Greg Ungerer <gerg@kernel.org> wrote on Tue, 30 Jul 2019 16:06:55 +1000:
>>>>>>>> On 30/7/19 10:41 am, Greg Ungerer wrote:
>>>>>>>>> On 30/7/19 10:28 am, Greg Ungerer wrote:
>>>>>>>>>> On 29/7/19 10:47 pm, Miquel Raynal wrote:
>>>>>>>>>>> Greg Ungerer <gerg@kernel.org> wrote on Mon, 29 Jul 2019 22:33:56 +1000:
>>>>>>>>>>>> On 29/7/19 6:36 pm, Miquel Raynal wrote:
>>>>>>>>>>>>> Greg Ungerer <gerg@kernel.org> wrote on Mon, 29 Jul 2019 16:41:51 +1000:
>>>>>>>>> [snip]
>>>>>> Note that this was generated on a normal boot up (not failure).
>>>>>
>>>>> The values looks good. Can you try with the below diff applied?
>>>>> --->8---
>>>>> diff --git a/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c b/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
>>>>> index 334fe3130285..9771f6a82abe 100644
>>>>> --- a/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
>>>>> +++ b/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
>>>>> @@ -721,12 +721,10 @@ static void gpmi_nfc_apply_timings(struct gpmi_nand_data *this)
>>>>>            writel(hw->ctrl1n, gpmi_regs + HW_GPMI_CTRL1_SET);
>>>>>     >>>           /* Wait 64 clock cycles before using the GPMI after enabling the DLL */
>>>>> -       dll_wait_time_us = USEC_PER_SEC / hw->clk_rate * 64;
>>>>> -       if (!dll_wait_time_us)
>>>>> -               dll_wait_time_us = 1;
>>>>> +       dll_wait_time_us = DIV_ROUND_UP(USEC_PER_SEC * 64, hw->clk_rate);
>>>>>     >>>           /* Wait for the DLL to settle. */
>>>>> -       udelay(dll_wait_time_us);
>>>>> +       usleep_range(dll_wait_time_us, dll_wait_time_us * 10);
>>>>>     }
>>>>>     >>>    static int gpmi_setup_data_interface(struct nand_chip *chip, int chipnr,
>>>>
>>>> Eventually it failed, in the same way with with same errors.
>>>> Took quite a while, over 600 boot cycles.
>>>>
>>>> Note also that I had to hand merge the changes, since in 5.1.14 that
>>>> gpmi_nfc_apply_timings() is in gpmi-lib.c. But it was trivial to do.
>>>
>>> Oh well. I guess the next thing to do would be to dump the timing regs
>>> and clk rate that are set by the bootloader (before the driver override
>>> them) or those applied by an older kernel (one that didn't have that
>>> issue).
>>
>> Is this useful?
>>
>> With attached patch, I get the following dump of the timing
>> settings in use:
>>
>> ...
>> drivers/mtd/nand/raw/gpmi-nand/gpmi-lib.c(490): gpmi_nfc_apply_timings()
>>     HW_GPMI_TIMING0=0x00010203  (calculated=0x00020101)
>>     HW_GPMI_TIMING1=0x00000000  (calculated=0x60000000)
>>     HW_GPMI_CTRL1_SET=0x01c4000c  (calculated=0x00000000)
>>     r->clock[0]=22000000  (calculated=22000000)
>> random: fast init done
>> nand: device found, Manufacturer ID: 0x2c, Chip ID: 0xda
>> nand: Micron MT29F2G08ABAEAWP
>> nand: 256 MiB, SLC, erase size: 128 KiB, page size: 2048, OOB size: 64
>> drivers/mtd/nand/raw/gpmi-nand/gpmi-lib.c(490): gpmi_nfc_apply_timings()
>>     HW_GPMI_TIMING0=0x00010203  (calculated=0x00020101)
>>     HW_GPMI_TIMING1=0x00000000  (calculated=0xb0000000)
>>     HW_GPMI_CTRL1_SET=0x01c4000c  (calculated=0x00000000)
>>     r->clock[0]=22000000  (calculated=22000000)
>> drivers/mtd/nand/raw/gpmi-nand/gpmi-lib.c(490): gpmi_nfc_apply_timings()
>>     HW_GPMI_TIMING0=0x00010203  (calculated=0x00010101)
>>     HW_GPMI_TIMING1=0x00000000  (calculated=0xe0000000)
>>     HW_GPMI_CTRL1_SET=0x01c4000c  (calculated=0x00c28000)
>>     r->clock[0]=22000000  (calculated=100000000)
> 
> Why are the registers not updated? Is it the same situation when we
> get all the failures?

As per the patch that was attached to that email. The setting of the
registers and clock was "#if 0" out so you could see what the
power-up/boot-loader settings are. Those settings work reliably
with no nand failures. In between running various tests I have
left my hardware boot cycle testing with those settings. I don't
have an exact number but it has probably run at least 100 hours
and tens of thousands of boots with no problem using those.

Or am I misunderstanding your question?

Regards
Greg


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
