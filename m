Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A305F270F3
	for <lists+linux-mtd@lfdr.de>; Wed, 22 May 2019 22:44:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pYjsr0bTMxaWhLVYEEGoLDr97BLU/eOw+bFp7QXFw+4=; b=cjfVM0J6RskPGp
	0GueVELvlxx+S/M2AWeus9McsgtZ/if7/Enw053o8mhR3ZyD9gMzVJvZksNOIIt+sOpIwxnaF9jPS
	WM1tjiWYdmfUnh/SGckw51LrWXTO4FXPmLGcthd6OvytOYfTxTc6IejAQCb+xqjhg/FQBf4H5kEfU
	YFcDKz/t8eBkHznRQJEwKBBH0sXNe+01itEvBrCti3+gm+DqVyAm905sjowf1GlB14NxzQtcmGzoF
	GdbMeb3r46EGmxrUvsFX6OFdZI2cHQLEFxf6vuzWgTWw39V8qA7pRR1/CLxeG7OpkXSeX5PODulDa
	BKFP/O/24hxbnYWuYixA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTY68-0000rQ-S4; Wed, 22 May 2019 20:44:28 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTY61-0000qx-4M
 for linux-mtd@lists.infradead.org; Wed, 22 May 2019 20:44:22 +0000
Received: by mail-wr1-x444.google.com with SMTP id f10so3786002wre.7
 for <linux-mtd@lists.infradead.org>; Wed, 22 May 2019 13:44:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=esU+3qm17qrDuexe7jxN3EvAQX5MaY6ZoatueVdr3qQ=;
 b=LQwYJghnsjhn591pkI1Li/RiGNLgcSIn+RKzEdMKdpMhy1XZToSM64anUNI9+saxK3
 ODHzCEFRE5XfoiS1p/TWCDYIthlUJIhYCafNd+cdkCt2FHwqrVkiDp1/srtU/+1359CV
 txZ5+WP6U+hiEJJHvBwIkHWRUKq/irVsr5+R2jyPac2VWFSABPEyi5GqcVp9/rAyKqud
 ivB+KBcPmscp8HxxBctoQj2bYm+rDsp9FShbnqUrka9POWYktrtNnuaqc+BEt9Mv5EM0
 CAGc29oBeJM56ZBnDgN2BCx4SrVkMck8aau30uIDwDZj6xI93LaWCiQSkJ4iIVp7cDgu
 c60Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=esU+3qm17qrDuexe7jxN3EvAQX5MaY6ZoatueVdr3qQ=;
 b=oYfYhkizo2c0EtIrdsn3VyheOYUwjBMv7IUiprVzTTrUYArPkRSYQ+JPcUBMDUwSCj
 yueVUkhpE9NQYl2jBSDuMVsSfV17f+OdMm96bO1JwEtFYO86f5627JDck3IZfwAzLvNq
 aVIBv3DDHbMUXWIUUtlx8Vb/HREM74bdPZpNR3gl6w08G1R6HH+dR40Nlzyqfo9iRtXw
 xAU9LfQPA7V4ZDNYeBEcKd2vcGfqqL635+vClncIMZNgEeUhl1bYiItxh+AuKyR4ixo1
 12BfCRLS3RB+t1RR8n5RTe7gclnmQ5TTEs3KTbt+S4+vGZpjKY39q2ya5eOgVcOlNqI0
 9Biw==
X-Gm-Message-State: APjAAAWF5sHvk9NpLNe4u1L4Ehcpt2HHOQ/EZFr9KIWnEYPOQ2yXGXra
 mwt6zLiP4l3Y6prYIhT6DkldoyTufO+Byjh5bww=
X-Google-Smtp-Source: APXvYqxc45ky2GHi1FeZ+BIf3VnaFuT1mLCFliU3lSSeZiCzoTlqseE8pdpvOSSzz5iK6QZMeV6uMntQG00gwpjmjHI=
X-Received: by 2002:a5d:4e09:: with SMTP id p9mr11738017wrt.218.1558557859722; 
 Wed, 22 May 2019 13:44:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190522000753.13300-1-chris.packham@alliedtelesis.co.nz>
 <20190522000753.13300-2-chris.packham@alliedtelesis.co.nz>
In-Reply-To: <20190522000753.13300-2-chris.packham@alliedtelesis.co.nz>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Wed, 22 May 2019 22:44:08 +0200
Message-ID: <CAFLxGvy2c9KV1CyoFaD76jvThfPiotqfoeNchqjGcDp+uHie7Q@mail.gmail.com>
Subject: Re: [PATCH 2/2] mtd: concat: implement _is_locked mtd operation
To: Chris Packham <chris.packham@alliedtelesis.co.nz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_134421_178388_F2279582 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 LKML <linux-kernel@vger.kernel.org>, Marek Vasut <marek.vasut@gmail.com>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, May 22, 2019 at 2:08 AM Chris Packham
<chris.packham@alliedtelesis.co.nz> wrote:
>
> Add an implementation of the _is_locked operation for concatenated mtd
> devices. As with concat_lock/concat_unlock this can simply use the
> common helper and pass mtd_is_locked as the operation.
>
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> ---
>  drivers/mtd/mtdconcat.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/drivers/mtd/mtdconcat.c b/drivers/mtd/mtdconcat.c
> index 9514cd2db63c..0e919f3423af 100644
> --- a/drivers/mtd/mtdconcat.c
> +++ b/drivers/mtd/mtdconcat.c
> @@ -496,6 +496,11 @@ static int concat_unlock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
>         return __concat_xxlock(mtd, ofs, len, mtd_unlock);
>  }
>
> +static int concat_is_locked(struct mtd_info *mtd, loff_t ofs, uint64_t len)
> +{
> +       return __concat_xxlock(mtd, ofs, len, mtd_is_locked);
> +}

Hmm, here you start abusing your own new API. :(

Did you verify that the unlock/lock-functions deal correctly with all
semantics from mtd_is_locked?
i.e. mtd_is_locked() with len = 0 returns 1 for spi-nor.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
