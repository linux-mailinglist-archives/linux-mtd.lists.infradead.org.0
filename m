Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD5297D89C
	for <lists+linux-mtd@lfdr.de>; Thu,  1 Aug 2019 11:33:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:From:Message-ID:MIME-Version:
	Subject:To:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f3nHNxt0Tl5Ty9wpMG8QjAFdqTdJnHIB+AR/ylnm3iI=; b=Wm+45Ne5zMbZAQ
	yfJDzyztIaI0gUA4sQpOrD2N35Daz51coWjw3w2AeMioIlhPvVsxLX6encwP+VTBKx5SkJREWzng9
	VwU0gpo3VcNO3Vzrr9LWxOKY4/bA/5NeT21nCWY4M93BLCuiT1HZt8YT0vUEyrcFwtPp4Hjz0MYQk
	tUGFBcSIkvWnJEahYLzp/EG0BZWxuGYZvWekDJDZLBqdQt+jZK/fxlc4J/47nOmoSPUceTPCcPlla
	nL56Fvdq6fKssMmgWH07Ddb3Cgy2UdWW2u7YgM+E92pgQyMTBRQxdCjjK55R6g1PvxIPW+GfZOdVr
	8HS6CbgRUhGshZdatybg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht7SH-0002ty-6C; Thu, 01 Aug 2019 09:33:01 +0000
Received: from twhmllg4.macronix.com ([122.147.135.202])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht7S9-0002tX-Ak
 for linux-mtd@lists.infradead.org; Thu, 01 Aug 2019 09:32:54 +0000
Received: from twhfmnt1.mxic.com.tw (twhfm1p2.macronix.com [172.17.20.92])
 by TWHMLLG4.macronix.com with ESMTP id x719W4wM024336;
 Thu, 1 Aug 2019 17:32:04 +0800 (GMT-8)
 (envelope-from masonccyang@mxic.com.tw)
Received: from MXML06C.mxic.com.tw (mxml06c.macronix.com [172.17.14.55])
 by Forcepoint Email with ESMTP id 70BBAA972B9FA8377304;
 Thu,  1 Aug 2019 17:32:05 +0800 (CST)
In-Reply-To: <20190801091310.035bc824@xps13>
References: <1564631710-30276-1-git-send-email-masonccyang@mxic.com.tw>	<1564631710-30276-3-git-send-email-masonccyang@mxic.com.tw>
 <20190801091310.035bc824@xps13>
To: "Miquel Raynal" <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v6 2/2] dt-bindings: mtd: Document Macronix raw NAND
 controller bindings
MIME-Version: 1.0
X-KeepSent: 6FA21ABA:C0DF9C78-48258449:00331EB3;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3FP4 SHF90 June 10, 2013
Message-ID: <OF6FA21ABA.C0DF9C78-ON48258449.00331EB3-48258449.0034600D@mxic.com.tw>
From: masonccyang@mxic.com.tw
Date: Thu, 1 Aug 2019 17:32:04 +0800
X-MIMETrack: Serialize by Router on MXML06C/TAIWAN/MXIC(Release 9.0.1FP10
 HF265|July 25, 2018) at 2019/08/01 PM 05:32:05,
 Serialize complete at 2019/08/01 PM 05:32:05
X-MAIL: TWHMLLG4.macronix.com x719W4wM024336
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_023253_657114_F947AA0E 
X-CRM114-Status: GOOD (  17.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [122.147.135.202 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 vigneshr@ti.com, bbrezillon@kernel.org, juliensu@mxic.com.tw,
 lee.jones@linaro.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 paul@crapouillou.net, marek.vasut@gmail.com, paul.burton@mips.com,
 liang.yang@amlogic.com, linux-mtd@lists.infradead.org, stefan@agner.ch,
 richard@nod.at, anders.roxell@linaro.org, computersforpeace@gmail.com,
 dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


Hi Miquel,

> > Document the bindings used by the Macronix raw NAND controller.
> > 
> > Signed-off-by: Mason Yang <masonccyang@mxic.com.tw>
> > ---
> >  Documentation/devicetree/bindings/mtd/mxic-nand.txt | 19 
+++++++++++++++++++
> >  1 file changed, 19 insertions(+)
> >  create mode 100644 
Documentation/devicetree/bindings/mtd/mxic-nand.txt
> > 
> > diff --git a/Documentation/devicetree/bindings/mtd/mxic-nand.txt b/
> Documentation/devicetree/bindings/mtd/mxic-nand.txt
> > new file mode 100644
> > index 0000000..de37d60
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/mtd/mxic-nand.txt
> > @@ -0,0 +1,19 @@
> > +Macronix Raw NAND Controller Device Tree Bindings
> > +-------------------------------------------------
> > +
> > +Required properties:
> > +- compatible: should be "mxicy,multi-itfc-v009-nand-morph"
> > +- reg: should contain 1 entry for the registers
> > +- interrupts: interrupt line connected to this raw NAND controller
> > +- clock-names: should contain "ps", "send" and "send_dly"
> > +- clocks: should contain 3 phandles for the "ps", "send" and
> > +    "send_dly" clocks
> > +
> > +Example:
> > +
> > +   nand: nand-controller@43c30000 {
> > +      compatible = "mxicy,multi-itfc-v009-nand-morph";
> 
> "mxicy" looks strange to me, I know it has been used in the past and
> cannot be removed, but I don't think it is wise to continue using it
> while your use "mxic" in all your other contributions. I would update
> the prefix to mxic here and fill-in the relevant doc.
> 
> Also, what is nand-morph? I thought we were okay for
> the "-nand-controller" suffix.
> 

I thought there is a node name "nand-controller@43c30000" and the
"-nand-controller" suffix in compatible property seems repeated.

In addition, I would like to indicate it's a multi function controller.

nand-morph means this multi interface controller (multi-itfc) works in
raw NAND controller.

thanks & best regards,
Mason


CONFIDENTIALITY NOTE:

This e-mail and any attachments may contain confidential information 
and/or personal data, which is protected by applicable laws. Please be 
reminded that duplication, disclosure, distribution, or use of this e-mail 
(and/or its attachments) or any part thereof is prohibited. If you receive 
this e-mail in error, please notify us immediately and delete this mail as 
well as its attachment(s) from your system. In addition, please be 
informed that collection, processing, and/or use of personal data is 
prohibited unless expressly permitted by personal data protection laws. 
Thank you for your attention and cooperation.

Macronix International Co., Ltd.

=====================================================================



============================================================================

CONFIDENTIALITY NOTE:

This e-mail and any attachments may contain confidential information and/or personal data, which is protected by applicable laws. Please be reminded that duplication, disclosure, distribution, or use of this e-mail (and/or its attachments) or any part thereof is prohibited. If you receive this e-mail in error, please notify us immediately and delete this mail as well as its attachment(s) from your system. In addition, please be informed that collection, processing, and/or use of personal data is prohibited unless expressly permitted by personal data protection laws. Thank you for your attention and cooperation.

Macronix International Co., Ltd.

=====================================================================


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
