Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1973F1E3C5B
	for <lists+linux-mtd@lfdr.de>; Wed, 27 May 2020 10:44:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9VKHo0wf0ErjY63mJGPHEAlscIISqfJbJlSdQCOB6h8=; b=jidgQSUZ+lvIan
	cVE/bVzLvvzK/s+GVpYsXcryHu1K5+RhUEhIjL9FIMax83c5m8j7cOqvXchljR+P1UyNTSUDYL2Ww
	b7boW06shSeYhFVeqQjtJeoXJFmAksqrwt6DA2Qhx537zWzg3MANnSLGmG+NdFGaUa4bRAvMDuQR8
	36khHpomci9UqWCjMmE4ZcAx771PigfcIO3vc5TqdxhzkczetAXM4rG+lO/On1HVj7ClriMlZCLRh
	b6wtt3Z7M08zRqaOUnvVVRCWOo2R3g47oTr5HqB2D0IzO00VJTQnPYcDHnjdax0jXDg4GlASxAMhy
	4zzt22/CuzftFjFaVGxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdrfJ-000837-FW; Wed, 27 May 2020 08:43:57 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdrdy-00074A-GV
 for linux-mtd@lists.infradead.org; Wed, 27 May 2020 08:42:36 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id CF1B120015;
 Wed, 27 May 2020 08:42:29 +0000 (UTC)
Date: Wed, 27 May 2020 10:42:28 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [RESEND v5 12/21] mtd: rawnand: Deprecate nand-ecc-mode in
 favor of nand-ecc-provider
Message-ID: <20200527104228.6ee6efc0@xps13>
In-Reply-To: <20200527010325.0e7213b2@collabora.com>
References: <20200526195633.11543-1-miquel.raynal@bootlin.com>
 <20200526195633.11543-13-miquel.raynal@bootlin.com>
 <20200527010325.0e7213b2@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_014234_690228_F70D516A 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.200 listed in wl.mailspike.net]
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
2020 01:03:25 +0200:

> On Tue, 26 May 2020 21:56:24 +0200
> Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> 
> > Use nand-ecc-provider as the provider DT property. Fallback to
> > nand-ecc-mode if the property does not exist.
> > 
> > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > ---
> >  drivers/mtd/nand/raw/nand_base.c | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
> > index 69c1b7ab938e..7d17d52cdd34 100644
> > --- a/drivers/mtd/nand/raw/nand_base.c
> > +++ b/drivers/mtd/nand/raw/nand_base.c
> > @@ -5036,7 +5036,9 @@ of_get_nand_ecc_engine_type(struct device_node *np)
> >  	const char *pm;
> >  	int err;
> >  
> > -	err = of_property_read_string(np, "nand-ecc-mode", &pm);
> > +	err = of_property_read_string(np, "nand-ecc-provider", &pm);  
> 
> 					   "nand-ecc-engine-type"
> 
> And I'd prefer to have a different string table for that one, so we get
> rid of the confusing "hw" type (which is actually "on-controller").

So this means
* keeping a legacy table
* supporting both tables
* with both DT properties
* eventually refuse the legacy entries in spi-nand

Sounds like a lot of burden to me for a minor improvement. If we rename
"hw" into "on-controller" we must also add "off-controller" then, but
again, I find it confusing.

I am a bit lost on what is the "right" direction right now.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
