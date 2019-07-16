Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C700B6A705
	for <lists+linux-mtd@lfdr.de>; Tue, 16 Jul 2019 13:10:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ga5JwSeDPxzdwnJ4iIO1ooEu+Hs5XINxFlT/5Vnj1Tk=; b=BG/SbGlXU9I5N0QlEr1iAkk3A
	WigEbg96inlSkzRv0+YA3hmolUfx6rXfJgZEOyf3CBVzqDyXtuDxnG8PDVgrxM9gtDja/Zrb1oxtE
	Homsm5BVvewx4wPJ7JAyU6r4AHvMRvgNch3QS8Rm2U/GJR16+hSDbbJnj7H9G26l0+Ja5O4E82awL
	A8jk/wL+2UxcPIZOGwzCEdDdAaiBjzSRG3ytxuQEYc9G/mzXEYjQcf91p4sJBxvx2X2zxu59XDNWn
	s0rfN1UbRefGF32Gr5w0rfEkQ7o4fT9OiD8MQd/OBuxNkz3ABqSA8V2nEafBqKw7Vokndiuv4Yf4U
	v4nwSu1kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnLLW-00077c-Un; Tue, 16 Jul 2019 11:10:11 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnLL9-00075f-Fc
 for linux-mtd@lists.infradead.org; Tue, 16 Jul 2019 11:09:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GTNttLKfykU0fMB8TWGXww71EUURBDV6zbj9y9y9CVY=; b=Stdaqrb4Nzvjz4Bj7OxsqHHhD
 +Td7CdZOlzO+ek+Wlj1/FC/WJHeQ9gSPUYQBkEz/5sipVYr/hPyWPqlS7cSDQnO+iL3ns21zEDaGi
 3VvzwyAvDJ+Chvj8tqRy5yeKmx6ZrWTp1EMApgzMNqNyFnCUcN19Mpy6CuXjZ4JswoqRQ=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hnLKz-0004Sl-R4; Tue, 16 Jul 2019 11:09:37 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 9164A2742C01; Tue, 16 Jul 2019 12:09:36 +0100 (BST)
Date: Tue, 16 Jul 2019 12:09:36 +0100
From: Mark Brown <broonie@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: Ensure child nodes are of type 'object'
Message-ID: <20190716110936.GA5428@sirena.org.uk>
References: <20190715230457.3901-1-robh@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20190715230457.3901-1-robh@kernel.org>
X-Cookie: May be too intense for some viewers.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_040947_560511_799BC1F8 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Vignesh Raghavendra <vigneshr@ti.com>,
 linux-gpio@vger.kernel.org, Maxime Ripard <maxime.ripard@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 Marek Vasut <marek.vasut@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 linux-mtd@lists.infradead.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: multipart/mixed; boundary="===============8167274046766727766=="
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


--===============8167274046766727766==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="UugvWAfsgieZRqgk"
Content-Disposition: inline


--UugvWAfsgieZRqgk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jul 15, 2019 at 05:04:57PM -0600, Rob Herring wrote:
> Properties which are child node definitions need to have an explict
> type. Otherwise, a matching (DT) property can silently match when an
> error is desired. Fix this up tree-wide. Once this is fixed, the
> meta-schema will enforce this on any child node definitions.

Acked-by: Mark Brown <broonie@kernel.org>

--UugvWAfsgieZRqgk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl0tsG0ACgkQJNaLcl1U
h9DgRwf/RVQwM4uJZfc77Bg1QUPRV93uCJ6maAGlUjFImP1U0fpoRuD/zNm5kiIp
hJhe5TMTX5ua+ajO5DV9S4HD4tRJBv5imHYgx7edGX0XnD6uBhO/Fx91okJhKb54
hmWEPpZyjursasR/A6HjQi6+OYEnCqrMoTenaZQZ/R7MlS8Z57C5m8slR9m1tSBp
xam5qvxG3pn5oNarJlCWF9VcVmZckekdU+qutRLVc3xH8bCF6pjfyR5E1M+qRJV6
av5KFLsTopgBECl4QPHGqIXqhegIjWyeqeMC69s7Nh8pDFpLIwFJfXd7x7UGStgS
RrPGZDcB2vfMfsXwQAGfu5lyMqkYJA==
=IEmg
-----END PGP SIGNATURE-----

--UugvWAfsgieZRqgk--


--===============8167274046766727766==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

--===============8167274046766727766==--

