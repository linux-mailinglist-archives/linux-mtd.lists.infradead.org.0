Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B0156896
	for <lists+linux-mtd@lfdr.de>; Wed, 26 Jun 2019 14:22:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+JWbKNAQ41PO6fIT9CerFKJAprXOF35/x/jastmOcsU=; b=A7TAe/I+ciUJmB
	dEvHp47CU8Oy2yg94hs04QV6pKhSCVDxBc/COLqMBsV/eiu3QXlEC7LmWEgWNdDjonnOCuGd6AXew
	In0HTz4u9xf5OO/Mildatbp0K7Cq4X3a6Lz7RdDcYtMsfRhW+gK73a+HB4o+6HD8yP6I2f3xpYABi
	yaOtMjcQreVR0ys5dr+GT+qQ1HmPOcm76CScNjzIeMiU5sqTs3MBM3cP2I8mTRGkIK1ngTt7qVpFn
	O03wYB3fgYbndad2cU0RsmPno4qGSnZ7d6RZKXbtobQsMAye23LX4hT/smIgbugw8S1ZCoikiYMEE
	Ek8WPGwhIHZdW5ES6CRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg6wk-0007QD-Hl; Wed, 26 Jun 2019 12:22:42 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg6wJ-0007NG-4Q
 for linux-mtd@lists.infradead.org; Wed, 26 Jun 2019 12:22:20 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 7582D2639F9;
 Wed, 26 Jun 2019 13:22:13 +0100 (BST)
Date: Wed, 26 Jun 2019 14:20:21 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Naga Sureshkumar Relli <nagasure@xilinx.com>
Subject: Re: [LINUX PATCH v17 1/2] mtd: rawnand: nand_micron: Do not over
 write driver's read_page()/write_page()
Message-ID: <20190626142021.484c4fd8@collabora.com>
In-Reply-To: <DM6PR02MB4779B5C815FB4DAF33EF4996AFE20@DM6PR02MB4779.namprd02.prod.outlook.com>
References: <20190625044630.31717-1-naga.sureshkumar.relli@xilinx.com>
 <20190626084807.3f06e718@collabora.com>
 <DM6PR02MB47796E3306C166A91E0BAE91AFE20@DM6PR02MB4779.namprd02.prod.outlook.com>
 <20190626132715.6128d8b1@collabora.com>
 <DM6PR02MB4779D347620E88BDB943DEB4AFE20@DM6PR02MB4779.namprd02.prod.outlook.com>
 <20190626140417.440cf762@collabora.com>
 <DM6PR02MB4779B5C815FB4DAF33EF4996AFE20@DM6PR02MB4779.namprd02.prod.outlook.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_052218_560392_34E88101 
