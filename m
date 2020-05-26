Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 490671BE2C7
	for <lists+linux-mtd@lfdr.de>; Wed, 29 Apr 2020 17:31:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+gT2gZWnh00hK44v0OJzXdL4JLyuJhWAXHMHW3QqLC4=; b=CXXG7qBxyZB3Nj
	IFbEY9l4B8xlDNHetLt38zRXZfhZP2lqbbPNEuau4hQpB/GTir56SfEceXU6RF5xdDlZQhjqr9P7K
	bqnw9VG0WAojuhO170orHZTKX8svqtJqBmf3oPPNXOH3xH0FFuZdhDWkKhFw4DDc+br7XRB4FLJ7e
	7VIoD9fyeI5tHvx0BSKk8jBBr12yedjxkbhOsUFpKJ3p5LIfTIJ96qSG/JX/W4rOMA7EAsUdVhJzp
	lbOmyLrCkczpV79DnWA0FZUGOjp/iUeJq/YuVNlEhaJ1CoD2c6knoNNXp0rc33909DanVpXds3z/I
	LHRNkAttySBfNjTgA7Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTogF-00028V-K6; Wed, 29 Apr 2020 15:31:23 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTog4-00027m-IA
 for linux-mtd@lists.infradead.org; Wed, 29 Apr 2020 15:31:14 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 19C752A1B3B;
 Wed, 29 Apr 2020 16:31:10 +0100 (BST)
Date: Wed, 29 Apr 2020 17:31:07 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: "Ramuthevar, Vadivel MuruganX"
 <vadivel.muruganx.ramuthevar@linux.intel.com>
Subject: Re: [PATCH v4 2/2] mtd: rawnand: Add NAND controller support on
 Intel LGM SoC
Message-ID: <20200429173107.5c6d2f55@collabora.com>
In-Reply-To: <2e83a2f7-853c-f0e2-f686-daf1e0649eae@linux.intel.com>
References: <20200429104205.18780-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200429104205.18780-3-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200429162249.55d38ee8@collabora.com>
 <9d77c64c-d0f9-7a13-3391-d05bf458bdb1@linux.intel.com>
 <20200429164832.6800fc70@collabora.com>
 <2e83a2f7-853c-f0e2-f686-daf1e0649eae@linux.intel.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_083112_731638_1373A37E 
X-CRM114-Status: GOOD (  21.86  )
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

On Wed, 29 Apr 2020 23:18:31 +0800
"Ramuthevar, Vadivel MuruganX"
<vadivel.muruganx.ramuthevar@linux.intel.com> wrote:

> Hi Boris,
> 
> On 29/4/2020 10:48 pm, Boris Brezillon wrote:
> > On Wed, 29 Apr 2020 22:33:37 +0800
> > "Ramuthevar, Vadivel MuruganX"
> > <vadivel.muruganx.ramuthevar@linux.intel.com> wrote:
> >   
> >> Hi Boris,
> >>
> >> On 29/4/2020 10:22 pm, Boris Brezillon wrote:  
> >>> On Wed, 29 Apr 2020 18:42:05 +0800
> >>> "Ramuthevar, Vadivel MuruganX"
> >>> <vadivel.muruganx.ramuthevar@linux.intel.com> wrote:
> >>>      
> >>>> +
> >>>> +#define EBU_ADDR_SEL(n)		(0x20 + (n) * 4)
> >>>> +#define EBU_ADDR_MASK		(5 << 4)  
> >>>
> >>> It's still unclear what ADDR_MASK is for. Can you add a comment
> >>> explaining what it does?  
> >>
> >> Thank you Boris, keep review and giving inputs, will update.  
> > 
> > Can you please explain it here before sending a new version?  
> 
> Memory Region Address Mask:
> Specifies the number of right-most bits in the base address that should 
> be included in the address comparison. bits positions(7:4).

Okay, then the macro should be 

#define EBU_ADDR_MASK(x)	((x) << 4)

And now I'd like you to explain why 5 is the right value for that field
(I guess that has to do with the position of the CS/ALE/CLE pins).

> 
> >>>      
> >>>> +#define EBU_ADDR_SEL_REGEN	0x1  
> >>>
> >>>      
> >>>> +
> >>>> +	writel(lower_32_bits(ebu_host->cs[ebu_host->cs_num].nand_pa) |
> >>>> +	       EBU_ADDR_SEL_REGEN | EBU_ADDR_MASK,
> >>>> +	       ebu_host->ebu + EBU_ADDR_SEL(reg));

You set EBU_ADDR_SEL(reg) once here...

> >>>> +
> >>>> +	writel(EBU_MEM_BASE_CS_0 | EBU_ADDR_MASK | EBU_ADDR_SEL_REGEN,
> >>>> +	       ebu_host->ebu + EBU_ADDR_SEL(0));
> >>>> +	writel(EBU_MEM_BASE_CS_1 | EBU_ADDR_MASK | EBU_ADDR_SEL_REGEN,
> >>>> +	       ebu_host->ebu + EBU_ADDR_SEL(reg));  

... and a second time here. That sounds like overwriting the
EBU_ADDR_SEL(reg) register to me.

> >>>
> >>> That's super weird. You seem to set EBU_ADDR_SEL(reg) twice. Are you
> >>> sure that's needed, and are we setting EBU_ADDR_SEL(0) here?  
> >>
> >> You are right, its weird only, but we need it, since different chip
> >> select has different memory region access address.  
> > 
> > Well, that doesn't make any sense, the second write to
> > EBU_ADDR_SEL(reg) overrides the first one, meaning that nand_pa is
> > actually never written to ADDR_SEL(reg).  
> 
> it will not overwrite the first one, since two different registers
> EBU_ADDR_SEL_0 EBU_ADDR_SEL  20H
> EBU_ADDR_SEL_1 EBU_ADDR_SEL  24H

See my above.

> 
> it is an internal address selection w.r.t chip select for nand physical 
> address update.
> 
> 
> >   
> >>
> >> Yes , we are setting both CS0 and CS1 memory access region, if you have
> >> any concern to optimize, please suggest me, Thanks!  
> > 
> > If you want to setup both CS, and the address written in EBU_ADDR_SEL(x)
> > is really related to the nand_pa address, then retrieve resources for
> > all CS ranges.   
> If it's not related, please explain what those
> > EBU_MEM_BASE_CS_X values encode.  
> 
> Memory Region Base Address
> FPI Bus addresses are compared to this base address in conjunction with 
> the mask control(EBU_ADDR_MASK). Driver need to program this field!

That's not explaining what the base address should be. Is 'nand_pa' the
value we should have there?

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
