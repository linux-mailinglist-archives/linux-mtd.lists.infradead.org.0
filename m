Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F09E10C8E
	for <lists+linux-mtd@lfdr.de>; Wed,  1 May 2019 20:02:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m8Avpuk6FqhI6o4lVzrke1HdNnoSQJ9cteBjWW7QXZs=; b=EKncikz1REo0OE
	j4m1PSxusk0sxWliLbpeN4GuUXDJpZ3mmRzodUXplfYPJVsLTUg39EqkF3koP46n97EsSnL2Z0gxe
	zlusWCKiEEqSVSPnA7ayo59KMfdn5ghIPEiVHrBXLBVY4WnA0i5cvbrD8kuqbXTWm8o94STwvUmU6
	fnt2510TD405hBzHs0YUWY/elpcH4xeIS5Haj4p+aJlBfzDDnxF7tN1hJAIoJWyiuvBG3FTQrzhDq
	zoJg98sDfu+dfvEXojeYI4JQZOJXI3FHVKDeMNya1enQ+N6Vl3mnAwGHRJTnwi/AqnpwROgTvK3ih
	dQDNQbbC8WHkkegQ7OPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLtYo-0000iP-Ng; Wed, 01 May 2019 18:02:26 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLtYg-0000hw-Qv
 for linux-mtd@lists.infradead.org; Wed, 01 May 2019 18:02:20 +0000
Received: by mail-oi1-f194.google.com with SMTP id v10so14435457oib.1
 for <linux-mtd@lists.infradead.org>; Wed, 01 May 2019 11:02:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zhN43htDOUhLI5nQy3ITTF4IOUOIfjQesvgpn+s0RiA=;
 b=DGpBh2D8W7TCXoEhxNeS6axR91W2/S/xPL9N2h1MZwLM+jrOldok3BzGCNaXyKvEnx
 qBPalgWPQmbjf3NAm8IfAn4UuX/xgipn0ReFhCntPi/zlQPJ2N9AJ9CJlSTyACYTkwdq
 9+Py8yB6t5QPtze90+4AsAx5D6PvgBY+taiaQvfvKsxR17rNyirhISJ2UlmHW1fokQv9
 1acq6LJ8K0ThuIZNR6czmpeyIb/0d8og9ihxiLJ+S620rbt/vTFI9C1CE3b3+QKYg/TA
 jZzqU9+qExYAUwGZdaQyP0my18/dLMpq3kaSEdTidP9SsNeqsqrtN8sXwFXclJrHEi5V
 nc1Q==
X-Gm-Message-State: APjAAAU6N6dgr1F5zeUy7wTAMzDZNROwqLimgbXVbYkdzrCH18v2Q6rC
 rG4moL8msAM3oe/1VHTQ5uyCUct4
X-Google-Smtp-Source: APXvYqxQuIO3zSjtOGiLBTktiOeLVthGTPZ33tregPD+F4WZxFXrgEDwtnyzyhD4ZfcVjXF9ehATGw==
X-Received: by 2002:a54:4f15:: with SMTP id e21mr7289169oiy.122.1556733735921; 
 Wed, 01 May 2019 11:02:15 -0700 (PDT)
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com.
 [209.85.167.169])
 by smtp.gmail.com with ESMTPSA id u26sm495618oiv.22.2019.05.01.11.02.15
 for <linux-mtd@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 May 2019 11:02:15 -0700 (PDT)
Received: by mail-oi1-f169.google.com with SMTP id l1so12561898oib.0
 for <linux-mtd@lists.infradead.org>; Wed, 01 May 2019 11:02:15 -0700 (PDT)
X-Received: by 2002:aca:4e83:: with SMTP id c125mr6968036oib.13.1556733735278; 
 Wed, 01 May 2019 11:02:15 -0700 (PDT)
MIME-Version: 1.0
References: <20181019074908.13226-12-boris.brezillon@bootlin.com>
 <10efc9a0980f4bc2b06b4149d9a4ff90@svr-chch-ex1.atlnz.lc>
