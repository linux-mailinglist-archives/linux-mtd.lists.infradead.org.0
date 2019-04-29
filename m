Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B968CE217
	for <lists+linux-mtd@lfdr.de>; Mon, 29 Apr 2019 14:18:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0yBrRfAL8xXK2UyBXhWWD6fHoSwsfHG5PsnWse9lr6A=; b=jCQfxS2X3DIddX
	r7SViaQGgMtZOFvXmUm5HfbVUKSsIlQ60Mpgz9SKw+/yfkwiJy84j1ys/KU2+1lx3powXlKEXoqzf
	fPKIt6u0JkHOBNO0cnBKu/PuNGh6jubjDZc8Rjv5CqE63CVrIBWx8BNMFmiUJ6gELx983PLh8yk0U
	uwfk8Pdg8n8GoDFyjN+JupS/o1ntDBg/axCQ7vSb976ZI4sYW8X+vd6ka/UlOW1wX55IcadhaRmk7
	84fPBwj/ZOC4A32Qd9Dz2eBYagox+w2+2EQ1qsc0jXhNKm/kAgadLAqEF9+0Gl3l/x52es9wdY24L
	ZB2wikZ1vUFzznT2UNNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL5Eq-00005c-OV; Mon, 29 Apr 2019 12:18:28 +0000
Received: from mail.intenta.de ([178.249.25.132])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL5Ei-0008WC-8M
 for linux-mtd@lists.infradead.org; Mon, 29 Apr 2019 12:18:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=intenta.de;
 s=dkim1; 
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:CC:To:From:Date;
 bh=GsgfomPI48frMwHsrKwfP6EpSKbwk1M7gVzGRCF4Huo=; 
 b=ALeTwT0eDipZWZtaQ2IwQ+kfhchGFxK8it0sC6oWybVJuhNWFdoNJGGa7pjOkIhA6xbpsEbCOihPJqqabpizPwmwe1QshL0PDb7YK2j5cnisRbgoLoN1GafLZXBjLqEqsNvj6J4JbVY/jkJiwYr2NRzXC8lifYY4TEgxO1lYf73V5dA8VEI6pUq/mhMS7RvcGwKSG7FqGFqOGKdIUeXvr7sj5JwUI6aM1Mxh5LXfI9enM04h5AZMxGze2t22+5HuvOhF8tz1BUYWYTNZbGYjbUfle6HXsvJULWN9lFaqopHwxMNLTxbMICjZUS+fVxM/xqfO1sDf24Ry4APSZq/+AA==;
X-CTCH-RefID: str=0001.0A0C0212.5CC6EB80.0008, ss=1, re=0.000, recu=0.000,
 reip=0.000, cl=1, cld=1, fgs=0
Date: Mon, 29 Apr 2019 14:18:06 +0200
From: Helmut Grohne <helmut.grohne@intenta.de>
To: Naga Sureshkumar Relli <nagasure@xilinx.com>
Subject: Re: [LINUX PATCH v14] mtd: rawnand: pl353: Add basic driver for arm
 pl353 smc nand interface
Message-ID: <20190429121804.4jzspv4goehwdpez@laureti-dev>
References: <1555326613-26739-1-git-send-email-naga.sureshkumar.relli@xilinx.com>
 <20190425112338.dipgmqqfuj45gx6s@laureti-dev>
 <DM6PR02MB4779EE37978EC0E6475C55D7AF390@DM6PR02MB4779.namprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM6PR02MB4779EE37978EC0E6475C55D7AF390@DM6PR02MB4779.namprd02.prod.outlook.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-ClientProxiedBy: ICSMA002.intenta.de (10.10.16.48) To ICSMA002.intenta.de
 (10.10.16.48)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_051820_487781_E7C886B8 
X-CRM114-Status: GOOD (  15.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.249.25.132 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
 "richard@nod.at" <richard@nod.at>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "marek.vasut@gmail.com" <marek.vasut@gmail.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>,
 "nagasureshkumarrelli@gmail.com" <nagasureshkumarrelli@gmail.com>,
 Michal Simek <michals@xilinx.com>,
 "computersforpeace@gmail.com" <computersforpeace@gmail.com>,
 "dwmw2@infradead.org" <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, Apr 29, 2019 at 11:31:14AM +0000, Naga Sureshkumar Relli wrote:
> But just wanted to know, do you see issues with these __force and __iomem castings?

I only see a minor issue: They're (deliberately) lengthy. Using many of
them diverts attention of the reader. Therefore, my proposal attempted
to reduce their frequency. The only issue I see here is readability.

> > 
> > > +	u8 addr_cycles;
> > > +	struct clk *mclk;
> > 
> > All you need here is the memory clock frequency. Wouldn't it be easier to extract that
> > frequency once during probe and store it here? That assumes a constant frequency, but if the
> > frequency isn't constant, you have a race condition.
> That is what we are doing in the probe.
> In the probe, we are getting mclk using of_clk_get() and then we are getting the actual frequency
> Using clk_get_rate().
> And this is constant frequency only(getting from dts)

Not quite. You're getting a clock reference in probe and then repeatedly
access the frequency elswhere. I am suggesting that you get the clock
frequency during probe and never save the clock reference to a struct.

> > > +		case NAND_OP_ADDR_INSTR:
> > > +			offset = nand_subop_get_addr_start_off(subop, op_id);
> > > +			naddrs = nand_subop_get_num_addr_cyc(subop, op_id);
> > > +			addrs = &instr->ctx.addr.addrs[offset];
> > > +			nfc_op->addrs = instr->ctx.addr.addrs[offset];
> > > +			for (i = 0; i < min_t(unsigned int, 4, naddrs); i++) {
> > > +				nfc_op->addrs |= instr->ctx.addr.addrs[i] <<
> > 
> > I don't quite understand what this code does, but it looks strange to me. I compared it to other
> > drivers. The code here is quite similar to marvell_nand.c. It seems like we are copying a
> > varying number (0 to 6) of addresses from the buffer instr->ctx.addr.addrs. However their
> > indices are special: 0, 1, 2, 3, offset + 4, offset + 5. This is non-consecutive and different from
> > marvell_nand.c in this regard. Could it be that you really meant index offset+i here?
> I didn't get, what you are saying here.
> It is about updating page and column addresses.
> Are you asking me to remove nfc_op->addrs = instr->ctx.addr.addrs[offset]; before for loop?

I compared this code to marvell_nand.c and noticed a subtle difference.
Both snippets read 6 address bytes and consume them in a driver-specific
way. Now which address bytes are consumed differs.

marvell_nand.c consumes instr->ctx.addr.addrs at indices offset,
offset+1, offset+2, offset+3, offset+4, offset+5. pl353_nand.c consumes
instr->ctx.addr.addrs at indices 0, 1, 2, 3, offset, offset+4, offset+5.
(In my previous mail, I didn't notice that it was also consuming the
offset index.)

I would have expected this behaviour to be consistent between different
drivers. If I assume marvell_nand.c to do the right thing and
pl353_nand.c to be wrong (which is not necessarily a correct
assumption), then the code woule likely becom:

	addrs = &instr->ctx.addr.addrs[offset];
	for (i = 0; i < min_t(unsigned int, 4, naddrs); i++) {
		nfc_op->addrs |= addrs[i] << (8 * i);
		              // ^^^^^
	}

Hope this helps.

Helmut

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
