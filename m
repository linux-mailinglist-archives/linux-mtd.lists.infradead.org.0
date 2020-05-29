Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54BAA1E7686
	for <lists+linux-mtd@lfdr.de>; Fri, 29 May 2020 09:22:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oVlaltmhKDciYwPDus8XXkMkcJxrAuGoybOzCvY/VM8=; b=oDuw5v3zqYFa+t
	1Jc1ZRF8cgxyUanPdX40JJy7h1sKoKWWwj5DKVJW5nHkvJSx0CQISrYU4HYApn9hq7YW5OR59calw
	VUXKYiUehAAyBoq7KLPj1+aey1rIGqHs5UgnQhNjPeNUMNzz/nhal/voKoVHU7HTQ3lxtxqNsVegx
	LZBfAahuFZaJ0i5FRIESkLAA+xhCcnIlIPWqRwMWjyRoq/14QM6uqE6XBJOJVIVTQBCCs9LdIJ6O0
	Xw6cwA82GbUI9JKqUhQTTbdQ4DqsUR6oHW4+UpTGzt8kEM5XounphIlP+sG4Fu9AoMJAgjY8hYNT/
	mM6q7PIokATJjeqUGgyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeZL9-0007hV-NK; Fri, 29 May 2020 07:22:03 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeZL2-0007h9-Km
 for linux-mtd@lists.infradead.org; Fri, 29 May 2020 07:21:58 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 350ED2A04D0;
 Fri, 29 May 2020 08:21:54 +0100 (BST)
Date: Fri, 29 May 2020 09:21:51 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v6 16/30] mtd: rawnand: timings: Use default values for
 tPROG_max and tBERS_max
Message-ID: <20200529092151.24492614@collabora.com>
In-Reply-To: <20200528231612.8958-17-miquel.raynal@bootlin.com>
References: <20200528231612.8958-1-miquel.raynal@bootlin.com>
 <20200528231612.8958-17-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_002156_814857_03CEFDB4 
X-CRM114-Status: GOOD (  20.62  )
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
Cc: Rickard Andersson <rickaran@axis.com>, Michal Simek <monstr@monstr.eu>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, 29 May 2020 01:15:58 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> The ONFI parameter page of a chip might define more fine grained
> tPROG_max and tBERS_max. When we do not have this information, we
> default to the highest possible values (they are maxima anyway).
> 
> There is no point setting these fields at runtime, so explicitly move
> these defaults to the main ONFI SDR timings structure.

And most importantly you want to do that to return a pointer to mode 0
directly :P.

> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
>  drivers/mtd/nand/raw/nand_timings.c | 31 ++++++++++++++++++-----------
>  1 file changed, 19 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/mtd/nand/raw/nand_timings.c b/drivers/mtd/nand/raw/nand_timings.c
> index 728a2dee1eed..9ff4b121ab1e 100644
> --- a/drivers/mtd/nand/raw/nand_timings.c
> +++ b/drivers/mtd/nand/raw/nand_timings.c
> @@ -12,6 +12,13 @@
>  
>  #define ONFI_DYN_TIMING_MAX U16_MAX
>  
> +/*
> + * For non-ONFI chips we use the highest possible value for tPROG and tBERS.
> + * tR and tCCS will take the default values precised in the ONFI specification
> + * for timing mode 0, respectively 200us and 500ns.
> + *
> + * These four values are tweaked to be more accurate in the case of ONFI chips.
> + */
>  static const struct nand_data_interface onfi_sdr_timings[] = {
>  	/* Mode 0 */
>  	{
> @@ -20,6 +27,8 @@ static const struct nand_data_interface onfi_sdr_timings[] = {
>  		.timings.sdr = {
>  			.tCCS_min = 500000,
>  			.tR_max = 200000000,
> +			.tPROG_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
> +			.tBERS_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
>  			.tADL_min = 400000,
>  			.tALH_min = 20000,
>  			.tALS_min = 50000,
> @@ -63,6 +72,8 @@ static const struct nand_data_interface onfi_sdr_timings[] = {
>  		.timings.sdr = {
>  			.tCCS_min = 500000,
>  			.tR_max = 200000000,
> +			.tPROG_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
> +			.tBERS_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
>  			.tADL_min = 400000,
>  			.tALH_min = 10000,
>  			.tALS_min = 25000,
> @@ -106,6 +117,8 @@ static const struct nand_data_interface onfi_sdr_timings[] = {
>  		.timings.sdr = {
>  			.tCCS_min = 500000,
>  			.tR_max = 200000000,
> +			.tPROG_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
> +			.tBERS_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
>  			.tADL_min = 400000,
>  			.tALH_min = 10000,
>  			.tALS_min = 15000,
> @@ -149,6 +162,8 @@ static const struct nand_data_interface onfi_sdr_timings[] = {
>  		.timings.sdr = {
>  			.tCCS_min = 500000,
>  			.tR_max = 200000000,
> +			.tPROG_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
> +			.tBERS_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
>  			.tADL_min = 400000,
>  			.tALH_min = 5000,
>  			.tALS_min = 10000,
> @@ -192,6 +207,8 @@ static const struct nand_data_interface onfi_sdr_timings[] = {
>  		.timings.sdr = {
>  			.tCCS_min = 500000,
>  			.tR_max = 200000000,
> +			.tPROG_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
> +			.tBERS_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
>  			.tADL_min = 400000,
>  			.tALH_min = 5000,
>  			.tALS_min = 10000,
> @@ -235,6 +252,8 @@ static const struct nand_data_interface onfi_sdr_timings[] = {
>  		.timings.sdr = {
>  			.tCCS_min = 500000,
>  			.tR_max = 200000000,
> +			.tPROG_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
> +			.tBERS_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
>  			.tADL_min = 400000,
>  			.tALH_min = 5000,
>  			.tALS_min = 10000,
> @@ -357,18 +376,6 @@ int onfi_fill_data_interface(struct nand_chip *chip,
>  
>  		/* nanoseconds -> picoseconds */
>  		timings->tCCS_min = 1000UL * onfi->tCCS;
> -	} else {
> -		struct nand_sdr_timings *timings = &iface->timings.sdr;
> -		/*
> -		 * For non-ONFI chips we use the highest possible value for
> -		 * tPROG and tBERS. tR and tCCS will take the default values
> -		 * precised in the ONFI specification for timing mode 0,
> -		 * respectively 200us and 500ns.
> -		 */
> -
> -		/* microseconds -> picoseconds */
> -		timings->tPROG_max = 1000000ULL * ONFI_DYN_TIMING_MAX;
> -		timings->tBERS_max = 1000000ULL * ONFI_DYN_TIMING_MAX;
>  	}
>  
>  	return 0;


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
