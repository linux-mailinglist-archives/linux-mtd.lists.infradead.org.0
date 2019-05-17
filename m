Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 874B621650
	for <lists+linux-mtd@lfdr.de>; Fri, 17 May 2019 11:31:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:From:Message-ID:MIME-Version:
	Subject:To:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Z60vGgJyZOhGdmGw1X0uYuQLFN45HGYnXFoZcVPdNE=; b=Xov2GgzukWjdOu
	lXQLVGkZ1SSuHUvGzhUwUWQe5ofEng6s/5DBg56HyHBy5R44iojLrGrzl2waNq7wCdqe0o2wGJ+VH
	JnK8t+UIgIVQqGf7gKe2lzGyls1RHmLXrCRjcV8eFcqQk99GlQ1tBe6FtfoYDaQWW2mmg53LKBbnx
	HbJisPbzQ8ewZwf6l/nUoXqCd2ArGBS9uas2RnSSnMTAnw2F2a7geuw2qK/+5eRt0QBlFifTzD6Yw
	OAfySRbnUqSlJGK+wXMBfenopIVhg2PbiR8M2yWqeHZB8rOq6h8JuXhNIcR4kpJnYw+Z/ZCXUL8Y4
	zSkNMOx6ia2gr9pcaMKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRZD0-0002h1-Jw; Fri, 17 May 2019 09:31:22 +0000
Received: from twhmllg3.macronix.com ([211.75.127.131])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRZCs-0002ga-5p
 for linux-mtd@lists.infradead.org; Fri, 17 May 2019 09:31:15 +0000
Received: from twhfmlp1.macronix.com (twhfm1p1.macronix.com [172.17.20.91])
 by TWHMLLG3.macronix.com with ESMTP id x4H9ULi6090469;
 Fri, 17 May 2019 17:30:21 +0800 (GMT-8)
 (envelope-from masonccyang@mxic.com.tw)
Received: from MXML06C.mxic.com.tw (mxml06c.mxic.com.tw [172.17.14.55])
 by Forcepoint Email with ESMTP id 6A6869C38E176687E328;
 Fri, 17 May 2019 17:30:21 +0800 (CST)
In-Reply-To: <20190512151820.4f2dd9da@xps13>
References: <1555320234-15802-1-git-send-email-masonccyang@mxic.com.tw>	<1555320234-15802-3-git-send-email-masonccyang@mxic.com.tw>
 <20190512151820.4f2dd9da@xps13>
To: "Miquel Raynal" <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v3 2/4] mtd: rawnand: Add Macronix MX25F0A NAND controller
MIME-Version: 1.0
X-KeepSent: 074A1F06:5C1A58BE-482583FD:0031CD95;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3FP4 SHF90 June 10, 2013
Message-ID: <OF074A1F06.5C1A58BE-ON482583FD.0031CD95-482583FD.003437AD@mxic.com.tw>
From: masonccyang@mxic.com.tw
Date: Fri, 17 May 2019 17:30:21 +0800
X-MIMETrack: Serialize by Router on MXML06C/TAIWAN/MXIC(Release 9.0.1FP10
 HF265|July 25, 2018) at 2019/05/17 PM 05:30:21,
 Serialize complete at 2019/05/17 PM 05:30:21
X-MAIL: TWHMLLG3.macronix.com x4H9ULi6090469
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_023114_507242_FA0A7130 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.75.127.131 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 bbrezillon@kernel.org, juliensu@mxic.com.tw, lee.jones@linaro.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-spi@vger.kernel.org,
 marcel.ziswiler@toradex.com, paul.burton@mips.com, broonie@kernel.org,
 geert@linux-m68k.org, stefan@agner.ch, linux-mtd@lists.infradead.org,
 richard@nod.at, liang.yang@amlogic.com, computersforpeace@gmail.com,
 dwmw2@infradead.org, marek.vasut@gmail.com, zhengxunli@mxic.com.tw
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


Hi Miquel,

> > +
> > +static void mxic_nand_select_chip(struct nand_chip *chip, int chipnr)
> 
> _select_target() is preferred now

Do you mean I implement mxic_nand_select_target() to control #CS ?

If so, I need to call mxic_nand_select_target( ) to control #CS ON
and then #CS OFF in _exec_op() due to nand_select_target()<in nand_base,c>
is still calling chip->legacy.select_chip ?

> 
> > +{
> > +   struct mxic_nand_ctlr *mxic = nand_get_controller_data(chip);
> > +
> > +   switch (chipnr) {
> > +   case 0:
> > +   case 1:
> > +      writel(HC_EN_BIT, mxic->mfd->regs + HC_EN);
> > +      writel(HC_CFG_MAN_CS_ASSERT | readl(mxic->mfd->regs + HC_CFG),
> > +             mxic->mfd->regs + HC_CFG);
> 
> In both case I would prefer a:
> 
>         reg = readl(...);
>         reg &= ~xxx;
>    reg |= yyy;
>    writel(reg, ...);
> 
> Much easier to read.
> 
> > +      break;
> > +
> > +   case -1:
> > +      writel(~HC_CFG_MAN_CS_ASSERT & readl(mxic->mfd->regs + HC_CFG),
> > +             mxic->mfd->regs + HC_CFG);
> > +      writel(0, mxic->mfd->regs + HC_EN);
> > +      break;
> > +
> > +   default:
> 
> Error?
> 
> > +      break;
> > +   }
> > +}
> > +

> > +static int mx25f0a_nand_probe(struct platform_device *pdev)
> > +{
> > +   struct mtd_info *mtd;
> > +   struct mx25f0a_mfd *mfd = dev_get_drvdata(pdev->dev.parent);
> > +   struct mxic_nand_ctlr *mxic;
> > +   struct nand_chip *nand_chip;
> > +   int err;
> > +
> > +   mxic = devm_kzalloc(&pdev->dev, sizeof(struct mxic_nand_ctlr),
> > +             GFP_KERNEL);
> 
> mxic for a NAND controller structure is probably not a name meaningful
> enough.
> 
> > +   if (!mxic)
> > +      return -ENOMEM;
> > +
> > +   nand_chip = &mxic->nand;
> > +   mtd = nand_to_mtd(nand_chip);
> > +   mtd->dev.parent = pdev->dev.parent;
> > +   nand_chip->ecc.priv = NULL;
> > +   nand_set_flash_node(nand_chip, pdev->dev.parent->of_node);
> > +   nand_chip->priv = mxic;
> > +
> > +   mxic->mfd = mfd;
> > +
> > +   nand_chip->legacy.select_chip = mxic_nand_select_chip;
> 
> Please don't implement legacy interfaces. You can check in
> marvell_nand.c how this is handled now:
> 
> b25251414f6e mtd: rawnand: marvell: Stop implementing ->select_chip()
> 

Does it mean chip->legacy.select_chip() will phase-out ?


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
