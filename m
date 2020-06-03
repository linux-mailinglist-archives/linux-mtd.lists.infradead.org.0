Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF6131ED19A
	for <lists+linux-mtd@lfdr.de>; Wed,  3 Jun 2020 16:00:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OQfFI5egSO5DpqZwHRuztD2zY4MXg7LmI6MqaZaNkWI=; b=d66x/voZO6GiL4
	8hNPiKOxwwTvvIP/0dzxy9bGgXqjNhToPfAxsoLT+1MoI2bHH523r1F4fI6pxpKbuEDdG2U+n00R/
	G9HQrJbaqHg8zouCpZAnHusS89CyzESwpb8u1+pMr89ffhIqcDQSblKVVYbY4juWqUp81cMXsidLt
	hai/y6HqL07N5qRUDnxdH0Iq6vKok+R20uW2aCRUFZgiF8lh5McEvLNLsAqztjbqL4Qbn3+d5TTI3
	h7BtthqBK9FG+j8JqIsC5yhhKlTLzYj7M8fk9AkJGpGWmQrgt4MlMongRRIJfLHJvE5PKkOaZOplK
	b9myt94pSwaLc8Zdx2jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgTvx-000425-CP; Wed, 03 Jun 2020 13:59:57 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgTvp-00041g-4G
 for linux-mtd@lists.infradead.org; Wed, 03 Jun 2020 13:59:50 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 035692A0682;
 Wed,  3 Jun 2020 14:59:46 +0100 (BST)
Date: Wed, 3 Jun 2020 15:59:44 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH 04/10] mtd: rawnand: fsl_upm: Use devm_kasprintf() to
 allocate the MTD name
Message-ID: <20200603155944.3245b31d@collabora.com>
In-Reply-To: <20200603155531.1b43ddb7@xps13>
References: <20200603134922.1352340-1-boris.brezillon@collabora.com>
 <20200603134922.1352340-5-boris.brezillon@collabora.com>
 <20200603155531.1b43ddb7@xps13>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_065949_294503_628CE0C1 
X-CRM114-Status: GOOD (  16.22  )
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Anton Vorontsov <anton@enomsg.org>,
 Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, 3 Jun 2020 15:55:31 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Boris Brezillon <boris.brezillon@collabora.com> wrote on Wed,  3 Jun
> 2020 15:49:16 +0200:
> 
> > This simplifies the init() error path and the remove() handler.
> > 
> > Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> > ---
> >  drivers/mtd/nand/raw/fsl_upm.c | 8 +++-----
> >  1 file changed, 3 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/mtd/nand/raw/fsl_upm.c b/drivers/mtd/nand/raw/fsl_upm.c
> > index 9cf79c62ef22..a3e3a968891d 100644
> > --- a/drivers/mtd/nand/raw/fsl_upm.c
> > +++ b/drivers/mtd/nand/raw/fsl_upm.c
> > @@ -176,8 +176,9 @@ static int fun_chip_init(struct fsl_upm_nand *fun,
> >  		return -ENODEV;
> >  
> >  	nand_set_flash_node(&fun->chip, flash_np);
> > -	mtd->name = kasprintf(GFP_KERNEL, "0x%llx.%pOFn", (u64)io_res->start,
> > -			      flash_np);
> > +	mtd->name = devm_kasprintf(fun->dev, GFP_KERNEL, "0x%llx.%pOFn",
> > +				   (u64)io_res->start,
> > +				   flash_np);  
> 
> Shouldn't we check if mtd->name was not already set by
> nand_set_flash_node() first?
> 

We could, but let's see if we find someone to test those changes first.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
