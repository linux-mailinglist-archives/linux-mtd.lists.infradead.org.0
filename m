Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12CF21E3ACE
	for <lists+linux-mtd@lfdr.de>; Wed, 27 May 2020 09:42:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sDu6KwtMzxtZ+cHqza1O/c8CUmshSVLVgjc3KUJ4byQ=; b=epdXB2KgpvzICq
	gE83TudXGrMID/Hlv0J0IalrTQADd0VOt/Yt4DMsBqNooa/6yQn6nlYirUgdas9jzsC6F+wPDOz/w
	hRabF21EBMMCYnf730L7cn3nUX3IfTaboY1L3Vl20ZIvZ0kofBKAD9GJQChczU4niuJiQBK2JbWFc
	7kNYsaxktJ1Su+Yh1/TDxefv6g70vECG7WZtkpRtTCSRmFK9m8yEN+uX9NZ9NIlTxFUrFiWGiuT4o
	Rj8TuCaw0QmIxcOXDAnjfX+oBSLv8GmsUz4DfjEn/5oNHffhjZTrnZh+X575XW+3U0KQ5xzidBcvb
	Ukaoa1KeseelsFliGxNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdqhp-0007qy-3O; Wed, 27 May 2020 07:42:29 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdqhg-0007qX-VK
 for linux-mtd@lists.infradead.org; Wed, 27 May 2020 07:42:22 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 682AA20005;
 Wed, 27 May 2020 07:42:15 +0000 (UTC)
Date: Wed, 27 May 2020 09:42:13 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v5 14/28] mtd: rawnand: timings: Add a helper to find
 the closest ONFI mode
Message-ID: <20200527094213.49f59069@xps13>
In-Reply-To: <20200526234205.73021fc2@collabora.com>
References: <20200526191725.7591-1-miquel.raynal@bootlin.com>
 <20200526191725.7591-15-miquel.raynal@bootlin.com>
 <20200526234205.73021fc2@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_004221_276956_3F1D4793 
X-CRM114-Status: GOOD (  23.26  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.200 listed in wl.mailspike.net]
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

Hi Boris,

Boris Brezillon <boris.brezillon@collabora.com> wrote on Tue, 26 May
2020 23:42:05 +0200:

