Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3245927199
	for <lists+linux-mtd@lfdr.de>; Wed, 22 May 2019 23:27:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=161Oy2qYth7A0XhPKTxGO6A6SYe9Rxq8v07b6sQSk3Q=; b=PONlZbnE0BmfiD
	9vd653/D+cd6BSssAK0v+atxLaY6NwrJjzVnN4NTaM4zpVBtBveBkNFHtkiqxG+xzHHCcs7h9IYVf
	AF8PfT6ArSSQEH2hjG+HCDHGVZEB6FUAAZb5Xf86fDDBHImJCjFrRVnWdvzrO8c/lPVFJ2aPUqO0Y
	XE8HldAD7K1ph6mWkNBdpLktPn3rMFpQUEATukEdXVWyvXz5CZkUvu+FzksECaIruABYlHhPDH1t8
	IOTF3YDIAE3Rgvih//l2ZognUqz65nexCAovOuv8iLgJof7ENdeX/SCz8OIePRHgnnDQgXUoaDzFG
	y9Fo1afVqO5aCQZE78Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTYlV-0008K2-8Y; Wed, 22 May 2019 21:27:13 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTYlK-0008FF-H2
 for linux-mtd@lists.infradead.org; Wed, 22 May 2019 21:27:04 +0000
Received: by mail-wr1-x441.google.com with SMTP id d9so3910966wrx.0
 for <linux-mtd@lists.infradead.org>; Wed, 22 May 2019 14:27:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gPM/jVZtGO2/RgT9Pi90b9WxpAcXAmjN4dUeTd5rlc0=;
 b=l4uVaRKKyhOj6q8UAKaPAPsHBuT94pMVw7A9dKSHMy5YOm42zxlYYfjLIYzck9FmTv
 fzTQOPjh2PkrGZikx2x296/rTWPPbh5GdpImItlwd8d8xkJVIkSc5JhMDe6HrLbw09JS
 4449DXkARWg8JSqIZ1Fpl2wqzyES7uNfiuw2sJSoN9fTdGkPXQQXro/H6NC+C6hfA14R
 OTw+sEBZJugdPZN3U2nQRSZRQCaThk+ZSwC2oLi6P+xt+u8pSfwrs5GbPoPkUe+YZbd/
 GfL8QZDRP+sqalPutnO63lgpRrwiFFM5nRk8+6Veu30Olh8zHQU0IOF04BK7Y1jo/Q1R
 HNOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gPM/jVZtGO2/RgT9Pi90b9WxpAcXAmjN4dUeTd5rlc0=;
 b=brTA6sSNGLwQ1TPjjdXNP5HvdS/BTXDcvsR9z2aMjqRIr20qVtLbLIf8Qx38CJ/Cvj
 RkI5af6+9WvmCD3PgHBL9LC74wawezpbCA+gbZDxRfDuXkzJzIZwPLfsh97nQZpSSw0Z
 NzPlgYNtQCXTf6ZiJ+vYO9u6+Ihsjp2sHpeUxQ3dHpVcUKF9s27wvcgyqYJmsxMU9JVB
 EC7ITKCLBFmNa+LzqhILL6178dG2GzaNVl9FMIxr2lCGA7OmqSMlDveNqbqL1NDnHQpw
 dtVyZDB3KHZfIuIAvZLScDD6TKLNqIPbRkuvjKOxvHSL0Jpy7tYvcz2kFH+XXiWZ6qm4
 CH7A==
X-Gm-Message-State: APjAAAXb1g8QFluPRN+vMn1sVP5BIs6/aHr1038wb4v6sBbZy5XFW6ar
 2+FXp5uy1uj+ak8dil1Iw+45xY/rqvbX6E/xCmo=
