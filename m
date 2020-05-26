Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D48C91CCE45
	for <lists+linux-mtd@lfdr.de>; Sun, 10 May 2020 23:49:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h9fpNBEJuIJvPat7gEISBIqDxwYiqyNl8k2CNg7+MCI=; b=lHfPrgdRTFghS4
	e7ayleBUQZWQCVULNO9Q0XujUTZn/oRllpt/K4e88z1yTlfISuzJp3E1VVo1toB1NjGMgLlZKrG20
	zZcJVghkZbSd3LbjSurtEtbvodgaE7YA3bKENxMml6Q0Divg+JkLo7I9IO6GvlAAxnm7HhnCzCWXR
	hBHnVo/VgUDov9yEesfoN8OckuOv6OfdMVeZPJMdJDeeuNVSabkXcXTeFiZiBS3/qrQauuePoyYqa
	V/lsrQjDO2vqYG+U15nuY+M/1yqTUUhaonlvD55Vki2aRHT1r4RNq+LXtHllTzsOsuqYNGFgsxCj1
	4VMuB6aJNreO16+j5laQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXtoy-0000XO-Iw; Sun, 10 May 2020 21:49:16 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXton-0000Wn-B3
 for linux-mtd@lists.infradead.org; Sun, 10 May 2020 21:49:06 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 731EA240004;
 Sun, 10 May 2020 21:49:02 +0000 (UTC)
Date: Sun, 10 May 2020 23:49:01 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v2 13/19] mtd: rawnand: cafe: Don't split things when
 reading/writing a page
Message-ID: <20200510234901.42609fde@xps13>
In-Reply-To: <20200505101353.1776394-14-boris.brezillon@collabora.com>
References: <20200505101353.1776394-1-boris.brezillon@collabora.com>
 <20200505101353.1776394-14-boris.brezillon@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_144905_514779_1F08B53A 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.178.230 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Lubomir Rintel <lkundrak@v3.sk>,
 Tudor Ambarus <tudor.ambarus@microchip.com>, linux-mtd@lists.infradead.org,
 Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


Boris Brezillon <boris.brezillon@collabora.com> wrote on Tue,  5 May
2020 12:13:47 +0200:

> Calling nand_read_page_op(pagesize)/nand_prog_page_begin_op(pagesize)
> and expecting to get a pagesize+oobsize read from/written to the
> read/write buffer is fragile and only works because of hacks done
> in cmdfunc(). Let's read/write the page in one go, using the page
> cache buffer as a bounce buffer instead of relying on guesses done
> in cafe_nand_cmdfunc().
> 
> Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> Tested-by: Lubomir Rintel <lkundrak@v3.sk>
> ---
> Changes in v2:
> * Add T-b
> * None
> ---
>  drivers/mtd/nand/raw/cafe_nand.c | 16 +++++++++++-----
>  1 file changed, 11 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/mtd/nand/raw/cafe_nand.c b/drivers/mtd/nand/raw/cafe_nand.c
> index f7e537836d55..36685bee9d83 100644
> --- a/drivers/mtd/nand/raw/cafe_nand.c
> +++ b/drivers/mtd/nand/raw/cafe_nand.c
> @@ -470,6 +470,7 @@ static int cafe_nand_read_page(struct nand_chip *chip, uint8_t *buf,
>  {
>  	struct mtd_info *mtd = nand_to_mtd(chip);
>  	struct cafe_priv *cafe = nand_get_controller_data(chip);
> +	void *pagebuf = nand_get_data_buf(chip);
>  	unsigned int max_bitflips = 0;
>  	u32 ecc_result, status;
>  
> @@ -477,8 +478,11 @@ static int cafe_nand_read_page(struct nand_chip *chip, uint8_t *buf,
>  		cafe_readl(cafe, NAND_ECC_RESULT),
>  		cafe_readl(cafe, NAND_ECC_SYN_REG(0)));
>  
> -	nand_read_page_op(chip, page, 0, buf, mtd->writesize);
> -	chip->legacy.read_buf(chip, chip->oob_poi, mtd->oobsize);
> +	nand_read_page_op(chip, page, 0, pagebuf,
> +			  mtd->writesize + mtd->oobsize);

Shouldn't accesses to the OOB area be under conditions like if
(oob_required)? Unless of course reading the OOB like this is mandatory
in order to get the ECC engine working - I did not check.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
