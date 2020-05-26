Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C9B61E31ED
	for <lists+linux-mtd@lfdr.de>; Wed, 27 May 2020 00:02:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eSZRnXvNCRs3PnDjC9Shg8JdQsg0Hfb2V06k0Tk2Qiw=; b=PdwGbNeY0ScP4f
	xkDBs8GlFMak12HyCf3kuaA5iiI8obvnNpqeUa5WXms97fU/Q8Ck16SoNy3Z1JRZK0FxjryLrefOH
	pwMl1DSSE9AtoGKezrEfV9971GCsTdxtF2t6DGJhOxgT3EWuMmNYEC7FPvz+wgNiWJnplSMoCLXH1
	Qe8AnWtkBs5Ddo7DHhAvLEuR2bLW7eiEEnvi0BBQR86juODFuYH8dFz3sT9oRKwZIiTw/uma6RmtV
	l7o0HgPJRQPy/w0kuP27LfBFstVVs9jw/S31BM24ym5x01H9o5bS/o7SsVdlHVpEcPXOtAoKKA4od
	Pxh/ReI9W6XzJZ07+2tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdheK-0005BV-Ep; Tue, 26 May 2020 22:02:16 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdheC-0005Am-3g
 for linux-mtd@lists.infradead.org; Tue, 26 May 2020 22:02:09 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id A9994261217;
 Tue, 26 May 2020 23:02:06 +0100 (BST)
Date: Wed, 27 May 2020 00:02:03 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v5 24/28] mtd: rawnand: toshiba: Implement
 ->choose_data_interface() for TC58NVG0S3E
Message-ID: <20200527000203.5773416d@collabora.com>
In-Reply-To: <20200526191725.7591-25-miquel.raynal@bootlin.com>
References: <20200526191725.7591-1-miquel.raynal@bootlin.com>
 <20200526191725.7591-25-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_150208_280292_7C3ACDEC 
X-CRM114-Status: GOOD (  17.63  )
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
Cc: Rickard Andersson <rickaran@axis.com>, Richard Weinberger <richard@nod.at>,
 linux-mtd@lists.infradead.org, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 26 May 2020 21:17:21 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> This chip supports ONFI SDR timing mode 2, implement the new hook to
> advertize it.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  drivers/mtd/nand/raw/nand_ids.c     |  3 +--
>  drivers/mtd/nand/raw/nand_toshiba.c | 21 +++++++++++++++++++++
>  2 files changed, 22 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/mtd/nand/raw/nand_ids.c b/drivers/mtd/nand/raw/nand_ids.c
> index e0dbc2e316c7..c729a8bc895d 100644
> --- a/drivers/mtd/nand/raw/nand_ids.c
> +++ b/drivers/mtd/nand/raw/nand_ids.c
> @@ -28,8 +28,7 @@ struct nand_flash_dev nand_flash_ids[] = {
>  	 */
>  	{"TC58NVG0S3E 1G 3.3V 8-bit",
>  		{ .id = {0x98, 0xd1, 0x90, 0x15, 0x76, 0x14, 0x01, 0x00} },
> -		  SZ_2K, SZ_128, SZ_128K, 0, 8, 64, NAND_ECC_INFO(1, SZ_512),
> -		  2 },
> +		  SZ_2K, SZ_128, SZ_128K, 0, 8, 64, NAND_ECC_INFO(1, SZ_512), },
>  	{"TC58NVG2S0F 4G 3.3V 8-bit",
>  		{ .id = {0x98, 0xdc, 0x90, 0x26, 0x76, 0x15, 0x01, 0x08} },
>  		  SZ_4K, SZ_512, SZ_256K, 0, 8, 224, NAND_ECC_INFO(4, SZ_512) },
> diff --git a/drivers/mtd/nand/raw/nand_toshiba.c b/drivers/mtd/nand/raw/nand_toshiba.c
> index fe2bc20972a9..860ae0c13063 100644
> --- a/drivers/mtd/nand/raw/nand_toshiba.c
> +++ b/drivers/mtd/nand/raw/nand_toshiba.c
> @@ -206,6 +206,18 @@ tc58teg5dclta00_choose_data_interface(struct nand_chip *chip,
>  	return nand_choose_best_sdr_timings(chip, iface, NULL);
>  }
>  
> +static int tc58nvg0s3e_choose_data_interface(struct nand_chip *chip,
> +					     struct nand_data_interface *iface)
> +{
> +	int ret;
> +
> +	ret = onfi_fill_data_interface(chip, iface, NAND_SDR_IFACE, 2);
> +	if (ret)
> +		return ret;
> +
> +	return nand_choose_best_sdr_timings(chip, iface, NULL);
> +}
> +
>  static int tc58teg5dclta00_init(struct nand_chip *chip)
>  {
>  	struct mtd_info *mtd = nand_to_mtd(chip);
> @@ -217,6 +229,13 @@ static int tc58teg5dclta00_init(struct nand_chip *chip)
>  	return 0;
>  }
>  
> +static int tc58nvg0s3e_init(struct nand_chip *chip)
> +{
> +	chip->ops.choose_data_interface = &tc58nvg0s3e_choose_data_interface;
> +
> +	return 0;
> +}
> +
>  static int toshiba_nand_init(struct nand_chip *chip)
>  {
>  	if (nand_is_slc(chip))
> @@ -229,6 +248,8 @@ static int toshiba_nand_init(struct nand_chip *chip)
>  
>  	if (!strcmp("TC58TEG5DCLTA00", chip->parameters.model))
>  		tc58teg5dclta00_init(chip);
> +	if (!strcmp("TC58NVG0S3E", chip->parameters.model))

The model won't match "TC58NVG0S3E", unless you use strncmp().

> +		tc58nvg0s3e_init(chip);
>  
>  	return 0;
>  }


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
