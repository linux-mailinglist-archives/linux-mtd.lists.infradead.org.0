Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB16200765
	for <lists+linux-mtd@lfdr.de>; Fri, 19 Jun 2020 12:57:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4laJfPX14B/My268QA/wpEOwzikH1huj/Aj/ot3oH5U=; b=GDlXv9wVRDbhdHokORkVbp4kr
	0JnDFSgcgZhiXOTAjPem0EM0XWs9wodIYKbI3ECrGpDuFKa7UpoVEerpfHmMFBjBeYXfNa64h1MVD
	kNdjEq+OeLjRNyUFOBAL5dxcLockWsMfZGYfBKa9HaEhtOZymYlVDrz18EX+Ae7btJZ2vSBH+EgAa
	nib2u1BtXJHxdW9QJOr6RUqMRClfsa87o2XOmNApanzgHsk7Sy+HY7N1fiqAEfVyfSsFqyWGRIxSF
	O6XYDVqY/Gnbg8ttFBK/Xtl8TOCm2DMFADRV+JnyqysYdsSSsoHxpQrglViOwtHg+x25u78Xofn5k
	5Pv0Kvo5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmEiH-0004SZ-MT; Fri, 19 Jun 2020 10:57:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmEhl-0004C6-Ky
 for linux-mtd@lists.infradead.org; Fri, 19 Jun 2020 10:57:08 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CC20F208B8;
 Fri, 19 Jun 2020 10:57:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592564225;
 bh=GIHyfpmtdoRnt3hDj/nrol1WQSHP0lZsUz5oCSQRoFE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eTZQjOiCjsnAWqGElToyVGFjzvqVCb/t+eXA9fjVbDOLAR6m04xz7b4CIs7V1Tb6Q
 +xx/zDBVQws+RSMSrIN092I7dpmGVa7v3U+cv3i2c+EyHViVfHSR7VkQq7sIsLV5Z4
 WqHzJDmVJINinn4sJN35OuS2KOMaBsuWGSbndLKo=
Date: Fri, 19 Jun 2020 11:57:03 +0100
From: Mark Brown <broonie@kernel.org>
To: Vignesh Raghavendra <vigneshr@ti.com>
Subject: Re: [RESEND PATCH v3 0/8] mtd: spi-nor: Move cadence-qaudspi to
 spi-mem framework
Message-ID: <20200619105701.GD5396@sirena.org.uk>
References: <20200601070444.16923-1-vigneshr@ti.com>
MIME-Version: 1.0
In-Reply-To: <20200601070444.16923-1-vigneshr@ti.com>
X-Cookie: Robot, n.:
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_035706_850798_54054015 
X-CRM114-Status: UNSURE (   8.37  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: marex@denx.de, simon.k.r.goldschmidt@gmail.com,
 Boris Brezillon <bbrezillon@kernel.org>, dinguyen@kernel.org,
 Tudor Ambarus <tudor.ambarus@microchip.com>, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org,
 Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>,
 linux-mtd@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7530124456439015654=="
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


--===============7530124456439015654==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="8w3uRX/HFJGApMzv"
Content-Disposition: inline


--8w3uRX/HFJGApMzv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jun 01, 2020 at 12:34:36PM +0530, Vignesh Raghavendra wrote:
> This series is a subset of "[PATCH v12 0/4] spi: cadence-quadspi: Add
> support for the Cadence QSPI controller" by Ramuthevar,Vadivel MuruganX
> <vadivel.muruganx.ramuthevar@linux.intel.com> that intended to move
> cadence-quadspi driver to spi-mem framework

Are people OK with me applying this to the SPI tree?

--8w3uRX/HFJGApMzv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7smf0ACgkQJNaLcl1U
h9AJCgf9FonwA/DZUb07wl0aFcbJGqHii8lawwyZEGqOYL9qHfuLpnXAowrmNewt
n5DwzQvxqRYNCIDJNb5+i81koko+UC2YsJWgqEZ4OkHVDVJeacnW2/YSHsZPTmHl
cko1Yi3YzBEe2+dGfAQBeToMgvhB8A4x336ktfToVGKYHLPTb9kyVr7x9+uxuK5G
cViQa7wLizddnx+U6RoMR26d0Ak8dw02Ckm8isA9wsJghbgczA1zWhtxXWlzvN9D
fPZduLohNH5Im33OnwHwJdp6o1eVoXYzPMkSco8bUW4BOBPQ3RZyhwPOyjdV+gzk
eZUVhlqqPIsCpspvPVSQ3uiCxe2Gyg==
=OeKp
-----END PGP SIGNATURE-----

--8w3uRX/HFJGApMzv--


--===============7530124456439015654==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

--===============7530124456439015654==--

