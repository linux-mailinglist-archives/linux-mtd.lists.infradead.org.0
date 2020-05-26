Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C7B81C2D2F
	for <lists+linux-mtd@lfdr.de>; Sun,  3 May 2020 17:02:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tp9XISxYhIrIoen20yzmkOfYiENl7dF6Ab9o+HC0URI=; b=pNqcp+t9H5iaN2
	HHO0a5zxkX8Z5CeWjTFSCViYUTd+D+zP47jdtUhQA46fnzA+9+OxgevtNrB8SjouosnOq/7xaygsQ
	RL43gKOuLzYV6O33TeljznZK1LJ4JvJQUwtiHXkMVQM5QvIm0NiqR7LZgKzhgeq551U8kqG1HRSsg
	EBbcDroHMP74L3c8C9PVeKwbHfOFlVi/t3oUnwvpGiPdsjHZMKIugvGs0AoXli0l+GkXk+ovZf4pq
	mOi7IcNvH95+JKUxYQLEozLqtGZAabyNlMr/lRu4c/I9BjpwV+zXFEtQoC4/LO1RmSTDosq2LsWB1
	BTfum0+uOv1LGKcLZSsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVG8H-0002E3-3e; Sun, 03 May 2020 15:02:17 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVG7u-00024b-Af
 for linux-mtd@lists.infradead.org; Sun, 03 May 2020 15:01:58 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id F15B62A0677;
 Sun,  3 May 2020 16:01:49 +0100 (BST)
Date: Sun, 3 May 2020 17:01:46 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v2 1/3] mtd: rawnand: Add the nand_chip->erase hook
Message-ID: <20200503170146.1bbf07fe@collabora.com>
In-Reply-To: <20200503114029.30257-2-miquel.raynal@bootlin.com>
References: <20200503114029.30257-1-miquel.raynal@bootlin.com>
 <20200503114029.30257-2-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_080154_505377_AD420455 
X-CRM114-Status: GOOD (  20.00  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>,
 Zoltan Szubbocsev <zszubbocsev@micron.com>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, tglx@linutronix.de,
 Piotr Wojtaszczyk <WojtaszczykP@cumminsallison.com>,
 Bean Huo <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Sun,  3 May 2020 13:40:27 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> In order to solve an issue with Micron NANDs, we must be able to
> overload the erase operation. With this in mind, we create a ->erase
> hook in the nand_chip structure which points by default to the
> currently in use nand_erase_nand() helper.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  drivers/mtd/nand/raw/nand_base.c | 6 +++++-
>  include/linux/mtd/rawnand.h      | 3 +++
>  2 files changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
> index c24e5e2ba130..7c7ac722d88b 100644
> --- a/drivers/mtd/nand/raw/nand_base.c
> +++ b/drivers/mtd/nand/raw/nand_base.c
> @@ -4158,7 +4158,9 @@ static int nand_write_oob(struct mtd_info *mtd, loff_t to,
>   */
>  static int nand_erase(struct mtd_info *mtd, struct erase_info *instr)
>  {
> -	return nand_erase_nand(mtd_to_nand(mtd), instr, 0);
> +	struct nand_chip *chip = mtd_to_nand(mtd);
> +
> +	return chip->erase(chip, instr, 0);
>  }
>  
>  /**
> @@ -4419,6 +4421,8 @@ static void nand_set_defaults(struct nand_chip *chip)
>  
>  	if (!chip->buf_align)
>  		chip->buf_align = 1;
> +
> +	chip->erase = nand_erase_nand;
>  }
>  
>  /* Sanitize ONFI strings so we can safely print them */
> diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
> index 1e76196f9829..505c13f7a2ba 100644
> --- a/include/linux/mtd/rawnand.h
> +++ b/include/linux/mtd/rawnand.h
> @@ -1020,6 +1020,7 @@ struct nand_legacy {
>   *			avoid using them.
>   * @setup_read_retry:	[FLASHSPECIFIC] flash (vendor) specific function for
>   *			setting the read-retry mode. Mostly needed for MLC NAND.
> + * @erase:		Raw NAND erase operation.
>   * @ecc:		[BOARDSPECIFIC] ECC control structure
>   * @buf_align:		minimum buffer alignment required by a platform
>   * @oob_poi:		"poison value buffer," used for laying out OOB data
> @@ -1089,6 +1090,8 @@ struct nand_chip {
>  	struct nand_legacy legacy;
>  
>  	int (*setup_read_retry)(struct nand_chip *chip, int retry_mode);
> +	int (*erase)(struct nand_chip *chip, struct erase_info *instr,
> +		     int allowbbt);
>  

Before we do that, can we create a nand_chip_ops struct and place all
NAND-specific ops in there?

Regarding the erase hook itself, I wonder if it wouldn't be simpler to
have optional {pre,post}_erase() hooks instead (I think makes even more
sense for the ->write_oob() hook).

>  	unsigned int options;
>  	unsigned int bbt_options;


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
