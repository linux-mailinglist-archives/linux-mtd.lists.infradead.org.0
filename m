Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF17911783D
	for <lists+linux-mtd@lfdr.de>; Mon,  9 Dec 2019 22:18:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k2FOdl8XhJYdMB3QxJO+SGjMcaPHBiF8cJ3Sy737QNA=; b=YSV4B0Q7GGdmXt
	U2jmS1fpJG6Z64b+07dZLB9OzIuq+6GoWGvy+zZo9qIyy2KNLSgT0lRV2xyVbTLLgpeRGYALUhdNn
	CqgPfGieq5tm7N56CROI0Dk9d0MIoevMUAyxROKdYvhouLLSmp9g9WBsEFTapXrhf+F0z/Y0ntyTY
	hk8v8hvFVGkxg4pTLJDtgLGqAyMys07h/KCQmDa3fenVW+CsKtt0gkyvL1S2CEDcMSUiJveM0DCif
	BzLRAyeS4Xd/20My1RsSDCdKDWTPpD9wnCybTZ6m6GjedDpRLb5afc3JdnNbuUbGLWd6JYvejfmaQ
	Ib4aUBQBoWU+KCav5F+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieQQd-0003ta-2y; Mon, 09 Dec 2019 21:18:51 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieQQT-0003sr-To
 for linux-mtd@lists.infradead.org; Mon, 09 Dec 2019 21:18:43 +0000
Received: by mail-pf1-x442.google.com with SMTP id y14so7845945pfm.13
 for <linux-mtd@lists.infradead.org>; Mon, 09 Dec 2019 13:18:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8sHrzINyOkYNGQIQ9XXaLWKRmil7He9/vhOTZUxiLLw=;
 b=uW7KM0kdul8udjx+VGXxVZkx3nIsZrbTLdHzXY6E6egwpRT1L3B8lKi8xx53yKTK5g
 c+s2jBB0b1IEkjhSwxqkUsz+gLchSAkiJyaBJXocl29G5xa1l+cK59XREHl4pxIXP9ZH
 PVF2TUcOJl0o4+42k4numsNxHmTiYIsoRguDOzbNI/yxZCQCC3qU2oDA3h2S1kjGoDNG
 ymJFefPu0zTuNc7eSegY4sWWQAEPFtKJat+jilFe2eTBqPsD2uEN/qKFFIGqn1K6K9Mm
 FuKgtcfk9+yFAzlJV+SguKDnWBov3wK1LWXoHGTbvNqyMCwKjMHMhuocdS+fCTBCi2AP
 qlcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8sHrzINyOkYNGQIQ9XXaLWKRmil7He9/vhOTZUxiLLw=;
 b=lfgz9APB4cMcjyiC66Lm8piMpBOvVWkF1nbXCBRCzz3tydbiGYjLDmiYBKBAHGAkox
 ukvNcLfIW521RTUoxuT5sqEUVoOO2GgSEweS/1/VKK1vU90h2bdkgFMEV9j1zTfcUuLf
 9h/ISz4pMNX+TTD0F05CPWLUJDE7kgHhWytx7156xrKAICFjvnhWlWjwxn4YQ3QlmmmF
 wXxMKqHiIGALuEpNg7xkyn5jiN1SPstMVdLGuGW7YgCSpOYJAtqbPdnYa+PceV9uoKRH
 9q9tWk0/4r7mbnmP+OY0/yNH5uYFv1nMUv3tuf0Ka5m3Bv7IA/SERuFBmUolPIBo/Nqp
 Q7hg==
X-Gm-Message-State: APjAAAVO7UJJuktq7LvMM4gxtFfCLPt9a+6ZdK9/gY/7A8zArS8W2P4i
 OvT+v9D2yBAI4ZRyGfkILIZ5AfbNm59iS+bzBv0GWw==
X-Google-Smtp-Source: APXvYqxsdIDMfz7N8k5QAyut9TYtchslk0l1X3EQIaFJPMPBYjWBQrkZ0ibJBDa/mh0YI1EgXFRT3s5C4jgAa2w+vuk=
X-Received: by 2002:aa7:9151:: with SMTP id 17mr31823690pfi.3.1575926320653;
 Mon, 09 Dec 2019 13:18:40 -0800 (PST)
MIME-Version: 1.0
References: <20191209205010.4115-1-natechancellor@gmail.com>
 <20191209210328.18866-1-natechancellor@gmail.com>
In-Reply-To: <20191209210328.18866-1-natechancellor@gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 9 Dec 2019 13:18:29 -0800
Message-ID: <CAKwvOd=GYWaoxQg_xH-gOHfqKeTZ_qaw35ucjFxcjd69AK+pyw@mail.gmail.com>
Subject: Re: [PATCH v2] mtd: onenand_base: Adjust indentation in
 onenand_read_ops_nolock