X-CRM114-Status: GOOD (  25.53  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: "vigneshr@ti.com" <vigneshr@ti.com>,
 "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
 "helmut.grohne@intenta.de" <helmut.grohne@intenta.de>,
 "richard@nod.at" <richard@nod.at>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "marek.vasut@gmail.com" <marek.vasut@gmail.com>,
 "yamada.masahiro@socionext.com" <yamada.masahiro@socionext.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>,
 "computersforpeace@gmail.com" <computersforpeace@gmail.com>,
 "dwmw2@infradead.org" <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, 26 Jun 2019 12:12:47 +0000
Naga Sureshkumar Relli <nagasure@xilinx.com> wrote:

> Hi Boris,
> 
> > -----Original Message-----
> > From: Boris Brezillon <boris.brezillon@collabora.com>
> > Sent: Wednesday, June 26, 2019 5:34 PM
> > To: Naga Sureshkumar Relli <nagasure@xilinx.com>
> > Cc: miquel.raynal@bootlin.com; helmut.grohne@intenta.de; richard@nod.at;
> > dwmw2@infradead.org; computersforpeace@gmail.com; marek.vasut@gmail.com;
> > vigneshr@ti.com; bbrezillon@kernel.org; yamada.masahiro@socionext.com; linux-
> > mtd@lists.infradead.org; linux-kernel@vger.kernel.org
> > Subject: Re: [LINUX PATCH v17 1/2] mtd: rawnand: nand_micron: Do not over write
> > driver's read_page()/write_page()
> > 
> > On Wed, 26 Jun 2019 11:51:12 +0000
> > Naga Sureshkumar Relli <nagasure@xilinx.com> wrote:
> >   
> > > Hi Boris,
> > >  
> > > > -----Original Message-----
> > > > From: Boris Brezillon <boris.brezillon@collabora.com>
> > > > Sent: Wednesday, June 26, 2019 4:57 PM
> > > > To: Naga Sureshkumar Relli <nagasure@xilinx.com>
> > > > Cc: miquel.raynal@bootlin.com; helmut.grohne@intenta.de;
> > > > richard@nod.at; dwmw2@infradead.org; computersforpeace@gmail.com;
> > > > marek.vasut@gmail.com; vigneshr@ti.com; bbrezillon@kernel.org;
> > > > yamada.masahiro@socionext.com; linux- mtd@lists.infradead.org;
> > > > linux-kernel@vger.kernel.org
> > > > Subject: Re: [LINUX PATCH v17 1/2] mtd: rawnand: nand_micron: Do not
> > > > over write driver's read_page()/write_page()
> > > >
> > > > On Wed, 26 Jun 2019 11:22:33 +0000
> > > > Naga Sureshkumar Relli <nagasure@xilinx.com> wrote:
> > > >  
> > > > > Hi Boris,
> > > > >  
> > > > > > -----Original Message-----
> > > > > > From: Boris Brezillon <boris.brezillon@collabora.com>
> > > > > > Sent: Wednesday, June 26, 2019 12:18 PM
> > > > > > To: Naga Sureshkumar Relli <nagasure@xilinx.com>
> > > > > > Cc: miquel.raynal@bootlin.com; helmut.grohne@intenta.de;
> > > > > > richard@nod.at; dwmw2@infradead.org;
> > > > > > computersforpeace@gmail.com; marek.vasut@gmail.com;
> > > > > > vigneshr@ti.com; bbrezillon@kernel.org;
> > > > > > yamada.masahiro@socionext.com; linux- mtd@lists.infradead.org;
> > > > > > linux-kernel@vger.kernel.org
> > > > > > Subject: Re: [LINUX PATCH v17 1/2] mtd: rawnand: nand_micron: Do
> > > > > > not over write driver's read_page()/write_page()
> > > > > >
> > > > > > On Mon, 24 Jun 2019 22:46:29 -0600 Naga Sureshkumar Relli
> > > > > > <naga.sureshkumar.relli@xilinx.com> wrote:
> > > > > >  
> > > > > > > Add check before assigning chip->ecc.read_page() and
> > > > > > > chip->ecc.write_page()
> > > > > > >
> > > > > > > Signed-off-by: Naga Sureshkumar Relli
> > > > > > > <naga.sureshkumar.relli@xilinx.com>
> > > > > > > ---
> > > > > > >  drivers/mtd/nand/raw/nand_micron.c | 7 +++++--
> > > > > > >  1 file changed, 5 insertions(+), 2 deletions(-)
> > > > > > >
> > > > > > > diff --git a/drivers/mtd/nand/raw/nand_micron.c
> > > > > > > b/drivers/mtd/nand/raw/nand_micron.c
> > > > > > > index cbd4f09ac178..565f2696c747 100644
> > > > > > > --- a/drivers/mtd/nand/raw/nand_micron.c
> > > > > > > +++ b/drivers/mtd/nand/raw/nand_micron.c
> > > > > > > @@ -500,8 +500,11 @@ static int micron_nand_init(struct nand_chip *chip)
> > > > > > >  		chip->ecc.size = 512;
> > > > > > >  		chip->ecc.strength = chip->base.eccreq.strength;
> > > > > > >  		chip->ecc.algo = NAND_ECC_BCH;
> > > > > > > -		chip->ecc.read_page = micron_nand_read_page_on_die_ecc;
> > > > > > > -		chip->ecc.write_page = micron_nand_write_page_on_die_ecc;
> > > > > > > +		if (!chip->ecc.read_page)
> > > > > > > +			chip->ecc.read_page = micron_nand_read_page_on_die_ecc;
> > > > > > > +
> > > > > > > +		if (!chip->ecc.write_page)
> > > > > > > +			chip->ecc.write_page = micron_nand_write_page_on_die_ecc;  
> > > > > >
> > > > > > That's wrong, if you don't want on-die ECC to be used, simply
> > > > > > don't set nand-ecc-mode to "on- die".  
> > > > > Ok. But if we want to use on-die ECC then you mean to say it is
> > > > > mandatory to use  
> > > > micron_nand_read/write_page_on_die_ecc()?
> > > >
> > > > Absolutely, and if it doesn't work that means you driver does not
> > > > implement raw accesses correctly, which means it's still buggy...  
> > > I agree. But let's say, if there is a limitation with the controller. Then it is must to have this  
> > check right?  
> > > I mean, for pl353 controller, we must clear the CS during the data
> > > phase, hence we are splitting the Transfer in the pl353_read/write_page_raw().
> > > +	pl353_nand_read_data_op(chip, buf, mtd->writesize, false);
> > > +	p = chip->oob_poi;
> > > +	pl353_nand_read_data_op(chip, p,
> > > +				(mtd->oobsize -
> > > +				PL353_NAND_LAST_TRANSFER_LENGTH), false);
> > > +	p += (mtd->oobsize - PL353_NAND_LAST_TRANSFER_LENGTH);
> > > +	xnfc->dataphase_addrflags |= PL353_NAND_CLEAR_CS;
> > > +	pl353_nand_read_data_op(chip, p, PL353_NAND_LAST_TRANSFER_LENGTH,
> > > +				false);
> > > As the above sequence is needed even for raw access, PL353 is unable to use the on_die_page  
> > reads.
> > 
> > This "de-assert CS on last access" logic should be done in the
> > exec_op() implementation. I also wonder how that works for operations that don't have data
> > cycles. Oh, BTW, most chips are CE-don't-care, which means you can assert/de-assert CS on
> > each read_data_op() without any issues.  
> Yes, we can assert/de-assert CS on each read/write_data_op().
> But what about transfer length splitting?
> +	p = chip->oob_poi;
> +	pl353_nand_read_data_op(chip, p,
> +				(mtd->oobsize -
> +				PL353_NAND_LAST_TRANSFER_LENGTH), false);
> +	p += (mtd->oobsize - PL353_NAND_LAST_TRANSFER_LENGTH);
> This should be done as a part of pl353_raw_read/write() right?

Are you sure you need to do that, and if that's the case, do you have
an idea why this is needed? Is this "read last 4 bytes separately"
thing is needed, I suspect it's needed for any kind of input-data
cycles, not just page reads.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
