Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B03141C3708
	for <lists+linux-mtd@lfdr.de>; Mon,  4 May 2020 12:38:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ndN6Sm5omcMxwrhFJLzLXU/x3fXyufAWfgA/usE3Cq8=; b=j/iYNykWSfZrJH
	RCfvk++BD1kYpxrT5F/OBhsW56YrhUhQaJFBnTxdkRELWLFXMMB1fFlEp2EK+aaQGkSmioqOByrXx
	zI7rnWhOxRnIzfhTh5bJ/iPpkncEx5i+ZtSTf2Sjm91F700kMpxf+MOHWA7qgM70EkXbtrSPDRPm+
	O/EzIFKTHJi6SlqXFPDeABaxtDVKQ2NI5P/nV1e30233yyXl9PYsRwXjcSStQmm81M12T9HKzWoMn
	zL1wyBs14t5RN04FP3Fcgz82KKp+8LRK0cGeLO3dc8yZ8FOHAzgS/BtRpaGEueokgVi8LV1n0XYiO
	aAbk9jIiQ8hAgU3N0GHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVYU1-0003PL-Pe; Mon, 04 May 2020 10:37:57 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVYTq-0003Nz-8k
 for linux-mtd@lists.infradead.org; Mon, 04 May 2020 10:37:47 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 474C8240008;
 Mon,  4 May 2020 10:37:42 +0000 (UTC)
Date: Mon, 4 May 2020 12:37:40 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v4 11/13] mtd: rawnand: Expose monolithic
 read/write_page_raw() helpers
Message-ID: <20200504123740.765c59e7@xps13>
In-Reply-To: <20200504123501.56ade217@collabora.com>
References: <20200504095237.1654-1-miquel.raynal@bootlin.com>
 <20200504095237.1654-12-miquel.raynal@bootlin.com>
 <20200504123501.56ade217@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_033746_440318_ADAA01A9 
X-CRM114-Status: GOOD (  10.92  )
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
Cc: Michal Simek <monstr@monstr.eu>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


Boris Brezillon <boris.brezillon@collabora.com> wrote on Mon, 4 May
2020 12:35:01 +0200:

> On Mon,  4 May 2020 11:52:35 +0200
> Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> 
> >  /**
> >   * nand_write_page_raw_syndrome - [INTERN] raw page write function
> >   * @chip: nand chip info structure
> > diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
> > index 70380c91731c..830e05dd1e1d 100644
> > --- a/include/linux/mtd/rawnand.h
> > +++ b/include/linux/mtd/rawnand.h
> > @@ -1328,13 +1328,17 @@ int nand_read_oob_std(struct nand_chip *chip, int page);
> >  int nand_get_set_features_notsupp(struct nand_chip *chip, int addr,
> >  				  u8 *subfeature_param);
> >  
> > -/* Default read_page_raw implementation */
> > +/* Default read_page_raw implementations */  
> 
> I thought we agreed on dropping the "Default" here
> 
> >  int nand_read_page_raw(struct nand_chip *chip, uint8_t *buf, int oob_required,
> >  		       int page);
> > +int nand_monolithic_read_page_raw(struct nand_chip *chip, uint8_t *buf,
> > +				  int oob_required, int page);
> >  
> > -/* Default write_page_raw implementation */
> > +/* Default write_page_raw implementations */  
> 
> and here :).

I completely forgot about that.

If the rest is fine, I'll just resend this one (or the last patches).

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
