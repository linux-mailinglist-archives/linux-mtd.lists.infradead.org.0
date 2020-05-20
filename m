Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8FB1DB3EB
	for <lists+linux-mtd@lfdr.de>; Wed, 20 May 2020 14:43:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rjhIoLzHTRSdJ2DTyw/TmaL1S18n1ii/KhzvTydsQg8=; b=reSuMFNNEsgJ9HIxsINBatQZP
	xFmAZgoGHlTeTZJy4X9aKWzsmM9rfT3HhtBC/xuuOUZ65g9FEkCIG1pejQAYqF5LXjTlDG5BQGMfv
	Xq8PbX+OEWekpN6GEwX8lyCuNYVTuIDXD636aslnLqnIkvN/2fDaP/6e5mWuVBmZ8k7qcWIdiZmQh
	uHPdqR4KFtp1q4iV/bwupTxzxV5VDDGLAANVUImCHxAuRZFzD7V8qwRZiIcS4P+WP0s5XghE9Q+6F
	3mJ2p186Qgb2aJRY4aum7qtRYXnYc4Uf/MRtGcoNPrro6wqyUrivbC4xU7TK1gUB8uypjemKyIo73
	b0rBqa5jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbO4Y-0002Ja-01; Wed, 20 May 2020 12:43:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbO4K-0002IE-Qb
 for linux-mtd@lists.infradead.org; Wed, 20 May 2020 12:43:37 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D9FB7207C4;
 Wed, 20 May 2020 12:43:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589978612;
 bh=Achw6u2biUSzYpt7lckAtUxEhj9ckmJi3eP9xb6WHM8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sHUEOW2Tvnp1JASks+INQpiCZxdRRlpi7pMkV2c3FlYjsMlLlMU4WAh9mIFLtuZNd
 Ck1KI6uFONv+G7ViQs+cZ9Sv3/Ars8HUbL3YbReqMQWoLEArdvnKjMNB2LFAcNsOfI
 Qu1e2EmwbdB/uz+Dlc+qffoS9PCwskOnBEHYbKKY=
Date: Wed, 20 May 2020 13:43:29 +0100
From: Mark Brown <broonie@kernel.org>
To: "Ramuthevar,
 Vadivel MuruganX" <vadivel.muruganx.ramuthevar@linux.intel.com>
Subject: Re: [PATCH v2 1/1] dt-bindings: spi: Add schema for Cadence QSPI
 Controller driver
Message-ID: <20200520124329.GF4823@sirena.org.uk>
References: <20200520123612.11797-1-vadivel.muruganx.ramuthevar@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <20200520123612.11797-1-vadivel.muruganx.ramuthevar@linux.intel.com>
X-Cookie: You can't get there from here.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_054332_884335_DCB00B43 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: cheol.yong.kim@intel.com, robh@kernel.org, vigneshr@ti.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-mtd@lists.infradead.org, qi-ming.wu@intel.com
Content-Type: multipart/mixed; boundary="===============4499607590415629901=="
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


--===============4499607590415629901==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oFbHfjnMgUMsrGjO"
Content-Disposition: inline


--oFbHfjnMgUMsrGjO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 20, 2020 at 08:36:12PM +0800, Ramuthevar,Vadivel MuruganX wrote:
> From: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel=
=2Ecom>
>=20
> Add dt-bindings documentation for Cadence-QSPI controller to support
> spi based flash memories.
>=20
> Signed-off-by: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@li=
nux.intel.com>
> ---
>  .../devicetree/bindings/mtd/cadence-quadspi.txt    |  67 -----------
>  .../devicetree/bindings/spi/cdns,qspi-nor.yaml     | 133 +++++++++++++++=
++++++

The changelog says this is adding a new binding but the actual change is
mostly a conversion to YAML.  Please split the additions out into a
separate change, ideally doing that before the conversion since there is
a backlog on review of YAML conversions.

--oFbHfjnMgUMsrGjO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7FJfEACgkQJNaLcl1U
h9Dl3Qf+LTw6kS7EVKhUNveex8WPCXk8hJiM52SWUTX/njGNYrVCplAyGQd9Hnvk
bTc+7RDW6mAQ7Hum+CIJzNb7DgJQGCV9MEQ4V/f+/lhDAvNI5x0QSPBLZp9DOI1b
RA/tyCJfh4hwm9RtoK1HT4sDhvFGQR3Sb/nMpVlkZPLd1Jpox5zuuDaCOJEJHAKb
Gss5uyXiON9Qk5ee4vwrIykntpBN/snP1b/FBZf8d0xzw01nfm2lsrAHQMk6n4CJ
oxSL8dArY7vq1ZkNUKNE5qkn0Y6VRjohPZzzc8evRtLR3xaQl+FwAsllDH5VMWTP
oa4tOoSbipP93UpzOvMah+tPGuguUA==
=IU1B
-----END PGP SIGNATURE-----

--oFbHfjnMgUMsrGjO--


--===============4499607590415629901==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

--===============4499607590415629901==--

