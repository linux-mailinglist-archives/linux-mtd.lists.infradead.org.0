Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E9871B3872
	for <lists+linux-mtd@lfdr.de>; Wed, 22 Apr 2020 09:06:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HSTiQ/7Eu8f0LrfWoWVrKldeyrVAvzVjVKWYw3+L/dg=; b=RqtG+0ZAS7V27t
	QqnpSq7m20XIq5prLoo8iTOmjFSP2RUhy6o8bzoC2mFCtSIXmFu85y3zvwRfRWrgoAEfhcq9lqciG
	u0ABcB6AvVBwRzzUj5iecphn/CYv8iEek2kV6kU1P6cdPMIbW16hpBMfIqIrplyrXgrSVScp+F3qR
	2VuuU155OjktDUWz9ug2zAPJSubBuIkQNs1GgeFGhRql7wGqMnH97VMdnK8t8o0byoa0s7JBVvzRW
	BpBudGiMOGMmHumaBY6THUpYgYMcsE8RtccvHPKDrssjvd8Axxg7vkupOeoAIteBlUOo6bH4SPgxp
	riUp8WyC3RuX+ybPWmEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR9SU-0008Do-KW; Wed, 22 Apr 2020 07:06:10 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR9SK-0008Cu-N3
 for linux-mtd@lists.infradead.org; Wed, 22 Apr 2020 07:06:02 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 57CC62A0F90;
 Wed, 22 Apr 2020 08:05:59 +0100 (BST)
Date: Wed, 22 Apr 2020 09:05:55 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH 8/8] mtd: rawnand: jedec: Simplify the NAND operations
 during detection
Message-ID: <20200422090555.0b9d7313@collabora.com>
In-Reply-To: <20200421164637.8086-9-miquel.raynal@bootlin.com>
References: <20200421164637.8086-1-miquel.raynal@bootlin.com>
 <20200421164637.8086-9-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_000600_887164_57BFEDA4 
X-CRM114-Status: GOOD (  16.95  )
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

On Tue, 21 Apr 2020 18:46:37 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> There is no need for separate parameter page reads, the delay penalty
> is negligible so let's do read the three copies in one go.

Same comment as for the ONFI param page read. Let's make sure we don't
break existing users by using exec_op()'s check capability.

> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  drivers/mtd/nand/raw/nand_jedec.c | 20 ++++++++------------
>  1 file changed, 8 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/mtd/nand/raw/nand_jedec.c b/drivers/mtd/nand/raw/nand_jedec.c
> index 4cc1ea512887..befe8c29b505 100644
> --- a/drivers/mtd/nand/raw/nand_jedec.c
> +++ b/drivers/mtd/nand/raw/nand_jedec.c
> @@ -23,7 +23,7 @@ int nand_jedec_detect(struct nand_chip *chip)
>  {
>  	struct mtd_info *mtd = nand_to_mtd(chip);
>  	struct nand_memory_organization *memorg;
> -	struct nand_jedec_params *p;
> +	struct nand_jedec_params *p = NULL, *pbuf;
>  	struct jedec_ecc_info *ecc;
>  	int jedec_version = 0;
>  	char id[5];
> @@ -38,25 +38,19 @@ int nand_jedec_detect(struct nand_chip *chip)
>  		return 0;
>  
>  	/* JEDEC chip: allocate a buffer to hold its parameter page */
> -	p = kzalloc(sizeof(*p), GFP_KERNEL);
> -	if (!p)
> +	pbuf = kzalloc(sizeof(*pbuf) * 3, GFP_KERNEL);
> +	if (!pbuf)
>  		return -ENOMEM;
>  
> -	ret = nand_read_param_page_op(chip, 0x40, NULL, 0);
> +	ret = nand_read_param_page_op(chip, 0x40, pbuf, 3 * sizeof(*pbuf));
>  	if (ret) {
>  		ret = 0;
>  		goto free_jedec_param_page;
>  	}
>  
>  	for (i = 0; i < 3; i++) {
> -		ret = nand_read_data_op(chip, p, sizeof(*p), true);
> -		if (ret) {
> -			ret = 0;
> -			goto free_jedec_param_page;
> -		}
> -
> -		crc = onfi_crc16(ONFI_CRC_BASE, (u8 *)p, 510);
> -		if (crc == le16_to_cpu(p->crc))
> +		crc = onfi_crc16(ONFI_CRC_BASE, (u8 *)&pbuf[i], 510);
> +		if (crc == le16_to_cpu(pbuf[i].crc))
>  			break;
>  	}
>  
> @@ -65,6 +59,8 @@ int nand_jedec_detect(struct nand_chip *chip)
>  		goto free_jedec_param_page;
>  	}
>  
> +	p = pbuf;
> +
>  	/* Check version */
>  	val = le16_to_cpu(p->revision);
>  	if (val & (1 << 2))


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
