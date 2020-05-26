Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 401F71C3430
	for <lists+linux-mtd@lfdr.de>; Mon,  4 May 2020 10:17:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p5L3hCTYmKfhppdnY3IQx8PFP6HCH/AgD4JWb0FBmzw=; b=hlSf7XEjG4/+Oj
	JXIUkErxKMFAW/90RkTMeEp5VceNbf4Ydj3LQ2x/6vyG+qG0mw3AdPRuJ1M+Zp+M5V9Wxq2z7thaY
	SsXsVHhzOPSEwhFYRSGq9QjRyLZPc+ct8shoAQea5eU5pCa78qBXafyG1jU06DayKBWBGR+NZWNc4
	yJgDL+HR2IiRfB8fqpfn+9lIaK1czzXS1qW4I3iLWbOxDGMrt6orbcXyuIy+HwROCVSRnz6odsPh1
	9XBgpgV3cJXyg3pXENAA2XyHLW8oFTl9YfAE7g+etRaPc1OCgRbUp7RgwcV2r5y9yV+EVzMjxFjJk
	viD8hwHrBWdkhdCplsRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVWIA-00049N-2V; Mon, 04 May 2020 08:17:34 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVWI1-000487-Ou
 for linux-mtd@lists.infradead.org; Mon, 04 May 2020 08:17:27 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 2EDC2FF805;
 Mon,  4 May 2020 08:16:16 +0000 (UTC)
Date: Mon, 4 May 2020 10:16:15 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v2 07/11] mtd: rawnand: onfi: Adapt the parameter page
 read to constraint controllers
Message-ID: <20200504101615.561a9c6a@xps13>
In-Reply-To: <20200502101215.49e11fa5@collabora.com>
References: <20200429155540.22048-1-miquel.raynal@bootlin.com>
 <20200429155540.22048-8-miquel.raynal@bootlin.com>
 <20200502101215.49e11fa5@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_011725_945460_4E39A0DC 
X-CRM114-Status: GOOD (  23.52  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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

Hi Boris,

Boris Brezillon <boris.brezillon@collabora.com> wrote on Sat, 2 May
2020 10:12:15 +0200:

> On Wed, 29 Apr 2020 17:55:36 +0200
> Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> 
> > We already know that there are controllers not able to read the three
> > copies of the parameter page in one go. The workaround was to first
> > request the controller to assert command and address cycles on the
> > NAND bus to trigger a parameter page read, and then do a read
> > operation for each page.
> > 
> > But there are also controllers which are not able to split the
> > parameter page read between the command/address cycles and the actual
> > data operation.
> > 
> > All controllers are expected to be able to change the read column
> > though. So let's use a regular parameter page read operation for the
> > first iteration and use a change read column operation for the
> > following copies.
> > 
> > The extra command and address cycles sent over the NAND bus are
> > negligible compared to the amount of data that is being transferred
> > anyway.
> > 
> > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > ---
> >  drivers/mtd/nand/raw/nand_onfi.c | 14 +++++++-------
> >  1 file changed, 7 insertions(+), 7 deletions(-)
> > 
> > diff --git a/drivers/mtd/nand/raw/nand_onfi.c b/drivers/mtd/nand/raw/nand_onfi.c
> > index ee0f2c2549c1..19e1be94c7e3 100644
> > --- a/drivers/mtd/nand/raw/nand_onfi.c
> > +++ b/drivers/mtd/nand/raw/nand_onfi.c
> > @@ -160,14 +160,14 @@ int nand_onfi_detect(struct nand_chip *chip)
> >  	if (!pbuf)
> >  		return -ENOMEM;
> >  
> > -	ret = nand_read_param_page_op(chip, 0, NULL, 0);
> > -	if (ret) {
> > -		ret = 0;
> > -		goto free_onfi_param_page;
> > -	}
> > -
> >  	for (i = 0; i < ONFI_PARAM_PAGES; i++) {
> > -		ret = nand_read_data_op(chip, &pbuf[i], sizeof(*pbuf), true);
> > +		if (!i)
> > +			ret = nand_read_param_page_op(chip, 0, &pbuf[i],
> > +						      sizeof(*pbuf));
> > +		else
> > +			ret = nand_change_read_column_op(chip, sizeof(*pbuf) * i,
> > +							 &pbuf[i], sizeof(*pbuf),
> > +							 true);  
> 
> Oops! Looks like this this change will break at least 3 drivers which
> support NAND_CMD_PARAM but don't support NAND_CMD_RNDOUT:
> fsl_ifc_nand, mxc_nand and qcom_nandc.


That's right, here is the new implementation that I am going to share:

-> if (!i) -> READ PARAM PAGE
-> if (use_datain) -> DATA IN
-> else -> RNDOUT.

The use_datain boolean is set to true in the following cases:
- the driver is compliant with exec-op and supports simple reads
- the driver is not compliant with exec-op (we keep the behavior
  unchanged for these drivers).

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
