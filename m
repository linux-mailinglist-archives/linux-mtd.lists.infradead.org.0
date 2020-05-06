Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 594971C7B94
	for <lists+linux-mtd@lfdr.de>; Wed,  6 May 2020 22:53:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nsUCruXpiSZyxk8Cm0191WnGX/4M68gO9KZTX/8IFY4=; b=f75V6+5agLdigM
	XN8Mq4Ny9LLmLPDJYAtBtQ6CBRo0htNsNjoAvNdpMIzTAmnaMTagAZ/xIz7oWKunA/WRM1+IjRC6C
	8eFSgZNZBFWBbYNvFXKUh5pUsW1RFDuDfpQfHjH7DlUphLl8boFbsnzIaEaFMoQ13a2hMmtkh1QtM
	zK3TQlBTthEKQsRQGwu5E7YQmMD6nPY8JzAKDmcjf7mPUsDqWa8Fh3N1g5zj/0xddxnotZTZKelIQ
	K5IoN+tmZ1wc9frF4T7B2xnrl4FOWQzsbwpeCLXnW+MMMrKJ/qDyVfgH9YH/82rOrt2dUuqCDeTu3
	lnHI6+eqbVhZcey96D7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWR2s-0004uL-V7; Wed, 06 May 2020 20:53:34 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWR2k-0004tq-Iq
 for linux-mtd@lists.infradead.org; Wed, 06 May 2020 20:53:28 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 139D52A0287;
 Wed,  6 May 2020 21:53:25 +0100 (BST)
Date: Wed, 6 May 2020 22:53:22 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Lubomir Rintel <lkundrak@v3.sk>
Subject: Re: [PATCH v2 06/19] mtd: rawnand: cafe: Demistify register fields
Message-ID: <20200506225322.1e4fb230@collabora.com>
In-Reply-To: <20200506204638.GB207924@furthur.local>
References: <20200505101353.1776394-1-boris.brezillon@collabora.com>
 <20200505101353.1776394-7-boris.brezillon@collabora.com>
 <20200506204638.GB207924@furthur.local>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_135326_751315_80B27C76 
X-CRM114-Status: GOOD (  20.81  )
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
Cc: Richard Weinberger <richard@nod.at>,
 Tudor Ambarus <tudor.ambarus@microchip.com>, linux-mtd@lists.infradead.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, 6 May 2020 22:46:38 +0200
Lubomir Rintel <lkundrak@v3.sk> wrote:

> On Tue, May 05, 2020 at 12:13:40PM +0200, Boris Brezillon wrote:
> > The driver has a bunch of magic values. Let's define proper register
> > fields based on the spec [1] and use them.
> > 
> > [1]http://wiki.laptop.org/images/5/5c/88ALP01_Datasheet_July_2007.pdf
> > 
> > Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> > Reviewed-by: Lubomir Rintel <lkundrak@v3.sk>
> > Tested-by: Lubomir Rintel <lkundrak@v3.sk>
> > ---
> > Changes in v2:
> > * Add R-b/T-b
> > * Get rid of unrelated select_chip() change
> > * Fix CE selection logic
> > * s/CAFE_NAND_CTRL2_CMD2/CAFE_NAND_CTRL2_HAS_CMD2/ (Reported by Lubomir)
> > ---
> >  drivers/mtd/nand/raw/cafe_nand.c | 349 ++++++++++++++++++++++++-------
> >  1 file changed, 268 insertions(+), 81 deletions(-)
> > 
> > diff --git a/drivers/mtd/nand/raw/cafe_nand.c b/drivers/mtd/nand/raw/cafe_nand.c
> > index 156a308b530b..7fb5b21aeb00 100644
> > --- a/drivers/mtd/nand/raw/cafe_nand.c
> > +++ b/drivers/mtd/nand/raw/cafe_nand.c  
> ...
> > @@ -604,9 +722,9 @@ static int cafe_nand_attach_chip(struct nand_chip *chip)
> >  	/* Restore the DMA flag */
> >  	cafe->usedma = usedma;
> >  
> > -	cafe->ctl2 = BIT(27); /* Reed-Solomon ECC */
> > -	if (mtd->writesize == 2048)
> > -		cafe->ctl2 |= BIT(29); /* 2KiB page size */
> > +	cafe->ctl2 = CAFE_NAND_CTRL2_ECC_ALG_RS |
> > +		     CAFE_FIELD_PREP(NAND_CTRL2, PAGE_SIZE,
> > +				     mtd->writesize / 512);
> >  
> >  	/* Set up ECC according to the type of chip we found */
> >  	mtd_set_ooblayout(mtd, &cafe_ooblayout_ops);  
> 
> One more thing here. With page size of 2048 B, the old code would set bits
> 29,28 to 2 (10 binary), whereas 2048/512 tries to set 4 (00 binary, MSB
> overflows).
> 
> For 512 B pages, it the page size bits would previously remain zero,
> while with the patch they'd be set to one.
> 
> The old behavior was more like this:
> 
> -       cafe->ctl2 = CAFE_NAND_CTRL2_ECC_ALG_RS |
> -                    CAFE_FIELD_PREP(NAND_CTRL2, PAGE_SIZE,
> -                                    mtd->writesize / 512);

Oops, it was supposed to be 'mtd->writesize / 1024' here. I'll fix that.

> +       cafe->ctl2 = CAFE_NAND_CTRL2_ECC_ALG_RS;
> +       if (mtd->writesize == 2048)
> +               cafe->ctl2 |= CAFE_FIELD_PREP(NAND_CTRL2, PAGE_SIZE, 2);
> 
> That said, I have no idea what difference it makes. I'm still able to
> mount a JFFS2 filesystem from the flash (mine has 2K pages) without any
> trouble.
> 
> Lubo


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
