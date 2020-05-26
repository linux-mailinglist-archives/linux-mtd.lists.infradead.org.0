Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA1211E3121
	for <lists+linux-mtd@lfdr.de>; Tue, 26 May 2020 23:25:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VFCOLJWmnGKazg/mawMNN/emqj4XZxmpdLMtKFIBels=; b=pASMpFVUMsr82v
	fVJwwzu2wVY3r98qtbqIA3UKfyTQxWVWNJrFnAmbL80jcu0apIqt9+3Cjl+4Te3BtsBpSkBAaRiw7
	S4/d2e3YEAEio3e3UnhD/pRNZda2xxfQSoxy5PR0FhxZZ1VHyvVySbdrvwLPxbCsXsSg8l3sxqqtn
	cD3nfjqvW5j96FEDrungFOTDLMc2kKk5qOppdsAW8/Lv0lDQ8j6/9bZknhYOR+fAIFasyA1Zpvh8t
	OJThFOsoebbLPl7uOwKo3Ke7E3MXVt+Gcdhb8u7oIDUlIlXHlUMPQmPslFkNdtP5OYTgMbRZmQfhS
	rtjXyvdAvsgSwvYPoEHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdh4y-0007jX-UY; Tue, 26 May 2020 21:25:44 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdh4q-0007jE-61
 for linux-mtd@lists.infradead.org; Tue, 26 May 2020 21:25:37 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id D62F52A01C1;
 Tue, 26 May 2020 22:25:34 +0100 (BST)
Date: Tue, 26 May 2020 23:25:30 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v5 16/28] mtd: rawnand: timings: Use default values for
 tPROG_max and tBERS_max
Message-ID: <20200526232530.5c9008f1@collabora.com>
In-Reply-To: <20200526191725.7591-17-miquel.raynal@bootlin.com>
References: <20200526191725.7591-1-miquel.raynal@bootlin.com>
 <20200526191725.7591-17-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_142536_353826_2CEB9EDE 
X-CRM114-Status: GOOD (  18.78  )
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

On Tue, 26 May 2020 21:17:13 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> The ONFI parameter page of a chip might define more fine grained
> tPROG_max and tBERS_max. When we do not have this information, we
> default to the highest possible values (they are maxima anyway).
> 
> There is no point setting these fields at runtime, so explicitly move
> these defaults to the main ONFI SDR timings structure.

Okay, now I see why you're doing that: you want to return the mode 0
entry directly, and it makes sense, but it should be explained in the
commit message.

> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  drivers/mtd/nand/raw/nand_timings.c | 24 ++++++++++++------------
>  1 file changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/mtd/nand/raw/nand_timings.c b/drivers/mtd/nand/raw/nand_timings.c
> index c2286a75d134..52ee83e75646 100644
> --- a/drivers/mtd/nand/raw/nand_timings.c
> +++ b/drivers/mtd/nand/raw/nand_timings.c
> @@ -20,6 +20,8 @@ static const struct nand_data_interface onfi_sdr_timings[] = {
>  		.timings.sdr = {
>  			.tCCS_min = 500000,
>  			.tR_max = 200000000,
> +			.tPROG_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
> +			.tBERS_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
>  			.tADL_min = 400000,
>  			.tALH_min = 20000,
>  			.tALS_min = 50000,
> @@ -63,6 +65,8 @@ static const struct nand_data_interface onfi_sdr_timings[] = {
>  		.timings.sdr = {
>  			.tCCS_min = 500000,
>  			.tR_max = 200000000,
> +			.tPROG_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
> +			.tBERS_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
>  			.tADL_min = 400000,
>  			.tALH_min = 10000,
>  			.tALS_min = 25000,
> @@ -106,6 +110,8 @@ static const struct nand_data_interface onfi_sdr_timings[] = {
>  		.timings.sdr = {
>  			.tCCS_min = 500000,
>  			.tR_max = 200000000,
> +			.tPROG_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
> +			.tBERS_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
>  			.tADL_min = 400000,
>  			.tALH_min = 10000,
>  			.tALS_min = 15000,
> @@ -149,6 +155,8 @@ static const struct nand_data_interface onfi_sdr_timings[] = {
>  		.timings.sdr = {
>  			.tCCS_min = 500000,
>  			.tR_max = 200000000,
> +			.tPROG_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
> +			.tBERS_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
>  			.tADL_min = 400000,
>  			.tALH_min = 5000,
>  			.tALS_min = 10000,
> @@ -192,6 +200,8 @@ static const struct nand_data_interface onfi_sdr_timings[] = {
>  		.timings.sdr = {
>  			.tCCS_min = 500000,
>  			.tR_max = 200000000,
> +			.tPROG_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
> +			.tBERS_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
>  			.tADL_min = 400000,
>  			.tALH_min = 5000,
>  			.tALS_min = 10000,
> @@ -235,6 +245,8 @@ static const struct nand_data_interface onfi_sdr_timings[] = {
>  		.timings.sdr = {
>  			.tCCS_min = 500000,
>  			.tR_max = 200000000,
> +			.tPROG_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
> +			.tBERS_max = 1000000ULL * ONFI_DYN_TIMING_MAX,
>  			.tADL_min = 400000,
>  			.tALH_min = 5000,
>  			.tALS_min = 10000,
> @@ -359,18 +371,6 @@ int onfi_fill_data_interface(struct nand_chip *chip,
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
