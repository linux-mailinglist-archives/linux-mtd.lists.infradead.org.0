Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C52848087
	for <lists+linux-mtd@lfdr.de>; Mon, 17 Jun 2019 13:24:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:To:
	Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0DPB24hf1EwkcXpOTnhCpMTtJFmX47KWfpg+KcI6Aqo=; b=OOrgI2QOMK61vzWJpENwdKho8
	CcVDAg5lVIxpy39v/DvrH1eDI4aHNOj0FkRuK8veYbqkfhsjj114PxDUygG3PiTuRILJps7xPlg93
	luK/KD3ajLAVzhHkybLm4HbC+Pyk+TWUPWBZmO40UF7Q3FoIEdVpCdb88aT0GIDYGbjkO2mtqqzjq
	ejNZ4lxIgwGHR77K2H5oU/PaCyoZABGwwJ+iuZ2l6xJlJzGpC5beoZeLG/AWg/Ae0KfeyoK8W6gBU
	FNPnsLo0Vmvwhf6kGsxeC4pV9awhaaI4U7aj6A2irukiNrk90sHL2ivBAPKf8mY9cSiPg3Ac/j5d+
	QefYIGDRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcpkS-0000UK-Rv; Mon, 17 Jun 2019 11:24:28 +0000
Received: from outils.crapouillou.net ([89.234.176.41] helo=crapouillou.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcpkI-0000Sr-5p
 for linux-mtd@lists.infradead.org; Mon, 17 Jun 2019 11:24:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
 s=mail; t=1560770649; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XXgClKH7M7bb5E8c4HAo2DhEtqDm8AwWK0DAg3w6CSA=;
 b=DLFCe8J7F1iPnSyAWfCXNCPswqEMS67tC5mWBLsUUPwwict7OqgpXo58qFhDKzwVuWmzPl
 TCvyCpszlQ8FaFEm+TC3DOPxtvbwxLOoI1+wWRdFKVEjsCDewxvAz27jOkgCkA0D6HuhTQ
 T0Cn9LgLxGKKsufguSZno81dsI1kJRU=
Date: Mon, 17 Jun 2019 13:24:04 +0200
From: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH] mtd: rawnand: ingenic: fix ingenic_ecc dependency
To: Arnd Bergmann <arnd@arndb.de>
Message-Id: <1560770644.1774.0@crapouillou.net>
In-Reply-To: <20190617111110.2103786-1-arnd@arndb.de>
References: <20190617111110.2103786-1-arnd@arndb.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_042418_594950_2E7E6F7C 
X-CRM114-Status: GOOD (  16.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 linux-kernel@vger.kernel.org, Marek Vasut <marek.vasut@gmail.com>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Arnd,


Le lun. 17 juin 2019 =E0 13:10, Arnd Bergmann <arnd@arndb.de> a =E9crit :
> The ecc code is called from the main ingenic_nand module, but the
> Kconfig symbol gets selected by the dependent ones.
> =

> If the child drivers are loadable modules, this leads to a link
> error:
> =

> drivers/mtd/nand/raw/ingenic/ingenic_nand.o: In function =

> `ingenic_nand_remove':
> ingenic_nand.c:(.text+0x1a1): undefined reference to =

> `ingenic_ecc_release'
> drivers/mtd/nand/raw/ingenic/ingenic_nand.o: In function =

> `ingenic_nand_ecc_correct':
> ingenic_nand.c:(.text+0x1fa): undefined reference to =

> `ingenic_ecc_correct'
> drivers/mtd/nand/raw/ingenic/ingenic_nand.o: In function =

> `ingenic_nand_ecc_calculate':
> ingenic_nand.c:(.text+0x255): undefined reference to =

> `ingenic_ecc_calculate'
> drivers/mtd/nand/raw/ingenic/ingenic_nand.o: In function =

> `ingenic_nand_probe':
> ingenic_nand.c:(.text+0x3ca): undefined reference to =

> `of_ingenic_ecc_get'
> ingenic_nand.c:(.text+0x685): undefined reference to =

> `ingenic_ecc_release'
> =

> Rearrange this to have the ecc code linked the same way as the main
> driver.

I think there's a better way to fix it, only in Kconfig.

* Add a bool symbol MTD_NAND_INGENIC_USE_HW_ECC
* Have the three ECC/BCH drivers select this symbol instead of
  MTD_NAND_INGENIC_ECC
* Add the following to the MTD_NAND_JZ4780 config option:
  "select MTD_NAND_INGENIC_ECC if MTD_NAND_INGENIC_USE_HW_ECC"


> Fixes: 15de8c6efd0e ("mtd: rawnand: ingenic: Separate top-level and =

> SoC specific code")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/mtd/nand/raw/ingenic/Kconfig  | 2 +-
>  drivers/mtd/nand/raw/ingenic/Makefile | 5 ++++-
>  2 files changed, 5 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/mtd/nand/raw/ingenic/Kconfig =

> b/drivers/mtd/nand/raw/ingenic/Kconfig
> index 19a96ce515c1..66b7cffdb0c2 100644
> --- a/drivers/mtd/nand/raw/ingenic/Kconfig
> +++ b/drivers/mtd/nand/raw/ingenic/Kconfig
> @@ -16,7 +16,7 @@ config MTD_NAND_JZ4780
>  if MTD_NAND_JZ4780
> =

>  config MTD_NAND_INGENIC_ECC
> -	tristate
> +	bool
> =

>  config MTD_NAND_JZ4740_ECC
>  	tristate "Hardware BCH support for JZ4740 SoC"
> diff --git a/drivers/mtd/nand/raw/ingenic/Makefile =

> b/drivers/mtd/nand/raw/ingenic/Makefile
> index 1ac4f455baea..5a55efc5d9bb 100644
> --- a/drivers/mtd/nand/raw/ingenic/Makefile
> +++ b/drivers/mtd/nand/raw/ingenic/Makefile
> @@ -2,7 +2,10 @@
>  obj-$(CONFIG_MTD_NAND_JZ4740) +=3D jz4740_nand.o
>  obj-$(CONFIG_MTD_NAND_JZ4780) +=3D ingenic_nand.o
> =

> -obj-$(CONFIG_MTD_NAND_INGENIC_ECC) +=3D ingenic_ecc.o
> +ifdef CONFIG_MTD_NAND_INGENIC_ECC
> +obj-$(CONFIG_MTD_NAND_JZ4780) +=3D ingenic_ecc.o
> +endif
> +
>  obj-$(CONFIG_MTD_NAND_JZ4740_ECC) +=3D jz4740_ecc.o
>  obj-$(CONFIG_MTD_NAND_JZ4725B_BCH) +=3D jz4725b_bch.o
>  obj-$(CONFIG_MTD_NAND_JZ4780_BCH) +=3D jz4780_bch.o
> --
> 2.20.0
> =




______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
