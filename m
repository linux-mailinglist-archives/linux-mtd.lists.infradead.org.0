Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B54841D6D82
	for <lists+linux-mtd@lfdr.de>; Sun, 17 May 2020 23:40:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5zjBM5XvdVX10xNDucFKM8ek7PdWotq5n80aCu+SDo4=; b=aDDwjj6jR//DaC
	cPCLOX1CirJ3BmEuGXiMkUXpDiSVpWrZIn0uqnYe6+T22VXcbLrS3qfwBI5iTYdltgyrxWcrUmNDd
	Fs7oGuYze6MHYJGjdeYS9rQwaVdqL1bp5pJ35vEwLehYRYZBEIjkVSWwVudw9iNCc5yRh+2OUxdWZ
	A4H4IydNqZ+jRensyb5XUWaQpO+Gz1n8G21u9vyPzyTg4nRvWa1ffjKq/4zO8eHdQ1p/HRVz3MTHI
	Mh8VaXZ+9Or54TIlcDLPGXzw6ecU+VCU9T/qI02tIbvSN+/zRacsyh5DRZzJybv7mZLJi94j7AuqI
	3akHctHebjXu5lTfBOJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaR0z-0005O9-A1; Sun, 17 May 2020 21:40:09 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaR0h-0005NS-Hi
 for linux-mtd@lists.infradead.org; Sun, 17 May 2020 21:39:52 +0000
Received: by mail-qt1-x841.google.com with SMTP id x12so6574426qts.9
 for <linux-mtd@lists.infradead.org>; Sun, 17 May 2020 14:39:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VXQSpo5cOSVhswku2XbziWLym4GqZt6GcybWhlW7HkQ=;
 b=IRCvmfBkpaRfxNOUPPCR/hBNAViX/cvtUaNm27KNkJ/l9DmhNzD66nZJb12UbMAAHS
 DhpX1THLXZ9brLgO6YCFm4ymQikeG2HM8O4UmjmjevM3DSxP88f/sokRBfCoeLrYqQqw
 fWVWdVcxjnNRaFLLyNa3WqQk0pKKcVqGqxowFVsQsvSI4Ty1+NNhTXk5KrKcpp3XB7wL
 wklWF49OvbBYbBJ6+TN9Kx6E3MLPeAFsXcP/IYFQY80lXXGmdAyRoT0sVbfzgj5rObqi
 bQM4hJooDpbHZ8lLbKMB3tQMPvkZGXUKcqCRiqMHSXezddtFBdQhHtZQqMmVvvKI8oPP
 invQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VXQSpo5cOSVhswku2XbziWLym4GqZt6GcybWhlW7HkQ=;
 b=PXzYmUChnilh1ZSawKsWOTt3B63SScPXnJQDUFP6wfT8zFNuLGUxzB4/xlnXAGL2c3
 abD80/3RvImoIaGbKwtZLLVRbDAKkW6sjmcKJMu8poTKzozMrp2BkGP6SVbGglKKex4H
 CcuID8rlMarQAezME0+X7OU5P49zTWDntqdwr0+6gFK7lXPtOGOTqwjD2U6C+JUxx+NQ
 bv0Wspr0Sj2sK8SCIMZrkTQqY4ky+xtr6Yvjgu7YqVKTWlMk7E/8EtVT+TiXWMt33aMz
 8vcatmt/AI6RmPNgzXDFYlJLoE+4wxrK1+E0K5sPYxhLL6r3DUJyuT18tD9AonWHLOBQ
 cPzQ==
X-Gm-Message-State: AOAM530eDYg3uUuIxj/dPS0XV4OuMhlqElOToGglFb5VVWQsvl1U6Ws0
 DI3ltBn6XG8iUmuSFSZFXgCS8fLXOWkgTWRt+n8=
X-Google-Smtp-Source: ABdhPJyu1/pp1+dd5u1Mh4CvToq01YPVEZoUBmwc4NcKE5KzMsrD9d2oBzS123FiHqkqb7CUyPMK6xR0zLlyHFn0U4A=
X-Received: by 2002:ac8:fb5:: with SMTP id b50mr13533689qtk.164.1589751590455; 
 Sun, 17 May 2020 14:39:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200502124802.9758-1-richard@nod.at>
In-Reply-To: <20200502124802.9758-1-richard@nod.at>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Sun, 17 May 2020 23:39:39 +0200
Message-ID: <CAFLxGvw9Tc9dr+=Dyuut9gXeLfUg2aUROGdZ4-g5=_OtS_hnLA@mail.gmail.com>
Subject: Re: [PATCH] ubi: Fix seq_file usage in detailed_erase_block_info
 debugfs file
To: Richard Weinberger <richard@nod.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_143951_589084_968371F6 
X-CRM114-Status: GOOD (  17.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richard.weinberger[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: ben.shelton@ni.com, linux-mtd@lists.infradead.org,
 LKML <linux-kernel@vger.kernel.org>, zach.brown@ni.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Sat, May 2, 2020 at 2:48 PM Richard Weinberger <richard@nod.at> wrote:
>
> 3bfa7e141b0b ("fs/seq_file.c: seq_read(): add info message about buggy .next functions")
> showed that we don't use seq_file correctly.
> So make sure that our ->next function always updates the position.
>
> Fixes: 7bccd12d27b7 ("ubi: Add debugfs file for tracking PEB state")
> Signed-off-by: Richard Weinberger <richard@nod.at>
> ---
>  drivers/mtd/ubi/debug.c | 12 ++----------
>  1 file changed, 2 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/mtd/ubi/debug.c b/drivers/mtd/ubi/debug.c
> index 54646c2c2744..ac2bdba8bb1a 100644
> --- a/drivers/mtd/ubi/debug.c
> +++ b/drivers/mtd/ubi/debug.c
> @@ -393,9 +393,6 @@ static void *eraseblk_count_seq_start(struct seq_file *s, loff_t *pos)
>  {
>         struct ubi_device *ubi = s->private;
>
> -       if (*pos == 0)
> -               return SEQ_START_TOKEN;
> -
>         if (*pos < ubi->peb_count)
>                 return pos;
>
> @@ -409,8 +406,6 @@ static void *eraseblk_count_seq_next(struct seq_file *s, void *v, loff_t *pos)
>  {
>         struct ubi_device *ubi = s->private;
>
> -       if (v == SEQ_START_TOKEN)
> -               return pos;
>         (*pos)++;
>
>         if (*pos < ubi->peb_count)
> @@ -432,11 +427,8 @@ static int eraseblk_count_seq_show(struct seq_file *s, void *iter)
>         int err;
>
>         /* If this is the start, print a header */
> -       if (iter == SEQ_START_TOKEN) {
> -               seq_puts(s,
> -                        "physical_block_number\terase_count\tblock_status\tread_status\n");
> -               return 0;
> -       }
> +       if (*block_number == 0)
> +               seq_puts(s, "physical_block_number\terase_count\n");
>
>         err = ubi_io_is_bad(ubi, *block_number);
>         if (err)
> --

Applied!

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
