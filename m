Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D931ECD91
	for <lists+linux-mtd@lfdr.de>; Wed,  3 Jun 2020 12:30:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m4DE/JVrEKlIc+ryCbusBiE5gxoLTAaOU4lXHsryPf8=; b=uFJfThM5OQhxBC
	DD/lVvQ6462bgd5GpRqIOyHPDtlzrFvICC0J0LYiYzbyCdDBe4fxw1/SVfhSQxm/KVfkaU3X33Yh9
	RpOvip3hH48VqgqMq1lRs+atsDVz5VzIPK6GsfRlzUg4jyznoAFsozheU12D/7tYZd/zwi4w4OeP1
	q+bhmgR27vw7bLl28C+++FeTSsDPSLStnzaVrrJ442uhhCDVcVaMyAPrOQNFPBhZiuB8ViP6/EFYn
	nQXrq8QDd2ivDxcvbsqlIcE0gLOzOHuwo2aVEf2tT4AoQ2QlvUwc3f8e4C2JmWHi4+CuEMJvQwVOT
	3ai+eKYf1X3rcMgn5tfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgQfH-0000My-NU; Wed, 03 Jun 2020 10:30:31 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgQen-0006G1-15; Wed, 03 Jun 2020 10:30:02 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 9740E20007;
 Wed,  3 Jun 2020 10:29:53 +0000 (UTC)
Date: Wed, 3 Jun 2020 12:29:51 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v9 5/9] mtd: nand: Convert generic NAND bits to use the
 ECC framework
Message-ID: <20200603122951.75fb8e6f@xps13>
In-Reply-To: <20200602180320.6539adb0@collabora.com>
References: <20200602143124.29553-1-miquel.raynal@bootlin.com>
 <20200602143124.29553-6-miquel.raynal@bootlin.com>
 <20200602180320.6539adb0@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_033001_202422_C5655971 
X-CRM114-Status: GOOD (  13.85  )
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>, Julien Su <juliensu@mxic.com.tw>,
 Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


Boris Brezillon <boris.brezillon@collabora.com> wrote on Tue, 2 Jun
2020 18:03:20 +0200:

> On Tue,  2 Jun 2020 16:31:20 +0200
> Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> 
> > Embed a generic NAND ECC high-level object in the nand_device
> > structure to carry all the ECC engine configuration/data.
> > 
> > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > ---
> >  drivers/mtd/nand/raw/nand_base.c |  4 +++-
> >  include/linux/mtd/nand.h         | 12 ++++++------
> >  2 files changed, 9 insertions(+), 7 deletions(-)
> > 
> > diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
> > index e8e22d79f422..ed0f642be993 100644
> > --- a/drivers/mtd/nand/raw/nand_base.c
> > +++ b/drivers/mtd/nand/raw/nand_base.c
> > @@ -5984,7 +5984,9 @@ static int nand_scan_tail(struct nand_chip *chip)
> >  	/* ECC sanity check: warn if it's too weak */
> >  	if (!nand_ecc_strength_good(chip))
> >  		pr_warn("WARNING: %s: the ECC used on your system (%db/%dB) is too weak compared to the one required by the NAND chip (%db/%dB)\n",
> > -			mtd->name, chip->ecc.strength, chip->ecc.size,
> > +			mtd->name,
> > +			nanddev_get_ecc_conf(&chip->base)->strength,
> > +			nanddev_get_ecc_conf(&chip->base)->step_size,  
> 
> Hm, are you sure all places using chip->ecc.{strength,size} have been
> patched to use nanddev_get_ecc_conf()?

Not yet, I thought I removed this change but apparently not. I will
drop this.


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
