Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A06DE2040D
	for <lists+linux-mtd@lfdr.de>; Thu, 16 May 2019 13:04:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BVgApEU1IGui0RW8bFLHuEVEyqH1vDKtKN70zSPiEQM=; b=rMtbbhdjkcxbeE
	HxldBzQVnn3lEnWW+IZ/084fgqzzgRhPxVDHHLxcDUZa9lZ6fWdqxT3X/e4nim6Owz4qo3TGvcfMX
	aLR/6UtWVuCabFjm+OqXMRhz18Ctie74MhKzZr31IqbXLnO3/CYI0SNcVfZthJnjv2CU+WRpKOFw7
	AjBq0eczL4mG3/1fK8rUpPxjR/u/CuNVThOoqZB7u4IqyB5q5/wg8wfMUjomGdHFW4Y4ELietXbc4
	TQMW/mLHll9nHA/WetwC23aY99G+twkwFKnG5y6yJHQZ7DsHaSEVrbkkVapF2hiXzi2Gf5b6DM6qU
	ZeB9CFo3b60/JHkC1L4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hREBu-0001z1-Rw; Thu, 16 May 2019 11:04:50 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hREBn-0001yg-Tb
 for linux-mtd@lists.infradead.org; Thu, 16 May 2019 11:04:45 +0000
Received: by mail-wm1-x341.google.com with SMTP id h11so2996972wmb.5
 for <linux-mtd@lists.infradead.org>; Thu, 16 May 2019 04:04:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gyI/jEopVDM3fprcogRRbW2HvdI8T3zLS+oXAZouBJo=;
 b=T+i9wvbxHQvslh/qCerb+bav/QL0VhPIyq/vIT9aDW0p5If4d2LXTCGCym+7Mc7DGG
 LrmX7yVr5tH+Wd3JJir0se1XoIoEsp67gN9d7QlSk0de+wp/NYiBmmZb7xD0CO1UY+kT
 zIhD7KCaOr83kas+WFgNi0L5Slsk4mUoHJ83eo/aAvjtL7umyHA9nOwL/u7STyYVZLP7
 AJ1klHcva5cWOyU3j6fgc+kuTd/NYEIAGmWhrNIqwDAKUt8M1TaRsrt9C33TK03CRdnj
 CwFaLl8q8QxB2jlKZQ5ZDmFb7IOVUrgyYoKjHYVgSf+V1EfOxWeUUXeh1zJFMzQiKwy1
 DYCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gyI/jEopVDM3fprcogRRbW2HvdI8T3zLS+oXAZouBJo=;
 b=kEApSTHWTG6EwuH2OjP5E720xslWS8tgcAKSpBG3zU8TPyUzOfns830Y3WmnGf8UGk
 olPtnaA+BJ3XFc1AdJIwfkh/cgAvaYSXIOuzzyU9RhChUm32o798DQNUDoQfmGDVyAM2
 LnoV9gjNKRF+RbOahItbuj5UhJX+5QbqWQr3u4pZEDCo0P/fmuEAj386nuKHAqtUklOU
 7aPZ+urTQmCiYevX6r5147LeIDkirIzCKyizQv6XZUiY5H4ynbj7QZkderpPFq9N5KGy
 AwFfaH8DF16YIjXrAyNRmNMsnDUaB0z3dmBqlp8q+J+3/pgfngqEaJknnK7p5facLJnq
 7EkQ==
X-Gm-Message-State: APjAAAWtzn81D19evG6dy6FpS49SrMKRL1aBu9WO61jRyFiFJREsorqN
 WHjc8/DSCxjyEIGTvJD9TQvAD00n8bvbLO6A8HI=
X-Google-Smtp-Source: APXvYqyXZaSlzGWKD6qMP2YfVYRx0jX++CUdeG/kZMBh3xuCf6fHKEAM+8Siua3wWoxuTmt1PQVL2qgKmJIsJEFt9ac=
X-Received: by 2002:a1c:1d16:: with SMTP id d22mr9223464wmd.110.1558004682387; 
 Thu, 16 May 2019 04:04:42 -0700 (PDT)
MIME-Version: 1.0
References: <1556914418-40288-1-git-send-email-clayton.shotwell@rockwellcollins.com>
 <1556914418-40288-2-git-send-email-clayton.shotwell@rockwellcollins.com>
 <CAFLxGvxgQb1iCTdHbFWz6VmMU1mjnGOadkHtLvA68Jaa0BS=bg@mail.gmail.com>
In-Reply-To: <CAFLxGvxgQb1iCTdHbFWz6VmMU1mjnGOadkHtLvA68Jaa0BS=bg@mail.gmail.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Thu, 16 May 2019 13:04:30 +0200
Message-ID: <CAFLxGvxoO7mMdH5dMKgqzz49qq-M49jSPi5SpmnA1RScgBmj5w@mail.gmail.com>
Subject: Re: [PATCH 2/2] jffs2: Add sync to underlying mtd device when file
 system is synced
To: Clayton Shotwell <clayton.shotwell@rockwellcollins.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_040443_979740_459458A1 
X-CRM114-Status: GOOD (  16.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Boris Brezillon <bbrezillon@kernel.org>,
 Richard Weinberger <richard@nod.at>,
 Brandon Maier <brandon.maier@rockwellcollins.com>,
 Marek Vasut <marek.vasut@gmail.com>, linux-mtd@lists.infradead.org,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, May 6, 2019 at 12:22 AM Richard Weinberger
<richard.weinberger@gmail.com> wrote:
>
> On Fri, May 3, 2019 at 10:14 PM Clayton Shotwell
> <clayton.shotwell@rockwellcollins.com> wrote:
> >
> > Need to ensure the underlying flash does not cache anything even though
> > the file system thinks it's synced back.
> >
> > Signed-off-by: Clayton Shotwell <clayton.shotwell@rockwellcollins.com>
> > ---
> >  fs/jffs2/super.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/fs/jffs2/super.c b/fs/jffs2/super.c
> > index 05d892c..4341565 100644
> > --- a/fs/jffs2/super.c
> > +++ b/fs/jffs2/super.c
> > @@ -111,6 +111,7 @@ static int jffs2_sync_fs(struct super_block *sb, int wait)
> >         mutex_lock(&c->alloc_sem);
> >         jffs2_flush_wbuf_pad(c);
> >         mutex_unlock(&c->alloc_sem);
> > +       mtd_sync(c->mtd);
>
> This needs a more detailed explanation.
> mtd_sync() is not cheap, so you make syncfs() more expensive.
>
> Please explain what failure you are facing without mtd_sync().
> jffs2 is supposed to recover from a power failure at any time, just like ubifs.

Ping?

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
