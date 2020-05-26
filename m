Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 935621B84A8
	for <lists+linux-mtd@lfdr.de>; Sat, 25 Apr 2020 10:28:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vIptP3qj1SwxVi2z6AooLAFbBf/sVVDJp4oTBWPo0qg=; b=MKrvt8Qt5X7MQ5
	UeRzms5wwV7sFSJIBSm09O7nBQgE5jODrj3M0GtmhZ8fPG29bv2CfR0znzels6PmJ7eT7f4xDoBMc
	g0JMsv2gewnqDA4sW8b/udQPAz0FxM6qwd3/5Q+KKNxzfijMHI4aqMphyRyWhfeF0FwIznGRRmWQi
	j/z6ZIgAyV595FsfJZqXlIe+JMCQyrhg2ueSi3s447Z6bSzpGKPtI8UoWenlF1vIieQ7OkKxpCIPF
	Hk4UENrXyf5UdDfT8mmtctnFnIXE1P5wzliI8Ca+N8vcxpQ2eu1w3PrRADxo8mvmAMX/oVjdaw5f9
	R4d3oHEM2Bbq0WGWGBrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSGAX-0005ot-Pp; Sat, 25 Apr 2020 08:28:13 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSGAP-0005nw-JT
 for linux-mtd@lists.infradead.org; Sat, 25 Apr 2020 08:28:06 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 260E02A2E93;
 Sat, 25 Apr 2020 09:28:04 +0100 (BST)
Date: Sat, 25 Apr 2020 10:28:01 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v2 5/9] mtd: rawnand: onfi: Define the number of
 parameter pages
Message-ID: <20200425102801.42de1955@collabora.com>
In-Reply-To: <20200425102519.367cf1ea@collabora.com>
References: <20200424164042.26572-1-miquel.raynal@bootlin.com>
 <20200424164042.26572-6-miquel.raynal@bootlin.com>
 <20200425102519.367cf1ea@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_012805_773129_026CAE99 
X-CRM114-Status: GOOD (  20.79  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Sat, 25 Apr 2020 10:25:19 +0200
Boris Brezillon <boris.brezillon@collabora.com> wrote:

> On Fri, 24 Apr 2020 18:40:38 +0200
> Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> 
> > Use a macro to define the number of parameter page instead of
> > hardcoding it everywhere.
> > 
> > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > ---
> >  drivers/mtd/nand/raw/nand_onfi.c | 10 ++++++----
> >  1 file changed, 6 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/mtd/nand/raw/nand_onfi.c b/drivers/mtd/nand/raw/nand_onfi.c
> > index 7d9a3130443a..9fe39adbde4c 100644
> > --- a/drivers/mtd/nand/raw/nand_onfi.c
> > +++ b/drivers/mtd/nand/raw/nand_onfi.c
> > @@ -16,6 +16,8 @@
> >  
> >  #include "internals.h"
> >  
> > +#define ONFI_PARAM_PAGES 3
> > +
> >  u16 onfi_crc16(u16 crc, u8 const *p, size_t len)
> >  {
> >  	int i;
> > @@ -156,7 +158,7 @@ int nand_onfi_detect(struct nand_chip *chip)
> >  		return 0;
> >  
> >  	/* ONFI chip: allocate a buffer to hold its parameter page */
> > -	p = kzalloc((sizeof(*p) * 3), GFP_KERNEL);
> > +	p = kzalloc((sizeof(*p) * ONFI_PARAM_PAGES), GFP_KERNEL);
> >  	if (!p)
> >  		return -ENOMEM;
> >  
> > @@ -166,7 +168,7 @@ int nand_onfi_detect(struct nand_chip *chip)
> >  		goto free_onfi_param_page;
> >  	}
> >  
> > -	for (i = 0; i < 3; i++) {
> > +	for (i = 0; i < ONFI_PARAM_PAGES; i++) {
> >  		ret = nand_read_data_op(chip, &p[i], sizeof(*p), true);
> >  		if (ret) {
> >  			ret = 0;
> > @@ -181,8 +183,8 @@ int nand_onfi_detect(struct nand_chip *chip)
> >  		}
> >  	}
> >  
> > -	if (i == 3) {
> > -		const void *srcbufs[3] = {p, p + 1, p + 2};
> > +	if (i == ONFI_PARAM_PAGES) {
> > +		const void *srcbufs[ONFI_PARAM_PAGES] = {p, p + 1, p + 2};
> >    
> 
> Maybe initialize the srcbufs array using a for loop so you can easily
> change ONFI_PARAM_PAGES without having to touch the code. Looks good
> otherwise, so
> 
> Reviewed-by: Boris Breillon <boris.brezillon@collabora.com>

Oops, there's a typo here ^ s/Breillon/Brezillon/

> 
> >  		pr_warn("Could not find a valid ONFI parameter page, trying bit-wise majority to recover it\n");
> >  		nand_bit_wise_majority(srcbufs, ARRAY_SIZE(srcbufs), p,  
> 


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
