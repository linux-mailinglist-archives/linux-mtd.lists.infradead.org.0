Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCD271BE349
	for <lists+linux-mtd@lfdr.de>; Wed, 29 Apr 2020 18:04:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z0NDi9iFSn+Fnmo3a5dRDKaBW7tBLV+N3WXXrVSWfjg=; b=O7GVMJBlwvjmkU
	1KteUp8rhp0My6BGeC9stZJD6dJdHQs9xzGTUf4WLqK+cQe3Uk1LDAq7xprunbLeACv4Vr7vtGhJn
	/3F3GR9fesWBtk5EM1D+5lrYREqebv48tBEh/0ncU7FdTKmkgw9mxaW0IEL6Hei7Gyg24wqqRWmkM
	HvVUt0Lpq07DEKwS08optuF6mq443n7VY8mnOJIxLWCuLqJZ/xysvyEtNSgTXwERwJ/ai1lph3CWo
	nCVQWUeQq1VHuOG/yk9k+EBF1QhEBOC1YE/Tx/Ry91q8BFVEx5DcREz/xGm22hY61QO8yIdpvbNBS
	/Gs36sDn3SmJkyBh1X4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTpC6-00036S-Fh; Wed, 29 Apr 2020 16:04:18 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTpBx-00035s-T5
 for linux-mtd@lists.infradead.org; Wed, 29 Apr 2020 16:04:11 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 2848C2A06C2;
 Wed, 29 Apr 2020 17:04:08 +0100 (BST)
Date: Wed, 29 Apr 2020 18:04:05 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, Tudor Ambarus
 <Tudor.Ambarus@microchip.com>
Subject: Re: [PATCH v2 08/11] mtd: rawnand: jedec: Adapt the parameter page
 read to constraint controllers
Message-ID: <20200429180405.5bf69447@collabora.com>
In-Reply-To: <20200429155540.22048-9-miquel.raynal@bootlin.com>
References: <20200429155540.22048-1-miquel.raynal@bootlin.com>
 <20200429155540.22048-9-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_090410_068321_3D8F848B 
X-CRM114-Status: GOOD (  24.74  )
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
 Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, 29 Apr 2020 17:55:37 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> We already know that there are controllers not able to read the three
> copies of the parameter page in one go. The workaround was to first
> request the controller to assert command and address cycles on the
> NAND bus to trigger a parameter page read, and then do a read
> operation for each page.
> 
> But there are also controllers which are not able to split the
> parameter page read between the command/address cycles and the actual
> data operation.
> 
> All controllers are expected to be able to change the read column
> though. So let's use a regular parameter page read operation for the
> first iteration and use a change read column operation for the
> following copies.
> 
> The extra command and address cycles sent over the NAND bus are
> negligible compared to the amount of data that is being transferred
> anyway.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  drivers/mtd/nand/raw/nand_jedec.c | 28 +++++++++++++++-------------
>  1 file changed, 15 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/mtd/nand/raw/nand_jedec.c b/drivers/mtd/nand/raw/nand_jedec.c
> index 15937e02c64f..b2be9056759a 100644
> --- a/drivers/mtd/nand/raw/nand_jedec.c
> +++ b/drivers/mtd/nand/raw/nand_jedec.c
> @@ -25,7 +25,7 @@ int nand_jedec_detect(struct nand_chip *chip)
>  {
>  	struct mtd_info *mtd = nand_to_mtd(chip);
>  	struct nand_memory_organization *memorg;
> -	struct nand_jedec_params *p;
> +	struct nand_jedec_params *p = NULL, *pbuf;

Looks like you've merged 2 different commits here. I remember you had a
separate commit adding pbuf to avoid an extra memcpy().

>  	struct jedec_ecc_info *ecc;
>  	int jedec_version = 0;
>  	char id[5];
> @@ -40,25 +40,25 @@ int nand_jedec_detect(struct nand_chip *chip)
>  		return 0;
>  
>  	/* JEDEC chip: allocate a buffer to hold its parameter page */
> -	p = kzalloc(sizeof(*p), GFP_KERNEL);
> -	if (!p)
> +	pbuf = kzalloc(sizeof(*pbuf) * JEDEC_PARAM_PAGES, GFP_KERNEL);
> +	if (!pbuf)
>  		return -ENOMEM;
>  
> -	ret = nand_read_param_page_op(chip, 0x40, NULL, 0);
> -	if (ret) {
> -		ret = 0;
> -		goto free_jedec_param_page;
> -	}
> -
>  	for (i = 0; i < JEDEC_PARAM_PAGES; i++) {
> -		ret = nand_read_data_op(chip, p, sizeof(*p), true);
> +		if (!i)
> +			ret = nand_read_param_page_op(chip, 0x40, &pbuf[i],
> +						      sizeof(*pbuf));
> +		else
> +			ret = nand_change_read_column_op(chip, sizeof(*pbuf) * i,
> +							 &pbuf[i], sizeof(*pbuf),
> +							 true);
>  		if (ret) {
>  			ret = 0;
>  			goto free_jedec_param_page;
>  		}
>  
> -		crc = onfi_crc16(ONFI_CRC_BASE, (u8 *)p, 510);
> -		if (crc == le16_to_cpu(p->crc))
> +		crc = onfi_crc16(ONFI_CRC_BASE, (u8 *)&pbuf[i], 510);
> +		if (crc == le16_to_cpu(pbuf[i].crc))
>  			break;
>  	}
>  
> @@ -67,6 +67,8 @@ int nand_jedec_detect(struct nand_chip *chip)
>  		goto free_jedec_param_page;
>  	}
>  
> +	p = pbuf;
> +
>  	/* Check version */
>  	val = le16_to_cpu(p->revision);
>  	if (val & (1 << 2))
> @@ -122,6 +124,6 @@ int nand_jedec_detect(struct nand_chip *chip)
>  	ret = 1;
>  
>  free_jedec_param_page:
> -	kfree(p);
> +	kfree(pbuf);
>  	return ret;
>  }


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
