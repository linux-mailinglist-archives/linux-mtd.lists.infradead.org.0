Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F93F8155E
	for <lists+linux-mtd@lfdr.de>; Mon,  5 Aug 2019 11:23:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:From:Message-ID:MIME-Version:
	Subject:To:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5sSHMPowVsK2ly0XzL8r0geTnlFVEkJAGzHrABw0dOo=; b=bX1Y7XcM/MGBPe
	eb88qUaVuuKSKecgyOjjBlwd5WSpUYHwin/Fd1C16plJQdikVMUHE/Mz6J4wdSB5Tqiy3Va0EnvIz
	D98qFm7SEzw29qn4ZG5HAoSVQFyNRJwo+9/MDfWhstSxLVrmiVw/SlhwlGKzwVNa2pJGcjGypU+w9
	tKY+tgG0AekMWCUCkduQzrC0RNBCLiIpo4nuakTAz5Vk+Q1E9Gb94rXLL399cRkPc8nGLsKJhNdVL
	Nxynk/jK8r84Yn7k6FHWks1oddraAtJSHIcpM2TfnQHiZsQSOKNaxeTgc9jPOwJrWHYb5LARjr1Qb
	yruYMq+bqMihvLPDmzAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huZCz-0003YU-Fr; Mon, 05 Aug 2019 09:23:13 +0000
Received: from twhmllg4.macronix.com ([211.75.127.132])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huZCo-0003Xz-7j
 for linux-mtd@lists.infradead.org; Mon, 05 Aug 2019 09:23:04 +0000
Received: from twhfmnt1.mxic.com.tw (twhfm1p2.macronix.com [172.17.20.92])
 by TWHMLLG4.macronix.com with ESMTP id x759LnQD050642;
 Mon, 5 Aug 2019 17:21:49 +0800 (GMT-8)
 (envelope-from masonccyang@mxic.com.tw)
Received: from MXML06C.mxic.com.tw (mxml06c.macronix.com [172.17.14.55])
 by Forcepoint Email with ESMTP id AB2C310B77D2B23713D5;
 Mon,  5 Aug 2019 17:21:49 +0800 (CST)
In-Reply-To: <20190801082233.759f6ae9@collabora.com>
References: <1564631710-30276-1-git-send-email-masonccyang@mxic.com.tw>	<1564631710-30276-2-git-send-email-masonccyang@mxic.com.tw>
 <20190801082233.759f6ae9@collabora.com>
To: "Boris Brezillon" <boris.brezillon@collabora.com>
Subject: Re: [PATCH v6 1/2] mtd: rawnand: Add Macronix raw NAND controller
 driver
MIME-Version: 1.0
X-KeepSent: 566978C2:AD9BE9D7-4825844D:0030DD04;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3FP4 SHF90 June 10, 2013
Message-ID: <OF566978C2.AD9BE9D7-ON4825844D.0030DD04-4825844D.00336FFE@mxic.com.tw>
From: masonccyang@mxic.com.tw
Date: Mon, 5 Aug 2019 17:21:50 +0800
X-MIMETrack: Serialize by Router on MXML06C/TAIWAN/MXIC(Release 9.0.1FP10
 HF265|July 25, 2018) at 2019/08/05 PM 05:21:49,
 Serialize complete at 2019/08/05 PM 05:21:49
X-MAIL: TWHMLLG4.macronix.com x759LnQD050642
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_022302_526478_DEC8B5EC 
X-CRM114-Status: GOOD (  21.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.75.127.132 listed in list.dnswl.org]
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


Hi Boris,

> > +
> > +struct mxic_nand_ctlr {
> > +   struct clk *ps_clk;
> > +   struct clk *send_clk;
> > +   struct clk *send_dly_clk;
> > +   void __iomem *regs;
> > +   struct nand_controller controller;
> > +   struct device *dev;
> > +   void *priv;
> 
> Looks like this priv field point to a nand_chip object. Please replace
> it by:
> 
>    struct nand_chip *chip;

okay, will fix.

> 
> > +};
> > +
> > +struct mxic_nand_chip {
> > +   struct nand_chip chip;
> > +};
> 
> No need to define your own nand_chip struct if all it contains is the
> base definition.

