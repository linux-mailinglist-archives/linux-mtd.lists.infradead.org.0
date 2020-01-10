Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 897E8136EF9
	for <lists+linux-mtd@lfdr.de>; Fri, 10 Jan 2020 15:07:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PFvbhYyj8zPmQtfcxxVTnnS/7JsW/wHcm7GgDpMz7dM=; b=m3TA4cTkbH5YzicUKKKmg5X5v
	sLtb+louGuYExxjwd2vXItBvUi9usxA0PCg4MajN22AdpqXUmaAon8qKvTVycsVffmPEFBtfB3k24
	nZeOsOPP/hPI3dMsY58T32wJ2at+RkOw1AKzzjdsixdlF2CdlkxjTr4a4rwUIJsorWDdbAWf3Ri1X
	qGQcuf6PTPV7QmGOzdd3Ce4bLuQJNaDaj81eHGefVxL5YoDf2YUPK24STFwKRpRkWKAeTHkaDRLm2
	VpLA40gqwvQYqsUKvrcWUXlIrqmDSw6IfQhu27WYIJKGj7x6ZKlZrs3EmVWp6aWo3rh/7tMQ4Jn/m
	+s5EMjc7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipuwr-0006Be-E2; Fri, 10 Jan 2020 14:07:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipuwj-0006Aq-Ce
 for linux-mtd@lists.infradead.org; Fri, 10 Jan 2020 14:07:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7CCD3328;
 Fri, 10 Jan 2020 06:07:28 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 05E883F534;
 Fri, 10 Jan 2020 06:07:27 -0800 (PST)
Date: Fri, 10 Jan 2020 14:07:26 +0000
From: Mark Brown <broonie@kernel.org>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH v2 2/3] spi: Add HiSilicon v3xx SPI NOR flash controller
 driver
Message-ID: <20200110140726.GB5889@sirena.org.uk>
References: <1575900490-74467-1-git-send-email-john.garry@huawei.com>
 <1575900490-74467-3-git-send-email-john.garry@huawei.com>
 <0dc5cb2e-b765-9e13-b05e-9e3c835c5985@huawei.com>
 <20200109212842.GK3702@sirena.org.uk>
 <df67b562-7d82-19f6-7581-680190a7772d@huawei.com>
MIME-Version: 1.0
In-Reply-To: <df67b562-7d82-19f6-7581-680190a7772d@huawei.com>
X-Cookie: A little pain never hurt anyone.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_060729_475625_E1E73E40 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: tudor.ambarus@microchip.com, linux-kernel@vger.kernel.org,
 chenxiang66@hisilicon.com, linuxarm@huawei.com, linux-spi@vger.kernel.org,
 marek.vasut@gmail.com, linux-mtd@lists.infradead.org,
 xuejiancheng@hisilicon.com, fengsheng5@huawei.com
Content-Type: multipart/mixed; boundary="===============7525006604578363460=="
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


--===============7525006604578363460==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="QKdGvSO+nmPlgiQ/"
Content-Disposition: inline


--QKdGvSO+nmPlgiQ/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jan 10, 2020 at 11:55:37AM +0000, John Garry wrote:

> I will note that PRP0001+"jedec,spi-nor" compatible DSD seems to be the
> defacto method to describe the SPI NOR-compat part for ACPI - that's what
> I'm using. We could add properties there, but that seems improper.

OK, so that's just reusing the DT binding in which case everything
that's valid for the DT binding should also be valid for ACPI - I
thought that actually worked automatically without you having to do
anything in the code but ICBW.

--QKdGvSO+nmPlgiQ/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4YhR0ACgkQJNaLcl1U
h9CHqQf/fT6tkZc5rjRON7HtRrGsmNaUJN8ElUARXmp+zfbAka7ozgwC4DENqjOK
I9Of3xZsrE2VlGeIpXS7KAkjdbCOvoRmMhChM1VH7yF5lxz+AEOjWwKZlfXpurjM
RxElFm6u7Z9iiP0PDww9K+yEXS91EbxPFi7UvRL783aV3VJORsP9aY7ewmXSb9UP
E3SLtAQQMhQrwrMS7jGd3tex9ik6YdXOqChEsaScE7GDjvGUDNS54yYXK1lfCPHi
yKq7WymCtC2pgoVQxmQloHBzk82z6wMSwVp+DowO1eM3qbdevM6UVKniyJLDT5pN
EEDzuxOjUXvHls2lGkGX9YdKUFFLhw==
=lFqO
-----END PGP SIGNATURE-----

--QKdGvSO+nmPlgiQ/--


--===============7525006604578363460==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

--===============7525006604578363460==--

