Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE08AAA8E6
	for <lists+linux-mtd@lfdr.de>; Thu,  5 Sep 2019 18:24:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DZIYB4hHf7kn+nlBaUWXWTXtJP4JydR808t4tzAQgm4=; b=icFKdZXqw9DzEVSg22e3fdxuH
	m7sESnOi6WizmBbkpyJQ794WAm3PU5uv/SDkLg7lX52TiU9rD9SrHQvX0j715kNeIVX39F7tEhO9o
	H97QA8MtQiK5fb8PhkFuQ1jM0pgQvTSwmzXTyWWZlE7FrZ65kNkvJIdVzTmiL9a5NKEXCW0szPvkT
	GcOME70uKuV+y8AQJ7tI0PmsXZYeoSL7fWnwc+7QxaBgjolQ39otmGoweuHOMLifNY6MeK5q5OZ9P
	8RNxgELJLynLlCowUgQi4ObN9whwzhqMcL9kQKNJOGSH5P2ZdB0XUq3g0NUbClJ/GXfbUA2oTvPRR
	dLD8mqVLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5uZ0-0007Gn-U5; Thu, 05 Sep 2019 16:24:50 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5uYr-0007GI-TD
 for linux-mtd@lists.infradead.org; Thu, 05 Sep 2019 16:24:43 +0000
Received: from localhost (p54B335F6.dip0.t-ipconnect.de [84.179.53.246])
 by pokefinder.org (Postfix) with ESMTPSA id 835902C00C0;
 Thu,  5 Sep 2019 18:24:40 +0200 (CEST)
Date: Thu, 5 Sep 2019 18:24:40 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [BACKPORT 4.14.y 00/18] Backport candidate from TI 4.14 product
 kernel
Message-ID: <20190905162440.GB3695@kunai>
References: <20190905161759.28036-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20190905161759.28036-1-mathieu.poirier@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_092442_095477_BEB76598 
X-CRM114-Status: UNSURE (   6.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-pm@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-mtd@lists.infradead.org,
 stable@vger.kernel.org, linux-omap@vger.kernel.org, linux-i2c@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============9222935384319695812=="
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


--===============9222935384319695812==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mojUlQ0s9EVzWg2t"
Content-Disposition: inline


--mojUlQ0s9EVzWg2t
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Sep 05, 2019 at 10:17:41AM -0600, Mathieu Poirier wrote:
> These patches are backport candidates picked out of TI's 4.14.y tree [1],
> with most of them already found in the 4.19.y stable tree.

Could you please update your scripting that only the cover-letter and
I2C related patches will be sent to the I2C mailing list?


--mojUlQ0s9EVzWg2t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl1xNscACgkQFA3kzBSg
KbbSXA//Qr7qcTKeYW+0LEBOI7jVtHAd2WvUvM5Dd4cDxWi9xFJLp3mq9RHpUp2n
C+TcMxlcW7slL8ffeERAPOV3hF+IOWkWiMg+9VUHgK2MvWf+fd3wcmBC/8Cn4DQ3
B8582lHxQQcVy6jYAvgxkojUFDRrVNS0nSb0Vfb8am062q1DIkiilFqdNPNFoGWy
UMV6JnawALcKyWVHftb8p66KvJ0SRMNdm36It3CDQhr4ZBRnuLkZD5HN0QKljKYp
0iFy2yoJnsnTZKmtuEetjVNM01avU8wE0CY9gUb3Oi0xQUfPkqOgQ3WtmeolsOLQ
PriFq6j8Xt4knqOjVhkyPFpfm1uedxeqNF8uUtRL+r0Fm7ytDTwsGashc7so4D0O
s1oOEKDeYT6EOVBVC/4oxYJmIeRk6PX8qeyt6+7dz4MEkfrR+yWr10zOFr7wX6Bh
xmDd5nGeWLVCUnRWaXmph+QTjUlmsP/bKDuTtpkVSuM5X5y62NYpZ7WqsQV2Hob9
NsYPtS4xag5ak71KlvQRVpqaK8Lzgna0qHrXrk9gynDOYpoN+bUsBf+JNfRCKCOa
RO1DDv2S35m+mFLoS5Ddxo/j2urW36sfuLuUmdGcR3oxovCNcgUyG+CRIDJTwnFn
HVVbHqEnxF7f+gw6CiKqAdhye4IWXYWxYbK4hKWi540R8iLVI6g=
=3bwX
-----END PGP SIGNATURE-----

--mojUlQ0s9EVzWg2t--


--===============9222935384319695812==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

--===============9222935384319695812==--

