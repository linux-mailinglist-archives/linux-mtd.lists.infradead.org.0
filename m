Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB73ADADB9
	for <lists+linux-mtd@lfdr.de>; Thu, 17 Oct 2019 15:00:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/qqDtQ5v+YcME870WYEisANoGdGilsDVFF2pgjyYANw=; b=K13M3Dr/NSFc0Z
	2V6wokpg6hvmOLdNjeepFPYpMDAK3qUXM+LlXhXzkjtkAYNFJ1po4/MOoqnRVGiGY2C+jqGbDyEJG
	v9qOQEKL7Vs+I31F9UT7Xq4gg0FMBa4NpLxkh7DsHNi911X2wa5yuU2IrH1uohj2QLppVpx8xTWRx
	ldu1SnlbBsCf99niRFWrb1N94UIQI5Rwh3Lzbu960cpC+xfbkAJLcWcf4EeJRHV0tEyLbl3DpoLFD
	GY+YBkwNiesbcHwwJJne2LOrMdTO1xDVW+BVhu8THNbD38mg7t11UEpbOQz5p9ZNv4wG5CKXh6lOG
	b+spXzwlI9QtB7f8kcCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL5OI-000191-DM; Thu, 17 Oct 2019 13:00:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL5Nu-0008Sl-0j
 for linux-mtd@lists.infradead.org; Thu, 17 Oct 2019 13:00:08 +0000
Received: from localhost (unknown [122.178.218.146])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C0AC020854;
 Thu, 17 Oct 2019 13:00:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571317204;
 bh=QIoEvTrTRu66AJwVajcQKHCYOv4kpQ6lJSPCY/aFs2U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AVCb14fc1nnHMW9grXNaQ7YiFnxEYTp7i4Y1H8SgjLzD1IaW3LfD+Gse5k3HM31dk
 iQdGJHoRYk8xh1HYAK9wex79VPJGCobsp5C7YYOeJvG2gMWJxVcJbj6xum7W9zHJyW
 hinavJmiM5oPx/HEGMrhqaA0ghQufXTl4Ar0Ddwc=
Date: Thu, 17 Oct 2019 18:29:58 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: Regression: dmaengine: imx28 with emmc
Message-ID: <20191017125958.GO2654@vkoul-mobl>
References: <CAH+2xPB7rbeJnOPU10Ss9BhV_2DJV-ToQ3XNOy97+vrGx+ubcg@mail.gmail.com>
 <20191014141344.uwnzy3j3kxngzv7a@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191014141344.uwnzy3j3kxngzv7a@pengutronix.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_060006_126724_8852A880 
X-CRM114-Status: GOOD (  25.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Bruno Thomsen <bruno.thomsen@gmail.com>, bth@kamstrup.com,
 linux-mtd@lists.infradead.org, NXP Linux Team <linux-imx@nxp.com>,
 miquel.raynal@bootlin.com, dmaengine@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 14-10-19, 16:13, Sascha Hauer wrote:
> Hi Bruno,
> 
> On Tue, Oct 08, 2019 at 10:03:16AM +0200, Bruno Thomsen wrote:
> > Hi
> > 
> > I am getting a kernel oops[1] during boot on imx28 with emmc flash right
> > around rootfs mounting. Using git bisect I found the cause to be the
> > following commit.
> > 
> > Regression: ceeeb99cd821 ("dmaengine: mxs: rename custom flag")
> > 
> > Reverting the 2 changes in drivers/dma/mxs-dma.c fixes the oops,
> > but I am not sure that is the right solution as I don't have the full
> > mxs-dma + mtd/mmc overview.
> > 
> > I did see that the patch isn't a simple rename but also a bit define
> > change.
> > From: DMA_CTRL_ACK = (1 << 1) = BIT(1)
> > To: MXS_DMA_CTRL_WAIT4END = BIT(31)
> > 
> 
> Damn, I wasn't aware the DMA driver has other users than the GPMI Nand.
> Please try the attached patch, it should fix it for MMC/SD. It seems
> however, that I2C and AUART and SPI are also affected. Are you able to
> test any of these?
> 
> Sascha
> 
> ---------------------------8<---------------------------
> 
> >From 3f7a1097099c9e57e31a86503edc479f9964bc95 Mon Sep 17 00:00:00 2001
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Date: Mon, 14 Oct 2019 16:07:31 +0200
> Subject: [PATCH] mmc: mxs: fix flags passed to dmaengine_prep_slave_sg
> 
> Since ceeeb99cd821 we no longer abuse the DMA_CTRL_ACK flag for custom
> driver use and introduced the MXS_DMA_CTRL_WAIT4END instead. We have not
> changed all users to this flag though. This patch fixes it for the
> mxs-mmc driver.

lgtm, this should be submitted to mmc folks

> 
> Fixes: ceeeb99cd821 ("dmaengine: mxs: rename custom flag")
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/mmc/host/mxs-mmc.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/mmc/host/mxs-mmc.c b/drivers/mmc/host/mxs-mmc.c
> index 78e7e350655c..4031217d21c3 100644
> --- a/drivers/mmc/host/mxs-mmc.c
> +++ b/drivers/mmc/host/mxs-mmc.c
> @@ -17,6 +17,7 @@
>  #include <linux/interrupt.h>
>  #include <linux/dma-mapping.h>
>  #include <linux/dmaengine.h>
> +#include <linux/dma/mxs-dma.h>
>  #include <linux/highmem.h>
>  #include <linux/clk.h>
>  #include <linux/err.h>
> @@ -266,7 +267,7 @@ static void mxs_mmc_bc(struct mxs_mmc_host *host)
>  	ssp->ssp_pio_words[2] = cmd1;
>  	ssp->dma_dir = DMA_NONE;
>  	ssp->slave_dirn = DMA_TRANS_NONE;
> -	desc = mxs_mmc_prep_dma(host, DMA_CTRL_ACK);
> +	desc = mxs_mmc_prep_dma(host, MXS_DMA_CTRL_WAIT4END);
>  	if (!desc)
>  		goto out;
>  
> @@ -311,7 +312,7 @@ static void mxs_mmc_ac(struct mxs_mmc_host *host)
>  	ssp->ssp_pio_words[2] = cmd1;
>  	ssp->dma_dir = DMA_NONE;
>  	ssp->slave_dirn = DMA_TRANS_NONE;
> -	desc = mxs_mmc_prep_dma(host, DMA_CTRL_ACK);
> +	desc = mxs_mmc_prep_dma(host, MXS_DMA_CTRL_WAIT4END);
>  	if (!desc)
>  		goto out;
>  
> @@ -441,7 +442,7 @@ static void mxs_mmc_adtc(struct mxs_mmc_host *host)
>  	host->data = data;
>  	ssp->dma_dir = dma_data_dir;
>  	ssp->slave_dirn = slave_dirn;
> -	desc = mxs_mmc_prep_dma(host, DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
> +	desc = mxs_mmc_prep_dma(host, DMA_PREP_INTERRUPT | MXS_DMA_CTRL_WAIT4END);
>  	if (!desc)
>  		goto out;
>  
> -- 
> 2.23.0
> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

-- 
~Vinod

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
