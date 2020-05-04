Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E56D1C338F
	for <lists+linux-mtd@lfdr.de>; Mon,  4 May 2020 09:18:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qrFut+Js5xa5TjmfjlOT/8enCv4ZTHj1rp0D/9NbMts=; b=CzG6bCWR0J6xqb
	h/VPLuyd+Ihxp1quCjbysYR3WJq6qcimdiNNxPgtG5Be40/OfnDCVYRoHwPBC7eriNjhNhiusqaF+
	Pe6eTwPEzJSZI1PhZJR7IQmlVc1+Oqim3TLPFAeCU22gLsGVJ2O/4bw75AUCiJuuwjPrO1i6O3SwM
	qQ/FVhWcZjPSF72BYrW29JV7zH8Rf5go82ugmspAOQ8EEmlR2moQwj806XftqmBuBPJ51RNu2FZCC
	1aMjHkFV087JxOWZwAMiEK78aGp260hsGW50aXGwIhFwHe9AJsgOk5G82hhckrBXMh9jdV0XjpUQy
	6f9sVJnVPjKxesu+JE6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVVMf-0006hL-UV; Mon, 04 May 2020 07:18:09 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVVMW-0006gY-TI
 for linux-mtd@lists.infradead.org; Mon, 04 May 2020 07:18:02 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 21FB52A0DAA;
 Mon,  4 May 2020 08:17:59 +0100 (BST)
Date: Mon, 4 May 2020 09:17:55 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: "Ramuthevar, Vadivel MuruganX"
 <vadivel.muruganx.ramuthevar@linux.intel.com>, tglx@linutronix.de,
 cheol.yong.kim@intel.com, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 2/2] mtd: rawnand: Add NAND controller support on
 Intel LGM SoC
Message-ID: <20200504091755.0d0e73aa@collabora.com>
In-Reply-To: <854521ed-b0f9-0f0f-2cd7-5ad11b2d059a@linux.intel.com>
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
 <20200430150124.7856d112@collabora.com>
 <df7c1952-bc9b-bad7-bf31-d09707a0829e@linux.intel.com>
 <20200504090824.1eb16b78@collabora.com>
 <854521ed-b0f9-0f0f-2cd7-5ad11b2d059a@linux.intel.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_001801_209818_4D61C60A 
X-CRM114-Status: GOOD (  24.02  )
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
Cc: hauke.mehrtens@intel.com, qi-ming.wu@intel.com, anders.roxell@linaro.org,
 vigneshr@ti.com, arnd@arndb.de, richard@nod.at, brendanhiggins@google.com,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org, robh+dt@kernel.org,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 masonccyang@mxic.com.tw, andriy.shevchenko@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, 4 May 2020 15:15:08 +0800
"Ramuthevar, Vadivel MuruganX"
<vadivel.muruganx.ramuthevar@linux.intel.com> wrote:

