Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3FF2AEC10
	for <lists+linux-mtd@lfdr.de>; Tue, 10 Sep 2019 15:49:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iOr8RcoRBPZQTuv8Vwz+T3T4nCLIR+9dDU5B/YHHdrI=; b=WmJ7i04yYj3ind
	rsdQp7laWUgVwCXi+v3K+lEY88uzZul1kcB0/hhcyGoGk0FcUCBlYfCpBxI4aq09j+FVkvhNk2vKp
	ljRjMOQAKJTDtA1y67Hxgq2gzcJsD7bf8gniAOf3xgflkMHo0CPkFA5/LRGF5EFOSquHHeTyRZO3I
	Ph460uAhrvrtopwgJh+klvf39vcR0uF2Fby0TZ/aJLrWowFpwGAvaDOSlbmTRQiFHGJEp4889mLp+
	2hXPMikd0ccNzsOto2ybqtxP4QFm+HuYvJTkbgvmbcX7ysGVjmopWmWqOmhDoIVQWrwgxOLIqfYKh
	61sTNg10dWx0BRsmfPeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7gW0-0006kX-OM; Tue, 10 Sep 2019 13:49:04 +0000
Received: from krieglstein.org ([188.68.35.71])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i7gVe-0006ZQ-P4
 for linux-mtd@lists.infradead.org; Tue, 10 Sep 2019 13:48:47 +0000
Received: from dabox.localnet (gateway.hbm.com [213.157.30.2])
 by krieglstein.org (Postfix) with ESMTPSA id B8D984023F;
 Tue, 10 Sep 2019 15:48:06 +0200 (CEST)
From: Tim Sander <tim@krieglstein.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: mtd raw nand denali.c broken for Intel/Altera Cyclone V
Date: Tue, 10 Sep 2019 15:48:06 +0200
Message-ID: <3020870.hsMMj5ogRZ@dabox>
Organization: Sander and Lightning
In-Reply-To: <CAK7LNAR8xtURiCoJC0eWLFw0q+78Eb_axoOzWH+JNugf-24Qig@mail.gmail.com>
References: <5143724.5TqzkYX0oI@dabox>
 <CAK7LNAR8xtURiCoJC0eWLFw0q+78Eb_axoOzWH+JNugf-24Qig@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_064843_114423_F2F4AE85 
