Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B79541E3387
	for <lists+linux-mtd@lfdr.de>; Wed, 27 May 2020 01:12:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+NUv1tsxiuf1n4hOh8tuxWlH7dungHqHNX0ehHSTr/c=; b=TmGKU0pe5NM2lj
	fvbSC4uAwrYLfTcfHNjRGBKjzSy7oTPDXmTmTAEZdPtRaiLYYKLM7/vYaID8yTaxNu+nGralVNs3i
	SkqfChLLlBS93FN7Or3f0Q6MXH0hqgip8GXWJ+FdY0d/WK5gvSj3Sojg4fzN5jb13r34XDBxAK+Y6
	pXE871mRl8rA2wHBVas1yGx525tUnbEyekWY2CyIAWwn5pWWYWxpBqs0vTzzmUyOgIi8T/Eli0Oqd
	e9h7BlAFVPRHeomPLOJ4dlubLu9vnB1DBG4SACy8zr6jR34PkvXNnTLj3aoce3YBtfFYWpRKHrk06
	8lGPQygtFDBWA4qtszlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdikM-0002S3-Uv; Tue, 26 May 2020 23:12:34 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdikE-0002RO-Rl
 for linux-mtd@lists.infradead.org; Tue, 26 May 2020 23:12:28 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id C11952A0FD0;
 Wed, 27 May 2020 00:12:21 +0100 (BST)
Date: Wed, 27 May 2020 01:12:18 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [RESEND v5 16/21] dt-bindings: mtd: Deprecate the nand-ecc-mode
 property
Message-ID: <20200527011218.3e7a6269@collabora.com>
In-Reply-To: <20200526195633.11543-17-miquel.raynal@bootlin.com>
References: <20200526195633.11543-1-miquel.raynal@bootlin.com>
 <20200526195633.11543-17-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_161227_032440_D7102360 
X-CRM114-Status: GOOD (  21.58  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Rob Herring <robh+dt@kernel.org>,
 linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 26 May 2020 21:56:28 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> This property does not describe very well its purpose: it describes
> the ECC engine type, also called provider. Deprecate it in favor of
> nand-ecc-provider. In the mean time, update a bit the description of
> the property to make it more accurate.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../devicetree/bindings/mtd/nand-controller.yaml  | 15 ++++++++-------
>  1 file changed, 8 insertions(+), 7 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mtd/nand-controller.yaml b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
> index a35ff8227427..256080ba50bd 100644
> --- a/Documentation/devicetree/bindings/mtd/nand-controller.yaml
> +++ b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
> @@ -46,16 +46,17 @@ patternProperties:
>          description:
>            Contains the native Ready/Busy IDs.
>  
> -      nand-ecc-mode:
> +      nand-ecc-provider:
>          allOf:
>            - $ref: /schemas/types.yaml#/definitions/string
>            - enum: [ none, soft, hw, on-die ]

				   ^"on-controller" ?

>          description:
> -          Desired ECC engine, either hardware (most of the time
> -          embedded in the NAND controller) or software correction
> -          (Linux will handle the calculations). soft_bch is deprecated
> -          and should be replaced by soft and nand-ecc-algo.
> -	  hw_syndrome is deprecated and should be
> +          Desired ECC engine provider, either hardware (most of the time

	     ^Preferred ECC engine type, ... 

> +          embedded in the NAND controller, but can also be external) or
> +          software correction (the OS will handle the calculations).
> +          The nand-ecc-mode property is deprecated in favor of this one.
> +          soft_bch is deprecated and should be replaced by soft and
> +          nand-ecc-algo. hw_syndrome is deprecated and should be
>            replaced by hw and nand-ecc-placement.

Which you do here, so patch 15 is not needed.

>  
>        nand-ecc-placement:
> @@ -148,7 +149,7 @@ examples:
>  
>        nand@0 {
>          reg = <0>;
> -        nand-ecc-mode = "soft";
> +        nand-ecc-provider = "soft";
>          nand-ecc-algo = "bch";
>  
>          /* controller specific properties */


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
