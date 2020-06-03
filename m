Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F39091ECD93
	for <lists+linux-mtd@lfdr.de>; Wed,  3 Jun 2020 12:31:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tbUgHc1rNkZ2hnzVBJHeDzAcUP6FYBrrOL3wRqlte1w=; b=TqPCQAi2OzedeE
	Bw6BMAWnwUNptEtfsmD45I9oHCQo9eKmJ2uFP5ZSAimrjaKCfeaegF0Dw3S0r7nrq7G58c7eBCyjA
	dTkbm6OnflTEgAhp+88pq6QNEjj0QRAs2MH1ddTI9tb5xb6XvlFfGSrlBhLByQuzDbH4IE4cjzmFL
	FWjFHAf7eKDmiL5ckUJtEKrCzWr3Oph6SRq1Xa47+7vfNgv+FxTvo2fETQJ+Vzs1zUhuzr5iIyirK
	MbrUhxw/WNnQKkg29hCCpw/jIQfaNPyS8uKJkFygZTQn7KjCOtbONKwhb8foxWpQEpx5dUxh6asc4
	QGo2wQG6xBABxiNtD53g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgQfp-0000wb-BT; Wed, 03 Jun 2020 10:31:05 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgQfO-0000hk-79; Wed, 03 Jun 2020 10:30:39 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 5CC3F20006;
 Wed,  3 Jun 2020 10:30:34 +0000 (UTC)
Date: Wed, 3 Jun 2020 12:30:32 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v9 4/9] mtd: rawnand: Use nanddev_get_ecc_requirements()
 when relevant
Message-ID: <20200603123032.0c70b9fd@xps13>
In-Reply-To: <20200602180016.2adefd73@collabora.com>
References: <20200602143124.29553-1-miquel.raynal@bootlin.com>
 <20200602143124.29553-5-miquel.raynal@bootlin.com>
 <20200602180016.2adefd73@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_033038_412312_2879D462 
X-CRM114-Status: GOOD (  13.47  )
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
2020 18:00:16 +0200:

> On Tue,  2 Jun 2020 16:31:19 +0200
> Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> 
> 
> > diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
> > index 1ce2cbe72e4c..e8e22d79f422 100644
> > --- a/drivers/mtd/nand/raw/nand_base.c
> > +++ b/drivers/mtd/nand/raw/nand_base.c
> > @@ -4725,6 +4725,9 @@ static inline bool is_full_id_nand(struct nand_flash_dev *type)
> >  static bool find_full_id_nand(struct nand_chip *chip,
> >  			      struct nand_flash_dev *type)
> >  {
> > +	struct nand_device *base = &chip->base;
> > +	struct nand_ecc_props *requirements =
> > +		(struct nand_ecc_props *)nanddev_get_ecc_requirements(base);  
> 
> Ouch, that sounds wrong. How about introducing a
> nanddev_set_ecc_requirements() helper instead? The same applies to all
> places where you have this cast.

A setter helper is very helpful here, I should have done that in the
first place.

> 
> > diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
> > index e572d1600f63..0b89da54bef2 100644
> > --- a/include/linux/mtd/nand.h
> > +++ b/include/linux/mtd/nand.h
> > @@ -527,7 +527,7 @@ nanddev_get_ecc_conf(struct nand_device *nand)
> >   *                                  device
> >   * @nand: NAND device
> >   */
> > -const struct nand_ecc_props *
> > +static inline const struct nand_ecc_props *
> >  nanddev_get_ecc_requirements(struct nand_device *nand)  
> 
> Looks like this should be squashed in patch 2.
> 
> >  {
> >  	return &nand->eccreq;  
> 

Oh right.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