X-CRM114-Status: GOOD (  33.82  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Marek Vasut <marek.vasut@gmail.com>,
 Richard Weinberger <richard@nod.at>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Dinh Nguyen <dinguyen@kernel.org>, linux-mtd <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi

I have noticed that my SPF records where not in place after moving the server,
so it seems the mail didn't go to the mailing list. Hopefully that's fixed now.

Am Dienstag, 10. September 2019, 09:16:37 CEST schrieb Masahiro Yamada:
> On Fri, Sep 6, 2019 at 9:39 PM Tim Sander <tim@krieglstein.org> wrote:
> > Hi
> > 
> > I have noticed that there multiple breakages piling up for the denali nand
> > driver on the Intel/Altera Cyclone V. Unfortunately i had no time to track
> > the mainline kernel closely. So the breakage seems to pile up. I am a
> > little disapointed that Intel is not on the lookout that the kernel works
> > on the chips they are selling. I was really happy about the state of the
> > platform before concerning mainline support.
> > 
> > The failure starts with kernel 4.19 or stable kernel release 4.18.19. The
> > commit is ba4a1b62a2d742df9e9c607ac53b3bf33496508f.
> 
> Just for clarification, this corresponds to
> 0d55c668b218a1db68b5044bce4de74e1bd0f0c8 upstream.
> 
> > The problem here is that
> > our platform works with a zero in the SPARE_AREA_SKIP_BYTES register.
> 
> Please clarify the scope of "our platform".
> (Only you, or your company, or every individual using this chip?)
The company i work for uses this chip as a base for multiple products.

> First, SPARE_AREA_SKIP_BYTES is not the property of the hardware.
> Rather, it is about the OOB layout, in other words, this parameter
> is defined by software.
> 
> For example, U-Boot supports the Denali NAND driver.
> The SPARE_AREA_SKIP_BYTES is a user-configurable parameter:
> https://github.com/u-boot/u-boot/blob/v2019.10-rc3/drivers/mtd/nand/raw/Kcon
> fig#L112
> 
> 
> Your platform works with a zero in the SPARE_AREA_SKIP_BYTES register
> because the NAND chip on the board was initialized with a zero
> set to the SPARE_AREA_SKIP_BYTES register.
> 
> If the NAND chip had been initialized with 8
> set to the SPARE_AREA_SKIP_BYTES register, it would have
> been working with 8 to the SPARE_AREA_SKIP_BYTES.
> 
> The Boot ROM is the only (semi-)software that is unconfigurable by users,
> so the value of SPARE_AREA_SKIP_BYTES should be aligned with
> the boot ROM.
> I recommend you to check the spec of the boot ROM.
We boot from NOR flash. That's why i didn't see a problem booting probably.

> (The maintainer of the platform, Dihn is CC'ed,
> so I hope he will jump in)
Yes i hope so too.
 

> Second, I doubt 0 is a good value for SPARE_AREA_SKIP_BYTES.
> 
> As explained in commit log, SPARE_AREA_SKIP_BYTES==0 means
> the OOB is used for ECC without any offset.
> So, the BBM marked in the factory will be destroyed.
Oh my! Thats bad news.

> > But in
> > this case the patch assumes the default value 8 which is straight out 
> > wrong on this variant. Without this patch reverted all blocks of the nand
> > flash are beeing marked bad :-(.
> > 
> > When reverting the patch ba4a1b62a2d742df9e9c607ac53b3bf33496508f  i can
> > boot 4.19.10 again.
> > 
> > With 5.0 the it goes further down the drain and i didn't manage to boot it
> > even with the above patch reverted.
> > 
> > I also tried 5.3-rc7 with the above patch reverted and the variable t_x
> > dirty hacked to the value 0x1388 as i got the impression that the timing
> > calculation is off too. I still get an
> > interrupt error and boot failure:
> git-bisect is a general solution to pin point the problem.
> 
> BTW, if you end up with hacking the clock frequency, something is already
> wrong.
This was just a dirty hack to verify that this is the problem. 

> denali->clk_rate, denali->clk_x_rate should be 50MHz, 200MHz, respectively.
> 
> If not, please check the clock driver and your DT.
We include the device tree file for this chip directly from kernel sources.
Which means that we are using the settings which are within the kernel tree in

linux-5.3-rc8/arch/arm/boot/dts/socfpga.dtsi

The dts entries taken verbatim from the above file are:

nand0: nand@ff900000 {
                        #address-cells = <0x1>;
                        #size-cells = <0x1>;
                        compatible = "altr,socfpga-denali-nand";
                        reg = <0xff900000 0x100000>,
                              <0xffb80000 0x10000>;
                        reg-names = "nand_data", "denali_reg";
                        interrupts = <0x0 0x90 0x4>;
                        clocks = <&nand_clk>, <&nand_x_clk>, <&nand_ecc_clk>;
                        clock-names = "nand", "nand_x", "ecc";
                        resets = <&rst NAND_RESET>;
                        status = "disabled";
};

nand_ecc_clk: nand_ecc_clk {
        #clock-cells = <0>;
        compatible = "altr,socfpga-gate-clk";
        clocks = <&nand_x_clk>;
        clk-gate = <0xa0 9>;
};

nand_clk: nand_clk {
        #clock-cells = <0>;
        compatible = "altr,socfpga-gate-clk";
        clocks = <&nand_x_clk>;
        clk-gate = <0xa0 10>;
        fixed-divider = <4>;
};

nand_x_clk: nand_x_clk {
        #clock-cells = <0>;
        compatible = "altr,socfpga-gate-clk";
        clocks = <&f2s_periph_ref_clk>, <&main_nand_sdmmc_clk>, <&per_nand_mmc_clk>;
        clk-gate = <0xa0 9>;
};

f2s_periph_ref_clk: f2s_periph_ref_clk {
        #clock-cells = <0>;                     
        compatible = "fixed-clock";             
}; 

main_nand_sdmmc_clk: main_nand_sdmmc_clk@58 {
        #clock-cells = <0>;                             
        compatible = "altr,socfpga-perip-clk";          
        clocks = <&main_pll>;                           
        reg = <0x58>;                                   
};   

per_nand_mmc_clk: per_nand_mmc_clk@94 {
        #clock-cells = <0>;                             
        compatible = "altr,socfpga-perip-clk";          
        clocks = <&periph_pll>;                         
        reg = <0x94>;                                   
};  

main_pll: main_pll@40 {
        #address-cells = <1>;                   
        #size-cells = <0>;                      
        #clock-cells = <0>;                     
        compatible = "altr,socfpga-pll-clock";  
        clocks = <&osc1>;                       
        reg = <0x40>; 
...
};

periph_pll: periph_pll@80 {
        #address-cells = <1>;                   
        #size-cells = <0>;                      
        #clock-cells = <0>;                     
        compatible = "altr,socfpga-pll-clock";  
        clocks = <&osc1>, <&osc2>, <&f2s_periph_ref_clk>;
        reg = <0x80>; 
...
};

and from file: linux-5.3-rc8/arch/arm/boot/dts/socfpga_cyclone5.dtsi
clkmgr@ffd04000 {
        clocks {        
                osc1 {          
                        clock-frequency = <25000000>;
                };              
        };              
};  

So basically it boils down to osc1 set to 25MHz and osc2, f2s_periph_ref_clk
have a undefined frequency?

Currently i have no idea what the undefined frequencies in the device tree
result which frequency in the driver?

But the base frequency is at least nowhere near the 50MHz and 200MHz you
mentioned.

Best regards
Tim

Below the hack to get the platform booting again, which are the timings we need
in this case:
Subject: [PATCH 2/2] denali: hack: overwrite setup values

---
 drivers/mtd/nand/raw/denali.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/mtd/nand/raw/denali.c b/drivers/mtd/nand/raw/denali.c
index 5bfaa3863dbb..7b8bc9920f17 100644
--- a/drivers/mtd/nand/raw/denali.c
+++ b/drivers/mtd/nand/raw/denali.c
@@ -887,6 +887,15 @@ static int denali_setup_data_interface(struct nand_chip *chip, int chipnr,
        tmp |= FIELD_PREP(CS_SETUP_CNT__VALUE, cs_setup);
        sel->cs_setup_cnt = tmp;
 
+       sel->acc_clks = 0x4;
+       sel->re_2_re = 0x14;
+       sel->re_2_we = 0x14;
+       sel->tcwaw_and_addr_2_data = 0x3f;
+       sel->hwhr2_and_we_2_re = 0x14;
+       sel->rdwr_en_hi_cnt = 2;
+       sel->rdwr_en_lo_cnt = 4;
+       sel->cs_setup_cnt = 1;
+
        return 0;
 }
 
-- 
2.20.1




______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
