Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B91166B8D0
	for <lists+linux-mtd@lfdr.de>; Wed, 17 Jul 2019 11:04:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p/6Q95Sj+cXchI3rT9JocEDG+LzRkaoJfxBwZnz1sFA=; b=U8tJjmq7NK3CPY
	IEf7/qYua4KM/7ikMxz0CBM/e7BWVsHFfW97T/EWmXH3Hh3PPrWTdV0SWZkeNflZM50JWsmfxl/yy
	wfWquTb8LCg9t26G39JgzCZfJkH15x3jzoeLKn8MS9EMnyVnltLJzCsQtMZcaS/s1WzvMA4D2G+fE
	Np/c2zdI/cWfgwyqpaQv8u7xBeXJXqR38eCq4SakfdWwXFiCe9U85Q8+dI5cdA1sn9bhQHKUfM0wi
	71NWL3MWyk0EM0tWhsadtc6+aFnzlrpLMUuzdEbdK3nXWWyqTY0zUczMXI+PiDHRvx4SqAnJVPUwn
	fHsUDG85s99nZy0qM4UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnfrg-0004fE-Hn; Wed, 17 Jul 2019 09:04:44 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnfrO-0004cz-Ni
 for linux-mtd@lists.infradead.org; Wed, 17 Jul 2019 09:04:29 +0000
Received: from pc-375.home
 (2a01cb0c88d94a005820d607da339aae.ipv6.abo.wanadoo.fr
 [IPv6:2a01:cb0c:88d9:4a00:5820:d607:da33:9aae])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 6F94428A4C3;
 Wed, 17 Jul 2019 10:04:22 +0100 (BST)
Date: Wed, 17 Jul 2019 11:04:18 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Naga Sureshkumar Relli <nagasure@xilinx.com>
Subject: Re: [LINUX PATCH v18 1/2] mtd: rawnand: nand_micron: Do not over
 write driver's read_page()/write_page()
Message-ID: <20190717110418.34453dd3@pc-375.home>
In-Reply-To: <20190717102156.68aa86f7@pc-375.home>
References: <20190716053051.11282-1-naga.sureshkumar.relli@xilinx.com>
 <20190716093137.3d8e8c1f@pc-375.home>
 <20190716094450.122ba6e7@pc-375.home>
 <DM6PR02MB4779307E32670683AE9F60D6AFC90@DM6PR02MB4779.namprd02.prod.outlook.com>
 <20190717095525.6e2e9730@pc-375.home>
 <20190717102156.68aa86f7@pc-375.home>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_020427_041900_A53CD4BF 
X-CRM114-Status: GOOD (  39.14  )
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
Cc: "nagasuresh12@gmail.com" <nagasuresh12@gmail.com>,
 "vigneshr@ti.com" <vigneshr@ti.com>,
 "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
 "yamada.masahiro@socionext.com" <yamada.masahiro@socionext.com>,
 "richard@nod.at" <richard@nod.at>, Srikanth Vemula <svemula@xilinx.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "marek.vasut@gmail.com" <marek.vasut@gmail.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>,
 Michal Simek <michals@xilinx.com>,
 "computersforpeace@gmail.com" <computersforpeace@gmail.com>,
 "dwmw2@infradead.org" <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, 17 Jul 2019 10:21:56 +0200
Boris Brezillon <boris.brezillon@collabora.com> wrote:

