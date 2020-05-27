Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FAC41E3C15
	for <lists+linux-mtd@lfdr.de>; Wed, 27 May 2020 10:34:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gw6O0mUI9zKZHch/xlojWjAwZsu5XAvlMEC4lPFICKI=; b=V5qndV4OjrJ1L7
	RLLrIGbbmRiNshUVsx8pwATT/+x0Ub3qJjCMYc0ymalcQoqYySL5z/8EZUV/+t3zmp2KtIbXs0hdh
	5OCThrmQve3FXIFRRibKBk8+Sh80Y9CfT4KqqhBvm3U/WX9W3ZBRZ9GdOFMaXEWgn3y0eG5Z+7CS1
	U9NdboF099NvpTFFUpW2Gvdj7qdBUSxzuCd+SgMwWVdE+3g5YWHK5dYcpgJn+QvRranT/4kcuxBw6
	DQNk+Z/Zvzf88Brz86D+oIQRjF+d8CTSVi5Fg8hZTcD5Fj9QuNrm15FbSLbl4Ox/fmlAc3teB59qK
	sW4TwAlv/l0Y1gHfh/fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdrWU-0007up-4O; Wed, 27 May 2020 08:34:50 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdrW3-0007ii-6c
 for linux-mtd@lists.infradead.org; Wed, 27 May 2020 08:34:24 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id BA692240008;
 Wed, 27 May 2020 08:33:58 +0000 (UTC)
Date: Wed, 27 May 2020 10:33:56 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [RESEND v5 09/21] mtd: rawnand: Create a new enumeration to
 describe properly ECC types
Message-ID: <20200527103356.56e145a9@xps13>
In-Reply-To: <20200527005928.39c549e2@collabora.com>
References: <20200526195633.11543-1-miquel.raynal@bootlin.com>
 <20200526195633.11543-10-miquel.raynal@bootlin.com>
 <20200527005928.39c549e2@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_013423_377822_9C1A2012 
X-CRM114-Status: GOOD (  16.69  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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


Boris Brezillon <boris.brezillon@collabora.com> wrote on Wed, 27 May
2020 00:59:28 +0200:

> On Tue, 26 May 2020 21:56:21 +0200
> Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> 
> > Now that the misleading mix between ECC engine type and OOB placement
> > has been addressed, add a new enumeration to properly define ECC types
> > (also called provider or mode).
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
> This table is not used here, are you sure it should be introduced now?
> 
> > +	[NAND_ECC_ENGINE_NONE] = "none",
> > +	[NAND_ECC_ENGINE_SOFT] = "soft",
> > +	[NAND_ECC_ENGINE_CONTROLLER] = "hw",  
> 
> 					^ "on-controller" ?

This would break DT backward compatibility, I am afraid I cannot do
that. Honnestly, I find "hw" good enough because "on-controller" is
also too restrictive. What about an external (non-pipelined) engine
like the one I am about to introduce?

> 
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
> > +	NAND_ECC_ENGINE_INVALID,
> > +	NAND_ECC_ENGINE_NONE,
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
