Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C70D31BB62B
	for <lists+linux-mtd@lfdr.de>; Tue, 28 Apr 2020 08:06:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sI6p5IjOpSWBffOmFbWQgPa+oOnoIjMvpFZX8xZJkfo=; b=oqkBbKqReo4YBB
	4SM215yzzqGNDXO8fu7l4XvHYwvWghEfpM9oTwhZzxhYwcsGkKSJGmTpGMjGiOba8WM7mnkUikDWz
	E+Ro0Zwt6zmZyOFVyOplSGagW5fyWw1ew3yHSGeqJe1rmAJmkQQVC5RLa/1UpYU4xk4n16Rxkm0P6
	lwh+jUtqaa1EQQKa+bnGn7WxTl9N+kGv7bwjgincXF1Fham79eFaTgf92Bu0GVneVyhMzRsxqlgC7
	nfEKVkBtyfnO+pZjkrQ8q5jY2pu07GbvDqll3uAgvast31gY+1Mate6DjocrMTL+6Tx9RD+ckd9W1
	rTk8lQrgaPIkQvHRfnoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTJNx-0002oy-KO; Tue, 28 Apr 2020 06:06:25 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTJNr-0002nc-Hr
 for linux-mtd@lists.infradead.org; Tue, 28 Apr 2020 06:06:20 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id EBAF42A0B89;
 Tue, 28 Apr 2020 07:06:11 +0100 (BST)
Date: Tue, 28 Apr 2020 08:06:07 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH 05/17] mtd: rawnand: cafe: Demistify register fields
Message-ID: <20200428080607.237a2591@collabora.com>
In-Reply-To: <20200427214116.3ea7fa82@xps13>
References: <20200427082028.394719-1-boris.brezillon@collabora.com>
 <20200427082028.394719-6-boris.brezillon@collabora.com>
 <20200427214116.3ea7fa82@xps13>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_230619_720968_53DABBD7 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-mtd@lists.infradead.org, Tudor Ambarus <tudor.ambarus@microchip.com>,
 David Woodhouse <dwmw2@infradead.org>, Vignesh Raghavendra <vigneshr@ti.com>,
 Richard Weinberger <richard@nod.at>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, 27 Apr 2020 21:42:11 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> >  struct cafe_priv {
> >  	struct nand_chip nand;
> > @@ -104,7 +195,8 @@ static const char *part_probes[] = { "cmdlinepart", "RedBoot", NULL };
> >  static int cafe_device_ready(struct nand_chip *chip)
> >  {
> >  	struct cafe_priv *cafe = nand_get_controller_data(chip);
> > -	int result = !!(cafe_readl(cafe, NAND_STATUS) & 0x40000000);
> > +	int result = !!(cafe_readl(cafe, NAND_STATUS) &
> > +			CAFE_NAND_STATUS_FLASH_BUSY);
> >  	uint32_t irqs = cafe_readl(cafe, NAND_IRQ);
> >  
> >  	cafe_writel(cafe, irqs, NAND_IRQ);  
> 
> [...]
> 
> > @@ -318,14 +430,14 @@ static void cafe_select_chip(struct nand_chip *chip, int chipnr)
> >  {
> >  	struct cafe_priv *cafe = nand_get_controller_data(chip);
> >  
> > +	if (chipnr < 0 || chipnr > 1)
> > +		return;
> > +  
> 
> I think this change should not be part of this patch?

Or dropped entirely, since we're getting rid of this function anyway.

> 
> >  	cafe_dev_dbg(&cafe->pdev->dev, "select_chip %d\n", chipnr);
> >  
> >  	/* Mask the appropriate bit into the stored value of ctl1
> >  	   which will be used by cafe_nand_cmdfunc() */
> > -	if (chipnr)
> > -		cafe->ctl1 |= CTRL1_CHIPSELECT;
> > -	else
> > -		cafe->ctl1 &= ~CTRL1_CHIPSELECT;
> > +	cafe->ctl1 |= CAFE_FIELD_PREP(NAND_CTRL1, CE, chipnr);  
> 
> I don't master these macros yet, but are you sure CTRL1_CHIPSELECT will
> actually get cleared if (!chipnr) ?

You're correct, I only ever set the field. I'll fix that.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
