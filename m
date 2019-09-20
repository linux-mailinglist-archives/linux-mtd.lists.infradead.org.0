Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21FCCB8AF7
	for <lists+linux-mtd@lfdr.de>; Fri, 20 Sep 2019 08:19:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IK0J+KqXB25v8H9yjvm1ZcNpWpM3MfEEzCMCIuGIIPc=; b=P2UN8/f0zwl4Og85ka0HJVxJE
	mojEATeKvZ0fbwtnXhkhVzDJBaHeMlPy+rVIxbazDRf2gsRc6Uk/lRNtinsK61lgAlb2n+835XiEz
	C5QLKp7Ala6CIrjfUcUtaJrOHDUgnadsuKt3jYReKaOISVn8JChaDtgjboZ5YkXykbHy1ebmdySY8
	zX5r07C0N2kJURX49iEbIlvzWhWMdukNsgeebh0NLGb9nWlnxVbgpvdOev46EqcdX3+BTTapvl3dC
	5+kaTa1gZSwcTIh91wTFK4foJiyB7h0Cb/wrMmFh4a6jO3JFCTAntaGal3QUZ8ao8NKdhstasXyX1
	lPOSisLjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBCGc-0007aa-Oz; Fri, 20 Sep 2019 06:19:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBCFk-0007Ni-Aw; Fri, 20 Sep 2019 06:18:49 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 99106207FC;
 Fri, 20 Sep 2019 06:18:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568960327;
 bh=KcAebIXSYp8b9lRvXplaO8s3pItLMaq3tc+Ec3XpVE0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TR+ed+Lavp7g5oUm2JMw8SGLPKwZhpu3k73MXCD0V1pcUyaaAEvh3wp1WyBFOHWiF
 eFqsgN+bxo1+rl3OV6NKrZpDfvMy5CsVSnmJaCEkyCC4tglhxfpw7zX671OYKG+fvn
 XH2tWc218o6eO2lLOR07rkRQsnjAfshApR9cobaA=
Date: Fri, 20 Sep 2019 08:18:44 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v3 20/40] mtd: rawnand: Get rid of chip->ecc.priv
Message-ID: <20190920061844.7ejin5lezzgtayjv@gilmour>
References: <20190919193141.7865-1-miquel.raynal@bootlin.com>
 <20190919193141.7865-21-miquel.raynal@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20190919193141.7865-21-miquel.raynal@bootlin.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_231848_441951_458BFC7B 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mason Yang <masonccyang@mxic.com.tw>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>, Julien Su <juliensu@mxic.com.tw>,
 Richard Weinberger <richard@nod.at>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 Paul Cercueil <paul@crapouillou.net>, Marek Vasut <marek.vasut@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Boris Brezillon <boris.brezillon@collabora.com>,
 linux-mtd@lists.infradead.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5238773019930619707=="
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


--===============5238773019930619707==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6jdzf7k7sklp3y4k"
Content-Disposition: inline


--6jdzf7k7sklp3y4k
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Sep 19, 2019 at 09:31:20PM +0200, Miquel Raynal wrote:
> nand_ecc_ctrl embeds a private pointer which only has a meaning in the
> sunxi driver. This structure will soon be deprecated, but as this
> field is actually not needed, let's just drop it.
>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Chen-Yu Tsai <wens@csie.org>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

--6jdzf7k7sklp3y4k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXYRvRAAKCRDj7w1vZxhR
xT/9AP9hPYNC1vd9mXI2aIqaGbFrvA9ckWWn5+w+FGLZKM59lgD+JhtG3YhgR4/V
ncbX0KIagGMd9K932lX4fqepXLwXcwA=
=i1nu
-----END PGP SIGNATURE-----

--6jdzf7k7sklp3y4k--


--===============5238773019930619707==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

--===============5238773019930619707==--

