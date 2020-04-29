Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57AB91BE3E7
	for <lists+linux-mtd@lfdr.de>; Wed, 29 Apr 2020 18:31:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tQ36SCeXYT6TQUX2kD7Np6GtQ+RMHkFqHnjWgqKRNfU=; b=XT+O2hr2/6t6vx
	C4MlM3eBeIzqzGi2Sh7PAfESIuPyHebtMVunXvk955YCkpqQuTPyUTrduESrod6wZ1hnV1TOGseWw
	82mJe+aEgCm3dENAHQxR9Mb3Z/JNgkAFnTspXY/d4xmBjctqm4WKIFyND5IGqr46kS/mclVj2I9nl
	eDumcD+3O8V9BViFrRdixBqWTN9QOFtVmd2IfJmSpDJvYSN3iEb0RhfOroeXbfkYAailKFAdRpdp7
	GV+1Hr0QugnPMwSERlSV/X71FFf5VRZNkOpmyOLy9thjvbciLlq3qt1r9tdvoPWddnP9SoRsEX1GX
	eZxQgKya+ycEyuYVVmYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTpcj-0001Js-HM; Wed, 29 Apr 2020 16:31:49 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTpcb-0001I8-VD
 for linux-mtd@lists.infradead.org; Wed, 29 Apr 2020 16:31:43 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 7BC922A092B;
 Wed, 29 Apr 2020 17:31:40 +0100 (BST)
Date: Wed, 29 Apr 2020 18:31:37 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v2 09/11] mtd: rawnand: Expose monolithic
 read/write_page_raw() helpers
Message-ID: <20200429183137.026eb5f9@collabora.com>
In-Reply-To: <20200429182631.71cafee4@xps13>
References: <20200429155540.22048-1-miquel.raynal@bootlin.com>
 <20200429155540.22048-10-miquel.raynal@bootlin.com>
 <20200429181509.657aa2e5@collabora.com>
 <20200429182631.71cafee4@xps13>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_093142_136337_6C1A2019 
X-CRM114-Status: GOOD (  19.98  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Michal Simek <monstr@monstr.eu>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, 29 Apr 2020 18:26:31 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Hi Boris,
> 
> Boris Brezillon <boris.brezillon@collabora.com> wrote on Wed, 29 Apr
> 2020 18:15:09 +0200:
> 
> > On Wed, 29 Apr 2020 17:55:38 +0200
> > Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> >   
> > > The current nand_read/write_page_raw() helpers are already widely used
> > > but do not fit the purpose of "constrained" controllers which cannot,
> > > for instance, separate command/address cycles with data cycles.
> > > 
> > > Workaround this issue by proposing alternative helpers that cannot be
> > > used by controller drivers instead.
> > > 
> > > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > > ---
> > >  drivers/mtd/nand/raw/nand_base.c | 60 ++++++++++++++++++++++++++++++++
> > >  include/linux/mtd/rawnand.h      |  8 +++--
> > >  2 files changed, 66 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
> > > index 15a9189b2307..2e525cb5a4e4 100644
> > > --- a/drivers/mtd/nand/raw/nand_base.c
> > > +++ b/drivers/mtd/nand/raw/nand_base.c
> > > @@ -2629,6 +2629,39 @@ int nand_read_page_raw(struct nand_chip *chip, uint8_t *buf, int oob_required,
> > >  }
> > >  EXPORT_SYMBOL(nand_read_page_raw);
> > >  
> > > +/**
> > > + * nand_monolithic_read_page_raw - Read raw page data without ECC in one go    
> > 
> > Maybe
> > 
> > "Read the full page (data + OOB) with ECC engine disabled"
> > 
> > ?  
> 
> This is not accurate as we don't enforce OOB read.

Right

> 
> Don't you find "in one go" explicit enough?

Well, "raw" and "without ECC" is redundant, that's the part I wanted to
see addressed. And the 'in one go' refers to the data/OOB split, which
is not clear here.


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
