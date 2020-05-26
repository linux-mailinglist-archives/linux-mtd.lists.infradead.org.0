Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E63AB1E3009
	for <lists+linux-mtd@lfdr.de>; Tue, 26 May 2020 22:32:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GfDLNxM71EZh5grbi1e0bbF0mKl++E+doKY0jOF2FB4=; b=FGM/UTSxPSMywN
	93z36PVUWUUrTXyBPA/97oKqA9gh1U21cPopguh1TUV6H50AM+09xTsOCwVFMeUuppqJwsTJwNd+X
	olRpj8ymbJRqQ6kupAvWguXJCG2jF8auG6mRkURQYE6m8/4zi9abggjRokPLZuVzFznKiQJ1xqahV
	ewq3jVaYuvZf7UgWP/A9sl85q/smYUXeEgjnRJf99g6B99qpHciVJ1sgPu8RHYp+v1zDh8H92V0Zt
	VwcIlTdwPPhO5C/2Ds84hq8XPkeSH4NKEorLMDM9dmPer3MEl09gvn4FxU25P/OXPf4vvcmG/vCpm
	5ycE2+L1b+JnjiGIcX1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdgFf-0008TG-P9; Tue, 26 May 2020 20:32:43 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdgFQ-0008Rl-QZ
 for linux-mtd@lists.infradead.org; Tue, 26 May 2020 20:32:30 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id D86262A2AB8;
 Tue, 26 May 2020 21:32:25 +0100 (BST)
Date: Tue, 26 May 2020 22:32:22 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v5 16/28] mtd: rawnand: timings: Use default values for
 tPROG_max and tBERS_max
Message-ID: <20200526223222.2fb4ec28@collabora.com>
In-Reply-To: <20200526191725.7591-17-miquel.raynal@bootlin.com>
References: <20200526191725.7591-1-miquel.raynal@bootlin.com>
 <20200526191725.7591-17-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_133228_993292_276CECA7 
X-CRM114-Status: GOOD (  17.79  )
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

I'm not entirely sure that's an improvement. You actually duplicate the
assignment and get rid of a comment that's useful IMHO. 

> -		/* microseconds -> picoseconds */
> -		timings->tPROG_max = 1000000ULL * ONFI_DYN_TIMING_MAX;
> -		timings->tBERS_max = 1000000ULL * ONFI_DYN_TIMING_MAX;
>  	}
>  
>  	return 0;


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
