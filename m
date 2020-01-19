Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19FC2141FDA
	for <lists+linux-mtd@lfdr.de>; Sun, 19 Jan 2020 20:56:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d2d2gTGOgJngQbAZitGJvbhJljo3YQgddYjkRNVQ//s=; b=o8B9N6SbKJy1d+
	jP64GzmrC+fn3sPN+agKCoFYw4ftrpyy8bdTh9P1ZU2mA4jQ88BZe5/p7f5t5ZQm8KybG8/Pc7JlF
	0xDND8GPaHj9pdAU2ClM7iSD/Y7WAmeOm8WVhj4hjfFko0SMBkiPKyZtVPbNjZGX3wjdPPW+UNzG7
	cWjM05xqvvSsHDRSp3LgzcnAiPFZ/W6y1f0FUV3YezpPa4yfl/y7aOWO6W5QnWAzngP9giCc/fjgt
	paXIBtHeoHV2G8dF5eIZwNYePUzNAxTFddb1+iarK5/WTDyvi+fAT9bwnp8dBay9I5I6OXs2zm8WX
	hDgcpUleu2ZVuLddVr5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itGgH-0003i6-1O; Sun, 19 Jan 2020 19:56:21 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itGg7-0003hd-Jy
 for linux-mtd@lists.infradead.org; Sun, 19 Jan 2020 19:56:12 +0000
Received: by mail-wr1-x441.google.com with SMTP id c14so27416802wrn.7
 for <linux-mtd@lists.infradead.org>; Sun, 19 Jan 2020 11:56:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wmwixtRBH7x1qvixh2xabvwY3fvytTqVpBbuNJcwmJ0=;
 b=bvuMbOKEO3nbRC9M5cYF+fRXIC4yY8g06Y3o0I3E9mjWThtGx2A4fj4LQg1V999y26
 I77eW2xPSTHRlifu/x97Vx3s+IgFsYgnSFAzbYczV1+MUv3c5b9tWauO5lXz1kraoOb2
 HhIxkzs3207ehLEM1oEx7hYoFV9t/bbCKxsC/Vwh7KCZ4isqkTzWpzsSWYhBlvJwCUhP
 gCPdf+GCmZSVeNieEkMJGastdzSVa93OycGLuq4Ca4GKJUhfV9g0qPM53a9hdJYQaM0H
 Pr3rDoPbE8rt02MckSbn8K93+rB+61XjpOHO1XtskFpv5zHJL3tGe3irf3afC8dTJYso
 E1cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wmwixtRBH7x1qvixh2xabvwY3fvytTqVpBbuNJcwmJ0=;
 b=C3NVK4SWrxh3TQWlrpW77Ykdw9Cwd1dqiJZxsLVM5XIlOt5IdWtdEAMDEv1pb+Un40
 mqoCWDPT8xWuh2dboix/NBsW/hBvRY2PPqxxMydye99goeFGkb4/t3F99ulHG8QCl3oW
 krwBRJMwMCRS1ywpxnAgcsypM5ooPc8Ln98Ir48aH4jgkXSyyNLC+Uk35e9pxdPh2+u/
 mYW2GJrWRaYfzBSe933WlwvpTjx9VY41REY7VxZcChoGDkAiN6SN8oGJ9IMhWychEbZK
 6wqrwxB9r/v+J66Jfvrbu6VFFTSxp5NroEWt0eKqGq7pV8m8WkKlZ5o35lU2kSyKV7Ls
 NxdQ==
X-Gm-Message-State: APjAAAXaEIIaWEPmbo5SQsn5cdPq0b3qIB2QDBLAnl1CmQL4FvJTRkgc
 44NyVPF6aFDsHksfwZY72T/wyMwGapRUR0L7yGc=
X-Google-Smtp-Source: APXvYqxBRJrU03q7Wg1m2tT+QixEoJJJvHysL7DhFGQFbFw1O5cEDSK9kmdQoDt3YmBI8IpKQ51h9h8D1NrquEEo9PQ=
X-Received: by 2002:adf:ea42:: with SMTP id j2mr14072553wrn.270.1579463769965; 
 Sun, 19 Jan 2020 11:56:09 -0800 (PST)
