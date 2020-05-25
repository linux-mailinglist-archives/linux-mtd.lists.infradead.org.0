Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A9C1E14ED
	for <lists+linux-mtd@lfdr.de>; Mon, 25 May 2020 21:45:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l5QNqEauLG7+3H9yUHId4I+siM7OYWVH0brTnJmzMI8=; b=RD0xcks2TdLz2F
	rRc/nNrqnQ9ep/ZJh9rrX5pVyjjow3MPrKAiALoQzKObZngbQFEHiVI+AKCGDN6ilNcA1pMSEouIA
	EU2fQSwESB2TDQgk/vQrN3dy+XDvPDGbA00WUyBMBbCYfEus6Ni5tfAo9gpcTPNG6c8AshAApnA9W
	d131+ZjQwMpANWyoUTspUhkUM4bry82N7QC3Zrb9UyL4swoNGQyizh+z3MBRSKrA4nUMsXfvguqQi
	759syQql3ThCcfRQ+OJcvgBFuBgR94JVZEoBRy23cKdZL/vbgaOOzdjz09NF+M5uEzT5+mLBZYY/B
	xzPRgAgkhXJLD5VSJAfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdJ2h-00056F-Js; Mon, 25 May 2020 19:45:47 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdJ2W-00054a-9j
 for linux-mtd@lists.infradead.org; Mon, 25 May 2020 19:45:37 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 81DF12A17E7;
 Mon, 25 May 2020 20:45:34 +0100 (BST)
Date: Mon, 25 May 2020 21:45:30 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v4 17/19] mtd: rawnand: Introduce
 nand_choose_best_vendor_sdr_iface()
Message-ID: <20200525214530.16cd59c1@collabora.com>
In-Reply-To: <20200525174239.11349-18-miquel.raynal@bootlin.com>
References: <20200525174239.11349-1-miquel.raynal@bootlin.com>
 <20200525174239.11349-18-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_124536_478610_001A2113 
X-CRM114-Status: GOOD (  21.01  )
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
 linux-mtd@lists.infradead.org, Vignesh Raghavendra <vigneshr@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, 25 May 2020 19:42:37 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> This helper is here to simplify the life of NAND manufacturer drivers.
> 
> Manufacturers will be allowed to propose their own set of timings and,
> if they want, use this helper to:
> 1/ verify it is supported by the controller,
> 2/ fallback on a supported default ONFI mode, slower but still faster
>    than the default mode 0.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  drivers/mtd/nand/raw/internals.h |  2 ++
>  drivers/mtd/nand/raw/nand_base.c | 27 +++++++++++++++++++++++++++
>  2 files changed, 29 insertions(+)
> 
> diff --git a/drivers/mtd/nand/raw/internals.h b/drivers/mtd/nand/raw/internals.h
> index ac103d8767be..9af6979257e2 100644
> --- a/drivers/mtd/nand/raw/internals.h
> +++ b/drivers/mtd/nand/raw/internals.h
> @@ -89,6 +89,8 @@ int onfi_fill_data_interface(struct nand_chip *chip,
>  			     enum nand_data_interface_type type,
>  			     int timing_mode);
>  unsigned int onfi_find_equivalent_sdr_mode(const struct nand_sdr_timings *vendor_timings);
> +int nand_choose_best_vendor_sdr_iface(struct nand_chip * chip,
> +				      struct nand_data_interface *best_iface);
>  int nand_get_features(struct nand_chip *chip, int addr, u8 *subfeature_param);
>  int nand_set_features(struct nand_chip *chip, int addr, u8 *subfeature_param);
>  int nand_read_page_raw_notsupp(struct nand_chip *chip, u8 *buf,
> diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
> index 15e10f045c9f..d9fe7795f183 100644
> --- a/drivers/mtd/nand/raw/nand_base.c
> +++ b/drivers/mtd/nand/raw/nand_base.c
> @@ -1078,6 +1078,33 @@ static int nand_choose_data_interface(struct nand_chip *chip)
>  	return nand_choose_best_sdr_iface(chip, &chip->data_interface);
>  }
>  
> +/**
> + * nand_choose_best_vendor_sdr_iface - given a set of timings, find the closest
> + *                                     mode/timings set for this interface
> + *                                     supported by both the NAND controller and
> + *                                     the NAND chip
> + * @chip: the NAND chip
> + * @best_iface: the best data interface (can eventually be updated)
> + */
> +int nand_choose_best_vendor_sdr_iface(struct nand_chip * chip,
> +				      struct nand_data_interface *best_iface)
> +{
> +	int ret;
> +
> +	/* Pick the closest mode */
> +	best_iface->timings.mode = onfi_find_equivalent_sdr_mode(&best_iface->timings.sdr);
> +
> +	/* Find the closest supported data interface */
> +	ret = nand_choose_best_sdr_iface(chip, best_iface);
> +	if (ret)
> +		return ret;
> +
> +	chip->data_interface = *best_iface;
> +
> +	return 0;
> +}

Can't we just merge nand_choose_best_vendor_sdr_iface() and
nand_choose_best_sdr_iface()?

int nand_choose_best_sdr_timings(struct nand_chip * chip,
				 struct nand_data_interface *iface,
				 const struct nand_sdr_timing *spec_timings)
{
	iface->type = SDR;

	if (spec_timings) {
		iface->timings.sdr = spec_timings;
		iface->timings.mode = onfi_find_closest_sdr_mode(spec_timings);
	} else {
		unsigned int best_mode;

		if (chip->parameters.onfi)
			best_mode = fls(chip->parameters.onfi->async_timing_mode) - 1;
		else
			best_mode = chip->default_timing_mode;

		onfi_fill_data_interface(chip, iface,
					  NAND_SDR_IFACE, best_mode);
	}

	/* Verify the controller supports the requested interface */
	ret = ops->setup_data_interface(chip, NAND_DATA_IFACE_CHECK_ONLY,
					iface);
	if (!ret)
		return ret;

	/* Fallback to slower modes */
	for (mode = best_iface->timings.mode - 1; mode >= 0; mode--) {
		ret = onfi_fill_data_interface(chip, iface,
					       NAND_SDR_IFACE, mode);
		if (ret)
			continue;

		ret = ops->setup_data_interface(chip,
						NAND_DATA_IFACE_CHECK_ONLY,
						iface);
		if (!ret)
			break;
	}

	return 0;
}

> +EXPORT_SYMBOL_GPL(nand_choose_best_vendor_sdr_iface);
> +
>  /**
>   * nand_fill_column_cycles - fill the column cycles of an address
>   * @chip: The NAND chip


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
