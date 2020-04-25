Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9AE31B84B4
	for <lists+linux-mtd@lfdr.de>; Sat, 25 Apr 2020 10:41:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jmgF7YJi4akmSz7n7FRbca93jpTtjw5p1Ev8HAmNuKw=; b=EiYUD1YmeDbdl+
	BzNjPl5/5dm6n2/18qC5+ZQAFWKM7ilbjFnaggFWG7Q8iHSt1Fft6SO6P4ucrSbuS46p5RUqdgwK0
	SAOlbK3Xx9z2z8jW6M0M8ON6SUylmBCT3siCxTaoIL9x7X/izPyirxS+PdcqKsB/+dxBUkYdR4NRH
	EXh2BEzMat9cIIVVCccra2LblGhukQwPq8NJSZ1MludBS8VLAvW5pgUD+r5s8FyAUTw30eds9v0LO
	7mBLK2xhAjye8FZGW8rSNcYeDQrsp8fc7laGK1mNMA/5OEIgMHO01T9Ezq4qxTMsnzA2rMNDdqV7/
	YWtDDvwVBSUU+AqGh8Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSGMs-0007ke-GQ; Sat, 25 Apr 2020 08:40:58 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSGMg-0007jl-6w
 for linux-mtd@lists.infradead.org; Sat, 25 Apr 2020 08:40:47 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id E8C832A2F11;
 Sat, 25 Apr 2020 09:40:44 +0100 (BST)
Date: Sat, 25 Apr 2020 10:40:42 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH 04/10] mtd: rawnand: Fix comments about the use of bufpoi
Message-ID: <20200425104042.6f2ba1a8@collabora.com>
In-Reply-To: <20200424173631.14311-5-miquel.raynal@bootlin.com>
References: <20200424173631.14311-1-miquel.raynal@bootlin.com>
 <20200424173631.14311-5-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_014046_380528_76058E98 
X-CRM114-Status: GOOD (  16.81  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, 24 Apr 2020 19:36:25 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Clarify these comments which are not very accurate (even wrong in the
> read case).
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
>  drivers/mtd/nand/raw/nand_base.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
> index db2745cf4f15..4d8a4a20df63 100644
> --- a/drivers/mtd/nand/raw/nand_base.c
> +++ b/drivers/mtd/nand/raw/nand_base.c
> @@ -3229,7 +3229,10 @@ static int nand_do_read_ops(struct nand_chip *chip, loff_t from,
>  				break;
>  			}
>  
> -			/* Transfer not aligned data */
> +			/*
> +			 * Copy back the data in the initial buffer when reading
> +			 * partial pages or when a bounce buffer is required.
> +			 */
>  			if (use_bufpoi) {
>  				if (!NAND_HAS_SUBPAGE_READ(chip) && !oob &&
>  				    !(mtd->ecc_stats.failed - ecc_failures) &&
> @@ -4024,7 +4027,10 @@ static int nand_do_write_ops(struct nand_chip *chip, loff_t to,
>  		else
>  			use_bufpoi = 0;
>  
> -		/* Partial page write?, or need to use bounce buffer */
> +		/*
> +		 * Copy the data from the initial buffer when doing partial page
> +		 * writes or when a bounce buffer is required.
> +		 */
>  		if (use_bufpoi) {
>  			pr_debug("%s: using write bounce buffer for buf@%p\n",
>  					 __func__, buf);


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
