Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F02921E1464
	for <lists+linux-mtd@lfdr.de>; Mon, 25 May 2020 20:34:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v9WdAzwI/ubsILjPBLXlDV65KS2hGGypRPFk9YOT670=; b=MgUfZIGPq3PnMH
	1FVbmJ7RVDBapgAnTSGn1zRHE4AEMLXMP9MaMdASomMUHkqWaAfrkeOdE2iWqOoW5lLQ0upmc00/Z
	/w80XqA9f+VnMeINgujRncI320tSVx6NMYWFjXtJTrKVoiYWZhA1opPDcOQopIG97DBSE5NoHHA84
	PPc+Aqk++WUj0hxttOS/fpUcSadspeuy7XFhKtgW+2p4egfG9JvigZBdVE7Nm50s+v4tU9FKseO9e
	nMRDUuWODDc2r8ZzVzqNMYsJls48FclZu9HUxbsYXktf4DaLrdSEHWShY1aLEyiF/JSwdNTyOwOTF
	cUfOzEYv98PodSdz4XcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdHvG-0001jn-Br; Mon, 25 May 2020 18:34:02 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdHvA-0001jG-0a
 for linux-mtd@lists.infradead.org; Mon, 25 May 2020 18:33:57 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 2B9F92A1899;
 Mon, 25 May 2020 19:33:51 +0100 (BST)
Date: Mon, 25 May 2020 20:33:48 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v4 01/19] mtd: rawnand: Use unsigned types for nand_chip
 unsigned values
Message-ID: <20200525203348.7c41a7eb@collabora.com>
In-Reply-To: <20200525174239.11349-2-miquel.raynal@bootlin.com>
References: <20200525174239.11349-1-miquel.raynal@bootlin.com>
 <20200525174239.11349-2-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_113356_184000_17A556AD 
X-CRM114-Status: GOOD (  14.25  )
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
Cc: Rickard Andersson <rickaran@axis.com>, Richard Weinberger <richard@nod.at>,
 linux-mtd@lists.infradead.org, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, 25 May 2020 19:42:21 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> page_shift, phys_erase_shift, bbt_erase_shift, chip_shift, pagemask,
> subpagesize and badblockbits are all positive values, so declare
> them as unsigned.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

though patching code to get rid of those fields (in favor of
nanddev_xxx() calls) would be much more valuable IMHO.

> ---
>  include/linux/mtd/rawnand.h | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
> index 2804c13e5662..8a1e0192f78e 100644
> --- a/include/linux/mtd/rawnand.h
> +++ b/include/linux/mtd/rawnand.h
> @@ -1110,11 +1110,11 @@ struct nand_chip {
>  	unsigned int options;
>  	unsigned int bbt_options;
>  
> -	int page_shift;
> -	int phys_erase_shift;
> -	int bbt_erase_shift;
> -	int chip_shift;
> -	int pagemask;
> +	unsigned int page_shift;
> +	unsigned int phys_erase_shift;
> +	unsigned int bbt_erase_shift;
> +	unsigned int chip_shift;
> +	unsigned int pagemask;
>  	u8 *data_buf;
>  
>  	struct {
> @@ -1122,10 +1122,10 @@ struct nand_chip {
>  		int page;
>  	} pagecache;
>  
> -	int subpagesize;
> +	unsigned int subpagesize;
>  	int onfi_timing_mode_default;
>  	unsigned int badblockpos;
> -	int badblockbits;
> +	unsigned int badblockbits;
>  
>  	struct nand_id id;
>  	struct nand_parameters parameters;


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