> On Wed, 17 Jul 2019 09:55:25 +0200
> Boris Brezillon <boris.brezillon@collabora.com> wrote:
> 
> > On Wed, 17 Jul 2019 05:33:35 +0000
> > Naga Sureshkumar Relli <nagasure@xilinx.com> wrote:
> >   
> > > Hi Boris,
> > >     
> > > > -----Original Message-----
> > > > From: Boris Brezillon <boris.brezillon@collabora.com>
> > > > Sent: Tuesday, July 16, 2019 1:15 PM
> > > > To: Naga Sureshkumar Relli <nagasure@xilinx.com>
> > > > Cc: miquel.raynal@bootlin.com; bbrezillon@kernel.org; richard@nod.at;
> > > > dwmw2@infradead.org; computersforpeace@gmail.com; marek.vasut@gmail.com;
> > > > vigneshr@ti.com; yamada.masahiro@socionext.com; linux-mtd@lists.infradead.org; linux-
> > > > kernel@vger.kernel.org; Michal Simek <michals@xilinx.com>; Srikanth Vemula
> > > > <svemula@xilinx.com>; nagasuresh12@gmail.com
> > > > Subject: Re: [LINUX PATCH v18 1/2] mtd: rawnand: nand_micron: Do not over write
> > > > driver's read_page()/write_page()
> > > > 
> > > > On Tue, 16 Jul 2019 09:31:37 +0200
> > > > Boris Brezillon <boris.brezillon@collabora.com> wrote:
> > > >       
> > > > > On Mon, 15 Jul 2019 23:30:51 -0600
> > > > > Naga Sureshkumar Relli <naga.sureshkumar.relli@xilinx.com> wrote:
> > > > >      
> > > > > > Add check before assigning chip->ecc.read_page() and
> > > > > > chip->ecc.write_page()
> > > > > >
> > > > > > Signed-off-by: Naga Sureshkumar Relli
> > > > > > <naga.sureshkumar.relli@xilinx.com>
> > > > > > ---
> > > > > > Changes in v18
> > > > > >  - None
> > > > > > ---
> > > > > >  drivers/mtd/nand/raw/nand_micron.c | 7 +++++--
> > > > > >  1 file changed, 5 insertions(+), 2 deletions(-)
> > > > > >
> > > > > > diff --git a/drivers/mtd/nand/raw/nand_micron.c
> > > > > > b/drivers/mtd/nand/raw/nand_micron.c
> > > > > > index cbd4f09ac178..565f2696c747 100644
> > > > > > --- a/drivers/mtd/nand/raw/nand_micron.c
> > > > > > +++ b/drivers/mtd/nand/raw/nand_micron.c
> > > > > > @@ -500,8 +500,11 @@ static int micron_nand_init(struct nand_chip *chip)
> > > > > >  		chip->ecc.size = 512;
> > > > > >  		chip->ecc.strength = chip->base.eccreq.strength;
> > > > > >  		chip->ecc.algo = NAND_ECC_BCH;
> > > > > > -		chip->ecc.read_page = micron_nand_read_page_on_die_ecc;
> > > > > > -		chip->ecc.write_page = micron_nand_write_page_on_die_ecc;
> > > > > > +		if (!chip->ecc.read_page)
> > > > > > +			chip->ecc.read_page = micron_nand_read_page_on_die_ecc;
> > > > > > +
> > > > > > +		if (!chip->ecc.write_page)
> > > > > > +			chip->ecc.write_page = micron_nand_write_page_on_die_ecc;
> > > > > >      
> > > > >
> > > > > Seriously?! I told you this was inappropriate and you keep sending
> > > > > this patch. So let's make it clear:
> > > > >
> > > > > Nacked-by: Boris Brezillon <boris.brezillon@collabora.com>
> > > > >
> > > > > Fix your controller driver instead of adding hacks to the Micron logic!      
> > > > 
> > > > Not even going to review the other patch: if you have to do that, that means the driver is
> > > > broken. On a side note, this patch series is still not threaded as it should be and it's a v18 for a
> > > > damn NAND controller driver! Sorry but you reached the limit of my patience. Please find
> > > > someone to help you with that task.      
> > > My intention is not to resend this 1/2 again. Sorry for that.
> > > We already had some discussion on [v17 1/2], https://lkml.org/lkml/2019/6/26/430
> > > And there we didn't conclude that raw_read()/writes().    
> > 
> > Yes, looks like I never replied to that one, but I think my previous
> > explanation were clear enough to not argue on that aspect any longer/
> >   
> > > So I thought that, will send updated driver along with this patch, then will get more information about
> > > The issue on the latest driver review.    
> > 
> > More on that topic. I don't think you ever tested on-die ECC on a
> > Micron NAND, otherwise you would have noticed that your solution
> > completely bypasses the on-die ECC logic (and this will clearly break
> > existing on-die ECC users). See, that's what I'm complaining about,
> > Looks like you don't really understand what you're doing.
> >   
> > > There is nothing like keep on sending this patch, As you people are experts in the driver review, 
> > > if this patch is a hack, then we will definitely fix that in controller driver. I will find a way to do that.
> > > 
> > > But in this flow of patch sending, if the work I did hurts you, then I am really sorry for that.    
> > 
> > I'm not offended, just tired going through the same driver over and
> > over again, reporting things that are wrong/inappropriate to then
> > realize you only addressed of a tiny portion of it in the following
> > version. My last reviews were rather incomplete because of that, and
> > now I'm giving up.
> >   
> > > Will fix this issue in the controller driver and will send the updated one.    
> > 
> > How? You say you'll fix the issue but I'm not even sure you understand
> > what the issue is? Clearly, the patch you've posted doesn't fix
> > anything, it's just papering over the fact that your controller driver
> > is not supporting raw accesses (or at least, not supporting it
> > properly).
> > 
> > Have you even looked at the datasheet you pointed to in patch 2 [1]?
> > Just went through it, and found a field that's supposed to control the
> > ECC engine activation: ecc_memcfg.ecc_mode. I don't see anything
> > changing that field in your code, so I guess raw accesses are actually
> > not really happening with the ECC engine disabled...   
> 
> Looks like I was wrong about that part, you seem to call
> pl353_smc_set_ecc_mode(), just not in the right place (this should be
> done in the read/write_page_raw()).

I'm wrong again. ECC should be in BYPASS mode by default and you should
enable it when entering pl353_nand_{read,write}_page() and disable it
(put it back to BYPASS mode) when leaving those functions. This way,
you don't even have to implement your own raw accessors and can use
nand_{read,write}_page_raw() instead.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
