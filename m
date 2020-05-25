Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 817A81E14C5
	for <lists+linux-mtd@lfdr.de>; Mon, 25 May 2020 21:31:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jurMOlSrw8ZP8le3y9J/qyTKgI/ghQAhxuWvnF+WFuw=; b=fa29FJo7FDsrco
	N0+HIM9Om8N1cz2OKKJSGE57zUtBZyPEL4GlNQC38CF2aOh2Ikmjos+zdAD2VHZzsrGzVBkOC7RKq
	KjtpyG8WAXvtI2Il5sCK1aZzhuvTCiNCtc/6mdtzQN4DUsZpy4lp06e+WvEH1R26CJsH8qoOol/iy
	t7bWL8btHilQMGo7n1+EX9ovcLa71JZMnGGz9rA4zZErcpLAJ31qlz5QphQhMGFMGJ2whdpmALCCk
	iM/SfKJ4T1+aIXkLjHEzcJy6WJZ5C0M4rOVFpVsQVom66ekdwQ8hQ7zq5zWexSomNokkRDV2Rczqb
	fKflGhHLA6nZZInK7PQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdIoR-0004pA-Be; Mon, 25 May 2020 19:31:03 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdIoI-0004oj-N5
 for linux-mtd@lists.infradead.org; Mon, 25 May 2020 19:30:56 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 577372A18DF;
 Mon, 25 May 2020 20:30:53 +0100 (BST)
Date: Mon, 25 May 2020 21:30:49 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v4 15/19] mtd: rawnand: timings: Add a helper to find
 the closest ONFI mode
Message-ID: <20200525213049.2098cd65@collabora.com>
In-Reply-To: <20200525174239.11349-16-miquel.raynal@bootlin.com>
References: <20200525174239.11349-1-miquel.raynal@bootlin.com>
 <20200525174239.11349-16-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_123055_017918_4223E90D 
X-CRM114-Status: GOOD (  20.20  )
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

On Mon, 25 May 2020 19:42:35 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Vendors are allowed to provide their own set of timings. In this case,
> we provide a way to derive the "closest" timing mode so that, if the
> NAND controller does not support tweaking these parameters, it will be
> able to configure itself anyway.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  drivers/mtd/nand/raw/internals.h    |  1 +
>  drivers/mtd/nand/raw/nand_timings.c | 52 +++++++++++++++++++++++++++++
>  2 files changed, 53 insertions(+)
> 
> diff --git a/drivers/mtd/nand/raw/internals.h b/drivers/mtd/nand/raw/internals.h
> index dc84e3b55d48..ac103d8767be 100644
> --- a/drivers/mtd/nand/raw/internals.h
> +++ b/drivers/mtd/nand/raw/internals.h
> @@ -88,6 +88,7 @@ int onfi_fill_data_interface(struct nand_chip *chip,
>  			     struct nand_data_interface *iface,
>  			     enum nand_data_interface_type type,
>  			     int timing_mode);
> +unsigned int onfi_find_equivalent_sdr_mode(const struct nand_sdr_timings *vendor_timings);
>  int nand_get_features(struct nand_chip *chip, int addr, u8 *subfeature_param);
>  int nand_set_features(struct nand_chip *chip, int addr, u8 *subfeature_param);
>  int nand_read_page_raw_notsupp(struct nand_chip *chip, u8 *buf,
> diff --git a/drivers/mtd/nand/raw/nand_timings.c b/drivers/mtd/nand/raw/nand_timings.c
> index ce6bb87db2e8..7f5caa325fbe 100644
> --- a/drivers/mtd/nand/raw/nand_timings.c
> +++ b/drivers/mtd/nand/raw/nand_timings.c
> @@ -273,6 +273,58 @@ static const struct nand_data_interface onfi_sdr_timings[] = {
>  	},
>  };
>  
> +unsigned int onfi_find_equivalent_sdr_mode(const struct nand_sdr_timings *vendor_timings)

