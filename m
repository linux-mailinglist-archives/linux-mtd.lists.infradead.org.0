Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3933D1E312C
	for <lists+linux-mtd@lfdr.de>; Tue, 26 May 2020 23:27:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xXIRhRPPHy9ORoSdO+0NnmWHpj2g65KXOYNcQQkRBPQ=; b=XBbGAFoTs3X2Jt
	2q4lNe6fTMAL4lYPhcx3XTsRQx5IFQgTIfiL6w2oX9f7J93Afr/YGBN8I5SXPocCgPH4lHUCuemit
	6KeuUDEEzoWj/2EpIoGDOt51qOnhmlx4ifH/hW5QkbEL22A9ajzWXZkhZ3dAJeI4L/oIq7e94ftnJ
	CYQU5pLDlEvBSZEczZBXGMJfF9vQtBzZ5sZ8MENaL+Tli8qr1E8sYt+oH+LHwZtlD0AzQIt/vdGWv
	XW45g9K4lz7nDkgf6epz5dCgNXYOuUzdUFzPFSwS2kYtkpzbpFQxgBrAI7U97ltmaomoDH72S5cp8
	Mq2fQiKzXng7R/dFF59g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdh68-00080i-Mq; Tue, 26 May 2020 21:26:56 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdh60-00080I-7g
 for linux-mtd@lists.infradead.org; Tue, 26 May 2020 21:26:49 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 06DCE2A02A3;
 Tue, 26 May 2020 22:26:47 +0100 (BST)
Date: Tue, 26 May 2020 23:26:44 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v5 18/28] mtd: rawnand: marvell: Use a helper to access
 the timings
Message-ID: <20200526232644.6c4c8d78@collabora.com>
In-Reply-To: <20200526191725.7591-19-miquel.raynal@bootlin.com>
References: <20200526191725.7591-1-miquel.raynal@bootlin.com>
 <20200526191725.7591-19-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_142648_401437_684DE75D 
X-CRM114-Status: GOOD (  15.75  )
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

On Tue, 26 May 2020 21:17:15 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Do not access the SDR timings directly but use nand_get_sdr_timings()
> instead. This way, future patching over this helper will be easier.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
>  drivers/mtd/nand/raw/marvell_nand.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/mtd/nand/raw/marvell_nand.c b/drivers/mtd/nand/raw/marvell_nand.c
> index 260a0430313e..ebf45a2754f1 100644
> --- a/drivers/mtd/nand/raw/marvell_nand.c
> +++ b/drivers/mtd/nand/raw/marvell_nand.c
> @@ -1096,6 +1096,7 @@ static int marvell_nfc_hw_ecc_hmg_do_write_page(struct nand_chip *chip,
>  						const u8 *oob_buf, bool raw,
>  						int page)
>  {
> +	const struct nand_sdr_timings *sdr = nand_get_sdr_timings(&chip->data_interface);
>  	struct marvell_nand_chip *marvell_nand = to_marvell_nand(chip);
>  	struct marvell_nfc *nfc = to_marvell_nfc(chip->controller);
>  	const struct marvell_hw_ecc_layout *lt = to_marvell_nand(chip)->layout;
> @@ -1140,8 +1141,7 @@ static int marvell_nfc_hw_ecc_hmg_do_write_page(struct nand_chip *chip,
>  	if (ret)
>  		return ret;
>  
> -	ret = marvell_nfc_wait_op(chip,
> -				  PSEC_TO_MSEC(chip->data_interface.timings.sdr.tPROG_max));
> +	ret = marvell_nfc_wait_op(chip, PSEC_TO_MSEC(sdr->tPROG_max));
>  	return ret;
>  }
>  
> @@ -1562,6 +1562,7 @@ static int marvell_nfc_hw_ecc_bch_write_page(struct nand_chip *chip,
>  					     const u8 *buf,
>  					     int oob_required, int page)
>  {
> +	const struct nand_sdr_timings *sdr = nand_get_sdr_timings(&chip->data_interface);
>  	struct mtd_info *mtd = nand_to_mtd(chip);
>  	const struct marvell_hw_ecc_layout *lt = to_marvell_nand(chip)->layout;
>  	const u8 *data = buf;
> @@ -1598,8 +1599,7 @@ static int marvell_nfc_hw_ecc_bch_write_page(struct nand_chip *chip,
>  		marvell_nfc_wait_ndrun(chip);
>  	}
>  
> -	ret = marvell_nfc_wait_op(chip,
> -				  PSEC_TO_MSEC(chip->data_interface.timings.sdr.tPROG_max));
> +	ret = marvell_nfc_wait_op(chip, PSEC_TO_MSEC(sdr->tPROG_max));
>  
>  	marvell_nfc_disable_hw_ecc(chip);
>  


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
