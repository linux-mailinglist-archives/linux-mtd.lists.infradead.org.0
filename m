Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D30121B72A5
	for <lists+linux-mtd@lfdr.de>; Fri, 24 Apr 2020 13:07:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=72D56JEqmc0D2rGJ6mJTq5hD0hraTBo3EevPggHRdtI=; b=ujLZOtI6xe007t
	cBfeIYyYb/VebkMSgV4j6zlFN6fA23UaFCobMhoBWUjKB8CkNYKjjq9Xui5xN+kP3y19XQjELP3Xe
	C1DDk0NE7yenvwvTmWBwfYKm7Iu/qCqkJO04CrElI29KHE4njdYpNHWN7bxWHyluBg3BCyr21b2Mx
	TDifES7ZP8BJk/McHroYhhymgtAu/iW3HJU/oVZxJ/SPGKLwTQQjWWKq2pAY7F7/2q8Vpd3WM3eHO
	qCjg6xlS1uwaAlBJ2tDhPCesfHg8LzHggSUYoSLGp9JAxJexcXkGfWJmyn78mfqwWFdrnMQLTiXRr
	4GKlV6EuojdRduu+pFPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRwAa-0000xi-8S; Fri, 24 Apr 2020 11:06:56 +0000
Received: from mail-out.m-online.net ([212.18.0.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRwAQ-0000wp-Ha
 for linux-mtd@lists.infradead.org; Fri, 24 Apr 2020 11:06:48 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 497rw31JCtz1rvy6;
 Fri, 24 Apr 2020 13:06:43 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 497rw26Slqz1qrwY;
 Fri, 24 Apr 2020 13:06:42 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id 0iaOQviYJv_e; Fri, 24 Apr 2020 13:06:41 +0200 (CEST)
X-Auth-Info: WvWMMq5G9rT0EAZF7CsY2otKmcZZkujTKXBCzYD9TsA=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Fri, 24 Apr 2020 13:06:41 +0200 (CEST)
Subject: Re: [PATCH v2 02/12] mfd: stm32-fmc2: add STM32 FMC2 controller driver
To: Lee Jones <lee.jones@linaro.org>
References: <1586966256-29548-1-git-send-email-christophe.kerello@st.com>
 <1586966256-29548-3-git-send-email-christophe.kerello@st.com>
 <20200424074517.GN3612@dell> <8b625f1c-9ded-c07a-a20e-8cd44c1ca46d@denx.de>
 <20200424105053.GC8414@dell>
From: Marek Vasut <marex@denx.de>
Message-ID: <e5e6c279-28d0-f423-aa6d-5c7aca563352@denx.de>
Date: Fri, 24 Apr 2020 13:06:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200424105053.GC8414@dell>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_040646_881776_C3E422F6 
X-CRM114-Status: GOOD (  25.13  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.10 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.10 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Christophe Kerello <christophe.kerello@st.com>, vigneshr@ti.com,
 tony@atomide.com, richard@nod.at, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 4/24/20 12:50 PM, Lee Jones wrote:
> On Fri, 24 Apr 2020, Marek Vasut wrote:
> 
>> On 4/24/20 9:45 AM, Lee Jones wrote:
>>> On Wed, 15 Apr 2020, Christophe Kerello wrote:
>>>
>>>> The driver adds the support for the STMicroelectronics FMC2 controller
>>>> found on STM32MP SOCs.
>>>>
>>>> The FMC2 functional block makes the interface with: synchronous and
>>>> asynchronous static memories (such as PSNOR, PSRAM or other
>>>> memory-mapped peripherals) and NAND flash memories.
>>>>
>>>> Signed-off-by: Christophe Kerello <christophe.kerello@st.com>
>>>> ---
>>>> Changes in v2:
>>>>  - remove ops from stm32_fmc2 structure
>>>>  - add 2 APIs to manage FMC2 enable/disable
>>>>  - add 2 APIs to manage FMC2 NWAIT shared signal
>>>>
>>>>  drivers/mfd/Kconfig            |  12 +++
>>>>  drivers/mfd/Makefile           |   1 +
>>>>  drivers/mfd/stm32-fmc2.c       | 136 +++++++++++++++++++++++++
>>>>  include/linux/mfd/stm32-fmc2.h | 225 +++++++++++++++++++++++++++++++++++++++++
>>>>  4 files changed, 374 insertions(+)
>>>>  create mode 100644 drivers/mfd/stm32-fmc2.c
>>>>  create mode 100644 include/linux/mfd/stm32-fmc2.h
>>>>
>>>> diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
>>>> index 2b20329..5260582 100644
>>>> --- a/drivers/mfd/Kconfig
>>>> +++ b/drivers/mfd/Kconfig
>>>> @@ -1922,6 +1922,18 @@ config MFD_ROHM_BD71828
>>>>  	  Also included is a Coulomb counter, a real-time clock (RTC), and
>>>>  	  a 32.768 kHz clock gate.
>>>>  
>>>> +config MFD_STM32_FMC2
>>>> +	tristate "Support for FMC2 controllers on STM32MP SoCs"
>>>> +	depends on MACH_STM32MP157 || COMPILE_TEST
>>>> +	select MFD_CORE
>>>> +	select REGMAP
>>>> +	select REGMAP_MMIO
>>>> +	help
>>>> +	  Select this option to enable STM32 FMC2 driver used for FMC2 External
>>>> +	  Bus Interface controller and FMC2 NAND flash controller. This driver
>>>> +	  provides core support for the STM32 FMC2 controllers, in order to use
>>>> +	  the actual functionality of the device other drivers must be enabled.
>>>
>>> Not sure how many times I have to say this before people stop
>>> attempting to pass these kinds of relationships off as MFDs:
>>>
>>> A memory device and its bus is not an MFD.  In a similar vain to the
>>> thousands of USB, I2C, SPI, PCI and the like devices that aren't MFDs
>>> either.
>>>
>>> Please find another way to associate your device with its bus.
>>
>> This FMC2 is however an IP which can either operate external devices
>> (like ethernet chip on this parallel bus) or external flashes (like NOR
>> and NAND chips).
> 
> I'm sure that it *can*.  Although that's not its main purpose.

I use it to operate KSZ8851-16MLL ethernet chip, which has async bus
interface. Linux just didn't have support for that mode of operation
thus far and the FMC was used to operate NANDs and NORs only. This
series, or rather, the first three patches in this series, add support
for operating other bus devices, like this ethernet controller.

> The
> clue is in the nomenclature ("Flexible *Memory* Controller").  Nor is
> it how the device is being used in this submission:
> 
>   "The FMC2 functional block makes the interface with: synchronous and
>    asynchronous static memories (such as PSNOR, PSRAM or other
>    memory-mapped peripherals) and NAND flash memories."
> 
> As I mentioned, this is just another memory device and its bus.

I don't think it's _just_ a memory controller, it's more universal than
that, see above. Note that SRAM interface basically boils down to
anything which has external parallel bus, e.g. Davicom DM9000, that
KSZ8851-16MLL etc.

>> Can you provide a suggestion how this should be handled, if not as MFD?
>> It seems to me, that this is a Multi-Function Device .
> 
> Simply move it into the MTD or Memory subsystems and set up the
> dependencies via Kconfig.
> 
>> If this discussion is a recurring topic, is there some documentation
>> which explains how such devices should be handled ?
> 
> Not that I'm aware of.

I see.

-- 
Best regards,
Marek Vasut

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
