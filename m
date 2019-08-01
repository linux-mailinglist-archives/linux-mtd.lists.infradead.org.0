Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ADC07D87F
	for <lists+linux-mtd@lfdr.de>; Thu,  1 Aug 2019 11:23:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wqMRhMNDIckiQ7sivYpi5h2+dfmcyQkP37v+OSjohXM=; b=D6nfcPE3uGTUhn
	4rBH3a7BnpXE6rQmfK15BGXiYq0sSD6wrZjMYqxU1LCES/4mqwC9pM37gRPlIE9fww1a2VZITertL
	tLaUVYLWHaIDvMIgdLj0+hWFgzkEeyvHl5xVRCW5hoMc2M0D2DgQAZZx7gxoISmDnKWhtBALXbahp
	3s2bwIpZZ+epbu/fN0/e46HgFhggw1NjaahH00OiciO88q+RTaQcGgesnAPAOETLS41+R8PGmFFbT
	zJYo6N+NzSqHmXkocKaWzS5dletFQZWRp/Aojyw/N6x/oIxUeWEEAS7TuU1uvd3LSroWaJ9waaR2J
	SCKnZWEFtmGpeC6DSj3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht7JV-0007Rp-Ck; Thu, 01 Aug 2019 09:23:57 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht7JM-0007RM-S7
 for linux-mtd@lists.infradead.org; Thu, 01 Aug 2019 09:23:50 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 8B66728C2ED;
 Thu,  1 Aug 2019 10:23:46 +0100 (BST)
Date: Thu, 1 Aug 2019 11:23:43 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: masonccyang@mxic.com.tw
Subject: Re: [PATCH v6 2/2] dt-bindings: mtd: Document Macronix raw NAND
 controller bindings
Message-ID: <20190801112343.0b770da0@collabora.com>
In-Reply-To: <OF42C4D3EC.9549E8DC-ON48258449.003273A5-48258449.00330A06@mxic.com.tw>
References: <1564631710-30276-1-git-send-email-masonccyang@mxic.com.tw>
 <1564631710-30276-3-git-send-email-masonccyang@mxic.com.tw>
 <20190801075725.4f23e0f5@collabora.com>
 <OF42C4D3EC.9549E8DC-ON48258449.003273A5-48258449.00330A06@mxic.com.tw>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_022349_172825_48AB6190 
X-CRM114-Status: GOOD (  19.59  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, christophe.kerello@st.com,
 richard@nod.at, bbrezillon@kernel.org, juliensu@mxic.com.tw,
 lee.jones@linaro.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 paul@crapouillou.net, marek.vasut@gmail.com, paul.burton@mips.com,
 liang.yang@amlogic.com, linux-mtd@lists.infradead.org, stefan@agner.ch,
 miquel.raynal@bootlin.com, anders.roxell@linaro.org,
 computersforpeace@gmail.com, dwmw2@infradead.org, vigneshr@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, 1 Aug 2019 17:17:29 +0800
masonccyang@mxic.com.tw wrote:

> Hi Boris,
> 
> > On Thu,  1 Aug 2019 11:55:10 +0800
> > Mason Yang <masonccyang@mxic.com.tw> wrote:
> >   
> > > Document the bindings used by the Macronix raw NAND controller.
> > > 
> > > Signed-off-by: Mason Yang <masonccyang@mxic.com.tw>
> > > ---
> > >  Documentation/devicetree/bindings/mtd/mxic-nand.txt | 19   
> +++++++++++++++++++
> > >  1 file changed, 19 insertions(+)
> > >  create mode 100644   
> Documentation/devicetree/bindings/mtd/mxic-nand.txt
> > > 
> > > diff --git a/Documentation/devicetree/bindings/mtd/mxic-nand.txt b/  
> > Documentation/devicetree/bindings/mtd/mxic-nand.txt  
> > > new file mode 100644
> > > index 0000000..de37d60
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/mtd/mxic-nand.txt
> > > @@ -0,0 +1,19 @@
> > > +Macronix Raw NAND Controller Device Tree Bindings
> > > +-------------------------------------------------
> > > +
> > > +Required properties:
> > > +- compatible: should be "mxicy,multi-itfc-v009-nand-morph"
> > > +- reg: should contain 1 entry for the registers
> > > +- interrupts: interrupt line connected to this raw NAND controller
> > > +- clock-names: should contain "ps", "send" and "send_dly"
> > > +- clocks: should contain 3 phandles for the "ps", "send" and
> > > +    "send_dly" clocks
> > > +
> > > +Example:
> > > +
> > > +   nand: nand-controller@43c30000 {
> > > +      compatible = "mxicy,multi-itfc-v009-nand-morph";
> > > +      reg = <0x43c30000 0x10000>;
> > > +      clocks = <&clkwizard 0>, <&clkwizard 1>, <&clkc 15>;
> > > +      clock-names = "send", "send_dly", "ps";  
> > 
> > You should have subnodes describing the NAND connected to the
> > controller (see [1]).
> > 
> > [1]  
> https://elixir.bootlin.com/linux/v5.3-rc2/source/Documentation/devicetree/
> > bindings/mtd/nand-controller.yaml#L131
> >   
> > > +   };  
> >   
> 
> Do you mean to add patternProperties ?
> 
>                  nand: nand-controller@43c30000 {
>                                  compatible = 
> "mxicy,multi-itfc-v009-nand-morph";
>                                  reg = <0x43c30000 0x10000>;
>                                  clocks = <&clkwizard 0>, <&clkwizard 1>, 
> <&clkc 15>;
>                                  clock-names = "send", "send_dly", "ps";
> 

				#address-cells = <1>;
				#size-cells = <0>;

> +                               nand@0 {
> +
					reg = <0>;
					/* nand props here */

> +                               };
>                  };
> 
> something like that.

Yes, something like that.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
