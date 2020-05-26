Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 654281E3227
	for <lists+linux-mtd@lfdr.de>; Wed, 27 May 2020 00:14:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U5xRJ6Ol7/O7xOY9bqB9BO31/ar4O8KMHWZGvhvfJi8=; b=J90PKc4I/A/Gpa
	Fo+w6HDA69Fh16cnKbxL405uzb8CU7if5l0nRg3h5HAn3iUc61uGnvswtJ4kIGWOsgdllrHpMV0NL
	I97UpgbCT68Y1+Y0hoe1lsKmecIQWpJQzmx71Vy2E2m3RfDEpiNrzJkWES7MxBwTjnysjhE/Q7xKa
	wMGrnWlAamcRpkIdAghdQshujCSHG4ZEzQMfbbmsn5thriaCr56iRvLP9Brex0gp9tsFuq838/w9q
	BQ7PfNbzKQgY0lf6hSOfXWER5G3Rru9YFC3TIE6gKtLBjJH+taW7ZFEUqvvgc45wiW1lf0py3g6gT
	xXZR6ZSzRRxUBBxeanvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdhpc-0003p2-Qo; Tue, 26 May 2020 22:13:56 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdhpS-0003of-Ue
 for linux-mtd@lists.infradead.org; Tue, 26 May 2020 22:13:48 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 984712A18FE;
 Tue, 26 May 2020 23:13:45 +0100 (BST)
Date: Wed, 27 May 2020 00:13:42 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v5 27/28] mtd: rawnand: Get rid of the default ONFI
 timing mode
Message-ID: <20200527001342.21d7da15@collabora.com>
In-Reply-To: <20200526191725.7591-28-miquel.raynal@bootlin.com>
References: <20200526191725.7591-1-miquel.raynal@bootlin.com>
 <20200526191725.7591-28-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_151347_119222_6968A71F 
X-CRM114-Status: GOOD (  24.22  )
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
Cc: Rickard Andersson <rickaran@axis.com>, Richard Weinberger <richard@nod.at>,
 linux-mtd@lists.infradead.org, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 26 May 2020 21:17:24 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> The ->choose_data_interface() hook is here for manufacturer drivers to
> provide a better timing interface than the default one, this field is
> not needed anymore.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
>  drivers/mtd/nand/raw/nand_base.c | 19 +++++--------------
>  include/linux/mtd/rawnand.h      |  9 ---------
>  2 files changed, 5 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
> index f14d297c50f4..2547136a9cd7 100644
> --- a/drivers/mtd/nand/raw/nand_base.c
> +++ b/drivers/mtd/nand/raw/nand_base.c
> @@ -1010,17 +1010,15 @@ static int nand_setup_data_interface(struct nand_chip *chip, int chipnr)
>   * @iface: the data interface (can eventually be updated)
>   * @spec_timings: specific timings, when not fitting the ONFI specification
>   *
> - * If specific timings are provided, use them. Otherwise, try to retrieve
> - * supported timing modes from ONFI information. Finally, if the NAND chip does
> - * not follow the ONFI specification, rely on the ->default_timing_mode
> - * specified in the nand_ids table.
> + * If specific timings are provided, use them. Otherwise, retrieve supported
> + * timing modes from ONFI information.
>   */
>  int nand_choose_best_sdr_timings(struct nand_chip *chip,
>  				 struct nand_data_interface *iface,
>  				 struct nand_sdr_timings *spec_timings)
>  {
>  	const struct nand_controller_ops *ops = chip->controller->ops;
> -	int best_mode = 0, onfi_modes, mode, ret;
> +	int best_mode = 0, mode, ret;
>  
>  	iface->type = NAND_SDR_IFACE;
>  
> @@ -1037,13 +1035,8 @@ int nand_choose_best_sdr_timings(struct nand_chip *chip,
>  
>  		/* Fallback to slower modes */
>  		best_mode = iface->timings.mode;
> -	} else {
> -		if (chip->parameters.onfi) {
> -			onfi_modes = chip->parameters.onfi->async_timing_mode;
> -			best_mode = fls(onfi_modes) - 1;
> -		} else {
> -			best_mode = chip->onfi_timing_mode_default;
> -		}
> +	} else if (chip->parameters.onfi) {
> +		best_mode = fls(chip->parameters.onfi->async_timing_mode) - 1;
>  	}
>  
>  	for (mode = best_mode; mode >= 0; mode--) {
> @@ -4822,8 +4815,6 @@ static bool find_full_id_nand(struct nand_chip *chip,
>  		chip->options |= type->options;
>  		chip->base.eccreq.strength = NAND_ECC_STRENGTH(type);
>  		chip->base.eccreq.step_size = NAND_ECC_STEP(type);
> -		chip->onfi_timing_mode_default =
> -					type->onfi_timing_mode_default;
>  
>  		chip->parameters.model = kstrdup(type->name, GFP_KERNEL);
>  		if (!chip->parameters.model)
> diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
> index 5bd79e853140..00557e553827 100644
> --- a/include/linux/mtd/rawnand.h
> +++ b/include/linux/mtd/rawnand.h
> @@ -1070,9 +1070,6 @@ struct nand_manufacturer {
>   * @options: Various chip options. They can partly be set to inform nand_scan
>   *           about special functionality. See the defines for further
>   *           explanation.
> - * @onfi_timing_mode_default: Default ONFI timing mode. This field is set to the
> - *			      actually used ONFI mode if the chip is ONFI
> - *			      compliant or deduced from the datasheet otherwise
>   * @data_interface: NAND interface timing information
>   * @bbt_erase_shift: Number of address bits in a bbt entry
>   * @bbt_options: Bad block table specific options. All options used here must
> @@ -1120,7 +1117,6 @@ struct nand_chip {
>  	unsigned int options;
>  
>  	/* Data interface */
> -	int onfi_timing_mode_default;
>  	struct nand_data_interface data_interface;
>  
>  	/* Bad block information */
> @@ -1271,10 +1267,6 @@ nand_get_sdr_timings(struct nand_chip *chip)
>   *               @ecc_step_ds in nand_chip{}, also from the datasheet.
>   *               For example, the "4bit ECC for each 512Byte" can be set with
>   *               NAND_ECC_INFO(4, 512).
> - * @onfi_timing_mode_default: the default ONFI timing mode entered after a NAND
> - *			      reset. Should be deduced from timings described
> - *			      in the datasheet.
> - *
>   */
>  struct nand_flash_dev {
>  	char *name;
> @@ -1295,7 +1287,6 @@ struct nand_flash_dev {
>  		uint16_t strength_ds;
>  		uint16_t step_ds;
>  	} ecc;
> -	int onfi_timing_mode_default;
>  };
>  
>  int nand_create_bbt(struct nand_chip *chip);


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