In-Reply-To: <10efc9a0980f4bc2b06b4149d9a4ff90@svr-chch-ex1.atlnz.lc>
From: Li Yang <leoyang.li@nxp.com>
Date: Wed, 1 May 2019 13:02:04 -0500
X-Gmail-Original-Message-ID: <CADRPPNQn5vGBxOOQGrCJADYT4pe7inOqrTByo6K5wMhbs7Kd3A@mail.gmail.com>
Message-ID: <CADRPPNQn5vGBxOOQGrCJADYT4pe7inOqrTByo6K5wMhbs7Kd3A@mail.gmail.com>
Subject: Re: [v2,11/15] mtd: maps: Merge physmap_of.c into physmap-core.c
To: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_110218_874314_1A9E5684 
X-CRM114-Status: GOOD (  24.87  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pku.leo[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Pawel Moll <pawel.moll@arm.com>, Boris Brezillon <bbrezillon@kernel.org>,
 "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Linus Walleij <linus.walleij@linaro.org>,
 Ian Campbell <ijc+devicetree@hellion.org.uk>,
 Marek Vasut <marek.vasut@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Kumar Gala <galak@codeaurora.org>,
 Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, Apr 2, 2019 at 6:46 PM Chris Packham
<Chris.Packham@alliedtelesis.co.nz> wrote:
>
> Hi Boris,
>
> I've just come across the commit from this patch.
>
> On 19/10/18 8:49 PM, Boris Brezillon wrote:
> > There's no real reason to have two separate driver for the DT and pdata
> > case. Just do what we do everywhere else and handle DT and pdata
> > parsing in the same driver.
> >
> > Signed-off-by: Boris Brezillon <boris.brezillon@bootlin.com>
> > Reviewed-by: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>
> > ---
> > Changes in v2:
> > - Add Ricardo's R-b
> > - Fix 2 checks (reported by Ricardo)
> > ---
> >   drivers/mtd/maps/Kconfig           |   4 +-
> >   drivers/mtd/maps/Makefile          |   7 +-
> >   drivers/mtd/maps/physmap-core.c    | 261 +++++++++++++++++++++++---
> >   drivers/mtd/maps/physmap_of_core.c | 368 -------------------------------------
> >   4 files changed, 240 insertions(+), 400 deletions(-)
> >   delete mode 100644 drivers/mtd/maps/physmap_of_core.c
> >
> > diff --git a/drivers/mtd/maps/Kconfig b/drivers/mtd/maps/Kconfig
> > index afb36bff13a7..5bffebacce86 100644
> > --- a/drivers/mtd/maps/Kconfig
> > +++ b/drivers/mtd/maps/Kconfig
> > @@ -66,8 +66,8 @@ config MTD_PHYSMAP_BANKWIDTH
> >         used internally by the CFI drivers.
> >
> >   config MTD_PHYSMAP_OF
> > -     tristate "Memory device in physical memory map based on OF description"
> > -     depends on OF && (MTD_CFI || MTD_JEDECPROBE || MTD_ROM || MTD_RAM)
> > +     bool "Memory device in physical memory map based on OF description"
> > +     depends on OF && MTD_PHYSMAP
>
> Previously we could select MTD_PHYSMAP_OF if MTD_RAM was defined. After
> this change we can't select this because MTD_PHYSMAP does not have
> MTD_RAM as dependency.
>
> I'm just in the process of porting the latest kernel to a platform with
> parallel SRAM and NAND via a dedicated controller. I haven't got to a
> point where the platform is booting but I suspect I'll loose my SRAM.

Another minor issue is that previously the MTD_PHYSMAP_OF can be
selected separately, but now it cannot be selected without the
MTD_PHYSMAP.  This may break existing defconfigs.  Probably it will be
better to select MTD_PHYSMAP automatically when MTD_PHYSMAP_OF is
selected?

Regards,
Leo

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
