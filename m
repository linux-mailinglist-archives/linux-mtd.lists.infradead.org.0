Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 097601723C2
	for <lists+linux-mtd@lfdr.de>; Thu, 27 Feb 2020 17:44:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6MukuyCmqwSNyeLSwrNyEoAW/Xspfnoh9C/+fQa4PC0=; b=bzG1ve9IBST/+1zrMwQFv7iL0
	hAENMpP5YpmFeghk5XUoFTZx/99JVPycJUkvLGcagg44E4oZoqL1bB+2f9Jvgfrh5j6FUhBA4RtRT
	AVt+c0DnrKMtCViztDspP4T2Z4lu1T9jj/YcDzXI387GOeCzr3tW71MZk/lJXhLkRyzJYgbjdx5GF
	knqJwIHhqcgXXpfYo7gAl6geQ84m6mhU2bMvEeKx/vsKaewGPLZMJLT5J9D6mwQjL59zOmVCsmBtB
	4NxTVP74Gy6GdbSDI6NHxbDQ17qlL51VRVTfSN/2PB6OjIQ92qU1uWy49AzprP89gCg9D22nBHOO2
	THCwr+6Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7MHC-0005oE-5a; Thu, 27 Feb 2020 16:44:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7MGx-0005lg-Sh
 for linux-mtd@lists.infradead.org; Thu, 27 Feb 2020 16:44:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6C6DD1FB;
 Thu, 27 Feb 2020 08:44:27 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D6EA63F7B4;
 Thu, 27 Feb 2020 08:44:26 -0800 (PST)
Date: Thu, 27 Feb 2020 16:44:25 +0000
From: Mark Brown <broonie@kernel.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH v2 01/11] dt-bindings: spi: allow expressing DTR capability
Message-ID: <20200227164425.GF4062@sirena.org.uk>
References: <20200226093703.19765-1-p.yadav@ti.com>
 <20200226093703.19765-2-p.yadav@ti.com>
 <20200227171147.32cc6fcf@collabora.com>
 <20200227162842.GE4062@sirena.org.uk>
 <CAMuHMdWMCDzQm0tjpybJZyHy4imbC9NqRXP5d4C0xgxQx-Pf8g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMuHMdWMCDzQm0tjpybJZyHy4imbC9NqRXP5d4C0xgxQx-Pf8g@mail.gmail.com>
X-Cookie: Edwin Meese made me wear CORDOVANS!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_084427_968611_030D7619 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Sekhar Nori <nsekhar@ti.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-spi <linux-spi@vger.kernel.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Pratyush Yadav <p.yadav@ti.com>
Content-Type: multipart/mixed; boundary="===============2654085033766897617=="
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


--===============2654085033766897617==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1Ow488MNN9B9o/ov"
Content-Disposition: inline


--1Ow488MNN9B9o/ov
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Feb 27, 2020 at 05:40:31PM +0100, Geert Uytterhoeven wrote:
> On Thu, Feb 27, 2020 at 5:28 PM Mark Brown <broonie@kernel.org> wrote:

> > It's what we do for other properties, and if this is anything like the
> > other things adding extra wiring you can't assume that the ability to
> > use the feature for TX implies RX.

> Double Transfer Rate uses the same wire.

But is it still on either the TX or RX signals?

> But as you sample at both the rising and the falling edges of the clock, this
> makes the cpha setting meaningless for such transfers, I think ;-)

Might affect what the first bit is possibly?

> However, as the future may bring us QDR, perhaps this should not be a
> boolean flag, but an integer value?
> Cfr. spi-tx-bus-width vs. the original spi-tx-dual/spi-tx-quad proposal.

> What would be a good name (as we only need one)? spi-data-phases?

Sounds reasonable, apart from the increasingly vague connection with
something that's recognizably SPI :P

--1Ow488MNN9B9o/ov
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5X8egACgkQJNaLcl1U
h9BzNQf+NjXmaGigWO8AYKixlBbcKDms48SbjmC3B/TKWN72uzEK1Ir+m0zbDH/k
3rRhBD0UEIitRKr7B3yHGk5dJY0A3yZuSqsmXm6EW05qo65DwU2595xG4Q7lAk35
enegdQQEG9axlL02UaRgms5zlb7znVK/DqAqzjLB6NUv4AjBs8OJVK2RCLwXhvx3
c1W2kmWHZ5i9EXY21cCmQytqMlkJnOnHfYLoafYvVeqLFS1ddty4GNFsXdY+F14Z
EpXoakYtdKqZyX5SFRw6ymAZUU/O6qPiyv6ipnpOfu/pFazvJ+NByzx8FDy6bUEt
uOZ2YaN/cmD3HqhSb6dp4iTXWLLzzQ==
=jCkC
-----END PGP SIGNATURE-----

--1Ow488MNN9B9o/ov--


--===============2654085033766897617==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

--===============2654085033766897617==--

