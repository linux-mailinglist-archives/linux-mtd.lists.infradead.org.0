Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 862EA19EA18
	for <lists+linux-mtd@lfdr.de>; Sun,  5 Apr 2020 11:01:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bbKnMoEsqgcStHZcNHgNWEthZc0yBujztET0PwXz7Ts=; b=ZpEz5WW53EYEvS
	7YqiJztjF4BRp+Ea0oPB1/sckEgVkMevkrMHuMVe2xwjenHCWAkQITzzXrONMiiA9f6ov60ZeUmRX
	I7taLH/Hjgnb5loFmDXrTBv2qMLdR5v09lKDx/zba8SKuWBLMvm6LxZZxdpz3ZDtQp7TTb75PxrXF
	kwsQv2IiFnPFRX05d/wnsfoTg3IJuduX4diDY6KXsb2J1wAqLTo3bTC7MeH781f75j4YZ8KmwEtsS
	WnURHli4Hq28ME3j8oiF9q92gNyZwMzlHol6vmDk091UiNRY0M+DsNo4P1UWWsl5BHkIDaV1xzJmu
	mwQNx0+qZoJr39ktnmmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL19o-00039D-Nq; Sun, 05 Apr 2020 09:01:32 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL19O-00032Y-Ap; Sun, 05 Apr 2020 09:01:08 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id C8D85283C69;
 Sun,  5 Apr 2020 10:01:00 +0100 (BST)
Date: Sun, 5 Apr 2020 11:00:56 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH v2 03/25] mtd: spi-nor: Prepare core / manufacturer code
 split
Message-ID: <20200405110056.7764d64e@collabora.com>
In-Reply-To: <20200404060015.GA209893@roeck-us.net>
References: <20200313194130.342251-1-tudor.ambarus@microchip.com>
 <20200313194130.342251-4-tudor.ambarus@microchip.com>
 <20200404053936.GA176702@roeck-us.net>
 <20200404060015.GA209893@roeck-us.net>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_020106_532033_2C1A11BD 
X-CRM114-Status: GOOD (  16.85  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: vigneshr@ti.com, bbrezillon@kernel.org, richard@nod.at,
 Tudor.Ambarus@microchip.com, linux-mtd@lists.infradead.org,
 miquel.raynal@bootlin.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, 3 Apr 2020 23:00:15 -0700
Guenter Roeck <linux@roeck-us.net> wrote:

> On Fri, Apr 03, 2020 at 10:39:36PM -0700, Guenter Roeck wrote:
> > On Fri, Mar 13, 2020 at 07:42:36PM +0000, Tudor.Ambarus@microchip.com wrote:  
> > > From: Boris Brezillon <bbrezillon@kernel.org>
> > > 
> > > Move all SPI NOR controller drivers to a controllers/ sub-directory
> > > so that we only have SPI NOR related source files under
> > > drivers/mtd/spi-nor/.
> > > 
> > > Rename spi-nor.c into core.c, we are about to split this file in multiple
> > > source files (one per manufacturer, plus one for the SFDP parsing logic).
> > > 
> > > Signed-off-by: Boris Brezillon <bbrezillon@kernel.org>
> > > Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> > > Reviewed-by: Vignesh Raghavendra <vigneshr@ti.com>  
> > 
> > I have no idea why, but with this patch in the upstream kernel I can no longer
> > boot aspeed systems from flash with qemu.
> >   
> 
> Ah yes, it does help to actually build the moved files. The following diff makes
> it work again.
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

Looks like this line has been lost during a rebase :-/ (it was present
in the RFC [1]).

[1]https://patchwork.ozlabs.org/patch/1009273/

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