MIME-Version: 1.0
References: <20191106091537.32480-1-s.hauer@pengutronix.de>
 <20191106091537.32480-4-s.hauer@pengutronix.de>
In-Reply-To: <20191106091537.32480-4-s.hauer@pengutronix.de>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Sun, 19 Jan 2020 20:55:59 +0100
Message-ID: <CAFLxGvxbcMF1S=Ghmi2rH4-ecEPRtVPAS7LrRq5eX=Q6S4PMHg@mail.gmail.com>
Subject: Re: [PATCH 3/7] ubifs: Add support for FS_IOC_FS[SG]ETXATTR ioctls
To: Sascha Hauer <s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_115611_682230_A085B368 
X-CRM114-Status: GOOD (  17.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richard.weinberger[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 kernel@pengutronix.de, Jan Kara <jack@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, Nov 6, 2019 at 10:16 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> The FS_IOC_FS[SG]ETXATTR ioctls are an alternative to FS_IOC_[GS]ETFLAGS
> with additional features. This patch adds support for these ioctls.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  fs/ubifs/ioctl.c | 103 ++++++++++++++++++++++++++++++++++++++++++++---
>  1 file changed, 98 insertions(+), 5 deletions(-)
>
> diff --git a/fs/ubifs/ioctl.c b/fs/ubifs/ioctl.c
> index 8230dba5fd74..533df56beab4 100644
> --- a/fs/ubifs/ioctl.c
> +++ b/fs/ubifs/ioctl.c
> @@ -95,9 +95,46 @@ static int ubifs2ioctl(int ubifs_flags)
>         return ioctl_flags;
>  }
>
> -static int setflags(struct file *file, int flags)
> +/* Transfer xflags flags to internal */
> +static inline unsigned long ubifs_xflags_to_iflags(__u32 xflags)

Why inline? gcc should be smart enough to inline the function automatically
if needed.

>  {
> -       int oldflags, err, release;
> +       unsigned long iflags = 0;
> +
> +       if (xflags & FS_XFLAG_SYNC)
> +               iflags |= UBIFS_APPEND_FL;

Shouldn't this be UBIFS_SYNC_FL?

> +       if (xflags & FS_XFLAG_IMMUTABLE)
> +               iflags |= UBIFS_IMMUTABLE_FL;
> +       if (xflags & FS_XFLAG_APPEND)
> +               iflags |= UBIFS_APPEND_FL;
> +
> +        return iflags;
> +}
> +
> +/* Transfer internal flags to xflags */
> +static inline __u32 ubifs_iflags_to_xflags(unsigned long flags)

Same.

> +{
> +       __u32 xflags = 0;
> +
> +       if (flags & UBIFS_APPEND_FL)
> +               xflags |= FS_XFLAG_SYNC;
> +       if (flags & UBIFS_IMMUTABLE_FL)
> +               xflags |= FS_XFLAG_IMMUTABLE;
> +       if (flags & UBIFS_APPEND_FL)
> +               xflags |= FS_XFLAG_APPEND;
> +
> +        return xflags;
> +}
> +
> +static void ubifs_fill_fsxattr(struct inode *inode, struct fsxattr *fa)
> +{
> +       struct ubifs_inode *ui = ubifs_inode(inode);
> +
> +       simple_fill_fsxattr(fa, ubifs_iflags_to_xflags(ui->flags));
> +}
> +
> +static int setflags(struct file *file, int flags, struct fsxattr *fa)
> +{
> +       int ubi_flags, oldflags, err, release;
>         struct inode *inode = file_inode(file);
>         struct ubifs_inode *ui = ubifs_inode(inode);
>         struct ubifs_info *c = inode->i_sb->s_fs_info;
> @@ -110,6 +147,11 @@ static int setflags(struct file *file, int flags)
>         if (!inode_owner_or_capable(inode))
>                 return -EACCES;
>
> +       if (fa)
> +               ubi_flags = ubifs_xflags_to_iflags(fa->fsx_xflags);
> +       else
> +               ubi_flags = ioctl2ubifs(flags);
> +

So having both flags and fa set is not allowed?
Can we please have an ubifs_assert() to catch this.

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
