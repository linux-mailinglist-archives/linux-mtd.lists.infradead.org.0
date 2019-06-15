Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C98A47261
	for <lists+linux-mtd@lfdr.de>; Sun, 16 Jun 2019 00:23:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:To:
	Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5fQaa2ZcOPI8OEeDC3NRNMcZn561aPf4A696nILZjog=; b=KMS089Kkop0uiARH3kgr4fAIH
	67FZs8TehXIBC0FwAcA2KwrlYa+GKWe8MaD/yy8865XBwGcrCUSyqknI1tnMz5JHl0jThAIBTimCJ
	Kj5+kIcwkQxc39vgwHMsBS4kkNB/QHgHd8W/wKWPb5svjHmmJZolXfacJ2rUUmF2HK8yfZ+mAWoNf
	FP/uGUJGnvXBIqMpbzFwD+SCjVsESaul3t2OTEsnZ3yhI++Dc5zr2xF8gO1Bp+DJR3aK1wjmY0OdY
	JmwxRFmUlq+k4VMN67YL8p0RyYWvpA75mrgFamTNDKBe7/Q0vM8WiqKJZY5KLjB7KOu4FfgvgLfp5
	u8QbufBLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcH4k-0004Tf-Cb; Sat, 15 Jun 2019 22:23:06 +0000
Received: from outils.crapouillou.net ([89.234.176.41] helo=crapouillou.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcH4S-0004Sh-Ch
 for linux-mtd@lists.infradead.org; Sat, 15 Jun 2019 22:22:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
 s=mail; t=1560637359; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=sVyIFnScoxPXqLI9tBcjmS2//cgjT4c+m2gvnY81jCs=;
 b=PNJT8Rmfq1mOruQzkh5Clw9tA/Z4vAL+pEWIUuYcjUpwrJc7pt/GEWrTpyR0ZenAm8XnEA
 ZLC1dNozXtdj12dyU0QI3aNZlLsAKfVDjhFmLQuQHp2eE7NtWdJzYM77fDagcdBXlaUKgp
 Tj3ubec6/ZEBD4ATunaPH7OZRsyopo0=
Date: Sun, 16 Jun 2019 00:22:33 +0200
From: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH] mtd: rawnand: ingenic: Fix build error
To: YueHaibing <yuehaibing@huawei.com>
Message-Id: <1560637353.3745.0@crapouillou.net>
In-Reply-To: <20190615134430.30384-1-yuehaibing@huawei.com>
References: <20190615134430.30384-1-yuehaibing@huawei.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_152248_825379_898032B2 
X-CRM114-Status: GOOD (  15.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: vigneshr@ti.com, gregkh@linuxfoundation.org, richard@nod.at,
 linux-kernel@vger.kernel.org, marek.vasut@gmail.com,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 computersforpeace@gmail.com, dwmw2@infradead.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi,

I don't think the patch is correct. We want to be able to build
the ingenic_nand driver without the ingenic_ecc code.

The actual problem is that if the ingenic_nand driver is built-in,
then the ingenic_ecc driver must be built-in too (if enabled),
and we don't verify that constraint.

Something like that should work better:

config MTD_NAND_INGENIC_ECC
	def_tristate m if MTD_NAND_JZ4780=3Dm
	def_tristate y if MTD_NAND_JZ4780=3Dy

Thanks,
-Paul


Le sam. 15 juin 2019 =E0 15:44, YueHaibing <yuehaibing@huawei.com> a =

=E9crit :
> If MTD_NAND_JZ4780 is y and MTD_NAND_JZ4780_BCH is m,
> which select CONFIG_MTD_NAND_INGENIC_ECC to m, building fails:
> =

> drivers/mtd/nand/raw/ingenic/ingenic_nand.o: In function =

> `ingenic_nand_remove':
> ingenic_nand.c:(.text+0x177): undefined reference to =

> `ingenic_ecc_release'
> drivers/mtd/nand/raw/ingenic/ingenic_nand.o: In function =

> `ingenic_nand_ecc_correct':
> ingenic_nand.c:(.text+0x2ee): undefined reference to =

> `ingenic_ecc_correct'
> =

> Select MTD_NAND_INGENIC_ECC if MTD_NAND_JZ4780 is set
> =

> Reported-by: Hulk Robot <hulkci@huawei.com>
> Fiexes: 15de8c6efd0e ("mtd: rawnand: ingenic: Separate top-level and =

> SoC specific code")
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>  drivers/mtd/nand/raw/ingenic/Kconfig | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> =

> diff --git a/drivers/mtd/nand/raw/ingenic/Kconfig =

> b/drivers/mtd/nand/raw/ingenic/Kconfig
> index 19a96ce..d0b1909 100644
> --- a/drivers/mtd/nand/raw/ingenic/Kconfig
> +++ b/drivers/mtd/nand/raw/ingenic/Kconfig
> @@ -9,6 +9,7 @@ config MTD_NAND_JZ4740
>  config MTD_NAND_JZ4780
>  	tristate "JZ4780 NAND controller"
>  	depends on JZ4780_NEMC
> +	select MTD_NAND_INGENIC_ECC
>  	help
>  	  Enables support for NAND Flash connected to the NEMC on JZ4780 SoC
>  	  based boards, using the BCH controller for hardware error =

> correction.
> @@ -20,7 +21,6 @@ config MTD_NAND_INGENIC_ECC
> =

>  config MTD_NAND_JZ4740_ECC
>  	tristate "Hardware BCH support for JZ4740 SoC"
> -	select MTD_NAND_INGENIC_ECC
>  	help
>  	  Enable this driver to support the Reed-Solomon error-correction
>  	  hardware present on the JZ4740 SoC from Ingenic.
> @@ -30,7 +30,6 @@ config MTD_NAND_JZ4740_ECC
> =

>  config MTD_NAND_JZ4725B_BCH
>  	tristate "Hardware BCH support for JZ4725B SoC"
> -	select MTD_NAND_INGENIC_ECC
>  	help
>  	  Enable this driver to support the BCH error-correction hardware
>  	  present on the JZ4725B SoC from Ingenic.
> @@ -40,7 +39,6 @@ config MTD_NAND_JZ4725B_BCH
> =

>  config MTD_NAND_JZ4780_BCH
>  	tristate "Hardware BCH support for JZ4780 SoC"
> -	select MTD_NAND_INGENIC_ECC
>  	help
>  	  Enable this driver to support the BCH error-correction hardware
>  	  present on the JZ4780 SoC from Ingenic.
> --
> 2.7.4
> =

> =




______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
