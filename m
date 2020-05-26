Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F91C1E32C6
	for <lists+linux-mtd@lfdr.de>; Wed, 27 May 2020 00:39:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ULjn6z6Qj982XHDdHqKqVGdEJNcKCdwWieRYXzcXAk=; b=kt+7zCgKIGYokI
	alYqENgetuhGbCvVwhsWSZWiQ9aBLHNQ/WfsZk5vLab+GjkGslgueilt0tFZL7yvPSPld5Y5CcOAw
	T0sdtiipLQoI1bkFxMALlRnQd1CK3Q9drgKUNpH7X8QVvH8kneipZXbdKaT2p92WQ8gvJdJJxix8e
	vA2FKn8FOWh/tl2YyipZU4iLbd5ysdCFKzAray3psmKSO/rIkJ0YpVVrQJHSjAqumsdBwNRrGS9y+
	oP/1qV2OWb1i43TEFTXb1qmW+RMl4GlYw7l1SEw5jvtqlOWta7CUJb21IT1MpzJ8olIyOLl+D6Pzm
	IMSFMVpQqMYoJ+A9powg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdiE9-0002vZ-7w; Tue, 26 May 2020 22:39:17 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdiE2-0002tW-JV
 for linux-mtd@lists.infradead.org; Tue, 26 May 2020 22:39:11 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 2D5ED2A35F8;
 Tue, 26 May 2020 23:39:07 +0100 (BST)
Date: Wed, 27 May 2020 00:39:04 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [RESEND v5 07/21] mtd: rawnand: Create a new enumeration to
 describe OOB placement
Message-ID: <20200527003904.362e59e4@collabora.com>
In-Reply-To: <20200526195633.11543-8-miquel.raynal@bootlin.com>
References: <20200526195633.11543-1-miquel.raynal@bootlin.com>
 <20200526195633.11543-8-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_153910_773051_7B24AFF1 
X-CRM114-Status: GOOD (  19.87  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Rob Herring <robh+dt@kernel.org>,
 linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 26 May 2020 21:56:19 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> There is currently a confusion between the ECC type/mode/provider
> (eg. hardware, software, on-die or none) and the ECC bytes placement.
> 
> Create a new enumeration to describe this placement.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
> ---
>  drivers/mtd/nand/raw/nand_base.c |  4 ++++
>  include/linux/mtd/rawnand.h      | 12 ++++++++++++
>  2 files changed, 16 insertions(+)
> 
> diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
> index ef70ca0828c3..a4470a19c805 100644
> --- a/drivers/mtd/nand/raw/nand_base.c
> +++ b/drivers/mtd/nand/raw/nand_base.c
> @@ -5018,6 +5018,10 @@ static const char * const nand_ecc_modes[] = {
>  	[NAND_ECC_ON_DIE]	= "on-die",
>  };
>  
> +static const char * const nand_ecc_placement[] = {
> +	[NAND_ECC_PLACEMENT_INTERLEAVED] = "interleaved",
> +};
> +
>  static int of_get_nand_ecc_mode(struct device_node *np)
>  {
>  	const char *pm;
> diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
> index 8187056dd3a0..6eb4d91b07eb 100644
> --- a/include/linux/mtd/rawnand.h
> +++ b/include/linux/mtd/rawnand.h
> @@ -92,6 +92,18 @@ enum nand_ecc_mode {
>  	NAND_ECC_ON_DIE,
>  };
>  
> +/**
> + * enum nand_ecc_placement - NAND ECC placement
> + * @NAND_ECC_PLACEMENT_FREE: The driver can decide where to put ECC bytes.

Can we name that one UNDEFINED instead of FREE, and it's not really the
driver that decides (unless you have a choice or use SW ECC), more the ECC
engine itself.

> + *                           Default behavior is to put them at the end of the
> + *                           OOB area.

I wouldn't even define a default behavior here, but instead add a value for
OOB/TAIL placement.

> + * @NAND_ECC_PLACEMENT_INTERLEAVED: Syndrome layout: interleave data and OOB.


									     ^ECC bytes

> + */
> +enum nand_ecc_placement {
> +	NAND_ECC_PLACEMENT_FREE,
> +	NAND_ECC_PLACEMENT_INTERLEAVED,
> +};
> +
>  enum nand_ecc_algo {
>  	NAND_ECC_UNKNOWN,
>  	NAND_ECC_HAMMING,


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
