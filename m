Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5CF11C3DB
	for <lists+linux-mtd@lfdr.de>; Thu, 12 Dec 2019 04:34:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ugx/1zdSBGKBprkvjXVxteMRyJk3gamL/gvg5rnKj+o=; b=BdizS7iqGTkhbd
	5zhy7HtyQJ6YYqZf/qz/91vya0avAydfJLUgtJwEkeRfKAlrbEmGzV+nGKCCsX/Mim//OuyizygNL
	CZGH5JzdHlWRIMjQqQGOXfEJVS8uX8IvORQyvSLugPn6uqXV640opgO9Ir9KyfiJe4JDo9wWNpTZD
	Mut2gbmm8UgU6Jt6wdnVit4Kuk3+PI8rMuhY45PtDHzEEVX0y5hldMmV3i975j/llEkz1MUBz5NZ5
	E4cTJRcrlg8qb7J2jUWY2d+cVp9XMHgxI9Altayem1rVKBV5woZv+6TD67MO4ETfjB5ZtheGOPcpF
	yAS+H7yzuA/LVHRwp1lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifFF4-0006Gb-0h; Thu, 12 Dec 2019 03:34:18 +0000
Received: from conssluserg-02.nifty.com ([210.131.2.81])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifFEs-0006FO-Bh
 for linux-mtd@lists.infradead.org; Thu, 12 Dec 2019 03:34:08 +0000
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com
 [209.85.221.174]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id xBC3Xl8u003773
 for <linux-mtd@lists.infradead.org>; Thu, 12 Dec 2019 12:33:48 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com xBC3Xl8u003773
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1576121628;
 bh=p1P3InDUiioyKsJ0uqaLYPyxVpYrR5VZ44BOVhRr6QU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=FdUxNb09tRix91rC7pFGfY91Alomf9VGqGWbt5CnOCadE5WbXoJg5TPifTUICLvWK
 LesPIlYRvDQDBtlsyO6qOj4DUBcy05EFUfaaIPppNaG6wXtfWE6+QFM3+BUxsmc0Aq
 DOh3Qjm0Q3M5HiAG3xgecFuFWSJ2oLbpNFA0osNVc2SwHOLl5l8DgByu6GYHdLMMrv
 rkYvYXDAjt6DAP9PTW/rNqdJJkckmBVkLGBtcXWlb8jnlZIHJG0kSJkXT7j9flOcZE
 q8NAQqaa0QUPV/XK+UyUcs8h4sK4R18uosuG/P4l3RBpr7Iebx9pi1anrFSlG+ULxp
 BZHYMF3jHk4+w==
X-Nifty-SrcIP: [209.85.221.174]
Received: by mail-vk1-f174.google.com with SMTP id u6so346585vkn.13
 for <linux-mtd@lists.infradead.org>; Wed, 11 Dec 2019 19:33:47 -0800 (PST)
X-Gm-Message-State: APjAAAUY9NygS4o9igOnRYLcd/hWWH/FsDzK5+/8oFkNEEDfiiHg9NUR
 aPuQdeawDvRF5HaoSGfyGX4yFpx/QCRGJdCCUFw=
X-Google-Smtp-Source: APXvYqxQv7H+yYlj4cHgvDygVGhBBZnFMhLd2OuGWfMmVY59MfZ4NEBI6ohS0rdhJMIe8WNTbhNsQh+3Do02yOmxJmQ=
X-Received: by 2002:a1f:2e4a:: with SMTP id u71mr3263415vku.96.1576121626675; 
 Wed, 11 Dec 2019 19:33:46 -0800 (PST)
MIME-Version: 1.0
References: <20191211054538.8283-1-yamada.masahiro@socionext.com>
 <20191211054538.8283-2-yamada.masahiro@socionext.com>
 <399bb8ab-74c5-1be3-4156-6d854738b548@denx.de>