> On Tue, 26 May 2020 21:17:11 +0200
> Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> 
> > Vendors are allowed to provide their own set of timings. In this case,
> > we provide a way to derive the "closest" timing mode so that, if the
> > NAND controller does not support tweaking these parameters, it will be
> > able to configure itself anyway.
> > 
> > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > ---
> >  drivers/mtd/nand/raw/internals.h    |  2 ++
> >  drivers/mtd/nand/raw/nand_timings.c | 49 +++++++++++++++++++++++++++++
> >  2 files changed, 51 insertions(+)
> > 
> > diff --git a/drivers/mtd/nand/raw/internals.h b/drivers/mtd/nand/raw/internals.h
> > index dc84e3b55d48..c7357ae86eeb 100644
> > --- a/drivers/mtd/nand/raw/internals.h
> > +++ b/drivers/mtd/nand/raw/internals.h
> > @@ -88,6 +88,8 @@ int onfi_fill_data_interface(struct nand_chip *chip,
> >  			     struct nand_data_interface *iface,
> >  			     enum nand_data_interface_type type,
> >  			     int timing_mode);
> > +unsigned int
> > +onfi_find_closest_sdr_mode(const struct nand_sdr_timings *spec_timings);
> >  int nand_get_features(struct nand_chip *chip, int addr, u8 *subfeature_param);
> >  int nand_set_features(struct nand_chip *chip, int addr, u8 *subfeature_param);
> >  int nand_read_page_raw_notsupp(struct nand_chip *chip, u8 *buf,
> > diff --git a/drivers/mtd/nand/raw/nand_timings.c b/drivers/mtd/nand/raw/nand_timings.c
> > index ce6bb87db2e8..3c44c4b90536 100644
> > --- a/drivers/mtd/nand/raw/nand_timings.c
> > +++ b/drivers/mtd/nand/raw/nand_timings.c
> > @@ -273,6 +273,55 @@ static const struct nand_data_interface onfi_sdr_timings[] = {
> >  	},
> >  };
> >  
> > +/**
> > + * onfi_find_closest_sdr_mode - Derive the closest ONFI SDR timing mode given a
> > + *                              set of timings
> > + * @spec_timings: the timings to challenge
> > + */
> > +unsigned int
> > +onfi_find_closest_sdr_mode(const struct nand_sdr_timings *spec_timings)
> > +{
> > +	const struct nand_sdr_timings *onfi_timings;
> > +	int mode;
> > +
> > +	for (mode = ARRAY_SIZE(onfi_sdr_timings) - 1; mode > 0; mode--) {
> > +		onfi_timings = &onfi_sdr_timings[mode].timings.sdr;
> > +
> > +		if (spec_timings->tCCS_min > onfi_timings->tCCS_min ||
> > +		    spec_timings->tADL_min > onfi_timings->tADL_min ||
> > +		    spec_timings->tALH_min > onfi_timings->tALH_min ||
> > +		    spec_timings->tALS_min > onfi_timings->tALS_min ||
> > +		    spec_timings->tAR_min > onfi_timings->tAR_min ||
> > +		    spec_timings->tCEH_min > onfi_timings->tCEH_min ||
> > +		    spec_timings->tCH_min > onfi_timings->tCH_min ||
> > +		    spec_timings->tCLH_min > onfi_timings->tCLH_min ||
> > +		    spec_timings->tCLR_min > onfi_timings->tCLR_min ||
> > +		    spec_timings->tCLS_min > onfi_timings->tCLS_min ||
> > +		    spec_timings->tCOH_min > onfi_timings->tCOH_min ||
> > +		    spec_timings->tCS_min > onfi_timings->tCS_min ||
> > +		    spec_timings->tDH_min > onfi_timings->tDH_min ||
> > +		    spec_timings->tDS_min > onfi_timings->tDS_min ||
> > +		    spec_timings->tIR_min > onfi_timings->tIR_min ||
> > +		    spec_timings->tRC_min > onfi_timings->tRC_min ||
> > +		    spec_timings->tREH_min > onfi_timings->tREH_min ||
> > +		    spec_timings->tRHOH_min > onfi_timings->tRHOH_min ||
> > +		    spec_timings->tRHW_min > onfi_timings->tRHW_min ||
> > +		    spec_timings->tRLOH_min > onfi_timings->tRLOH_min ||
> > +		    spec_timings->tRP_min > onfi_timings->tRP_min ||
> > +		    spec_timings->tRR_min > onfi_timings->tRR_min ||
> > +		    spec_timings->tWC_min > onfi_timings->tWC_min ||
> > +		    spec_timings->tWH_min > onfi_timings->tWH_min ||
> > +		    spec_timings->tWHR_min > onfi_timings->tWHR_min ||
> > +		    spec_timings->tWP_min > onfi_timings->tWP_min ||
> > +		    spec_timings->tWW_min > onfi_timings->tWW_min)  
> 
> Just nitpicking but you could just do the opposite test ('<=' instead of
> '>' and '&&' instead of '||') and return mode directly, so you don't  
> need this continue.

I did it because I wanted the continue; statement to be called as soon
as one test was "true" (ie. wrong in this case) but actually it would
work the same with a <= and a &&, so I'll switch.

> I didn't check if all the _min timings were tested, but assuming that's
> the case, you can add

I copy/pasted the entire structure definition so unless I messed with
it, it should be fine.

> 
> Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
> 
> > +			continue;
> > +
> > +		return mode;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> >  /**
> >   * onfi_fill_data_interface - Initialize a data interface from a given ONFI mode
> >   * @chip: The NAND chip  
> 


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
