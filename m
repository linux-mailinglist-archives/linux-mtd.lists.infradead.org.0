Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F50270D6
	for <lists+linux-mtd@lfdr.de>; Wed, 22 May 2019 22:30:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JPKKqGwZxg9Z1WwnQeIcuKj0zulbyFLuBWTXPLS7tUo=; b=NHeOZhLwOQ3FG5
	icSvcnYBeT4fYxtZhqCvS5ErhJHQMFBsj3In9a0JhJ/j6n6qCsVSbatFBk88AeI7nMijXjhflnNTX
	Eyk5W7SgXfuBkunmzqZ0d4iP6ppYsqlgsXGDYUci1EgXqe9ZYnWXuKMYtpFRENA5bM73SS34+K1gJ
	AtoDbPdI2CjCRhN8aSzNUbrALWLINvLD24/hGJvhcuaelSKfTlfqTJ4wpmv+/HklU0Uq5ujluAhtt
	Jq4pG0fTqaOggdzRaZ7ix3BZ1naCJEY0meqnJ5wLUDn3lvJ6iV0tpTs138S5f7OLXlG+iKV6CEIZo
	yrdCF/ubBUIL8/1vlhJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTXsb-00064Y-Nk; Wed, 22 May 2019 20:30:29 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTXsT-00063h-9n
 for linux-mtd@lists.infradead.org; Wed, 22 May 2019 20:30:23 +0000
Received: by mail-wm1-x343.google.com with SMTP id 198so3519210wme.3
 for <linux-mtd@lists.infradead.org>; Wed, 22 May 2019 13:30:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sC3y19sKHEp/s8yyLY2YBtsOBxNiD5rQEEH0tqDB6yI=;
 b=G2c9pLon27AIci+0l2Y7s2L5FjbKg/u155sKOM/AN4igPsIl9bFZu3YqzEmBLe2VSN
 jHsDIKHucWAF/zth90hQq32UkNdkYA7ed9UEGoIrR/CIcXp+iFZnHkHPV4UM5Volvnqi
 46Nze78L1H+qEAfI+Dz/5o87tLIHVm0zg2YAsHIBczNqDfBq4T3yL41T4+7uiVUdGlbY
 IUFK1J0gdszsfaTDCNd/5oPee21k+bEgfJuEpcZPpFXWXgAMm3UU+F8PjFw54wbtIHIn
 rSmEnD+X8P8LJqpgCA8pDtcUh9qnbJiqDAPYWk5HcW9ypjDRLDybNDJY925eksQ5myGF
 UoTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sC3y19sKHEp/s8yyLY2YBtsOBxNiD5rQEEH0tqDB6yI=;
 b=XVxdboymFE8TrEGEWI7eeDmNUjtvgU2Jwugr3UDRFNSsnIBe9hTCj/DGyg2Nl503Xb
 LvmjOTep/K4bxuW41Gs6GuSeBiROo7PMfy+rvXrzoqtaaR3AqP4MQLqEJ+pxnDOK2pwQ
 KAI17VKbyx2YZQurj08Mh7Z9r9AHu61izj+zZ9MekE9pM2P+8bX8OcjhsmYAIAT7dpvD
 sLQ41mMaOY75y9EzQYBW6Es3W3wRC1rTp1GoJIO2Ga7H4qoYSxHAZ+2v0CFxvKnD6RQX
 HvI8hS72rOiIskLqUiUpWjoNiiRFTVvPTGMlzyfwSCEXgY4Z5sxT46D0ugzAGy3LX+3B
 xW7A==
X-Gm-Message-State: APjAAAVKVKPwF5xkt6TyFkpoRFpF8ty+UDv3+hQnwKjbRuNyALc1d7x7
 9obt1/MxLYMlokKMAGnEuc9nI8pJKEPw5JHk3Co=
