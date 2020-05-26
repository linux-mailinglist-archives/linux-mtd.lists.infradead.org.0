Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 281901E337D
	for <lists+linux-mtd@lfdr.de>; Wed, 27 May 2020 01:10:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DxImYsvXla8xtdmEjAKQmP8SjmjG6VAiK+Y2kpJBorY=; b=dGgHpl1dVvQEbm
	bYsThARbJXejpngyS9KIDj0A2qRrx10qkPxDtGFXmWGaKKuNdzNWrNX1SyWrx5EXWg36RSg/pvLah
	4e+dTBx2UeuNrvbO2zNQGXb/AVdLr8AE/5SCaUs/UOkIo6SqSdcO3OhDADzWJ8wY4DX0Cee/7NZDC
	r3yUgtWTlozdi979yhzawMy5W4OjSEZcvyu6IdNZ+ZcU8p4XWZb3pjtwASuwGIJJuE6jtTjWw4VQl
	nst0I3bvfG2oGJ/bk7kp7FRzPH8bYgeuSTgtYARDuHOiLWP8q2Y/k3BB9EVq5+WI9+7KMeesWOcZM
	MhLIVGcmgvHrc4hWlZlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdihw-0007q8-SJ; Tue, 26 May 2020 23:10:05 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdihl-0007pP-Rz
 for linux-mtd@lists.infradead.org; Tue, 26 May 2020 23:09:55 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 8A4802A2D74;
 Wed, 27 May 2020 00:09:52 +0100 (BST)
Date: Wed, 27 May 2020 01:09:48 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [RESEND v5 15/21] dt-bindings: mtd: Deprecate hw_syndrome from
 the ECC modes
Message-ID: <20200527010948.3ff42094@collabora.com>
In-Reply-To: <20200526195633.11543-16-miquel.raynal@bootlin.com>
References: <20200526195633.11543-1-miquel.raynal@bootlin.com>
 <20200526195633.11543-16-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_160954_039016_F9836E93 
X-CRM114-Status: GOOD (  18.05  )
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

On Tue, 26 May 2020 21:56:27 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> This mode should not be used anymore, it is actually a mix between a
> mode and a placement.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  Documentation/devicetree/bindings/mtd/nand-controller.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/mtd/nand-controller.yaml b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
> index 35512f2c66fa..a35ff8227427 100644
> --- a/Documentation/devicetree/bindings/mtd/nand-controller.yaml
> +++ b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
> @@ -49,12 +49,14 @@ patternProperties:
>        nand-ecc-mode:
>          allOf:
>            - $ref: /schemas/types.yaml#/definitions/string
> -          - enum: [ none, soft, hw, hw_syndrome, on-die ]
> +          - enum: [ none, soft, hw, on-die ]
>          description:
>            Desired ECC engine, either hardware (most of the time
>            embedded in the NAND controller) or software correction
>            (Linux will handle the calculations). soft_bch is deprecated
>            and should be replaced by soft and nand-ecc-algo.
> +	  hw_syndrome is deprecated and should be
> +          replaced by hw and nand-ecc-placement.

Well, I'd expect the whole property to be deprecated in favor of
nand-ecc-engine-type.

>  
>        nand-ecc-placement:
>          allOf:


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
