Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57910494F8
	for <lists+linux-mtd@lfdr.de>; Tue, 18 Jun 2019 00:15:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=37K1vY5mKYD7SPH84JTOsZKX1LpnFZ5/ogtn0Le2AYs=; b=PKkzSYuZrmxUgm
	ZwDavljUsguv80Ih+GEAWCsjSaZRzB0LGj/juI04J2MQFzsitDsx5zQBb6BmuZ9efTH3w7wMshk9l
	gHlqZ/IQkgSG9YlVXGIazUqq9Q1aIaoZwQtGa1u3G8SXCA2hU8hXldQAe7fXaFDevPuaLneFjJyIb
	c6gyhLQFt0/9wCwepF1da8hC2xVLkNg3W/KP2Wvbg911CvxWeQftBAsWLVSOrHCYxlGH5WSgFnD0S
	V/Gu8X7ttKZ7jOjhv/Yk3vEuIhVdB62p6Su9EWvtwWLOMmAKCqoMbDacLgsZuZm/rFlzscRsxy0Pw
	9xuq5hjoGfxUznIPo/ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hczuc-0005LX-Gi; Mon, 17 Jun 2019 22:15:38 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hczuR-0005Ko-Cu
 for linux-mtd@lists.infradead.org; Mon, 17 Jun 2019 22:15:28 +0000
Received: by mail-wr1-x441.google.com with SMTP id p13so11665243wru.10
 for <linux-mtd@lists.infradead.org>; Mon, 17 Jun 2019 15:15:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aOxrv4Z+duhzHk+Vvgki6wKRY9I+T3teV7bGXJE2hg4=;
 b=aY49b7WkuTfBi9s+q3YkqPFoksMYySMOhjBU6L7c9cc3C7zQp4p2+UV4mY95F/0+JH
 tL2UKDIzzhClKL9WqK/0Xcgf5BKsw0fpZTFv4wGWckmU7Bj/9XiimGYc94tZJV6KoFnl
 beS12Vz7LfpA7sRaj1tu2a0eGRfqM+Vka0dXZ83xvafIRlOdvEhQIXWECXaxI/fR6zaA
 hwTrx3seR9v6J6808XBpeexTzC0DeRJO3yWEKo945ztZeW0s/8p43ED0XsQdd7h3kqk5
 acZlzLfwvorsKhYzrGPaUSAchILthJH/N4thVd/F5xGt6QCD91vonSWuuI5keLuP7Dab
 6okw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aOxrv4Z+duhzHk+Vvgki6wKRY9I+T3teV7bGXJE2hg4=;
 b=LDFVmNglFMZqdAFZNmPurySNbpEH0mrKkrcd8n9AZgl5g0uGDIUbwvIqg9SlbdP7xW
 Yfj7GOJih8cBIwKtZcUioTEEwxoVt8AYEUNSfvFV9Mt8abK56/Fii+6mqqWQsH4KW/6F
 ZeXgXw6QXYnZihPJaOZBKgusoNQcT7/AxRYNnp43aoeHgvBtPThMKI9lYhgQhMDlzD2y
 B6yJEtG5UZDFrr3UcOdmKhZlo8CQzHQBVmQcrvKOVqm1GWS3dBwcKnQCG2XnIr74kYJA
 AfmbvxRzqN15ebcIvS4hsuV2wYPbmmIH0+5UQVDijiIVChkwsiZoMiGqPDRojRd0UsMU
 bxJQ==
X-Gm-Message-State: APjAAAXWgV+uoO3wevtlFG9iCkbBCpLkcAfBwFjM9AfgFQC1p4vXnHy4
 g9yS5B9R6mFU6BK5q46eaAU5cn0cgjNFpJfizTc=
X-Google-Smtp-Source: APXvYqzIRENvbCsYIcq6eR/PMaPMcy9DkvAWKBfar8wlTlCUFzrbGjxFQHJKL/sWdXUH34woXRKOQ0zdzM7JxnWZL1U=
X-Received: by 2002:adf:ea8b:: with SMTP id s11mr33675436wrm.100.1560809726001; 
 Mon, 17 Jun 2019 15:15:26 -0700 (PDT)
MIME-Version: 1.0
References: <1558024913-26502-1-git-send-email-kdasu.kdev@gmail.com>
 <CAFLxGvwjqo27VQ092WV9=6N5RJr-M7aL0HYVWkeaCYbY3XWa1w@mail.gmail.com>
In-Reply-To: <CAFLxGvwjqo27VQ092WV9=6N5RJr-M7aL0HYVWkeaCYbY3XWa1w@mail.gmail.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Tue, 18 Jun 2019 00:15:14 +0200
Message-ID: <CAFLxGvyGFtacE3mgZ03zrOeF2S24KdtGj+Qy-3kmA2wbRhNJYQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] mtd: Add flag to indicate panic_write
To: Kamal Dasu <kdasu.kdev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_151527_466600_05A7F52E 
X-CRM114-Status: GOOD (  19.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 LKML <linux-kernel@vger.kernel.org>, Marek Vasut <marek.vasut@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, May 17, 2019 at 10:08 AM Richard Weinberger
<richard.weinberger@gmail.com> wrote:
>
> On Thu, May 16, 2019 at 6:42 PM Kamal Dasu <kdasu.kdev@gmail.com> wrote:
> >
> > Added a flag to indicate a panic_write so that low level drivers can
> > use it to take required action where applicable, to ensure oops data
> > gets written to assigned mtd device.
> >
> > Signed-off-by: Kamal Dasu <kdasu.kdev@gmail.com>
> > ---
> >  drivers/mtd/mtdcore.c   | 3 +++
> >  include/linux/mtd/mtd.h | 6 ++++++
> >  2 files changed, 9 insertions(+)
> >
> > diff --git a/drivers/mtd/mtdcore.c b/drivers/mtd/mtdcore.c
> > index 76b4264..a83decd 100644
> > --- a/drivers/mtd/mtdcore.c
> > +++ b/drivers/mtd/mtdcore.c
> > @@ -1138,6 +1138,9 @@ int mtd_panic_write(struct mtd_info *mtd, loff_t to, size_t len, size_t *retlen,
> >                 return -EROFS;
> >         if (!len)
> >                 return 0;
> > +       if (!mtd->oops_panic_write)
> > +               mtd->oops_panic_write = true;
> > +
>
> You can set the flag unconditionally.
> If it is set, it will stay so, and setting it again, won't hurt.
>
> >         return mtd->_panic_write(mtd, to, len, retlen, buf);
> >  }
> >  EXPORT_SYMBOL_GPL(mtd_panic_write);
> > diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
> > index 677768b..791c34d 100644
> > --- a/include/linux/mtd/mtd.h
> > +++ b/include/linux/mtd/mtd.h
> > @@ -330,6 +330,12 @@ struct mtd_info {
> >         int (*_get_device) (struct mtd_info *mtd);
> >         void (*_put_device) (struct mtd_info *mtd);
> >
> > +       /*
> > +        * flag indicates a panic write, low level drivers can take appropriate
> > +        * action if required to ensure writes go through
> > +        */
> > +       bool oops_panic_write;
> > +
>
> Maybe we find a better name for it.
> panic_write_triggered?

ping?
I'm happy with the overall approach.
So let's target the upcoming merge window.
Can you please sort my two comments out? :-)

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
