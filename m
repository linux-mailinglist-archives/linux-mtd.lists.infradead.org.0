Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F280250520
	for <lists+linux-mtd@lfdr.de>; Mon, 24 Jun 2019 11:06:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:From:Message-ID:MIME-Version:
	Subject:To:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YNrqXVtsyfOR85XYMsSwnNBYSQGfIgcSzr0cyuegQf0=; b=gw7EPUhCKgRPyV
	hqep8KXP7ZSR9qjjXDfGddrv1aOFNCaGL5zGsIB3UPZEihy11PyItuqkXUB1DmYliak63AQLBOvU8
	bH9JEAtcQKghVm0J7sOp1J6rzQfIWyiOqopMr0MqLzJJ2tAEaSqv70ZSPj5f4ShuH5ATNJ2HH9LN0
	+qx7nFdJSzv2/GKpzUnIhxWEC1RZkUm8a5HJ/ZP+6VLyRLsV0rYIVoE8HVfu6nyaUe4SNP08ikVVR
	Uz/2ICNPM5Mcn00PqVvR/aIlgQ25W0vjTEijWEsv6eQ663G73pxVrGuaB6rwOMTd2vX92ElGtA7O0
	Sk2Up/kQ5b9KEC4u0ifg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfKvf-0006e6-RX; Mon, 24 Jun 2019 09:06:23 +0000
Received: from twhmllg3.macronix.com ([122.147.135.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfKvT-0006WO-Nu
 for linux-mtd@lists.infradead.org; Mon, 24 Jun 2019 09:06:13 +0000
Received: from twhfmlp1.macronix.com (twhfm1p1.macronix.com [172.17.20.91])
 by TWHMLLG3.macronix.com with ESMTP id x5O95Gw0035152;
 Mon, 24 Jun 2019 17:05:16 +0800 (GMT-8)
 (envelope-from masonccyang@mxic.com.tw)
Received: from MXML06C.mxic.com.tw (mxml06c.macronix.com [172.17.14.55])
 by Forcepoint Email with ESMTP id 81A6019632B11D4E365C;
 Mon, 24 Jun 2019 17:05:16 +0800 (CST)
In-Reply-To: <20190619100904.6b759377@xps13>
References: <1555320234-15802-1-git-send-email-masonccyang@mxic.com.tw>	<1555320234-15802-3-git-send-email-masonccyang@mxic.com.tw>
 <20190512151820.4f2dd9da@xps13>	<OF074A1F06.5C1A58BE-ON482583FD.0031CD95-482583FD.003437AD@mxic.com.tw>
 <20190520142333.390091d5@xps13>	<OFADC47344.0F9941B2-ON48258403.002336E3-48258403.003141F0@mxic.com.tw>
 <20190527144250.71908bd9@xps13>	<OFE923A8E5.50375C30-ON48258409.0009AE1B-48258409.00119767@mxic.com.tw>
 <20190617143510.4ded5728@xps13>	<OF1C1397B4.241DC339-ON4825841D.000482A2-4825841D.0007B67E@mxic.com.tw>
 <20190618081436.5d488320@collabora.com>	<20190618092901.3bdd9f61@collabora.com>
 <OF5EAF94EB.AE31CF59-ON4825841E.002A2C38-4825841E.002C60BF@mxic.com.tw>
 <20190619100904.6b759377@xps13>
To: "Miquel Raynal" <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v3 2/4] mtd: rawnand: Add Macronix MX25F0A NAND controller
MIME-Version: 1.0
X-KeepSent: FCBB8981:B840C87C-48258423:00311FA8;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3FP4 SHF90 June 10, 2013
Message-ID: <OFFCBB8981.B840C87C-ON48258423.00311FA8-48258423.0031EBDD@mxic.com.tw>
From: masonccyang@mxic.com.tw
Date: Mon, 24 Jun 2019 17:05:16 +0800
X-MIMETrack: Serialize by Router on MXML06C/TAIWAN/MXIC(Release 9.0.1FP10
 HF265|July 25, 2018) at 2019/06/24 PM 05:05:16,
 Serialize complete at 2019/06/24 PM 05:05:16
X-MAIL: TWHMLLG3.macronix.com x5O95Gw0035152
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_020612_064422_A3671681 
X-CRM114-Status: GOOD (  17.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [122.147.135.201 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, christophe.kerello@st.com,
 marcel.ziswiler@toradex.com, stefan@agner.ch, liang.yang@amlogic.com,
 linux-mtd@lists.infradead.org, lee.jones@linaro.org, richard@nod.at,
 marek.vasut@gmail.com, Boris Brezillon <boris.brezillon@collabora.com>,
 geert@linux-m68k.org, devicetree@vger.kernel.org, robh+dt@kernel.org,
 bbrezillon@kernel.org, juliensu@mxic.com.tw, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, paul.burton@mips.com, broonie@kernel.org,
 computersforpeace@gmail.com, dwmw2@infradead.org, zhengxunli@mxic.com.tw
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


Hi Miquel, 


> > > > > > > > > How to make all #CS keep high for NAND to enter 
> > > > > > > > > low-power standby mode if driver don't use 
> > "legacy.select_chip()" 
> > > > > ? 
> > > > > > > > 
> > > > > > > > See commit 02b4a52604a4 ("mtd: rawnand: Make 
->select_chip() 
> > > > > optional 
> > > > > > > > when ->exec_op() is implemented") which states:
> > > > > > > > 
> > > > > > > >         "When [->select_chip() is] not implemented, the 
core 
> > is 
> > > > > assuming 
> > > > > > > >    the CS line is automatically asserted/deasserted by the 
 
> > driver 
> > > > > > > >    ->exec_op() implementation." 
> > > > > > > > 
> > > > > > > > Of course, the above is right only when the controller 
driver 
> > 
> > > > > supports 
> > > > > > > > the ->exec_op() interface. 
> > > > > > > 
> > > > > > > Currently, it seems that we will get the incorrect data and  

> > error
> > > > > > > operation due to CS in error toggling if CS line is 
controlled 
> > in 
> > > > > > > ->exec_op(). 
> > > 
> > > Oh, and please provide the modifications you added on top of this 
patch.
> > > Right now we're speculating on what you've done which is definitely 
not
> > > an efficient way to debug this sort of issues. 
> > 
> 
> We really need to see the datasheet of the NAND chip which has a
> problem and how this LPM mode is advertized to understand what the
> chip expects and eventually how to work-around it.
> 
> > The patch is to add in beginning of ->exec_op() to control CS# low and 

> > before return from ->exec_op() to control CS# High.
> > i.e,.
> > static in mxic_nand_exec_op( )
> > {
> >  cs_to_low();
> > 
> > 
> > 
> >  cs_to_high();
> >  return;
> > }
> > 
> > But for nand_onfi_detect(), 
> > it calls nand_read_param_page_op() and then nand_read_data_op().
> > mxic_nand_exec_op() be called twice for nand_onfi_detect()
> 
> Yes, this is expected and usually chips don't care.

As I replied to Boris's email previously.
I think I have fixed the problem and the root cause is the our NFC's TX 
FIFO 
counter do a unnecessary reset in CS control function.
currently, doing CS# control in ->exec_op() is OK to me.

In addition, by Jones's comments about MFD, 
I will re-submit this raw NAND ctlr driver instead of MFD and raw-nand. 
----------------------------------------------------------------------->
MFD is for registering child devices of chips which offer 
genuine cross-subsystem functionality. 

It is not designed for mode selecting, or as a place to shove shared code 
just because a better location doesn't appear to exist. 
------------------------------------------------------------------------<

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
