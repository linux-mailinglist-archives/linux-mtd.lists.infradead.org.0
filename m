Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE0F8116021
	for <lists+linux-mtd@lfdr.de>; Sun,  8 Dec 2019 03:05:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nJ+MS+lrgIbi/am92dtygY12gjH01nS0eMwfXSev3oE=; b=EAbyI7MuSDRrSN
	W0YRVc4EiAiyBdpSVMNJjtEt5Pxa41CMZusTupjN7PyxyZFpHywZ52xBS/UBncXPtHf6KARODLUSQ
	iXJ8MnUIddDYSzqhYmtjtXpuQ/ZFBItYcn728Lufh9SULNVvDF+PfQ1I65p3Ht0ydijF4tdHou5T+
	FOJwk/6jfrWomp6IeVB4+lV/pALYUEtKfGIBVIZnNn7aABY+76y1P/TSFWxMv4qkStFJ/VvQgdvDY
	GDQcB9lexIIEn3Ct5nbalUWmVOAIibVhwCIpcgV89ZsLnymJakHqvCEKH3cW9nrBIA8+NhHGWtJQS
	VhSc2LBOnkpTlQdCLdcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idlwQ-0008Di-Gp; Sun, 08 Dec 2019 02:04:58 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idlwJ-0008Cj-Cx
 for linux-mtd@lists.infradead.org; Sun, 08 Dec 2019 02:04:52 +0000
Received: by mail-il1-x143.google.com with SMTP id b15so9685035iln.3
 for <linux-mtd@lists.infradead.org>; Sat, 07 Dec 2019 18:04:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5LlH2dOvK572wA3LQlWdBWmF+HbKqL28TX4vGxdhU3M=;
 b=E6sKswWCRmwzB1ja7v0ZhAn/Pzx7BxO0A1a6mOe0pQ+MRMusVf05gs+HkKOr2fXQy8
 qmPhHq0yZgocSYAc2bCQMStIjpa3XJo5xFgxeJ9JT3tuEnSSRpl1JYS/SrNRpYp49r8/
 Ud/aQfRCKCbQNg5dsowMM83O0z4fExWLvr205hj7wkLk0s9gHi4XboILqK9qyYYV7A4G
 HaHRo8HICOaCb9yT/cYxrJ621WxxW8rl/dDH7LcHSSAo8i44krDFhiI6ENoj42sQFcOn
 1VusDJ2diU7CBgp5vGNP94Ny67lCloeyKh2xdLC9rBSfsyuONAp0KpKYt2krEcQvHpst
 xUZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5LlH2dOvK572wA3LQlWdBWmF+HbKqL28TX4vGxdhU3M=;
 b=mAPsSjY5nTu8dRNRWKi4fxPNyiE31YhzTlyAOc0U4i22HIOiLQHgNCnw+tYaVsWvwV
 kfejHIBzDI+LkI9LIaQgEDlx6LYzxixMef/wImVv4x2N7mPfU5pxHnf+sTPvH+2cUBrf
 7DMITPkRUHgLiW53liil8NQe0pVQj1KOcytN5LffpdLzmIGp0JvC7rJPUqojZqY7VFWG
 UUjQ2iPyXvBultNkbJUKglLlk4NhDryWQ/EKjmDeXF0sj5bsZEo4n7jfLwLXd+o13Bm2
 JtNUvqp/mSttA/E6IrCPHg2c9SPGUGSOTbvxefWKxzX7u+PEvL7L8PUur8dgL6YyG7XZ
 Hn+Q==
X-Gm-Message-State: APjAAAUizg43hixzbxG+pv4kWYS7O7vhIxtT/oOGO3AdavbTeBBs2mvH
 5Ckwm93sjJz60QNufYnwNtavQFvdqaxAGNam2n0=
X-Google-Smtp-Source: APXvYqxQ2oG2vjuo8AK3+bG8dvsCZ3h1Au02b8ccHDneQPnxpoRRip3/l9rzYpqI73WldLOEI9jiFuZod1sLiddxGzQ=
X-Received: by 2002:a92:c8d1:: with SMTP id c17mr21496674ilq.153.1575770689687; 
 Sat, 07 Dec 2019 18:04:49 -0800 (PST)
MIME-Version: 1.0
References: <20191203051945.9440-1-deepa.kernel@gmail.com>
 <CABeXuvpkYQbsvGTuktEAR8ptr478peet3EH=RD0v+nK5o2Wmjg@mail.gmail.com>
 <20191207060201.GN4203@ZenIV.linux.org.uk>
In-Reply-To: <20191207060201.GN4203@ZenIV.linux.org.uk>
From: Deepa Dinamani <deepa.kernel@gmail.com>
Date: Sat, 7 Dec 2019 18:04:38 -0800
Message-ID: <CABeXuvrvATrw9QfVpi1s80Duen6jf5sw+pU91yN_0f3N1xWJQQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/6] Delete timespec64_trunc()
To: Al Viro <viro@zeniv.linux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_180451_465069_899C39A1 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (deepa.kernel[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: CIFS <linux-cifs@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Richard Weinberger <richard@nod.at>, Jeff Layton <jlayton@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Steve French <stfrench@microsoft.com>,
 Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 ceph-devel <ceph-devel@vger.kernel.org>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, Dec 6, 2019 at 10:02 PM Al Viro <viro@zeniv.linux.org.uk> wrote:
>
> On Thu, Dec 05, 2019 at 06:43:26PM -0800, Deepa Dinamani wrote:
> > On Mon, Dec 2, 2019 at 9:20 PM Deepa Dinamani <deepa.kernel@gmail.com> wrote:
> > > This series aims at deleting timespec64_trunc().
> > > There is a new api: timestamp_truncate() that is the
> > > replacement api. The api additionally does a limits
> > > check on the filesystem timestamps.
> >
> > Al/Andrew, can one of you help merge these patches?
>
> Looks sane.  Could you check if #misc.timestamp looks sane to you?

Yes, that looks sane to me.

> One thing that leaves me scratching head is kernfs - surely we
> are _not_ limited by any external layouts there, so why do we
> need to bother with truncation?

I think I was more pedantic then, and was explicitly truncating times
before assignment to inode timestamps. But, Arnd has since coached me
that we should not introduce things to safe guard against all
possibilities, but only what is needed currently. So this kernfs
truncate is redundant, given the limits and the granularity match vfs
timestamp representation limits.

-Deepa

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
