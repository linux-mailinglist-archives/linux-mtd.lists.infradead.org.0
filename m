Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DCD975A33
	for <lists+linux-mtd@lfdr.de>; Fri, 26 Jul 2019 00:04:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+dj9F0jJ65Kt0XQWm+WV6Psi6wkhiM8vP2XtmNbW/Ag=; b=Gk8MqAFW+9HZz4
	XQ0+ijey16G8E6oDk3bAS+cxs7BezqR8jEBpWbXEr/VbTbQ11YMezsWi6m7wZa2RfzNtBVDG7C4u4
	RYrJ5pw1ysB2bwvklMPyGthTdaDlft7FRyw7lO/neaybQ8xsja30hgawTlqsCTSkRjMVJ7QU9AZ3Q
	As07QKH9Hngv/VF3sViLvTiWpvdCA0GNSFDVE92/ooQdd8kQTx5qRtwR0+2Do293+56BuIQeoyNNp
	lOEBWpwP0LCnGoUpufKFaysIYExTU62TPrVgJNV86z1oxqyWwMoRP5kDXUWVXtaxrajBCiCzslrZa
	Fo4+Xo2Da5LsA9iTqOkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqlqp-0003tM-VO; Thu, 25 Jul 2019 22:04:40 +0000
Received: from outils.crapouillou.net ([89.234.176.41] helo=crapouillou.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqlpf-00031a-6F
 for linux-mtd@lists.infradead.org; Thu, 25 Jul 2019 22:03:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
 s=mail; t=1564092196; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=xjhvAVEZIjFEVMBlMZWhI8GmuRW0A32U8FIR5XEBYDI=;
 b=HRAQkiSA0giwdSJYdyLl5NIa18ENRlOTaQCKOFckOM/FkhmC8Vn6W1t3P3kpOX+DB9A2bv
 bz4wE1oZrO89uu4FGw8jvoQ2Y7fKsOEam9I5G8uinXqHAE2OvWKFYav8p8ZzrkmWfMnHYF
 JoFhi7klBbR4C6W9NiN7fI2B1d80A38=
From: Paul Cercueil <paul@crapouillou.net>
To: Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paul.burton@mips.com>,
 James Hogan <jhogan@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Vinod Koul <vkoul@kernel.org>,
 Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>,
 Lee Jones <lee.jones@linaro.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Sebastian Reichel <sre@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>
Subject: [PATCH 05/11] video/fbdev: Drop JZ4740 driver
Date: Thu, 25 Jul 2019 18:02:09 -0400
Message-Id: <20190725220215.460-6-paul@crapouillou.net>
In-Reply-To: <20190725220215.460-1-paul@crapouillou.net>
References: <20190725220215.460-1-paul@crapouillou.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_150327_676813_165BF284 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
 linux-fbdev@vger.kernel.org, Artur Rojek <contact@artur-rojek.eu>,
 alsa-devel@alsa-project.org, linux-pm@vger.kernel.org,
 linux-mips@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Paul Cercueil <paul@crapouillou.net>, od@zcrc.me,
 linux-mtd@lists.infradead.org, dmaengine@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The JZ4740 fbdev driver has been replaced with the ingenic-drm driver.

Signed-off-by: Paul Cercueil <paul@crapouillou.net>
Tested-by: Artur Rojek <contact@artur-rojek.eu>
---
 drivers/video/fbdev/Kconfig     |   9 -
 drivers/video/fbdev/Makefile    |   1 -
 drivers/video/fbdev/jz4740_fb.c | 690 --------------------------------
 3 files changed, 700 deletions(-)
 delete mode 100644 drivers/video/fbdev/jz4740_fb.c

diff --git a/drivers/video/fbdev/Kconfig b/drivers/video/fbdev/Kconfig
index 6b2de93bd302..6fce711f42c5 100644
--- a/drivers/video/fbdev/Kconfig
+++ b/drivers/video/fbdev/Kconfig
@@ -2211,15 +2211,6 @@ config FB_BROADSHEET
 	  and could also have been called by other names when coupled with
 	  a bridge adapter.
 
-config FB_JZ4740
-	tristate "JZ4740 LCD framebuffer support"
-	depends on FB && MACH_JZ4740
-	select FB_SYS_FILLRECT
-	select FB_SYS_COPYAREA
-	select FB_SYS_IMAGEBLIT
-	help
-	  Framebuffer support for the JZ4740 SoC.
-
 config FB_PUV3_UNIGFX
 	tristate "PKUnity v3 Unigfx framebuffer support"
 	depends on FB && UNICORE32 && ARCH_PUV3
diff --git a/drivers/video/fbdev/Makefile b/drivers/video/fbdev/Makefile
index 7dc4861a93e6..49502d6256cb 100644
--- a/drivers/video/fbdev/Makefile
+++ b/drivers/video/fbdev/Makefile
@@ -117,7 +117,6 @@ obj-$(CONFIG_XEN_FBDEV_FRONTEND)  += xen-fbfront.o
 obj-$(CONFIG_FB_CARMINE)          += carminefb.o
 obj-$(CONFIG_FB_MB862XX)	  += mb862xx/
 obj-$(CONFIG_FB_NUC900)           += nuc900fb.o
-obj-$(CONFIG_FB_JZ4740)		  += jz4740_fb.o
 obj-$(CONFIG_FB_PUV3_UNIGFX)      += fb-puv3.o
 obj-$(CONFIG_FB_HYPERV)		  += hyperv_fb.o
 obj-$(CONFIG_FB_OPENCORES)	  += ocfb.o
diff --git a/drivers/video/fbdev/jz4740_fb.c b/drivers/video/fbdev/jz4740_fb.c
deleted file mode 100644
index 0b6fa25f6924..000000000000
--- a/drivers/video/fbdev/jz4740_fb.c
+++ /dev/null
@@ -1,690 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-/*
- *  Copyright (C) 2009-2010, Lars-Peter Clausen <lars@metafoo.de>
- *	JZ4740 SoC LCD framebuffer driver
- */
-
-#include <linux/kernel.h>
-#include <linux/module.h>
-#include <linux/mutex.h>
-#include <linux/platform_device.h>
-#include <linux/pinctrl/consumer.h>
-
-#include <linux/clk.h>
-#include <linux/delay.h>
-
-#include <linux/console.h>
-#include <linux/fb.h>
-
-#include <linux/dma-mapping.h>
-
-#include <asm/mach-jz4740/jz4740_fb.h>
-
-#define JZ_REG_LCD_CFG		0x00
-#define JZ_REG_LCD_VSYNC	0x04
-#define JZ_REG_LCD_HSYNC	0x08
-#define JZ_REG_LCD_VAT		0x0C
-#define JZ_REG_LCD_DAH		0x10
-#define JZ_REG_LCD_DAV		0x14
-#define JZ_REG_LCD_PS		0x18
-#define JZ_REG_LCD_CLS		0x1C
-#define JZ_REG_LCD_SPL		0x20
-#define JZ_REG_LCD_REV		0x24
-#define JZ_REG_LCD_CTRL		0x30
-#define JZ_REG_LCD_STATE	0x34
-#define JZ_REG_LCD_IID		0x38
-#define JZ_REG_LCD_DA0		0x40
-#define JZ_REG_LCD_SA0		0x44
-#define JZ_REG_LCD_FID0		0x48
-#define JZ_REG_LCD_CMD0		0x4C
-#define JZ_REG_LCD_DA1		0x50
-#define JZ_REG_LCD_SA1		0x54
-#define JZ_REG_LCD_FID1		0x58
-#define JZ_REG_LCD_CMD1		0x5C
-
-#define JZ_LCD_CFG_SLCD			BIT(31)
-#define JZ_LCD_CFG_PS_DISABLE		BIT(23)
-#define JZ_LCD_CFG_CLS_DISABLE		BIT(22)
-#define JZ_LCD_CFG_SPL_DISABLE		BIT(21)
-#define JZ_LCD_CFG_REV_DISABLE		BIT(20)
-#define JZ_LCD_CFG_HSYNCM		BIT(19)
-#define JZ_LCD_CFG_PCLKM		BIT(18)
-#define JZ_LCD_CFG_INV			BIT(17)
-#define JZ_LCD_CFG_SYNC_DIR		BIT(16)
-#define JZ_LCD_CFG_PS_POLARITY		BIT(15)
-#define JZ_LCD_CFG_CLS_POLARITY		BIT(14)
-#define JZ_LCD_CFG_SPL_POLARITY		BIT(13)
-#define JZ_LCD_CFG_REV_POLARITY		BIT(12)
-#define JZ_LCD_CFG_HSYNC_ACTIVE_LOW	BIT(11)
-#define JZ_LCD_CFG_PCLK_FALLING_EDGE	BIT(10)
-#define JZ_LCD_CFG_DE_ACTIVE_LOW	BIT(9)
-#define JZ_LCD_CFG_VSYNC_ACTIVE_LOW	BIT(8)
-#define JZ_LCD_CFG_18_BIT		BIT(7)
-#define JZ_LCD_CFG_PDW			(BIT(5) | BIT(4))
-#define JZ_LCD_CFG_MODE_MASK 0xf
-
-#define JZ_LCD_CTRL_BURST_4		(0x0 << 28)
-#define JZ_LCD_CTRL_BURST_8		(0x1 << 28)
-#define JZ_LCD_CTRL_BURST_16		(0x2 << 28)
-#define JZ_LCD_CTRL_RGB555		BIT(27)
-#define JZ_LCD_CTRL_OFUP		BIT(26)
-#define JZ_LCD_CTRL_FRC_GRAYSCALE_16	(0x0 << 24)
-#define JZ_LCD_CTRL_FRC_GRAYSCALE_4	(0x1 << 24)
-#define JZ_LCD_CTRL_FRC_GRAYSCALE_2	(0x2 << 24)
-#define JZ_LCD_CTRL_PDD_MASK		(0xff << 16)
-#define JZ_LCD_CTRL_EOF_IRQ		BIT(13)
-#define JZ_LCD_CTRL_SOF_IRQ		BIT(12)
-#define JZ_LCD_CTRL_OFU_IRQ		BIT(11)
-#define JZ_LCD_CTRL_IFU0_IRQ		BIT(10)
-#define JZ_LCD_CTRL_IFU1_IRQ		BIT(9)
-#define JZ_LCD_CTRL_DD_IRQ		BIT(8)
-#define JZ_LCD_CTRL_QDD_IRQ		BIT(7)
-#define JZ_LCD_CTRL_REVERSE_ENDIAN	BIT(6)
-#define JZ_LCD_CTRL_LSB_FISRT		BIT(5)
-#define JZ_LCD_CTRL_DISABLE		BIT(4)
-#define JZ_LCD_CTRL_ENABLE		BIT(3)
-#define JZ_LCD_CTRL_BPP_1		0x0
-#define JZ_LCD_CTRL_BPP_2		0x1
-#define JZ_LCD_CTRL_BPP_4		0x2
-#define JZ_LCD_CTRL_BPP_8		0x3
-#define JZ_LCD_CTRL_BPP_15_16		0x4
-#define JZ_LCD_CTRL_BPP_18_24		0x5
-
-#define JZ_LCD_CMD_SOF_IRQ BIT(31)
-#define JZ_LCD_CMD_EOF_IRQ BIT(30)
-#define JZ_LCD_CMD_ENABLE_PAL BIT(28)
-
-#define JZ_LCD_SYNC_MASK 0x3ff
-
-#define JZ_LCD_STATE_DISABLED BIT(0)
-
-struct jzfb_framedesc {
-	uint32_t next;
-	uint32_t addr;
-	uint32_t id;
-	uint32_t cmd;
-} __packed;
-
-struct jzfb {
-	struct fb_info *fb;
-	struct platform_device *pdev;
-	void __iomem *base;
-	struct resource *mem;
-	struct jz4740_fb_platform_data *pdata;
-
-	size_t vidmem_size;
-	void *vidmem;
-	dma_addr_t vidmem_phys;
-	struct jzfb_framedesc *framedesc;
-	dma_addr_t framedesc_phys;
-
-	struct clk *ldclk;
-	struct clk *lpclk;
-
-	unsigned is_enabled:1;
-	struct mutex lock;
-
-	uint32_t pseudo_palette[16];
-};
-
-static const struct fb_fix_screeninfo jzfb_fix = {
-	.id		= "JZ4740 FB",
-	.type		= FB_TYPE_PACKED_PIXELS,
-	.visual		= FB_VISUAL_TRUECOLOR,
-	.xpanstep	= 0,
-	.ypanstep	= 0,
-	.ywrapstep	= 0,
-	.accel		= FB_ACCEL_NONE,
-};
-
-/* Based on CNVT_TOHW macro from skeletonfb.c */
-static inline uint32_t jzfb_convert_color_to_hw(unsigned val,
-	struct fb_bitfield *bf)
-{
-	return (((val << bf->length) + 0x7FFF - val) >> 16) << bf->offset;
-}
-
-static int jzfb_setcolreg(unsigned regno, unsigned red, unsigned green,
-			unsigned blue, unsigned transp, struct fb_info *fb)
-{
-	uint32_t color;
-
-	if (regno >= 16)
-		return -EINVAL;
-
-	color = jzfb_convert_color_to_hw(red, &fb->var.red);
-	color |= jzfb_convert_color_to_hw(green, &fb->var.green);
-	color |= jzfb_convert_color_to_hw(blue, &fb->var.blue);
-	color |= jzfb_convert_color_to_hw(transp, &fb->var.transp);
-
-	((uint32_t *)(fb->pseudo_palette))[regno] = color;
-
-	return 0;
-}
-
-static int jzfb_get_controller_bpp(struct jzfb *jzfb)
-{
-	switch (jzfb->pdata->bpp) {
-	case 18:
-	case 24:
-		return 32;
-	case 15:
-		return 16;
-	default:
-		return jzfb->pdata->bpp;
-	}
-}
-
-static struct fb_videomode *jzfb_get_mode(struct jzfb *jzfb,
-	struct fb_var_screeninfo *var)
-{
-	size_t i;
-	struct fb_videomode *mode = jzfb->pdata->modes;
-
-	for (i = 0; i < jzfb->pdata->num_modes; ++i, ++mode) {
-		if (mode->xres == var->xres && mode->yres == var->yres)
-			return mode;
-	}
-
-	return NULL;
-}
-
-static int jzfb_check_var(struct fb_var_screeninfo *var, struct fb_info *fb)
-{
-	struct jzfb *jzfb = fb->par;
-	struct fb_videomode *mode;
-
-	if (var->bits_per_pixel != jzfb_get_controller_bpp(jzfb) &&
-		var->bits_per_pixel != jzfb->pdata->bpp)
-		return -EINVAL;
-
-	mode = jzfb_get_mode(jzfb, var);
-	if (mode == NULL)
-		return -EINVAL;
-
-	fb_videomode_to_var(var, mode);
-
-	switch (jzfb->pdata->bpp) {
-	case 8:
-		break;
-	case 15:
-		var->red.offset = 10;
-		var->red.length = 5;
-		var->green.offset = 6;
-		var->green.length = 5;
-		var->blue.offset = 0;
-		var->blue.length = 5;
-		break;
-	case 16:
-		var->red.offset = 11;
-		var->red.length = 5;
-		var->green.offset = 5;
-		var->green.length = 6;
-		var->blue.offset = 0;
-		var->blue.length = 5;
-		break;
-	case 18:
-		var->red.offset = 16;
-		var->red.length = 6;
-		var->green.offset = 8;
-		var->green.length = 6;
-		var->blue.offset = 0;
-		var->blue.length = 6;
-		var->bits_per_pixel = 32;
-		break;
-	case 32:
-	case 24:
-		var->transp.offset = 24;
-		var->transp.length = 8;
-		var->red.offset = 16;
-		var->red.length = 8;
-		var->green.offset = 8;
-		var->green.length = 8;
-		var->blue.offset = 0;
-		var->blue.length = 8;
-		var->bits_per_pixel = 32;
-		break;
-	default:
-		break;
-	}
-
-	return 0;
-}
-
-static int jzfb_set_par(struct fb_info *info)
-{
-	struct jzfb *jzfb = info->par;
-	struct jz4740_fb_platform_data *pdata = jzfb->pdata;
-	struct fb_var_screeninfo *var = &info->var;
-	struct fb_videomode *mode;
-	uint16_t hds, vds;
-	uint16_t hde, vde;
-	uint16_t ht, vt;
-	uint32_t ctrl;
-	uint32_t cfg;
-	unsigned long rate;
-
-	mode = jzfb_get_mode(jzfb, var);
-	if (mode == NULL)
-		return -EINVAL;
-
-	if (mode == info->mode)
-		return 0;
-
-	info->mode = mode;
-
-	hds = mode->hsync_len + mode->left_margin;
-	hde = hds + mode->xres;
-	ht = hde + mode->right_margin;
-
-	vds = mode->vsync_len + mode->upper_margin;
-	vde = vds + mode->yres;
-	vt = vde + mode->lower_margin;
-
-	ctrl = JZ_LCD_CTRL_OFUP | JZ_LCD_CTRL_BURST_16;
-
-	switch (pdata->bpp) {
-	case 1:
-		ctrl |= JZ_LCD_CTRL_BPP_1;
-		break;
-	case 2:
-		ctrl |= JZ_LCD_CTRL_BPP_2;
-		break;
-	case 4:
-		ctrl |= JZ_LCD_CTRL_BPP_4;
-		break;
-	case 8:
-		ctrl |= JZ_LCD_CTRL_BPP_8;
-	break;
-	case 15:
-		ctrl |= JZ_LCD_CTRL_RGB555; /* Falltrough */
-	case 16:
-		ctrl |= JZ_LCD_CTRL_BPP_15_16;
-		break;
-	case 18:
-	case 24:
-	case 32:
-		ctrl |= JZ_LCD_CTRL_BPP_18_24;
-		break;
-	default:
-		break;
-	}
-
-	cfg = pdata->lcd_type & 0xf;
-
-	if (!(mode->sync & FB_SYNC_HOR_HIGH_ACT))
-		cfg |= JZ_LCD_CFG_HSYNC_ACTIVE_LOW;
-
-	if (!(mode->sync & FB_SYNC_VERT_HIGH_ACT))
-		cfg |= JZ_LCD_CFG_VSYNC_ACTIVE_LOW;
-
-	if (pdata->pixclk_falling_edge)
-		cfg |= JZ_LCD_CFG_PCLK_FALLING_EDGE;
-
-	if (pdata->date_enable_active_low)
-		cfg |= JZ_LCD_CFG_DE_ACTIVE_LOW;
-
-	if (pdata->lcd_type == JZ_LCD_TYPE_GENERIC_18_BIT)
-		cfg |= JZ_LCD_CFG_18_BIT;
-
-	if (mode->pixclock) {
-		rate = PICOS2KHZ(mode->pixclock) * 1000;
-		mode->refresh = rate / vt / ht;
-	} else {
-		if (pdata->lcd_type == JZ_LCD_TYPE_8BIT_SERIAL)
-			rate = mode->refresh * (vt + 2 * mode->xres) * ht;
-		else
-			rate = mode->refresh * vt * ht;
-
-		mode->pixclock = KHZ2PICOS(rate / 1000);
-	}
-
-	mutex_lock(&jzfb->lock);
-	if (!jzfb->is_enabled)
-		clk_enable(jzfb->ldclk);
-	else
-		ctrl |= JZ_LCD_CTRL_ENABLE;
-
-	switch (pdata->lcd_type) {
-	case JZ_LCD_TYPE_SPECIAL_TFT_1:
-	case JZ_LCD_TYPE_SPECIAL_TFT_2:
-	case JZ_LCD_TYPE_SPECIAL_TFT_3:
-		writel(pdata->special_tft_config.spl, jzfb->base + JZ_REG_LCD_SPL);
-		writel(pdata->special_tft_config.cls, jzfb->base + JZ_REG_LCD_CLS);
-		writel(pdata->special_tft_config.ps, jzfb->base + JZ_REG_LCD_PS);
-		writel(pdata->special_tft_config.ps, jzfb->base + JZ_REG_LCD_REV);
-		break;
-	default:
-		cfg |= JZ_LCD_CFG_PS_DISABLE;
-		cfg |= JZ_LCD_CFG_CLS_DISABLE;
-		cfg |= JZ_LCD_CFG_SPL_DISABLE;
-		cfg |= JZ_LCD_CFG_REV_DISABLE;
-		break;
-	}
-
-	writel(mode->hsync_len, jzfb->base + JZ_REG_LCD_HSYNC);
-	writel(mode->vsync_len, jzfb->base + JZ_REG_LCD_VSYNC);
-
-	writel((ht << 16) | vt, jzfb->base + JZ_REG_LCD_VAT);
-
-	writel((hds << 16) | hde, jzfb->base + JZ_REG_LCD_DAH);
-	writel((vds << 16) | vde, jzfb->base + JZ_REG_LCD_DAV);
-
-	writel(cfg, jzfb->base + JZ_REG_LCD_CFG);
-
-	writel(ctrl, jzfb->base + JZ_REG_LCD_CTRL);
-
-	if (!jzfb->is_enabled)
-		clk_disable_unprepare(jzfb->ldclk);
-
-	mutex_unlock(&jzfb->lock);
-
-	clk_set_rate(jzfb->lpclk, rate);
-	clk_set_rate(jzfb->ldclk, rate * 3);
-
-	return 0;
-}
-
-static void jzfb_enable(struct jzfb *jzfb)
-{
-	uint32_t ctrl;
-
-	clk_prepare_enable(jzfb->ldclk);
-
-	pinctrl_pm_select_default_state(&jzfb->pdev->dev);
-
-	writel(0, jzfb->base + JZ_REG_LCD_STATE);
-
-	writel(jzfb->framedesc->next, jzfb->base + JZ_REG_LCD_DA0);
-
-	ctrl = readl(jzfb->base + JZ_REG_LCD_CTRL);
-	ctrl |= JZ_LCD_CTRL_ENABLE;
-	ctrl &= ~JZ_LCD_CTRL_DISABLE;
-	writel(ctrl, jzfb->base + JZ_REG_LCD_CTRL);
-}
-
-static void jzfb_disable(struct jzfb *jzfb)
-{
-	uint32_t ctrl;
-
-	ctrl = readl(jzfb->base + JZ_REG_LCD_CTRL);
-	ctrl |= JZ_LCD_CTRL_DISABLE;
-	writel(ctrl, jzfb->base + JZ_REG_LCD_CTRL);
-	do {
-		ctrl = readl(jzfb->base + JZ_REG_LCD_STATE);
-	} while (!(ctrl & JZ_LCD_STATE_DISABLED));
-
-	pinctrl_pm_select_sleep_state(&jzfb->pdev->dev);
-
-	clk_disable_unprepare(jzfb->ldclk);
-}
-
-static int jzfb_blank(int blank_mode, struct fb_info *info)
-{
-	struct jzfb *jzfb = info->par;
-
-	switch (blank_mode) {
-	case FB_BLANK_UNBLANK:
-		mutex_lock(&jzfb->lock);
-		if (jzfb->is_enabled) {
-			mutex_unlock(&jzfb->lock);
-			return 0;
-		}
-
-		jzfb_enable(jzfb);
-		jzfb->is_enabled = 1;
-
-		mutex_unlock(&jzfb->lock);
-		break;
-	default:
-		mutex_lock(&jzfb->lock);
-		if (!jzfb->is_enabled) {
-			mutex_unlock(&jzfb->lock);
-			return 0;
-		}
-
-		jzfb_disable(jzfb);
-		jzfb->is_enabled = 0;
-
-		mutex_unlock(&jzfb->lock);
-		break;
-	}
-
-	return 0;
-}
-
-static int jzfb_alloc_devmem(struct jzfb *jzfb)
-{
-	int max_videosize = 0;
-	struct fb_videomode *mode = jzfb->pdata->modes;
-	int i;
-
-	for (i = 0; i < jzfb->pdata->num_modes; ++mode, ++i) {
-		if (max_videosize < mode->xres * mode->yres)
-			max_videosize = mode->xres * mode->yres;
-	}
-
-	max_videosize *= jzfb_get_controller_bpp(jzfb) >> 3;
-
-	jzfb->framedesc = dma_alloc_coherent(&jzfb->pdev->dev,
-					sizeof(*jzfb->framedesc),
-					&jzfb->framedesc_phys, GFP_KERNEL);
-
-	if (!jzfb->framedesc)
-		return -ENOMEM;
-
-	jzfb->vidmem_size = PAGE_ALIGN(max_videosize);
-	jzfb->vidmem = dma_alloc_coherent(&jzfb->pdev->dev,
-					jzfb->vidmem_size,
-					&jzfb->vidmem_phys, GFP_KERNEL);
-
-	if (!jzfb->vidmem)
-		goto err_free_framedesc;
-
-	jzfb->framedesc->next = jzfb->framedesc_phys;
-	jzfb->framedesc->addr = jzfb->vidmem_phys;
-	jzfb->framedesc->id = 0xdeafbead;
-	jzfb->framedesc->cmd = 0;
-	jzfb->framedesc->cmd |= max_videosize / 4;
-
-	return 0;
-
-err_free_framedesc:
-	dma_free_coherent(&jzfb->pdev->dev, sizeof(*jzfb->framedesc),
-				jzfb->framedesc, jzfb->framedesc_phys);
-	return -ENOMEM;
-}
-
-static void jzfb_free_devmem(struct jzfb *jzfb)
-{
-	dma_free_coherent(&jzfb->pdev->dev, jzfb->vidmem_size,
-				jzfb->vidmem, jzfb->vidmem_phys);
-	dma_free_coherent(&jzfb->pdev->dev, sizeof(*jzfb->framedesc),
-				jzfb->framedesc, jzfb->framedesc_phys);
-}
-
-static struct  fb_ops jzfb_ops = {
-	.owner = THIS_MODULE,
-	.fb_check_var = jzfb_check_var,
-	.fb_set_par = jzfb_set_par,
-	.fb_blank = jzfb_blank,
-	.fb_fillrect	= sys_fillrect,
-	.fb_copyarea	= sys_copyarea,
-	.fb_imageblit	= sys_imageblit,
-	.fb_setcolreg = jzfb_setcolreg,
-};
-
-static int jzfb_probe(struct platform_device *pdev)
-{
-	int ret;
-	struct jzfb *jzfb;
-	struct fb_info *fb;
-	struct jz4740_fb_platform_data *pdata = pdev->dev.platform_data;
-	struct resource *mem;
-
-	if (!pdata) {
-		dev_err(&pdev->dev, "Missing platform data\n");
-		return -ENXIO;
-	}
-
-	fb = framebuffer_alloc(sizeof(struct jzfb), &pdev->dev);
-	if (!fb)
-		return -ENOMEM;
-
-	fb->fbops = &jzfb_ops;
-	fb->flags = FBINFO_DEFAULT;
-
-	jzfb = fb->par;
-	jzfb->pdev = pdev;
-	jzfb->pdata = pdata;
-
-	jzfb->ldclk = devm_clk_get(&pdev->dev, "lcd");
-	if (IS_ERR(jzfb->ldclk)) {
-		ret = PTR_ERR(jzfb->ldclk);
-		dev_err(&pdev->dev, "Failed to get lcd clock: %d\n", ret);
-		goto err_framebuffer_release;
-	}
-
-	jzfb->lpclk = devm_clk_get(&pdev->dev, "lcd_pclk");
-	if (IS_ERR(jzfb->lpclk)) {
-		ret = PTR_ERR(jzfb->lpclk);
-		dev_err(&pdev->dev, "Failed to get lcd pixel clock: %d\n", ret);
-		goto err_framebuffer_release;
-	}
-
-	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	jzfb->base = devm_ioremap_resource(&pdev->dev, mem);
-	if (IS_ERR(jzfb->base)) {
-		ret = PTR_ERR(jzfb->base);
-		goto err_framebuffer_release;
-	}
-
-	platform_set_drvdata(pdev, jzfb);
-
-	mutex_init(&jzfb->lock);
-
-	fb_videomode_to_modelist(pdata->modes, pdata->num_modes,
-				 &fb->modelist);
-	fb_videomode_to_var(&fb->var, pdata->modes);
-	fb->var.bits_per_pixel = pdata->bpp;
-	jzfb_check_var(&fb->var, fb);
-
-	ret = jzfb_alloc_devmem(jzfb);
-	if (ret) {
-		dev_err(&pdev->dev, "Failed to allocate video memory\n");
-		goto err_framebuffer_release;
-	}
-
-	fb->fix = jzfb_fix;
-	fb->fix.line_length = fb->var.bits_per_pixel * fb->var.xres / 8;
-	fb->fix.mmio_start = mem->start;
-	fb->fix.mmio_len = resource_size(mem);
-	fb->fix.smem_start = jzfb->vidmem_phys;
-	fb->fix.smem_len =  fb->fix.line_length * fb->var.yres;
-	fb->screen_base = jzfb->vidmem;
-	fb->pseudo_palette = jzfb->pseudo_palette;
-
-	fb_alloc_cmap(&fb->cmap, 256, 0);
-
-	clk_prepare_enable(jzfb->ldclk);
-	jzfb->is_enabled = 1;
-
-	writel(jzfb->framedesc->next, jzfb->base + JZ_REG_LCD_DA0);
-
-	fb->mode = NULL;
-	jzfb_set_par(fb);
-
-	ret = register_framebuffer(fb);
-	if (ret) {
-		dev_err(&pdev->dev, "Failed to register framebuffer: %d\n", ret);
-		goto err_free_devmem;
-	}
-
-	jzfb->fb = fb;
-
-	return 0;
-
-err_free_devmem:
-	fb_dealloc_cmap(&fb->cmap);
-	jzfb_free_devmem(jzfb);
-err_framebuffer_release:
-	framebuffer_release(fb);
-	return ret;
-}
-
-static int jzfb_remove(struct platform_device *pdev)
-{
-	struct jzfb *jzfb = platform_get_drvdata(pdev);
-
-	jzfb_blank(FB_BLANK_POWERDOWN, jzfb->fb);
-
-	fb_dealloc_cmap(&jzfb->fb->cmap);
-	jzfb_free_devmem(jzfb);
-
-	framebuffer_release(jzfb->fb);
-
-	return 0;
-}
-
-#ifdef CONFIG_PM
-
-static int jzfb_suspend(struct device *dev)
-{
-	struct jzfb *jzfb = dev_get_drvdata(dev);
-
-	console_lock();
-	fb_set_suspend(jzfb->fb, 1);
-	console_unlock();
-
-	mutex_lock(&jzfb->lock);
-	if (jzfb->is_enabled)
-		jzfb_disable(jzfb);
-	mutex_unlock(&jzfb->lock);
-
-	return 0;
-}
-
-static int jzfb_resume(struct device *dev)
-{
-	struct jzfb *jzfb = dev_get_drvdata(dev);
-	clk_prepare_enable(jzfb->ldclk);
-
-	mutex_lock(&jzfb->lock);
-	if (jzfb->is_enabled)
-		jzfb_enable(jzfb);
-	mutex_unlock(&jzfb->lock);
-
-	console_lock();
-	fb_set_suspend(jzfb->fb, 0);
-	console_unlock();
-
-	return 0;
-}
-
-static const struct dev_pm_ops jzfb_pm_ops = {
-	.suspend	= jzfb_suspend,
-	.resume		= jzfb_resume,
-	.poweroff	= jzfb_suspend,
-	.restore	= jzfb_resume,
-};
-
-#define JZFB_PM_OPS (&jzfb_pm_ops)
-
-#else
-#define JZFB_PM_OPS NULL
-#endif
-
-static struct platform_driver jzfb_driver = {
-	.probe = jzfb_probe,
-	.remove = jzfb_remove,
-	.driver = {
-		.name = "jz4740-fb",
-		.pm = JZFB_PM_OPS,
-	},
-};
-module_platform_driver(jzfb_driver);
-
-MODULE_LICENSE("GPL");
-MODULE_AUTHOR("Lars-Peter Clausen <lars@metafoo.de>");
-MODULE_DESCRIPTION("JZ4740 SoC LCD framebuffer driver");
-MODULE_ALIAS("platform:jz4740-fb");
-- 
2.21.0.593.g511ec345e18


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
