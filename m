Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE3F1C33EF
	for <lists+linux-mtd@lfdr.de>; Mon,  4 May 2020 10:03:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vTlVR7KL8zIag4aXsKMHk96FnVag82WPWshRfctfOn8=; b=BnXz+7zsaNB3Fn
	xTUcTVZFqwRCdWz1WaI6MU/k6olecu/1CB8nZPy/bWorNBURPDkXBVTSaq72SfouHEbmtejRy3+/h
	fNg25j+QiZXgRu4Sf3Pr4Dfcd2J46nUAbVWCdPslZgLvunj5qoLav1eEKixwuFrxRiHX59vBQ4Uee
	yfNhnHaMy7vfxCZTPiP7yLqd2Yp9E/csONU3Jfv93IfvTRpSXC7Pj/BH7YpChMDDyHHdAGIDrnYLt
	YfGFTas6smx/5j/u4e9eYGcn7AxSOCJGHmWVJT+RNyMCo1QH3VbEffFTTHcpj+60EK5kqkx64TQU3
	n+l/2AzsmsTaOTFpcEpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVW46-0002hN-Gj; Mon, 04 May 2020 08:03:02 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVW3z-0002g8-6V
 for linux-mtd@lists.infradead.org; Mon, 04 May 2020 08:02:57 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id CAD4FC0021;
 Mon,  4 May 2020 08:02:46 +0000 (UTC)
Date: Mon, 4 May 2020 10:02:45 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v2 08/11] mtd: rawnand: jedec: Adapt the parameter page
 read to constraint controllers
Message-ID: <20200504100245.6fa81a31@xps13>
In-Reply-To: <20200503214403.5f68fb93@collabora.com>
References: <20200429155540.22048-1-miquel.raynal@bootlin.com>
 <20200429155540.22048-9-miquel.raynal@bootlin.com>
 <20200429180405.5bf69447@collabora.com>
 <20200503210623.25d384c4@xps13>
 <20200503214403.5f68fb93@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_010255_372985_FBA05CB5 
X-CRM114-Status: GOOD (  24.25  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Michal Simek <monstr@monstr.eu>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


Boris Brezillon <boris.brezillon@collabora.com> wrote on Sun, 3 May
2020 21:44:03 +0200:

> On Sun, 3 May 2020 21:06:23 +0200
> Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> 
> > Hi Boris,
> > 
> > Boris Brezillon <boris.brezillon@collabora.com> wrote on Wed, 29 Apr
> > 2020 18:04:05 +0200:
> >   
> > > On Wed, 29 Apr 2020 17:55:37 +0200
> > > Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> > >     
> > > > We already know that there are controllers not able to read the three
> > > > copies of the parameter page in one go. The workaround was to first
> > > > request the controller to assert command and address cycles on the
> > > > NAND bus to trigger a parameter page read, and then do a read
> > > > operation for each page.
> > > > 
> > > > But there are also controllers which are not able to split the
> > > > parameter page read between the command/address cycles and the actual
> > > > data operation.
> > > > 
> > > > All controllers are expected to be able to change the read column
> > > > though. So let's use a regular parameter page read operation for the
> > > > first iteration and use a change read column operation for the
> > > > following copies.
> > > > 
> > > > The extra command and address cycles sent over the NAND bus are
> > > > negligible compared to the amount of data that is being transferred
> > > > anyway.
> > > > 
> > > > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > > > ---
> > > >  drivers/mtd/nand/raw/nand_jedec.c | 28 +++++++++++++++-------------
> > > >  1 file changed, 15 insertions(+), 13 deletions(-)
> > > > 
> > > > diff --git a/drivers/mtd/nand/raw/nand_jedec.c b/drivers/mtd/nand/raw/nand_jedec.c
> > > > index 15937e02c64f..b2be9056759a 100644
> > > > --- a/drivers/mtd/nand/raw/nand_jedec.c
> > > > +++ b/drivers/mtd/nand/raw/nand_jedec.c
> > > > @@ -25,7 +25,7 @@ int nand_jedec_detect(struct nand_chip *chip)
> > > >  {
> > > >  	struct mtd_info *mtd = nand_to_mtd(chip);
> > > >  	struct nand_memory_organization *memorg;
> > > > -	struct nand_jedec_params *p;
> > > > +	struct nand_jedec_params *p = NULL, *pbuf;      
> > > 
> > > Looks like you've merged 2 different commits here. I remember you had a
> > > separate commit adding pbuf to avoid an extra memcpy().    
> > 
> > Actually this was only fixed in the onfi detection routine. The jedec
> > equivalent does not copy the page (the copy came from the 3-way merge
> > that has only been added to onfi detection).
> > 
> > Here pbuf represents the buffer containing the three pages while p now
> > only points to the actual page that is correct.  
> 
> Oh, I see. Looks like the p = pbuf assignment is wrong BTW (should be
> p = &pbuf[i]).

Good catch!

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
