Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DB2A1C3701
	for <lists+linux-mtd@lfdr.de>; Mon,  4 May 2020 12:35:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RvugGA1lKOptpddz3d+NFEjamtcVBIDbCuqtPNksBks=; b=OYxr1A2SDbB7B9
	pb8tl9FXPgHXi1dhmK0sMAaND2AQpkWJ1NahbSqNDLItEQ7nC47FfurzUDaAKdGsJJp9noEy98RlR
	70DNjw5XRQJfOzNXnufGqwR6TISWlu4xAGmL6DCUQ2L6qu+/enOC+IbSyP/FIl3JHphXGyCjx3sxc
	WnPB0/eu3jW/9WVuUj7MJuVL/BbxU5wqBdJNvYX595qd3pM/wYZHkAVQiEGHQso+51kqjirk57Ta0
	Ci9/Ff7pSWPNfBYLk9eGYVbo6jtQMPK2e+INQ9L7CvGFU0Zqkkfao38jTKzzNy3Ux5BUZ+gAb8Ym9
	ECeELOLX4T5BHFUuB7+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVYRW-00024u-Nc; Mon, 04 May 2020 10:35:22 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVYRG-00018z-6K
 for linux-mtd@lists.infradead.org; Mon, 04 May 2020 10:35:07 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id B95202A0BAD;
 Mon,  4 May 2020 11:35:04 +0100 (BST)
Date: Mon, 4 May 2020 12:35:01 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v4 11/13] mtd: rawnand: Expose monolithic
 read/write_page_raw() helpers
Message-ID: <20200504123501.56ade217@collabora.com>
In-Reply-To: <20200504095237.1654-12-miquel.raynal@bootlin.com>
References: <20200504095237.1654-1-miquel.raynal@bootlin.com>
 <20200504095237.1654-12-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_033506_390530_239F0E31 
X-CRM114-Status: GOOD (  11.89  )
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

On Mon,  4 May 2020 11:52:35 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

>  /**
>   * nand_write_page_raw_syndrome - [INTERN] raw page write function
>   * @chip: nand chip info structure
> diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
> index 70380c91731c..830e05dd1e1d 100644
> --- a/include/linux/mtd/rawnand.h
> +++ b/include/linux/mtd/rawnand.h
> @@ -1328,13 +1328,17 @@ int nand_read_oob_std(struct nand_chip *chip, int page);
>  int nand_get_set_features_notsupp(struct nand_chip *chip, int addr,
>  				  u8 *subfeature_param);
>  
> -/* Default read_page_raw implementation */
> +/* Default read_page_raw implementations */

I thought we agreed on dropping the "Default" here

>  int nand_read_page_raw(struct nand_chip *chip, uint8_t *buf, int oob_required,
>  		       int page);
> +int nand_monolithic_read_page_raw(struct nand_chip *chip, uint8_t *buf,
> +				  int oob_required, int page);
>  
> -/* Default write_page_raw implementation */
> +/* Default write_page_raw implementations */

and here :).

>  int nand_write_page_raw(struct nand_chip *chip, const uint8_t *buf,
>  			int oob_required, int page);
> +int nand_monolithic_write_page_raw(struct nand_chip *chip, const uint8_t *buf,
> +				   int oob_required, int page);
>  
>  /* Reset and initialize a NAND device */
>  int nand_reset(struct nand_chip *chip, int chipnr);


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
