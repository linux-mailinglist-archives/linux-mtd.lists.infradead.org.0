Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F47172520
	for <lists+linux-mtd@lfdr.de>; Thu, 27 Feb 2020 18:32:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nI16KweEe3wlRGXGjVDdsEpfhBDNYp/KlrETF6t5mrk=; b=HdEVLK82R2r3pnqGr8ehpIk4N
	Euh5Mf9LWLM3GK1qpTZJOQXmzOt0e4WAzea6mcUqaq9GpXT9UzvJ7Mns6ETlk+IZ/WaqA2CIrX4+6
	fWJpFjEtIf2iR8Lkl1CRE1ozAByrmld30DlPF6Li+L2K3O3v2P4mxK7wr8HVYlvPzXbp9gzjcOCAl
	TlrtwUjuIjGiaED5MwX2blMYO2vyJqYVKgMpe2j8K7ZTfeQqS++EJa/VsRu1wX6fPo9aXGYeLFo4n
	SOaPtSbi1fAkIR83qKWo9AL4CSDmKq3e6fHoC1cItXfOgctdGa7pg0GQyMamWi94OR3wjcxHR8yg5
	BHb9qqxcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7N1Y-0003yZ-A2; Thu, 27 Feb 2020 17:32:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7N1Q-0003xx-Db
 for linux-mtd@lists.infradead.org; Thu, 27 Feb 2020 17:32:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 11E221FB;
 Thu, 27 Feb 2020 09:32:27 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 544EF3F73B;
 Thu, 27 Feb 2020 09:32:26 -0800 (PST)
Date: Thu, 27 Feb 2020 17:32:24 +0000
From: Mark Brown <broonie@kernel.org>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v11 2/2] spi: cadence-quadspi: Add support for the
 Cadence QSPI controller
Message-ID: <20200227173224.GH4062@sirena.org.uk>
References: <20200227062708.21544-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200227062708.21544-3-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200227183032.77ef0795@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20200227183032.77ef0795@collabora.com>
X-Cookie: Edwin Meese made me wear CORDOVANS!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_093228_504720_D25654E4 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, tudor.ambarus@gmail.com, vigneshr@ti.com,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 cyrille.pitchen@atmel.com, marex@denx.de, boris.brezillon@free-electrons.com,
 tien.fong.chee@intel.com, richard@nod.at, simon.k.r.goldschmidt@gmail.com,
 "Ramuthevar, Vadivel MuruganX" <vadivel.muruganx.ramuthevar@linux.intel.com>,
 devicetree@vger.kernel.org, cheol.yong.kim@intel.com, robh+dt@kernel.org,
 qi-ming.wu@intel.com, david.oberhollenzer@sigma-star.at,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org, dinguyen@kernel.org,
 computersforpeace@gmail.com, dwmw2@infradead.org
Content-Type: multipart/mixed; boundary="===============4681057057269638502=="
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


--===============4681057057269638502==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3VRmKSg17yJg2MZg"
Content-Disposition: inline


--3VRmKSg17yJg2MZg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Feb 27, 2020 at 06:30:32PM +0100, Boris Brezillon wrote:
> "Ramuthevar, Vadivel MuruganX"

> > Reported-by: kbuild test robot <lkp@intel.com>
> > Reported-by: Dan Carpenter <dan.carpenter@oracle.com>

> Reported-by? What has been reported?

There were static checker issues with some of the earlier versions.
Vadivel, normally you wouldn't carry tags like that forward when you fix
them.

--3VRmKSg17yJg2MZg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5X/SgACgkQJNaLcl1U
h9CP5Qf/R3Kg6m1IWYoLkvaxFnCJfsEmQTyGre/OzTAMNH3ty0K8C9jwRptIMF+/
69RV5hxWCG1R6XgKC2LNnJmyF47gHp2KdM89xqQmnPgXqiYaUplvaUy2E1nkBcKK
tkBSsytqi0qGduCjxVyPt6/gu3Dswfp5iCJBMjkV+6IAsQ9tueI94+UXj95QypTk
03mVesWb4Px1CXmQ5HnJDVeXK+6ifjD+NdWmp9Pzlta8mpINdxgxMRdHYpfXDKkx
o/nUks7zBEZl5/4X72QckO+FVR7TueA5Y3V6plkWaMWMfgxJYVp1977p2IDwY5qt
nUkq+fXkt1K0vuTcXAk+U9Pk9aEgFQ==
=3qen
-----END PGP SIGNATURE-----

--3VRmKSg17yJg2MZg--


--===============4681057057269638502==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

--===============4681057057269638502==--

