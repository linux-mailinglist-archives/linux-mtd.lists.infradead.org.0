Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3EB134358
	for <lists+linux-mtd@lfdr.de>; Wed,  8 Jan 2020 14:06:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JL1Ju+0/YmYaw/aLg0LrvhT4tPXXgnRRi+RAiyg+y10=; b=Nn6ujU/cIs4uJB
	vgu+j6vWJzK+brG3DTuVy7keQq1McKRavNC90dGrDgdFeYn38CVR6f+Rs3S3xZZHKXwGdOZ/o/YnH
	pmfTE2nSvGQFc7sFXBygk2vSZ4WPF7YTwd0n0pfUzjv3UsWEFpEuB4WP17HlI4v5o5lCmuFGn+q3N
	8i+jlLtmPk7uodADMdut/qLQ43CqyXXxc8O8rKYFsB4Gs5DgmLO41AwbSlPtSB/TofDJJ669on9Ho
	NB2HqoNb25Ju/th8gC/qUpm+DETRpf5CzJsSKiGCkT3M/f7ERBYH4ehPOauBlIwEiZsDt++MAb4EJ
	rgYnt9xYRDztdTiJ2zdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipB23-0004wM-FX; Wed, 08 Jan 2020 13:05:55 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipAuO-0004RU-E9; Wed, 08 Jan 2020 12:58:09 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 2cr4Fv0nVmqdhEF6lI/NU45OK1meoSPT8DldnErBFT8aIR60aoIt26+00XTJWRv2J+hy47heF7
 xmyvzng2xBL0YA8sWXtU1ooKgpY8QIfSA49uWtlV9Hbil2irsUxRGN0859ekylemsQlC3rm9Hh
 OOIy/mGII9z2RaKvtUGwGj7zVz4SnuUF1unahVbPXcCx7CiosA5+iQ9VDO/LsOHGA06DAp9WDp
 rarMShttv2xY8A9pvHDllimO3iFfV4DnXA3du5E+OZCoiPo55CqF21wY0TdmtUFhqu9wMNCaKQ
 rdU=
X-IronPort-AV: E=Sophos;i="5.69,410,1571727600"; d="scan'208";a="62569391"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 08 Jan 2020 05:57:59 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 8 Jan 2020 05:57:59 -0700
Received: from m18063-ThinkPad-T460p.microchip.com (10.10.85.251) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 8 Jan 2020 05:57:51 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>, <vkoul@kernel.org>,
 <eugen.hristev@microchip.com>, <jic23@kernel.org>, <knaack.h@gmx.de>,
 <lars@metafoo.de>, <pmeerw@pmeerw.net>, <mchehab@kernel.org>,
 <lee.jones@linaro.org>, <richard.genoud@gmail.com>,
 <radu_nicolae.pirea@upb.ro>, <tudor.ambarus@microchip.com>,
 <miquel.raynal@bootlin.com>, <richard@nod.at>, <vigneshr@ti.com>,
 <wg@grandegger.com>, <mkl@pengutronix.de>, <a.zummo@towertech.it>,
 <broonie@kernel.org>
Subject: [PATCH 15/16] ARM: at91/defconfig: enable MMC_SDHCI_OF_AT91 and
 MICROCHIP_PIT64B
Date: Wed, 8 Jan 2020 14:55:22 +0200
Message-ID: <1578488123-26127-16-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578488123-26127-1-git-send-email-claudiu.beznea@microchip.com>
References: <1578488123-26127-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_045804_996566_9D18F584 
X-CRM114-Status: UNSURE (   6.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-mtd@lists.infradead.org, dmaengine@vger.kernel.org,
 linux-can@vger.kernel.org, Claudiu Beznea <claudiu.beznea@microchip.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Enable MMC_SDHCI_OF_AT91 and MICROCHIP_PIT64B. These are necessary
for SAM9X60.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 arch/arm/configs/at91_dt_defconfig | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/configs/at91_dt_defconfig b/arch/arm/configs/at91_dt_defconfig
index 5c5df8bc0074..f66bb98a5cce 100644
--- a/arch/arm/configs/at91_dt_defconfig
+++ b/arch/arm/configs/at91_dt_defconfig
@@ -160,6 +160,9 @@ CONFIG_USB_AT91=y
 CONFIG_USB_ATMEL_USBA=y
 CONFIG_USB_G_SERIAL=y
 CONFIG_MMC=y
+CONFIG_MMC_SDHCI=y
+CONFIG_MMC_SDHCI_PLTFM=y
+CONFIG_MMC_SDHCI_OF_AT91=y
 CONFIG_MMC_ATMELMCI=y
 CONFIG_MMC_SPI=y
 CONFIG_NEW_LEDS=y
@@ -177,6 +180,7 @@ CONFIG_RTC_DRV_AT91SAM9=y
 CONFIG_DMADEVICES=y
 CONFIG_AT_HDMAC=y
 CONFIG_AT_XDMAC=y
+CONFIG_MICROCHIP_PIT64B=y
 # CONFIG_IOMMU_SUPPORT is not set
 CONFIG_IIO=y
 CONFIG_AT91_ADC=y
-- 
2.7.4


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
