Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A716A1DCCB8
	for <lists+linux-mtd@lfdr.de>; Thu, 21 May 2020 14:20:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HgKUd0PUHdNyfNOe5zM2cEhv7ZihtSYDxJitC0oVx0E=; b=TIO/kRWXomo3IpEz5GQqnduRQ
	gVFVQn/F9VA3/Yhw+JZLi+oJ92DNQUUKQL2yFxuhPUGOlLp/Dy7tHwUxdgnEzfg/wNuv1iuc+mwPM
	C6t9FMwJmqlJDF5a58Sgt1YDFp5Q1P8iaIgeak4OPVKfqFOQOn2679eEbS1kvG9hS2WGkdRaRnhmi
	NsXpjlBcnne88+y94cyBKhWhwhXxnH5z47i2ACbvS8dTzy/dRmw8NloDyysgd39YhA2yTFWtqdJ9H
	Nwf/nregNdsLzGg43washxmanO0UnVE+1DlC1YIEisRjCYrkdNKV0BbtEcLdYsZhN9F6BhUzy9vJU
	l75m1yVMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbkBp-00070P-Gd; Thu, 21 May 2020 12:20:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbkBi-0006zj-V3
 for linux-mtd@lists.infradead.org; Thu, 21 May 2020 12:20:40 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AE5702070A;
 Thu, 21 May 2020 12:20:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590063638;
 bh=ibFoIIyMF1Cq5K82d+d9TeF08+OR/OuKj6IPDBv1eCg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=S6sdA04cTnvXYoly+hZLJSJzYe2wasbfZ02IuM3wTto6o/oXeugLu+X+5sUrImmdA
 +XeyGwWZyprjvvHR395Cpu/yvFuSgjMoJiwts0sj7M+0lU9rLk07V8SXNnJG7k6UHK
 9eXkLBREWeFM4y3W5VdZgw4K19OjDmMvaAfJULZ8=
Date: Thu, 21 May 2020 13:20:35 +0100
From: Mark Brown <broonie@kernel.org>
To: "Ramuthevar,
 Vadivel MuruganX" <vadivel.muruganx.ramuthevar@linux.intel.com>
Subject: Re: [PATCH v2 1/1] dt-bindings: spi: Add schema for Cadence QSPI
 Controller driver
Message-ID: <20200521122035.GB4770@sirena.org.uk>
References: <20200520123612.11797-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200520124329.GF4823@sirena.org.uk>
 <fd086da7-7e18-83bc-d423-56095b0cff96@linux.intel.com>
 <20200521105646.GA4770@sirena.org.uk>
 <24b0297c-5c33-f690-9514-68b76fc2c9ea@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <24b0297c-5c33-f690-9514-68b76fc2c9ea@linux.intel.com>
X-Cookie: Keep your laws off my body!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_052039_019067_1A63B649 
X-CRM114-Status: GOOD (  11.97  )
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
Content-Type: multipart/mixed; boundary="===============7900951545579417104=="
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


--===============7900951545579417104==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="JP+T4n/bALQSJXh8"
Content-Disposition: inline


--JP+T4n/bALQSJXh8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, May 21, 2020 at 08:14:04PM +0800, Ramuthevar, Vadivel MuruganX wrote:
> On 21/5/2020 6:56 pm, Mark Brown wrote:

> > That doesn't address either of the issues.  The removal of the old
> > bindings and addition of the YAML ones needs to be in a single patch
> > doing that conversion.  What I'm suggesting should be done separately is
> > whatever changes to the semantics of the bindings you are (according to
> > your changelog) doing.

> You mean semantics of the binding as a single patch you are suggesting me,
> right? , Thanks!

I mean that any changes to the bindings ought to be split out into
separate patches, if there's multiple changes it may make sense for
there to be multiple patches.

--JP+T4n/bALQSJXh8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7GchIACgkQJNaLcl1U
h9BBmwf/TAx18MCyJnkJz/cUdXiSZ/+3KxoqHwPbafjuXp6qJnMplcEAKFr4GKRQ
PTqDr6x+1BLU9teHxr+zvvTjM291hIaF9Nvrf/UxkM3IpOAmBUSzPV1frd0hN2sZ
eGhxkeI9d/+Vke4/koh+o4e89xis1Rk197LwrBSCBqS17mnXXu9CcJxxCOAmGlQn
0PPfp8vz+tLT400Cf9QaP5U4cpKom24uz5GbjmOaq7mIHs+U+PZdjFJJ6gxKxV3K
uUsaW2MnVnkPmgQlC0jMdaOYvxwduiCYCH4nT1zLLs+iSqJkoOiB4uMI0/QuFm4c
kPWfhUXiqDm2eSA4sTcD4e/5YvDhfg==
=I4eQ
-----END PGP SIGNATURE-----

--JP+T4n/bALQSJXh8--


--===============7900951545579417104==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

--===============7900951545579417104==--

