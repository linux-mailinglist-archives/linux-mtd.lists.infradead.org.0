Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ED7A1B7C97
	for <lists+linux-mtd@lfdr.de>; Fri, 24 Apr 2020 19:22:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IeG8sl1hNL2eIMRTzm1CVVSz5nB/Q+dtw2XY6mQnVks=; b=p0WCe4+2+XC/jZ
	UYtWfhvvywK2F4DEOeZWGbTUeppnhLj6ZuTj0k0+LLQisJc/AZCJxrenkywJLFOV8I22AvkiQn63K
	8vQeEGjU+kMbwMgt+hqzChNHd8IilrOtsWZk/3EcTbPz7gDYwgJEhdAnN/Cfm2u9G8GZGsOx6Tlh/
	bSyC+ZY6mcqopv6+8k6pSVaSB8zsBlvWQsARbGo3uPYw2cwdP3jWP2y4StfcbBdcyqKBAE4/dO8iA
	DLmkQswWEqsqZIXCQZXepgaEAG4YS5kART18janGk/xnEHWwgjRKCvurxjmsUMjmsGeai0rv1hJ8H
	OyfHPOP08cnJWbLraFeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS22A-0003eP-5u; Fri, 24 Apr 2020 17:22:38 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS21z-0003dl-2N
 for linux-mtd@lists.infradead.org; Fri, 24 Apr 2020 17:22:29 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 231C62A3025;
 Fri, 24 Apr 2020 18:22:25 +0100 (BST)
Date: Fri, 24 Apr 2020 19:22:22 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Christophe Kerello <christophe.kerello@st.com>
Subject: Re: [PATCH v2 02/12] mfd: stm32-fmc2: add STM32 FMC2 controller driver
Message-ID: <20200424192222.28efd55f@collabora.com>
In-Reply-To: <b136632f-51ce-f72e-f145-1b6b4cba485c@st.com>
References: <1586966256-29548-1-git-send-email-christophe.kerello@st.com>
 <1586966256-29548-3-git-send-email-christophe.kerello@st.com>
 <20200424074517.GN3612@dell>
 <8b625f1c-9ded-c07a-a20e-8cd44c1ca46d@denx.de>
 <20200424105053.GC8414@dell>
 <e5e6c279-28d0-f423-aa6d-5c7aca563352@denx.de>
 <268ea231-eb4a-6144-c632-1bc8e9f21582@st.com>
 <20200424171412.5f65ff05@collabora.com>
 <b136632f-51ce-f72e-f145-1b6b4cba485c@st.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_102227_373838_594BE421 
