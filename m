Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 637CB1E647D
	for <lists+linux-mtd@lfdr.de>; Thu, 28 May 2020 16:50:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sXY5J9Ek6bsXgbfAo/t/EnBE9RrCYZGhvb3kYlOaKyQ=; b=jalqHQrkwrWZgg
	k6a9Acn+c6g57lcG6K56yOQIyjgAGnI7QxGbuKGIJwcmnVM4S1wMVKGoxasHu3IW58LwLkH4gD7RE
	1jaI5urqzsP4MTY3ckjWuqtJKR1M7D2HdtqicCYHqet/KMlfWXua6GA5k4r08FfaMvBqXiUc2d41V
	2FRaSsziQ6gWb02GLxVOGeqEwgopj7S8bPlcH/DowKRfJWRXeH5hEOfDZP0xhzELgkBoMBnoyucL2
	1zK7IF9cDxqEK16Nr2S7UuJQSf+Dx0ApB4A/WayVcfaildJQDsQN/ZFaGAvwARCtcTocNTmgq/JMI
	hLSqz7zofAbsWq3BfSEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeJrP-0002eK-9x; Thu, 28 May 2020 14:50:19 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeJqc-0002Hx-UF; Thu, 28 May 2020 14:49:32 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 6AE4FC0007;
 Thu, 28 May 2020 14:49:27 +0000 (UTC)
Date: Thu, 28 May 2020 16:49:26 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v6 16/18] mtd: nand: Convert generic NAND bits to use
 the ECC framework
Message-ID: <20200528164926.3b99f848@xps13>
In-Reply-To: <20200528163907.6539e2a1@collabora.com>
References: <20200528113113.9166-1-miquel.raynal@bootlin.com>
 <20200528113113.9166-17-miquel.raynal@bootlin.com>
 <20200528163907.6539e2a1@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_074931_115873_BC555CF1 
X-CRM114-Status: GOOD (  14.86  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>, Julien Su <juliensu@mxic.com.tw>,
 Richard Weinberger <richard@nod.at>, Weijie Gao <weijie.gao@mediatek.com>,
 Paul Cercueil <paul@crapouillou.net>, Rob Herring <robh+dt@kernel.org>,
 linux-mtd@lists.infradead.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, Chuanhong Guo <gch981213@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


Boris Brezillon <boris.brezillon@collabora.com> wrote on Thu, 28 May
2020 16:39:07 +0200:

> On Thu, 28 May 2020 13:31:11 +0200
> Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> 
> > Embed a generic NAND ECC high-level object in the nand_device
> > structure to carry all the ECC engine configuration/data. Adapt the
> > raw NAND and SPI-NAND cores to fit the change.
> > 
> > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > ---
> >  drivers/mtd/nand/Kconfig                     |  1 +
> >  drivers/mtd/nand/raw/atmel/nand-controller.c |  9 +++--
> >  drivers/mtd/nand/raw/brcmnand/brcmnand.c     |  7 ++--
> >  drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c   | 12 +++---
> >  drivers/mtd/nand/raw/marvell_nand.c          |  7 ++--
> >  drivers/mtd/nand/raw/mtk_nand.c              |  4 +-
> >  drivers/mtd/nand/raw/nand_base.c             | 25 ++++++------
> >  drivers/mtd/nand/raw/nand_esmt.c             | 11 +++---
> >  drivers/mtd/nand/raw/nand_hynix.c            | 41 ++++++++++----------
> >  drivers/mtd/nand/raw/nand_jedec.c            |  4 +-
> >  drivers/mtd/nand/raw/nand_micron.c           | 14 ++++---
> >  drivers/mtd/nand/raw/nand_onfi.c             |  8 ++--
> >  drivers/mtd/nand/raw/nand_samsung.c          | 19 ++++-----
> >  drivers/mtd/nand/raw/nand_toshiba.c          | 11 +++---
> >  drivers/mtd/nand/raw/sunxi_nand.c            |  5 ++-
> >  drivers/mtd/nand/raw/tegra_nand.c            |  9 +++--
> >  drivers/mtd/nand/spi/core.c                  |  8 ++--
> >  drivers/mtd/nand/spi/macronix.c              |  6 +--
> >  drivers/mtd/nand/spi/toshiba.c               |  6 +--
> >  include/linux/mtd/nand.h                     |  8 ++--
> >  20 files changed, 115 insertions(+), 100 deletions(-)
> > 
> > diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
> > index a4478ffa279d..3327d8539a73 100644
> > --- a/drivers/mtd/nand/Kconfig
> > +++ b/drivers/mtd/nand/Kconfig
> > @@ -13,6 +13,7 @@ menu "ECC engine support"
> >  
> >  config MTD_NAND_ECC
> >  	bool
> > +	select MTD_NAND_CORE  
> 
> This select looks suspicious. Shouldn't it be a depends on, and more
> importantly, I think it should be part of patch 15.

Wouldn't we break a lot of users by using depends on?

Or maybe we can turn it on by default?

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
