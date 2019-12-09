Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C0B4116679
	for <lists+linux-mtd@lfdr.de>; Mon,  9 Dec 2019 06:39:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MKY7rn9ZYEVbHJgbuvnqEhatV7Gcgj9ZzPGz1wepBQU=; b=FtgUUPkBfyh7SV
	kFd/umJEEzjmv4nUOHtwP7TRqcNL90mcEgGJxzidiqXN/0eafIG8mlfgKSSMdy+VrHE/dSm1HJSLq
	U04WtxTIEXuF7lKgkVd8loMrU67LFCX0OB1IxRpRBgk6VQ0OjpCAjQVD0gC5PdbQov0gDp6wLkyY6
	qRQLTk7YsjHWyJEqDWHLgEOZj/lk6HTV465uzTKF8xtrmsdI0+SXbfXtWRtAHnPqDb/v0HPZ2vw+x
	oDjpjWw/pGuGAZtS/tzIfZDSJjte3r9tLo0o88ljesiXiJhM/qJ2sz0iG+Mti4Fg6HPMUSYxHmELm
	Fr8vJmId+eBjOR0GfqYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieBlV-0007c2-Tt; Mon, 09 Dec 2019 05:39:25 +0000
Received: from conssluserg-04.nifty.com ([210.131.2.83])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieBlN-0007bh-N4
 for linux-mtd@lists.infradead.org; Mon, 09 Dec 2019 05:39:19 +0000
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com
 [209.85.222.45]) (authenticated)
 by conssluserg-04.nifty.com with ESMTP id xB95coD0005657
 for <linux-mtd@lists.infradead.org>; Mon, 9 Dec 2019 14:38:50 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com xB95coD0005657
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1575869930;
 bh=cqqz7tbKmZfY+aYrjvD0h1xkQW0LQHgC7pkxY1C85k4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=JvzTcgkP5PuNiJPKQo5BfmtuRhhh6enCrbiow1rcSNKISvDn3ggAyol6RjlL6sqEG
 o5y8r8tKE0vnsFf+rAzs7mszOX9v7yZWZXqYtmriMIo38YafJqA43osntMsKMH/DpP
 pHlb7o1z9pfTcFX2LG8qTZVa0gV6B0/vExP3+GNlZJe/oFPeeXChq2EybZqhdgtu0n
 E0ZvicHtaX2tiKx3fAKFH3elkJKwLFHm4p27RW8MW3j3biCDG63YOOAxzQuv3UEwKE
 mZFMrRU/kGguBU8wyUzW53aMPTZl+5HjXJnQ44rVTD+icKQNw4w7KqrqWb2/xHY+vW
 ltjlZlNp9Wasg==
X-Nifty-SrcIP: [209.85.222.45]
Received: by mail-ua1-f45.google.com with SMTP id d6so5082249uam.11
 for <linux-mtd@lists.infradead.org>; Sun, 08 Dec 2019 21:38:50 -0800 (PST)
X-Gm-Message-State: APjAAAXoSu4Wjy6WM+zPx8kmwt0IkErdhqMmp9XK3uMXO+G7YeMoxtGR
 UIQe1Q/jCnLQhgDjQoT2N6MDbIU4nwxpgxL8VI0=
X-Google-Smtp-Source: APXvYqzmjeJ9Sy+or75CR+CsHQDewxgWaE42VREp0YyRUrsHMtt88CQS4h53Ib1UhzjucWcbPf7YHuSZqiZ45RfFt/4=
X-Received: by 2002:ab0:63c7:: with SMTP id i7mr21397670uap.109.1575869929282; 
 Sun, 08 Dec 2019 21:38:49 -0800 (PST)
MIME-Version: 1.0
References: <20191207004855.11334-1-marex@denx.de>
In-Reply-To: <20191207004855.11334-1-marex@denx.de>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon, 9 Dec 2019 14:38:13 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQsejXuwAZ6G5=G88GMj6P10bFkBwr4czL_BXkONSHsGw@mail.gmail.com>
Message-ID: <CAK7LNAQsejXuwAZ6G5=G88GMj6P10bFkBwr4czL_BXkONSHsGw@mail.gmail.com>
Subject: Re: [PATCH] mtd: rawnand: denali_dt: Add support for configuring
 SPARE_AREA_SKIP_BYTES
