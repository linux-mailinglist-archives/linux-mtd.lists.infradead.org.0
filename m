Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF911E3AE5
	for <lists+linux-mtd@lfdr.de>; Wed, 27 May 2020 09:47:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DFGlcQiOVt7D/IwAw4X1D4GLf37VWdF0NwUIpRNge+Q=; b=bTLe+M8MbSTZQn
	h8xUCNOPPtEsS3xDrg4DFWWKwuiyHeGrJl7xhNHE2ddxvXjF2+V8tqq2plpSaDEGFvE97jbP8xuBY
	lJqkYzRXe2Xzy5vVNDH21f2cIN0OOduqmq8axrfqivrIABcVPBX7FxaVz67YXQYUVkRUNCXCpTW0X
	D9SvVRULn0jHA9VpLbeIoMXmMEAJZAnXgeu5yNeuhPuolzn3NfumCfyeJ9P+GWF8cQgR6BFdqdhxx
	38dUkrgApryxzO/HOZxQzWEgEC++/mEcRYZgnwVCJF3Lgv2PPRNpJIGRwrAgJyLdOS10KDlmmZG2u
	GKQ2UNgXYKib55ZqDrZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdqml-0002v0-Bz; Wed, 27 May 2020 07:47:35 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdqmP-0002oL-NB
 for linux-mtd@lists.infradead.org; Wed, 27 May 2020 07:47:15 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 0064A240006;
 Wed, 27 May 2020 07:47:10 +0000 (UTC)
Date: Wed, 27 May 2020 09:47:09 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v5 24/28] mtd: rawnand: toshiba: Implement
 ->choose_data_interface() for TC58NVG0S3E
Message-ID: <20200527094709.7f206df7@xps13>
In-Reply-To: <20200527000203.5773416d@collabora.com>
References: <20200526191725.7591-1-miquel.raynal@bootlin.com>
 <20200526191725.7591-25-miquel.raynal@bootlin.com>
 <20200527000203.5773416d@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_004713_902799_698FBA60 
X-CRM114-Status: GOOD (  16.28  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
2020 00:02:03 +0200:

> On Tue, 26 May 2020 21:17:21 +0200
> Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> 
> > This chip supports ONFI SDR timing mode 2, implement the new hook to
> > advertize it.
> > 
> > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > ---
> >  drivers/mtd/nand/raw/nand_ids.c     |  3 +--
> >  drivers/mtd/nand/raw/nand_toshiba.c | 21 +++++++++++++++++++++
> >  2 files changed, 22 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/mtd/nand/raw/nand_ids.c b/drivers/mtd/nand/raw/nand_ids.c
> > index e0dbc2e316c7..c729a8bc895d 100644
> > --- a/drivers/mtd/nand/raw/nand_ids.c
> > +++ b/drivers/mtd/nand/raw/nand_ids.c
> > @@ -28,8 +28,7 @@ struct nand_flash_dev nand_flash_ids[] = {
> >  	 */
> >  	{"TC58NVG0S3E 1G 3.3V 8-bit",
> >  		{ .id = {0x98, 0xd1, 0x90, 0x15, 0x76, 0x14, 0x01, 0x00} },
> > -		  SZ_2K, SZ_128, SZ_128K, 0, 8, 64, NAND_ECC_INFO(1, SZ_512),
> > -		  2 },
> > +		  SZ_2K, SZ_128, SZ_128K, 0, 8, 64, NAND_ECC_INFO(1, SZ_512), },
> >  	{"TC58NVG2S0F 4G 3.3V 8-bit",
> >  		{ .id = {0x98, 0xdc, 0x90, 0x26, 0x76, 0x15, 0x01, 0x08} },
> >  		  SZ_4K, SZ_512, SZ_256K, 0, 8, 224, NAND_ECC_INFO(4, SZ_512) },
> > diff --git a/drivers/mtd/nand/raw/nand_toshiba.c b/drivers/mtd/nand/raw/nand_toshiba.c
> > index fe2bc20972a9..860ae0c13063 100644
> > --- a/drivers/mtd/nand/raw/nand_toshiba.c
> > +++ b/drivers/mtd/nand/raw/nand_toshiba.c
> > @@ -206,6 +206,18 @@ tc58teg5dclta00_choose_data_interface(struct nand_chip *chip,
> >  	return nand_choose_best_sdr_timings(chip, iface, NULL);
> >  }
> >  
> > +static int tc58nvg0s3e_choose_data_interface(struct nand_chip *chip,
> > +					     struct nand_data_interface *iface)
> > +{
> > +	int ret;
> > +
> > +	ret = onfi_fill_data_interface(chip, iface, NAND_SDR_IFACE, 2);
> > +	if (ret)
> > +		return ret;
> > +
> > +	return nand_choose_best_sdr_timings(chip, iface, NULL);
> > +}
> > +
> >  static int tc58teg5dclta00_init(struct nand_chip *chip)
> >  {
> >  	struct mtd_info *mtd = nand_to_mtd(chip);
> > @@ -217,6 +229,13 @@ static int tc58teg5dclta00_init(struct nand_chip *chip)
> >  	return 0;
> >  }
> >  
> > +static int tc58nvg0s3e_init(struct nand_chip *chip)
> > +{
> > +	chip->ops.choose_data_interface = &tc58nvg0s3e_choose_data_interface;
> > +
> > +	return 0;
> > +}
> > +
> >  static int toshiba_nand_init(struct nand_chip *chip)
> >  {
> >  	if (nand_is_slc(chip))
> > @@ -229,6 +248,8 @@ static int toshiba_nand_init(struct nand_chip *chip)
> >  
> >  	if (!strcmp("TC58TEG5DCLTA00", chip->parameters.model))
> >  		tc58teg5dclta00_init(chip);
> > +	if (!strcmp("TC58NVG0S3E", chip->parameters.model))  
> 
> The model won't match "TC58NVG0S3E", unless you use strncmp().

I definitely will.

> 
> > +		tc58nvg0s3e_init(chip);
> >  
> >  	return 0;
> >  }  
> 


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
