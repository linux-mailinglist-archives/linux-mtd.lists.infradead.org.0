Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CB6C1E337F
	for <lists+linux-mtd@lfdr.de>; Wed, 27 May 2020 01:10:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EjS5WPPQHURN8Yf0nm/U+UDle9QASLgGbdqBxdZDdbs=; b=RKsF+T/bbw63Cq
	KpzgeYz5yNlPi8+7s4pSq9vTQ0GosfkmW/zw+MrD3GZwuw6lXPEpTo+oLowFxa8S5tu7f5jpNFbpL
	LGssMQIKKh20n0vjirIMq++uwN0ZSvFzqTvsdQMgscL6zwJyQgcMvKp6gLMom0waTzRDhTInEgeq2
	I2RdpwmVr4PwoScw1d21FGURo7jn+9qTlzu3w7aVpVd+bVV9JW5sFxyzNT+BOs8rnfaILcmsDDc76
	4dXLTtTVPZvUAdjlZZeeS4rO6LcdlpYQJ7llI/hypn3wbQ7NdXoaZEjQ46Hu08nca9wht2eG4k0PT
	70yS6nXZqY5OvAgcMVLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdiig-00025l-VV; Tue, 26 May 2020 23:10:50 +0000
Received: from mail-il1-f194.google.com ([209.85.166.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdiiV-00025R-CS
 for linux-mtd@lists.infradead.org; Tue, 26 May 2020 23:10:40 +0000
Received: by mail-il1-f194.google.com with SMTP id v11so4844756ilh.1
 for <linux-mtd@lists.infradead.org>; Tue, 26 May 2020 16:10:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=HUD3rjABkK3M27L+kA+MnFzFlbgVQzxxYdxT/UpzDIs=;
 b=rAZQTTWRxg5g45Y9u9MMoPIOM2+Hl1ABJQu5XAX6fikBKO05c0UsTipiZggTzrr4Zl
 qvxiRVQ0rP0a1q1mEzL99nFu2QjaZnppWh62tJqQLk6OC6qWYXKbcx8b1wm11rgtL3nU
 zK6V2m8CafQL05dMnw3zstFsQf2XvbRha4iv4YvKCbFYkOl3DTvsvz+KXWP692UgDa6X
 ADZ2+bhJ2PEzt146jS1giJ/4awX7jmJyj11RPwHVAiBxUxS80TlwVhBsep04vfWaPjn3
 ylp/TemOmpmjhCcvFuBekYoGtaYN5ApCofhMPkAmDtijddMEvuahJzuISMYdMciaatfS
 HcYg==
X-Gm-Message-State: AOAM530dbMXxMmtShUE6h76Z9HLcEjvu7Gd0jE9fPF0DGR9mCe1QCceB
 fY9V84kEZyrp+FPXE85z+Q==
X-Google-Smtp-Source: ABdhPJzl6/femhNIHHcB6mqYv4S6Wy0fd7JX2rGbnyjPMraH4XkZEhvB4z3x9VNEOcYtda/eoLMnIA==
X-Received: by 2002:a92:5b99:: with SMTP id c25mr1401204ilg.42.1590534638721; 
 Tue, 26 May 2020 16:10:38 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id j90sm698788ilg.70.2020.05.26.16.10.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 16:10:38 -0700 (PDT)
Received: (nullmailer pid 569321 invoked by uid 1000);
 Tue, 26 May 2020 23:10:37 -0000
Date: Tue, 26 May 2020 17:10:37 -0600
From: Rob Herring <robh@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [RESEND v5 14/21] dt-bindings: mtd: Add the nand-ecc-placement
 property
Message-ID: <20200526231037.GA568048@bogus>
References: <20200526195633.11543-1-miquel.raynal@bootlin.com>
 <20200526195633.11543-15-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200526195633.11543-15-miquel.raynal@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_161039_420955_B9E91924 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.194 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Rob Herring <robh+dt@kernel.org>,
 linux-mtd@lists.infradead.org, Boris Brezillon <boris.brezillon@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 26 May 2020 21:56:26 +0200, Miquel Raynal wrote:
> Placement is where the ECC bytes are expected.
> No value means the controller can do whatever it desires (default is
> to put ECC bytes at the end of the OOB area). Alternative placement is
> "interleaved" (also sometimes referred as "syndrome") where data and
> OOB are mixed.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../devicetree/bindings/mtd/nand-controller.yaml       | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 


My bot found errors running 'make dt_binding_check' on your patch:

Documentation/devicetree/bindings/mtd/nand-controller.yaml:  while scanning a plain scalar
  in "<unicode string>", line 64, column 11
found a tab character that violates indentation
  in "<unicode string>", line 65, column 1
Documentation/devicetree/bindings/Makefile:12: recipe for target 'Documentation/devicetree/bindings/mtd/nand-controller.example.dts' failed
make[1]: *** [Documentation/devicetree/bindings/mtd/nand-controller.example.dts] Error 1
make[1]: *** Waiting for unfinished jobs....
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/nand-controller.yaml: ignoring, error parsing file
warning: no schema found in file: ./Documentation/devicetree/bindings/mtd/nand-controller.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/nand-controller.yaml: ignoring, error parsing file
warning: no schema found in file: ./Documentation/devicetree/bindings/mtd/nand-controller.yaml
Makefile:1300: recipe for target 'dt_binding_check' failed
make: *** [dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1298408

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
