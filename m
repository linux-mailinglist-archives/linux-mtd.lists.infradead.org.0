Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5789B87232
	for <lists+linux-mtd@lfdr.de>; Fri,  9 Aug 2019 08:24:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ohY3x6AhhPpho5cL1k/l+j31d2Q0E9EyZ65YW2sZMY=; b=GxbxZL+8RQ7E7H
	h4/Vh9bTdsDVWTQPl+Niqsi59qhjwHzWbhgSQFO+NWZiWou4Y90uolirnca4ZCzVIwOHHPvD61q9Q
	fC4YSMKHKDa7sqjIEuOoM73RZ6512xg3SxXiU8JCvmSP9MG+C3+3J+s16a7ZoqplW9+1VQ2km4QkN
	BuYPfVu7etZ7j2PZ/ka/JWf2uc7aPGbiS314WyfwL0dNpnWTs0fOA5K8dO3LytL0wC9XVoPvYuuS/
	XxvlN3GdREW0qFK4vqP43GPR5VPuIA/IEI3SA/c1VM8iRMm9PdXQKaHH7x2ARCtr1Ps+txG19qsAs
	Zr/9ECrNATXXWRnJ9/Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvyJw-0008IQ-Oh; Fri, 09 Aug 2019 06:24:12 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvyJl-0008Fm-KX
 for linux-mtd@lists.infradead.org; Fri, 09 Aug 2019 06:24:03 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id F0EE728C6DA;
 Fri,  9 Aug 2019 07:23:59 +0100 (BST)
Date: Fri, 9 Aug 2019 08:23:56 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Greg Ungerer <gerg@kernel.org>
Subject: Re: GPMI iMX6ull timeout on DMA
Message-ID: <20190809082356.0cf60555@collabora.com>
In-Reply-To: <694cb2ac-68e6-72b1-3d55-e405b176a17f@kernel.org>
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
 <20190808183651.7c0962e7@collabora.com>
 <694cb2ac-68e6-72b1-3d55-e405b176a17f@kernel.org>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_232401_940261_22EDE1FA 
