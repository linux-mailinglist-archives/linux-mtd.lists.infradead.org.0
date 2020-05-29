Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E4C51E7BBF
	for <lists+linux-mtd@lfdr.de>; Fri, 29 May 2020 13:29:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MEc5wDtZg1KlA8RhSH4sLIjXbe1Zh6lIiFWhcDReK3o=; b=f7NMJKvdazd93n
	BcgMFWx2eEae0pePERLNFOj2q3tvRilASXPiOvY84g1vlLcFZWvhfjGL2rNIaJUhvGzAMEByADzQv
	2k/MquT3m0FEWViabpQqVhOhbqoKz3XePftlbEBzP7+AQmhNXcV13BA6vFzFBH0rUwvD+y3dpPgEk
	qKd5RzfMvp9jp/+CSoWnu0qOPx2/MTi8FJ8KeB2N60z8Wt6tSxrECub8lil2CZ++vFJ75LP2qB8g4
	Pld4pRrwkOMEMSfxtkONVUec2/65188lFelWcBhpgzUkiPEWuP9fR/wAURTRG9n/WBhPathowDOYb
	HzPRYIV3uTO736yrR9+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jedCP-0003DV-Lh; Fri, 29 May 2020 11:29:17 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jedCI-0003D7-Hw
 for linux-mtd@lists.infradead.org; Fri, 29 May 2020 11:29:12 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 0A1272A433F;
 Fri, 29 May 2020 12:29:09 +0100 (BST)
Date: Fri, 29 May 2020 13:29:06 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v7 20/28] mtd: rawnand: timings: Make
 onfi_fill_interface_config() a void helper
Message-ID: <20200529132906.34408c3a@collabora.com>
In-Reply-To: <20200529111322.7184-21-miquel.raynal@bootlin.com>
References: <20200529111322.7184-1-miquel.raynal@bootlin.com>
 <20200529111322.7184-21-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_042910_727808_1C5923EE 
X-CRM114-Status: GOOD (  19.71  )
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
Cc: Michal Simek <monstr@monstr.eu>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, 29 May 2020 13:13:14 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Warn the user if the parameters are wrong but basically it would mean
> there is a serious issue in the NAND core. So no need to ever check
> its output, let's make this helper return void.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
>  drivers/mtd/nand/raw/internals.h    |  8 ++++----
>  drivers/mtd/nand/raw/nand_base.c    |  6 ++----
>  drivers/mtd/nand/raw/nand_timings.c | 18 ++++++++----------
>  3 files changed, 14 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/mtd/nand/raw/internals.h b/drivers/mtd/nand/raw/internals.h
> index 114c63a6a349..63c5af436901 100644
> --- a/drivers/mtd/nand/raw/internals.h
> +++ b/drivers/mtd/nand/raw/internals.h
> @@ -84,10 +84,10 @@ int nand_bbm_get_next_page(struct nand_chip *chip, int page);
>  int nand_markbad_bbm(struct nand_chip *chip, loff_t ofs);
>  int nand_erase_nand(struct nand_chip *chip, struct erase_info *instr,
>  		    int allowbbt);
> -int onfi_fill_interface_config(struct nand_chip *chip,
> -			       struct nand_interface_config *iface,
> -			       enum nand_interface_type type,
> -			       unsigned int timing_mode);
> +void onfi_fill_interface_config(struct nand_chip *chip,
> +				struct nand_interface_config *iface,
> +				enum nand_interface_type type,
> +				unsigned int timing_mode);
>  unsigned int
>  onfi_find_closest_sdr_mode(const struct nand_sdr_timings *spec_timings);
>  int nand_get_features(struct nand_chip *chip, int addr, u8 *subfeature_param);
> diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
> index 4fa18fb68d62..3bfd71d589cf 100644
> --- a/drivers/mtd/nand/raw/nand_base.c
> +++ b/drivers/mtd/nand/raw/nand_base.c
> @@ -1041,10 +1041,8 @@ static int nand_choose_interface_config(struct nand_chip *chip)
>  	}
>  
>  	for (mode = fls(modes) - 1; mode >= 0; mode--) {
> -		ret = onfi_fill_interface_config(chip, &chip->interface_config,
> -						 NAND_SDR_IFACE, mode);
> -		if (ret)
> -			continue;
> +		onfi_fill_interface_config(chip, &chip->interface_config,
> +					   NAND_SDR_IFACE, mode);
>  
>  		/*
>  		 * Pass NAND_DATA_IFACE_CHECK_ONLY to only check if the
> diff --git a/drivers/mtd/nand/raw/nand_timings.c b/drivers/mtd/nand/raw/nand_timings.c
> index bf05b4bceaa0..1e22006c79ba 100644
> --- a/drivers/mtd/nand/raw/nand_timings.c
> +++ b/drivers/mtd/nand/raw/nand_timings.c
> @@ -347,18 +347,18 @@ onfi_find_closest_sdr_mode(const struct nand_sdr_timings *spec_timings)
>   * @type: The interface type
>   * @timing_mode: The ONFI timing mode
>   */
> -int onfi_fill_interface_config(struct nand_chip *chip,
> -			       struct nand_interface_config *iface,
> -			       enum nand_interface_type type,
> -			       unsigned int timing_mode)
> +void onfi_fill_interface_config(struct nand_chip *chip,
> +				struct nand_interface_config *iface,
> +				enum nand_interface_type type,
> +				unsigned int timing_mode)
>  {
>  	struct onfi_params *onfi = chip->parameters.onfi;
>  
> -	if (type != NAND_SDR_IFACE)
> -		return -EINVAL;
> +	if (WARN_ON(type != NAND_SDR_IFACE))
> +		return;
>  
> -	if (timing_mode >= ARRAY_SIZE(onfi_sdr_timings))
> -		return -EINVAL;
> +	if (WARN_ON(timing_mode >= ARRAY_SIZE(onfi_sdr_timings)))
> +		return;
>  
>  	*iface = onfi_sdr_timings[timing_mode];
>  
> @@ -378,6 +378,4 @@ int onfi_fill_interface_config(struct nand_chip *chip,
>  		/* nanoseconds -> picoseconds */
>  		timings->tCCS_min = 1000UL * onfi->tCCS;
>  	}
> -
> -	return 0;
>  }


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
