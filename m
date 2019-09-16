Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 615B4B3B90
	for <lists+linux-mtd@lfdr.de>; Mon, 16 Sep 2019 15:41:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=SAlmnMejMHjH9JHCqUtNFhbIMIPet0dtTW2gYkXIgKU=; b=i5Y
	+Dc/f5vXVJ3/VpAD0FEF4wsBNWGqT5jbGQUs8kB6QxMux3T72Q2Bx2Zh9DKGuUmPOCbbfyMk0ulAd
	9GiXFjRra72vPHe2d+UCBCmcMG7W35GzX/HYUBEZeI75heA8ZGPaRfKIDK5J0vhOFy7BdrepYg0Mj
	jzepNPJRXknac5aornWZvyvljRrMPzc63Q29pIF4gnsUteEGP0BjyeOjvgDGJvE8jE7ei+9pPnOCD
	y4aT5T8BT6LAFmGCp2QkFqJ6458RRpEDY2s5glHCsqkD6xiZB8JBZQ1PUGcE6wDC3baC/JbdC6UD/
	ThGMbTgEB9qJ6Sq/fvEf7HrKGq/TvRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9rFg-00084L-Vd; Mon, 16 Sep 2019 13:41:12 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9rFA-00083u-2j
 for linux-mtd@lists.infradead.org; Mon, 16 Sep 2019 13:40:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Content-Type:MIME-Version:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=w3bobEKmdltUYp3wdYywVRw65l/zXxvDNG8WKRQOF04=; b=L3h6qJyEkF7Z4Q+eevCqRrGLj
 +p1+xrRJoB0E/NxBqrZjB8JC8uvC05p9FzBOnoTdjIm/1MIMpCbLzBcuvAF7Z8c+W5DDEZAZN/7b0
 YbHO5liyYQAGum8+A6zBMyXIyu3xGimJTa4xWJgZOmie8US5dM7wE/O/TqzZrKVVYJTdA=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i9rF0-0004b0-56; Mon, 16 Sep 2019 13:40:30 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 91B992741A0D; Mon, 16 Sep 2019 14:40:29 +0100 (BST)
Date: Mon, 16 Sep 2019 14:40:29 +0100
From: Mark Brown <broonie@kernel.org>
To: David Howells <dhowells@redhat.com>, Richard Weinberger <richard@nod.at>,
 Artem Bityutskiy <dedekind1@gmail.com>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Al Viro <viro@ZenIV.linux.org.uk>, Wenwen Wang <wenwen@cs.uga.edu>
Subject: linux-next: manual merge of the vfs tree with the ubifs tree
Message-ID: <20190916134029.GF4352@sirena.co.uk>
MIME-Version: 1.0
X-Cookie: Man and wife make one fool.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_064040_496870_F81882E9 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linux Next Mailing List <linux-next@vger.kernel.org>,
 linux-mtd@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============1990355560998297594=="
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


--===============1990355560998297594==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rMHhSL690X5+a0Qo"
Content-Disposition: inline


--rMHhSL690X5+a0Qo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi all,

Today's linux-next merge of the vfs tree got a conflict in:

  fs/ubifs/super.c

between commit:

  9163e0184bd7d5f ("ubifs: Fix memory leak bug in alloc_ubifs_info() error =
path")

=66rom the ubifs tree and commit:

  50d7aad57710e2b ("vfs: Convert ubifs to use the new mount API")

=66rom the vfs tree.

I fixed it up dropping the ubifs change and can carry the fix as
necessary. This is now fixed as far as linux-next is concerned, but any
non trivial conflicts should be mentioned to your upstream maintainer
when your tree is submitted for merging.  You may also want to consider
cooperating with the maintainer of the conflicting tree to minimise any
particularly complex conflicts.

diff --cc fs/ubifs/super.c
index 7d4547e5202de,a5fa725e7cf16..0000000000000
--- a/fs/ubifs/super.c
+++ b/fs/ubifs/super.c

--rMHhSL690X5+a0Qo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1/kMwACgkQJNaLcl1U
h9DXgwf/QZnfXeiu+WYdJ0NjI/wa5d6J1ojcLsWvDBM/TIPEO8EMwBqvqgF03u0k
SGg0TMTUDuQtR5s9dFlefWdbYWz1FPiOPED7mqkPXBUGUyGopHxM5Y5eRgoeVz64
2jk0e87um3mPWW5X1+dhPBnjjlCeEp7R+t05VG440MI60hExp5NTKlQgDeM9TzaM
Tz6FZlzMYJV2DJAEvBImpI9omlrfzyo2d6S4ZxGx45M/p1o5pfq25kl3R+1DYSYz
Zn3xTdQoUi+YYyPwi4wYk/bt4Zu2rBArVr/nZrDDTZHDjHCkyinjyvGqaR3usr+h
jn2/CH9wfVKTkZHsbyXRvK6XLZ+7oA==
=RVjy
-----END PGP SIGNATURE-----

--rMHhSL690X5+a0Qo--


--===============1990355560998297594==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/

--===============1990355560998297594==--

