Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A631139319
	for <lists+linux-mtd@lfdr.de>; Mon, 13 Jan 2020 15:06:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Hnizw6AHCvhiH7vI1juN7SCiRDgBiiw+3HkW8/W0G8E=; b=TlODdL+jhkUe/MqAVKcafz+VW
	jvffA6wYD7Cgtm2Uj3qStTQkDNdZtoDzIT1WTpeTnhEISYq4Iq3xPUfjbpD3JwUFFt2dLP5pMDebU
	LncIw7ZKnas304ykKpVh4fLDbirPaP7++RQnTgWb/EN0frps8accquNzhcwSHoczeVQKlmzqsF/rN
	/MOEnji7/AuvBTop698U3vZZdauf3TVEkzW95W1sntwOTHZdyWPbLMtqTstQ2JtT21C+YsFjCS6Td
	JourKXCHu8gOGmtn46TMEIkqLA7y+/fXadsW2OmwJE6eFvDs6G3f0Pjf3UaiGEq69MREUrlujHXjU
	uzns4UQRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir0Mk-0007J7-7I; Mon, 13 Jan 2020 14:06:50 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir0MZ-0007In-8d
 for linux-mtd@lists.infradead.org; Mon, 13 Jan 2020 14:06:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6KFeNs3JL0rvY1BgoRK7VKDE3sUTxPx6uvM/wOGZ2Y0=; b=A99ZYAhVVv9OhsChQogilnnY1
 GbC0wKY23VKU5dwFKYEIDClgwCt54tcvUMG0Qmlr5TMmRDMEFxwFk/ZmiDmY2J1VbMkoM2cA9wopW
 LKoaehJEc8bw0RTIo1du7yTNdniOz3M9nVwYS/BMT8FnYWAqNL0Y6MS0BySIA/wESMKMY=;
Received: from fw-tnat-cam7.arm.com ([217.140.106.55]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1ir0MO-0002fp-0G; Mon, 13 Jan 2020 14:06:28 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 9D2A6D01965; Mon, 13 Jan 2020 14:06:27 +0000 (GMT)
Date: Mon, 13 Jan 2020 14:06:27 +0000
From: Mark Brown <broonie@kernel.org>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH v2 2/3] spi: Add HiSilicon v3xx SPI NOR flash controller
 driver
Message-ID: <20200113140627.GJ3897@sirena.org.uk>
References: <1575900490-74467-3-git-send-email-john.garry@huawei.com>
 <0dc5cb2e-b765-9e13-b05e-9e3c835c5985@huawei.com>
 <20200109212842.GK3702@sirena.org.uk>
 <df67b562-7d82-19f6-7581-680190a7772d@huawei.com>
 <20200110140726.GB5889@sirena.org.uk>
 <6db83881-927c-d11c-9c77-23a45892ddab@huawei.com>
 <20200110193119.GI32742@smile.fi.intel.com>
 <612a3c5d-69a4-af6b-5c79-c3fb853193ab@huawei.com>
 <20200113114256.GH3897@sirena.org.uk>
 <6dd45da9-9ccf-45f7-ed12-8f1406a0a56b@huawei.com>
MIME-Version: 1.0
In-Reply-To: <6dd45da9-9ccf-45f7-ed12-8f1406a0a56b@huawei.com>
X-Cookie: Programming is an unnatural act.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_060639_308272_3C604C14 
X-CRM114-Status: GOOD (  12.92  )
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
Cc: chenxiang66@hisilicon.com, linux-kernel@vger.kernel.org,
 tudor.ambarus@microchip.com, liusimin4@huawei.com, linuxarm@huawei.com,
 linux-spi@vger.kernel.org, marek.vasut@gmail.com,
 linux-mtd@lists.infradead.org, xuejiancheng@hisilicon.com,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 wanghuiqiang <wanghuiqiang@huawei.com>, fengsheng5@huawei.com
Content-Type: multipart/mixed; boundary="===============6587250882748493876=="
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


--===============6587250882748493876==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cN519qCC4CN1mUcX"
Content-Disposition: inline


--cN519qCC4CN1mUcX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 13, 2020 at 01:01:06PM +0000, John Garry wrote:
> On 13/01/2020 11:42, Mark Brown wrote:

> > The idiomatic approach appears to be for individual board vendors
> > to allocate IDs, you do end up with multiple IDs from multiple
> > vendors for the same thing.

> But I am not sure how appropriate that same approach would be for some 3rd
> party memory part which we're simply wiring up on our board. Maybe it is.

It seems to be quite common for Intel reference designs to assign
Intel IDs to non-Intel parts on the board (which is where I
became aware of this practice). =20

> > In general there's not really much standardizaiton for devices,
> > the bindings that do exist aren't really centrally documented and
> > the Windows standard is just to have the basic device
> > registration in the firmware and do all properties based on
> > quirking based on DMI information.

> OK, so there is always DMI. I hoped to avoid this sort of thing in the li=
nux
> driver :)

Yes, there are some merits to an approach like that.

--cN519qCC4CN1mUcX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4ceWIACgkQJNaLcl1U
h9BaSQgAhHJyOShaR9eNX0h/1w/gPwom3WJq37NV0iDGPxwM7bufN6CmYlEn2VT5
14DC0ypUzhgmLxSy/+4YjpVoqHfK24ubjJmdQOaYHBDXtUv7C/R+Yg5Rs+SVwwNb
dAL9mO11neDUCRVlJP4Lw3tx8feN0SZeUjX6P0pdx3NQSa/pQSww3ZSwG+PoBgWF
cdwu0JWwvx5k2X5O27NehGYxWXo+alYY3AcVcEsEStyhwpQHYcy8jmE6tP14UI/P
26/o3Nmt4G8zM605sRu9AIJb5eFWtIPOzrisnK0KLkxtbHJfrd/cRrJ2ANSCjVAX
L7YeVR4vNDZ98Wz0z/eg21M6wsb8Vg==
=Mq70
-----END PGP SIGNATURE-----

--cN519qCC4CN1mUcX--


--===============6587250882748493876==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

--===============6587250882748493876==--