> Hi Boris,
> 
>    Thank you very much for the prompt review and suggestions...
> 
> On 4/5/2020 3:08 pm, Boris Brezillon wrote:
> > On Mon, 4 May 2020 10:02:35 +0800
> > "Ramuthevar, Vadivel MuruganX"
> > <vadivel.muruganx.ramuthevar@linux.intel.com>  wrote:
> >   
> >> Hi Boris,
> >>
> >> On 30/4/2020 9:01 pm, Boris Brezillon wrote:  
> >>> On Thu, 30 Apr 2020 14:36:00 +0200
> >>> Boris Brezillon<boris.brezillon@collabora.com>  wrote:
> >>>      
> >>>> On Thu, 30 Apr 2020 17:07:03 +0800
> >>>> "Ramuthevar, Vadivel MuruganX"
> >>>> <vadivel.muruganx.ramuthevar@linux.intel.com>  wrote:
> >>>>     
> >>>>>>>> The question is, is it the same value we have in nand_pa or it is
> >>>>>>>> different?
> >>>>>>>>              
> >>>>>>> Different address which is 0xE1400000 NAND_BASE_PHY address.  
> >>>>>> Then why didn't you tell me they didn't match when I suggested to pass  
> >>>>> sorry, because you keep asking nand_pa after that only I realized that.
> >>>>>         
> >>>>>> nand_pa? So now the question is, what does this address represent?  
> >>>>>                   EBU-MODULE
> >>>>>     _________     _______________________
> >>>>> |         |   |            |NAND CTRL  |
> >>>>> | FPI BUS |==>| CS0(0x174) | 0xE100    ( 0xE14/0xE1C) NAND_PHY_BASE
> >>>>> |_________|   |_CS1(0x17C)_|__________ |
> >>>>>
> >>>>> EBU_CONRTROLLER_BASE : 0xE0F0_0000
> >>>>> HSNAND_BASE: 0xE100_0000
> >>>>> NAND_CS0: 0xE140_0000
> >>>>> NAND_CS1: 0xE1C0_0000
> >>>>>
> >>>>> MEM_REGION_BASE_CS0: 0x17400 (internal to ebu controller )
> >>>>> MEM_REGION_BASE_CS1: 0x17C00
> >>>>>         
> >>>> Hm, I wonder if we shouldn't use a 'ranges' property to describe this
> >>>> address translation. Something like
> >>>>
> >>>> 	ebu@xxx {
> >>>> 		ranges = <0x17400000 0xe1400000 0x1000>,
> >>>> 			 <0x17c00000 0xe1c00000 0x1000>;
> >>>> 		reg = <0x17400000>, <0x17c00000>;
> >>>> 		reg-names = "cs-0", "cs-1";
> >>>> 	}
> >>>>
> >>>> The translated address (0xE1X00000) will be available in res->start,
> >>>> and the non-translated one (0x17X00000) can be retrieved with
> >>>> of_get_address(). All you'd have to do then would be calculate the
> >>>> mask:
> >>>>
> >>>> 	mask = (translated_address & original_address) >> 22;
> >>>> 	num_comp_bits = fls(mask);
> >>>> 	WARN_ON(mask != GENMASK(num_comp_bits - 1, 0));
> >>>>
> >>>> Which allows you to properly set the ADDR_SEL() register without
> >>>> relying on some hardcoded values:
> >>>>
> >>>> 	writel(original_address | EBU_ADDR_SEL_REGEN |
> >>>> 	       EBU_ADDR_COMP_BITS(num_comp_bits),
> >>>> 	       ebu_host->ebu + EBU_ADDR_SEL(csid));
> >>>>
> >>>> That's quite important if we want to merge the xway NAND driver with
> >>>> this one.  
> >>> Looks like the translation is done at the FPI bus declaration level (see
> >>> [1]). We really need to see the big picture to take a wise decision
> >>> about the bindings. Would you mind pasting your dsti/dts files
> >>> somewhere? It feels like the NAND controller is a sub-part of a more
> >>> generic 'memory' controller, in which case the NAND controller should be
> >>> declared as a child of this generic memory bus (called localbus in [1],
> >>> but maybe EBU is more accurate).
> >>>
> >>> [1]https://github.com/xieyaxiongfly/Atheros_CSI_tool_OpenWRT_src/blob/master/target/linux/lantiq/files-4.14/arch/mips/boot/dts/vr9.dtsi#L162     
> >>
> >>    ebu_nand: ebu_nand@e0f00000 {
> >>                    compatible = "intel,lgm-ebu-nand";
> >>                    reg = <0xe0f00000 0x100
> >>                    0xe1000000 0x300
> >>                    0xe1400000 0x80000
> >>                    0xe1c00000 0x10000>;
> >>                    reg-names = "ebunand", "hsnand", "nand_cs0", nand_cs1";
> >>                    dmas = <&dma0 8>, <&dma0 9>;
> >>                    dma-names = "ebu_rx", "ebu_tx";
> >>                    clocks =  <&cgu0 LGM_GCLK_EBU>;
> >>            };
> >>
> >>
> >> 	 &ebu_nand {
> >> 	         status = "disabled";
> >> 	        nand,cs = <1>;
> >> 	        nand-ecc-mode = "hw";
> >> 	        pinctrl-names = "default";
> >> 	        pinctrl-0 = <&ebu_nand_base &ebu_cs1>;
> >> 	};
> >>  
> >>>      
> > Ok. If I understand the SoC topology correctly it should actually be
> > something like that:
> > 
> > {
> > 	...
> > 	fpi@xxxxx {
> > 		compatible = "intel,lgm-fpi", "simple-bus";
> > 
> > 		/* You might have other ranges to define here */
> > 		ranges = <0x16000000 0xe0000000 0x1000000>;
> > 
> > 		...  
> 
> Sorry, we do not have fpi tree node in our dts/dtsi file instead we have 
> the below one.. , that also not included the major peripherals 
> controllers node.
>          /* Special part from CPU core */
>          core: core {
>                  compatible = "intel,core", "simple-bus";
>                  #address-cells = <1>;
>                  #size-cells = <1>;
>                  ranges;
> 
>                  ioapic1: interrupt-controller@fec00000 {
>                          #interrupt-cells = <2>;
>                          #address-cells = <0>;
>                          compatible = "intel,ce4100-ioapic";
>                          interrupt-controller;
>                          reg = <0xfec00000 0x1000>;
>                          nr_entries = <256>;
>                  };
> 
>                  hpet: timer@fed00000 {
>                          compatible = "intel,ce4100-hpet";
>                          reg = <0xfed00000 0x400>;
>                  };
> 
>                  lapic0: interrupt-controller@fee00000 {
>                          compatible = "intel,ce4100-lapic";
>                          reg = <0xfee00000 0x1000>;
>                          no_pic_mode;
>                  };
>          };
> 
> other than this, rest all in independent node .

But you do have an FPI bus, right? If this is the case it should be
represented. Or is the "intel,core" bus actually the FPI bus that you
named differently?

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
