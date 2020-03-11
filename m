Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD46180F74
	for <lists+linux-mtd@lfdr.de>; Wed, 11 Mar 2020 06:09:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4TEaK8w1xNF5tS2kEzKmVd4Mf7sjAe7VL0TjNBw0w5I=; b=aa0r8dDbctTPYk
	F+MggehmlRVlg5zDFlD8e5cxkoVM/r4JSznJjxLMNzaD+l7UL8hzD9HJpcYFRuibNmMQOW6eixkmH
	4QFB/notrK+s+QTJQ296uFyedFf2UUbUWYRGsT5H9k0ITmSH1F3dEJ+ZbP6xF2+K8wBad8uIpItGg
	GQl4KI019ZGl73rUVhsf7HeYwM79zLNBemO/j1kLS+FElxhtZt+5aNBVZfmd3XQgdpMFFlWdPh9N4
	TQ3VnBSzwJb0867dwPvc+lXHOLjmfc2XfcdTIz9KjKKnmT5Pgnu4nF4SFndyPxeUSsoecn64hxc9N
	+h+DZf7gUP2Gk6DoYo8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBtcb-00010s-27; Wed, 11 Mar 2020 05:09:33 +0000
Received: from smtprelay0151.hostedemail.com ([216.40.44.151]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBtaJ-0007LK-Su
 for linux-mtd@lists.infradead.org; Wed, 11 Mar 2020 05:07:15 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay06.hostedemail.com (Postfix) with ESMTP id 69F6618224519;
 Wed, 11 Mar 2020 05:07:10 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:541:800:960:967:973:982:988:989:1042:1260:1311:1314:1345:1359:1437:1515:1535:1544:1711:1730:1747:1777:1792:1801:2393:2525:2560:2563:2682:2685:2859:2902:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3354:3865:3866:3867:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4250:4321:4605:5007:6117:6261:6742:8603:9025:9036:9592:10004:10848:11026:11473:11657:11658:11914:12043:12294:12296:12297:12438:12555:12679:12895:12986:13894:14093:14181:14394:14721:21080:21433:21451:21611:21627:21740:21772:21789:21811:21939:30054,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: cream52_212c176dc7e35
X-Filterd-Recvd-Size: 5395
Received: from joe-laptop.perches.com (unknown [47.151.143.254])
 (Authenticated sender: joe@perches.com)
 by omf16.hostedemail.com (Postfix) with ESMTPA;
 Wed, 11 Mar 2020 05:07:07 +0000 (UTC)
From: Joe Perches <joe@perches.com>
To: Paul Cercueil <paul@crapouillou.net>,
 Harvey Hunt <harveyhuntnexus@gmail.com>
Subject: [PATCH -next 013/491] INGENIC JZ47xx SoCs: Use fallthrough;
Date: Tue, 10 Mar 2020 21:51:27 -0700
Message-Id: <ad408ff8dc4e5fae0884312cb0aa618664e546e5.1583896348.git.joe@perches.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <cover.1583896344.git.joe@perches.com>
References: <cover.1583896344.git.joe@perches.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_220712_096412_B60A0A83 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.151 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.151 listed in wl.mailspike.net]
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Vignesh Raghavendra <vigneshr@ti.com>,
 alsa-devel@alsa-project.org, David Airlie <airlied@linux.ie>,
 Richard Weinberger <richard@nod.at>, Takashi Iwai <tiwai@suse.com>,
 linux-mmc@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 dri-devel@lists.freedesktop.org, Jaroslav Kysela <perex@perex.cz>,
 Mark Brown <broonie@kernel.org>, linux-mtd@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Convert the various uses of fallthrough comments to fallthrough;

Done via script
Link: https://lore.kernel.org/lkml/b56602fcf79f849e733e7b521bb0e17895d390fa.1582230379.git.joe.com/

Signed-off-by: Joe Perches <joe@perches.com>
---
 drivers/gpu/drm/ingenic/ingenic-drm.c           | 2 +-
 drivers/mmc/host/jz4740_mmc.c                   | 6 ++----
 drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c | 2 +-
 drivers/mtd/nand/raw/ingenic/jz4725b_bch.c      | 4 ++--
 drivers/mtd/nand/raw/ingenic/jz4780_bch.c       | 4 ++--
 sound/soc/codecs/jz4770.c                       | 2 +-
 6 files changed, 9 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/ingenic/ingenic-drm.c b/drivers/gpu/drm/ingenic/ingenic-drm.c
