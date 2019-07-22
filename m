Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B669370D94
	for <lists+linux-mtd@lfdr.de>; Tue, 23 Jul 2019 01:46:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hodiHt5e+ArcP+xn+er79yHEoybulwvcKHhNQQCpfLA=; b=Sac84BO7PF6nVt
	b8UFc4q8y8gQMaeveDkWAUreEzJujY7JttXBg7VtJUETKmx12wPDJnPGLD3nt2MaxDQkR6jF99z2o
	xjsRJNR/9b3HT4dqHFdFbbNRq6jqZIgh9iZg36wTsL4TJgoMdI/iPOltfO2BB/PXyiobE7UTmyVPI
	FAHrPJYmkEGSsYxaz36eJv3VLR9kh7WCq8yqZpHhSBk8cIPI5rVS4oYWpBGFqRLnTsRhZ7pBEOyG2
	4xVmGgraBTrb6BijKbBV46Kp8RGgQGZqerX/mdCo/3P6zBaT2/ODEU1/f2LdSuVcwXaMER5JY/USM
	oJ4sfDpHpR5P/K2lnVmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpi0t-00046p-Vg; Mon, 22 Jul 2019 23:46:40 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpi0W-00046F-Ng
 for linux-mtd@lists.infradead.org; Mon, 22 Jul 2019 23:46:18 +0000
Received: by mail-io1-f68.google.com with SMTP id g20so77864583ioc.12
 for <linux-mtd@lists.infradead.org>; Mon, 22 Jul 2019 16:46:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Sv3qs1LiG1cFkAf5nI2IFon5jGR413J80KduD7S3roU=;
 b=n9zZTJuWGRx9qtkI7d45T1QaUzpXgyRS5adOYB4ETuSY4+OPsAWHd5pk1yILEXdhYh
 +H3hT2k9hIpo2gz1ogSasvPnI9kkkuZLoP1HjPaVaOpDUCF65804UZRpQwLFfiJAt/GA
 Hc+hJl6HBeP+ol7ThPtN5ZJxr59zqId4AOwRe48A822GkgXZ4rIiSSPQX5LtZEJt65Ke
 q/qNUGUfsJmBD+iguyR4nLPlcxHBj/RSdK04CSXGW8v5J91hQMs0DUDe6Reg0xHZovwW
 ydR41jJqpGGA2arBpwwe/H2z48fGGLHX9dvcQGjmWkK+6Ic+61DpjYlqE+QAtLbIy046
 bTFQ==
X-Gm-Message-State: APjAAAX0BkYClb6kU6dvtzFTPme6p3a+2fGaAq6VKMT7Lw0bWJnB3Ukw
 uDNF5tIfQ+8vrieyczzhxg==
X-Google-Smtp-Source: APXvYqw1qg7734Vxs9hak2lfaWjc22w1+joRV0CBw3JzSvesU72Jp8TsxdwSaK3mf2yQyW8xrm3tVA==
X-Received: by 2002:a02:7303:: with SMTP id y3mr74340417jab.97.1563839175981; 
 Mon, 22 Jul 2019 16:46:15 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id m20sm39702147ioh.4.2019.07.22.16.46.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 16:46:15 -0700 (PDT)
Date: Mon, 22 Jul 2019 17:46:14 -0600
From: Rob Herring <robh@kernel.org>
To: Mason Yang <masonccyang@mxic.com.tw>
Subject: Re: [PATCH v5 2/2] dt-bindings: mtd: Document Macronix raw NAND
 controller bindings
Message-ID: <20190722234614.GA11971@bogus>
References: <1562138144-2212-1-git-send-email-masonccyang@mxic.com.tw>
 <1562138144-2212-3-git-send-email-masonccyang@mxic.com.tw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1562138144-2212-3-git-send-email-masonccyang@mxic.com.tw>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_164616_782861_9FAC7DE5 
X-CRM114-Status: GOOD (  14.79  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, anders.roxell@linaro.org,
 vigneshr@ti.com, bbrezillon@kernel.org, juliensu@mxic.com.tw, richard@nod.at,
 linux-kernel@vger.kernel.org, stefan@agner.ch, paul@crapouillou.net,
 marek.vasut@gmail.com, paul.burton@mips.com, liang.yang@amlogic.com,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 christophe.kerello@st.com, lee.jones@linaro.org, computersforpeace@gmail.com,
 dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, Jul 03, 2019 at 03:15:44PM +0800, Mason Yang wrote:
> Document the bindings used by the Macronix raw NAND controller.
> 
> Signed-off-by: Mason Yang <masonccyang@mxic.com.tw>
> ---
>  Documentation/devicetree/bindings/mtd/mxic-nand.txt | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mtd/mxic-nand.txt
> 
> diff --git a/Documentation/devicetree/bindings/mtd/mxic-nand.txt b/Documentation/devicetree/bindings/mtd/mxic-nand.txt
> new file mode 100644
> index 0000000..ddd7660
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mtd/mxic-nand.txt
> @@ -0,0 +1,20 @@
> +Macronix Raw NAND Controller Device Tree Bindings
> +-------------------------------------------------
> +
> +Required properties:
> +- compatible: should be "macronix,nand-controller"

That's not very specific. There's only 1 version of this h/w?

> +- reg: should contain 1 entrie for the registers

s/entrie/entry/

> +- interrupts: interrupt line connected to this raw NAND controller
> +- clock-names: should contain "ps_clk", "send_clk" and "send_dly_clk"
> +- clocks: should contain 3 phandles for the "ps_clk", "send_clk" and
> +	 "send_dly_clk" clocks

You can drop '_clk' as that is redundant.

> +
> +Example:
> +
> +	nand: mxic-nfc@43c30000 {
> +		compatible = "macronix,nand-controller";
> +		reg = <0x43c30000 0x10000>;
> +		reg-names = "regs";

Not documented. You can drop as *-names is not generally useful when 
there is only 1 entry.

> +		clocks = <&clkwizard 0>, <&clkwizard 1>, <&clkc 15>;
> +		clock-names = "send_clk", "send_dly_clk", "ps_clk";
> +	};
> -- 
> 1.9.1
> 

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
