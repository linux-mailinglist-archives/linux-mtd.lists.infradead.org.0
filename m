Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6DFFC2537
	for <lists+linux-mtd@lfdr.de>; Mon, 30 Sep 2019 18:34:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n3PzxsoELN5yPhU2ig3PlP0c4drpyF0iCRQNYB8fuOc=; b=U2X54LXqo0acuq
	VzHM0tCFxBIbptDrHGRBsWFLFLslTZ6tLU1ID2TUrgEhjOLzFMuTmMTEM4gSBQXVlCzp5wbrQWU6E
	8OR8Kft51nbspP6kEzgvzuFYNHwytYTcVN4MrAjrRHIt9V8kI2+yV95a3lmZe7RhQsep5NpDaZaxB
	h080J2cEm1AoYW4eZZ6uEzNvMgIfZ0xwlpgiVRDypLDGVBdvTbMnE4GsiUZTV+j/kXCd2KqWP8zt0
	yPtoKc3ZmGOnA8MVSXyxsySONhsFGa3fJspggd4ZKTpS+2WCOyigGYRDX1Sz6ohN2CnQ9JCzFZ6X4
	TT7iJKKOberOwtsH1dtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEycW-0005SH-MY; Mon, 30 Sep 2019 16:33:56 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEycM-0005QP-OD
 for linux-mtd@lists.infradead.org; Mon, 30 Sep 2019 16:33:48 +0000
Received: by mail-lj1-x242.google.com with SMTP id f5so10179932ljg.8
 for <linux-mtd@lists.infradead.org>; Mon, 30 Sep 2019 09:33:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=X342zlUizHRvyrES5Pcuxcu7FqW9SI8435jSZaU4FUM=;
 b=Sj/iKyaonBeAKT/qexlrU1VcHkXhgVA1m/q+Mo3IH33PIj7FTe8dgUPhIfckAOEEJD
 X3agXJR14Qk2KjTT5kojgLMM2ZXbrFmkGk2mA4BELlyzxwkVss1gCi2Ph/Nj718EgBk5
 oF9GM7glPghqrDajeUzP264BZ9CihyvJiUNts=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=X342zlUizHRvyrES5Pcuxcu7FqW9SI8435jSZaU4FUM=;
 b=MRxokSbIJvurhHUztueWTPZdLfnfcKtIHQxg5LPU2hcWFGUuIsW2xbumDVw9l1YWGq
 naUosmBmQ/sB2WxIQq/BaiH/UpijEqEzcmxKec68g7uZS0JDltVLPZ0YwFKO4YLCKhQi
 QiCQRBxk9cubchBIEL9ZospfF/ON3H50+rt4NJvbvlVL4CRL5ygSaHYcDMl0jw5kJIqa
 DF8ZHBySJ18yBRoZ/rs/J9jF63pOr1wDrBVfVWiFuvKeWuml2srWEzya3bf4W6YrItwQ
 sf8eF765XamESu+iIbDCyiEfsNQebjMTtvqPwl+h4JGb1svy1GYA5wbgJZmONvK78Iga
 AldA==
X-Gm-Message-State: APjAAAXStB7czWSgzmprETgHSXhnJEe+ZU4XkEXvkl0a6pNftApLzw8V
 bovx2BYfnJTgsOpIieax9L2v3oyP4B4oFJYM2BJchw==
X-Google-Smtp-Source: APXvYqzdPZY49T5ieicFrMHCYGXq6NDeWTOJvMTfNfmO/DWlTvyQJdV6zKDA4pxg0cJL+3VOiOxboNoIeF+TdSdMW/o=
X-Received: by 2002:a2e:9853:: with SMTP id e19mr1416618ljj.57.1569861224396; 
 Mon, 30 Sep 2019 09:33:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190906194719.15761-1-kdasu.kdev@gmail.com>
 <20190906194719.15761-2-kdasu.kdev@gmail.com>
 <CAC=U0a1qvKO+t_62df_JcQBETAuNq0pwRkAb-Ofi3ski2rfdEQ@mail.gmail.com>
 <20190930182458.761e8077@collabora.com>
