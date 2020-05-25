Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E553E1E14F7
	for <lists+linux-mtd@lfdr.de>; Mon, 25 May 2020 21:53:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UL3BED8vk9GhIGqXePFWD8CiSmkUfU+EgnmMO95b+VA=; b=gFqy0r4eAJiPhq
	01lxsjlOiBxQRyQdLCHYF2KpGWkrWDvEfQmZPqw89o/UfKTpJRltVrHKqRho9uI/3A1EVb4XcXUVc
	QU3Md3ee2xYixxwqHaP5Do02PXf/y/yh6wAX0C6zTY0Ymf5buI5WVpPm/mhk5E1FH6oEhMimSL5aQ
	udCaiSGR28Lp1IjAymwFugjXCi9ZAOSOE/SxGGeeCY01WdfCrNOfV13rHouBz2+lYnt7KxesuNCe0
	wi+PeNEGsnAmrYeWmSUhoQm+rS7xCGstd0FY0E/yXWHo3gRg2i0GcA9R3ZC+CM5JPnqhQ2LCDBCr+
	F5k8SDrEh884cUJTHqvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdJAP-0000aj-Sb; Mon, 25 May 2020 19:53:45 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdJAI-0000aP-5U
 for linux-mtd@lists.infradead.org; Mon, 25 May 2020 19:53:39 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id CE2422A18C7;
 Mon, 25 May 2020 20:53:36 +0100 (BST)
Date: Mon, 25 May 2020 21:53:33 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v4 19/19] mtd: rawnand: Add timings for Kioxia
 TH58NVG2S3HBAI4
Message-ID: <20200525215333.1d71504b@collabora.com>
In-Reply-To: <20200525174239.11349-20-miquel.raynal@bootlin.com>
References: <20200525174239.11349-1-miquel.raynal@bootlin.com>
 <20200525174239.11349-20-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_125338_340449_EC7ACFCE 
X-CRM114-Status: GOOD (  21.01  )
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

On Mon, 25 May 2020 19:42:39 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> From: Rickard x Andersson <rickaran@axis.com>
> 
> The Kioxia/Toshiba TH58NVG2S3HBAI4 NAND memory is not ONFI compliant.
> The timings of the NAND chip memory are quite close to ONFI mode 4 but
> is breaking that spec.
> 
> By providing our own set of timings, erase block read speed is increased
> from 6910 kiB/s to 13490 kiB/s and erase block write speed is increased
> from 3350 kiB/s to 4410 kiB/s.
> 
> Tested on IMX6SX which has a NAND controller supporting EDO mode.
> 
> Signed-off-by: Rickard x Andersson <rickaran@axis.com>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  drivers/mtd/nand/raw/nand_ids.c     |  3 +++
>  drivers/mtd/nand/raw/nand_toshiba.c | 38 +++++++++++++++++++++++++++++
>  2 files changed, 41 insertions(+)
> 
> diff --git a/drivers/mtd/nand/raw/nand_ids.c b/drivers/mtd/nand/raw/nand_ids.c
> index e0dbc2e316c7..8b676e8b481b 100644
> --- a/drivers/mtd/nand/raw/nand_ids.c
> +++ b/drivers/mtd/nand/raw/nand_ids.c
> @@ -52,6 +52,9 @@ struct nand_flash_dev nand_flash_ids[] = {
>  		{ .id = {0xad, 0xde, 0x94, 0xda, 0x74, 0xc4} },
>  		  SZ_8K, SZ_8K, SZ_2M, NAND_NEED_SCRAMBLING, 6, 640,
>  		  NAND_ECC_INFO(40, SZ_1K), 4 },
> +	{"TH58NVG2S3HBAI4 4G 3.3V 8-bit",
> +		{ .id = {0x98, 0xdc, 0x91, 0x15, 0x76} },
> +		  SZ_2K, SZ_512, SZ_128K, 0, 5, 128, NAND_ECC_INFO(8, SZ_512) },
>  
>  	LEGACY_ID_NAND("NAND 4MiB 5V 8-bit",   0x6B, 4, SZ_8K, SP_OPTIONS),
>  	LEGACY_ID_NAND("NAND 4MiB 3,3V 8-bit", 0xE3, 4, SZ_8K, SP_OPTIONS),
> diff --git a/drivers/mtd/nand/raw/nand_toshiba.c b/drivers/mtd/nand/raw/nand_toshiba.c
> index b6efaf5195bb..6c79464fdf34 100644
> --- a/drivers/mtd/nand/raw/nand_toshiba.c
> +++ b/drivers/mtd/nand/raw/nand_toshiba.c
> @@ -205,6 +205,42 @@ static int tc58teg5dclta00_init(struct nand_chip *chip)
>  	return 0;
>  }
>  
> +static int th58nvg2s3hbai4_choose_data_interface(struct nand_chip *chip)
> +{
> +	struct nand_data_interface iface;
> +	struct nand_sdr_timings *sdr = &iface.timings.sdr;
> +	int ret;
> +
> +	/* Start with timings from the closest timing mode, mode 4. */
> +	ret = onfi_fill_data_interface(chip, &iface, NAND_SDR_IFACE, 4);
> +	if (ret)
> +		return ret;
> +
> +	/* Patch timings that differ from mode 4. */
> +	sdr->tALS_min = 12000;
> +	sdr->tCHZ_max = 20000;
> +	sdr->tCLS_min = 12000;
> +	sdr->tCOH_min = 0;
> +	sdr->tDS_min = 12000;
> +	sdr->tRHOH_min = 25000;
> +	sdr->tRHW_min = 30000;
> +	sdr->tRHZ_max = 60000;
> +	sdr->tWHR_min = 60000;
> +
> +	/* Patch timings not part of onfi timing mode. */
> +	sdr->tPROG_max = 700000000;
> +	sdr->tBERS_max = 5000000000;

Yay! That's much better than redefining all timings.

> +
> +	return nand_choose_best_vendor_sdr_iface(chip, &iface);
> +}
> +
> +static int th58nvg2s3hbai4_init(struct nand_chip *chip)
> +{
> +	chip->ops.choose_data_interface = th58nvg2s3hbai4_choose_data_interface;
> +
> +	return 0;
> +}
> +
>  static int toshiba_nand_init(struct nand_chip *chip)
>  {
>  	if (nand_is_slc(chip))
> @@ -217,6 +253,8 @@ static int toshiba_nand_init(struct nand_chip *chip)
>  
>  	if (!strcmp("TC58TEG5DCLTA00", chip->parameters.model))
>  		tc58teg5dclta00_init(chip);

As said previously, I'd prefer to have a patch using the same approach
for TC58TEG5DCLTA00.

> +	if (!strncmp("TH58NVG2S3HBAI4", chip->parameters.model, 15))
> +		th58nvg2s3hbai4_init(chip);
>  
>  	return 0;
>  }


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
