Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 884EF175FC1
	for <lists+linux-mtd@lfdr.de>; Mon,  2 Mar 2020 17:33:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=toK14mY2/v1yRzZy2yaBRJ5hYetSzTeoWkFkcgLzwX0=; b=VkfrXVXTipkB7QkRAovrwsmhI
	3yvGPUrUsofngj+4lmKVE/W4bb07yfeyzDdkHZaSoAVXGwllG++7d4Is+liDyJtz1PGIyt/eCYIQy
	yI8DiWeUL3kCdpHrmBoh0ecwEkIHJ2lQIIq+EDsSpSmGZuXB/THjGQJL3+zsCTQ6xAt4GeGe9kwAG
	w0a2pO4jSMJQny6Ih1W1HSwl0xMZhD7Ktj0hvWFKMT3s20ckiGRBcYOwAesHspzafywJGFNVKogiM
	F9gw1CXYLVBNTUKOMxf/Sl0wlbdq4cu/WgfwoQilsDDJ/YXldaQZXVPhQFsnMFTNy9wT9PNtI1sDT
	KFgGBJnGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8o0T-00070B-UD; Mon, 02 Mar 2020 16:33:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8o0N-0006zs-UT
 for linux-mtd@lists.infradead.org; Mon, 02 Mar 2020 16:33:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 798BFFEC;
 Mon,  2 Mar 2020 08:33:19 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F22793F534;
 Mon,  2 Mar 2020 08:33:18 -0800 (PST)
Date: Mon, 2 Mar 2020 16:33:17 +0000
From: Mark Brown <broonie@kernel.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH RFC 1/3] spi: Allow SPI controller override device buswidth
Message-ID: <20200302163317.GH4166@sirena.org.uk>
References: <1582903131-160033-1-git-send-email-john.garry@huawei.com>
 <1582903131-160033-2-git-send-email-john.garry@huawei.com>
 <CAMuHMdV9v-7eRqi3JjcNaOBpRrC2-gLDCizYOJwhQCjZiLr5dA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMuHMdV9v-7eRqi3JjcNaOBpRrC2-gLDCizYOJwhQCjZiLr5dA@mail.gmail.com>
X-Cookie: Whistler's mother is off her rocker.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_083320_026239_F6E90010 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: John Garry <john.garry@huawei.com>, linux-spi <linux-spi@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linuxarm <linuxarm@huawei.com>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Content-Type: multipart/mixed; boundary="===============6097530852881675451=="
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


--===============6097530852881675451==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tT3UgwmDxwvOMqfu"
Content-Disposition: inline


--tT3UgwmDxwvOMqfu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Mar 02, 2020 at 05:12:05PM +0100, Geert Uytterhoeven wrote:
> On Fri, Feb 28, 2020 at 4:23 PM John Garry <john.garry@huawei.com> wrote:

> > A host controller driver might know this info from DMI tables, for example.

> Can't acpi_register_spi_device() obtain that info from DMI tables,
> to avoid contaminating the generic code?

The DMI tables are going to boil down to per board quirks which we
*could* put in the core but you end up with a lot of them and chances
are that at some point we'll end up with device specific quirks which
don't fit so well in the core.  Handling stuff in the drivers is fairly
idiomatic.

Much ACPI, so standards :/

--tT3UgwmDxwvOMqfu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5dNUwACgkQJNaLcl1U
h9AexAf/aeE9iGeVv7pH09/MjY36txVc4+qNNLl4dd0LN6yt222WVl1jNMjvWnTl
LrJ94pJcXCAPNZMpzkOMFJHdSK2n9PCuoA9KprkrZ2UUUpQe96q+Ll2qGnO3R7Wo
qcL0FtJEGfuo9znEMdKSAxp2Buc6RW3AgPYp/9N7s+JT17mm9dL50BrujpvgaE6C
LTSQ7KZ+rJFDBejSFD8T81zT80tVWXqyzWH9xdDFc9RkvBlX2iFqkUHXDP73Z1ik
v/6mYFfXLjz0ekOn4/YKkTip2/EQ/EA4SrPYF80UOIzFFGYECBSdGXU3ZEHvkQBV
jodU2vNG5FKyZOVlc4YxD5faKm8peA==
=zK3/
-----END PGP SIGNATURE-----

--tT3UgwmDxwvOMqfu--


--===============6097530852881675451==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

--===============6097530852881675451==--

