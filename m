Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 133221D9247
	for <lists+linux-mtd@lfdr.de>; Tue, 19 May 2020 10:42:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e/ZhHcgTWZlTIIYKH8kSjCVmOPbevHdyMWC6/zBF+F8=; b=X7gNWSHTQazKCC
	R51zmkwmYbqmEodv6YF9RMHrkg7LBTRuyTSskj6JM/XXaOhlSGH79yg+PG7kmR08jdrKf4X4qw5Qb
	qLpWR5cjVgUqt1UKLV1S2cz+vnrMYty4FS6UoUCnosu0QQVJL5GxLtu3JX57NoMFn1l16ZZdK5mHO
	DvdCFipoitVbFIwx6jWPrTFboJFEpa4AUV4ZDArO/ViiHbxTD9ZMdICYve/y10Ewnjv9kQ7TPZJK+
	gbuY1y7KdV9ODN0k1rhlAedvqvyqvUzlS+fNgB7fj+c0+VXAoab5DEwO7pXjlrHZ+ZHeLNDHb/R1v
	XFZVD235V7v+wO209zHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaxpJ-00056f-GK; Tue, 19 May 2020 08:42:17 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaxpB-000566-26
 for linux-mtd@lists.infradead.org; Tue, 19 May 2020 08:42:11 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 84EFC2A06EC;
 Tue, 19 May 2020 09:42:07 +0100 (BST)
Date: Tue, 19 May 2020 10:42:05 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v5 3/8] mtd: rawnand: Ensure the number of bitflips is
 consistent
Message-ID: <20200519104205.7c130931@collabora.com>
In-Reply-To: <20200519074549.23673-4-miquel.raynal@bootlin.com>
References: <20200519074549.23673-1-miquel.raynal@bootlin.com>
 <20200519074549.23673-4-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_014209_230279_F93A6F9E 
X-CRM114-Status: GOOD (  19.13  )
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
Cc: Michal Simek <monstr@monstr.eu>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 19 May 2020 09:45:44 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> The main NAND read page function can loop over "page reads" many times
> in if the reading reports uncorrectable error(s) and if the chip
> supports the read_retry feature.
> 
> In this case, the number of bitflips is summarized between
> attempts. Fix this by re-initializing the entire mtd_ecc_stats object
> each time we retry.
> 
> Suggested-by: Boris Brezillon <boris.brezillon@collabora.com>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
>  drivers/mtd/nand/raw/nand_base.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
> index 2bef01e21533..65e9b2fa2fc5 100644
> --- a/drivers/mtd/nand/raw/nand_base.c
> +++ b/drivers/mtd/nand/raw/nand_base.c
> @@ -3288,7 +3288,7 @@ static int nand_do_read_ops(struct nand_chip *chip, loff_t from,
>  	oob_required = oob ? 1 : 0;
>  
>  	while (1) {
> -		unsigned int ecc_failures = mtd->ecc_stats.failed;
> +		struct mtd_ecc_stats ecc_stats = mtd->ecc_stats;
>  
>  		bytes = min(mtd->writesize - col, readlen);
>  		aligned = (bytes == mtd->writesize);
> @@ -3339,7 +3339,7 @@ static int nand_do_read_ops(struct nand_chip *chip, loff_t from,
>  			 */
>  			if (use_bounce_buf) {
>  				if (!NAND_HAS_SUBPAGE_READ(chip) && !oob &&
> -				    !(mtd->ecc_stats.failed - ecc_failures) &&
> +				    !(mtd->ecc_stats.failed - ecc_stats.failed) &&
>  				    (ops->mode != MTD_OPS_RAW)) {
>  					chip->pagecache.page = realpage;
>  					chip->pagecache.bitflips = ret;
> @@ -3362,7 +3362,7 @@ static int nand_do_read_ops(struct nand_chip *chip, loff_t from,
>  
>  			nand_wait_readrdy(chip);
>  
> -			if (mtd->ecc_stats.failed - ecc_failures) {
> +			if (mtd->ecc_stats.failed - ecc_stats.failed) {
>  				if (retry_mode + 1 < chip->read_retries) {
>  					retry_mode++;
>  					ret = nand_setup_read_retry(chip,
> @@ -3370,8 +3370,8 @@ static int nand_do_read_ops(struct nand_chip *chip, loff_t from,
>  					if (ret < 0)
>  						break;
>  
> -					/* Reset failures; retry */
> -					mtd->ecc_stats.failed = ecc_failures;
> +					/* Reset ecc_stats; retry */
> +					mtd->ecc_stats = ecc_stats;
>  					goto read_retry;
>  				} else {
>  					/* No more retry modes; real failure */


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