X-CRM114-Status: GOOD (  35.48  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Marek Vasut <marex@denx.de>, mark.rutland@arm.com, vigneshr@ti.com,
 devicetree@vger.kernel.org, tony@atomide.com, richard@nod.at,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 Geert Uytterhoeven <geert@linux-m68k.org>, Lee Jones <lee.jones@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, 24 Apr 2020 18:42:59 +0200
Christophe Kerello <christophe.kerello@st.com> wrote:

> On 4/24/20 5:14 PM, Boris Brezillon wrote:
> > On Fri, 24 Apr 2020 13:47:34 +0200
> > Christophe Kerello <christophe.kerello@st.com> wrote:
> >   
> >> On 4/24/20 1:06 PM, Marek Vasut wrote:  
> >>> On 4/24/20 12:50 PM, Lee Jones wrote:  
> >>>> On Fri, 24 Apr 2020, Marek Vasut wrote:
> >>>>     
> >>>>> On 4/24/20 9:45 AM, Lee Jones wrote:  
> >>>>>> On Wed, 15 Apr 2020, Christophe Kerello wrote:
> >>>>>>     
> >>>>>>> The driver adds the support for the STMicroelectronics FMC2 controller
> >>>>>>> found on STM32MP SOCs.
> >>>>>>>
> >>>>>>> The FMC2 functional block makes the interface with: synchronous and
> >>>>>>> asynchronous static memories (such as PSNOR, PSRAM or other
> >>>>>>> memory-mapped peripherals) and NAND flash memories.
> >>>>>>>
> >>>>>>> Signed-off-by: Christophe Kerello <christophe.kerello@st.com>
> >>>>>>> ---
> >>>>>>> Changes in v2:
> >>>>>>>    - remove ops from stm32_fmc2 structure
> >>>>>>>    - add 2 APIs to manage FMC2 enable/disable
> >>>>>>>    - add 2 APIs to manage FMC2 NWAIT shared signal
> >>>>>>>
> >>>>>>>    drivers/mfd/Kconfig            |  12 +++
> >>>>>>>    drivers/mfd/Makefile           |   1 +
> >>>>>>>    drivers/mfd/stm32-fmc2.c       | 136 +++++++++++++++++++++++++
> >>>>>>>    include/linux/mfd/stm32-fmc2.h | 225 +++++++++++++++++++++++++++++++++++++++++
> >>>>>>>    4 files changed, 374 insertions(+)
> >>>>>>>    create mode 100644 drivers/mfd/stm32-fmc2.c
> >>>>>>>    create mode 100644 include/linux/mfd/stm32-fmc2.h
> >>>>>>>
> >>>>>>> diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
> >>>>>>> index 2b20329..5260582 100644
> >>>>>>> --- a/drivers/mfd/Kconfig
> >>>>>>> +++ b/drivers/mfd/Kconfig
> >>>>>>> @@ -1922,6 +1922,18 @@ config MFD_ROHM_BD71828
> >>>>>>>    	  Also included is a Coulomb counter, a real-time clock (RTC), and
> >>>>>>>    	  a 32.768 kHz clock gate.
> >>>>>>>    
> >>>>>>> +config MFD_STM32_FMC2
> >>>>>>> +	tristate "Support for FMC2 controllers on STM32MP SoCs"
> >>>>>>> +	depends on MACH_STM32MP157 || COMPILE_TEST
> >>>>>>> +	select MFD_CORE
> >>>>>>> +	select REGMAP
> >>>>>>> +	select REGMAP_MMIO
> >>>>>>> +	help
> >>>>>>> +	  Select this option to enable STM32 FMC2 driver used for FMC2 External
> >>>>>>> +	  Bus Interface controller and FMC2 NAND flash controller. This driver
> >>>>>>> +	  provides core support for the STM32 FMC2 controllers, in order to use
> >>>>>>> +	  the actual functionality of the device other drivers must be enabled.  
> >>>>>>
> >>>>>> Not sure how many times I have to say this before people stop
> >>>>>> attempting to pass these kinds of relationships off as MFDs:
> >>>>>>
> >>>>>> A memory device and its bus is not an MFD.  In a similar vain to the
> >>>>>> thousands of USB, I2C, SPI, PCI and the like devices that aren't MFDs
> >>>>>> either.
> >>>>>>
> >>>>>> Please find another way to associate your device with its bus.  
> >>>>>
> >>>>> This FMC2 is however an IP which can either operate external devices
> >>>>> (like ethernet chip on this parallel bus) or external flashes (like NOR
> >>>>> and NAND chips).  
> >>>>
> >>>> I'm sure that it *can*.  Although that's not its main purpose.  
> >>>
> >>> I use it to operate KSZ8851-16MLL ethernet chip, which has async bus
> >>> interface. Linux just didn't have support for that mode of operation
> >>> thus far and the FMC was used to operate NANDs and NORs only. This
> >>> series, or rather, the first three patches in this series, add support
> >>> for operating other bus devices, like this ethernet controller.
> >>>      
> >>>> The
> >>>> clue is in the nomenclature ("Flexible *Memory* Controller").  Nor is
> >>>> it how the device is being used in this submission:
> >>>>
> >>>>     "The FMC2 functional block makes the interface with: synchronous and
> >>>>      asynchronous static memories (such as PSNOR, PSRAM or other
> >>>>      memory-mapped peripherals) and NAND flash memories."
> >>>>
> >>>> As I mentioned, this is just another memory device and its bus.  
> >>>
> >>> I don't think it's _just_ a memory controller, it's more universal than
> >>> that, see above. Note that SRAM interface basically boils down to
> >>> anything which has external parallel bus, e.g. Davicom DM9000, that
> >>> KSZ8851-16MLL etc.
> >>>      
> >>>>> Can you provide a suggestion how this should be handled, if not as MFD?
> >>>>> It seems to me, that this is a Multi-Function Device .  
> >>>>
> >>>> Simply move it into the MTD or Memory subsystems and set up the
> >>>> dependencies via Kconfig.
> >>>>     
> >>>>> If this discussion is a recurring topic, is there some documentation
> >>>>> which explains how such devices should be handled ?  
> >>>>
> >>>> Not that I'm aware of.  
> >>>
> >>> I see.
> >>>     
> >>
> >> Hi Lee, Marek,
> >>
> >> I will move this source code in the FMC2 bus driver. I think that I
> >> should be able to manage the 2 controllers with 2 drivers (the FMC2 bus
> >> driver and the FMC2 raw NAND driver).  
> > 
> > FWIW, that's what I did for the Atmel EBI (External Bus Interface)
> > controller (see [1]).
> > 
> > [1]https://elixir.bootlin.com/linux/v5.6/source/drivers/memory/atmel-ebi.c
> >   
> 
> Hi Boris,
> 
> Thanks for your help.
> 
> I was thinking about the bindings and I think that the bindings below 
> are close to what has been done for Atmel EBI/Raw NAND bindings (in 
> terms of structure of bindings if I have well understood).
> I think that these proposed bindings are very close to the first 
> proposed version (V1/V2).

Yep, makes sense to me, just one minor comment.

> 
>      fmc@58002000 {
>        #address-cells = <2>;
>        #size-cells = <1>;
>        compatible = "st,stm32mp1-fmc2";
>        reg = <0x58002000 0x1000>;
>        clocks = <&rcc FMC_K>;
>        resets = <&rcc FMC_R>;
> 
>        ranges = <0 0 0x60000000 0x4000000>, /* EBI bank 1 */
>                 <1 0 0x64000000 0x4000000>, /* EBI bank 2 */
>                 <2 0 0x68000000 0x4000000>, /* EBI bank 3 */
>                 <3 0 0x6c000000 0x4000000>, /* EBI bank 4 */
>                 <4 0 0x80000000 0x4000000>, /* NAND common memory space */
>                 <5 0 0x88000000 0x4000000>; /* NAND attribute memory 
> space */
> 	
>        psram@0 {
>          compatible = "mtd-ram";
>          reg = <0 0x00000000 0x100000>;
>          bank-width = <2>;
> 
>          st,fmc2_ebi_cs_transaction_type = <1>;
>          st,fmc2_ebi_cs_address_setup = <60>;
>          st,fmc2_ebi_cs_data_setup = <30>;
>          st,fmc2_ebi_cs_bus_turnaround = <5>;

Not sure what the unit is for those timings, but I'd recommend using a
time unit (nanoseconds?) and not clk-cycles here.

>        };
> 
>        nand-controller@4 {
>          #address-cells = <1>;
>          #size-cells = <0>;
>          compatible = "st,stm32mp15-fmc2";
>          reg = <4 0x00000000 0x1000>,
>                <5 0x00010000 0x1000>,
>                <5 0x00020000 0x1000>,
>                <4 0x01000000 0x1000>,
>                <5 0x01010000 0x1000>,
>                <5 0x01020000 0x1000>;
>          interrupts = <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
>          dmas = <&mdma1 20 0x2 0x12000a02 0x0 0x0>,
>                 <&mdma1 20 0x2 0x12000a08 0x0 0x0>,
>                 <&mdma1 21 0x2 0x12000a0a 0x0 0x0>;
>          dma-names = "tx", "rx", "ecc";
> 
>          nand@0 {
>            reg = <0>;
>            nand-on-flash-bbt;
>            #address-cells = <1>;
>            #size-cells = <1>;
>          };
>        };
>      };
> 
> Regards,
> Christophe Kerello.
> 


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
