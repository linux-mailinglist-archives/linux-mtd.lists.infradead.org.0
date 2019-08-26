Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3A79D008
	for <lists+linux-mtd@lfdr.de>; Mon, 26 Aug 2019 15:06:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NuSxVta7njRGWl5wgGPRoZbtZLo1i9gPZolzNP2ffNk=; b=tq0H1pt8LSMtZt
	iRWEnDpqxWvLv66UruhwUxPwLiDoLgFmVEGWyJ17cG9x2n0OQv+ZBuLv/QC+AWBl0a9yWFo4cYUjZ
	HJNmKuwvNdeahUGev+KWLgyn0LkSwyLak/CgyZaokoq9NNwOA+4PWkf5mF5c2GdwemJePRVX/ufQs
	WM/xarfYEeMMHmMOPjGHWzU3tX3Gyew2jXZcdDNpvxuoEYePtAbjdmnk0emXycLZVKUU4PSJ/tUrs
	cCsAPGX413FhlnpHlmXyH5JeX/jcAS0H8jMjeMcWVf+Yx7NDzIB1jB/WuR150xiz5z2w9mw4tUOq1
	dU8y7nLzFn1IqvkBwDew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2EhE-0000I1-I1; Mon, 26 Aug 2019 13:06:08 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Eh4-0000Hf-Hk
 for linux-mtd@lists.infradead.org; Mon, 26 Aug 2019 13:05:59 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id B0F8428BD6A;
 Mon, 26 Aug 2019 14:05:56 +0100 (BST)
Date: Mon, 26 Aug 2019 15:05:53 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Wenwen Wang <wenwen@cs.uga.edu>
Subject: Re: [PATCH v2] mtd: rawnand: Fix a memory leak bug
Message-ID: <20190826150553.3f758c84@collabora.com>
In-Reply-To: <1566182765-7150-1-git-send-email-wenwen@cs.uga.edu>
References: <1566182765-7150-1-git-send-email-wenwen@cs.uga.edu>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_060558_723608_40D94F02 
X-CRM114-Status: GOOD (  19.91  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Vignesh Raghavendra <vigneshr@ti.com>, Boris Brezillon <bbrezillon@kernel.org>,
 Richard Weinberger <richard@nod.at>, Randy Dunlap <rdunlap@infradead.org>,
 open list <linux-kernel@vger.kernel.org>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 Marek Vasut <marek.vasut@gmail.com>, "open
 list:NAND FLASH SUBSYSTEM" <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Sun, 18 Aug 2019 21:46:04 -0500
Wenwen Wang <wenwen@cs.uga.edu> wrote:

> In nand_scan_bbt(), a temporary buffer 'buf' is allocated through
> vmalloc(). However, if check_create() fails, 'buf' is not deallocated,
> leading to a memory leak bug. To fix this issue, free 'buf' before
> returning the error.
> 
> Signed-off-by: Wenwen Wang <wenwen@cs.uga.edu>
> ---
>  drivers/mtd/nand/raw/nand_bbt.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/mtd/nand/raw/nand_bbt.c b/drivers/mtd/nand/raw/nand_bbt.c
> index 2ef15ef..96045d6 100644
> --- a/drivers/mtd/nand/raw/nand_bbt.c
> +++ b/drivers/mtd/nand/raw/nand_bbt.c
> @@ -1232,7 +1232,7 @@ static int nand_scan_bbt(struct nand_chip *this, struct nand_bbt_descr *bd)
>  	if (!td) {
>  		if ((res = nand_memory_bbt(this, bd))) {
>  			pr_err("nand_bbt: can't scan flash and build the RAM-based BBT\n");
> -			goto err;
> +			goto err_free_bbt;
>  		}
>  		return 0;
>  	}
> @@ -1245,7 +1245,7 @@ static int nand_scan_bbt(struct nand_chip *this, struct nand_bbt_descr *bd)
>  	buf = vmalloc(len);
>  	if (!buf) {
>  		res = -ENOMEM;
> -		goto err;
> +		goto err_free_bbt;
>  	}
>  
>  	/* Is the bbt at a given page? */
> @@ -1258,7 +1258,7 @@ static int nand_scan_bbt(struct nand_chip *this, struct nand_bbt_descr *bd)
>  
>  	res = check_create(this, buf, bd);

I know it's too late, but calling

	vfree(buf);

here

>  	if (res)
> -		goto err;
> +		goto err_free_buf;
>  
>  	/* Prevent the bbt regions from erasing / writing */
>  	mark_bbt_region(this, td);
> @@ -1268,7 +1268,9 @@ static int nand_scan_bbt(struct nand_chip *this, struct nand_bbt_descr *bd)
>  	vfree(buf);

instead of here would have fixed the leak without the need for an extra
err label.

>  	return 0;
>  
> -err:
> +err_free_buf:
> +	vfree(buf);
> +err_free_bbt:
>  	kfree(this->bbt);
>  	this->bbt = NULL;
>  	return res;


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
