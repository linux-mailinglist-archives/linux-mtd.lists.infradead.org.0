Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10CAF138EF2
	for <lists+linux-mtd@lfdr.de>; Mon, 13 Jan 2020 11:23:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qZ9zJzsjG88Q7glrStSu9k4U0q57o6Ogg8lewgtvb/Y=; b=IvSzQEM81CdZsE
	jMWUVyxqSPyTwsnNym/EpmQfhXMJUJ2dGenjdT7C/9m54F87cenuutTadpSAMD5kyuKokIGb/Zp5y
	nLpuDURTHv6L7+o9D/OaSuT7bUOCYwbvODo4FI9JV+cMGCu8edyu6yG/ZRuFj0b1/hTbUctjdwT68
	XLQPZ6miowjcQ3RZsRVhaLQpZR+SMpX1ss+FNpT5BtqRR0zhNFpcs1nD+Si5mXxo+1iKXzC7gE9BJ
	AH34Ij1Je8/c25o5X07CQmPBHE7CMLvNYflbXBzpRjJuHGpNSYf/1dKzqirzV0H4+HbXOFC/iBbKL
	ov0M9NdsrhO5VJpwISjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqwsG-0006jS-Vo; Mon, 13 Jan 2020 10:23:09 +0000
Received: from krieglstein.org ([188.68.35.71])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqws6-0006gm-I0
 for linux-mtd@lists.infradead.org; Mon, 13 Jan 2020 10:23:00 +0000
Received: from dabox.localnet (gateway.hbm.com [213.157.30.2])
 by krieglstein.org (Postfix) with ESMTPSA id D8BB64009B;
 Mon, 13 Jan 2020 11:22:49 +0100 (CET)
From: Tim Sander <tim@krieglstein.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Subject: Re: mtd raw nand denali.c broken for Intel/Altera Cyclone V
Date: Mon, 13 Jan 2020 11:22:49 +0100
Message-ID: <78949108.45GFLefr32@dabox>
Organization: Sander and Lightning
In-Reply-To: <CAK7LNASZMH34QcQij8CuGnOkC1_g6UShiHw3+_QBLddzf6W4XA@mail.gmail.com>
References: <5143724.5TqzkYX0oI@dabox> <2585494.6OhLyxUeiZ@hydra>
 <CAK7LNASZMH34QcQij8CuGnOkC1_g6UShiHw3+_QBLddzf6W4XA@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_022258_745626_04E5F657 
X-CRM114-Status: GOOD (  44.96  )
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Dinh Nguyen <dinguyen@kernel.org>,
 Richard Weinberger <richard@nod.at>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Marek Vasut <marek.vasut@gmail.com>, linux-mtd <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Am Samstag, 11. Januar 2020, 03:38:35 CET schrieb Masahiro Yamada:
> On Sat, Jan 11, 2020 at 7:38 AM Tim Sander <tim@krieglstein.org> wrote:
> > Hi
> > 
> > Am Freitag, 10. Januar 2020, 20:05:20 CET schrieb Masahiro Yamada:
> > > On Sat, Jan 11, 2020 at 1:47 AM Tim Sander <tim@krieglstein.org> wrote:
> > > > Hi Masahiro Yamada
> > > > 
> > > > Sorry for the large delay. I have seen the patches at
> > > > https://lists.infradead.org/pipermail/linux-mtd/2019-December/092852.h
> > > > tml
> > > > Seem to resolve the question about the spare_area_skip_bytes register.
> > > > 
> > > > I have now set the register to 2 which seems to be the right choice on
> > > > an
> > > > Intel SocFPGA. But still i am out of luck trying to boot 5.4.5-rt3 or
> > > > 5.5-rc5. I get the following messages during bootup booting:
> > > > [    1.825590] denali-nand-dt ff900000.nand: timeout while waiting for
> > > > irq
> > > > 0x1000 [    1.832936] denali-nand-dt: probe of ff900000.nand failed
> > > > with
> > > > error -5
> > > > 
> > > > But the commit c19e31d0a32dd 2017-06-13 22:45:38 predates the 4.19
> > > > kernel
> > > > release (Mon Oct 22 07:37:37 2018). So it seems there is not an
> > > > obvious
> > > > commit which is causing the problem. Looking at the changes it might
> > > > be
> > > > that the timing calculations in the driver changed which might also
> > > > lead
> > > > to a similar error.
> > > > 
> > > > I am booting via NFS the bootloader is placed in NOR flash.  The
> > > > corresponding>
> > > > 
> > > > nand dts entry is updated to the new format and looks like this:
> > > >                 nand@ff900000 {
> > > >                 
> > > >                         #address-cells = <0x1>;
> > > >                         #size-cells = <0x0>;
> > > >                         compatible = "altr,socfpga-denali-nand";
> > > >                         reg = <0xff900000 0x100000 0xffb80000
> > > >                         0x10000>;
> > > >                         reg-names = "nand_data", "denali_reg";
> > > >                         interrupts = <0x0 0x90 0x4>;
> > > >                         clocks = <0x2d 0x1e 0x2e>;
> > > >                         clock-names = "nand", "nand_x", "ecc";
> > > >                         resets = <0x6 0x24>;
> > > >                         status = "okay";
> > > >                         nand@0 {
> > > >                         
> > > >                                 reg = <0x0>;
> > > >                                 #address-cells = <0x1>;
> > > >                                 #size-cells = <0x1>;
> > > >                                 partition@0 {
> > > >                                 
> > > >                                         label = "work";
> > > >                                         reg = <0x0 0x10000000>;
> > > >                                 
> > > >                                 };
> > > >                         
> > > >                         };
> > > >                 
> > > >                 };
> > > > 
> > > > The last kernel i am able to boot is 4.19.10. I have tried booting:
> > > > 5.1.21, 5.2.9, 5.3-rc8, 5.4.5-rt3 and 5.5-rc5. They all failed.
> > > > Unfortunately the range is quite large for bisecting the problem. It
> > > > also
> > > > occurred to me that all the platforms with Intel Cyclone V in mainline
> > > > are development boards which boot from SD-card not exhibiting this
> > > > problem on their default boot path.
> > > 
> > > What will happen if you apply all of these:
> > > 
> > > http://patchwork.ozlabs.org/project/linux-mtd/list/?series=149821
> > 
> > I have applied this patch set but it does not help completely.
> 
> OK, I just wanted to eliminate any other possibility, just in case.
As far as i remember i also need the linked patchset but it does not help completely.
As far is i remember overwriting the timings didn't help because that's the first thing
i tried without the other patches.