okay, will fix.

> 
> > +
> > +static int mxic_nfc_clk_enable(struct mxic_nand_ctlr *nfc)
> > +{
> > +   int ret;
> > +
> > +   ret = clk_prepare_enable(nfc->ps_clk);
> > +   if (ret)
> > +      return ret;
> > +
> > +   ret = clk_prepare_enable(nfc->send_clk);
> > +   if (ret)
> > +      goto err_ps_clk;
> > +
> > +   ret = clk_prepare_enable(nfc->send_dly_clk);
> > +   if (ret)
> > +      goto err_send_dly_clk;
> > +
> > +   return ret;
> > +
> > +err_send_dly_clk:
> > +   clk_disable_unprepare(nfc->send_clk);
> > +err_ps_clk:
> > +   clk_disable_unprepare(nfc->ps_clk);
> > +
> > +   return ret;
> > +}
> > +
> > +static void mxic_nfc_clk_disable(struct mxic_nand_ctlr *nfc)
> > +{
> > +   clk_disable_unprepare(nfc->send_clk);
> > +   clk_disable_unprepare(nfc->send_dly_clk);
> > +   clk_disable_unprepare(nfc->ps_clk);
> > +}
> > +
> > +static void mxic_nfc_set_input_delay(struct mxic_nand_ctlr *nfc, u8 
idly_code)
> > +{
> > +   writel(IDLY_CODE_VAL(0, idly_code) |
> > +          IDLY_CODE_VAL(1, idly_code) |
> > +          IDLY_CODE_VAL(2, idly_code) |
> > +          IDLY_CODE_VAL(3, idly_code),
> > +          nfc->regs + IDLY_CODE(0));
> > +   writel(IDLY_CODE_VAL(4, idly_code) |
> > +          IDLY_CODE_VAL(5, idly_code) |
> > +          IDLY_CODE_VAL(6, idly_code) |
> > +          IDLY_CODE_VAL(7, idly_code),
> > +          nfc->regs + IDLY_CODE(1));
> > +}
> > +
> > +static int mxic_nfc_clk_setup(struct mxic_nand_ctlr *nfc, unsigned 
long freq)
> > +{
> > +   int ret;
> > +
> > +   ret = clk_set_rate(nfc->send_clk, freq);
> > +   if (ret)
> > +      return ret;
> > +
> > +   ret = clk_set_rate(nfc->send_dly_clk, freq);
> > +   if (ret)
> > +      return ret;
> > +
> > +   /*
> > +    * A constant delay range from 0x0 ~ 0x1F for input delay,
> > +    * the unit is 78 ps, the max input delay is 2.418 ns.
> > +    */
> > +   mxic_nfc_set_input_delay(nfc, 0xf);
> 
> Just curious. Shouldn't we use that to support EDO modes? This being
> said, a delay of 2.5ns will not be enough for EDO...

This mxic_nfc_set_input_delay() thing is for Data IO pins and these delay
are for internal #RE path latch Data.

> 
> > +
> > +   /*
> > +    * Phase degree = 360 * freq * output-delay
> > +    * where output-delay is a constant value 1 ns in FPGA.
> > +    *
> > +    * Get Phase degree = 360 * freq * 1 ns
> > +    *                  = 360 * freq * 1 sec / 1000000000
> > +    *                  = 9 * freq / 25000000
> > +    */
> > +   ret = clk_set_phase(nfc->send_dly_clk, 9 * freq / 25000000);
> > +   if (ret)
> > +      return ret;
> > +
> > +   return 0;
> > +}
> > +
> > +static int mxic_nfc_set_freq(struct mxic_nand_ctlr *nfc, unsigned 
long freq)
> > +{
> > +   int ret;
> > +
> > +   if (freq > MXIC_NFC_MAX_CLK_HZ)
> > +      freq = MXIC_NFC_MAX_CLK_HZ;
> > +
> > +   mxic_nfc_clk_disable(nfc);
> > +   ret = mxic_nfc_clk_setup(nfc, freq);
> > +   if (ret)
> > +      return ret;
> > +
> > +   ret = mxic_nfc_clk_enable(nfc);
> > +   if (ret)
> > +      return ret;
> > +
> > +   return 0;
> > +}
> > +
> > +static void mxic_nfc_hw_init(struct mxic_nand_ctlr *nfc)
> > +{
> > +   writel(DATA_STROB_EDO_EN, nfc->regs + DATA_STROB);
> 
> Oh, no, here is the EDO flag. BTW, you should not have it set by
> default, it's something you configure in your ->setup_data_interface()
> implementation.

okay, got it and will fix it.

> 
> > +   writel(HC_CFG_NIO(8) | HC_CFG_TYPE(1, HC_CFG_TYPE_RAW_NAND) |
> > +          HC_CFG_SLV_ACT(0) | HC_CFG_MAN_CS_EN |
> > +          HC_CFG_IDLE_SIO_LVL(1), nfc->regs + HC_CFG);
> > +   writel(INT_STS_ALL, nfc->regs + INT_STS_EN);
> > +   writel(0x0, nfc->regs + ONFI_DIN_CNT(0));
> > +   writel(0, nfc->regs + LRD_CFG);
> > +   writel(0, nfc->regs + LRD_CTRL);
> > +   writel(0x0, nfc->regs + HC_EN);
> > +
> > +   /* Default 10 MHz to setup tRC_min/tWC_min:100 ns */
> > +   mxic_nfc_set_freq(nfc, 10000000);
> 
> Again, not something you should configure here, but I guess having a
> default setting does not hurt.

okay, will fix it.

> 
> > +}
> > +
> > +static void mxic_nfc_cs_enable(struct mxic_nand_ctlr *nfc)
> > +{
> > +   writel(readl(nfc->regs + HC_CFG) | HC_CFG_MAN_CS_EN,
> > +          nfc->regs + HC_CFG);
> > +   writel(HC_CFG_MAN_CS_ASSERT | readl(nfc->regs + HC_CFG),
> > +          nfc->regs + HC_CFG);
> > +}
> > +
> > +static void mxic_nfc_cs_disable(struct mxic_nand_ctlr *nfc)
> > +{
> > +   writel(~HC_CFG_MAN_CS_ASSERT & readl(nfc->regs + HC_CFG),
> > +          nfc->regs + HC_CFG);
> > +}
> > +
> > +static int  mxic_nfc_wait_ready(struct nand_chip *chip)
> > +{
> > +   struct mxic_nand_ctlr *nfc = nand_get_controller_data(chip);
> > +   u32 sts;
> > +
> > +   return readl_poll_timeout(nfc->regs + INT_STS, sts,
> > +              sts & INT_RDY_PIN, 0, USEC_PER_SEC);
> 
> You're not using interrupts at all? For things like R/B wait it's
> usually a good thing to rely on interrupts instead of status-polling.

In our current FPGA bitstreams, only implement status-polling.
Interrupts will implement in ASIC.


> > +
> > +static int mxic_nfc_setup_data_interface(struct nand_chip *chip, int 
chipnr,
> > +                const struct nand_data_interface *conf)
> > +{
> > +   struct mxic_nand_ctlr *nfc = nand_get_controller_data(chip);
> > +   const struct nand_sdr_timings *sdr;
> > +   unsigned long freq;
> > +
> > +   sdr = nand_get_sdr_timings(conf);
> > +   if (IS_ERR(sdr))
> > +      return PTR_ERR(sdr);
> > +
> > +   if (chipnr < 0)
> 
> Please use the NAND_DATA_IFACE_CHECK_ONLY macro for this check:
> 
>    if (chipnr == NAND_DATA_IFACE_CHECK_ONLY)
>       return 0;
> 

okay, will fix.

> > +      return 0;
> > +
> > +   if (sdr->tRC_min)
> > +      freq = 1000000000 / (sdr->tRC_min / 1000);
> 
> Please use NSEC_PER_SEC instead of 1000000000. And I think you can get
> rid of the check on sdr->tRC_min (it should never be 0).

got it, thanks.

> 
> > +
> > +   return mxic_nfc_set_freq(nfc, freq);
> 
> You should set the EDO when ->tRC_min < 30000 IIRC, clear it otherwise.
> 

okay, will fix,


> > +}
> > +
> > +static const struct nand_controller_ops mxic_nand_controller_ops = {
> > +   .exec_op = mxic_nfc_exec_op,
> > +   .setup_data_interface = mxic_nfc_setup_data_interface,
> > +};
> > +
> > +static int mxic_nfc_probe(struct platform_device *pdev)
> > +{
> > +   struct mtd_info *mtd;
> > +   struct mxic_nand_ctlr *nfc;
> > +   struct mxic_nand_chip *mxic_nand;
> > +   struct nand_chip *nand_chip;
> > +   struct resource *res;
> > +   int err;
> > +
> > +   nfc = devm_kzalloc(&pdev->dev, sizeof(struct mxic_nand_ctlr),
> > +            GFP_KERNEL);
> > +   if (!nfc)
> > +      return -ENOMEM;
> > +
> > +   mxic_nand = devm_kzalloc(&pdev->dev, sizeof(struct 
mxic_nand_chip),
> > +             GFP_KERNEL);
> > +   if (!mxic_nand)
> > +      return -ENOMEM;
> > +
> > +   nfc->ps_clk = devm_clk_get(&pdev->dev, "ps");
> > +   if (IS_ERR(nfc->ps_clk))
> > +      return PTR_ERR(nfc->ps_clk);
> > +
> > +   nfc->send_clk = devm_clk_get(&pdev->dev, "send");
> > +   if (IS_ERR(nfc->send_clk))
> > +      return PTR_ERR(nfc->send_clk);
> > +
> > +   nfc->send_dly_clk = devm_clk_get(&pdev->dev, "send_dly");
> > +   if (IS_ERR(nfc->send_dly_clk))
> > +      return PTR_ERR(nfc->send_dly_clk);
> > +
> > +   res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > +   nfc->regs = devm_ioremap_resource(&pdev->dev, res);
> > +   if (IS_ERR(nfc->regs))
> > +      return PTR_ERR(nfc->regs);
> > +
> > +   nand_chip = &mxic_nand->chip;
> > +   mtd = nand_to_mtd(nand_chip);
> > +   mtd->dev.parent = &pdev->dev;
> > +   nand_chip->ecc.priv = NULL;
> 
> No need to do this NULL assignment, the object is allocated with
> devm_kzalloc().

okay, got it.

> 
> > +   nand_set_flash_node(nand_chip, pdev->dev.of_node);
> 
> The flash node should be a child of pdev->dev.of_node,
> pdev->dev.of_node is representing your controller not the NAND chip.

I should also patch DTS to add a subnode which is connected to NAND
controller, as your comments on
[PATCH v6 2/2] dt-bindings: mtd: Document Macronix raw NAND controller 
bindings

right ?

> 
> > +   nand_chip->priv = nfc;
> > +   nfc->dev = &pdev->dev;
> > +   nfc->priv = nand_chip;
> > +
> > +   nfc->controller.ops = &mxic_nand_controller_ops;
> > +   nand_controller_init(&nfc->controller);
> > +   nand_chip->controller = &nfc->controller;
> > +
> > +   mxic_nfc_hw_init(nfc);
> > +
> > +   err = nand_scan(nand_chip, 1);
> > +   if (err)
> > +      goto fail;
> > +
> > +   err = mtd_device_register(mtd, NULL, 0);
> > +   if (err)
> > +      goto fail;
> > +
> > +   platform_set_drvdata(pdev, nfc);
> > +   return 0;
> > +
> > +fail:
> > +   mxic_nfc_clk_disable(nfc);
> 
> Looks like you never call mxic_nfc_clk_enable(), which means you'll end
> up with unbalanced prepare/enable counts. Also not sure how that can
> work unless the bootloader takes care of enabling the clks for you.

mxic_nfc_set_freq() will do that.


thanks for your time and review.

best regards,
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
