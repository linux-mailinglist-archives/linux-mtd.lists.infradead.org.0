Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B5A1E1466
	for <lists+linux-mtd@lfdr.de>; Mon, 25 May 2020 20:36:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+D7KxdS3Rl1izbRb/wC1wvi2o+uHwJdCFW1j06ljAnA=; b=X+OqtKKN5CBOFh
	vLfNfqiYIsAZMUipMjGroy+pNep9ZKqfN+/iat8CJngBbQmkbla3qjJlCP2HjALyARpJwznJrGxxz
	Wl41YD2qzR45dbGsNBur2WWsbymG81N+tGBIB4fDvC2AcIGsH+zoHiPwN2Z7Ou+3qNqhyZSUm0kth
	lv2ZEWgEl38gMC+GNVmjvOz/K0a5v7FvQvzlzbbR5wPXyJtZ03w4JUN4njaWdD3toGjed3MbSnDv3
	cTzF6oXHaNEimN64alBZ/t4h/HmkZiOo59cC1QW75Jsv957lRqkd+5ds71K5z/uh4aaedpghAY8ct
	oVpuHnSa6LPr8vUIlOlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdHxX-0004RR-Nm; Mon, 25 May 2020 18:36:23 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdHxP-0004R8-ML
 for linux-mtd@lists.infradead.org; Mon, 25 May 2020 18:36:16 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 496EE2A02B5;
 Mon, 25 May 2020 19:36:14 +0100 (BST)
Date: Mon, 25 May 2020 20:36:11 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v4 02/19] mtd: rawnand: Only use u8 instead of uint8_t
 in nand_chip structure
Message-ID: <20200525203611.3e80c52c@collabora.com>
In-Reply-To: <20200525174239.11349-3-miquel.raynal@bootlin.com>
References: <20200525174239.11349-1-miquel.raynal@bootlin.com>
 <20200525174239.11349-3-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_113615_856698_1A51241F 
X-CRM114-Status: GOOD (  15.93  )
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

On Mon, 25 May 2020 19:42:22 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Mechanical change to avoid using old types.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

Same comment as for patch 1: I'd prefer to have the BBT code transition
to  nanddev_bbt_xxx() and re-use the generic layer, but I guess that'll
have to wait.

> ---
>  include/linux/mtd/rawnand.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
> index 8a1e0192f78e..7d62e0e719ac 100644
> --- a/include/linux/mtd/rawnand.h
> +++ b/include/linux/mtd/rawnand.h
> @@ -1141,13 +1141,13 @@ struct nand_chip {
>  	int (*suspend)(struct nand_chip *chip);
>  	void (*resume)(struct nand_chip *chip);
>  
> -	uint8_t *oob_poi;
> +	u8 *oob_poi;
>  	struct nand_controller *controller;
>  
>  	struct nand_ecc_ctrl ecc;
>  	unsigned long buf_align;
>  
> -	uint8_t *bbt;
> +	u8 *bbt;
>  	struct nand_bbt_descr *bbt_td;
>  	struct nand_bbt_descr *bbt_md;
>  


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
