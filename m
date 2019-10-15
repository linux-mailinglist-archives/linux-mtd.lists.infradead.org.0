Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B859DD7FAE
	for <lists+linux-mtd@lfdr.de>; Tue, 15 Oct 2019 21:12:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wu0IWUk5RgVibH5Bi8R/Ndj0+JX4j1U3I7p4qjrFehY=; b=RhhflOa0m6pSRb
	agAVgu3KUvUZ80cHtWbJmVFCsViQGG7IKkpNg07snXj+BH6hc75jd7gkPaxW61Fd6ZR6C37fqBVzK
	xyL6ah700kEuDD3lgube7qnW+R3Sh8yf5v2e2P88X6dNvMWNlo/p4yJ+XtBYif+piktHMEiRLHFI9
	whxOyu+XNwhtO2E7Tieshs6XV4Qe37kSvPKjs/kfeAzE+x02mme1R/rfV6HwYwsJZ9JyC196UEVxN
	RF66kwqGU8GKIdR11rsBcSdsiOkOWk2CPxs7T9lZi7ODp1fNKRL/dHtd90GvzHe0B4JX5qvxoNtlZ
	xrdaPbj+sD2IX4N2kFjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKSEl-0007tE-CM; Tue, 15 Oct 2019 19:12:03 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKSEa-0007sn-4Q
 for linux-mtd@lists.infradead.org; Tue, 15 Oct 2019 19:11:53 +0000
Received: by mail-wr1-x444.google.com with SMTP id y18so15747686wrn.5
 for <linux-mtd@lists.infradead.org>; Tue, 15 Oct 2019 12:11:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wGjkzU9pN9jxFwHQzLofJHMR2wRzSbTGeh5YpFMwC/o=;
 b=WQ/Pe87akDidba+ffYQJ4UH/nx7iOokQ+LsrfOP5IlXFMuTzCNFosFcw391ECa0u9e
 TKAY7X1WaUY5x2nZs7ALJaKoBv5+dfzrKgZLYTT5G+O7cC+g3bOwnalIzCjURSC+HpIB
 ifEa/HYmLngQ//8jDet24aZ0WPOMeuuWyUUefG2PGBKGwomae3U1tU43VMrFzJNzyX7X
 cjEHx8wr2qq7eFU097YCiJlfB8yDLEzc6vKFm9j9LHBHOUnZuqPdMvc/fJ83LnBTaTMF
 rjWtBvcPA1nKUObvjH//XDmVABf2NNH+mIGYQ6/nzLK8hC9//2xGoSAIJsiXr5bOX+oa
 mBag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wGjkzU9pN9jxFwHQzLofJHMR2wRzSbTGeh5YpFMwC/o=;
 b=D8GMRIr6PkArJJkwGsPkjKzSpMvhKsyN8BapFVTJN2aypEpHGIXVL7tjrCx4vxuRKN
 +7R5XGwxYOpf1b67Q27j2lx+mJ0CiBl/QAbkKjf33xB7LDqws6he5Imei6gm4YdwHqHb
 P/o7c/jI2iRNaCxOma8N4XnJD1h+0cwpUomKZzQKA5pXO+w+Py8Q/JjWh8NhMB/wbTjv
 A9L8wFVVWLCgiJO+CCQXuUEP74wVOO7Tg5pBfFIyt0hKS9nYp6vLOTl0axLkwn11kghZ
 OFI5vK/EeOnNf+cOaLGlfNCAIOz1sudQ5jfroiUqN4eYDI25OLBAuZfnvLmDjwQzzVxb
 u1sA==
X-Gm-Message-State: APjAAAUco0X68XjsX3DjbxbaE+hb+ifNdQtuQbtZZlEI4jMC4OKslXhT
 CjK8bxMtd4o9hsUT1LrPokd6Ey2+uwsdRTyw82rjbBi6dvU=
X-Google-Smtp-Source: APXvYqwBm0Ak7EFIqPlqVF+RBTGceQ2tHYSO3YGA/xsksVzrEnNsPsaLBqr4QVN+qigUS3HviC9ORg9QwgLq18YZvkw=
X-Received: by 2002:adf:dbd2:: with SMTP id e18mr18814824wrj.268.1571166710690; 
 Tue, 15 Oct 2019 12:11:50 -0700 (PDT)
