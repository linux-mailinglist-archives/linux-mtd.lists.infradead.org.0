Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC26716A56E
	for <lists+linux-mtd@lfdr.de>; Mon, 24 Feb 2020 12:46:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xyjuJUHhZOkT/D9nhNbyBjbLZV0/q8JEHKzIFzGMscY=; b=e/p2X6rHcf7e1Z/m52K1TpAw9
	IjRdShodCkjFb7i1IoAdz6IrkR0VmB7RJvEqAkEEqg5W4ThDjeeq2A2nd0V1KC29ZinHA7CldkLTf
	tHbldD3tPYwfeCSios+qLxoDDBHquq30tllDOg+qvSwoeoSngMcYCdjd5sd8+37ey4gAeYYzMrWnD
	okltyQt7ZpPUdZV9b/nSoTuwWjgnMb4eFOH83s9m3fgQqt3K7XueQ4184fAWyys9Lhb3FpLmDhF0S
	gHIpxjfkxCQB2Bhh3uz0s9KZYiq52BUXFUZYZxywk+bohGebx1o/BItqCddB6NUgFCejb5xu4pP0o
	N9v8M6piQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6CBW-0001fG-Pb; Mon, 24 Feb 2020 11:46:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6CB7-0001Ue-SR; Mon, 24 Feb 2020 11:45:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 12FB530E;
 Mon, 24 Feb 2020 03:45:34 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 66C063F534;
 Mon, 24 Feb 2020 03:45:33 -0800 (PST)
Date: Mon, 24 Feb 2020 11:45:32 +0000
From: Mark Brown <broonie@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH] docs: dt: fix several broken doc references
Message-ID: <20200224114532.GC6215@sirena.org.uk>
References: <0e530494349b37eb2eab4a8eccf56626e0b18e6d.1582448388.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
In-Reply-To: <0e530494349b37eb2eab4a8eccf56626e0b18e6d.1582448388.git.mchehab+huawei@kernel.org>
X-Cookie: How you look depends on where you go.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_034537_964241_59DA0CD7 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
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
Cc: alsa-devel@alsa-project.org, Olivier Moysan <olivier.moysan@st.com>,
 =?iso-8859-1?B?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Vignesh Raghavendra <vigneshr@ti.com>, devel@driverdev.osuosl.org,
 Jonathan Corbet <corbet@lwn.net>, Richard Weinberger <richard@nod.at>,
 Piotr Sroka <piotrs@cadence.com>, devicetree@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-spi@vger.kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, netdev@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: multipart/mixed; boundary="===============2876462954138368862=="
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


--===============2876462954138368862==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DIOMP1UsTsWJauNi"
Content-Disposition: inline


--DIOMP1UsTsWJauNi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Feb 23, 2020 at 09:59:53AM +0100, Mauro Carvalho Chehab wrote:
> There are several DT doc references that require manual fixes.
> I found 3 cases fixed on this patch:
>=20
> 	- directory named "binding/" instead of "bindings/";
> 	- .txt to .yaml renames;
> 	- file renames (still on txt format);

This seems like it should've been split up a bit.  :/

Acked-by: Mark Brown <broonie@kernel.org>

--DIOMP1UsTsWJauNi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5Tt1sACgkQJNaLcl1U
h9CeXgf/ee/xxhTgqVSMNL+gDYl+cgPqn0CVS5ynzTQm6XlCEEXDBneO8oAyMs9Q
B35qG/r62a8QVrA/l3LzqVMhLlv8zL4iGOheD5+eZ6gHnMv7lPajWNmGOfnMJd9H
UKLDbTT2i5G+9z8eCMtms1XURh+HwDOazAYv0AivApzVodTmO2psgQP1QLL2OzJL
LPC4wm0qrtgar4rno/OfhGR/wyJfJKLE7MqnJ73wcaO5fZ48mtXx0mZwh3aJqtxe
3inu1PkxuHNSlxEIMHFKg8Tvg/cGD1vngJEwsEZ8AJ+bTOcI8HX+goLuAyNwTG6F
VynhL1Jdiscm+V62nRat6prHHhzWBw==
=WoRy
-----END PGP SIGNATURE-----

--DIOMP1UsTsWJauNi--


--===============2876462954138368862==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

--===============2876462954138368862==--

