Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5900B1423D7
	for <lists+linux-mtd@lfdr.de>; Mon, 20 Jan 2020 07:54:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KNH+whh4eixyPH+vAwibfwlTiBKoruLkVCQbBiTB9jM=; b=kK6SqPfoa94VHb
	kiF4TwJxyJJp2xeA7fNUGwwaBHPq43LWidE17rx5cJy3o5+hCCNEIUY/AWpzqmql6rFmTLuKc1rcf
	NrPYSi3snuvfZ2d8+sqRRZ3iT8pIlP//V2pQHNt5LyZkCQnd29QYek7rHPLQ+xBNXlTOLZpwZP1Pv
	zk1h2NKU9h8rKDvu93IER99ysaNdAvbF9eyCvZqudmoHDZOHazUa8j+kz1EYvYyrHQacLTl5Pj9mT
	rfZRb7XKByhUU4a43OLEKS8SLrS9VS81A4tsJqJD/e7DxTyaJJSu54QnkMtFpvZLWXpCqiL62vtxe
	6U57etio6d05nT83k/7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itQxH-0002dW-IV; Mon, 20 Jan 2020 06:54:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itQx8-0002d1-Fl
 for linux-mtd@lists.infradead.org; Mon, 20 Jan 2020 06:54:28 +0000
Received: from sol.localdomain (c-107-3-166-239.hsd1.ca.comcast.net
 [107.3.166.239])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6811F2073D;
 Mon, 20 Jan 2020 06:54:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579503264;
 bh=3/g8O0L8/HHyUM7mzXuzKScJszx17sO0OT6iedMCQbY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Occ+eKdYD75/B0vY5B8dPtboth69kxcmqdb2JLdJfROsBnMGeKyITZlIB9awuY89K
 KQZYwiWpREBVfe06v6ipryJId0Yd/UXeOZFkyWeO/P8Ch6xhbBjbuVhTsehCJbJCqC
 mtRjU2mVA2Mghajjr+xVlGKp6LibusrEYHO2AHRg=
Date: Sun, 19 Jan 2020 22:54:22 -0800
From: Eric Biggers <ebiggers@kernel.org>
To: Richard Weinberger <richard.weinberger@gmail.com>
Subject: Re: [PATCH] ubifs: use IS_ENCRYPTED() instead of
 ubifs_crypt_is_encrypted()
Message-ID: <20200120065422.GA976@sol.localdomain>
References: <20191209212721.244396-1-ebiggers@kernel.org>
 <20200103170927.GO19521@gmail.com>
 <CAFLxGvwA6y2+Azm1Xc+-cz1N_jjJXY3uZBVDqGGLvc6GMcb5JA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFLxGvwA6y2+Azm1Xc+-cz1N_jjJXY3uZBVDqGGLvc6GMcb5JA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_225426_549871_51F633ED 
X-CRM114-Status: GOOD (  15.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Richard Weinberger <richard@nod.at>, linux-fscrypt@vger.kernel.org,
 Chandan Rajendra <chandan@linux.vnet.ibm.com>, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, Jan 09, 2020 at 09:01:09AM +0100, Richard Weinberger wrote:
> On Fri, Jan 3, 2020 at 6:09 PM Eric Biggers <ebiggers@kernel.org> wrote:
> >
> > On Mon, Dec 09, 2019 at 01:27:21PM -0800, Eric Biggers wrote:
> > > From: Eric Biggers <ebiggers@google.com>
> > >
> > > There's no need for the ubifs_crypt_is_encrypted() function anymore.
> > > Just use IS_ENCRYPTED() instead, like ext4 and f2fs do.  IS_ENCRYPTED()
> > > checks the VFS-level flag instead of the UBIFS-specific flag, but it
> > > shouldn't change any behavior since the flags are kept in sync.
> > >
> > > Signed-off-by: Eric Biggers <ebiggers@google.com>
> > > ---
> > >  fs/ubifs/dir.c     | 8 ++++----
> > >  fs/ubifs/file.c    | 4 ++--
> > >  fs/ubifs/journal.c | 6 +++---
> > >  fs/ubifs/ubifs.h   | 7 -------
> > >  4 files changed, 9 insertions(+), 16 deletions(-)
> >
> > Richard, can you consider applying this to the UBIFS tree for 5.6?
> 
> Sure. I'm back from the x-mas break and start collecting patches.
> 

Ping?  I see the other UBIFS patches I sent in linux-ubifs.git#linux-next,
but not this one.

- Eric

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
