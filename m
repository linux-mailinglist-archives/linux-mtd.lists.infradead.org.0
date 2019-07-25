Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD58875A2B
	for <lists+linux-mtd@lfdr.de>; Fri, 26 Jul 2019 00:04:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FWRK5+mbWndXeTMSNxL/gMw4pCVP6aVTJo7NiA8jab4=; b=MDJniJ5N9u+MCM
	wU7YjnqEgctivKEckzQXiQPTysl2OlmQsdg+osKRG8Iqdvzip/IcjJuwDFgexebnlq7lgcscR10Vl
	PUVhE+dxoCt/MxYmnZPZ+51eOF6tpkSAorj7oB+YJuIDbmHT1pgHG/EoZtE8eSD89jphiJdB8ZPf+
	CTSeVX/OHRWo55vbB8B+DaCAuwwm/ZUZe8PUuFUyfWJBEmK6ac4XWos20WMVJyqvqcGs75DmGa1lU
	eUXLBqOmy5lwiPyS0REl2af+6TXvPyrss+vAnjopr7lYRFNLWxiHIiIzRlv0OhH7rlO5rOtE09cgl
	mQA9+9z7OBQlfKbgDh1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqlqX-0003dJ-AC; Thu, 25 Jul 2019 22:04:21 +0000
Received: from outils.crapouillou.net ([89.234.176.41] helo=crapouillou.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqlpV-0002jz-Pt
 for linux-mtd@lists.infradead.org; Thu, 25 Jul 2019 22:03:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
 s=mail; t=1564092187; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oTh5425yXCqJXuaiG2LiwB549PtGkNt17YNuvHqHC/0=;
 b=vRUeERQTbUEcJBBZ1i5UD7gFOly4svQz+BjzJb8F8Wi28xvIs5nnGUrtXcjNs/PseSGxPw
 DsNg5L7bVGjc2MI3TKCzHdMwGAkrmdtxj6F4jyn0rjRAQbhnRvEVEO93Gc4srMEC4Ak46F
 xzT0eYXO20oEtKy20FZqPnidIT3YwVg=
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
Subject: [PATCH 04/11] ASoC: jz4740: Drop lb60 board code
Date: Thu, 25 Jul 2019 18:02:08 -0400
Message-Id: <20190725220215.460-5-paul@crapouillou.net>
In-Reply-To: <20190725220215.460-1-paul@crapouillou.net>
References: <20190725220215.460-1-paul@crapouillou.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_150318_258880_D745B6EF 
X-CRM114-Status: GOOD (  11.81  )
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

The board now uses the simple-audio-card driver.

Signed-off-by: Paul Cercueil <paul@crapouillou.net>
Tested-by: Artur Rojek <contact@artur-rojek.eu>
---
 sound/soc/jz4740/Kconfig   |  25 +--------
 sound/soc/jz4740/Makefile  |   5 --
 sound/soc/jz4740/qi_lb60.c | 106 -------------------------------------
 3 files changed, 2 insertions(+), 134 deletions(-)
 delete mode 100644 sound/soc/jz4740/qi_lb60.c

diff --git a/sound/soc/jz4740/Kconfig b/sound/soc/jz4740/Kconfig
index 6b757168693e..e72f826062e9 100644
--- a/sound/soc/jz4740/Kconfig
+++ b/sound/soc/jz4740/Kconfig
@@ -1,30 +1,9 @@
 # SPDX-License-Identifier: GPL-2.0-only
-config SND_JZ4740_SOC
-	tristate "SoC Audio for Ingenic JZ4740 SoC"
-	depends on MIPS || COMPILE_TEST
-	select SND_SOC_GENERIC_DMAENGINE_PCM
-	help
-	  Say Y or M if you want to add support for codecs attached to
-	  the JZ4740 I2S interface. You will also need to select the audio
-	  interfaces to support below.
-
-if SND_JZ4740_SOC
-
 config SND_JZ4740_SOC_I2S
 	tristate "SoC Audio (I2S protocol) for Ingenic JZ4740 SoC"
+	depends on MIPS || COMPILE_TEST
 	depends on HAS_IOMEM
+	select SND_SOC_GENERIC_DMAENGINE_PCM
 	help
 	  Say Y if you want to use I2S protocol and I2S codec on Ingenic JZ4740
 	  based boards.
-
-config SND_JZ4740_SOC_QI_LB60
-	tristate "SoC Audio support for Qi LB60"
-	depends on HAS_IOMEM
-	depends on JZ4740_QI_LB60 || COMPILE_TEST
-	select SND_JZ4740_SOC_I2S
-    select SND_SOC_JZ4740_CODEC
-	help
-	  Say Y if you want to add support for ASoC audio on the Qi LB60 board
-	  a.k.a Qi Ben NanoNote.
-
-endif
diff --git a/sound/soc/jz4740/Makefile b/sound/soc/jz4740/Makefile
index fb10e9ad9ff7..f8701c9b09fe 100644
--- a/sound/soc/jz4740/Makefile
+++ b/sound/soc/jz4740/Makefile
@@ -5,8 +5,3 @@
 snd-soc-jz4740-i2s-objs := jz4740-i2s.o
 
 obj-$(CONFIG_SND_JZ4740_SOC_I2S) += snd-soc-jz4740-i2s.o
-
-# Jz4740 Machine Support
-snd-soc-qi-lb60-objs := qi_lb60.o
-
-obj-$(CONFIG_SND_JZ4740_SOC_QI_LB60) += snd-soc-qi-lb60.o
diff --git a/sound/soc/jz4740/qi_lb60.c b/sound/soc/jz4740/qi_lb60.c
deleted file mode 100644
index 8ef6f41dcfbe..000000000000
--- a/sound/soc/jz4740/qi_lb60.c
+++ /dev/null
@@ -1,106 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * Copyright (C) 2009, Lars-Peter Clausen <lars@metafoo.de>
- */
-
-#include <linux/module.h>
-#include <linux/moduleparam.h>
-#include <linux/timer.h>
-#include <linux/interrupt.h>
-#include <linux/platform_device.h>
-#include <sound/core.h>
-#include <sound/pcm.h>
-#include <sound/soc.h>
-#include <linux/gpio/consumer.h>
-
-struct qi_lb60 {
-	struct gpio_desc *snd_gpio;
-	struct gpio_desc *amp_gpio;
-};
-
-static int qi_lb60_spk_event(struct snd_soc_dapm_widget *widget,
-			     struct snd_kcontrol *ctrl, int event)
-{
-	struct qi_lb60 *qi_lb60 = snd_soc_card_get_drvdata(widget->dapm->card);
-	int on = !SND_SOC_DAPM_EVENT_OFF(event);
-
-	gpiod_set_value_cansleep(qi_lb60->snd_gpio, on);
-	gpiod_set_value_cansleep(qi_lb60->amp_gpio, on);
-
-	return 0;
-}
-
-static const struct snd_soc_dapm_widget qi_lb60_widgets[] = {
-	SND_SOC_DAPM_SPK("Speaker", qi_lb60_spk_event),
-	SND_SOC_DAPM_MIC("Mic", NULL),
-};
-
-static const struct snd_soc_dapm_route qi_lb60_routes[] = {
-	{"Mic", NULL, "MIC"},
-	{"Speaker", NULL, "LOUT"},
-	{"Speaker", NULL, "ROUT"},
-};
-
-SND_SOC_DAILINK_DEFS(hifi,
-	DAILINK_COMP_ARRAY(COMP_CPU("jz4740-i2s")),
-	DAILINK_COMP_ARRAY(COMP_CODEC("jz4740-codec", "jz4740-hifi")),
-	DAILINK_COMP_ARRAY(COMP_PLATFORM("jz4740-i2s")));
-
-static struct snd_soc_dai_link qi_lb60_dai = {
-	.name = "jz4740",
-	.stream_name = "jz4740",
-	.dai_fmt = SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_NB_NF |
-		SND_SOC_DAIFMT_CBM_CFM,
-	SND_SOC_DAILINK_REG(hifi),
-};
-
-static struct snd_soc_card qi_lb60_card = {
-	.name = "QI LB60",
-	.owner = THIS_MODULE,
-	.dai_link = &qi_lb60_dai,
-	.num_links = 1,
-
-	.dapm_widgets = qi_lb60_widgets,
-	.num_dapm_widgets = ARRAY_SIZE(qi_lb60_widgets),
-	.dapm_routes = qi_lb60_routes,
-	.num_dapm_routes = ARRAY_SIZE(qi_lb60_routes),
-	.fully_routed = true,
-};
-
-static int qi_lb60_probe(struct platform_device *pdev)
-{
-	struct qi_lb60 *qi_lb60;
-	struct snd_soc_card *card = &qi_lb60_card;
-
-	qi_lb60 = devm_kzalloc(&pdev->dev, sizeof(*qi_lb60), GFP_KERNEL);
-	if (!qi_lb60)
-		return -ENOMEM;
-
-	qi_lb60->snd_gpio = devm_gpiod_get(&pdev->dev, "snd", GPIOD_OUT_LOW);
-	if (IS_ERR(qi_lb60->snd_gpio))
-		return PTR_ERR(qi_lb60->snd_gpio);
-
-	qi_lb60->amp_gpio = devm_gpiod_get(&pdev->dev, "amp", GPIOD_OUT_LOW);
-	if (IS_ERR(qi_lb60->amp_gpio))
-		return PTR_ERR(qi_lb60->amp_gpio);
-
-	card->dev = &pdev->dev;
-
-	snd_soc_card_set_drvdata(card, qi_lb60);
-
-	return devm_snd_soc_register_card(&pdev->dev, card);
-}
-
-static struct platform_driver qi_lb60_driver = {
-	.driver		= {
-		.name	= "qi-lb60-audio",
-	},
-	.probe		= qi_lb60_probe,
-};
-
-module_platform_driver(qi_lb60_driver);
-
-MODULE_AUTHOR("Lars-Peter Clausen <lars@metafoo.de>");
-MODULE_DESCRIPTION("ALSA SoC QI LB60 Audio support");
-MODULE_LICENSE("GPL v2");
-MODULE_ALIAS("platform:qi-lb60-audio");
-- 
2.21.0.593.g511ec345e18


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