I wouldn't call that vendor timings, but spec timings, and why not
closest instead of equivalent. You also lack a kernel doc, and the
could get things fitting in the 80 chars limit if you declare it
like:

unsigned int
onfi_find_closest_sdr_mode(const struct nand_sdr_timings *spec_timings)



> +{
> +	const struct nand_sdr_timings *onfi_timings;
> +	int mode;
> +
> +	for (mode = ARRAY_SIZE(onfi_sdr_timings) - 1; mode > 0; mode--) {
> +		onfi_timings = &onfi_sdr_timings[mode].timings.sdr;
> +
> +		if (vendor_timings->tCCS_min > onfi_timings->tCCS_min ||
> +		    vendor_timings->tR_max < onfi_timings->tR_max ||

Do we really care about _max values? Also not sure the < condition is
correct.

> +		    vendor_timings->tADL_min > onfi_timings->tADL_min ||
> +		    vendor_timings->tALH_min > onfi_timings->tALH_min ||
> +		    vendor_timings->tALS_min > onfi_timings->tALS_min ||
> +		    vendor_timings->tAR_min > onfi_timings->tAR_min ||
> +		    vendor_timings->tCEA_max < onfi_timings->tCEA_max ||
> +		    vendor_timings->tCEH_min > onfi_timings->tCEH_min ||
> +		    vendor_timings->tCH_min > onfi_timings->tCH_min ||
> +		    vendor_timings->tCHZ_max < onfi_timings->tCHZ_max ||
> +		    vendor_timings->tCLH_min > onfi_timings->tCLH_min ||
> +		    vendor_timings->tCLR_min > onfi_timings->tCLR_min ||
> +		    vendor_timings->tCLS_min > onfi_timings->tCLS_min ||
> +		    vendor_timings->tCOH_min > onfi_timings->tCOH_min ||
> +		    vendor_timings->tCS_min > onfi_timings->tCS_min ||
> +		    vendor_timings->tDH_min > onfi_timings->tDH_min ||
> +		    vendor_timings->tDS_min > onfi_timings->tDS_min ||
> +		    vendor_timings->tFEAT_max < onfi_timings->tFEAT_max ||
> +		    vendor_timings->tIR_min > onfi_timings->tIR_min ||
> +		    vendor_timings->tITC_max < onfi_timings->tITC_max ||
> +		    vendor_timings->tRC_min > onfi_timings->tRC_min ||
> +		    vendor_timings->tREA_max < onfi_timings->tREA_max ||
> +		    vendor_timings->tREH_min > onfi_timings->tREH_min ||
> +		    vendor_timings->tRHOH_min > onfi_timings->tRHOH_min ||
> +		    vendor_timings->tRHW_min > onfi_timings->tRHW_min ||
> +		    vendor_timings->tRHZ_max < onfi_timings->tRHZ_max ||
> +		    vendor_timings->tRLOH_min > onfi_timings->tRLOH_min ||
> +		    vendor_timings->tRP_min > onfi_timings->tRP_min ||
> +		    vendor_timings->tRR_min > onfi_timings->tRR_min ||
> +		    vendor_timings->tRST_max < onfi_timings->tRST_max ||
> +		    vendor_timings->tWB_max < onfi_timings->tWB_max ||
> +		    vendor_timings->tWC_min > onfi_timings->tWC_min ||
> +		    vendor_timings->tWH_min > onfi_timings->tWH_min ||
> +		    vendor_timings->tWHR_min > onfi_timings->tWHR_min ||
> +		    vendor_timings->tWP_min > onfi_timings->tWP_min ||
> +		    vendor_timings->tWW_min > onfi_timings->tWW_min)
> +			continue;
> +
> +		return mode;
> +	}
> +
> +	return 0;
> +}
> +
>  /**
>   * onfi_fill_data_interface - Initialize a data interface from a given ONFI mode
>   * @chip: The NAND chip


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
