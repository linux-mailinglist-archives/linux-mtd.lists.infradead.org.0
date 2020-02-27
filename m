Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE751722E8
	for <lists+linux-mtd@lfdr.de>; Thu, 27 Feb 2020 17:12:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QyjTgSxaOHSRT6bAGACHQFDiSk2CNXd0Qt+HKSopaWc=; b=Yin5HwLbhxVY37
	EMogHhg62/BUFnC+05umKQRaeRUkygQgDZsu4lgru4wPXM6yNfwaNm24ZNqcL+JSzjKkA3S1XK2X3
	qAd7QmFR30upR4ucG9RtyoucOOgbBsRT/GGFgBp4dbqvpp62IZtpx9JG3Vuulpw7NJmYcSwL0NYCz
	z5gc8mYHgwEpRM2PykAjxYCsazGoYvtdLx6+6+/+ZrKfedxqvNVQ0Kemn7fELH3XcClONt8ViAYkg
	iPZFqepltysTRhWn5ccdOEdm9kKXMWuJznD0ZE/GMG07ofwAZcODWhl5ZSkq+dlkZv5D4vZluSjne
	s2M306iR3RKLS1dMON6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Llb-0005zo-U5; Thu, 27 Feb 2020 16:12:03 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7LlS-0005z7-7x
 for linux-mtd@lists.infradead.org; Thu, 27 Feb 2020 16:11:55 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id CEE0C2963C8;
 Thu, 27 Feb 2020 16:11:51 +0000 (GMT)
Date: Thu, 27 Feb 2020 17:11:47 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Pratyush Yadav <p.yadav@ti.com>
Subject: Re: [PATCH v2 01/11] dt-bindings: spi: allow expressing DTR capability
Message-ID: <20200227171147.32cc6fcf@collabora.com>
In-Reply-To: <20200226093703.19765-2-p.yadav@ti.com>
References: <20200226093703.19765-1-p.yadav@ti.com>
 <20200226093703.19765-2-p.yadav@ti.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_081154_416389_DC030B02 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-spi@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, 26 Feb 2020 15:06:53 +0530
Pratyush Yadav <p.yadav@ti.com> wrote:

> Allow spi devices to express DTR receive and transmit capabilities via
> the properties "spi-rx-dtr" and "spi-tx-dtr".

Is the RX/TX granularity really useful?

> 
> Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> ---
>  .../devicetree/bindings/spi/spi-controller.yaml        | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/spi/spi-controller.yaml b/Documentation/devicetree/bindings/spi/spi-controller.yaml
> index 1e0ca6ccf64b..7a84debed213 100644
> --- a/Documentation/devicetree/bindings/spi/spi-controller.yaml
> +++ b/Documentation/devicetree/bindings/spi/spi-controller.yaml
> @@ -120,6 +120,11 @@ patternProperties:
>          description:
>            Delay, in microseconds, after a read transfer.
>  
> +      spi-rx-dtr:
> +        $ref: /schemas/types.yaml#/definitions/flag
> +        description:
> +          Device supports receiving in DTR mode.
> +
>        spi-tx-bus-width:
>          allOf:
>            - $ref: /schemas/types.yaml#/definitions/uint32
> @@ -132,6 +137,11 @@ patternProperties:
>          description:
>            Delay, in microseconds, after a write transfer.
>  
> +      spi-tx-dtr:
> +        $ref: /schemas/types.yaml#/definitions/flag
> +        description:
> +          Device supports transmitting in DTR mode.
> +
>      required:
>        - compatible
>        - reg


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