To: Marek Vasut <marex@denx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_213917_969083_A0C8E925 
X-CRM114-Status: GOOD (  25.00  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.83 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Richard Weinberger <richard@nod.at>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Vignesh Raghavendra <vigneshr@ti.com>, Ley Foon Tan <ley.foon.tan@intel.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Sat, Dec 7, 2019 at 9:49 AM Marek Vasut <marex@denx.de> wrote:
>
> The SPARE_AREA_SKIP_BYTES register is reset when the controller reset
> signal is toggled. Yet, this register must be configured to match the
> content of the NAND OOB area. The current default value is always set
> to 8 and is programmed into the hardware in case the hardware was not
> programmed before (e.g. in a bootloader) with a different value. This
> however does not work when the block is reset properly by Linux.
>
> On Altera SoCFPGA CycloneV, ArriaV and Arria10, which are the SoCFPGA
> platforms which support booting from NAND, the SPARE_AREA_SKIP_BYTES
> value must be set to 2. On Socionext Uniphier, the value is 8. This
> patch adds support for preconfiguring the default value and handles
> the special SoCFPGA case by setting the default to 2 on all SoCFPGA
> platforms, while retaining the original behavior and default value of
> 8 on all the other platforms.
>
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Ley Foon Tan <ley.foon.tan@intel.com>
> Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
> Cc: Miquel Raynal <miquel.raynal@bootlin.com>
> Cc: Richard Weinberger <richard@nod.at>
> Cc: Vignesh Raghavendra <vigneshr@ti.com>
> To: linux-mtd@lists.infradead.org
> ---
>  drivers/mtd/nand/raw/denali.c    | 13 ++++++++++---
>  drivers/mtd/nand/raw/denali_dt.c |  6 ++++++
>  2 files changed, 16 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/mtd/nand/raw/denali.c b/drivers/mtd/nand/raw/denali.c
> index 3102ddbd8abdb..b6c463d021677 100644
> --- a/drivers/mtd/nand/raw/denali.c
> +++ b/drivers/mtd/nand/raw/denali.c
> @@ -1302,14 +1302,21 @@ int denali_init(struct denali_controller *denali)
>
>         /*
>          * Set how many bytes should be skipped before writing data in OOB.
> +        * If a non-zero value has already been configured, update it in HW.
>          * If a non-zero value has already been set (by firmware or something),
>          * just use it. Otherwise, set the driver's default.
>          */
> -       denali->oob_skip_bytes = ioread32(denali->reg + SPARE_AREA_SKIP_BYTES);
> -       if (!denali->oob_skip_bytes) {
> -               denali->oob_skip_bytes = DENALI_DEFAULT_OOB_SKIP_BYTES;
> +       if (denali->oob_skip_bytes) {
>                 iowrite32(denali->oob_skip_bytes,
>                           denali->reg + SPARE_AREA_SKIP_BYTES);
> +       } else {
> +               denali->oob_skip_bytes =
> +                       ioread32(denali->reg + SPARE_AREA_SKIP_BYTES);
> +               if (!denali->oob_skip_bytes) {
> +                       denali->oob_skip_bytes = DENALI_DEFAULT_OOB_SKIP_BYTES;
> +                       iowrite32(denali->oob_skip_bytes,
> +                                 denali->reg + SPARE_AREA_SKIP_BYTES);

This fallback is ugly, and should be removed, I think.
It is only reachable by PCI platform (Intel MRST), where
DENALI_DEFAULT_OOB_SKIP_BYTES is probably useless.



> @@ -209,6 +213,8 @@ static int denali_dt_probe(struct platform_device *pdev)
>         denali->clk_rate = clk_get_rate(dt->clk);
>         denali->clk_x_rate = clk_get_rate(dt->clk_x);
>
> +       denali->oob_skip_bytes = data->oob_skip_bytes;
> +

Please move this to the relevant hunk.
Preferably, based on this:
http://patchwork.ozlabs.org/patch/1205912/




>         ret = denali_init(denali);
>         if (ret)
>                 goto out_disable_clk_ecc;
> --
> 2.24.0
>
>
> ______________________________________________________
> Linux MTD discussion mailing list
> http://lists.infradead.org/mailman/listinfo/linux-mtd/



--
Best Regards
Masahiro Yamada

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
