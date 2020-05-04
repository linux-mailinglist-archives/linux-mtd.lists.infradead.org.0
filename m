Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C801C353A
	for <lists+linux-mtd@lfdr.de>; Mon,  4 May 2020 11:03:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RICgLdlxKWyYhJ6z8ibI8U7euCH4UjjS+7eGiPLH/9M=; b=uPORh/yQFInklB
	2Lg5l6GJ4B3mD/mVMlcVyGTTT8yMzjnhAOHtZx8Z2ZQJ7+7D2Cfw0c8CWYV1Aagq5q73FmbjVFGf+
	B3R/vGcolhuFtS7wxOoDtaCD1Ocjam5LgW++H+td+oA5yfAO6PXSfR9qyIWB56fbAkdeI6Sbz1CLe
	ud3Tbqtp3LXfcxhhFWaf5Up4cX5I81jk9EiHkLsAGWseLtg1YiGHbYn9RHrd6C6t89lCvT5EAa4FJ
	Q9obA1S4mgQB6lpa1NDLvFy+w552w+wIbg5faRHJszBBPkIvtvzu+cMtZ/4BFmVHN97womAS9C1sK
	erQxBOGsT5c11Apdl+PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVX10-0001Nj-21; Mon, 04 May 2020 09:03:54 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVX0h-0001Mb-I1
 for linux-mtd@lists.infradead.org; Mon, 04 May 2020 09:03:37 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 512F22001B;
 Mon,  4 May 2020 09:01:45 +0000 (UTC)
Date: Mon, 4 May 2020 11:01:44 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v3 09/13] mtd: rawnand: onfi: Adapt the parameter page
 read to constraint controllers
Message-ID: <20200504110144.273826dd@xps13>
In-Reply-To: <20200504104722.5dfe66eb@collabora.com>
References: <20200504082414.7327-1-miquel.raynal@bootlin.com>
 <20200504082414.7327-10-miquel.raynal@bootlin.com>
 <20200504104722.5dfe66eb@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_020335_735076_C202E8B6 
X-CRM114-Status: GOOD (  22.84  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
2020 10:47:22 +0200:

> On Mon,  4 May 2020 10:24:10 +0200
> Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> 
> > We already know that there are controllers not able to read the three
> > copies of the parameter page in one go. The workaround was to first
> > request the controller to assert command and address cycles on the
> > NAND bus to trigger a parameter page read, and then do a simple read
> > operation for each page.
> > 
> > But there are also controllers which are not able to split the
> > parameter page read between the command/address cycles and the actual
> > data operation.
> > 
> > Let's use a regular PARAMETER PAGE READ operation for the first
> > iteration and use either a CHANGE READ COLUMN or a simple DATA READ
> > operation for the following copies, depending on what the controller
> > supports. The default behavior for non-exec-op compliant drivers
> > remains the same: DATA READ.
> > 
> > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > ---
> >  drivers/mtd/nand/raw/nand_onfi.c | 21 ++++++++++++++-------
> >  1 file changed, 14 insertions(+), 7 deletions(-)
> > 
> > diff --git a/drivers/mtd/nand/raw/nand_onfi.c b/drivers/mtd/nand/raw/nand_onfi.c
> > index e6ffbe8c9a0c..49cb04c02e9f 100644
> > --- a/drivers/mtd/nand/raw/nand_onfi.c
> > +++ b/drivers/mtd/nand/raw/nand_onfi.c
> > @@ -143,6 +143,7 @@ int nand_onfi_detect(struct nand_chip *chip)
> >  	struct nand_memory_organization *memorg;
> >  	struct nand_onfi_params *p = NULL, *pbuf;
> >  	struct onfi_params *onfi;
> > +	bool use_datain = false;
> >  	int onfi_version = 0;
> >  	char id[4];
> >  	int i, ret, val;
> > @@ -160,15 +161,21 @@ int nand_onfi_detect(struct nand_chip *chip)
> >  	if (!pbuf)
> >  		return -ENOMEM;
> >  
> > -	ret = nand_read_param_page_op(chip, 0, NULL, 0);
> > -	if (ret) {
> > -		ret = 0;
> > -		goto free_onfi_param_page;
> > -	}
> > +	if (!nand_has_exec_op(chip) ||
> > +	    (nand_read_data_op(chip, &pbuf[0], sizeof(*pbuf), true, true) == 0))  
> 
> Just nitpicking, but isn't checkpatch complaining about unneeded parens?

Mmmh no, where? I think there is no need for (!nand_has_exec_op(chip))
if this is what you mean? Checkpatch --strict does not produce a
warning here.

> Any reason you didn't use
> 
> 	    !nand_read_data_op(chip, &pbuf[0], sizeof(*pbuf), true, true)

I usually write conditions this way, but here I read it like "if not
nand_read_data_op is supported" which means the opposite of what it is
doing. Instead, I read the "== 0" as "I expect it to return 0 and
it means it is okay". Maybe its purely personal :)

> 
> here?
> 
> The rest looks good,
> 
> Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
> 

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
