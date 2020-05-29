Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5EDC1E87DA
	for <lists+linux-mtd@lfdr.de>; Fri, 29 May 2020 21:31:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Khzhkl4uazyepyewwIrwjm0idUSG5j79grsbd29CgJM=; b=IafX8PMfe3LRIN
	xraBuy9UuZC6sJvp/ZiahVQEUhha0xrJeUwXxbyopXtjQn1ZrXogU4J9jR9QLHbRztoa9ub6Lp7aN
	bYXQQCaNn6iUVMHqWu7QCNoC63TMQ/rkEmihkxhRAZcghFIWfW8p+Xx24LuMNR9HqdxnMjPpQuMWH
	hR+XCybK6jJkp/QmeZNhDV+Qc+rYMpT+1ooAo+BtOlJI14Ox7kOlK8rtn1pGhV6PrAdvaJquEAEcb
	isnqmstfDWEyxnRnoVpI9ToXbW3nF6clBWedL+EU4CSslGzbUsq0hE89ZEosz4SACVrKqWm0fRW3Q
	vUw1BwCvZeyIHQj6Gyuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jekjD-00056T-KQ; Fri, 29 May 2020 19:31:39 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jekj7-00055j-Gl
 for linux-mtd@lists.infradead.org; Fri, 29 May 2020 19:31:35 +0000
Received: by mail-io1-f67.google.com with SMTP id h10so542791iob.10
 for <linux-mtd@lists.infradead.org>; Fri, 29 May 2020 12:31:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=snjj37/YdMHAZOpkk9/RRV5o12QUCoSQOMCE8M28IQg=;
 b=T1WrgFoUIjsvVVTUh2T6fpKHFz342RQq+7x+WynnTSq3IB81pe6lWJRgG46cs/GwYj
 Vbs1BAHeEtuzczswD60d00JmzyeGlmwDfBpviWYWWsZEYamVTNc3Jxf0OlErv+/g6jhd
 4oQ5nEC+ADxh8PuNaY+l086JHsKQ/lNFzyt3irSdXLXYDXs+mnTC0kD9Fw2W9rY0aYsc
 D+dHVFJwD+/4aiIJg9DfIe+A5TtRiWtx0SG5/GZiIoBvqmxgE+MAQvYg/4YX3ZXHjHaP
 CnqYK7CCasvP+S2RXDCpLYZJzCxxRKcjHxKJeHxjZcnGQe0kLR9Jrt+x7+wiuFC269dU
 g8KA==
X-Gm-Message-State: AOAM533efw6g7+89KEbsOn7TT3RaTQemsifr+Zb2AfPsuyREPFzebdFi
 An50iPXIjhnzA1K8d1PKFg==
X-Google-Smtp-Source: ABdhPJzwB9AW1q+9HkoCpzsKv8lCmKg8zrgaxgbznjc6r+aKG0ZlZeZpl3AdnKYyasYzPUNG7F9l8w==
X-Received: by 2002:a02:c802:: with SMTP id p2mr8840537jao.111.1590780692506; 
 Fri, 29 May 2020 12:31:32 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id x22sm5300039ill.9.2020.05.29.12.31.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 12:31:31 -0700 (PDT)
Received: (nullmailer pid 2806583 invoked by uid 1000);
 Fri, 29 May 2020 19:31:30 -0000
Date: Fri, 29 May 2020 13:31:30 -0600
From: Rob Herring <robh@kernel.org>
To: "Ramuthevar,
 Vadivel MuruganX" <vadivel.muruganx.ramuthevar@linux.intel.com>
Subject: Re: [PATCH v10 1/2] dt-bindings: mtd: Add Nand Flash Controller
 support for Intel LGM SoC
Message-ID: <20200529193130.GA2805164@bogus>
References: <20200528153929.46859-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200528153929.46859-2-vadivel.muruganx.ramuthevar@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200528153929.46859-2-vadivel.muruganx.ramuthevar@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_123133_555101_8CD877FD 
X-CRM114-Status: GOOD (  14.14  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: cheol.yong.kim@intel.com, devicetree@vger.kernel.org, qi-ming.wu@intel.com,
 anders.roxell@linaro.org, vigneshr@ti.com, arnd@arndb.de,
 hauke.mehrtens@intel.com, richard@nod.at, brendanhiggins@google.com,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 boris.brezillon@collabora.com, linux-mtd@lists.infradead.org,
 miquel.raynal@bootlin.com, tglx@linutronix.de, masonccyang@mxic.com.tw,
 andriy.shevchenko@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, May 28, 2020 at 11:39:28PM +0800, Ramuthevar,Vadivel MuruganX wrote:
> From: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
> 
> Add YAML file for dt-bindings to support NAND Flash Controller
> on Intel's Lightning Mountain SoC.
> 
> Signed-off-by: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
> ---
>  .../devicetree/bindings/mtd/intel,lgm-nand.yaml    | 93 ++++++++++++++++++++++
>  1 file changed, 93 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mtd/intel,lgm-nand.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mtd/intel,lgm-nand.yaml b/Documentation/devicetree/bindings/mtd/intel,lgm-nand.yaml
> new file mode 100644
> index 000000000000..afecc9920e04
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mtd/intel,lgm-nand.yaml
> @@ -0,0 +1,93 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mtd/intel,lgm-nand.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Intel LGM SoC NAND Controller Device Tree Bindings
> +
> +allOf:
> +  - $ref: "nand-controller.yaml"
> +
> +maintainers:
> +  - Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
> +
> +properties:
> +  compatible:
> +    const: intel,lgm-nand-controller

Doesn't match the example.

> +
> +  reg:
> +    maxItems: 6
> +
> +  reg-names:
> +    items:
> +       - const: ebunand
> +       - const: hsnand
> +       - const: nand_cs0
> +       - const: nand_cs1
> +       - const: addr_sel0
> +       - const: addr_sel1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  dmas:
> +    maxItems: 2
> +
> +  dma-names:
> +    items:
> +      - const: tx
> +      - const: rx
> +
> +patternProperties:
> +  "^nand@[a-f0-9]+$":
> +    type: object
> +    properties:
> +      reg:
> +        minimum: 0
> +        maximum: 7
> +
> +      nand-ecc-mode: true
> +
> +      nand-ecc-algo:
> +        const: hw
> +
> +    additionalProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - clocks
> +  - dmas
> +  - dma-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    nand-controller@e0f00000 {
> +      compatible = "intel,lgm-nand";
> +      reg = <0xe0f00000 0x100>,
> +            <0xe1000000 0x300>,
> +            <0xe1400000 0x8000>,
> +            <0xe1c00000 0x1000>,
> +            <0x17400000 0x4>,
> +            <0x17c00000 0x4>;
> +      reg-names = "ebunand", "hsnand", "nand_cs0", "nand_cs1",
> +        "addr_sel0", "addr_sel1";
> +      clocks = <&cgu0 125>;
> +      dmas = <&dma0 8>, <&dma0 9>;
> +      dma-names = "tx", "rx";
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +
> +      nand@0 {
> +        reg = <0>;
> +        nand-on-flash-bbt;
> +        #address-cells = <1>;
> +        #size-cells = <1>;
> +      };
> +    };
> +
> +...
> -- 
> 2.11.0
> 

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
