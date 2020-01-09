Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A937C136275
	for <lists+linux-mtd@lfdr.de>; Thu,  9 Jan 2020 22:29:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=u9i1ehMYAHcJc56eyzc7CmiYt0Aq4h3t9IajefZeOkY=; b=G8Gs5xSOKYEAc/zO7EmApGmvl
	RE/267cLE+Ris/dPS4YKQNy4LMCApVyLm5T5DiVpvNLQYVLGXXex3HfdsfhiDRZZAzfFlqtKWc0RZ
	YlJcuKAzEbtCb5pGv6GH0LcZ/Ebm3Gcx8eMIi+mlSzIFCa5wioGuS2UTQrVW6Hk/xUqPyOH5KUO+e
	aiS8Ce2cHApxQLgOrCEMWhLH973I/DrpjjnvCDSayMxDp+KLP/P/8i506eap7HVo0xsLWh6Ua4ZMF
	j03/yLidLyqHc1frEOsN6Hk07QlKYtswnFfBxXQwDOQkmghJRBauB2lnF3OLTeXQqe20mboRDvaso
	TmPEHOb+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipfMN-0007MW-Sb; Thu, 09 Jan 2020 21:28:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipfMD-0007M8-8W
 for linux-mtd@lists.infradead.org; Thu, 09 Jan 2020 21:28:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4802A31B;
 Thu,  9 Jan 2020 13:28:44 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C301F3F534;
 Thu,  9 Jan 2020 13:28:43 -0800 (PST)
Date: Thu, 9 Jan 2020 21:28:42 +0000
From: Mark Brown <broonie@kernel.org>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH v2 2/3] spi: Add HiSilicon v3xx SPI NOR flash controller
 driver
Message-ID: <20200109212842.GK3702@sirena.org.uk>
References: <1575900490-74467-1-git-send-email-john.garry@huawei.com>
 <1575900490-74467-3-git-send-email-john.garry@huawei.com>
 <0dc5cb2e-b765-9e13-b05e-9e3c835c5985@huawei.com>
MIME-Version: 1.0
In-Reply-To: <0dc5cb2e-b765-9e13-b05e-9e3c835c5985@huawei.com>
X-Cookie: Killing turkeys causes winter.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_132845_345742_6F1B9101 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Content-Type: multipart/mixed; boundary="===============3272947475433983198=="
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


--===============3272947475433983198==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yiup30KVCQiHUZFC"
Content-Disposition: inline


--yiup30KVCQiHUZFC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jan 09, 2020 at 03:54:00PM +0000, John Garry wrote:

> From checking acpi_spi_add_resource() or anywhere else, I cannot see how
> SPI_RX_DUAL or the others are set for spi_device.mode. What am I missing?
> Are these just not supported yet for ACPI? Or should the spi-nor code not be
> relying on this since we should be able to get this info from the SPI NOR
> part?

I'm not aware of any work on integrating this sort of stuff into ACPI
platforms so I think it's just not yet supported in ACPI.  I'm not
really sure what would be idiomatic for ACPI, figuring it out from what
the part supports might well be idiomatic there though I don't know how
common it is for people not to wire up all the data lines even if both
controller and device support wider transfers.  I've got a horrible
feeling that the idiomatic thing is a combination of that and a bunch of
per-device quirks.  There may be a spec I'm not aware of though I'd be a
bit surprised.

--yiup30KVCQiHUZFC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4XmwkACgkQJNaLcl1U
h9DSmwf/cxqR58GjrThK9SdQjRi/lDgE2Zvu+klgcyq4qaE5CzctPqfdcJvyMn3D
8dnuZ0QZ/u4P/6nbc1FfGXfqeV7B0KeZ7yZbzklrjD1ehohvg3H46K52oVsVjF4H
xsjPdJDNeTtFBIgHGy1M4AIYVC58nRYX/6S7qLRKdyE5OOL4uHv/ZXSzBfhh+XPe
UtVTZNNfcXxdkWOTsmFo3qo0hnb8FxD/K0Rg++9C6XHLftNqmsXJcpzLaYKEBkor
FuQEwWTfDc4x3bq3cjsBqEURrEBAhUSMwZlfwgBJgX4GZfgR7pBv1IDZvXCwff0W
o8LOG/PgA593X83a55IjHs2w5oIGoQ==
=Vjtj
-----END PGP SIGNATURE-----

--yiup30KVCQiHUZFC--


--===============3272947475433983198==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

--===============3272947475433983198==--

