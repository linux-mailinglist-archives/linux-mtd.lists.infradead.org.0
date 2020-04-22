Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D1801B3898
	for <lists+linux-mtd@lfdr.de>; Wed, 22 Apr 2020 09:13:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VfPfkUSJo4wmOEUt3LKjbm9p1ZoArIfh2m+WHsaEpVg=; b=eBvAGAhwU6D+Un
	rFRLd4/1LPheF+Eo2Rv/0cvPW+NznZZ7JXwqeeOJI1obQRxdObdA33bAW7LShodlcCDunHUc2g+5c
	5ONtWR7s2qSje4gJWpNNOTQIdjhAhFSqXO4BiBX0DIJQxW2r389zamA9CsFNc8vudG8RtOGsCwvSu
	e2ysBMGyrljXWOqhMRKnv+0bHVJaZ4F2NkNu7NWStt9vBQxD4005c744yeA2CIcGYtbFovWFbTpEf
	6BbTk40ZbUVcPzRA5RgtsS1Y8/u3nPAHwFGLud/9aKSB+Jb8GuvgvvjaRxKyTLJ9USWdk2YUNFmU/
	3a+usRTBDd0KXLyKZnrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR9ZA-0005WI-O2; Wed, 22 Apr 2020 07:13:04 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR9XR-0004dc-Sp
 for linux-mtd@lists.infradead.org; Wed, 22 Apr 2020 07:11:20 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 17F6A2A17E5;
 Wed, 22 Apr 2020 08:11:16 +0100 (BST)
Date: Wed, 22 Apr 2020 09:11:11 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH 6/6] mtd: rawnand: marvell: Rename the ->correct() function
Message-ID: <20200422091111.7316719e@collabora.com>
In-Reply-To: <20200421164857.8255-7-miquel.raynal@bootlin.com>
References: <20200421164857.8255-1-miquel.raynal@bootlin.com>
 <20200421164857.8255-7-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_001118_215373_192EE45A 
X-CRM114-Status: GOOD (  20.72  )
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
Cc: Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 21 Apr 2020 18:48:57 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> There is no correction involved at this point, it is just a matter of
> reading registers and checking whether bitflips have occurred or
> not. Rename the function to clarify it.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
>  drivers/mtd/nand/raw/marvell_nand.c | 19 +++++++++----------
>  1 file changed, 9 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/mtd/nand/raw/marvell_nand.c b/drivers/mtd/nand/raw/marvell_nand.c
> index 2db143a97626..3e448b89aaad 100644
> --- a/drivers/mtd/nand/raw/marvell_nand.c
> +++ b/drivers/mtd/nand/raw/marvell_nand.c
> @@ -932,14 +932,14 @@ static void marvell_nfc_check_empty_chunk(struct nand_chip *chip,
>  }
>  
>  /*
> - * Check a chunk is correct or not according to hardware ECC engine.
> + * Check if a chunk is correct or not according to the hardware ECC engine.
>   * mtd->ecc_stats.corrected is updated, as well as max_bitflips, however
>   * mtd->ecc_stats.failure is not, the function will instead return a non-zero
>   * value indicating that a check on the emptyness of the subpage must be
> - * performed before declaring the subpage corrupted.
> + * performed before actually declaring the subpage as "corrupted".
>   */
> -static int marvell_nfc_hw_ecc_correct(struct nand_chip *chip,
> -				      unsigned int *max_bitflips)
> +static int marvell_nfc_hw_ecc_check_bitflips(struct nand_chip *chip,
> +					     unsigned int *max_bitflips)
>  {
>  	struct mtd_info *mtd = nand_to_mtd(chip);
>  	struct marvell_nfc *nfc = to_marvell_nfc(chip->controller);
> @@ -1053,7 +1053,7 @@ static int marvell_nfc_hw_ecc_hmg_read_page(struct nand_chip *chip, u8 *buf,
>  	marvell_nfc_enable_hw_ecc(chip);
>  	marvell_nfc_hw_ecc_hmg_do_read_page(chip, buf, chip->oob_poi, false,
>  					    page);
> -	ret = marvell_nfc_hw_ecc_correct(chip, &max_bitflips);
> +	ret = marvell_nfc_hw_ecc_check_bitflips(chip, &max_bitflips);
>  	marvell_nfc_disable_hw_ecc(chip);
>  
>  	if (!ret)
> @@ -1336,7 +1336,7 @@ static int marvell_nfc_hw_ecc_bch_read_page(struct nand_chip *chip,
>  		/* Read the chunk and detect number of bitflips */
>  		marvell_nfc_hw_ecc_bch_read_chunk(chip, chunk, data, data_len,
>  						  spare, spare_len, page);
> -		ret = marvell_nfc_hw_ecc_correct(chip, &max_bitflips);
> +		ret = marvell_nfc_hw_ecc_check_bitflips(chip, &max_bitflips);
>  		if (ret)
>  			failure_mask |= BIT(chunk);
>  
> @@ -1358,10 +1358,9 @@ static int marvell_nfc_hw_ecc_bch_read_page(struct nand_chip *chip,
>  	 */
>  
>  	/*
> -	 * In case there is any subpage read error reported by ->correct(), we
> -	 * usually re-read only ECC bytes in raw mode and check if the whole
> -	 * page is empty. In this case, it is normal that the ECC check failed
> -	 * and we just ignore the error.
> +	 * In case there is any subpage read error, we usually re-read only ECC
> +	 * bytes in raw mode and check if the whole page is empty. In this case,
> +	 * it is normal that the ECC check failed and we just ignore the error.
>  	 *
>  	 * However, it has been empirically observed that for some layouts (e.g
>  	 * 2k page, 8b strength per 512B chunk), the controller tries to correct


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
