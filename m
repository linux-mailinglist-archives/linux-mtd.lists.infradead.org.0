Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D49D1828FB
	for <lists+linux-mtd@lfdr.de>; Thu, 12 Mar 2020 07:28:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=53wJHSATxMKjrVj9GTGezBVaWYqiUfJytQKhWHf2hy0=; b=WszfXWmEGXIM+5
	/ou2+rTM59nF6KRd9MnWFjFHqWbMwunAV7Ab/9TPW0Oaqigq6pfoeF1QZUIeIZk+1ALFU8B5C/DLE
	L0tabkPZK2Ps6jQ5ZNobH68l46RXCoYXughuj5X9E0cEtUxvrL0uLsVJAfuzJw/EkvdOxi7zDxdjF
	ymEhQhBEQZGE5xAQBPpAqEgeRHer1iX0e/5NiELoKd9XLwOo61M5kL0J0n82SOg4PNYZ7sTNHPzs3
	bXAeiVp0wo3FYGbrvrKqZYGmy4qLO0W46ebqUVl0ZY6FpgpkUkR9R/d3Y4C+TY//2TGehmbdsCpX/
	eZ4YSRU/Z0HTGCJCli9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCHK5-000324-PO; Thu, 12 Mar 2020 06:28:01 +0000
Received: from smtprelay0207.hostedemail.com ([216.40.44.207]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCHJy-000316-NY
 for linux-mtd@lists.infradead.org; Thu, 12 Mar 2020 06:27:56 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay08.hostedemail.com (Postfix) with ESMTP id 72080182CED5B;
 Thu, 12 Mar 2020 06:27:50 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:800:960:967:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:1801:2110:2393:2525:2553:2560:2563:2682:2685:2692:2828:2859:2902:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3353:3622:3653:3865:3866:3867:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:4605:5007:6742:8527:9025:10004:10400:10848:10967:11026:11232:11658:11914:12043:12296:12297:12438:12555:12663:12740:12760:12895:12986:13069:13161:13229:13311:13357:13439:14096:14097:14180:14181:14581:14659:14721:21060:21080:21433:21627:21811:21939:30054:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: point06_441a962f90223
X-Filterd-Recvd-Size: 3157
Received: from XPS-9350.home (unknown [47.151.143.254])
 (Authenticated sender: joe@perches.com)
 by omf14.hostedemail.com (Postfix) with ESMTPA;
 Thu, 12 Mar 2020 06:27:47 +0000 (UTC)
Message-ID: <969ea500cfd66fa2fc32e8d1e9c6126710d16813.camel@perches.com>
Subject: Re: [PATCH -next 013/491] INGENIC JZ47xx SoCs: Use fallthrough;
From: Joe Perches <joe@perches.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Date: Wed, 11 Mar 2020 23:26:04 -0700
In-Reply-To: <20200311084052.3ca3c331@xps13>
References: <cover.1583896344.git.joe@perches.com>
 <ad408ff8dc4e5fae0884312cb0aa618664e546e5.1583896348.git.joe@perches.com>
 <20200311084052.3ca3c331@xps13>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_232754_830075_5AD00F36 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.207 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.207 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Vignesh Raghavendra <vigneshr@ti.com>,
 alsa-devel@alsa-project.org, David Airlie <airlied@linux.ie>,
 Richard Weinberger <richard@nod.at>, Mark Brown <broonie@kernel.org>,
 Takashi Iwai <tiwai@suse.com>, linux-mmc@vger.kernel.org,
 Liam Girdwood <lgirdwood@gmail.com>, dri-devel@lists.freedesktop.org,
 Jaroslav Kysela <perex@perex.cz>, Paul Cercueil <paul@crapouillou.net>,
 Harvey Hunt <harveyhuntnexus@gmail.com>, linux-mtd@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, 2020-03-11 at 08:40 +0100, Miquel Raynal wrote:
> Hi Joe,
> 
> Joe Perches <joe@perches.com> wrote on Tue, 10 Mar 2020 21:51:27 -0700:
> 
> > Convert the various uses of fallthrough comments to fallthrough;
> > 
> > Done via script
> > Link: https://lore.kernel.org/lkml/b56602fcf79f849e733e7b521bb0e17895d390fa.1582230379.git.joe.com/
> > 
> > Signed-off-by: Joe Perches <joe@perches.com>
> > ---
> >  drivers/gpu/drm/ingenic/ingenic-drm.c           | 2 +-
> >  drivers/mmc/host/jz4740_mmc.c                   | 6 ++----
> >  drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c | 2 +-
> >  drivers/mtd/nand/raw/ingenic/jz4725b_bch.c      | 4 ++--
> >  drivers/mtd/nand/raw/ingenic/jz4780_bch.c       | 4 ++--
> >  sound/soc/codecs/jz4770.c                       | 2 +-
> >  6 files changed, 9 insertions(+), 11 deletions(-)
> 
> I like very much the new way to advertise for fallthrough statements,
> but I am not willing to take any patch converting a single driver
> anymore. I had too many from Gustavo when these comments had to be
> inserted. I would really prefer a MTD-wide or a NAND-wide or at least a
> raw-NAND-wide single patch (anything inside drivers/mtd/nand/raw/).

I understand completely.

This set was done to generate patches by
nominally maintained subsystems.

If you want something else:

The easiest thing for you to do would be to
run the cvt_fallthrough.pl script yourself.

$ cvt_fallthrough.pl drivers/mtd/nand/raw/

That would produce:

$ git diff --shortstat drivers/mtd/nand/raw
 9 files changed, 18 insertions(+), 24 deletions(-)

or

$ cvt_fallthrough.pl drivers/mtd/

which would produce:

$ git diff --shortstat drivers/mtd/
 22 files changed, 45 insertions(+), 60 deletions(-)

cheers, Joe


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
