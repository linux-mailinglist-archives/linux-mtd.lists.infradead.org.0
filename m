Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B8521C510
	for <lists+linux-mtd@lfdr.de>; Tue, 14 May 2019 10:37:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yNABpJNZ8QdkTiMZEP6pamRO+10OzATdATLXdI+5nKw=; b=QwPmKOpCdX9JbZ
	uFWNLIJiF/w07uVx5aU4kXqdvAN4kc+7zWn81xWqKSoFk878UF+P242i2spiSvtRGGMDgPvX1JAT+
	75lcHSwrJ+HHafCWkPMuQTQrmsxjSUtNuaHfcwfoDJXK6DIVYJ7TFZvHL9JraKg7/yFFXc1+uPMMQ
	VfhU5UvXFpLdawXaPXXE+qKqq5EUB0Kz7OFiYeB0Ykvw6GnGamaKW2W9BQYPeufaT/H4S7rqnkypi
	/aFLoGv2lzE8WdmpzN/GMeoKVluHwBAVSzHlwtXN/xFXSQeZaEavmoyARtsEaH/a47bmkJP4tbgNM
	B9v3d7L6v9kfDnB9ArfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQSve-00039h-0l; Tue, 14 May 2019 08:36:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQSvW-00039H-Ow
 for linux-mtd@lists.infradead.org; Tue, 14 May 2019 08:36:48 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <sha@pengutronix.de>)
 id 1hQSvV-0005Qd-BS; Tue, 14 May 2019 10:36:45 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>)
 id 1hQSvV-00042c-3Q; Tue, 14 May 2019 10:36:45 +0200
Date: Tue, 14 May 2019 10:36:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-mtd@lists.infradead.org
Subject: Re: [PATCH 3/3] mkfs.ubifs: Add authentication support
Message-ID: <20190514083645.gxcjwjjlsft56tsb@pengutronix.de>
References: <20190401143511.309-1-s.hauer@pengutronix.de>
 <20190401143511.309-4-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190401143511.309-4-s.hauer@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:35:01 up 56 days, 19:45, 83 users,  load average: 1.00, 1.06, 1.08
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mtd@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_013646_960978_ECE0FE90 
X-CRM114-Status: GOOD (  15.90  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: Richard Weinberger <richard@nod.at>, kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, Apr 01, 2019 at 04:35:11PM +0200, Sascha Hauer wrote:
> This adds support for authenticated UBIFS images. In authenticated
> images all UBIFS nodes are hashed as described in the UBIFS
> authentication whitepaper. Additionally the superblock node contains
> a hash of the master node and itself is digitally signed in a node
> following the superblock node.
> 
> To generate an authenticated image these options are necessary:
> 
> --hash-algo:	The algorithm used for hashing nodes. Valid options
> 		contain sha1, sha256, sha512
> --auth-key:	The private key used for signing
> --x509:		The x509 certificate to use
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> diff --git a/ubifs-utils/mkfs.ubifs/mkfs.ubifs.c b/ubifs-utils/mkfs.ubifs/mkfs.ubifs.c
> index e0c42f3..ebc025e 100644
> --- a/ubifs-utils/mkfs.ubifs/mkfs.ubifs.c
> +++ b/ubifs-utils/mkfs.ubifs/mkfs.ubifs.c
> @@ -188,6 +196,9 @@ static const struct option longopts[] = {
>  	{"key-descriptor",     1, NULL, 'b'},
>  	{"padding",            1, NULL, 'P'},
>  	{"cipher",             1, NULL, 'C'},
> +	{"hash-algo",          1, NULL, 0},
> +	{"auth-key",           1, NULL, 0},
> +	{"x509",               1, NULL, 0},

Should be:

> +     {"hash-algo",          1, NULL, HASH_ALGO_OPTION},
> +     {"auth-key",           1, NULL, AUTH_KEY_OPTION},
> +     {"x509",               1, NULL, X509_OPTION},

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
