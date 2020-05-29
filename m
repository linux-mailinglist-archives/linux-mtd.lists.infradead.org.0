Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D17CC1E7924
	for <lists+linux-mtd@lfdr.de>; Fri, 29 May 2020 11:16:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0KAOdftvDCTwfAqYYAvQVSf3hZM75vjt5ewtJ/cK5M4=; b=qUhzdy3FrMFJmS
	0S2KRqX8cT9I2IeONxnD65FLS97sRfn56sgYp5/KdmkqWqwlQfUJfTeCIfxDkfu+g+1AKQKmSHBXd
	vv8lQaBWpbH/ItrJXcXcChWTYDgMBQCiicwJJ2iiz4n+aDEZ3wm3aXbIVZbzp5L/l7E+i1LVmtEjf
	ex0uDNSmoudefFbgwfqRIOgZZwPVD/geDElhlb+fpcy/5BzEpHBYr43BUfae0hR+4dq+Z4tIf8hK5
	qFjBHUzPzyJZELdQXo7tZC0kjOj2QWzaEveGJm/xyGE7EpIApH39HABAGzZ8PJCQV2w55KybVDoxd
	LpWowuRJuit0FZ9/twjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeb7i-0000pB-Rj; Fri, 29 May 2020 09:16:18 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeb7c-0000oZ-BM
 for linux-mtd@lists.infradead.org; Fri, 29 May 2020 09:16:13 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 548C4240013;
 Fri, 29 May 2020 09:16:07 +0000 (UTC)
Date: Fri, 29 May 2020 11:16:05 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v6 30/30] mtd: rawnand: Allocate the best interface
 configuration dynamically
Message-ID: <20200529111605.28a8f5af@xps13>
In-Reply-To: <20200529105431.5d0b7a9a@collabora.com>
References: <20200528231612.8958-1-miquel.raynal@bootlin.com>
 <20200528231612.8958-31-miquel.raynal@bootlin.com>
 <20200529105431.5d0b7a9a@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_021612_526120_56D405E2 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Rickard Andersson <rickaran@axis.com>, Michal Simek <monstr@monstr.eu>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


Boris Brezillon <boris.brezillon@collabora.com> wrote on Fri, 29 May
2020 10:54:31 +0200:

> On Fri, 29 May 2020 01:16:12 +0200
> Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> 
> >  
> > @@ -947,7 +949,8 @@ static int nand_reset_interface(struct nand_chip *chip, int chipnr)
> >   */
> >  static int nand_setup_interface(struct nand_chip *chip, int chipnr)
> >  {
> > -	u8 mode = chip->interface_config.timings.mode;
> > +	const struct nand_controller_ops *ops = chip->controller->ops;
> > +	u8 mode = chip->best_interface_config->timings.mode;  
> 
> I didn't check, but I assume it's safe to dereference
> ->best_interface_config here (IOW, ->best_interface_config is  
> guaranteed to be != NULL).

Yes it's safe. ->best_interface_config is always set, even with mode 0
configuration.

> 
> >  	u8 tmode_param[ONFI_SUBFEATURE_PARAM_LEN] = { mode, };
> >  	int ret;
> >    
> 
> >  
> >  /**
> > @@ -2523,8 +2542,8 @@ int nand_reset(struct nand_chip *chip, int chipnr)
> >  	 * nand_setup_interface() uses ->set/get_features() which would
> >  	 * fail anyway as the parameter page is not available yet.
> >  	 */
> > -	if (!memcmp(&chip->interface_config, nand_get_reset_interface(),
> > -		    sizeof(chip->interface_config)))
> > +	if (!chip->best_interface_config ||
> > +	    chip->best_interface_config == nand_get_reset_interface())  
> 
> I think 'chip->best_interface_config == nand_get_reset_interface()' is
> never true.

Oh right. I'll drop this, and we'll accept to sometimes call
nand_setup_interface() to apply timings mode 0 while they are already
applied. I don't think it's a big deal.


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
