Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A56751BF291
	for <lists+linux-mtd@lfdr.de>; Thu, 30 Apr 2020 10:21:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bc3maqymJvqJayLxOnb1LF4HVXAN3C7hWmQer1RNkSA=; b=hN9MmZjhY1aYbK
	jvIn6VeMTBOsQrvHrHSSJ5Pd/iqLX2PV40tlB8fcnHsgnhv09M5l02CeaH3p4ERYzhen3FQ2Eq1ru
	gdtMd607kKqu6+lLXIVPsP+kgOvOBFKC8oTnPbE2TLVZz0Y2kmNS0HRMoq+2pnmz/TsKabjBgLC3y
	333rshzuJsQPpfZeZm86QVWISIJoWpT+vldVgUVyFVWirvGHIsl+mF8DUzPGUdI0U+R6j4RIF2iQg
	LFXdhOmpnruledBx5F95A4CYglgkNZpwZ/9TO0DvWDtPwvcgaGWYx1GAyuktHmUzyhjP362KAoIwv
	TtRr8/DOivd5pjLIhnww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU4Rl-0003ML-AG; Thu, 30 Apr 2020 08:21:29 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU4Rc-0003LX-J6
 for linux-mtd@lists.infradead.org; Thu, 30 Apr 2020 08:21:22 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 6F5E22A23E2;
 Thu, 30 Apr 2020 09:21:18 +0100 (BST)
Date: Thu, 30 Apr 2020 10:21:14 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: "Ramuthevar, Vadivel MuruganX"
 <vadivel.muruganx.ramuthevar@linux.intel.com>
Subject: Re: [PATCH v4 2/2] mtd: rawnand: Add NAND controller support on
 Intel LGM SoC
Message-ID: <20200430102114.29b6552f@collabora.com>
In-Reply-To: <1de9ba29-30f1-6829-27e0-6f141e9bb1e6@linux.intel.com>
References: <20200429104205.18780-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200429104205.18780-3-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200429162249.55d38ee8@collabora.com>
 <9d77c64c-d0f9-7a13-3391-d05bf458bdb1@linux.intel.com>
 <20200429164832.6800fc70@collabora.com>
 <2e83a2f7-853c-f0e2-f686-daf1e0649eae@linux.intel.com>
 <20200429173107.5c6d2f55@collabora.com>
 <1de9ba29-30f1-6829-27e0-6f141e9bb1e6@linux.intel.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_012120_754690_25CB28AD 
X-CRM114-Status: GOOD (  23.15  )
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
Cc: cheol.yong.kim@intel.com, devicetree@vger.kernel.org,
 masonccyang@mxic.com.tw, anders.roxell@linaro.org, vigneshr@ti.com,
 arnd@arndb.de, hauke.mehrtens@intel.com, richard@nod.at,
 brendanhiggins@google.com, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, robh+dt@kernel.org, linux-mtd@lists.infradead.org,
 miquel.raynal@bootlin.com, tglx@linutronix.de, qi-ming.wu@intel.com,
 andriy.shevchenko@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, 30 Apr 2020 15:50:30 +0800
"Ramuthevar, Vadivel MuruganX"
<vadivel.muruganx.ramuthevar@linux.intel.com> wrote:

> Hi Boris,
> 
>    Thank you very much for keep reviewing the patches and more queries...
> 
> On 29/4/2020 11:31 pm, Boris Brezillon wrote:
> > On Wed, 29 Apr 2020 23:18:31 +0800
> > "Ramuthevar, Vadivel MuruganX"
> > <vadivel.muruganx.ramuthevar@linux.intel.com> wrote:
> >   
> >> Hi Boris,
> >>
> >> On 29/4/2020 10:48 pm, Boris Brezillon wrote:  
> >>> On Wed, 29 Apr 2020 22:33:37 +0800
> >>> "Ramuthevar, Vadivel MuruganX"
> >>> <vadivel.muruganx.ramuthevar@linux.intel.com> wrote:
> >>>      
> >>>> Hi Boris,
> >>>>
> >>>> On 29/4/2020 10:22 pm, Boris Brezillon wrote:  
> >>>>> On Wed, 29 Apr 2020 18:42:05 +0800
> >>>>> "Ramuthevar, Vadivel MuruganX"
> >>>>> <vadivel.muruganx.ramuthevar@linux.intel.com> wrote:
> >>>>>         
> >>>>>> +
> >>>>>> +#define EBU_ADDR_SEL(n)		(0x20 + (n) * 4)
> >>>>>> +#define EBU_ADDR_MASK		(5 << 4)  
> >>>>>
> >>>>> It's still unclear what ADDR_MASK is for. Can you add a comment
> >>>>> explaining what it does?  
> >>>>
> >>>> Thank you Boris, keep review and giving inputs, will update.  
> >>>
> >>> Can you please explain it here before sending a new version?  
> >>
> >> Memory Region Address Mask:
> >> Specifies the number of right-most bits in the base address that should
> >> be included in the address comparison. bits positions(7:4).  
> > 
> > Okay, then the macro should be
> > 
> > #define EBU_ADDR_MASK(x)	((x) << 4)
> > 
> > And now I'd like you to explain why 5 is the right value for that field
> > (I guess that has to do with the position of the CS/ALE/CLE pins).  
> 
> 5 : bit 26, 25, 24, 23, 22 to be included for comparison in the 

That's 6 bits to me, not 5.

> ADDR_SELx , it compares only 5 bits.

Definitely not what I would qualify as right-most bits. So, you say the
comparison always starts at bit 22, and ends at 22+<num-addr-bits>?

> >>>> Yes , we are setting both CS0 and CS1 memory access region, if you have
> >>>> any concern to optimize, please suggest me, Thanks!  
> >>>
> >>> If you want to setup both CS, and the address written in EBU_ADDR_SEL(x)
> >>> is really related to the nand_pa address, then retrieve resources for
> >>> all CS ranges.  
> >> If it's not related, please explain what those  
> >>> EBU_MEM_BASE_CS_X values encode.  
> >>
> >> Memory Region Base Address
> >> FPI Bus addresses are compared to this base address in conjunction with
> >> the mask control(EBU_ADDR_MASK). Driver need to program this field!  
> > 
> > That's not explaining what the base address should be. Is 'nand_pa' the
> > value we should have there?  
> 
> The one prorgrammed in the addr_sel register is used by the HW 
> controller, it remaps to  0x174XX-> CS0 and 0x17CXX->CS1.
> The hardware itself, decodes only for 1740xx/17c0xx, other random values 
> cannot be programmed

The question is, is it the same value we have in nand_pa or it is
different?

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
