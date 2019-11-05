Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79FFBF0A21
	for <lists+linux-mtd@lfdr.de>; Wed,  6 Nov 2019 00:17:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eCwBkmgNSdtER4nnlaO00bfJhhtTYkEjyzoLjfLUb+Y=; b=ntaAzuDAYzGQ7i
	Gd4/jh2KnhUrSuIy52gDGYsZBq9cW0DV93bj/FAD/clGAoTEC5oHYv7X2XEgU1IJ2dvckrOzu2J0v
	qOmKKb5RpgiQKpP1M2fYL9iU0Fp72gz8IiLYjI/GaN7d0PBAiFBKJsySYPwwJ5l5Kj0y28MAtObQ0
	JP0a6tg2D0pw4+C41baTv1ocA6h1VtvW+B1ouAwhJB9ydajdrNjsiXUKRc1hKBHyVl2fvuWLY2jHq
	qonq/rRBTH/6p0yWP4dJMKrKfWY3PwU1M3edtAxo8XqbDzPvZJvUvoXXSkfeAV4qytVMFtlJqSx+2
	g0xWI+2XZJ+L0vm6k4/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS84k-00015z-Fl; Tue, 05 Nov 2019 23:17:26 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS84c-00015D-Fn
 for linux-mtd@lists.infradead.org; Tue, 05 Nov 2019 23:17:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MF1gmQNMINgSb7qk7ZK6IFT299rloL/UCQcPom4InPI=; b=jawZ/KKO0IFX4HKp9lNWqFIJ/z
 h5W0MWhFxyJD2LQLaOyARZAk2a8PS+Yt1HQPwycggfS5JTV5Ma6vHYBIyn30ig9mEjqUqxR6V09S6
 /xOl+MbwZ+n+y+EueIfh76XryNNMtVmDC0poVRIFfKE9kBgl8QikWQLHLJT/cjpRWHsQ=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.92.2)
 (envelope-from <andrew@lunn.ch>)
 id 1iS84T-0004vG-MK; Wed, 06 Nov 2019 00:17:09 +0100
Date: Wed, 6 Nov 2019 00:17:09 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH] mtd: devices: fix mchp23k256 read and write
Message-ID: <20191105231709.GB12610@lunn.ch>
References: <20191030113957.1625342-1-angelo.dureghello@timesys.com>
 <20191105194122.4dcee126@xps13>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191105194122.4dcee126@xps13>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_151718_526074_E19421F5 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: richard@nod.at, linux-mtd@lists.infradead.org,
 Angelo Dureghello <angelo.dureghello@timesys.com>, vigneshr@ti.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, Nov 05, 2019 at 07:41:22PM +0100, Miquel Raynal wrote:
> Hi Angelo,
> =

> + Andrew
> =

> Angelo Dureghello <angelo.dureghello@timesys.com> wrote on Wed, 30 Oct
> 2019 12:39:57 +0100:
> =

> > Due to the use of sizeof(), command size set for the spi transfer
> > was wrong. Driver was sending and receiving always 1 byte less
> > and especially on write, it was hanging.
> > =

> > echo -n -e "\\x1\\x2\\x3\\x4" > /dev/mtd1
> > =

> > And read part too now works as expected.
> > =

> > hexdump -C -n16 /dev/mtd1
> > 00000000  01 02 03 04 ab f3 ad c2  ab e3 f4 36 dd 38 04 15
> > 00000010
> > =

> =

> Looks fine by me, just added Andrew in case he wants to review the
> patch as he was the original committer.
> =

> Anyway you're missing a Cc: stable and Fixes tag on
> 5dc17fa6fb70 ("mtd: mchp23k256: Add driver for this SPI SRAM device")

Hi Miqu=E8l

This is the wrong fixes tag. The correct one is

Fixes: 4379075a870b ("mtd: mchp23k256: Add support for mchp23lcv1024")

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
