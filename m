Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B823CC24C8
	for <lists+linux-mtd@lfdr.de>; Mon, 30 Sep 2019 18:02:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uVdMVGkl0bCOO4UQRjd3lWqBG0zITMoE4JBE8BhjcLQ=; b=HnlOKEdFivG5fv
	D0CeXCkXgI014LDO6TkWmpTDB8rM7RYqGXycAHEx09h30UqMifiliW1f/KShc0icAcalcOY0wJd7k
	3IIxa+pfOYhvY4Tzqcpucqyq6WiXob7yAiAy4QB6EPitNXhEbICwJaCKF3xRdy6jqSBKSLqwr/ig3
	OD0yA67oCIzuR0l45fwB3XxTDzSQlMM4z9re2HFM0RGolxLHXfl8cbyeUq1NFfr3Cb3Mt4hJ/hdee
	UYNmBT0Rp0ikhvbxEZXFHjh6zyV8uJF2R9bR5v2Z/pxbFDm5ciU+4rGnqwmgE0uG70HQ6cS6BmUKI
	sL+IyF0WChO/7Ec0meYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEy7W-0003GE-Ka; Mon, 30 Sep 2019 16:01:54 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEy7L-00036n-Hu
 for linux-mtd@lists.infradead.org; Mon, 30 Sep 2019 16:01:45 +0000
Received: by mail-io1-xd43.google.com with SMTP id b136so39683042iof.3
 for <linux-mtd@lists.infradead.org>; Mon, 30 Sep 2019 09:01:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dnfwRpOiVhzSq7yygW2M/1gINbsCP3ZQ5gkXsHGZxJs=;
 b=dYBdEglhUYpSy0INW+yK74hB3CdSy+r/QO8Zo9r5FIOSlVx1p2W+Xzcbjj06u6jgM4
 l8GveDHB9sLBByGbL90uMoHcBDAdFOG3H0RTCUy4hlgVQ3USKq9cHI0d9wCa+j51cy/s
 2ICMPIRjftJhwl1WP9iBQouFNZbem9sxdLJ/me/uXWaJwEop9aRvJLFgvCuxj5iEMsae
 XuOizUF4m5Xl1HXPOMhfG24z2WWYjR41c9PgE0DLduf6RzZN9cwFAJfXFh+8mpLj6xGw
 Jrrd2C43s7eWUYBhQ9z9VjXOLc4ECd14QvyVsw1xYMCkp7wMop9AT7p64Ebw/3QxYOQA
 dHCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dnfwRpOiVhzSq7yygW2M/1gINbsCP3ZQ5gkXsHGZxJs=;
 b=KRKxE7Ses2ubhz821frgqjYS3P9lRe0t1fKeOowN+MZzlptkGKhCM9PCLO8PbOVVAm
 dG0BgLrsQ3kF7QfZavzG0u8o4HpaVkibFYopWil3W6wY5uLKWcbwEI2y+a5HjU9POA+3
 +5mylxZHGrfMwIq/Jrww4zEIZJgQBTFXjnIV2wjt1lT5FmRAvrzIhciQ/0YfxDT4f7cR
 gLq5SvhopSqyLZZ6pXzfJkUse5Sf9X3OpEYIMkRugnNtQxLWrYZGyNfL5dWS1TjgIhRA
 H8umgLsgl6w32gkZMVsk/7pGFPoC87VF1Gr+ltkBq82EhcclYcdwR6wXCIJN0ETQGjMY
 XhQQ==
X-Gm-Message-State: APjAAAXCSDL3LwlXyzlVWvFL/qakjfvDw1A21r3HnKQGphZXHB92bKPo
 UXL0e3qSk/hyxpkfwoaZI/QsJDSRjhj1Fhryd9c=
X-Google-Smtp-Source: APXvYqwuKjWoiKoCRE1f+IJv84JJlBUHCHUW6vMe7XeC+PbLK/yWHxS4qE9tnUS+HMSXMd+TZko0FwHTkgB0/utT36c=
X-Received: by 2002:a02:7797:: with SMTP id g145mr20081907jac.60.1569859301056; 
 Mon, 30 Sep 2019 09:01:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190906194719.15761-1-kdasu.kdev@gmail.com>
 <20190906194719.15761-2-kdasu.kdev@gmail.com>
In-Reply-To: <20190906194719.15761-2-kdasu.kdev@gmail.com>
From: Kamal Dasu <kdasu.kdev@gmail.com>
Date: Mon, 30 Sep 2019 12:01:28 -0400
Message-ID: <CAC=U0a1qvKO+t_62df_JcQBETAuNq0pwRkAb-Ofi3ski2rfdEQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] mtd: rawnand: use bounce buffer when vmalloced data
 buf detected
To: Kamal Dasu <kdasu.kdev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_090143_609272_AF694813 
X-CRM114-Status: GOOD (  17.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kdasu.kdev[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Boris Brezillon <bbrezillon@kernel.org>, Richard Weinberger <richard@nod.at>,
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

Does anyone have any comments on this patch ?.

Kamal

On Fri, Sep 6, 2019 at 3:49 PM Kamal Dasu <kdasu.kdev@gmail.com> wrote:
>
> For controller drivers that use DMA and set NAND_USE_BOUNCE_BUFFER
> option use data buffers that are not vmalloced, aligned and have
> valid virtual address to be able to do DMA transfers. This change
> adds additional check and makes use of data buffer allocated
> in nand_base driver when it is passed a vmalloced data buffer for
> DMA transfers.
>
> Signed-off-by: Kamal Dasu <kdasu.kdev@gmail.com>
> ---
>  drivers/mtd/nand/raw/nand_base.c | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
> index 91f046d4d452..46f6965a896a 100644
> --- a/drivers/mtd/nand/raw/nand_base.c
> +++ b/drivers/mtd/nand/raw/nand_base.c
> @@ -45,6 +45,12 @@
>
>  #include "internals.h"
>
> +static int nand_need_bounce_buf(const void *buf, struct nand_chip *chip)
> +{
> +       return !virt_addr_valid(buf) || is_vmalloc_addr(buf) ||
> +               !IS_ALIGNED((unsigned long)buf, chip->buf_align);
> +}
> +
>  /* Define default oob placement schemes for large and small page devices */
>  static int nand_ooblayout_ecc_sp(struct mtd_info *mtd, int section,
>                                  struct mtd_oob_region *oobregion)
> @@ -3183,9 +3189,7 @@ static int nand_do_read_ops(struct nand_chip *chip, loff_t from,
>                 if (!aligned)
>                         use_bufpoi = 1;
>                 else if (chip->options & NAND_USE_BOUNCE_BUFFER)
> -                       use_bufpoi = !virt_addr_valid(buf) ||
> -                                    !IS_ALIGNED((unsigned long)buf,
> -                                                chip->buf_align);
> +                       use_bufpoi = nand_need_bounce_buf(buf, chip);
>                 else
>                         use_bufpoi = 0;
>
> @@ -4009,9 +4013,7 @@ static int nand_do_write_ops(struct nand_chip *chip, loff_t to,
>                 if (part_pagewr)
>                         use_bufpoi = 1;
>                 else if (chip->options & NAND_USE_BOUNCE_BUFFER)
> -                       use_bufpoi = !virt_addr_valid(buf) ||
> -                                    !IS_ALIGNED((unsigned long)buf,
> -                                                chip->buf_align);
> +                       use_bufpoi = nand_need_bounce_buf(buf, chip);
>                 else
>                         use_bufpoi = 0;
>
> --
> 2.17.1
>

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
