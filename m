Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FB1E1E3AED
	for <lists+linux-mtd@lfdr.de>; Wed, 27 May 2020 09:50:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nlaw5Sq2ETB8ZiMabDbxmsMWhEJaz7H89BlnAte5yRg=; b=FSavfzSTCh6Utc
	OQpDchUFBVvLyc9GCa29XlF6IvffZdQY2HX3Z9YDK9w3jLuTAwgWW3xlgp2+KvUwS+XCm9MgMCoYV
	1Kb71KWHtF2sZ18I0rP9LoT13FHG88FMU54Z7VXj0O9GOGSxtERLxeNqbrRlkzCCxLt5f2Sci4Cl5
	Y22cynlXyxGyXJkmNcdLeQ+qqPkKqYEmbyr+hH6iaEBbxOQ37xEnNlAYXabeHYdHFD6JUb+XAmsOx
	UFb1LcXlMJsqH9BrIrDcxaY4xpUAGbTIZ99nx0t5a+glXl1+nntotQgxGw2iHo5IrA5SgfNLOuotd
	n3ScBvTn4SoDSMPsDXdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdqpT-0005tO-FT; Wed, 27 May 2020 07:50:23 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdqpJ-0005sy-BG
 for linux-mtd@lists.infradead.org; Wed, 27 May 2020 07:50:14 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 7806CC0015;
 Wed, 27 May 2020 07:50:10 +0000 (UTC)
Date: Wed, 27 May 2020 09:50:08 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v5 25/28] mtd: rawnand: hynix: Implement
 ->choose_data_interface() for H27UCG8T2ATR-BC
Message-ID: <20200527095008.69d46afe@xps13>
In-Reply-To: <20200527000606.2c26f977@collabora.com>
References: <20200526191725.7591-1-miquel.raynal@bootlin.com>
 <20200526191725.7591-26-miquel.raynal@bootlin.com>
 <20200527000606.2c26f977@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_005013_657248_058A8D6F 
X-CRM114-Status: GOOD (  17.78  )
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
Cc: Rickard Andersson <rickaran@axis.com>, Richard Weinberger <richard@nod.at>,
 linux-mtd@lists.infradead.org, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


Boris Brezillon <boris.brezillon@collabora.com> wrote on Wed, 27 May
2020 00:06:06 +0200:

> On Tue, 26 May 2020 21:17:22 +0200
> Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> 
> > This chip supports ONFI SDR timing mode 4, implement the new hook to
> > advertize it.
> > 
> > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > ---
> >  drivers/mtd/nand/raw/nand_hynix.c | 16 ++++++++++++++++
> >  drivers/mtd/nand/raw/nand_ids.c   |  2 +-
> >  2 files changed, 17 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/mtd/nand/raw/nand_hynix.c b/drivers/mtd/nand/raw/nand_hynix.c
> > index 7d1be53f27f3..d61a55121962 100644
> > --- a/drivers/mtd/nand/raw/nand_hynix.c
> > +++ b/drivers/mtd/nand/raw/nand_hynix.c
> > @@ -673,6 +673,19 @@ static void hynix_nand_cleanup(struct nand_chip *chip)
> >  	nand_set_manufacturer_data(chip, NULL);
> >  }
> >  
> > +static int
> > +h27ucg8t2atrbc_choose_data_interface(struct nand_chip *chip,
> > +				     struct nand_data_interface *iface)
> > +{
> > +	int ret;
> > +
> > +	ret = onfi_fill_data_interface(chip, iface, NAND_SDR_IFACE, 4);
> > +	if (ret)
> > +		return ret;
> > +
> > +	return nand_choose_best_sdr_timings(chip, iface, NULL);
> > +}
> > +
> >  static int hynix_nand_init(struct nand_chip *chip)
> >  {
> >  	struct hynix_nand *hynix;
> > @@ -689,6 +702,9 @@ static int hynix_nand_init(struct nand_chip *chip)
> >  
> >  	nand_set_manufacturer_data(chip, hynix);
> >  
> > +	if (!strcmp("H27UCG8T2ATR-BC", chip->parameters.model))
> > +		chip->ops.choose_data_interface = h27ucg8t2atrbc_choose_data_interface;  
> 
> Same here. You either have to compare against "H27UCG8T2ATR-BC 64G 3.3V
> 8-bit" or use strncmp. This being said, I wonder if comparing the ID is
> not simpler.

I prefer to stick to strncmp so that the name of the part is clearly
identified for now. Maybe if we have too much exceptions coming in
we'll have to switch to ID bytes to "share" conditions between similar
parts.

> 
> > +
> >  	ret = hynix_nand_rr_init(chip);
> >  	if (ret)
> >  		hynix_nand_cleanup(chip);
> > diff --git a/drivers/mtd/nand/raw/nand_ids.c b/drivers/mtd/nand/raw/nand_ids.c
> > index c729a8bc895d..3b890d55703d 100644
> > --- a/drivers/mtd/nand/raw/nand_ids.c
> > +++ b/drivers/mtd/nand/raw/nand_ids.c
> > @@ -50,7 +50,7 @@ struct nand_flash_dev nand_flash_ids[] = {
> >  	{"H27UCG8T2ATR-BC 64G 3.3V 8-bit",
> >  		{ .id = {0xad, 0xde, 0x94, 0xda, 0x74, 0xc4} },
> >  		  SZ_8K, SZ_8K, SZ_2M, NAND_NEED_SCRAMBLING, 6, 640,
> > -		  NAND_ECC_INFO(40, SZ_1K), 4 },
> > +		  NAND_ECC_INFO(40, SZ_1K) },
> >    
> 
> Ultimately we should have those vendor specific entries defined in each
> vendor driver rather than declared here (not asking that for this
> series though).
> 
> >  	LEGACY_ID_NAND("NAND 4MiB 5V 8-bit",   0x6B, 4, SZ_8K, SP_OPTIONS),
> >  	LEGACY_ID_NAND("NAND 4MiB 3,3V 8-bit", 0xE3, 4, SZ_8K, SP_OPTIONS),  
> 

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
