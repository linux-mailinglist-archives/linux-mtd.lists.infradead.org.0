Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6168A1E66ED
	for <lists+linux-mtd@lfdr.de>; Thu, 28 May 2020 17:56:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HDVM/uBYanXnfxxpa3VWoxrXiTYHFKjdHBEXS7IuPnQ=; b=haR3skSFQvnwCH
	sLLzj3fkRlDI3n1xEx0PEeTA8ggSEY8dkVUQn2kvRTofX7kyJhhygWkRt1I777mRkHOG0o9DiFIEA
	imCFX6UPfVv5DEWXCFWTOwUiOJCZipjWDTWMTrCKLwgL1qghBVnEF3FX23yPbk6QbPN4guWxsUxuq
	zr24zrU9Nr/MiXRwSJcMVZoecTDbNmkLbpd9Zoen5uRoTCFVbgpBvuu5RDP+k0Exqdi9zKZCqhZDh
	OwEKBdEuyIdiZ8sNeihPnkisq2be8dB88XoTESaRax8yA/p8gEdUWBejdyz3JQ7QiH61np3P7hsVY
	AjHNHeLiT/JcN/ZDDTlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeKtJ-0003Bu-4O; Thu, 28 May 2020 15:56:21 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeKsX-0002lh-Qd; Thu, 28 May 2020 15:55:36 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 791982A4023;
 Thu, 28 May 2020 16:55:31 +0100 (BST)
Date: Thu, 28 May 2020 17:55:27 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v6 18/18] mtd: rawnand: Move generic bits to the ECC
 framework
Message-ID: <20200528175527.7be7af00@collabora.com>
In-Reply-To: <20200528113113.9166-19-miquel.raynal@bootlin.com>
References: <20200528113113.9166-1-miquel.raynal@bootlin.com>
 <20200528113113.9166-19-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_085534_014797_8D04F2C7 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
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

On Thu, 28 May 2020 13:31:13 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Many OOB layouts and helpers are generic to all NAND chips, they
> should not be restricted to be only used by raw NAND controller
> drivers. They might later be used by generic ECC engines and SPI-NAND
> devices as well so move them into a more generic place.
> 
> To avoid moving all the raw NAND core "history" into the generic NAND
> layer, we already moved certain bits into legacy helpers in the raw
> NAND core to ensure backward compatibility.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  drivers/mtd/nand/Kconfig                      |  11 +
>  drivers/mtd/nand/Makefile                     |   1 +
>  .../mtd/nand/{raw/nand_bch.c => ecc-sw-bch.c} |   2 +-
>  drivers/mtd/nand/ecc.c                        | 299 +++++++++++++++++
>  drivers/mtd/nand/raw/Kconfig                  |  11 +-
>  drivers/mtd/nand/raw/Makefile                 |   1 -
>  drivers/mtd/nand/raw/atmel/nand-controller.c  |   3 +-
>  drivers/mtd/nand/raw/denali.c                 |   3 +
>  drivers/mtd/nand/raw/nand_base.c              | 313 +-----------------
>  drivers/mtd/nand/raw/nand_toshiba.c           |   2 +
>  drivers/mtd/nand/raw/nandsim.c                |   2 +-
>  drivers/mtd/nand/raw/omap2.c                  |   2 +-
>  drivers/mtd/nand/raw/sunxi_nand.c             |   3 +-
>  drivers/mtd/nand/raw/tegra_nand.c             |   3 +-
>  .../mtd/{nand_bch.h => nand-ecc-sw-bch.h}     |   6 +-
>  include/linux/mtd/nand.h                      |  20 ++
>  include/linux/mtd/rawnand.h                   |  17 +-
>  17 files changed, 364 insertions(+), 335 deletions(-)
>  rename drivers/mtd/nand/{raw/nand_bch.c => ecc-sw-bch.c} (99%)
>  rename include/linux/mtd/{nand_bch.h => nand-ecc-sw-bch.h} (92%)

I feel like this patch could be split a little.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
