Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE8027D512
	for <lists+linux-mtd@lfdr.de>; Thu,  1 Aug 2019 07:57:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R9nF+jT9FVXeDbdy/ErCl/THwYjpqu+lF62arWVJ1wA=; b=FCZHFJ7sgtiXeV
	G2xVG//swoiZBsBKb/msmJCU2ZsPNJ9iYI/zmYXPpEQrVb5fs+7EH6IZux0sTQBCpa30jEtUK9KqH
	tDsciOrWxVZWOEPpMZOQdKv4oeu/BIhrcPEm2DJi2kM5rXNFxcnq0ri/4s3gAurFRDSsytbtzCKFu
	bZBV0BMDUIU7UHJkecziMPmKw4LIsSL8SBBJTyNnBWMGEgixHnmaDKZkbC/8klgJ23gpEDZ+P1YCp
	TEWIrmE8GlIdCFQElaS7lGhwiR8wpnKV88k5cLmsHRmMQ0sfLSNccVB9cwMn/YmWwh4V4COtHLLbt
	/R+3xmK5bn1x1f9gAgKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht45p-0002Hl-NK; Thu, 01 Aug 2019 05:57:37 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht45i-0002Gt-59
 for linux-mtd@lists.infradead.org; Thu, 01 Aug 2019 05:57:31 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 1155028BFD8;
 Thu,  1 Aug 2019 06:57:28 +0100 (BST)
Date: Thu, 1 Aug 2019 07:57:25 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Mason Yang <masonccyang@mxic.com.tw>
Subject: Re: [PATCH v6 2/2] dt-bindings: mtd: Document Macronix raw NAND
 controller bindings
Message-ID: <20190801075725.4f23e0f5@collabora.com>
In-Reply-To: <1564631710-30276-3-git-send-email-masonccyang@mxic.com.tw>
References: <1564631710-30276-1-git-send-email-masonccyang@mxic.com.tw>
 <1564631710-30276-3-git-send-email-masonccyang@mxic.com.tw>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_225730_335313_BD1C9168 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
 christophe.kerello@st.com, linux-kernel@vger.kernel.org, stefan@agner.ch,
 paul@crapouillou.net, marek.vasut@gmail.com, paul.burton@mips.com,
 robh+dt@kernel.org, linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 liang.yang@amlogic.com, lee.jones@linaro.org, computersforpeace@gmail.com,
 dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu,  1 Aug 2019 11:55:10 +0800
Mason Yang <masonccyang@mxic.com.tw> wrote:

> Document the bindings used by the Macronix raw NAND controller.
> 
> Signed-off-by: Mason Yang <masonccyang@mxic.com.tw>
> ---
>  Documentation/devicetree/bindings/mtd/mxic-nand.txt | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mtd/mxic-nand.txt
> 
> diff --git a/Documentation/devicetree/bindings/mtd/mxic-nand.txt b/Documentation/devicetree/bindings/mtd/mxic-nand.txt
> new file mode 100644
> index 0000000..de37d60
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mtd/mxic-nand.txt
> @@ -0,0 +1,19 @@
> +Macronix Raw NAND Controller Device Tree Bindings
> +-------------------------------------------------
> +
> +Required properties:
> +- compatible: should be "mxicy,multi-itfc-v009-nand-morph"
> +- reg: should contain 1 entry for the registers
> +- interrupts: interrupt line connected to this raw NAND controller
> +- clock-names: should contain "ps", "send" and "send_dly"
> +- clocks: should contain 3 phandles for the "ps", "send" and
> +	 "send_dly" clocks
> +
> +Example:
> +
> +	nand: nand-controller@43c30000 {
> +		compatible = "mxicy,multi-itfc-v009-nand-morph";
> +		reg = <0x43c30000 0x10000>;
> +		clocks = <&clkwizard 0>, <&clkwizard 1>, <&clkc 15>;
> +		clock-names = "send", "send_dly", "ps";

You should have subnodes describing the NAND connected to the
controller (see [1]).

[1]https://elixir.bootlin.com/linux/v5.3-rc2/source/Documentation/devicetree/bindings/mtd/nand-controller.yaml#L131

> +	};


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