X-Google-Smtp-Source: APXvYqy1HLPgU0D13o/8TkRWOMOKejvjfwnw+2WACNEYNIbz5sOD1C5mnszzqR+Xj8MfEhBGYWzqiRFtNIavxuQn9EY=
X-Received: by 2002:adf:db81:: with SMTP id u1mr27305113wri.296.1558560420784; 
 Wed, 22 May 2019 14:27:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190522000753.13300-1-chris.packham@alliedtelesis.co.nz>
 <20190522000753.13300-2-chris.packham@alliedtelesis.co.nz>
 <CAFLxGvy2c9KV1CyoFaD76jvThfPiotqfoeNchqjGcDp+uHie7Q@mail.gmail.com>
 <0c59bcd6c866429cb9727f787b7f61ce@svr-chch-ex1.atlnz.lc>
In-Reply-To: <0c59bcd6c866429cb9727f787b7f61ce@svr-chch-ex1.atlnz.lc>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Wed, 22 May 2019 23:26:48 +0200
Message-ID: <CAFLxGvwRnBtscaJDQ4qYGpQt87+amKYb4vBJvtt-3BmsOorL_g@mail.gmail.com>
Subject: Re: [PATCH 2/2] mtd: concat: implement _is_locked mtd operation
To: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_142702_791768_216AD8C6 
X-CRM114-Status: GOOD (  21.99  )
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
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, May 22, 2019 at 11:06 PM Chris Packham
<Chris.Packham@alliedtelesis.co.nz> wrote:
>
> On 23/05/19 8:44 AM, Richard Weinberger wrote:
> > On Wed, May 22, 2019 at 2:08 AM Chris Packham
> > <chris.packham@alliedtelesis.co.nz> wrote:
> >>
> >> Add an implementation of the _is_locked operation for concatenated mtd
> >> devices. As with concat_lock/concat_unlock this can simply use the
> >> common helper and pass mtd_is_locked as the operation.
> >>
> >> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> >> ---
> >>   drivers/mtd/mtdconcat.c | 6 ++++++
> >>   1 file changed, 6 insertions(+)
> >>
> >> diff --git a/drivers/mtd/mtdconcat.c b/drivers/mtd/mtdconcat.c
> >> index 9514cd2db63c..0e919f3423af 100644
> >> --- a/drivers/mtd/mtdconcat.c
> >> +++ b/drivers/mtd/mtdconcat.c
> >> @@ -496,6 +496,11 @@ static int concat_unlock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
> >>          return __concat_xxlock(mtd, ofs, len, mtd_unlock);
> >>   }
> >>
> >> +static int concat_is_locked(struct mtd_info *mtd, loff_t ofs, uint64_t len)
> >> +{
> >> +       return __concat_xxlock(mtd, ofs, len, mtd_is_locked);
> >> +}
> >
> > Hmm, here you start abusing your own new API. :(
>
> Abusing because xxlock is a poor choice of name? I initially had a third
> copy of the logic from lock/unlock which is what lead me to do the
> cleanup first. mtd_lock(), mtd_unlock() and mtd_is_locked() all work the
> same way namely given an offset and a length either lock, unlock or
> return the status of the len/erasesz blocks at ofs.

Well, for unlock/lock it is just a loop which applies an operation to
a given range on all submtds.
But as soon an operation returns non-zero, the loop stops and returns
that error.
This makes sense for unlock/lock.

Now you abuse this as "apply a random mtd operation to a given range".
So, giving it a proper name is the first step. Step two is figuring
for what kind
of mtd operations it makes sense and is correct.

> >
> > Did you verify that the unlock/lock-functions deal correctly with all
> > semantics from mtd_is_locked?
> > i.e. mtd_is_locked() with len = 0 returns 1 for spi-nor.
> >
>
> I believe so. I've only got access to a parallel NOR flash system that
> uses concatenation and that seems sane  (is mtdconcat able to work with
> spi memories?). The concat_is_locked() should just reflect what the
> underlying mtd device driver returns.

mtdconcat *should* work with any mtd. But I never used it much, I see
it more as legacy
code.

What happens if one submtd is locked and another not?
Does concat_is_locked() return something sane then?
I'd expect it to return true if at least one submtd is locked and 0
of no submtd is locked.

If the loop and return code handling in __concat_xxlock() can take care of that,
awesome. Then all you need is giving it a better name. :-)

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
