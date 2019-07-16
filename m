Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C5B96A32C
	for <lists+linux-mtd@lfdr.de>; Tue, 16 Jul 2019 09:45:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gwhl10sPlxAAUS7RWTxXzU7G/5Y+EZUCeGEQnftHoXs=; b=UW/MtEDiUpawPZ
	ry/K5yrWH4FKx/Ez54POBpTubfT1ND7TcBOtu8q1xa5kInbnV/NjIbDMzu1GzAXmKgbSDObmcBveW
	63fA/wLHJ6cs+dlAg8L4aW7OX2EHNXWGXt8mSIqpSCEELKjHJ/i4JCxbIPGC4a+C8lgMaXvJvEIJw
	2h8zoIUTFQEg0yKz1VieS88PWyG4hDxtt314lu1dvld7MGI+o2da7DrlPEwGybzBlG68HwOhE029l
	ZiPae9LH0g+xDOXsYYhGZ4DwV3MLC8Q+7FIo8qSR17BFEEd0ZlMYVloFgOIDfnzc4z9DDyjZTg2VS
	jzJjY2N9+Am6Uk/jrUSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnI9N-0000Hq-Nq; Tue, 16 Jul 2019 07:45:25 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnI8t-0007YV-0U
 for linux-mtd@lists.infradead.org; Tue, 16 Jul 2019 07:44:56 +0000
Received: from pc-375.home
 (2a01cb0c88d94a005820d607da339aae.ipv6.abo.wanadoo.fr
 [IPv6:2a01:cb0c:88d9:4a00:5820:d607:da33:9aae])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 645C928B69A;
 Tue, 16 Jul 2019 08:44:53 +0100 (BST)
Date: Tue, 16 Jul 2019 09:44:50 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Naga Sureshkumar Relli <naga.sureshkumar.relli@xilinx.com>
Subject: Re: [LINUX PATCH v18 1/2] mtd: rawnand: nand_micron: Do not over
 write driver's read_page()/write_page()
Message-ID: <20190716094450.122ba6e7@pc-375.home>
In-Reply-To: <20190716093137.3d8e8c1f@pc-375.home>
References: <20190716053051.11282-1-naga.sureshkumar.relli@xilinx.com>
 <20190716093137.3d8e8c1f@pc-375.home>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_004455_305305_F09AB2A8 
X-CRM114-Status: GOOD (  17.19  )
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
Cc: nagasuresh12@gmail.com, vigneshr@ti.com, bbrezillon@kernel.org,
 yamada.masahiro@socionext.com, richard@nod.at, svemula@xilinx.com,
 linux-kernel@vger.kernel.org, michal.simek@xilinx.com, marek.vasut@gmail.com,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 computersforpeace@gmail.com, dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 16 Jul 2019 09:31:37 +0200
Boris Brezillon <boris.brezillon@collabora.com> wrote:

> On Mon, 15 Jul 2019 23:30:51 -0600
> Naga Sureshkumar Relli <naga.sureshkumar.relli@xilinx.com> wrote:
> 
> > Add check before assigning chip->ecc.read_page() and chip->ecc.write_page()
> > 
> > Signed-off-by: Naga Sureshkumar Relli <naga.sureshkumar.relli@xilinx.com>
> > ---
> > Changes in v18
> >  - None
> > ---
> >  drivers/mtd/nand/raw/nand_micron.c | 7 +++++--
> >  1 file changed, 5 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/mtd/nand/raw/nand_micron.c b/drivers/mtd/nand/raw/nand_micron.c
> > index cbd4f09ac178..565f2696c747 100644
> > --- a/drivers/mtd/nand/raw/nand_micron.c
> > +++ b/drivers/mtd/nand/raw/nand_micron.c
> > @@ -500,8 +500,11 @@ static int micron_nand_init(struct nand_chip *chip)
> >  		chip->ecc.size = 512;
> >  		chip->ecc.strength = chip->base.eccreq.strength;
> >  		chip->ecc.algo = NAND_ECC_BCH;
> > -		chip->ecc.read_page = micron_nand_read_page_on_die_ecc;
> > -		chip->ecc.write_page = micron_nand_write_page_on_die_ecc;
> > +		if (!chip->ecc.read_page)
> > +			chip->ecc.read_page = micron_nand_read_page_on_die_ecc;
> > +
> > +		if (!chip->ecc.write_page)
> > +			chip->ecc.write_page = micron_nand_write_page_on_die_ecc;
> >    
> 
> Seriously?! I told you this was inappropriate and you keep sending this
> patch. So let's make it clear:
> 
> Nacked-by: Boris Brezillon <boris.brezillon@collabora.com>
> 
> Fix your controller driver instead of adding hacks to the Micron logic!

Not even going to review the other patch: if you have to do that, that
means the driver is broken. On a side note, this patch series is still
not threaded as it should be and it's a v18 for a damn NAND controller
driver! Sorry but you reached the limit of my patience. Please find
someone to help you with that task.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
