Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE8B2492F
	for <lists+linux-mtd@lfdr.de>; Tue, 21 May 2019 09:43:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HfwZrr4fYLngUoqyDuHRQSvszMipaNm5cvlp/toF7wI=; b=EtdSCtOst5E4IT
	FYnrIKPQkNxfWAxJSOQudSijOkgQnXFCGWetVYojbHfO1mILL9+MGlFBjgV7pkcrHXNFXHq1/s/pZ
	UxzPD6PNlnKylRztYqS7qRWbAKQOo8qaYk5FGU6cjzEuDA5UPgusZQRyXDlHaCzDB1FPGbIWCBnYY
	l7k6MHChSwkC5siGgfhlh9sQRQjLXxisTgks5t+V7pxzAnINy0NKfLyJ1QDu6tWewHxw98COG6o2X
	VBbOZrqoXskeP/fyEFyqboBw558WN5Zgc3HnneNNoRsrXv+yocGvwbp/TW5zMszQvxzhlKlHwB/tV
	maLeWtAjyVKx18H6m+Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSzQp-0003lF-4i; Tue, 21 May 2019 07:43:31 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSzQU-0003cS-H9; Tue, 21 May 2019 07:43:12 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id A23F02841E1;
 Tue, 21 May 2019 08:43:08 +0100 (BST)
Date: Tue, 21 May 2019 09:43:05 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH v2 14/15] mtd: rawnand: Get rid of chip->numchips
Message-ID: <20190521094305.3769f1a2@collabora.com>
In-Reply-To: <20190521093302.079f5470@collabora.com>
References: <20190304201522.11323-1-miquel.raynal@bootlin.com>
 <20190304201522.11323-15-miquel.raynal@bootlin.com>
 <20190521065948.GA16530@pengutronix.de>
 <20190521093302.079f5470@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_004310_850377_23937FF3 
X-CRM114-Status: GOOD (  23.63  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mason Yang <masonccyang@mxic.com.tw>, Vignesh R <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>, Julien Su <juliensu@mxic.com.tw>,
 Richard Weinberger <richard@nod.at>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 Marek Vasut <marek.vasut@gmail.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 21 May 2019 09:33:02 +0200
Boris Brezillon <boris.brezillon@collabora.com> wrote:

> On Tue, 21 May 2019 08:59:48 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > Hi,
> > 
> > On Mon, Mar 04, 2019 at 09:15:21PM +0100, Miquel Raynal wrote:  
> > > diff --git a/drivers/mtd/nand/raw/internals.h b/drivers/mtd/nand/raw/internals.h
> > > index fbf6ca015cd7..a204f9d7e123 100644
> > > --- a/drivers/mtd/nand/raw/internals.h
> > > +++ b/drivers/mtd/nand/raw/internals.h
> > > @@ -110,7 +110,7 @@ static inline int nand_exec_op(struct nand_chip *chip,
> > >  	if (!nand_has_exec_op(chip))
> > >  		return -ENOTSUPP;
> > >  
> > > -	if (WARN_ON(op->cs >= chip->numchips))
> > > +	if (WARN_ON(op->cs >= nanddev_ntargets(&chip->base)))
> > >  		return -EINVAL;    
> > 
> > This warning triggers when I apply my gpmi nand exec_op series.
> > 
> > The gpmi driver calls:
> > 
> > 	ret = nand_scan(chip, GPMI_IS_MX6(this) ? 2 : 1);
> > 
> > This ends up in nand_scan_ident() with maxchips = 2. Here nand_detect()
> > is called which sets memorg->ntargets = 1; Later in nand_scan_ident() we
> > have:
> > 
> > 	for (i = 1; i < maxchips; i++) {  
> 
> This loop should be fixed to test against nanddev_ntargets() instead of
> maxchips.
> 
> > 		u8 id[2];
> > 
> > 		/* See comment in nand_get_flash_type for reset */
> > 		ret = nand_reset(chip, i);
> > 		if (ret)
> > 			break;
> > 		....
> > 
> > this nand_reset() calls nand_exec_op() with op->cs = 1, nanddev_ntargets() = 1
> > and boom.
> > 
> > I can't see how this can work with anything else but maxchips = 1. Do you
> > have an idea how this is supposed to work?

Forgot to reply to that one. ->ntargets is set to the number of
dies/tartgets actually detected here [1], so it's not always 1 (can
also be extracted from the ONFI table IIRC).
Note that I've never been a big fan of this maxchip param, and I've
asked that new drivers pass the actual number of CS connected to the
NAND chip being initialized (which should be part of the HW desc, be it
DT based or board-file based). So, ideally this argument should be named
num_dies or num_targets and the function should return an error when
one of the die returns a different ID. Unfortunately, that's not
something we can do, because a lot of drivers rely on the old
semantic...

[1]https://elixir.bootlin.com/linux/v5.2-rc1/source/drivers/mtd/nand/raw/nand_base.c#L5073

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
