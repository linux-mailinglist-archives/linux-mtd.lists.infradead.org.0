Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD3801DCD0D
	for <lists+linux-mtd@lfdr.de>; Thu, 21 May 2020 14:37:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WTsGiZqL31CUIa8AzGKgzsVtIRCpPXCBWuI0Bf3ghzY=; b=qnfnUSIoNWfQQWoexgXm5NzVs
	E+/sOsHizHXjaU03mZB2P2qlLjFnT9iOoW3iak+jDCWRZAsinIvBVuLGbyT37+MqQOsWcwNQGduJc
	ZvmHLQEkiy3xF/xYT88T+99Q7AwZk5ZaIGh5cF2UN3DFB0gNuqYmY8xAvXAS/cJ6WYh5wtWTCOTHW
	EgcMge2RX74+n9uF2AwTtRUfqI6ykP/Ax4dpAGWkxRIaMOJPkSGsgP0HB4ynftQc66C6RlR2dPBFV
	Wj/vFdsIJtp7anYEqYPa+qAHLU15N3kz2WFb3GXOpxAcWQdueCbXWYNIMrCsxDdl//cOG+DJI/IGI
	oaLddkc2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbkSI-00008V-6q; Thu, 21 May 2020 12:37:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbkSA-00007k-GH
 for linux-mtd@lists.infradead.org; Thu, 21 May 2020 12:37:39 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 547DD2070A;
 Thu, 21 May 2020 12:37:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590064657;
 bh=XzY9Vu3vZDIMRqhC2Uec8ljVnAJkU8kHTGL8ax+6XUw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1Hh7R91MXepY8cJaTBq4r9BBHcCknRHA4kdtVwWZGAoahyEhDYtZUpVhR2+huC2ip
 hR/cvCRBcGfdmuFUvqWfmOB6yYDafJQcIKkuSdnmwxQEdI7Lc6ZJ8WOZVPHkTiFu+6
 zXB74atNrHZCB3MQ5YyiYn7J01c7AwODVBRHTw8M=
Date: Thu, 21 May 2020 13:37:35 +0100
From: Mark Brown <broonie@kernel.org>
To: "Ramuthevar,
 Vadivel MuruganX" <vadivel.muruganx.ramuthevar@linux.intel.com>
Subject: Re: [PATCH v2 1/1] dt-bindings: spi: Add schema for Cadence QSPI
 Controller driver
Message-ID: <20200521123735.GC4770@sirena.org.uk>
References: <20200520123612.11797-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200520124329.GF4823@sirena.org.uk>
 <fd086da7-7e18-83bc-d423-56095b0cff96@linux.intel.com>
 <20200521105646.GA4770@sirena.org.uk>
 <24b0297c-5c33-f690-9514-68b76fc2c9ea@linux.intel.com>
 <20200521122035.GB4770@sirena.org.uk>
 <463b24a4-0a6a-9fcf-7eb9-8fde602c0c13@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <463b24a4-0a6a-9fcf-7eb9-8fde602c0c13@linux.intel.com>
X-Cookie: Keep your laws off my body!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_053738_560118_9EF60113 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: cheol.yong.kim@intel.com, robh@kernel.org, vigneshr@ti.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-mtd@lists.infradead.org, qi-ming.wu@intel.com
Content-Type: multipart/mixed; boundary="===============1891523160937874559=="
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


--===============1891523160937874559==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Bu8it7iiRSEf40bY"
Content-Disposition: inline


--Bu8it7iiRSEf40bY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, May 21, 2020 at 08:34:43PM +0800, Ramuthevar, Vadivel MuruganX wrote:
> On 21/5/2020 8:20 pm, Mark Brown wrote:

> > I mean that any changes to the bindings ought to be split out into
> > separate patches, if there's multiple changes it may make sense for
> > there to be multiple patches.

> Got it, we do not have multiple changes since it is new YAML file.
> in case if we feel anything to be added , we add as separate patches.

If this is just a conversion to YAML then your changelog is wildly
inaccurate and needs to be improved, your changelog says you are adding
new things.

--Bu8it7iiRSEf40bY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7Gdg4ACgkQJNaLcl1U
h9CEowf/QMYDfB1WRpIHtE540R46+Mt+m6ieiujeMi72a0tdEVaExwPeBNHvHAfr
JeVWeL+H6//8H2NcR5NwR6kVDFYNlx7h1JSNKhOpMedxsT72sJxj62hadMgF18Nm
laUg+q/bz+kPN6qOpAb6iY9ocf6vo9qWcYcKK00DDrrEfkLVF2KbLdft9dGzs75O
VApz+3bfiMY4ROV3Kc08V7xEGyJbXRWnAtiA21+9XrWjiuqYtfuLue+2qeFiE9Hu
3eacgVdd0pGiBjrEi/WbwRUoAnbQBFpRisqkNz/OGtt3d/8mvjF2prNW9QwsPH+g
zugQEeTYSCDR4Nm36ZHyuqzau9hAvA==
=zxZ7
-----END PGP SIGNATURE-----

--Bu8it7iiRSEf40bY--


--===============1891523160937874559==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

--===============1891523160937874559==--

