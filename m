Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C736120906
	for <lists+linux-mtd@lfdr.de>; Mon, 16 Dec 2019 15:56:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hSqfV5yOdBNVeMw8UPtatOq/FFUoEkkdYTjMY2Yjt+g=; b=ZQhLt5nTEEKRtL3zSAs5sO4lv
	dIHeHkrwt9hDTEDx3V/cTV5BwRivaBuCR74Wh/EZ6C9161PpaIuHJvKy53TJZqBXwJXL0lkjAOXCP
	XWGqdaor2X+c+qYwBm5XolNxuQn5FrYPvS1hpMkCv5GvE4F0BgxeC/uPRNryKlQTSDOZAokGkyZ9/
	JD8nRD04yyv4EeisXilaEq5lKoTv0TUvcog4x5xgXydra4RTDdvXfW23XcgmVTqJMZy6rDojcg8qi
	xh8zAKFVl6QmDJ5/oFaSXWn52Exwhq5JaguRhhe8ExkxAwMPC5y27iSdIuDRwP6CLisV+s7D7HZ3x
	7DrwhjbpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igrnW-0003h5-34; Mon, 16 Dec 2019 14:56:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igrnQ-0003gi-0s
 for linux-mtd@lists.infradead.org; Mon, 16 Dec 2019 14:56:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 42CAE1FB;
 Mon, 16 Dec 2019 06:56:27 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B689F3F718;
 Mon, 16 Dec 2019 06:56:26 -0800 (PST)
Date: Mon, 16 Dec 2019 14:56:25 +0000
From: Mark Brown <broonie@kernel.org>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH v2 0/3] HiSilicon v3xx SFC driver
Message-ID: <20191216145625.GF4161@sirena.org.uk>
References: <1575900490-74467-1-git-send-email-john.garry@huawei.com>
 <65a6d94b-95b7-b11b-2234-c091ba3f671e@huawei.com>
MIME-Version: 1.0
In-Reply-To: <65a6d94b-95b7-b11b-2234-c091ba3f671e@huawei.com>
X-Cookie: Backed up the system lately?
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_065628_109601_C7CB9E64 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: tudor.ambarus@microchip.com, linux-kernel@vger.kernel.org,
 chenxiang66@hisilicon.com, linuxarm@huawei.com, linux-spi@vger.kernel.org,
 marek.vasut@gmail.com, linux-mtd@lists.infradead.org,
 xuejiancheng@hisilicon.com, fengsheng5@huawei.com
Content-Type: multipart/mixed; boundary="===============8987255716376318127=="
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


--===============8987255716376318127==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yH1ZJFh+qWm+VodA"
Content-Disposition: inline


--yH1ZJFh+qWm+VodA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 16, 2019 at 02:52:23PM +0000, John Garry wrote:
> On 09/12/2019 14:08, John Garry wrote:
> > This patchset introduces support for the HiSilicon SFC V3XX driver.
> >=20
>=20
> Hi guys,
>=20
> Just a friendly reminder on this series.

Please don't send content free pings and please allow a reasonable time
for review.  People get busy, go on holiday, attend conferences and so=20
on so unless there is some reason for urgency (like critical bug fixes)
please allow at least a couple of weeks for review.  If there have been
review comments then people may be waiting for those to be addressed.

Sending content free pings adds to the mail volume (if they are seen at
all) which is often the problem and since they can't be reviewed
directly if something has gone wrong you'll have to resend the patches
anyway, so sending again is generally a better approach though there are
some other maintainers who like them - if in doubt look at how patches
for the subsystem are normally handled.

--yH1ZJFh+qWm+VodA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl33mxgACgkQJNaLcl1U
h9BkyAf9ERzOEHkj4pm1zcqytpYhQyLc/XjXH3fGYXrtycjyRGjH0+FOGFxRKFKz
fSKqN7QBU2dWuPvKqvB43G/eIMrD0FR7Dg+SkbzW1761xgy0r3TWVF8Fgt+WtMki
MpZisGQmpcWjVkYkwsd7FqMPhSxSNkpSQjYDGvuvJfJ+DALzTjwawoDDVECeNuRj
P4gZscc2m79ff/24eTtmktjjzIIwT+Zv6qrjSx2e0LCqueLNzudNgL6ToP5QppU7
zRgzI6MefT64/ffpcGa6yr7kBBWX9I33uuOAcgmY3NIQrFvDc8cxCfZZ9346e1wK
Nrp6zKYgFjmfO3gYYW1cP8XJqd3OgQ==
=JPvu
-----END PGP SIGNATURE-----

--yH1ZJFh+qWm+VodA--


--===============8987255716376318127==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

--===============8987255716376318127==--