In-Reply-To: <399bb8ab-74c5-1be3-4156-6d854738b548@denx.de>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 12 Dec 2019 12:33:10 +0900
X-Gmail-Original-Message-ID: <CAK7LNATDcWV5sV3r6Rkv-4KMGDE5ZwyG525WDyjGEW85xSDF1g@mail.gmail.com>
Message-ID: <CAK7LNATDcWV5sV3r6Rkv-4KMGDE5ZwyG525WDyjGEW85xSDF1g@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] mtd: rawnand: denali_dt: add reset controlling
To: Marek Vasut <marex@denx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_193406_733086_35F0248D 
X-CRM114-Status: GOOD (  18.63  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.81 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: DTML <devicetree@vger.kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>,
 Richard Weinberger <richard@nod.at>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ley Foon Tan <ley.foon.tan@intel.com>, Dinh Nguyen <dinguyen@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-mtd <linux-mtd@lists.infradead.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, Dec 12, 2019 at 10:05 AM Marek Vasut <marex@denx.de> wrote:
>
> On 12/11/19 6:45 AM, Masahiro Yamada wrote:
> [...]
> > diff --git a/drivers/mtd/nand/raw/denali_dt.c b/drivers/mtd/nand/raw/denali_dt.c
> > index 8b779a899dcf..9a294c3f6ec8 100644
> > --- a/drivers/mtd/nand/raw/denali_dt.c
> > +++ b/drivers/mtd/nand/raw/denali_dt.c
> > @@ -6,6 +6,7 @@
> >   */
> >
> >  #include <linux/clk.h>
> > +#include <linux/delay.h>
> >  #include <linux/err.h>
> >  #include <linux/io.h>
> >  #include <linux/ioport.h>
> > @@ -14,6 +15,7 @@
> >  #include <linux/of.h>
> >  #include <linux/of_device.h>
> >  #include <linux/platform_device.h>
> > +#include <linux/reset.h>
> >
> >  #include "denali.h"
> >
> > @@ -22,6 +24,8 @@ struct denali_dt {
> >       struct clk *clk;        /* core clock */
> >       struct clk *clk_x;      /* bus interface clock */
> >       struct clk *clk_ecc;    /* ECC circuit clock */
> > +     struct reset_control *rst;      /* core reset */
> > +     struct reset_control *rst_reg;  /* register reset */
> >  };
> >
> >  struct denali_dt_data {
> > @@ -151,6 +155,14 @@ static int denali_dt_probe(struct platform_device *pdev)
> >       if (IS_ERR(dt->clk_ecc))
> >               return PTR_ERR(dt->clk_ecc);
> >
> > +     dt->rst = devm_reset_control_get_optional_shared(dev, "nand");
> > +     if (IS_ERR(dt->rst))
> > +             return PTR_ERR(dt->rst);
> > +
> > +     dt->rst_reg = devm_reset_control_get_optional_shared(dev, "reg");
> > +     if (IS_ERR(dt->rst_reg))
> > +             return PTR_ERR(dt->rst_reg);
> > +
> >       ret = clk_prepare_enable(dt->clk);
> >       if (ret)
> >               return ret;
> > @@ -166,10 +178,30 @@ static int denali_dt_probe(struct platform_device *pdev)
> >       denali->clk_rate = clk_get_rate(dt->clk);
> >       denali->clk_x_rate = clk_get_rate(dt->clk_x);
> >
> > -     ret = denali_init(denali);
> > +     /*
> > +      * Deassert the register reset, and the core reset in this order.
> > +      * Deasserting the core reset while the register reset is asserted
> > +      * will cause unpredictable behavior in the controller.
> > +      */
> > +     ret = reset_control_deassert(dt->rst_reg);
> >       if (ret)
> >               goto out_disable_clk_ecc;
> >
> > +     ret = reset_control_deassert(dt->rst);
> > +     if (ret)
> > +             goto out_assert_rst_reg;
> > +
> > +     /*
> > +      * When the reset is deasserted, the initialization sequence is kicked
> > +      * (bootstrap process). The driver must wait until it finished.
> > +      * Otherwise, it will result in unpredictable behavior.
> > +      */
> > +     usleep_range(200, 1000);
> > +
> > +     ret = denali_init(denali);
> > +     if (ret)
> > +             goto out_assert_rst;
> > +
> >       for_each_child_of_node(dev->of_node, np) {
> >               ret = denali_dt_chip_init(denali, np);
> >               if (ret) {
> > @@ -184,6 +216,10 @@ static int denali_dt_probe(struct platform_device *pdev)
> >
> >  out_remove_denali:
> >       denali_remove(denali);
> > +out_assert_rst:
> > +     reset_control_assert(dt->rst);
> > +out_assert_rst_reg:
> > +     reset_control_assert(dt->rst_reg);
>
> Maybe you can use devm_add_action_or_reset() here , like in e.g.
> drivers/input/touchscreen/ili210x.c , to avoid this unwinding ?


No.

Drivers should be explicit about what and when
to do about the hardware access.


This comes down to a question about why
Linux kernel does not have such APIs as:

devm_clk_prepare_enable()
devm_reset_control_deassert()
devm_regulator_enable()

In fact, I saw some people sending such patches in the past.


Mark Brown clearly answered the question.
https://lkml.org/lkml/2014/2/1/131

I really support his thinking.





--
Best Regards

Masahiro Yamada

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