> > The timings are
> > wrong. I don't have access to the hardware now but one thing i tested
> > before i left (the HW) was to write the NAND timings from the bootloader
> > into the denali controller after the driver configured the timings in
> > denali_init. After that the driver worked again for me.
> > 
> > > on top of the mainline kernel,
> > > and then, hack denali->clk_rate and denali->clk_x_rate as follows?
> > > 
> > > 
> > > -       denali->clk_rate = clk_get_rate(dt->clk);
> > > -       denali->clk_x_rate = clk_get_rate(dt->clk_x);
> > > +       denali->clk_rate = 50000000;
> > > +       denali->clk_x_rate = 200000000;
> > > 
> > > If it still fails, what about this?
> > > 
> > >        denali->clk_rate = 0;
> > >        denali->clk_x_rate = 0;
I have not tried this yet because i have written out the values calculated by the driver.
My hope is that the error made in the timings can be deduced from the values below.

 As assumed the timings are not correct. But there is one more thing, the timing calculation is being called twice!

[    0.336216] 001: ffc03000.serial1: ttyS1 at MMIO 0xffc03000 (irq = 41, base_baud = 6250000) is a 16550A
[    0.338882] 001: previous settings: acc_clks 1
[    0.338882] 001: re_2_re: 3
[    0.338882] 001: re_2_we: 3
[    0.338882] 001: tcwaw_and_addr_2_data: 5
[    0.338882] 001: hwhr2_and_we2_re: 63
[    0.338882] 001: rdwr_en_hi_cnt: 1
[    0.338882] 001: rdwr_en_lo_cnt: 3
[    0.338882] 001: rdwr_en_lo_cnt: 1
[    0.338882] 001: cs_setup_cnt: -2125159496
[    0.338882] 001:  
[    0.340720] 001: nand: device found, Manufacturer ID: 0x2c, Chip ID: 0xda
[    0.340729] 001: nand: Micron MT29F2G08ABAEAWP
[    0.340734] 001: nand: 256 MiB, SLC, erase size: 128 KiB, page size: 2048, OOB size: 64
[    0.341084] 001: previous settings: acc_clks 1
[    0.341084] 001: re_2_re: 2
[    0.341084] 001: re_2_we: 2
[    0.341084] 001: tcwaw_and_addr_2_data: 5
[    0.341084] 001: hwhr2_and_we2_re: 2
[    0.341084] 001: rdwr_en_hi_cnt: 1
[    0.341084] 001: rdwr_en_lo_cnt: 3
[    0.341084] 001: rdwr_en_lo_cnt: 0
[    0.341084] 001: cs_setup_cnt: 1
[    0.341084] 001:  

<- here the values are beeing overwritten with the values from the patch below!

