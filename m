Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A011E545A
	for <lists+linux-mtd@lfdr.de>; Thu, 28 May 2020 05:06:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zRk/EF7w1H+evp6x0H/BRhZHDvCkzeyNcFd4F30A2RY=; b=VYbdMEJz9USMiV
	cfqZS9S5X3knDS//7KVlJAr6Tt2fE15lFDPpxbj6QF9UcISvIPjZ28NHGmh8m0mJ821PY7EiYIO5G
	pm8AJ4JonWCzooaM8Dlsn1m4++xJW9gmfwhVuwQzSRTH4obADnkiycM+dKo1QEiBhgY6kCcVGC2nz
	+kDJKpKMZTJp2VykWVXPjdrs9fZh2HUlg9lKWa74zfv/kuNBoq32EoSy4if44qvRGiIsVvXLLtzaj
	GaJi1eo65pk4jDieoCS2tbc8q1nJ9cLGtbrzQCMGvMcgHOY4IWVmzdAAcZbol3/j4n1tcqLxz284Z
	8wWydliEGdvD2/9tjquA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je8sF-00043y-MT; Thu, 28 May 2020 03:06:27 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je8s7-00043W-3n
 for linux-mtd@lists.infradead.org; Thu, 28 May 2020 03:06:20 +0000
Received: by mail-vs1-xe43.google.com with SMTP id w65so14941401vsw.11
 for <linux-mtd@lists.infradead.org>; Wed, 27 May 2020 20:06:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=c0zRf9WTF0mM6R4rLoCl6Co+fSR9upGJzK30+eXsCrQ=;
 b=ETKtEfdX4f87hvL+eN5+pIdyNmq0wY+7xdaPLxVaTXZ42GBITJENo0kA+8TlcsZaF5
 Xluh6N64Pf46mJHA+DCu9/ektSbdItOS8crhEaj6B6a0AfsFuYS1/YNRAKXPhihGWVOh
 lFgctf5UcsAxRAKLBTOmKAe9xcj+pQoznprDI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=c0zRf9WTF0mM6R4rLoCl6Co+fSR9upGJzK30+eXsCrQ=;
 b=LKL/vVa+TG9DVbWDn2/OhzVpx4VWsm1U7Q01QhJy0hMweK7BbWfUcBpHznPkhtu9Of
 uQyuUOmZ1bfjdhRCYu5cE6dQKGJKNmwCYsz47K7Tj1R8QXLbGRKUv6d93QX6E6eU1dq4
 iX+uoJOrA74SPtsy2QiK2C/PBtrB2rvl6CYmU2FQYV4A5auBS62nElpSCS3WCc4TmwJZ
 EWevBKZi91YUYsguMN8sSvDRa4wX68+qVMrLhV4zQZYBV460kqS4q3IgK5YkchpxEQbT
 91LYSZkqXemNqRa+ywfHk0m9cBkwPo2z9xkvMOYXVuFuH1YPssQicL/NRa8iurI2xdEX
 KM1Q==
X-Gm-Message-State: AOAM532bydLJH3KnHasHr5udxS/QRqCyxU/6BcHSN/kyFud26KXbes7Y
 iJcWefQgOVLyjxvsk5bUrNYSprXQSatsRlVz0Q5TPg==
X-Google-Smtp-Source: ABdhPJyRv5KIG7uAo2gx9DLqYFdLVEioWfhg8W/XAXDq9+AhgpxLCUHCVP+7cfxwa0TCIQBIbicDDN+po4i6IYEWEZI=
X-Received: by 2002:a67:71c2:: with SMTP id m185mr581124vsc.186.1590635177072; 
 Wed, 27 May 2020 20:06:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200528025503.24003-1-wuxy@bitland.com.cn>
In-Reply-To: <20200528025503.24003-1-wuxy@bitland.com.cn>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Thu, 28 May 2020 11:06:04 +0800
Message-ID: <CANMq1KDWp7ztviO+ZoXeEqek3uCzPDKjteahO32C3b-=OxerUQ@mail.gmail.com>
Subject: Re: [PATCH] [v3]mtd: spi-nor: winbond: add 1.8v SPI NOR Flash IDs
To: wuxy@bitland.com.cn
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_200619_170854_363A5E14 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: wuxy <wuxy@bitland.corp-partner.google.com>, linux-mtd@lists.infradead.org,
 lkml <linux-kernel@vger.kernel.org>, stlin2@winbond.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, May 28, 2020 at 10:55 AM <wuxy@bitland.com.cn> wrote:
>
> From: wuxy <wuxy@bitland.corp-partner.google.com>
>
> Winbond has new 1.8V SPI NOR Flash IDs,we need to use the SPI
> flash IDs in kukui series,this patch can support the new flash IDs.
>
> TEST=boot to shell,get the spi information from 'dmesg'.

TEST= is Chromium OS specific, you can drop this line.

>
> Signed-off-by: Xingyu Wu <wuxy@bitland.corp-partner.google.com>
> Signed-off-by: ST Lin <stlin2@winbond.com>

Tested-by: Nicolas Boichat <drinkcat@chromium.org>

>
> This patch copied from:https://patchwork.ozlabs.org/patch/1150756/,
> The original patch is invalid,so re-submit a new patch for this.

This belongs below the ---, but I guess the maintainer can help you with that.

> ---
>  drivers/mtd/spi-nor/winbond.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
>
> diff --git a/drivers/mtd/spi-nor/winbond.c b/drivers/mtd/spi-nor/winbond.c
> index 17deabad57e1..cda4f8847bd6 100644
> --- a/drivers/mtd/spi-nor/winbond.c
> +++ b/drivers/mtd/spi-nor/winbond.c
> @@ -61,6 +61,15 @@ static const struct flash_info winbond_parts[] = {
>                              SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
>         { "w25m512jv", INFO(0xef7119, 0, 64 * 1024, 1024,
>                             SECT_4K | SPI_NOR_QUAD_READ | SPI_NOR_DUAL_READ) },
> +       { "w25q64jwxxIM", INFO(0xef8017, 0, 64 * 1024, 128,
> +                           SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
> +                           SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB) },
> +       { "w25q128jwxxIM", INFO(0xef8018, 0, 64 * 1024, 256,
> +                           SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
> +                           SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB) },
> +       { "w25q256jwxxIM", INFO(0xef8019, 0, 64 * 1024, 512,
> +                           SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
> +                           SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB) },
>  };
>
>  /**
> --
> 2.20.1
>
>
>

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