X-Google-Smtp-Source: APXvYqzCDttVuV3S2Hs69NFBc6cY/CTgyKkTj/VXvMkOP87zNSUd8S3GBhOIbmhzikh84BFtb4/QMkOM++lNettVBII=
X-Received: by 2002:a1c:4087:: with SMTP id n129mr9133575wma.14.1558557019332; 
 Wed, 22 May 2019 13:30:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190522000753.13300-1-chris.packham@alliedtelesis.co.nz>
In-Reply-To: <20190522000753.13300-1-chris.packham@alliedtelesis.co.nz>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Wed, 22 May 2019 22:30:08 +0200
Message-ID: <CAFLxGvzvAdhmNOaNmPCRXUR9GGgaQ1n2HuRLLCb4Nj-tUrm5yQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] mtd: concat: refactor concat_lock/concat_unlock
To: Chris Packham <chris.packham@alliedtelesis.co.nz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_133021_345443_40F251D5 
X-CRM114-Status: GOOD (  20.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 LKML <linux-kernel@vger.kernel.org>, Marek Vasut <marek.vasut@gmail.com>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, May 22, 2019 at 2:08 AM Chris Packham
<chris.packham@alliedtelesis.co.nz> wrote:
>
> concat_lock() and concat_unlock() only differed in terms of the mtd_xx
> operation they called. Refactor them to use a common helper function and
> pass mtd_lock or mtd_unlock as an argument.
>
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> ---
>  drivers/mtd/mtdconcat.c | 41 +++++++++--------------------------------
>  1 file changed, 9 insertions(+), 32 deletions(-)
>
> diff --git a/drivers/mtd/mtdconcat.c b/drivers/mtd/mtdconcat.c
> index cbc5925e6440..9514cd2db63c 100644
> --- a/drivers/mtd/mtdconcat.c
> +++ b/drivers/mtd/mtdconcat.c
> @@ -451,7 +451,8 @@ static int concat_erase(struct mtd_info *mtd, struct erase_info *instr)
>         return err;
>  }
>
> -static int concat_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
> +static int __concat_xxlock(struct mtd_info *mtd, loff_t ofs, uint64_t len,
> +                          int (*mtd_op)(struct mtd_info *mtd, loff_t ofs, uint64_t len))
>  {
>         struct mtd_concat *concat = CONCAT(mtd);
>         int i, err = -EINVAL;
> @@ -470,7 +471,7 @@ static int concat_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
>                 else
>                         size = len;
>
> -               err = mtd_lock(subdev, ofs, size);
> +               err = mtd_op(subdev, ofs, size);
>                 if (err)
>                         break;
>
> @@ -485,38 +486,14 @@ static int concat_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
>         return err;
>  }
>
> -static int concat_unlock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
> +static int concat_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
>  {
> -       struct mtd_concat *concat = CONCAT(mtd);
> -       int i, err = 0;
> -
> -       for (i = 0; i < concat->num_subdev; i++) {
> -               struct mtd_info *subdev = concat->subdev[i];
> -               uint64_t size;
> -
> -               if (ofs >= subdev->size) {
> -                       size = 0;
> -                       ofs -= subdev->size;
> -                       continue;
> -               }
> -               if (ofs + len > subdev->size)
> -                       size = subdev->size - ofs;
> -               else
> -                       size = len;
> -
> -               err = mtd_unlock(subdev, ofs, size);
> -               if (err)
> -                       break;
> -
> -               len -= size;
> -               if (len == 0)
> -                       break;
> -
> -               err = -EINVAL;
> -               ofs = 0;
> -       }
> +       return __concat_xxlock(mtd, ofs, len, mtd_lock);
> +}
>
> -       return err;
> +static int concat_unlock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
> +{
> +       return __concat_xxlock(mtd, ofs, len, mtd_unlock);
>  }
>
>  static void concat_sync(struct mtd_info *mtd)

Not sure if it passing a function pointer is worth it. bool is_lock would
also do it. But this is a matter of taste, I guess. :)

Reviewed-by: Richard Weinberger <richard@nod.at>

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