To: Nathan Chancellor <natechancellor@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_131841_983071_ACB03EF9 
X-CRM114-Status: GOOD (  26.75  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, Dec 9, 2019 at 1:04 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang warns:
>
> ../drivers/mtd/nand/onenand/onenand_base.c:1269:3: warning: misleading
> indentation; statement is not part of the previous 'if'
> [-Wmisleading-indentation]
>         while (!ret) {
>         ^
> ../drivers/mtd/nand/onenand/onenand_base.c:1266:2: note: previous
> statement is here
>         if (column + thislen > writesize)
>         ^
> 1 warning generated.
>
> This warning occurs because there is a space before the tab of the while
> loop. There are spaces at the beginning of a lot of the lines in this
> block, remove them so that the indentation is consistent with the Linux
> kernel coding style and clang no longer warns.
>
> Fixes: a8de85d55700 ("[MTD] OneNAND: Implement read-while-load")
> Link: https://github.com/ClangBuiltLinux/linux/issues/794
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>
> v1 -> v2:
>
> * Clean up the block before the one that warns, which was added as part
>   of the fixes commit (Nick).
>
>  drivers/mtd/nand/onenand/onenand_base.c | 80 ++++++++++++-------------
>  1 file changed, 40 insertions(+), 40 deletions(-)
>
> diff --git a/drivers/mtd/nand/onenand/onenand_base.c b/drivers/mtd/nand/onenand/onenand_base.c
> index 77bd32a683e1..13c69eb021a6 100644
> --- a/drivers/mtd/nand/onenand/onenand_base.c
> +++ b/drivers/mtd/nand/onenand/onenand_base.c
> @@ -1248,44 +1248,44 @@ static int onenand_read_ops_nolock(struct mtd_info *mtd, loff_t from,
>
>         stats = mtd->ecc_stats;
>
> -       /* Read-while-load method */
> +       /* Read-while-load method */
>
> -       /* Do first load to bufferRAM */
> -       if (read < len) {
> -               if (!onenand_check_bufferram(mtd, from)) {
> +       /* Do first load to bufferRAM */
> +       if (read < len) {
> +               if (!onenand_check_bufferram(mtd, from)) {
>                         this->command(mtd, ONENAND_CMD_READ, from, writesize);
> -                       ret = this->wait(mtd, FL_READING);
> -                       onenand_update_bufferram(mtd, from, !ret);
> +                       ret = this->wait(mtd, FL_READING);
> +                       onenand_update_bufferram(mtd, from, !ret);
>                         if (mtd_is_eccerr(ret))
>                                 ret = 0;
> -               }
> -       }
> +               }
> +       }
>
>         thislen = min_t(int, writesize, len - read);
>         column = from & (writesize - 1);
>         if (column + thislen > writesize)
>                 thislen = writesize - column;
>
> -       while (!ret) {
> -               /* If there is more to load then start next load */
> -               from += thislen;
> -               if (read + thislen < len) {
> +       while (!ret) {
> +               /* If there is more to load then start next load */
> +               from += thislen;
> +               if (read + thislen < len) {
>                         this->command(mtd, ONENAND_CMD_READ, from, writesize);
> -                       /*
> -                        * Chip boundary handling in DDP
> -                        * Now we issued chip 1 read and pointed chip 1
> +                       /*
> +                        * Chip boundary handling in DDP
> +                        * Now we issued chip 1 read and pointed chip 1
>                          * bufferram so we have to point chip 0 bufferram.
> -                        */
> -                       if (ONENAND_IS_DDP(this) &&
> -                           unlikely(from == (this->chipsize >> 1))) {
> -                               this->write_word(ONENAND_DDP_CHIP0, this->base + ONENAND_REG_START_ADDRESS2);
> -                               boundary = 1;
> -                       } else
> -                               boundary = 0;
> -                       ONENAND_SET_PREV_BUFFERRAM(this);
> -               }
> -               /* While load is going, read from last bufferRAM */
> -               this->read_bufferram(mtd, ONENAND_DATARAM, buf, column, thislen);
> +                        */
> +                       if (ONENAND_IS_DDP(this) &&
> +                           unlikely(from == (this->chipsize >> 1))) {
> +                               this->write_word(ONENAND_DDP_CHIP0, this->base + ONENAND_REG_START_ADDRESS2);
> +                               boundary = 1;
> +                       } else
> +                               boundary = 0;
> +                       ONENAND_SET_PREV_BUFFERRAM(this);
> +               }
> +               /* While load is going, read from last bufferRAM */
> +               this->read_bufferram(mtd, ONENAND_DATARAM, buf, column, thislen);
>
>                 /* Read oob area if needed */
>                 if (oobbuf) {
> @@ -1302,23 +1302,23 @@ static int onenand_read_ops_nolock(struct mtd_info *mtd, loff_t from,
>                 }
>
>                 /* See if we are done */

With this applied, I see a missed instance right here ^ (L1304).
In vim:


^ \t

In my .vimrc, I set:
https://github.com/nickdesaulniers/dotfiles/blob/37359525f5a403b4ed2d3f9d1bbbee2da8ec8115/.vimrc#L35-L41
to make tabs glaringly visible.

> -               read += thislen;
> -               if (read == len)
> -                       break;
> -               /* Set up for next read from bufferRAM */
> -               if (unlikely(boundary))
> -                       this->write_word(ONENAND_DDP_CHIP1, this->base + ONENAND_REG_START_ADDRESS2);
> -               ONENAND_SET_NEXT_BUFFERRAM(this);
> -               buf += thislen;
> +               read += thislen;
> +               if (read == len)
> +                       break;
> +               /* Set up for next read from bufferRAM */
> +               if (unlikely(boundary))
> +                       this->write_word(ONENAND_DDP_CHIP1, this->base + ONENAND_REG_START_ADDRESS2);
> +               ONENAND_SET_NEXT_BUFFERRAM(this);
> +               buf += thislen;
>                 thislen = min_t(int, writesize, len - read);
> -               column = 0;
> -               cond_resched();
> -               /* Now wait for load */
> -               ret = this->wait(mtd, FL_READING);
> -               onenand_update_bufferram(mtd, from, !ret);
> +               column = 0;
> +               cond_resched();
> +               /* Now wait for load */
> +               ret = this->wait(mtd, FL_READING);
> +               onenand_update_bufferram(mtd, from, !ret);
>                 if (mtd_is_eccerr(ret))
>                         ret = 0;
> -       }
> +       }
>
>         /*
>          * Return success, if no ECC failures, else -EBADMSG
> --
> 2.24.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191209210328.18866-1-natechancellor%40gmail.com.



-- 
Thanks,
~Nick Desaulniers

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
