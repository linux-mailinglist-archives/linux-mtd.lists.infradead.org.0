Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F9FA1E5F7A
	for <lists+linux-mtd@lfdr.de>; Thu, 28 May 2020 14:02:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UyiRouE+cKLQ0Ysp40ZVRHjscmNq/SJAIY1QD/xlk/Y=; b=JyM1/LxqtXTpL5
	yv+3wTbNjRX0NbT/sMpFkYDZ5f2wdi3YYd4H7hih32dPCr2zstbPY3ruSJ5p5gwv2+tj1Mgs0r/Rd
	haEO1JN1mB8bxOqyBRPhoU2kS8MpW+FMkBLKQwK1ulaQ3RAOi4g9yGrJpwdgxCcbYkoKA6nUItYA8
	rKt5xlzSKd2YW5L2BUFcEjtAOX2max3n+LzeelISsR5QxJZZ0IpDXWo0+jioy9UfnWYnDq+4QKWnj
	3olNz8kAE6ZUIqL97GBAY8zNAndYJ1cTLITOpEPGTGS3BjlDTVsZGCLsc6ZTikWa8Uy62QFQX+Xhj
	DQqYiUXYpag/WGYWkjrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeHF4-0007s7-Jx; Thu, 28 May 2020 12:02:34 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeHEc-0007kR-Tb; Thu, 28 May 2020 12:02:08 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 7CCDD2A2E1C;
 Thu, 28 May 2020 13:02:04 +0100 (BST)
Date: Thu, 28 May 2020 14:02:01 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v6 01/18] dt-bindings: mtd: Document nand-ecc-placement
Message-ID: <20200528140201.33b7a08e@collabora.com>
In-Reply-To: <20200528113113.9166-2-miquel.raynal@bootlin.com>
References: <20200528113113.9166-1-miquel.raynal@bootlin.com>
 <20200528113113.9166-2-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_050207_083418_587FDF8C 
X-CRM114-Status: GOOD (  17.37  )
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
 Tudor Ambarus <Tudor.Ambarus@microchip.com>, Julien Su <juliensu@mxic.com.tw>,
 Richard Weinberger <richard@nod.at>, Weijie Gao <weijie.gao@mediatek.com>,
 Paul Cercueil <paul@crapouillou.net>, Rob Herring <robh+dt@kernel.org>,
 linux-mtd@lists.infradead.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, Chuanhong Guo <gch981213@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, 28 May 2020 13:30:56 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> This optional property defines where the ECC bytes are expected to be
> stored. No value defaults to an unknown location, while these
> locations can be explicitly set to OOB or interleaved depending if
> the ECC bytes are entirely stored in the OOB area or mixed with
> regular data in the main area (also sometimes referred as
> "syndrome").
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
>  .../devicetree/bindings/mtd/nand-controller.yaml       | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mtd/nand-controller.yaml b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
> index d261b7096c69..4a0798247d2d 100644
> --- a/Documentation/devicetree/bindings/mtd/nand-controller.yaml
> +++ b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
> @@ -56,6 +56,16 @@ patternProperties:
>            (Linux will handle the calculations). soft_bch is deprecated
>            and should be replaced by soft and nand-ecc-algo.
>  
> +      nand-ecc-placement:
> +        allOf:
> +          - $ref: /schemas/types.yaml#/definitions/string
> +          - enum: [ oob, interleaved ]
> +        description:
> +          Location of the ECC bytes. This location is unknown by default
> +          but can be explicitly set to "oob", if all ECC bytes are
> +          known to be stored in the OOB area, or "interleaved" if ECC
> +          bytes will be interleaved with regular data in the main area.
> +
>        nand-ecc-algo:
>          allOf:
>            - $ref: /schemas/types.yaml#/definitions/string


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
