Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B1C1BE45A
	for <lists+linux-mtd@lfdr.de>; Wed, 29 Apr 2020 18:53:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qCYXV7chEvZtSF2CGn3ndKvW4rqn3efTUW7ET8Tmx1A=; b=Nv4vmyxr2G9acV
	UXvpEHp/7L38LfbGvH6zetM2H1fgbj0qxSEw4fVkE0Zi4Eb6ULq9ZZQu6SnGkKvLRVoBbJFfAb6hP
	kZwjscmztC/qnOD1W3hhk2QBqejMBC3Vw3uyeMJYWpu9883VmP/Uk6b/EI/EK4zLs98GkOv+aXvlh
	15WKdt2+1EcLYMye8u4goE39Q63TkV3xytzUuJxYd7VMA7/q7g3DGvURuVTXGl9aTuNrIk24tX2s8
	5CS9dsjHr7oRC9u7wITX0RnALZspPoXRUFekq3iMxOyWOLuXTYV2L8JrrkY/93P6filvDCiwNT1+v
	SmevnLeNxlCVLIn6eQ1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTpxI-0002zw-TI; Wed, 29 Apr 2020 16:53:04 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTpxB-0002za-V1
 for linux-mtd@lists.infradead.org; Wed, 29 Apr 2020 16:52:59 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 0A33CC0007;
 Wed, 29 Apr 2020 16:52:53 +0000 (UTC)
Date: Wed, 29 Apr 2020 18:52:52 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v2 09/11] mtd: rawnand: Expose monolithic
 read/write_page_raw() helpers
Message-ID: <20200429185252.1b81a3ea@xps13>
In-Reply-To: <20200429183137.026eb5f9@collabora.com>
References: <20200429155540.22048-1-miquel.raynal@bootlin.com>
 <20200429155540.22048-10-miquel.raynal@bootlin.com>
 <20200429181509.657aa2e5@collabora.com>
 <20200429182631.71cafee4@xps13>
 <20200429183137.026eb5f9@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_095258_134869_EDB72B38 
X-CRM114-Status: GOOD (  19.96  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Hi Boris,

Boris Brezillon <boris.brezillon@collabora.com> wrote on Wed, 29 Apr
2020 18:31:37 +0200:

> On Wed, 29 Apr 2020 18:26:31 +0200
> Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> 
> > Hi Boris,
> > 
> > Boris Brezillon <boris.brezillon@collabora.com> wrote on Wed, 29 Apr
> > 2020 18:15:09 +0200:
> >   
> > > On Wed, 29 Apr 2020 17:55:38 +0200
> > > Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> > >     
> > > > The current nand_read/write_page_raw() helpers are already widely used
> > > > but do not fit the purpose of "constrained" controllers which cannot,
> > > > for instance, separate command/address cycles with data cycles.
> > > > 
> > > > Workaround this issue by proposing alternative helpers that cannot be
> > > > used by controller drivers instead.
> > > > 
> > > > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > > > ---
> > > >  drivers/mtd/nand/raw/nand_base.c | 60 ++++++++++++++++++++++++++++++++
> > > >  include/linux/mtd/rawnand.h      |  8 +++--
> > > >  2 files changed, 66 insertions(+), 2 deletions(-)
> > > > 
> > > > diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
> > > > index 15a9189b2307..2e525cb5a4e4 100644
> > > > --- a/drivers/mtd/nand/raw/nand_base.c
> > > > +++ b/drivers/mtd/nand/raw/nand_base.c
> > > > @@ -2629,6 +2629,39 @@ int nand_read_page_raw(struct nand_chip *chip, uint8_t *buf, int oob_required,
> > > >  }
> > > >  EXPORT_SYMBOL(nand_read_page_raw);
> > > >  
> > > > +/**
> > > > + * nand_monolithic_read_page_raw - Read raw page data without ECC in one go      
> > > 
> > > Maybe
> > > 
> > > "Read the full page (data + OOB) with ECC engine disabled"
> > > 
> > > ?    
> > 
> > This is not accurate as we don't enforce OOB read.  
> 
> Right
> 
> > 
> > Don't you find "in one go" explicit enough?  
> 
> Well, "raw" and "without ECC" is redundant, that's the part I wanted to
> see addressed. And the 'in one go' refers to the data/OOB split, which
> is not clear here.
> 


What about

    "Send a single request to the controller driver to read raw data"

the end of the sentence might also be

    "...to read a page plus eventually the OOB area"

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
