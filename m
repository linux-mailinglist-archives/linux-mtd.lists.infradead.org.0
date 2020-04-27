Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01FE81BADED
	for <lists+linux-mtd@lfdr.de>; Mon, 27 Apr 2020 21:30:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Etn7zUKrQOwybq2vdsYT11LCTwM/9Sz7OPEoWlWd5P4=; b=E2LrWJ1HuldkRa
	218MYi/hC3rOn9SFK9VB+wvC4f6YVkdbtWwlSE5A0iLzWAVROYlwr6uFIjWYy24b8BDXjtWXdTLX7
	qPfF4IwewrsIaoNiX3PKusKi84Mz8opdptQB5YQz1a1UCi5sQSLPrPU4WfZFls2yYSE1PWQts6r/9
	aQDPE6b4bgTD1eCc1o0XGvtBaTNdCo/i0qDZRq6VOj9Ly7gMNoz3/kuVGTlq6l5042HYQvM9QQge0
	nv+UBv5VpQGM3eCDxo0l/AVFEzz45JrQtIEXXOMFzhJuJZ6FuqsumyTJehDKmO74zMXYYtCsiYyyj
	IogmCnayuyL724m5AeuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT9Sp-00029W-GP; Mon, 27 Apr 2020 19:30:47 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT9Sf-00027s-SM
 for linux-mtd@lists.infradead.org; Mon, 27 Apr 2020 19:30:40 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 0A38B200004;
 Mon, 27 Apr 2020 19:30:33 +0000 (UTC)
Date: Mon, 27 Apr 2020 21:30:32 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH 1/3] mtd: rawnand: Add a NAND_NO_BBM_QUIRK flag
Message-ID: <20200427213032.7971dfc1@xps13>
In-Reply-To: <20200427092836.40152b2a@collabora.com>
References: <20200427072453.375642-1-boris.brezillon@collabora.com>
 <20200427092836.40152b2a@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_123038_051584_D1C4FA97 
X-CRM114-Status: GOOD (  17.17  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Cc: Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


Boris Brezillon <boris.brezillon@collabora.com> wrote on Mon, 27 Apr
2020 09:28:36 +0200:

> On Mon, 27 Apr 2020 09:24:51 +0200
> Boris Brezillon <boris.brezillon@collabora.com> wrote:
> 
> > Some controllers with embedded ECC engines override the BBM marker with
> > data or ECC bytes, thus making bad block detection through bad block
> > marker impossible. Let's flag those chips so the core knows it shouldn't
> > check the BBM and consider all blocks good.
> > 
> > This should allow us to get rid of two implementers of the
> > legacy.block_bad() hook.
> > 
> > Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> > ---
> >  drivers/mtd/nand/raw/nand_base.c | 3 +++
> >  include/linux/mtd/rawnand.h      | 8 ++++++++
> >  2 files changed, 11 insertions(+)
> > 
> > diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
> > index f81b54634061..749ef0b40684 100644
> > --- a/drivers/mtd/nand/raw/nand_base.c
> > +++ b/drivers/mtd/nand/raw/nand_base.c
> > @@ -345,6 +345,9 @@ static int nand_block_bad(struct nand_chip *chip, loff_t ofs)
> >  
> >  static int nand_isbad_bbm(struct nand_chip *chip, loff_t ofs)
> >  {
> > +	if (chip->options & NAND_NO_BBM_QUIRK)
> > +		return 0;
> > +
> >  	if (chip->legacy.block_bad)
> >  		return chip->legacy.block_bad(chip, ofs);
> >  
> > diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
> > index 99f4ac47c8d3..37613dd9e04b 100644
> > --- a/include/linux/mtd/rawnand.h
> > +++ b/include/linux/mtd/rawnand.h
> > @@ -222,6 +222,14 @@ enum nand_ecc_algo {
> >   */
> >  #define NAND_KEEP_TIMINGS	0x00800000
> >  
> > +/*
> > + * Some controllers with pipelined ECC engines override the BBM marker with
> > + * data or ECC bytes, thus making bad block detection through bad block marker
> > + * impossible. Let's flag those chips so the core knows it shouldn't check the
> > + * BBM and consider all blocks good.
> > + */
> > +#define NAND_NO_BBM_QUIRK	0  
> 
> Oops, should be 
> 
> #define NAND_NO_BBM_QUIRK	0x08000000
> 
> I'll have to rebase it on Miquel's series re-ordering the flag
> definitions and using the BIT() macro anyway. But please don't take this
> as an excuse for not reviewing this version :P.

Hehe, what did you say again about great minds? :)

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
