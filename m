Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCDC317235C
	for <lists+linux-mtd@lfdr.de>; Thu, 27 Feb 2020 17:29:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=49xUrga5j3Vkc7ZIsRJfg+0aVHyNQQwMeVv+AzT3ohY=; b=ME7t6SWsmZowEGa40LhCvFglb
	2Rn/REOGStW/GRHCP2khNCS0/gccuAW1D8JsGRAGx5DLvu2Lg6gvRlyfaPTfpXob/q1uq+rcUfVQP
	PFRbsY5VrOntHMGE74wmfmHv6gAmRz0as4qjHBSEB4pjhUJNYvbLHiIXQAPZjwzpcYgqvUGXfSv0A
	6g0g2waGk7VUbu5q3bwRBK1hpKzBLUu0wmGu3KuSWkJ62x4g5pEBX8EHqXt/MxqTxhBPwpt5Ia0Kh
	kWGfplkZG/yEcHi1DdPd5bZPMIl8pje2RZiatp17OQGrFhmQlBZ73V6PrwrOGZYDd2yYcKJPJrtF+
	qqcCE+MvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7M1y-0007RM-KS; Thu, 27 Feb 2020 16:28:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7M1l-0007Pt-4Y
 for linux-mtd@lists.infradead.org; Thu, 27 Feb 2020 16:28:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 858671FB;
 Thu, 27 Feb 2020 08:28:44 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F12813F7B4;
 Thu, 27 Feb 2020 08:28:43 -0800 (PST)
Date: Thu, 27 Feb 2020 16:28:42 +0000
From: Mark Brown <broonie@kernel.org>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v2 01/11] dt-bindings: spi: allow expressing DTR capability
Message-ID: <20200227162842.GE4062@sirena.org.uk>
References: <20200226093703.19765-1-p.yadav@ti.com>
 <20200226093703.19765-2-p.yadav@ti.com>
 <20200227171147.32cc6fcf@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20200227171147.32cc6fcf@collabora.com>
X-Cookie: Edwin Meese made me wear CORDOVANS!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_082845_240774_60C595AB 
X-CRM114-Status: GOOD (  10.01  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>, Pratyush Yadav <p.yadav@ti.com>
Content-Type: multipart/mixed; boundary="===============8231614862037215551=="
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


--===============8231614862037215551==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="y2zxS2PfCDLh6JVG"
Content-Disposition: inline


--y2zxS2PfCDLh6JVG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Feb 27, 2020 at 05:11:47PM +0100, Boris Brezillon wrote:
> Pratyush Yadav <p.yadav@ti.com> wrote:

> > Allow spi devices to express DTR receive and transmit capabilities via
> > the properties "spi-rx-dtr" and "spi-tx-dtr".

> Is the RX/TX granularity really useful?

It's what we do for other properties, and if this is anything like the
other things adding extra wiring you can't assume that the ability to
use the feature for TX implies RX.

--y2zxS2PfCDLh6JVG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5X7jcACgkQJNaLcl1U
h9A5kgf/Y0DRJYdf4AUiGakcZO9I33l1RhLd5LtXAlID2YL52F81QjI/Uh6tRy8r
6otcXAH1qzNwt2nV9Rsns7oy/Em4FpAf248Syn9SZiGE5JtiAS3opEuoAxKeJ604
JNMbbAB/6AdKeIN3HrtjEb560Ht2WF9EEkrA5L45YYC6uHNf3YD1QseYg5l88d/K
0g/2qCx8TpynDd2YEKAxBjExG6u4MK2pRtJBMZSAO/Ky3foUaUxUy/jBne/8IF+8
6/YhGyxrXmJoklyW8KFJsPYNuR6pKAyl769Gy0w9KNvvs+O4cuBrVMxP+EUOwWbt
OdSZ0ur//F4vDI6KkaOrG2YCg2r7Nw==
=OoLn
-----END PGP SIGNATURE-----

--y2zxS2PfCDLh6JVG--


--===============8231614862037215551==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

--===============8231614862037215551==--

