Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D25519E626
	for <lists+linux-mtd@lfdr.de>; Sat,  4 Apr 2020 17:40:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EzOiMoB+qPp7o3Rz1kl8QQZF8lG+OHMrLyS1jQskJQQ=; b=m8gRTbz4svFl5Z
	AkW4Vptms7ay4iNEVUY/fKYnLyxcioSJQDb9SO0bpvNFwF3H6wKJVdnSEhyGj4oaYuEO1W31TJDno
	QKiDJMhQOkdYCPnK70KEugMlfTGsHf7NIfGDYajI1PwcUM5qoMWro2wgaxeJSIW63yyWLxcc4bgBy
	3TY84ZDyqbBQ0kRABAMSrfF4HGe619pbNaEYuxi4944a5AbqVYq6ZvSG88o4RyveXjdLNYvrrtYMJ
	8AdiuGEFftOAtEIBXesA9XLY0CfFrKlqez6ONa0E7zX5LJN4jpiZpcPxqk3s7wVVcM9TUgvi6OX8R
	DZ4E87oXOyPECLh0Mz0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKkuI-0007mq-Lb; Sat, 04 Apr 2020 15:40:26 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKkuA-0007lz-Aw
 for linux-mtd@lists.infradead.org; Sat, 04 Apr 2020 15:40:20 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 1971E2931D2;
 Sat,  4 Apr 2020 16:40:15 +0100 (BST)
Date: Sat, 4 Apr 2020 17:40:12 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH] mtd: spi-nor: Compile files in controllers/ directory
Message-ID: <20200404174012.6d205fbc@collabora.com>
In-Reply-To: <20200404153631.103549-1-linux@roeck-us.net>
References: <20200404153631.103549-1-linux@roeck-us.net>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_084019_193869_BE26EAF1 
X-CRM114-Status: GOOD (  14.57  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Boris Brezillon <bbrezillon@kernel.org>,
 linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Sat,  4 Apr 2020 08:36:31 -0700
Guenter Roeck <linux@roeck-us.net> wrote:

> Commit a0900d0195d2 ("mtd: spi-nor: Prepare core / manufacturer code
> split") moved various files into a new directory, but did not add the new
> directory to its parent directory Makefile. The moved files no longer
> build, and affected flash chips no longer instantiate.
> 
> Adding the new directory to the parent directory Makefile fixes the
> problem.
> 
> Fixes: a0900d0195d2 ("mtd: spi-nor: Prepare core / manufacturer code split")
> Cc: Boris Brezillon <bbrezillon@kernel.org>
> Cc: Tudor Ambarus <tudor.ambarus@microchip.com>
> Signed-off-by: Guenter Roeck <linux@roeck-us.net>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

Thanks for the fix, and my apologies for the regression.


> ---
>  drivers/mtd/spi-nor/Makefile | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/mtd/spi-nor/Makefile b/drivers/mtd/spi-nor/Makefile
> index 7ddb742de1fe..653923896205 100644
> --- a/drivers/mtd/spi-nor/Makefile
> +++ b/drivers/mtd/spi-nor/Makefile
> @@ -18,3 +18,5 @@ spi-nor-objs			+= winbond.o
>  spi-nor-objs			+= xilinx.o
>  spi-nor-objs			+= xmc.o
>  obj-$(CONFIG_MTD_SPI_NOR)	+= spi-nor.o
> +
> +obj-$(CONFIG_MTD_SPI_NOR)	+= controllers/


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
