Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A85541DCB80
	for <lists+linux-mtd@lfdr.de>; Thu, 21 May 2020 12:57:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3uGpmQ2xXIbN7q0RjD6ilj3spDfd2pcwOVgbM/XMMII=; b=ku30WrxF1pj3AqVktrhDqBOd6
	QKow0dZIR4QSBAFgqDeoPGDDflK3yEVTrVjcWdEnssDX5ReLJCw5pjk4K+QH2eUwAqR6XNaL/9SWe
	NHOp/Vx7VZVCoYKjSIlwld4oKsUOZ2fXY/KaBJ1qsfutLyzhD5XvCMsvtXH2T5CIrxlVg5rvHNsWe
	dXMgd2kZlH2iUJe1CulcvIM1jVbTwIviyMRGnh0KpzrhWVEf6bYxt/ib+nL2x1+a6rou8z2qqxIve
	cpPHCEj30f5CeOBhww7BHm/Ynsg8UuGjWYwu6Gi185stg8v65A+oIArcPosIiujXROk8Ou5E3nK6L
	rlPlCBQyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbisj-0003zz-Am; Thu, 21 May 2020 10:56:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbisb-0003zf-QC
 for linux-mtd@lists.infradead.org; Thu, 21 May 2020 10:56:51 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D1F30206F6;
 Thu, 21 May 2020 10:56:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590058609;
 bh=seW5V778px/AgzonYSOezyKQVmV3Co7HCNgbinTsjyg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jZbg4vvcLz0BWO3+7f3IRMU9tzhJygn8ioscFP/ZqnGFrF8ie91HV+nRvRe7qZKIL
 S4NZZiLfJgP7Eo4tw1u7++Vd48k3aP42ktKeKc4oOt/epvOoOm3tlg+XEVahGyWWCX
 SCivWjO4FdwbrEKnERNBtyqMub/z9gqjdOyvQsgw=
Date: Thu, 21 May 2020 11:56:46 +0100
From: Mark Brown <broonie@kernel.org>
To: "Ramuthevar,
 Vadivel MuruganX" <vadivel.muruganx.ramuthevar@linux.intel.com>
Subject: Re: [PATCH v2 1/1] dt-bindings: spi: Add schema for Cadence QSPI
 Controller driver
Message-ID: <20200521105646.GA4770@sirena.org.uk>
References: <20200520123612.11797-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200520124329.GF4823@sirena.org.uk>
 <fd086da7-7e18-83bc-d423-56095b0cff96@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <fd086da7-7e18-83bc-d423-56095b0cff96@linux.intel.com>
X-Cookie: Keep your laws off my body!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_035649_867071_BA05FA01 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: cheol.yong.kim@intel.com, robh@kernel.org, vigneshr@ti.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-mtd@lists.infradead.org, qi-ming.wu@intel.com
Content-Type: multipart/mixed; boundary="===============6627168544161533690=="
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


--===============6627168544161533690==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="0OAP2g/MAC+5xKAE"
Content-Disposition: inline


--0OAP2g/MAC+5xKAE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, May 21, 2020 at 10:18:26AM +0800, Ramuthevar, Vadivel MuruganX wrote:
> On 20/5/2020 8:43 pm, Mark Brown wrote:
> > On Wed, May 20, 2020 at 08:36:12PM +0800, Ramuthevar,Vadivel MuruganX wrote:

> > >   .../devicetree/bindings/mtd/cadence-quadspi.txt    |  67 -----------
> > >   .../devicetree/bindings/spi/cdns,qspi-nor.yaml     | 133 +++++++++++++++++++++

> > The changelog says this is adding a new binding but the actual change is
> > mostly a conversion to YAML.  Please split the additions out into a
> > separate change, ideally doing that before the conversion since there is
> > a backlog on review of YAML conversions.

> Initially was sending the only YAML file alone, then reviewers suggest to me
> do this way so I did, next by split the patches like below...

> 1. remove the cadence-quadspi.txt (patch1)
> 2. convert txt to YAML (patch2)

That doesn't address either of the issues.  The removal of the old
bindings and addition of the YAML ones needs to be in a single patch
doing that conversion.  What I'm suggesting should be done separately is
whatever changes to the semantics of the bindings you are (according to
your changelog) doing.

--0OAP2g/MAC+5xKAE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7GXmsACgkQJNaLcl1U
h9BdFwgAgFljcWTcMb6Us4MfVHcgy1YEqUmIwGaqY2UIBzMVQryRSOVEhQ4rpXHl
axvDWQGwewuHB1d0UU8Ec+YKWRJl/MYTCtmTHuE4OYL5ZY1YCM5udJ05u/8FuWB6
Z1Pqt3iJ/QHc76gNqZ+BXnUMGh222ixJSSci5lTKkznlratWhtyz1wJU8IJ2I+M1
zRwl78qMsTvBE8abg7NBXHMlQae0yQVcr0ndYjJkx8z/5C6RvFQ+WGCPjf+xTH7E
IEQxy2zRFVI5EJjofGLCDWitAZSLDULZqh0LObpKRJN6X9aOriK+dQzSVAH2EhvE
ElA/2sH+NZpcz19Wlp6+U+5xNYTNqw==
=Xvew
-----END PGP SIGNATURE-----

--0OAP2g/MAC+5xKAE--


--===============6627168544161533690==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

--===============6627168544161533690==--

