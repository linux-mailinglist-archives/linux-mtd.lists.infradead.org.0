Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DC181E3BD2
	for <lists+linux-mtd@lfdr.de>; Wed, 27 May 2020 10:22:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MbgSCsNPcGy8WjTQX9lJUvYcvsVqo9eLV0faOvOee1U=; b=Eu/Nq/h4foZhUK
	yAqOuhTk+SejvIZ6oEhTDP5BXWNjIG4nUG5vkqGowb6oiGcZvT5bQdiGmAFYr8DAbgNiLGpuEOHw1
	cf2GBRU6q5Qd6rE5YumiTFSe12BHL/E3k4cwyfOT0+tvllgGUCenrcIKe2ZHJrT71jy2I5T12rrkJ
	MOafnBq8t0aggoy1x69XKEOGYylavtxDLzOKxKGDVgHooU3aRtL4iBGf/38XFuu3rqqDFDIjHu/Rp
	4MGmngr7uTyze+D81ZGwAUoKol6J4/JigIZ8HsAZ7T71u63IqVQvH0MfWFcROhv5M4mGUk1RArR79
	t37b6NhPAM1KuQlp7xAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdrK1-00016J-AY; Wed, 27 May 2020 08:21:57 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdrJu-00015v-Df
 for linux-mtd@lists.infradead.org; Wed, 27 May 2020 08:21:52 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id E2E7E20001A;
 Wed, 27 May 2020 08:21:31 +0000 (UTC)
Date: Wed, 27 May 2020 10:21:29 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [RESEND v5 09/21] mtd: rawnand: Create a new enumeration to
 describe properly ECC types
Message-ID: <20200527102129.07dee59c@xps13>
In-Reply-To: <20200527005518.2d780ecc@collabora.com>
References: <20200526195633.11543-1-miquel.raynal@bootlin.com>
 <20200526195633.11543-10-miquel.raynal@bootlin.com>
 <20200527005518.2d780ecc@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_012150_728442_1169A7EF 
X-CRM114-Status: GOOD (  17.71  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.178.232 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Rob Herring <robh+dt@kernel.org>,
 linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Boris,

Boris Brezillon <boris.brezillon@collabora.com> wrote on Wed, 27 May
2020 00:55:18 +0200:

> On Tue, 26 May 2020 21:56:21 +0200
> Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> 
> > Now that the misleading mix between ECC engine type and OOB placement
> > has been addressed, add a new enumeration to properly define ECC types
> > (also called provider or mode).  
> 
> Let's pick a name and stick to it. I think "ECC provider type" or
> "ECC engine type" are good names.
> 
> > 
> > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
> > ---
> >  drivers/mtd/nand/raw/nand_base.c |  7 +++++++
> >  include/linux/mtd/rawnand.h      | 16 ++++++++++++++++
> >  2 files changed, 23 insertions(+)
> > 
> > diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
> > index 515cd4681660..5c6ab5b93270 100644
> > --- a/drivers/mtd/nand/raw/nand_base.c
> > +++ b/drivers/mtd/nand/raw/nand_base.c
> > @@ -5018,6 +5018,13 @@ static const char * const nand_ecc_modes[] = {
> >  	[NAND_ECC_ON_DIE]	= "on-die",
> >  };
> >  
> > +static const char * const nand_ecc_engine_providers[] = {  
> 
> I'd rename that one nand_ecc_engine_types or nand_ecc_provider_types.
> 
> > +	[NAND_ECC_ENGINE_NONE] = "none",
> > +	[NAND_ECC_ENGINE_SOFT] = "soft",
> > +	[NAND_ECC_ENGINE_CONTROLLER] = "hw",
> > +	[NAND_ECC_ENGINE_ON_DIE] = "on-die",
> > +};
> > +
> >  static const char * const nand_ecc_placement[] = {
> >  	[NAND_ECC_PLACEMENT_INTERLEAVED] = "interleaved",
> >  };
> > diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
> > index dc909fb977c7..a2078c5f3d21 100644
> > --- a/include/linux/mtd/rawnand.h
> > +++ b/include/linux/mtd/rawnand.h
> > @@ -92,6 +92,22 @@ enum nand_ecc_mode {
> >  	NAND_ECC_ON_DIE,
> >  };
> >  
> > +/**
> > + * enum nand_ecc_engine_type - NAND ECC engine type/provider
> > + * @NAND_ECC_ENGINE_INVALID: Invalid value
> > + * @NAND_ECC_ENGINE_NONE: No ECC correction
> > + * @NAND_ECC_ENGINE_SOFT: Software ECC correction
> > + * @NAND_ECC_ENGINE_CONTROLLER: Hardware controller ECC correction
> > + * @NAND_ECC_ENGINE_ON_DIE: On chip hardware ECC correction
> > + */
> > +enum nand_ecc_engine_type {  
> 
> Looks like you went for ecc_engine_type here, so let's stick to that.

Ok

> 
> > +	NAND_ECC_ENGINE_INVALID,  
> 
> NAND_ECC_ENGINE_TYPE_xxx

Ok

> 
> > +	NAND_ECC_ENGINE_NONE,  
> 
> Do we really need a value for NONE? I'd expect the engine type to be
> applicable to NAND that have some sort of ECC engine connected to them.

For debugging purposes it makes sense.

> 
> > +	NAND_ECC_ENGINE_SOFT,
> > +	NAND_ECC_ENGINE_CONTROLLER,
> > +	NAND_ECC_ENGINE_ON_DIE,
> > +};
> > +
> >  /**
> >   * enum nand_ecc_placement - NAND ECC placement
> >   * @NAND_ECC_PLACEMENT_FREE: The driver can decide where to put ECC bytes.  
> 


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
