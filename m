Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C641E3372
	for <lists+linux-mtd@lfdr.de>; Wed, 27 May 2020 01:08:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8x68ns0a3u7DLt8mg5AHFMpzRQYRnoa/OagjTof7SZw=; b=rnqrNj/7BbwWt7
	DuHBNdfTqyg3fvw86rtvFZveuoa6XaUowgIcc7zlUjCCV8cp5ceKWHGvSIXD/iNgB9Ie9aFduG0m6
	elKipm5yjQrib6xvyW6Jg6aF7paxHcx5kW3rogfRp5XQnSbhOg8EaW/FDRfzwWZONwCGjXFowuxFR
	d85BSEK9etYC3LE9V+r3Aud63ei30XY+GuwbHWp4GkYFpr57h2UiqK1zFQoULD/8Q4jxOKD0Gfqdu
	m2AdgqIr9nvpi/+fS8wdjKcWQkHgPjW8OvYcump5vaEgHsz8W9p3LCn60aKXpBnPjwWo/bjSsUVUP
	HfcAMYNGVKptXfA9yTfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdigK-0007RG-Pn; Tue, 26 May 2020 23:08:24 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdigD-0007Q7-JV
 for linux-mtd@lists.infradead.org; Tue, 26 May 2020 23:08:19 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 36AA42A2D77;
 Wed, 27 May 2020 00:08:16 +0100 (BST)
Date: Wed, 27 May 2020 01:08:11 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [RESEND v5 14/21] dt-bindings: mtd: Add the nand-ecc-placement
 property
Message-ID: <20200527010811.5c080310@collabora.com>
In-Reply-To: <20200526195633.11543-15-miquel.raynal@bootlin.com>
References: <20200526195633.11543-1-miquel.raynal@bootlin.com>
 <20200526195633.11543-15-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_160817_903724_CC114EAE 
X-CRM114-Status: GOOD (  18.66  )
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

On Tue, 26 May 2020 21:56:26 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Placement is where the ECC bytes are expected.
> No value means the controller can do whatever it desires (default is
> to put ECC bytes at the end of the OOB area). Alternative placement is
> "interleaved" (also sometimes referred as "syndrome") where data and
> OOB are mixed.

Hm, unless you can figure out what all controllers use, I'd suggest to
have the default mean "undefined", as in "controller put the ECC bytes
somewhere, but we don't where that is". Then let the explicit values be
"oob" or "interleaved".

> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../devicetree/bindings/mtd/nand-controller.yaml       | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mtd/nand-controller.yaml b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
> index d529f8587ba6..35512f2c66fa 100644
> --- a/Documentation/devicetree/bindings/mtd/nand-controller.yaml
> +++ b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
> @@ -56,6 +56,16 @@ patternProperties:
>            (Linux will handle the calculations). soft_bch is deprecated
>            and should be replaced by soft and nand-ecc-algo.
>  
> +      nand-ecc-placement:
> +        allOf:
> +          - $ref: /schemas/types.yaml#/definitions/string
> +          - enum: [ free, interleaved ]
> +        description:
> +          Location for the ECC bytes. Free is the default and means the
> +	  controller in charge is free to put them where it wants.
> +	  Default state is to put ECC bytes at the end of the OOB area.
> +	  Otherwise, ECC bytes may be interleaved with data.
> +
>        nand-ecc-algo:
>          allOf:
>            - $ref: /schemas/types.yaml#/definitions/string


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
