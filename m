Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59337D4E4E
	for <lists+linux-mtd@lfdr.de>; Sat, 12 Oct 2019 10:42:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BUJsylzL1N2Tyf0b4GLBlRcae76axUp0Kz+AOrISpuc=; b=SJg2Dg1StiNBAe
	s1aL3cQc7A8cOvlB7MZ8h4JKsVuWxrPIkkw1ZgBgsCLNw5Fxtc0QVi1UFZgL9lAwe0gzJ9NpQXWTa
	qUTM7GxRkTnVv0xwY1KAsTIVU6FR5Y7H7SZcMjqz8iT3fb0BKkIEVwfmcvgNuHz8IzINo8gQkmAiG
	g5A4wm76ruFkFjr7Lbr8XXZqAulgGM4qrsUnWGIMFT5krrL5Jv2LewoHeD7qDITAiuwIHkCpQOF1W
	nRiPKgAZr8gW2gA0I90CHrY2oMc5NzMfkX694qN85xP8LvHJpC86r1HrQ0KnyFV0c3j5DqyyeMzgW
	4Fh7D/A6Ce2Klc53HOEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJCyN-0007I2-Dk; Sat, 12 Oct 2019 08:41:59 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJCxu-0007Ck-Am; Sat, 12 Oct 2019 08:41:32 +0000
Received: from dhcp-172-31-174-146.wireless.concordia.ca (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id E630C290EFB;
 Sat, 12 Oct 2019 09:41:24 +0100 (BST)
Date: Sat, 12 Oct 2019 10:41:22 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v3 01/40] mtd: rawnand: Avoid a typedef
Message-ID: <20191012104122.180a1e67@dhcp-172-31-174-146.wireless.concordia.ca>
In-Reply-To: <20190919193141.7865-2-miquel.raynal@bootlin.com>
References: <20190919193141.7865-1-miquel.raynal@bootlin.com>
 <20190919193141.7865-2-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_014130_630682_5D840356 
X-CRM114-Status: GOOD (  19.56  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mason Yang <masonccyang@mxic.com.tw>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>, Julien Su <juliensu@mxic.com.tw>,
 Richard Weinberger <richard@nod.at>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 Paul Cercueil <paul@crapouillou.net>, Marek Vasut <marek.vasut@gmail.com>,
 linux-mtd@lists.infradead.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, 19 Sep 2019 21:31:01 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> In new code, the use of typedef is discouraged. Turn this one in the
> raw NAND core into a regular enumeration.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
>  drivers/mtd/nand/raw/nand_base.c               | 4 ++--
>  include/linux/mtd/rawnand.h                    | 6 +++---
>  include/linux/platform_data/mtd-davinci.h      | 2 +-
>  include/linux/platform_data/mtd-nand-s3c2410.h | 2 +-
>  4 files changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
> index b89b00cc2999..3bf2d56eced2 100644
> --- a/drivers/mtd/nand/raw/nand_base.c
> +++ b/drivers/mtd/nand/raw/nand_base.c
> @@ -4857,8 +4857,8 @@ static int of_get_nand_ecc_mode(struct device_node *np)
>  
>  	/*
>  	 * For backward compatibility we support few obsoleted values that don't
> -	 * have their mappings into nand_ecc_modes_t anymore (they were merged
> -	 * with other enums).
> +	 * have their mappings into the nand_ecc_mode enum anymore (they were
> +	 * merged with other enums).
>  	 */
>  	if (!strcasecmp(pm, "soft_bch"))
>  		return NAND_ECC_SOFT;
> diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
> index 4ab9bccfcde0..cd834e9f7e78 100644
> --- a/include/linux/mtd/rawnand.h
> +++ b/include/linux/mtd/rawnand.h
> @@ -83,14 +83,14 @@ struct nand_chip;
>  /*
>   * Constants for ECC_MODES
>   */
> -typedef enum {
> +enum nand_ecc_mode {
>  	NAND_ECC_NONE,
>  	NAND_ECC_SOFT,
>  	NAND_ECC_HW,
>  	NAND_ECC_HW_SYNDROME,
>  	NAND_ECC_HW_OOB_FIRST,
>  	NAND_ECC_ON_DIE,
> -} nand_ecc_modes_t;
> +};
>  
>  enum nand_ecc_algo {
>  	NAND_ECC_UNKNOWN,
> @@ -351,7 +351,7 @@ static const struct nand_ecc_caps __name = {			\
>   * @write_oob:	function to write chip OOB data
>   */
>  struct nand_ecc_ctrl {
> -	nand_ecc_modes_t mode;
> +	enum nand_ecc_mode mode;
>  	enum nand_ecc_algo algo;
>  	int steps;
>  	int size;
> diff --git a/include/linux/platform_data/mtd-davinci.h b/include/linux/platform_data/mtd-davinci.h
> index 08e639e047e5..03e92c71b3fa 100644
> --- a/include/linux/platform_data/mtd-davinci.h
> +++ b/include/linux/platform_data/mtd-davinci.h
> @@ -68,7 +68,7 @@ struct davinci_nand_pdata {		/* platform_data */
>  	 * Newer ones also support 4-bit ECC, but are awkward
>  	 * using it with large page chips.
>  	 */
> -	nand_ecc_modes_t	ecc_mode;
> +	enum nand_ecc_mode	ecc_mode;
>  	u8			ecc_bits;
>  
>  	/* e.g. NAND_BUSWIDTH_16 */
> diff --git a/include/linux/platform_data/mtd-nand-s3c2410.h b/include/linux/platform_data/mtd-nand-s3c2410.h
> index deb849bcf0ec..08675b16f9e1 100644
> --- a/include/linux/platform_data/mtd-nand-s3c2410.h
> +++ b/include/linux/platform_data/mtd-nand-s3c2410.h
> @@ -49,7 +49,7 @@ struct s3c2410_platform_nand {
>  
>  	unsigned int	ignore_unset_ecc:1;
>  
> -	nand_ecc_modes_t	ecc_mode;
> +	enum nand_ecc_mode	ecc_mode;
>  
>  	int			nr_sets;
>  	struct s3c2410_nand_set *sets;


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
