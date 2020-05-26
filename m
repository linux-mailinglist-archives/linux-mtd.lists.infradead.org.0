Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E651CDFCB
	for <lists+linux-mtd@lfdr.de>; Mon, 11 May 2020 17:59:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=42JafHLdgqz3lIqU4MugS9vcx7o0DMUMI/Wg3/Cjoyw=; b=HF71uMKdGOSlqz
	2iorZ2heWzk9XVzy5z/m7wtCajZDnBJg0V4HARBbY2QBd2JP13KesVrNKXFcnw8i5t7sTVcFI8A+c
	HvEn1muTi8V5sDjwTpwmb7nyEpkb5/kPEMnOxahy5NSHthWk0nTyy82pBe9UbyeM6hQ+4T6Hc5TMF
	sXb4H5x3gYTbL4a9KN8Xr7DwKW6Sg/zNhV7vN9kLUSo6Vjl+xJZyehp2ivEb1EKmmjOZTQVDtjQLZ
	nyeyMEembFsoEqoDxMXYWL8z5w6omM9aJ36KppSAZu7RdRnTFVS4vfEj54DQZbhDWlILA+4XKfG8+
	eIDyezAHQF/KFeEwXoGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYAqJ-0006sF-8R; Mon, 11 May 2020 15:59:47 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYAq9-0006nr-HW
 for linux-mtd@lists.infradead.org; Mon, 11 May 2020 15:59:39 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id CF1FC2A0A4B;
 Mon, 11 May 2020 16:59:35 +0100 (BST)
Date: Mon, 11 May 2020 17:59:32 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v4 7/8] mtd: rawnand: arasan: Add new Arasan NAND
 controller
Message-ID: <20200511175932.0864490d@collabora.com>
In-Reply-To: <20200511174614.38058ec7@xps13>
References: <20200508171339.8052-1-miquel.raynal@bootlin.com>
 <20200508171339.8052-8-miquel.raynal@bootlin.com>
 <20200510090314.10426b6e@collabora.com>
 <20200511170729.4766eeaa@xps13>
 <20200511173235.2e2fe467@collabora.com>
 <20200511174614.38058ec7@xps13>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_085937_847461_414579C1 
X-CRM114-Status: GOOD (  32.25  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Michal Simek <monstr@monstr.eu>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Rob Herring <robh+dt@kernel.org>,
 linux-mtd@lists.infradead.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, 11 May 2020 17:46:14 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Hi Boris,
> 
> Boris Brezillon <boris.brezillon@collabora.com> wrote on Mon, 11 May
> 2020 17:32:35 +0200:
> 
> > On Mon, 11 May 2020 17:07:29 +0200
> > Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> >   
> > > Hi Boris,
> > > 
> > > Boris Brezillon <boris.brezillon@collabora.com> wrote on Sun, 10 May
> > > 2020 09:03:14 +0200:
> > >     
> > > > On Fri,  8 May 2020 19:13:38 +0200
> > > > Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> > > >       
> > > > > +static int anfc_exec_op(struct nand_chip *chip,
> > > > > +			const struct nand_operation *op,
> > > > > +			bool check_only)
> > > > > +{
> > > > > +	int ret;
> > > > > +
> > > > > +	if (check_only)
> > > > > +		return nand_op_parser_exec_op(chip, &anfc_op_parser, op,
> > > > > +					      check_only);        
> > > > 
> > > > You should also check the DATA_IN/OUT size here ^.      
> > > 
> > > Here is my proposal:
> > > 
> > > ---8<---
> > > 
> > > +static int anfc_check_op(struct nand_chip *chip,
> > > +                        const struct nand_operation *op)
> > > +{
> > > +       int op_id;
> > > +
> > > +       /*
> > > +        * The controller abstracts all the NAND operations and do not support
> > > +        * data only operations.    
> > 
> > 	* FIXME: The nand_op_parser framework should be extended to
> > 	* support custom checks on DATA instructions.  
> 
> Oh you really want to extend the core for that? I thought having a
> "check_op" helper like this was enough, as it gives enough freedom to
> the controller driver to return all the corner cases that are not very
> generic. See below for more details.

Widespread enough to have at least 2 controllers needing that :P. Any
code sharing is good to take IMO.

> 
> >   
> > > +        */    
> > 
> > You also didn't mention the fact that the number of data cycles should
> > be aligned on 4 bytes, and that the controller might read/write more
> > than requested when that's not the case. But maybe you have that
> > comment elsewhere in the code (where you do the round_up(4)?).  
> 
> Precisely, for me the previous check is not a problem from the core
> perspective (hence not deserving a FIXME) because the driver do not lie
> at any moment. Conversely, the driver limitations of what is supported
> and what is not is clear and accurate.

True, you can turn that into a TODO. That's still something I'd like to
see shared. That's not to say we have to handle all weird cases in the
core, we can simply add a ->check() hook to the pattern_elem so drivers
can have custom per-element checks.

> 
> However for this round_up() operation you are talking about, this is an
> issue as we have currently no mean to say to the core that something
> different than ordered was actually requested by the driver, so there
> is lying involved and this deserves a FIXME.
> > 
> > 	/*
> > 	 * Number of DATA cycles must be aligned on 4, that means the
> > 	 * controller might read/write more than requested This is
> > 	 * harmless most of the time as extra DATA are discarded in
> > 	 * the write path and read pointer adjusted in the read path.
> > 	 * FIXME: The core should mark operations where reading/writing
> > 	 * more is allowed so the exec_op() implementation can take
> > 	 * the right decision when the alignment constraint is not met:
> > 	 * adjust the number of DATA cycles when it's allowed, and
> > 	 * reject the operation otherwise.
> > 	 */  
> 
> I want to put this comment where the round_up takes place.

Sounds good.

> 
> >   
> > > +       for (op_id = 0; op_id < op->ninstrs; op_id++) {
> > > +               instr = &op->instrs[op_id];
> > > +
> > > +               switch (instr->type) {
> > > +               case NAND_OP_ADDR_INSTR:
> > > +                       if (instr->ctx.addr.naddrs > ANFC_MAX_ADDR_CYC)
> > > +                               return -ENOTSUPP;
> > > +                       break;
> > > +               case NAND_OP_DATA_IN_INSTR:
> > > +               case NAND_OP_DATA_OUT_INSTR:
> > > +                       if (instr->ctx.data.len > ANFC_MAX_CHUNK_SIZE)
> > > +                               return -ENOTSUPP;
> > > +                       break;
> > > +               default:
> > > +               }
> > > +       }
> > > +
> > > +       /*
> > > +        * The controller does not allow to proceed with a CMD+DATA_IN cycle
> > > +        * manually on the bus by reading data from the data register. Instead,
> > > +        * the controller abstract a status read operation with its own status
> > > +        * register after ordering a read status operation. Hence, we cannot
> > > +        * support any CMD+DATA_IN operation other than a READ STATUS.    
> > 
> > 	* FIXME: The nand_op_parser() framework should be extended to
> > 	* describe fixed patterns instead of open-coding this check
> > 	* here.  
> 
> For this one, I am not against a FIXME as this is something that might
> be useful for other drivers too.

Maybe TODO more than FIXME, you're right.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
