Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C43B31D9DFD
	for <lists+linux-mtd@lfdr.de>; Tue, 19 May 2020 19:37:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VK8YsDGHcWdqQIyJWhgmrVfkU/M2Egr9KejVMbkKoZE=; b=PUcOVv3XMo/eFv
	htE0dekPnRlkdyByZbfLKmusbgmq+hv/zHUGeXRKoSmmzJBKB1XZG5rvH8r3r8WJQ1yvWvmFMWeDl
	SihY2DHR4PshdA8LNdhYhirhjGPx1ZDlaU/RiXOmfNpH9qGl9NsLUaN2DCQ30zOKZPnGgbLWwwYgk
	+PZcgwOaZDK3Sebg5NTL5ZD6qGT5r30RjVuSlJPQLy487IDmmTXD5M/g90plhdK02ATg1K0ehadLz
	Nf2fR+W0S0eY00q/3pI6mtrfRrU+46cQg5RA+ZVe2wgJ4CqUFNlj2ufgOot2qMR+NqANQnsn5gcfV
	drEEjQRwfwWZ6CRS0ZGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb6Aw-0002wq-CN; Tue, 19 May 2020 17:37:10 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb6Ao-0002vl-9n
 for linux-mtd@lists.infradead.org; Tue, 19 May 2020 17:37:03 +0000
Received: by mail-io1-f67.google.com with SMTP id f3so61747ioj.1
 for <linux-mtd@lists.infradead.org>; Tue, 19 May 2020 10:37:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=XTPJr0RoCtcKkiWN8fbDLRyRDQpXZpviGSZLqL/Da5g=;
 b=RhOpzvZsqGZsU42YvljCAs7/UXRvwd5XIK3rlwr+Xxtx2CRkKUmKBCNsvr4ZwRlIyj
 6gHWUeUfy3WQuKFk7APGccmQ32o7pgt2u+ZxpOF+zdgc0c1UvlUvdDSHyWuAfaH+E2p6
 h/ABSIjnPboTwlZm643i9DWsIEV1f/29Q9h1AckUtWvuZpsygp+NVuEXAP3uSHTEsnR9
 ocnrbaS9Z8GcTfzSLpctf8pplJYAVJh7p0m3CCl+oGJ45tKfhF1rQaWwnQdYyWYaxcPs
 eInB4nmq5R5ouT42bWlWhPfiAnF0wyxQSZflFWV3YuQZnY5gm2yIdo1L/iGBNS8w8sBF
 s1+A==
X-Gm-Message-State: AOAM530NSU0VUSOyfBx3A/zN86PfCDGHowXW57wUJ5IihVYR9w56TdG+
 puZlaPmC/B2iVf37wZw7RA==
X-Google-Smtp-Source: ABdhPJwH2K7ECQ4/Q1DUnIHStWxaucXWvfJTMS0U8iF4gW6tfpn8mAiwZOMeQ4V6tSAqwn3rTWkewQ==
X-Received: by 2002:a6b:d219:: with SMTP id q25mr41096iob.202.1589909821031;
 Tue, 19 May 2020 10:37:01 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id h9sm127992ioa.6.2020.05.19.10.36.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 May 2020 10:37:00 -0700 (PDT)
Received: (nullmailer pid 341666 invoked by uid 1000);
 Tue, 19 May 2020 17:36:58 -0000
Date: Tue, 19 May 2020 11:36:58 -0600
From: Rob Herring <robh@kernel.org>
To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: memory: document Renesas RPC-IF
 bindings
Message-ID: <20200519173658.GA340788@bogus>
References: <26faf5e8-26eb-cceb-a500-f0fd64609737@cogentembedded.com>
 <f998fe6c-c586-17cb-9343-30460ce0bf9d@cogentembedded.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f998fe6c-c586-17cb-9343-30460ce0bf9d@cogentembedded.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_103702_341572_61655C22 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, linux-spi@vger.kernel.org,
 Chris Brandt <chris.brandt@renesas.com>, Rob Herring <robh+dt@kernel.org>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Mason Yang <masonccyang@mxic.com.tw>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, 18 May 2020 23:33:15 +0300, Sergei Shtylyov wrote:
> Renesas Reduced Pin Count Interface (RPC-IF) allows a SPI flash or
> HyperFlash connected to the SoC to be accessed via the external address
> space read mode or the manual mode.
> 
> Document the device tree bindings for the Renesas RPC-IF found in the R-Car
> gen3 SoCs.
> 
> Based on the original patch by Mason Yang <masonccyang@mxic.com.tw>.
> 
> Signed-off-by: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
> 
> ---
> Changes in version 3:
> - fixed up the whitespace and added hyphens in the "compatible" prop text, also
>   removed the comments;
> - specified the subnode name as "flash", and used "enum" in the subnode text;
> - fixed up the SPDX-License-Identifier: tag.
> 
> Changes in version 2:
> - rewrote the bindings in YAML.
> 
>  Documentation/devicetree/bindings/memory-controllers/renesas,rpc-if.yaml |   88 ++++++++++
>  1 file changed, 88 insertions(+)
> 


My bot found errors running 'make dt_binding_check' on your patch:

/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/renesas,rpc-if.yaml: patternProperties:flash@[0-9a-f]+$:properties:compatible: [{'enum': ['cfi-flash', 'jedec,spi-nor']}] is not of type 'object', 'boolean'
Documentation/devicetree/bindings/Makefile:12: recipe for target 'Documentation/devicetree/bindings/memory-controllers/renesas,rpc-if.example.dts' failed
make[1]: *** [Documentation/devicetree/bindings/memory-controllers/renesas,rpc-if.example.dts] Error 1
make[1]: *** Waiting for unfinished jobs....
Makefile:1300: recipe for target 'dt_binding_check' failed
make: *** [dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1292811

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