MIME-Version: 1.0
References: <1N9dsV-1hx2G70tCn-015aTM@mail.gmx.com>
In-Reply-To: <1N9dsV-1hx2G70tCn-015aTM@mail.gmx.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Tue, 15 Oct 2019 21:11:39 +0200
Message-ID: <CAFLxGvwuW+taURgxp6zX2YKnL0=rFoUN=zocY1rN3Sc+MLxXdQ@mail.gmail.com>
Subject: Re: jffs2, mtd, mtd-utils and ancient kernels
To: don311@gmx.us
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_121152_173442_2E0A636A 
X-CRM114-Status: GOOD (  29.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: David Woodhouse <dwmw2@infradead.org>, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Don,

On Tue, Oct 15, 2019 at 3:01 AM <don311@gmx.us> wrote:
>
> Greetings,
>
> I apologize for writing my first post here on a topic you've made
> abundantly clear, for a long _long_ time now, that you have no interest
> in: support for ancient kernels.  If it helps, let me be clear that I'm
> not looking for "support" in quite the usual sense, but I have what I
> think are a couple pretty basic questions.  I've tried downloading and
> searching through the mailing list archives going back to the era that
> the device I'm working on was originally developed (2004) without much
> luck.  Google hasn't been much help with this either.  Of course it's
> possible I just wasn't searching for the right things.
>
> Basic questions:
>
> Q1/ From what I've read, before MTD, JFFS2, and mtd-utils source code
>     moved to Git in 2006, it was in CVS, and snapshots were available
>     here:
>         ftp://ftp.uk.linux.org/pub/people/dwmw2/mtd/...
>     That doesn't seem to work any more (hardly surprising, I guess,
>     after so long), but I'm wondering: Might those old snapshot archives
>     still be available somewhere else?  I don't see any mention of it on
>     the current web site.

Maybe David knows. CC'ed.

For kernel stuff, see:
https://git.kernel.org/pub/scm/linux/kernel/git/tglx/history.git/

> Q2/ Is there anything you can point me to that shows which versions of
>     MTD, JFFS2, and mtd-utils were delivered for use with each Linux
>     kernel release?  In my case, I have particular interest in kernel
>     2.4.26 -- so would it be possible to, say, find the mtd-utils
>     version that corresponds to the version of MTD and JFFS2 used in
>     2.4.26?

Usually Debian is a good source for such an information.
...or any other Linux distro with long term archives.

> Slightly more detailed historical questions -- if any of you are still
> reading, and happen to remember back that far:
>
> Q3/ The JFFS2 code in 2.4 is referred to in several places (web site and
>     mailing list) as stable, but does anyone here know/remember whether
>     its "on-disc" (er, "on-flash") format continued to stay stable after
>     2.4?  Put another way, how compatible (forwards and backwards) are
>     JFFS2 images between 2.4 and later?
>       - On the forward side, if one upgraded the kernel on a device that
>         had been running 2.4.x (x >= 26) to something later, could the
>         file system be used as-is?  (I mean, without risk of an ensuing
>         mess?)

We try hard to stay compatible and use versioning. So I'd assume that a
recent kernel still can mount an old filesystem.
If not, please report.

>       - On the backward side, how dangerous would it be to use a 2.4.26
>         kernel with a new (never mounted) JFFS2 image built with a later
>         version of mkfs.jffs2?  (Not that one would deliberately choose
>         such to do a thing, of course.)  I've built 2 or 3 different
>         versions and found that they generate much different images from
>         a constant "source" directory tree, but I haven't yet tried to
>         dissect the images to understand the differences.

As long you don't enable newer features in mkfs, it should work too.

> Q4/ The JFFS2 code in 2.4 is also referred to as well tested.  Is anyone
>     here aware of whether that extends to the area of random hardware
>     resets / power cuts, such as might be experienced on embedded
>     devices without reliable power sources?  I see there were many
>     performance improvements and bug fixes over the years, but are you
>     aware of any data about relative reliability -- on the same hardware
>     -- of JFFS2 in 2.4 vs much later / current, say?  (I believe "on the
>     same hardware" would imply nor flash here, since 2.4 didn't support
>     nand.)

You *really* don't want to use a 2.4 kernel.

> I'd be happy to explain what sorts of colorful pharmaceuticals I've been
> into that could cause me to ask such questions, but I suspect the above
> may be enough flame-inducing stuff for one post.

I'm all ear. :-)

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
