Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 445B56C3F9
	for <lists+linux-mtd@lfdr.de>; Thu, 18 Jul 2019 03:01:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:From:Message-ID:MIME-Version:
	Subject:To:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7KxoQkIzeiNokCwpcNQENU+zVzRMVqB0Q4n1ASUNAwI=; b=ACRm97sqpY4yTB
	Vi1PDGDlj/OJ899Djm2eNLQrCRiYcp1hdHXSkGsEJRFRXfiljuUorVH298GqtxCDGHRuqNOVMox0N
	sXjohgjGwVjLZehlVm2dNtcCtWdq7Z+Je3NxQHQJgqEcsbVOdmOxPp5Tlof7Nu5wGuUkfRVDRR1Zf
	Nmne5oaKfuPqz4hsEY2F9HlfQvKwABLRgYWm4pL78T14e7B0UHHjnlM+3PGbz4ZCx8P3FwGc+dAxz
	PEkMzmM1jm8s5oz+mpKieQaOQNMJoMY+/G6BVfHdItb4nPnraoT1v55FYu4MEU5gnZdqsrfSjjg0s
	0BUnjLneeM+3uOMXsDaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnun5-00021v-G3; Thu, 18 Jul 2019 01:00:59 +0000
Received: from twhmllg4.macronix.com ([122.147.135.202])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnump-00021E-4U
 for linux-mtd@lists.infradead.org; Thu, 18 Jul 2019 01:00:44 +0000
Received: from twhfmnt1.mxic.com.tw (twhfm1p2.macronix.com [172.17.20.92])
 by TWHMLLG4.macronix.com with ESMTP id x6I0xWSG038122;
 Thu, 18 Jul 2019 08:59:32 +0800 (GMT-8)
 (envelope-from masonccyang@mxic.com.tw)
Received: from MXML06C.mxic.com.tw (mxml06c.mxic.com.tw [172.17.14.55])
 by Forcepoint Email with ESMTP id 3D60852754C570DA3E11;
 Thu, 18 Jul 2019 08:59:32 +0800 (CST)
In-Reply-To: <93e86083-7f8a-402d-db4b-26263719be25@cogentembedded.com>
References: <1562138144-2212-1-git-send-email-masonccyang@mxic.com.tw>
 <1562138144-2212-3-git-send-email-masonccyang@mxic.com.tw>
 <93e86083-7f8a-402d-db4b-26263719be25@cogentembedded.com>
To: "Sergei Shtylyov" <sergei.shtylyov@cogentembedded.com>
Subject: Re: [PATCH v5 2/2] dt-bindings: mtd: Document Macronix raw NAND
 controller bindings
MIME-Version: 1.0
X-KeepSent: A58FF3D1:7CE1288C-4825843B:0005429C;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3FP4 SHF90 June 10, 2013
Message-ID: <OFA58FF3D1.7CE1288C-ON4825843B.0005429C-4825843B.00057367@mxic.com.tw>
From: masonccyang@mxic.com.tw
Date: Thu, 18 Jul 2019 08:59:32 +0800
X-MIMETrack: Serialize by Router on MXML06C/TAIWAN/MXIC(Release 9.0.1FP10
 HF265|July 25, 2018) at 2019/07/18 AM 08:59:32,
 Serialize complete at 2019/07/18 AM 08:59:32
X-MAIL: TWHMLLG4.macronix.com x6I0xWSG038122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_180043_452351_A06E489A 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [122.147.135.202 listed in list.dnswl.org]
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


Hi Sergei,

> > Document the bindings used by the Macronix raw NAND controller.
> > 
> > Signed-off-by: Mason Yang <masonccyang@mxic.com.tw>
> > ---
> >   Documentation/devicetree/bindings/mtd/mxic-nand.txt | 20 
++++++++++++++++++++
> >   1 file changed, 20 insertions(+)
> >   create mode 100644 
Documentation/devicetree/bindings/mtd/mxic-nand.txt
> > 
> > diff --git a/Documentation/devicetree/bindings/mtd/mxic-nand.txt b/
> Documentation/devicetree/bindings/mtd/mxic-nand.txt
> > new file mode 100644
> > index 0000000..ddd7660
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/mtd/mxic-nand.txt
> > @@ -0,0 +1,20 @@
> > +Macronix Raw NAND Controller Device Tree Bindings
> > +-------------------------------------------------
> > +
> > +Required properties:
> > +- compatible: should be "macronix,nand-controller"
> > +- reg: should contain 1 entrie for the registers
> > +- interrupts: interrupt line connected to this raw NAND controller
> > +- clock-names: should contain "ps_clk", "send_clk" and "send_dly_clk"
> > +- clocks: should contain 3 phandles for the "ps_clk", "send_clk" and
> > +    "send_dly_clk" clocks
> > +
> > +Example:
> > +
> > +   nand: mxic-nfc@43c30000 {
> 
>     The node names should be generic, and the DT spec 0.2 (section 
2.2.2) even 
> has documented "nand-controller", please rename.

okay, will fix it to

nand: nand-controller@43c30000 {

}

> 
> > +      compatible = "macronix,nand-controller";
> > +      reg = <0x43c30000 0x10000>;
> > +      reg-names = "regs";
> > +      clocks = <&clkwizard 0>, <&clkwizard 1>, <&clkc 15>;
> > +      clock-names = "send_clk", "send_dly_clk", "ps_clk";
> > +   };
> > 
> 
> MBR, Sergei

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
