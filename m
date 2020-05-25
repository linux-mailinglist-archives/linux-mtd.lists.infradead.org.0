Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 463D31E14B6
	for <lists+linux-mtd@lfdr.de>; Mon, 25 May 2020 21:18:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VWRUDe3px6ROHp0f87W+eyvFbJVotvJaaNudmW8WkJ4=; b=iXdVuh3dHebxeY
	9FoD+OC9RcCC7dxNlZo9wefIkRiZk0avi8pt2H4wj0fH+oKL+BTJVKGLlc18ZFCwO/1AKZ6/kZcaY
	Jng/yKU7G5jBBrrGC09oY/+PIjcXWid0JtA01RVNMWq5kzw+UUp+t5Jx7A8qfzc3/BOSOZzbKXUdO
	4nR8ANIU7tuu3cFVJT63uhQVv3gAp9OErGv3UtdqAMBekKNPVj4IYO10N2cmTpmSu3LkqleG+G3I9
	m6pSiB/zTWui7y8/wuj4tyHDiPyhcuYpmYkbL2wJfotFPl44zwWORXpHUHcspab+UhOVyY7rCyS6u
	IBHOcDOlxv2hEt92do0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdIcK-0004wj-PJ; Mon, 25 May 2020 19:18:32 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdIcD-0004wN-7y
 for linux-mtd@lists.infradead.org; Mon, 25 May 2020 19:18:26 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id E496E2A1150;
 Mon, 25 May 2020 20:18:23 +0100 (BST)
Date: Mon, 25 May 2020 21:18:20 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v4 13/19] mtd: rawnand: timings: Update
 onfi_fill_data_interface() kernel doc
Message-ID: <20200525211820.55ee8156@collabora.com>
In-Reply-To: <20200525174239.11349-14-miquel.raynal@bootlin.com>
References: <20200525174239.11349-1-miquel.raynal@bootlin.com>
 <20200525174239.11349-14-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_121825_410793_46699120 
X-CRM114-Status: GOOD (  15.21  )
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
Cc: Rickard Andersson <rickaran@axis.com>, Richard Weinberger <richard@nod.at>,
 linux-mtd@lists.infradead.org, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, 25 May 2020 19:42:33 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Describe all parameters and drop the legacy [NAND Interface] prefix.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
>  drivers/mtd/nand/raw/nand_timings.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/mtd/nand/raw/nand_timings.c b/drivers/mtd/nand/raw/nand_timings.c
> index 36d21be3dfe5..a73d934e86f9 100644
> --- a/drivers/mtd/nand/raw/nand_timings.c
> +++ b/drivers/mtd/nand/raw/nand_timings.c
> @@ -274,9 +274,10 @@ static const struct nand_data_interface onfi_sdr_timings[] = {
>  };
>  
>  /**
> - * onfi_fill_data_interface - [NAND Interface] Initialize a data interface from
> - * given ONFI mode
> - * @mode: The ONFI timing mode
> + * onfi_fill_data_interface - Initialize a data interface from a given ONFI mode
> + * @chip: The NAND chip
> + * @type: The data interface type
> + * @timing_mode: The ONFI timing mode
>   */
>  int onfi_fill_data_interface(struct nand_chip *chip,
>  			     enum nand_data_interface_type type,


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
