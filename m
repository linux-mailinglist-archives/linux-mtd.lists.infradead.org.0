Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D62F197441
	for <lists+linux-mtd@lfdr.de>; Mon, 30 Mar 2020 08:09:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2dHonlrofLM9cca2kkmmwaLAivLBh+a/9+ipJ9sjGr4=; b=XcQqYeOnmVxHBk
	RGOTwY46l3LE15OJgbY7IihRV546c6ntIdOowscp1aW5Uq9ZIzbSF/Ssr6BEQ+qQhKxEoUBWzd/Hy
	kY37JvEWCFkaXHfGRxYQRozlFeT+lgQt0dRiRFhRCVTUI0ZYfCfsMYNNvtTVaQ2rdckGBWzvnrDBd
	+BPVs19eG1OQa+2MhOPm1d7zSLEebWGO3U8Xvug1GV92DKohuPj7AD+tMeiiLjg4NF3RycQig7M6q
	CYZskiouYqrl5aNKOz65Sy5UV2ympNroqQRn26oAeXFEHx0Py+vjq24jyI+EfRi3/hedQeZaNYKTd
	UESzBIO30CU0jUWtRcVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jInbm-0004tV-3s; Mon, 30 Mar 2020 06:09:14 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jInbd-0004t1-Cw
 for linux-mtd@lists.infradead.org; Mon, 30 Mar 2020 06:09:07 +0000
IronPort-SDR: 4xaDSteC4Mp/Mj7p+4CEBPHe2oF79rUMyljLqAH5jbQ6SyT41M1h+B/CuVH5+dOHfw1oAGi1Sf
 v36kLUfcwaeg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2020 23:09:03 -0700
IronPort-SDR: zxPIpRY34vNnoG114uuDPan3rOMb5tllwSj2LzTd5qR3oGMjcSiC0crXYcl388dC8ZYLLx8aoC
 cjnBRlL1SNpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,323,1580803200"; d="scan'208";a="359079915"
Received: from lahna.fi.intel.com (HELO lahna) ([10.237.72.163])
 by fmsmga001.fm.intel.com with SMTP; 29 Mar 2020 23:08:59 -0700
Received: by lahna (sSMTP sendmail emulation); Mon, 30 Mar 2020 09:08:59 +0300
Date: Mon, 30 Mar 2020 09:08:59 +0300
From: Mika Westerberg <mika.westerberg@linux.intel.com>
To: ron minnich <rminnich@gmail.com>
Subject: Re: [PATCH 1/1] mtd/intel-spi: Support cmdline-based partition
Message-ID: <20200330060859.GR2564@lahna.fi.intel.com>
References: <CAP6exY+LQ4Cz3Wq3P=MP78HhHCovMYDfwhpVuASp17h3s2sgMw@mail.gmail.com>
 <CAP6exYJ_jzrB0D=RLXMNeegu4BwQq8raXVOMugkqzX2ZP_JSqw@mail.gmail.com>
 <20200327155608.GM2564@lahna.fi.intel.com>
 <20200327171907.7a7ffc73@xps13>
 <20200327164802.GN2564@lahna.fi.intel.com>
 <20200327175238.784cf47c@xps13>
 <CAP6exYJ4-pBBZKA0z8TKPqh_0tKzJadjXEBZk9dc9ij8BJ9Xew@mail.gmail.com>
 <20200327171619.GO2564@lahna.fi.intel.com>
 <CAP6exYJWWT2SFLjPCdjAEEjmZYwqYuTxd_aRaf=xEELmXqfMpA@mail.gmail.com>
 <CAP6exY+p-Chi2R4Y1H8UvcbE6rvEpMiK3UaX2OyBq=ZO6uULpg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAP6exY+p-Chi2R4Y1H8UvcbE6rvEpMiK3UaX2OyBq=ZO6uULpg@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_230905_486668_B3501056 
X-CRM114-Status: GOOD (  24.52  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

No objections from my side :)

On Fri, Mar 27, 2020 at 04:53:28PM -0700, ron minnich wrote:
> OK, I've done a quick prototype of using () as one way to specify the
> ID. The mtparts can look like this (tested)
> 
> mtdparts=(0000:00:1f.5)25165824(BIOS),-(squashfs)
> 
> The text in () can be pretty arbitrary; only ) is disallowed.
> It's about 10 more lines of code in cmdlinepart.c and that's it.
> Further, the existing syntax is still supported:
> mtdparts=id:parts
> 
> what do you think?
> 
> thanks
> 
> ron
> 
> On Fri, Mar 27, 2020 at 10:39 AM ron minnich <rminnich@gmail.com> wrote:
> >
> > yeah, :: is not so bad, but you've got a lot of corner cases as you check for ::
> > mtdparts=0:
> > for one example.
> >
> > Covering all the ways things can go wrong gets messy. You can pretty
> > much guarantee all those corner cases will get exercised ...
> >
> > And people are going to mess this up and end up with hard to debug errors:
> > mtdparts=0000::0:1f.3:parts
> >
> > That could be a hard error to spot.
> >
> > I still wonder if we should not just define some character as
> > available in addition to :. I realize | was pretty awful, but ... is
> > there some other character we might use? I kind of like the simplicity
> > of the current scheme; there really would be no issue had it been
> > almost anything but a : :-)
> >
> > But if the sense is that :: is the way to go, I can give it a shot.
> >
> > ron
> >
> > On Fri, Mar 27, 2020 at 10:16 AM Mika Westerberg
> > <mika.westerberg@linux.intel.com> wrote:
> > >
> > > On Fri, Mar 27, 2020 at 10:05:52AM -0700, ron minnich wrote:
> > > > I did try the \ thing but found it a bit tricky to work with, with
> > > > lots of potential for simple errors.
> > > >
> > > > It would require cmdlines like this
> > > > mtdparts=0000\:00\:0.1f:etcetc
> > > >
> > > > A lot of these mtdparts definitions are produced by scripts and
> > > > Makefiles and there are many, many places where \\ have a way of
> > > > vanishing.
> > >
> > > Right. One option would be to use the printf() style escaping and make
> > > :: to be literal : in the same way %% is literal %.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
