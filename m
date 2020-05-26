Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 681091E3337
	for <lists+linux-mtd@lfdr.de>; Wed, 27 May 2020 00:55:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JzZokiBE/5lCjVHOJbS5xVvReI//8ovWp46YBI7a49I=; b=o6/Sr3tOWyFOaY
	qaS3Lr5BB/myptXbaVMLycPWE7OszwKDbdeS9VbiHb2IEQ5ywO9I1Aaf0RL9/0kNvbtD5wOW2B9m3
	cn385Wb96TXZPEM2ubqiGqMeGaViGt8XjodL3FoITnzTUIRxygbc0aIRru420i124Psla4znrHNZ3
	P3TZY6QJ6aJbCe1NvxJG35q86BmGYiNNzlGPf5kL1Pdc/o1/T9g7upgtT/1i1p+sM0eBzfQEO6JHQ
	ZS5YiF0LVPAbL7x3SLaDC3j5ZKt2YUCdLol9RLDyiuoqw2heLghbJ6RHyrOwnlOzqkMDsRI9SoMA6
	Hnzb9HR3OZ+D/Vr7dO9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdiTv-00089B-7a; Tue, 26 May 2020 22:55:35 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdiTk-00088k-6j
 for linux-mtd@lists.infradead.org; Tue, 26 May 2020 22:55:25 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id BA6DB2A083B;
 Tue, 26 May 2020 23:55:22 +0100 (BST)
Date: Wed, 27 May 2020 00:55:18 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [RESEND v5 09/21] mtd: rawnand: Create a new enumeration to
 describe properly ECC types
Message-ID: <20200527005518.2d780ecc@collabora.com>
In-Reply-To: <20200526195633.11543-10-miquel.raynal@bootlin.com>
References: <20200526195633.11543-1-miquel.raynal@bootlin.com>
 <20200526195633.11543-10-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_155524_380815_C797225A 
X-CRM114-Status: GOOD (  18.28  )
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

On Tue, 26 May 2020 21:56:21 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Now that the misleading mix between ECC engine type and OOB placement
> has been addressed, add a new enumeration to properly define ECC types
> (also called provider or mode).

Let's pick a name and stick to it. I think "ECC provider type" or
"ECC engine type" are good names.

> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
> ---
>  drivers/mtd/nand/raw/nand_base.c |  7 +++++++
>  include/linux/mtd/rawnand.h      | 16 ++++++++++++++++
>  2 files changed, 23 insertions(+)
> 
> diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
> index 515cd4681660..5c6ab5b93270 100644
> --- a/drivers/mtd/nand/raw/nand_base.c
> +++ b/drivers/mtd/nand/raw/nand_base.c
> @@ -5018,6 +5018,13 @@ static const char * const nand_ecc_modes[] = {
>  	[NAND_ECC_ON_DIE]	= "on-die",
>  };
>  
> +static const char * const nand_ecc_engine_providers[] = {

I'd rename that one nand_ecc_engine_types or nand_ecc_provider_types.

> +	[NAND_ECC_ENGINE_NONE] = "none",
> +	[NAND_ECC_ENGINE_SOFT] = "soft",
> +	[NAND_ECC_ENGINE_CONTROLLER] = "hw",
> +	[NAND_ECC_ENGINE_ON_DIE] = "on-die",
> +};
> +
>  static const char * const nand_ecc_placement[] = {
>  	[NAND_ECC_PLACEMENT_INTERLEAVED] = "interleaved",
>  };
> diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
> index dc909fb977c7..a2078c5f3d21 100644
> --- a/include/linux/mtd/rawnand.h
> +++ b/include/linux/mtd/rawnand.h
> @@ -92,6 +92,22 @@ enum nand_ecc_mode {
>  	NAND_ECC_ON_DIE,
>  };
>  
> +/**
> + * enum nand_ecc_engine_type - NAND ECC engine type/provider
> + * @NAND_ECC_ENGINE_INVALID: Invalid value
> + * @NAND_ECC_ENGINE_NONE: No ECC correction
> + * @NAND_ECC_ENGINE_SOFT: Software ECC correction
> + * @NAND_ECC_ENGINE_CONTROLLER: Hardware controller ECC correction
> + * @NAND_ECC_ENGINE_ON_DIE: On chip hardware ECC correction
> + */
> +enum nand_ecc_engine_type {

Looks like you went for ecc_engine_type here, so let's stick to that.

> +	NAND_ECC_ENGINE_INVALID,

NAND_ECC_ENGINE_TYPE_xxx

> +	NAND_ECC_ENGINE_NONE,

Do we really need a value for NONE? I'd expect the engine type to be
applicable to NAND that have some sort of ECC engine connected to them.

> +	NAND_ECC_ENGINE_SOFT,
> +	NAND_ECC_ENGINE_CONTROLLER,
> +	NAND_ECC_ENGINE_ON_DIE,
> +};
> +
>  /**
>   * enum nand_ecc_placement - NAND ECC placement
>   * @NAND_ECC_PLACEMENT_FREE: The driver can decide where to put ECC bytes.


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