index 9dfe7c..8eefe7 100644
--- a/drivers/gpu/drm/ingenic/ingenic-drm.c
+++ b/drivers/gpu/drm/ingenic/ingenic-drm.c
@@ -305,7 +305,7 @@ static void ingenic_drm_crtc_update_ctrl(struct ingenic_drm *priv,
 	switch (finfo->format) {
 	case DRM_FORMAT_XRGB1555:
 		ctrl |= JZ_LCD_CTRL_RGB555;
-		/* fall-through */
+		fallthrough;
 	case DRM_FORMAT_RGB565:
 		ctrl |= JZ_LCD_CTRL_BPP_15_16;
 		break;
diff --git a/drivers/mmc/host/jz4740_mmc.c b/drivers/mmc/host/jz4740_mmc.c
index fbae87..9026af6 100644
--- a/drivers/mmc/host/jz4740_mmc.c
+++ b/drivers/mmc/host/jz4740_mmc.c
@@ -737,8 +737,7 @@ static irqreturn_t jz_mmc_irq_worker(int irq, void *devid)
 			break;
 
 		jz_mmc_prepare_data_transfer(host);
-		/* fall through */
-
+		fallthrough;
 	case JZ4740_MMC_STATE_TRANSFER_DATA:
 		if (host->use_dma) {
 			/* Use DMA if enabled.
@@ -772,8 +771,7 @@ static irqreturn_t jz_mmc_irq_worker(int irq, void *devid)
 			break;
 		}
 		jz4740_mmc_write_irq_reg(host, JZ_MMC_IRQ_DATA_TRAN_DONE);
-		/* fall through */
-
+		fallthrough;
 	case JZ4740_MMC_STATE_SEND_STOP:
 		if (!req->stop)
 			break;
diff --git a/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c b/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c
index 49afeb..935c49 100644
--- a/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c
+++ b/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c
@@ -253,7 +253,7 @@ static int ingenic_nand_attach_chip(struct nand_chip *chip)
 		chip->ecc.hwctl = ingenic_nand_ecc_hwctl;
 		chip->ecc.calculate = ingenic_nand_ecc_calculate;
 		chip->ecc.correct = ingenic_nand_ecc_correct;
-		/* fall through */
+		fallthrough;
 	case NAND_ECC_SOFT:
 		dev_info(nfc->dev, "using %s (strength %d, size %d, bytes %d)\n",
 			 (nfc->ecc) ? "hardware ECC" : "software ECC",
diff --git a/drivers/mtd/nand/raw/ingenic/jz4725b_bch.c b/drivers/mtd/nand/raw/ingenic/jz4725b_bch.c
index 6c852ea..2d0e0a 100644
--- a/drivers/mtd/nand/raw/ingenic/jz4725b_bch.c
+++ b/drivers/mtd/nand/raw/ingenic/jz4725b_bch.c
@@ -145,10 +145,10 @@ static void jz4725b_bch_read_parity(struct ingenic_ecc *bch, u8 *buf,
 	switch (size8) {
 	case 3:
 		dest8[2] = (val >> 16) & 0xff;
-		/* fall-through */
+		fallthrough;
 	case 2:
 		dest8[1] = (val >> 8) & 0xff;
-		/* fall-through */
+		fallthrough;
 	case 1:
 		dest8[0] = val & 0xff;
 		break;
diff --git a/drivers/mtd/nand/raw/ingenic/jz4780_bch.c b/drivers/mtd/nand/raw/ingenic/jz4780_bch.c
index 079266a..d67dbf 100644
--- a/drivers/mtd/nand/raw/ingenic/jz4780_bch.c
+++ b/drivers/mtd/nand/raw/ingenic/jz4780_bch.c
@@ -123,10 +123,10 @@ static void jz4780_bch_read_parity(struct ingenic_ecc *bch, void *buf,
 	switch (size8) {
 	case 3:
 		dest8[2] = (val >> 16) & 0xff;
-		/* fall through */
+		fallthrough;
 	case 2:
 		dest8[1] = (val >> 8) & 0xff;
-		/* fall through */
+		fallthrough;
 	case 1:
 		dest8[0] = val & 0xff;
 		break;
diff --git a/sound/soc/codecs/jz4770.c b/sound/soc/codecs/jz4770.c
index e7cf2c..6e2a91 100644
--- a/sound/soc/codecs/jz4770.c
+++ b/sound/soc/codecs/jz4770.c
@@ -202,7 +202,7 @@ static int jz4770_codec_set_bias_level(struct snd_soc_component *codec,
 				   REG_CR_VIC_SB_SLEEP, REG_CR_VIC_SB_SLEEP);
 		regmap_update_bits(regmap, JZ4770_CODEC_REG_CR_VIC,
 				   REG_CR_VIC_SB, REG_CR_VIC_SB);
-	/* fall-through */
+		fallthrough;
 	default:
 		break;
 	}
-- 
2.24.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
