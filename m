Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4E1417763D
	for <lists+linux-mtd@lfdr.de>; Tue,  3 Mar 2020 13:43:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kxPY/jsEWATa0rzP8GRGf7CQxeto+0pDtlVP0OcMcRc=; b=Cz1DZDLdywJICC5h+XyJa1orz
	Zy/neFOe0oMrfOgoFhEo1RQTACllpGUUdAmFkzR/16h6lIbt3UrqFt6EvXlOtR/UI2W1UcuBh/AnR
	ryG2t+DyUGSdqo7cjloO+HHKpEx+WtdxCCvP0QzQ+TEgZWjxnZzn5x2a9pmdVL82gMFiAAZrLf9Wc
	+EEeqDOoyBwsrdpsuopWsY3Qo4X2EQAvdVxGLl911Uyjs5a8ejZGrYUcY0Kpf3jIbcgtWvXpJl7Ls
	/IkDR2V63WdOpt1O3xGJbgY7VK/H7zxAvg50qkKATtvi2eQhciXc0nqFK8lSNhNe5z41H8PFYtnjX
	u1vqX8JyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j96tp-0006Yc-JA; Tue, 03 Mar 2020 12:43:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j96tj-0006XR-BC
 for linux-mtd@lists.infradead.org; Tue, 03 Mar 2020 12:43:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 82C99FEC;
 Tue,  3 Mar 2020 04:43:40 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 050CE3F534;
 Tue,  3 Mar 2020 04:43:39 -0800 (PST)
Date: Tue, 3 Mar 2020 12:43:38 +0000
From: Mark Brown <broonie@kernel.org>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH RFC 1/3] spi: Allow SPI controller override device buswidth
Message-ID: <20200303124338.GD3866@sirena.org.uk>
References: <1582903131-160033-1-git-send-email-john.garry@huawei.com>
 <1582903131-160033-2-git-send-email-john.garry@huawei.com>
 <CAMuHMdW7Xu6EzfmVFx1+i1byy3KOS5A+h2GuMb8nkZ+-jD1=BA@mail.gmail.com>
 <f6f21e75-7cee-89da-bb87-95327a4ec2cc@huawei.com>
MIME-Version: 1.0
In-Reply-To: <f6f21e75-7cee-89da-bb87-95327a4ec2cc@huawei.com>
X-Cookie: Drilling for oil is boring.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_044343_429626_AE06C3AC 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-spi <linux-spi@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linuxarm <linuxarm@huawei.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Content-Type: multipart/mixed; boundary="===============4236404230505480623=="
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


--===============4236404230505480623==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="IDYEmSnFhs3mNXr+"
Content-Disposition: inline


--IDYEmSnFhs3mNXr+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Mar 03, 2020 at 09:42:45AM +0000, John Garry wrote:

> However, maybe another callback could be introduced, .early_setup().

One thing I like about the explicit core code is that it makes it much
easier to see which drivers are doing the worrying thing, with just
overwriting things in a callback everything is very freeform and you
have to audit things individually.

--IDYEmSnFhs3mNXr+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEyBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5eUPkACgkQJNaLcl1U
h9BYcAf4kl/gydZycwZtTddrolWZTe5aGp9hdBn91H5K4i0f3Sp/wzjZi9Z7NMLZ
hFT1kd7fwU9kHr5QBDt66s8mnC/A8WU/yLekP7hKQkumLFBXT+EzpW4ZsD0OFB8R
KvAr5BCFqvJMdRPYCqsqi1nvZwNA4jYhWXp5sGlT3T/4GH0ulhQDZghULkx+8e06
Kd23pOwyQmDQgwVTqQ/YuB36cPzriYsoxu3vijQZLIVGO4K/PPqiaoq5Af1EiGlr
mcwa0IaW3IMQbjLk5KPuITz8YUMrPryVc+unOuertCfFYoHcYmgIO/Aq6yOpnbRl
UajtjXoFfB5jRdSGvoDFHjZcfYfJ
=FOcd
-----END PGP SIGNATURE-----

--IDYEmSnFhs3mNXr+--


--===============4236404230505480623==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

--===============4236404230505480623==--

