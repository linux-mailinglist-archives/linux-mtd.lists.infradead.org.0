Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5EFF1D1AB7
	for <lists+linux-mtd@lfdr.de>; Wed, 13 May 2020 18:10:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/aHya4BbA1Rzn9yRSC/1YEaijHhlkzsoYmv44on12dE=; b=cHjrdbUo+S249I
	c5gb9oFJmM0t1Y66NtlQ4E9+8/4yVPPVLWD0TT8jGf86cjbtL4Y0FqdyAe0IVR0cmp0MX+GkHHr9i
	WsuSMm4qOU73Evb4+LdnAolbmcArPWki7YlZ/qYt96AhIU7s2NbRNZCLDKmm3vr88qNxqnsJsCMGy
	fShodN79/zGo+nvsA9rrLzkQZt7uPaeaKQ1r3hVDvXWJ5JTHjBx0Uk6tqeYioP5BzVk8TRm/rAxm3
	9+cAnOFeB2G8z1zwF2IY0nWOvhAbXKIrGdmEeAzv6qFtJlRzM8eZ0Gv/s+zamHbk9+FPi3jg7Rq0X
	0TSsqYIu6uzPFySJZM7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYtxF-0000Ka-Sn; Wed, 13 May 2020 16:09:57 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYtx5-0000Iu-NA
 for linux-mtd@lists.infradead.org; Wed, 13 May 2020 16:09:49 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id F3BB42A02F5;
 Wed, 13 May 2020 17:09:45 +0100 (BST)
Date: Wed, 13 May 2020 18:09:43 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH resend] mtd: spinand: Propagate ECC information to the
 MTD structure
Message-ID: <20200513180943.63efe337@collabora.com>
In-Reply-To: <20200513131029.15603-1-miquel.raynal@bootlin.com>
References: <20200513131029.15603-1-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_090947_891885_13A9C961 
X-CRM114-Status: GOOD (  18.53  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Vignesh Raghavendra <vigneshr@ti.com>, stable@vger.kernel.org,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, 13 May 2020 15:10:29 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> This is done by default in the raw NAND core (nand_base.c) but was
> missing in the SPI-NAND core. Without these two lines the ecc_strength
> and ecc_step_size values are not exported to the user through sysfs.
> 
> This fix depends on recent changes and should not be backported as-is.
> 
> Fixes: 7529df465248 ("mtd: nand: Add core infrastructure to support SPI NANDs")
> Cc: stable@vger.kernel.org
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
> 
> This patch is extracted from a bigger series and needs to be merged
> now as a fix. I haven't changed anything from it's original
> submission.
> 
>  drivers/mtd/nand/spi/core.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/mtd/nand/spi/core.c b/drivers/mtd/nand/spi/core.c
> index b6bb358b96ce..248c4d7a0cf4 100644
> --- a/drivers/mtd/nand/spi/core.c
> +++ b/drivers/mtd/nand/spi/core.c
> @@ -1089,6 +1089,10 @@ static int spinand_init(struct spinand_device *spinand)
>  
>  	mtd->oobavail = ret;
>  
> +	/* Propagate ECC information to mtd_info */
> +	mtd->ecc_strength = nand->ecc.ctx.conf.strength;
> +	mtd->ecc_step_size = nand->ecc.ctx.conf.step_size;
> +
>  	return 0;
>  
>  err_cleanup_nanddev:


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
