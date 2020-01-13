Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C71A71393B0
	for <lists+linux-mtd@lfdr.de>; Mon, 13 Jan 2020 15:28:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=urKFFJiq1y1sQH05D9+wbBHzU6qHZ03LjduQolrK3iM=; b=W3BCNgcRR7S1M3RnOHEvJbPyb
	zr1UmXjT5FkxRPKgTbLCygkzrr4J956a1iNCMRTIU/P/alFik5vn6Pjte7WZ0Gi5NGKcSGuNWZB6/
	hdRHAxf6/3tUkxW+pLszGkeSOE0TKmP01K2T5ihRYIGw4dboBsRrGeZ5fDJ0Dw1OBV9fVyh1aErBY
	dd/Ez/kztvxp0Y/dsBAY/EkWzajJVy/kQbQjVB1uler8iKrnoSNOaDb3ErCQFqidcGFBAKFHy5LyY
	cJ81vBBLHlVG9wtZ7P57xhwCPqZi+FjvsGuvD5jgAKlVAL4umYitp6pdulo8PV1WqqDZe+a86FiQ7
	y/l6tBe0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir0hT-0007kC-3m; Mon, 13 Jan 2020 14:28:15 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir0hK-0007jK-NG
 for linux-mtd@lists.infradead.org; Mon, 13 Jan 2020 14:28:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gI+gQL3pn7zMuCRzTvhyLR0rFsc7ORADzwCGXynvWCY=; b=J4HQCkmv5+4IoZU8+rmZFPCmr
 RjSnBLNhkSx+oYkIe0rQIqn+BusQ/aUEwMmsXdwifyEALwkwVaInpZIAE7DAeqRFoxqRc1PmqeVOP
 V8sKprrraFLtSt0PyG0LDwO6AX2Y1yuJtU29anR8mpuMJWlA3YV0u3dxOlJ6Gc0hWhCwI=;
Received: from fw-tnat-cam7.arm.com ([217.140.106.55]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1ir0h8-0002lN-Pj; Mon, 13 Jan 2020 14:27:54 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 2ED9CD01965; Mon, 13 Jan 2020 14:27:54 +0000 (GMT)
Date: Mon, 13 Jan 2020 14:27:54 +0000
From: Mark Brown <broonie@kernel.org>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Subject: Re: [PATCH v2 2/3] spi: Add HiSilicon v3xx SPI NOR flash controller
 driver
Message-ID: <20200113142754.GL3897@sirena.org.uk>
References: <20200109212842.GK3702@sirena.org.uk>
 <df67b562-7d82-19f6-7581-680190a7772d@huawei.com>
 <20200110140726.GB5889@sirena.org.uk>
 <6db83881-927c-d11c-9c77-23a45892ddab@huawei.com>
 <20200110193119.GI32742@smile.fi.intel.com>
 <612a3c5d-69a4-af6b-5c79-c3fb853193ab@huawei.com>
 <20200113114256.GH3897@sirena.org.uk>
 <6dd45da9-9ccf-45f7-ed12-8f1406a0a56b@huawei.com>
 <20200113140627.GJ3897@sirena.org.uk>
 <CAHp75VfepiiVFLLmCwdBS0Z6tmR+XKBaOLg1qPPuz1McLjS=4Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHp75VfepiiVFLLmCwdBS0Z6tmR+XKBaOLg1qPPuz1McLjS=4Q@mail.gmail.com>
X-Cookie: Programming is an unnatural act.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_062806_765110_EF5274C9 
X-CRM114-Status: GOOD (  14.24  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: liusimin4@huawei.com, chenxiang66@hisilicon.com,
 John Garry <john.garry@huawei.com>, linux-spi <linux-spi@vger.kernel.org>,
 Linuxarm <linuxarm@huawei.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Marek Vasut <marek.vasut@gmail.com>,
 "open list:MEMORY TECHNOLOGY..." <linux-mtd@lists.infradead.org>,
 tudor.ambarus@microchip.com, Jiancheng Xue <xuejiancheng@hisilicon.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 wanghuiqiang <wanghuiqiang@huawei.com>, fengsheng5@huawei.com
Content-Type: multipart/mixed; boundary="===============6281823099320252311=="
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


--===============6281823099320252311==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rnP2AJ7yb1j09OW/"
Content-Disposition: inline


--rnP2AJ7yb1j09OW/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jan 13, 2020 at 04:17:32PM +0200, Andy Shevchenko wrote:
> On Mon, Jan 13, 2020 at 4:07 PM Mark Brown <broonie@kernel.org> wrote:
> > On Mon, Jan 13, 2020 at 01:01:06PM +0000, John Garry wrote:
> > > On 13/01/2020 11:42, Mark Brown wrote:

> > > > The idiomatic approach appears to be for individual board vendors
> > > > to allocate IDs, you do end up with multiple IDs from multiple
> > > > vendors for the same thing.

> > > But I am not sure how appropriate that same approach would be for some 3rd
> > > party memory part which we're simply wiring up on our board. Maybe it is.

> > It seems to be quite common for Intel reference designs to assign
> > Intel IDs to non-Intel parts on the board (which is where I
> > became aware of this practice).

> Basically vendor of component in question is responsible for ID, but
> it seems they simple don't care.

AFAICT a lot of the time it seems to be that whoever is writing
the software ends up assigning an ID, that may not be the silicon
vendor.

--rnP2AJ7yb1j09OW/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4cfmkACgkQJNaLcl1U
h9C9SAf/QUGxpHCyO2c4xltDoYDcAjrwD0T5cZM7n1f3yKywuxkpNt6pJtFXI0Vy
pHN6G5MnEma6TGY+6gO6mfUwgMeMedj8jy8ZlEhWNWEigXKm09SXXf7cNhz/z27G
UFyxXenpV0xU9839bZ7PfRqgFGhQTOaXCbpqGiL+N9dU0V+jzkpMSL30FJFa8acS
WSMZlt54a1f462AQepyauxqdCJ5/krBwV2/z1xRJ5z0NwlrqqYWWr77AoZP0chuL
mjQWulsjgyUGRN7OIt9S51bHPF82uUg+rYKkNLZGmeAz2jVf1nI73h4T88NTlj9H
msiLxupn8vvcpRM9fc5sYSH6Y0Zmcw==
=y+l1
-----END PGP SIGNATURE-----

--rnP2AJ7yb1j09OW/--


--===============6281823099320252311==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

--===============6281823099320252311==--