In-Reply-To: <20190930182458.761e8077@collabora.com>
From: Kamal Dasu <kamal.dasu@broadcom.com>
Date: Mon, 30 Sep 2019 12:33:06 -0400
Message-ID: <CAKekbevBxGh9HRLX_4N98NwKm4GnXWvy9kwi6i=nRVnmfmJ-vw@mail.gmail.com>
Subject: Re: [PATCH 2/2] mtd: rawnand: use bounce buffer when vmalloced data
 buf detected
To: Boris Brezillon <boris.brezillon@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_093346_789020_4DEC54A5 
X-CRM114-Status: GOOD (  21.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Kamal Dasu <kdasu.kdev@gmail.com>,
 Richard Weinberger <richard@nod.at>, Boris Brezillon <bbrezillon@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 Marek Vasut <marek.vasut@gmail.com>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, Sep 30, 2019 at 12:25 PM Boris Brezillon
<boris.brezillon@collabora.com> wrote:
>
> On Mon, 30 Sep 2019 12:01:28 -0400
> Kamal Dasu <kdasu.kdev@gmail.com> wrote:
>
> > Does anyone have any comments on this patch ?.
> >
> > Kamal
> >
> > On Fri, Sep 6, 2019 at 3:49 PM Kamal Dasu <kdasu.kdev@gmail.com> wrote:
> > >
> > > For controller drivers that use DMA and set NAND_USE_BOUNCE_BUFFER
> > > option use data buffers that are not vmalloced, aligned and have
> > > valid virtual address to be able to do DMA transfers. This change
> > > adds additional check and makes use of data buffer allocated
> > > in nand_base driver when it is passed a vmalloced data buffer for
> > > DMA transfers.
> > >
> > > Signed-off-by: Kamal Dasu <kdasu.kdev@gmail.com>
> > > ---
> > >  drivers/mtd/nand/raw/nand_base.c | 14 ++++++++------
> > >  1 file changed, 8 insertions(+), 6 deletions(-)
> > >
> > > diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
> > > index 91f046d4d452..46f6965a896a 100644
> > > --- a/drivers/mtd/nand/raw/nand_base.c
> > > +++ b/drivers/mtd/nand/raw/nand_base.c
> > > @@ -45,6 +45,12 @@
> > >
> > >  #include "internals.h"
> > >
> > > +static int nand_need_bounce_buf(const void *buf, struct nand_chip *chip)
> > > +{
> > > +       return !virt_addr_valid(buf) || is_vmalloc_addr(buf) ||
>
> I thought virt_addr_valid() was implying !is_vmalloc_addr(), are you
> sure you need that test, and can you tell me on which arch(es) this is
> needed.
>

This has been observed on MIPS4K and MIPS5K architectures. There is a
check on the controller driver to use pio in such cases.

> > > +               !IS_ALIGNED((unsigned long)buf, chip->buf_align);
> > > +}
> > > +
> > >  /* Define default oob placement schemes for large and small page devices */
> > >  static int nand_ooblayout_ecc_sp(struct mtd_info *mtd, int section,
> > >                                  struct mtd_oob_region *oobregion)
> > > @@ -3183,9 +3189,7 @@ static int nand_do_read_ops(struct nand_chip *chip, loff_t from,
> > >                 if (!aligned)
> > >                         use_bufpoi = 1;
> > >                 else if (chip->options & NAND_USE_BOUNCE_BUFFER)
> > > -                       use_bufpoi = !virt_addr_valid(buf) ||
> > > -                                    !IS_ALIGNED((unsigned long)buf,
> > > -                                                chip->buf_align);
> > > +                       use_bufpoi = nand_need_bounce_buf(buf, chip);
> > >                 else
> > >                         use_bufpoi = 0;
> > >
> > > @@ -4009,9 +4013,7 @@ static int nand_do_write_ops(struct nand_chip *chip, loff_t to,
> > >                 if (part_pagewr)
> > >                         use_bufpoi = 1;
> > >                 else if (chip->options & NAND_USE_BOUNCE_BUFFER)
> > > -                       use_bufpoi = !virt_addr_valid(buf) ||
> > > -                                    !IS_ALIGNED((unsigned long)buf,
> > > -                                                chip->buf_align);
> > > +                       use_bufpoi = nand_need_bounce_buf(buf, chip);
> > >                 else
> > >                         use_bufpoi = 0;
> > >
> > > --
> > > 2.17.1
> > >
>

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
