Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BBD61431D0
	for <lists+linux-mtd@lfdr.de>; Mon, 20 Jan 2020 19:47:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2NpNbkhp1Xj7Ch9k5iRMriEuVqOw8LhLuVELe+GKj1U=; b=qHJLyqLnFx5Bmj
	aqMYMjzTfmtIkPUYlarRszaalZxdXARNVFxRTjgPMeQR+m/Cv9ziYjebzkH7jdo685b5rrrxvksVW
	TpWH9Nz/Mv/IcoJTbumUn+9T7okOLtJzTSpgcxsunRdSRbWoi4SVAFmqdHK582LO9cA3b9YCkpypd
	T6YyD8l+q2iJhle2cNOBm6bLZ7UBkhRBcO+cwvHnRQdDfLOgmFrsyDC/qlRgeqBQYED+EBKg3ILZY
	EQwLY6M2ba7OPSsdeGXBo8wrSQiwnJNyjs5puirdxxkqEiiKbzG1CtbLLysNJkOueGYEPLZPyROR4
	k1MMavCV29ufjEbcDDAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itc5N-0003Fx-Bd; Mon, 20 Jan 2020 18:47:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itc59-0003FU-0z
 for linux-mtd@lists.infradead.org; Mon, 20 Jan 2020 18:47:31 +0000
Received: from sol.localdomain (c-107-3-166-239.hsd1.ca.comcast.net
 [107.3.166.239])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 512DF22527;
 Mon, 20 Jan 2020 18:47:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579546046;
 bh=OTFRQhfPut/J4I3VCk7tAM12sQ+tDDYC3vUdMIRPwZc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sHbm3oSrbqC4caH/FoWY2eVqVBDAFNprJD/wuDn4cztRHfqVdoBnmoTK9lzci+4bw
 IwRRPYlwCgnWiTbnM09n7zRP/pePGaocppmiSag3qO9exq8Rr9NxewAjoF+iAFarsV
 LpB1K5mRj1TAD687fJBIAts+i7yAqMSAxfBNdglg=
Date: Mon, 20 Jan 2020 10:47:24 -0800
From: Eric Biggers <ebiggers@kernel.org>
To: Richard Weinberger <richard@nod.at>
Subject: Re: [PATCH] ubifs: use IS_ENCRYPTED() instead of
 ubifs_crypt_is_encrypted()
Message-ID: <20200120184724.GA4118@sol.localdomain>
References: <20191209212721.244396-1-ebiggers@kernel.org>
 <20200103170927.GO19521@gmail.com>
 <CAFLxGvwA6y2+Azm1Xc+-cz1N_jjJXY3uZBVDqGGLvc6GMcb5JA@mail.gmail.com>
 <20200120065422.GA976@sol.localdomain>
 <397871241.24589.1579513469565.JavaMail.zimbra@nod.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <397871241.24589.1579513469565.JavaMail.zimbra@nod.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_104727_090821_7A8804DB 
X-CRM114-Status: GOOD (  19.97  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-fscrypt <linux-fscrypt@vger.kernel.org>,
 Chandan Rajendra <chandan@linux.vnet.ibm.com>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, Jan 20, 2020 at 10:44:29AM +0100, Richard Weinberger wrote:
> =

> ----- Urspr=FCngliche Mail -----
> > Von: "Eric Biggers" <ebiggers@kernel.org>
> > An: "Richard Weinberger" <richard.weinberger@gmail.com>
> > CC: "richard" <richard@nod.at>, "linux-mtd" <linux-mtd@lists.infradead.=
org>, "linux-fscrypt"
> > <linux-fscrypt@vger.kernel.org>, "Chandan Rajendra" <chandan@linux.vnet=
.ibm.com>
> > Gesendet: Montag, 20. Januar 2020 07:54:22
> > Betreff: Re: [PATCH] ubifs: use IS_ENCRYPTED() instead of ubifs_crypt_i=
s_encrypted()
> =

> > On Thu, Jan 09, 2020 at 09:01:09AM +0100, Richard Weinberger wrote:
> >> On Fri, Jan 3, 2020 at 6:09 PM Eric Biggers <ebiggers@kernel.org> wrot=
e:
> >> >
> >> > On Mon, Dec 09, 2019 at 01:27:21PM -0800, Eric Biggers wrote:
> >> > > From: Eric Biggers <ebiggers@google.com>
> >> > >
> >> > > There's no need for the ubifs_crypt_is_encrypted() function anymor=
e.
> >> > > Just use IS_ENCRYPTED() instead, like ext4 and f2fs do.  IS_ENCRYP=
TED()
> >> > > checks the VFS-level flag instead of the UBIFS-specific flag, but =
it
> >> > > shouldn't change any behavior since the flags are kept in sync.
> >> > >
> >> > > Signed-off-by: Eric Biggers <ebiggers@google.com>
> >> > > ---
> >> > >  fs/ubifs/dir.c     | 8 ++++----
> >> > >  fs/ubifs/file.c    | 4 ++--
> >> > >  fs/ubifs/journal.c | 6 +++---
> >> > >  fs/ubifs/ubifs.h   | 7 -------
> >> > >  4 files changed, 9 insertions(+), 16 deletions(-)
> >> >
> >> > Richard, can you consider applying this to the UBIFS tree for 5.6?
> >> =

> >> Sure. I'm back from the x-mas break and start collecting patches.
> >> =

> > =

> > Ping?  I see the other UBIFS patches I sent in linux-ubifs.git#linux-ne=
xt,
> > but not this one.
> =

> Oh dear, I reviewed but forgot to apply it. Now I'm already traveling wit=
hout my
> kernel.org PGP keys.
> =

> The patch is simple and sane, so I'm totally fine if you carry it via fsc=
rypt.
> Another option is that Miquel carries it via MTD this time.
> =

> In any case:
> =

> Acked-by: Richard Weinberger <richard@nod.at>
> =

> Sorry for messing this up. :-(
> =


I just went ahead and applied it to the fscrypt tree with your Acked-by, si=
nce
it doesn't conflict with anything in the UBIFS tree.  Thanks,

- Eric

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
