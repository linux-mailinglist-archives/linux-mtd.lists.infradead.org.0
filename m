Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEFA4181643
	for <lists+linux-mtd@lfdr.de>; Wed, 11 Mar 2020 11:53:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/1rjROYcr/ZGYLPSz3BJPs36f6edpIccN/HR9zW3C64=; b=DCy7YrKdSnM5B7
	YmJqyRKdJsJDh+1n1qe6/jsZGDJwiMQcjlaT/RYRMN+PMZ6sBBlXdLOGrL8038BP5r0uo5Kku8Rks
	uqpUxRDZ35HyOVJynm4Y15aNy5ftQAA4ov/APM56wZd/ypgnnUNkJhJpTvUBL2tWtaRZck7IsXzB0
	LyVwSkvfjkKRbl0pitqCN+3qgjRdUeQt4xSpH3b79EV16vQW2Lmo0J913YsLlnU3WBtqN+Rh5Qd6N
	6P+iDNBKjPgtKFMspCMvdrtUFTuCF/WW3/C8te5h0ZSu4CI262k6o3vKo4lxG0TlaBD4EOBWCx38f
	efGpx2AlTZ+LeMNgUIrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jByze-0000wc-7c; Wed, 11 Mar 2020 10:53:42 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jByzT-0000wC-Ko
 for linux-mtd@lists.infradead.org; Wed, 11 Mar 2020 10:53:33 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 54028295F3F;
 Wed, 11 Mar 2020 10:53:30 +0000 (GMT)
Date: Wed, 11 Mar 2020 11:53:28 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: shiva.linuxworks@gmail.com
Subject: Re: [PATCH v6 3/6] mtd: spinand: micron: Add new Micron SPI NAND
 devices
Message-ID: <20200311115328.76c9d1df@collabora.com>
In-Reply-To: <20200309115230.7207-4-sshivamurthy@micron.com>
References: <20200309115230.7207-1-sshivamurthy@micron.com>
 <20200309115230.7207-4-sshivamurthy@micron.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_035331_810410_61851794 
X-CRM114-Status: GOOD (  13.94  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 linux-kernel@vger.kernel.org, Frieder Schrempf <frieder.schrempf@kontron.de>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Shivamurthy Shastri <sshivamurthy@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon,  9 Mar 2020 12:52:27 +0100
shiva.linuxworks@gmail.com wrote:

> From: Shivamurthy Shastri <sshivamurthy@micron.com>
> 
> Add device table for M79A and M78A series Micron SPI NAND devices.
> 
> Signed-off-by: Shivamurthy Shastri <sshivamurthy@micron.com>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
>  drivers/mtd/nand/spi/micron.c | 30 ++++++++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
> 
> diff --git a/drivers/mtd/nand/spi/micron.c b/drivers/mtd/nand/spi/micron.c
> index e4aeafc56f4e..5fd1f921ef12 100644
> --- a/drivers/mtd/nand/spi/micron.c
> +++ b/drivers/mtd/nand/spi/micron.c
> @@ -101,6 +101,36 @@ static const struct spinand_info micron_spinand_table[] = {
>  		     0,
>  		     SPINAND_ECCINFO(&micron_8_ooblayout,
>  				     micron_8_ecc_get_status)),
> +	/* M79A 2Gb 1.8V */
> +	SPINAND_INFO("MT29F2G01ABBGD", 0x25,
> +		     NAND_MEMORG(1, 2048, 128, 64, 2048, 40, 2, 1, 1),
> +		     NAND_ECCREQ(8, 512),
> +		     SPINAND_INFO_OP_VARIANTS(&read_cache_variants,
> +					      &write_cache_variants,
> +					      &update_cache_variants),
> +		     0,
> +		     SPINAND_ECCINFO(&micron_8_ooblayout,
> +				     micron_8_ecc_get_status)),
> +	/* M78A 1Gb 3.3V */
> +	SPINAND_INFO("MT29F1G01ABAFD", 0x14,
> +		     NAND_MEMORG(1, 2048, 128, 64, 1024, 20, 1, 1, 1),
> +		     NAND_ECCREQ(8, 512),
> +		     SPINAND_INFO_OP_VARIANTS(&read_cache_variants,
> +					      &write_cache_variants,
> +					      &update_cache_variants),
> +		     0,
> +		     SPINAND_ECCINFO(&micron_8_ooblayout,
> +				     micron_8_ecc_get_status)),
> +	/* M78A 1Gb 1.8V */
> +	SPINAND_INFO("MT29F1G01ABAFD", 0x15,
> +		     NAND_MEMORG(1, 2048, 128, 64, 1024, 20, 1, 1, 1),
> +		     NAND_ECCREQ(8, 512),
> +		     SPINAND_INFO_OP_VARIANTS(&read_cache_variants,
> +					      &write_cache_variants,
> +					      &update_cache_variants),
> +		     0,
> +		     SPINAND_ECCINFO(&micron_8_ooblayout,
> +				     micron_8_ecc_get_status)),
>  };
>  
>  static int micron_spinand_detect(struct spinand_device *spinand)


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