[    0.342438] 001: Bad block table found at page 131008, version 0x01
[    0.343671] 001: Bad block table found at page 130944, version 0x01
[    0.345267] 001: 1 fixed-partitions partitions found on MTD device denali-nand
[    0.345275] 001: Creating 1 MTD partitions on "denali-nand":
[    0.345284] 001: 0x000000000000-0x000010000000 : "work"
[    0.351416] 000: libphy: Fixed MDIO Bus: probed

The following hack has been used to create the output and get the system booting by overriding the 
computed timing values:
 drivers/mtd/nand/raw/denali.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/mtd/nand/raw/denali.c b/drivers/mtd/nand/raw/denali.c
index fafd0a0aa8e2..5c8a92d4896f 100644
--- a/drivers/mtd/nand/raw/denali.c
+++ b/drivers/mtd/nand/raw/denali.c
@@ -886,6 +886,17 @@ static int denali_setup_data_interface(struct nand_chip *chip, int chipnr,
        tmp |= FIELD_PREP(CS_SETUP_CNT__VALUE, cs_setup);
        sel->cs_setup_cnt = tmp;
 
+       printk("previous settings: acc_clks %i\nre_2_re: %i\nre_2_we: %i\ntcwaw_and_addr_2_data: %i\nhwhr2_and_we2_re: %i\nrdwr_en_hi_cnt: %i\nrdwr_en_lo_cnt: %i\nrdwr_en_lo_cnt: %i\ncs_setup_cnt: %i\n ",sel->acc_clks, sel->re_2_re, sel->re_2_we, sel->tcwaw_and_addr_2_data, sel->hwhr2_and_we_2_re, sel->rdwr_en_hi_cnt, sel->rdwr_en_lo_cnt, sel->cs_setup_cnt);
+
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

> > Will try the above next week. Skimming over the socfpga.dtsi it seems as
> > if
> > on the Intel SocFPGA the OSC1 has a value of 25000000 set in
> > socfpga_cyclone5.dtsi (I am currently not sure about the clock tree with
> > all the plls and i am missing the value of osc2?). Also right now it
> > seems i am to tired to parse denali_setup_data_interface...
> 
> You do not need to parse denali_setup_data_interface().
> 
> 
> There are good hints.
> 
> You said:
> "The last kernel i am able to boot is 4.19.10. I have tried booting:
> 5.1.21, 5.2.9, 5.3-rc8, 5.4.5-rt3 and 5.5-rc5. They all failed."
> 
> There is no commit between 4.19.10 and 5.1.21
> that changes denali_setup_data_interface().
> 
> So, denali_setup_data_interface() is not the
> root cause.
> 
> >From the information you provided,
> 
> I suspect some clock settings are wrong.
This guess we agree that this is no suspicion any more...

> > > > PS: Here is some snippet from an older mail i didn't sent to the list
> > > > yet
> > > > which might be superseded by now:
> > > > To get into this matter i started reading the "Intel Cyclone V HPS
> > > > TRM"
> > > > Section 13-20 Preserving Bad Block Markers:
> > > > "You can configure the NAND flash controller to skip over a specified
> > > > number of bytes when it writes the last sector in a page to the spare
> > > > area. This option write the desired offset to the
> > > > spare_area_skip_bytes
> > > > register in the config group. For example, if the device page size is
> > > > 2
> > > > KB, and the device area, set the spare_area_skip_bytes register to 2.
> > > > When the flash controller writes the last sector of the page that
> > > > overlaps with the spare area, it spare_area_skip_bytes must be an even
> > > > number. For example, if the bad block marker is a single byte, set
> > > > spare_area_skip_bytes to 2."
> > > 
> > > I did not know this documentation.
> > > 
> > > It says "For example" (twice),
> > > it sounds uncertain to me, though.
> > > 
> > > Anyway, an intel engineer checked the boot ROM code.
> > > SPARE_AREA_SKIP_BYTES=2 is correct, he said.
> > 
> > As far as i understand the documentation it must be a multiple of 2. The
> > most nand flashes i know need one byte for bad block marking so 2 seems
> > to be a pretty sane value.
> 
> Most of NAND flashes, but not all.
> 
> See the "Bad Block Location" in this page:
> 
> http://www.linux-mtd.infradead.org/nand-data/nanddata.html
> 
> 
> 
> Many of devices have BBM at 1st byte/word,
> but there are devices that have it at 6th byte.
> 
> SPARE_AREA_SKIP_BYTES=2 for SOCFPGA
> corrupts the BBM at offset 6.
> So, probably such a device is not used
> on SOCFPGA boards.
> 
> I am guessing that is why the UniPhier platform
> adopted SPARE_AREA_SKIP_BYTES=8.
> 
> > The explanation why default value of
> > spare_area_skip_bytes=0 of the boot rom is a little unfortunate is also in
> > the documentation: The fact that the ECC values might spill into the
> > spare area where the bad block marker of the nand is located.





______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
