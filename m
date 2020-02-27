Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 482F317248B
	for <lists+linux-mtd@lfdr.de>; Thu, 27 Feb 2020 18:08:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mNmWA2PYZFWFPBPV/+r3d+LttrFap59zhvKqcbCsKaI=; b=QcjldsnnWQzmUV
	+6tDtyWc4DJQGZSaaJA+abWFCOWDmwL9RIztyluC7ODQoxkjTeWJnjWZmG5xGJGLRv9jZAFtDBm4R
	UbfW4dkh3OjFYERvCF/ejUf8BfS6I2u5q0oRI+dIg42pDmThoxZFatmtC4Obtu/ljdkIWFiOChQdI
	TAxYyNoCfC6yvUFJq0ZhS/5Yg3n/05DZFbT/d2CB8TzfPfxpTO1G0XybzJ3rD38TBieqIn/8L2aO4
	HuOtPqO/rIouquQDXScKMZqqfKQ5WKUr6BFePDuu1ANJc8ffd4pIZ06o3+fm2DMWTEAL3oekor+dT
	IMUmX+o48HNIEWnozoSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Mdk-0000ox-O0; Thu, 27 Feb 2020 17:08:00 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Mdb-0000ns-Ad
 for linux-mtd@lists.infradead.org; Thu, 27 Feb 2020 17:07:52 +0000
Received: by mail-ot1-f66.google.com with SMTP id w6so3645067otk.0
 for <linux-mtd@lists.infradead.org>; Thu, 27 Feb 2020 09:07:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=InsmB7K49IbGFoAcpPNcKRxbX33Sq72EBl8TIXI+Jks=;
 b=iWFc4qbdOGeZ7RC1EnM1zGi9uqk/V+n9t7xjeCZmG2fTHEBaaRprwRwrXWTu7gCdu/
 ZKYW+8G377QPSqmkFp/KTzRzfuNKRxwz+Fz3nSmTJ6B1vQtnDQ2VJcZ5dGXlBUdMW/Nm
 CCg1auHEuMlpsxkz6le+DwdJGkKEE7iNZff77I7vc02mb00NNprNZjg9MEUtopIuLcG1
 8ZhI/hs/ThyFPs65As8GqUba7bYUBqyimxvxOeRJzZkeHTISFv4+aIUJYhpAX0dGkvbO
 kS2VofvPYr3s8Uk7e6dyIIzNMLsTsZL0C6wUVILLH7JaBD2Gt1nPQoDkse34PvA8WlMw
 h1Vg==
X-Gm-Message-State: APjAAAUsHDevlvcNoNN7WYsCV4FuzSWQ1Qlslpo01JKXvsxQzbio7pXy
 Qdu9SXXWMC0YvaqJJIMf+w==
X-Google-Smtp-Source: APXvYqwReYFW5+9iTptEhtgAEVTUlxTpOhTN5cLvCWwPo3QD9G6weLLuawjcTBQoP7gwUOwpcHjbxw==
X-Received: by 2002:a9d:6544:: with SMTP id q4mr535139otl.269.1582823270477;
 Thu, 27 Feb 2020 09:07:50 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n8sm2113708otl.11.2020.02.27.09.07.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 09:07:49 -0800 (PST)
Received: (nullmailer pid 2184 invoked by uid 1000);
 Thu, 27 Feb 2020 17:07:48 -0000
Date: Thu, 27 Feb 2020 11:07:48 -0600
From: Rob Herring <robh@kernel.org>
To: "Ramuthevar,
 Vadivel MuruganX" <vadivel.muruganx.ramuthevar@linux.intel.com>
Subject: Re: [PATCH v11 1/2] dt-bindings: spi: Add schema for Cadence QSPI
 Controller driver
Message-ID: <20200227170748.GA19661@bogus>
References: <20200227062708.21544-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200227062708.21544-2-vadivel.muruganx.ramuthevar@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227062708.21544-2-vadivel.muruganx.ramuthevar@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_090751_366074_7C567FA4 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, tudor.ambarus@gmail.com, vigneshr@ti.com,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 cyrille.pitchen@atmel.com, marex@denx.de, boris.brezillon@free-electrons.com,
 tien.fong.chee@intel.com, richard@nod.at, simon.k.r.goldschmidt@gmail.com,
 Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>,
 devicetree@vger.kernel.org, cheol.yong.kim@intel.com, robh+dt@kernel.org,
 qi-ming.wu@intel.com, david.oberhollenzer@sigma-star.at,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org, dinguyen@kernel.org,
 broonie@kernel.org, computersforpeace@gmail.com, dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, 27 Feb 2020 14:27:07 +0800, "Ramuthevar,Vadivel MuruganX" wrote:
> From: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
> 
> Add dt-bindings documentation for Cadence-QSPI controller to support
> spi based flash memories.
> 
> Signed-off-by: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
> ---
>  .../devicetree/bindings/mtd/cadence-quadspi.txt    |  67 ----------
>  .../devicetree/bindings/spi/cdns,qspi-nor.yaml     | 142 +++++++++++++++++++++
>  2 files changed, 142 insertions(+), 67 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mtd/cadence-quadspi.txt
>  create mode 100644 Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

warning: no schema found in file: Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml: ignoring, error in schema: patternProperties: cdns,read-delay
Documentation/devicetree/bindings/display/simple-framebuffer.example.dts:21.16-37.11: Warning (chosen_node_is_root): /example-0/chosen: chosen node must be at root node
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml: patternProperties:cdns,read-delay: {'description': 'Delay in 4 microseconds, read capture logic, in clock cycles.'} is not valid under any of the given schemas (Possible causes of the failure):
	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml: patternProperties:cdns,read-delay: 'not' is a required property

Documentation/devicetree/bindings/Makefile:12: recipe for target 'Documentation/devicetree/bindings/spi/cdns,qspi-nor.example.dts' failed
make[1]: *** [Documentation/devicetree/bindings/spi/cdns,qspi-nor.example.dts] Error 1
Makefile:1263: recipe for target 'dt_binding_check' failed
make: *** [dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1245559
Please check and re-submit.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
