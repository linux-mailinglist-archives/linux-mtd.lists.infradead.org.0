Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 200261B9895
	for <lists+linux-mtd@lfdr.de>; Mon, 27 Apr 2020 09:29:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZHpDB8pCP3R7tXRUvOegBXsuNlQTWsd+NNU5eNs6rqQ=; b=ZWcWReix01yELb
	w77KPMsoqNHUTc0Bcz8k3oj44vXUbVyAlNA6gZGbT3SEG8VhJjevC4wkBVI0SovXsk6AVtDTuyPIV
	v5i69mKzDkn3yTNrzDTKTgMxIHNgfca0wVSX+Qt87S/z0IJP64CwK+Su69BP4Y1Lsmcb5h3m2NP5H
	/B1AgT0nOyHqwJaLKWEuUN7IwHEys5NyRc3woXSie3ZrrTs12EC54h6aVg2H5ITtQdwQdfCKSt60I
	K/o9muRQIRZ62a9nv1vLLXFn8nrxzV3Np6DtAYK5siJeO+YQq6gIwNPOKQ2UJAJfZcz/fRCnmnDTb
	usALXxx1bzSlvztCXIvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSyCB-0004PQ-Mk; Mon, 27 Apr 2020 07:28:51 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSyC0-0004OM-Eb
 for linux-mtd@lists.infradead.org; Mon, 27 Apr 2020 07:28:41 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 2F21A2A0021;
 Mon, 27 Apr 2020 08:28:39 +0100 (BST)
Date: Mon, 27 Apr 2020 09:28:36 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org
Subject: Re: [PATCH 1/3] mtd: rawnand: Add a NAND_NO_BBM_QUIRK flag
Message-ID: <20200427092836.40152b2a@collabora.com>
In-Reply-To: <20200427072453.375642-1-boris.brezillon@collabora.com>
References: <20200427072453.375642-1-boris.brezillon@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_002840_622830_1B3F9690 
X-CRM114-Status: GOOD (  18.17  )
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
Cc: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, 27 Apr 2020 09:24:51 +0200
Boris Brezillon <boris.brezillon@collabora.com> wrote:

> Some controllers with embedded ECC engines override the BBM marker with
> data or ECC bytes, thus making bad block detection through bad block
> marker impossible. Let's flag those chips so the core knows it shouldn't
> check the BBM and consider all blocks good.
> 
> This should allow us to get rid of two implementers of the
> legacy.block_bad() hook.
> 
> Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> ---
>  drivers/mtd/nand/raw/nand_base.c | 3 +++
>  include/linux/mtd/rawnand.h      | 8 ++++++++
>  2 files changed, 11 insertions(+)
> 
> diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
> index f81b54634061..749ef0b40684 100644
> --- a/drivers/mtd/nand/raw/nand_base.c
> +++ b/drivers/mtd/nand/raw/nand_base.c
> @@ -345,6 +345,9 @@ static int nand_block_bad(struct nand_chip *chip, loff_t ofs)
>  
>  static int nand_isbad_bbm(struct nand_chip *chip, loff_t ofs)
>  {
> +	if (chip->options & NAND_NO_BBM_QUIRK)
> +		return 0;
> +
>  	if (chip->legacy.block_bad)
>  		return chip->legacy.block_bad(chip, ofs);
>  
> diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
> index 99f4ac47c8d3..37613dd9e04b 100644
> --- a/include/linux/mtd/rawnand.h
> +++ b/include/linux/mtd/rawnand.h
> @@ -222,6 +222,14 @@ enum nand_ecc_algo {
>   */
>  #define NAND_KEEP_TIMINGS	0x00800000
>  
> +/*
> + * Some controllers with pipelined ECC engines override the BBM marker with
> + * data or ECC bytes, thus making bad block detection through bad block marker
> + * impossible. Let's flag those chips so the core knows it shouldn't check the
> + * BBM and consider all blocks good.
> + */
> +#define NAND_NO_BBM_QUIRK	0

Oops, should be 

#define NAND_NO_BBM_QUIRK	0x08000000

I'll have to rebase it on Miquel's series re-ordering the flag
definitions and using the BIT() macro anyway. But please don't take this
as an excuse for not reviewing this version :P.

> +
>  /* Cell info constants */
>  #define NAND_CI_CHIPNR_MSK	0x03
>  #define NAND_CI_CELLTYPE_MSK	0x0C


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