X-CRM114-Status: GOOD (  22.29  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Miquel Raynal <miquel.raynal@bootlin.com>, s.hauer@pengutronix.de,
 Michael Nazzareno Trimarchi <michael@amarulasolutions.com>,
 linux-mtd@lists.infradead.org, Boris Brezillon <bbrezillon@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, 9 Aug 2019 15:20:52 +1000
Greg Ungerer <gerg@kernel.org> wrote:

> Hi Boris,
> 
> On 9/8/19 2:36 am, Boris Brezillon wrote:
> > On Mon, 5 Aug 2019 15:51:05 +1000
> > Greg Ungerer <gerg@kernel.org> wrote:  
> >> On 2/8/19 10:51 pm, Boris Brezillon wrote:  
> >>> On Fri, 2 Aug 2019 22:34:57 +1000
> >>> Greg Ungerer <gerg@kernel.org> wrote:  
> >>>> On 31/7/19 4:28 pm, Boris Brezillon wrote:  
> >>>>> On Wed, 31 Jul 2019 12:05:44 +1000
> >>>>> Greg Ungerer <gerg@kernel.org> wrote:  
> >>>>>> On 30/7/19 6:38 pm, Miquel Raynal wrote:  
> >>>>>>> Greg Ungerer <gerg@kernel.org> wrote on Tue, 30 Jul 2019 16:06:55 +1000:  
> >>>>>>>> On 30/7/19 10:41 am, Greg Ungerer wrote:  
> >>>>>>>>> On 30/7/19 10:28 am, Greg Ungerer wrote:  
> >>>>>>>>>> On 29/7/19 10:47 pm, Miquel Raynal wrote:  
> >>>>>>>>>>> Greg Ungerer <gerg@kernel.org> wrote on Mon, 29 Jul 2019 22:33:56 +1000:  
> >>>>>>>>>>>> On 29/7/19 6:36 pm, Miquel Raynal wrote:  
> >>>>>>>>>>>>> Greg Ungerer <gerg@kernel.org> wrote on Mon, 29 Jul 2019 16:41:51 +1000:  
> >>>>>>>>> [snip]  
> >>>>>> Note that this was generated on a normal boot up (not failure).  
> >>>>>
> >>>>> The values looks good. Can you try with the below diff applied?  
> >>>>> --->8---  
> >>>>> diff --git a/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c b/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
> >>>>> index 334fe3130285..9771f6a82abe 100644
> >>>>> --- a/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
> >>>>> +++ b/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
> >>>>> @@ -721,12 +721,10 @@ static void gpmi_nfc_apply_timings(struct gpmi_nand_data *this)
> >>>>>            writel(hw->ctrl1n, gpmi_regs + HW_GPMI_CTRL1_SET);
> >>>>>     
> >>>>>            /* Wait 64 clock cycles before using the GPMI after enabling the DLL */
> >>>>> -       dll_wait_time_us = USEC_PER_SEC / hw->clk_rate * 64;
> >>>>> -       if (!dll_wait_time_us)
> >>>>> -               dll_wait_time_us = 1;
> >>>>> +       dll_wait_time_us = DIV_ROUND_UP(USEC_PER_SEC * 64, hw->clk_rate);
> >>>>>     
> >>>>>            /* Wait for the DLL to settle. */
> >>>>> -       udelay(dll_wait_time_us);
> >>>>> +       usleep_range(dll_wait_time_us, dll_wait_time_us * 10);
> >>>>>     }
> >>>>>     
> >>>>>     static int gpmi_setup_data_interface(struct nand_chip *chip, int chipnr,  
> >>>>
> >>>> Eventually it failed, in the same way with with same errors.
> >>>> Took quite a while, over 600 boot cycles.
> >>>>
> >>>> Note also that I had to hand merge the changes, since in 5.1.14 that
> >>>> gpmi_nfc_apply_timings() is in gpmi-lib.c. But it was trivial to do.  
> >>>
> >>> Oh well. I guess the next thing to do would be to dump the timing regs
> >>> and clk rate that are set by the bootloader (before the driver override
> >>> them) or those applied by an older kernel (one that didn't have that
> >>> issue).  
> >>
> >> Is this useful?  
> > 
> > Hm, looks like it's configured in mode 0, so no, it's not super useful.
> > Can you try booting an older kernel (one that didn't have the  
> > ->setup_data_interface() hook implemented).  
> 
> Ok. I went back from 5.1 and the first kernel I could find that
> returned no grep hits for "setup_data_interface" was 4.16.
> 
> So I built for my target with that and added similar trace to dump
> the hardware register settings for that. Debug output looks like
> this now for it:
> 
> ...
> drivers/mtd/nand/gpmi-nand/gpmi-nand.c(807): gpmi_get_clks()
>    clk_get_rate(r->clock[0])=22000000
> drivers/mtd/nand/gpmi-nand/gpmi-lib.c(1054): gpmi_begin()
>    HW_GPMI_TIMING0=0x00010203
>    HW_GPMI_TIMING1=0x05000000
> nand: device found, Manufacturer ID: 0x2c, Chip ID: 0xda
> nand: Micron MT29F2G08ABAEAWP
> nand: 256 MiB, SLC, erase size: 128 KiB, page size: 2048, OOB size: 64
> drivers/mtd/nand/gpmi-nand/gpmi-lib.c(966): enable_edo_mode()
>    clk_get_rate(r->clock[0])=99000000
> gpmi-nand 1806000.gpmi-nand: enable the asynchronous EDO mode 5
> drivers/mtd/nand/gpmi-nand/gpmi-lib.c(1054): gpmi_begin()
>    HW_GPMI_TIMING0=0x00010101

TIMING0 match the one you have with 5.1 kernels.

>    HW_GPMI_TIMING1=0x90000000

And we even have a bigger timeout value in 5.1 (0xe0000000), so we
should be all safe WRT to timings in TIMING{0,1}.

Can you dump CTRL1?

> Scanning device for bad blocks
> 5 ofpart partitions found on MTD device gpmi-nand
> Creating 5 MTD partitions on "gpmi-nand":
> 0x000000000000-0x000000500000 : "u-boot"
> 0x000000500000-0x000000600000 : "u-boot-env"
> 0x000000600000-0x000000800000 : "log"
> 0x000000800000-0x000010000000 : "flash"
> 0x000000000000-0x000010000000 : "all"
> gpmi-nand 1806000.gpmi-nand: driver registered.
> ...
> 


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
