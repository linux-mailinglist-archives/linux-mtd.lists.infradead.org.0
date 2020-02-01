Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC59A14FD00
	for <lists+linux-mtd@lfdr.de>; Sun,  2 Feb 2020 13:01:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IpSZDpFJ/mVNRPAtWyoodbA6yCaWokymGDmc6u/6ZhI=; b=FksfpRsTvnmIs7FEcMaupo27N
	kFLoqqkJXlwcCfxLlR4Bzfgtz3RBgfmmDLgOoXbkLpn+/xZXVLVMFh5QjlqOmjPduuxNWKnB9p0Iv
	x72AhQs2vUZim2YbrM1uoxCbKncsV/+d1pVdATXYZkpbGIxbdFWhxZYMSRClIX1Vn42RAezw3ZgG/
	0EVKdVz3SoVmvyW6KurvQJXKOoUWWRPd5p2eMoymBa2BzFOcxzqlJi5SEJU/3Xx3f28cf8raX/gOh
	xlLP1ry6ZLvWzFedZ/pinOySWJfb72rENN8pjrxhGJZR9BZeAczXITnc7s75cUXMX2KHiGR/oZYLs
	wtfRogNiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyDw2-0006cK-9T; Sun, 02 Feb 2020 12:01:06 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyDvf-0006Vx-1r
 for linux-mtd@lists.infradead.org; Sun, 02 Feb 2020 12:00:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a1w13oJxUPKC3CMdf8ErDJElBc0RWvzN5lWluAFbUNY=; b=ugBAHtHBbKW1qIrpyCiB43g8o
 4Rrs5YqdfQKg+FeHmRx2xclTm/6Z19eKuY+Nq5c1BPEjK4Lk568FMjd3P4qU2En3SHF1hzb4B3Mmp
 1hGc84NRhn22btpqX+CyrGXhx5I988QFmfgZ//Fxfbs05t29RlpUQH/RAE/OPcWazN0G8=;
Received: from [151.216.144.116] (helo=fitzroy.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1iyDvT-0006pn-J5; Sun, 02 Feb 2020 12:00:31 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id B8BFCD01AE4; Sat,  1 Feb 2020 11:34:47 +0000 (GMT)
Date: Sat, 1 Feb 2020 11:34:47 +0000
From: Mark Brown <broonie@kernel.org>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH v2 2/3] spi: Add HiSilicon v3xx SPI NOR flash controller
 driver
Message-ID: <20200201113447.GU3897@sirena.org.uk>
References: <6dd45da9-9ccf-45f7-ed12-8f1406a0a56b@huawei.com>
 <20200113140627.GJ3897@sirena.org.uk>
 <CAHp75VfepiiVFLLmCwdBS0Z6tmR+XKBaOLg1qPPuz1McLjS=4Q@mail.gmail.com>
 <20200113142754.GL3897@sirena.org.uk>
 <20200113143403.GQ32742@smile.fi.intel.com>
 <0252a76d-7e2b-2c70-8b1b-0d041d972098@huawei.com>
 <CAHp75Ve=ZwJe2XV8Y1UN6sMe1ZHOBwUtRUD=aGqhR4Gc7BNUcg@mail.gmail.com>
 <136bd652-dcb9-3efa-a92f-2263cbf840ad@huawei.com>
 <CAHp75Vd=TY0tPfSHMSLTh1Pgg-E7MCP5Gym1yjpLgH0Tx-2xSg@mail.gmail.com>
 <c5cfb189-797e-11c4-f77a-61ec35395b15@huawei.com>
MIME-Version: 1.0
In-Reply-To: <c5cfb189-797e-11c4-f77a-61ec35395b15@huawei.com>
X-Cookie: Programming is an unnatural act.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_040043_119054_42FBB03C 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.5 DATE_IN_PAST_24_48     Date: is 24 to 48 hours before Received: date
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: tudor.ambarus@microchip.com, chenxiang66@hisilicon.com,
 liusimin4@huawei.com, Linuxarm <linuxarm@huawei.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Marek Vasut <marek.vasut@gmail.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 "open list:MEMORY TECHNOLOGY..." <linux-mtd@lists.infradead.org>,
 Jiancheng Xue <xuejiancheng@hisilicon.com>,
 linux-spi <linux-spi@vger.kernel.org>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 wanghuiqiang <wanghuiqiang@huawei.com>, fengsheng5@huawei.com
Content-Type: multipart/mixed; boundary="===============1353343112765695593=="
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


--===============1353343112765695593==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="p+IlF8Xh9KY56wTg"
Content-Disposition: inline


--p+IlF8Xh9KY56wTg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jan 31, 2020 at 04:26:46PM +0000, John Garry wrote:
> On 31/01/2020 15:46, Andy Shevchenko wrote:

> > So, it seems I stand corrected, the field is in right use, although
> > cases like 0x10 and 0x20 should be carefully checked.

> > We may teach kernel to get something meaningful out of it.

> It seems that someone already had a go at that:
> https://lore.kernel.org/lkml/20170317212143.bogj6efzyvvf24yd@sirena.org.uk/

This is a discussion about supporting DT bindings for
bits-per-word which is a different thing again, that's the size
of a data word which is not connected with the physical wiring.

Please include human readable descriptions of things like commits and
issues being discussed in e-mail in your mails, this makes them much
easier for humans to read especially when they have no internet access.
I do frequently catch up on my mail on flights or while otherwise
travelling so this is even more pressing for me than just being about
making things a bit easier to read.

--p+IlF8Xh9KY56wTg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl41YlYACgkQJNaLcl1U
h9C2AAf+Lpm48M0VNHBo5p+A96lptZIvQ30jMdWzH4CZVehdGXJEwCKwJCK/KkL8
Reo2uQc859QdiYYCMzkwto9l7KvqHDkAeY5r32N30CBTeDKJWSXCrz3nNH/wdt0Z
V0yeI/zFW+8G0NVIyjXppXOeVZ7KJU+b+aDA6uMsqoSawagT+761zcAD57XQ+j4W
J6ZgwafT3ztFYNQAkvkgGp78J4hxIvVmSsig3wKbqS50DsbtqAi3pV9k59QVGIKM
gPKAj6olodQF2e4arzVHCOwoP/3xW6AggOSIJZLCFZrWMOYg9H7NUZz96zG/2b8B
ZjNQNzX4WUF05WtjTxvNQ/nASdbVvg==
=BpGX
-----END PGP SIGNATURE-----

--p+IlF8Xh9KY56wTg--


--===============1353343112765695593==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

--===============1353343112765695593==--

