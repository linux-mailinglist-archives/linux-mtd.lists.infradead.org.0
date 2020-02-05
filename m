Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D11153492
	for <lists+linux-mtd@lfdr.de>; Wed,  5 Feb 2020 16:49:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b2IJF15FHckoKe/zPxirbJU5KiUNTIYTw7dmg+H9hGg=; b=Om2XN8xS7wd0Y8
	R1P+QNC7GweDZCTmhi+WOsMjoQEpBg9rn+zIsD0ghCkYU/RyKP5VCqO2gfGebVoVAZuCRjD9JRxpC
	BL+c2QVlsoQ/Ys+mW946PQXNUBiJo72TBAj9WN1AtEKtXbEWHtRiZww/Xag/qs7CJ6tJ54uHKg5A+
	OO3xmdh/WCR9raKNoi0piGAistrpvxjXGTSF57KTz6LvEZw2YL016dzgwy6c8wzn1pAgiKbr3fVgI
	FcXslEywuwPFxNPa6e9dPH0+vGePaMYB9t8N0pZL4ivWBS9f+NGXyBWXMNjq5oqLh4TJZKvDH4Qtn
	vnncvCV/YKhhYI7a4jkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izMvb-0004mj-DC; Wed, 05 Feb 2020 15:49:23 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izMvS-0004mS-Ek
 for linux-mtd@lists.infradead.org; Wed, 05 Feb 2020 15:49:15 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1izMvO-0001ka-Dx; Wed, 05 Feb 2020 16:49:12 +0100
Date: Wed, 5 Feb 2020 17:48:58 +0200
From: Daniel Golle <daniel@makrotopia.org>
To: linux-mtd@lists.infradead.org
Subject: [PATCH v2] mtd: spi-nor: add support for XT25F128B chip
Message-ID: <20200130085512.GA243814@makrotopia.org>
MIME-Version: 1.0
Content-Disposition: inline
X-Patchwork-Submitter: Daniel Golle <daniel@makrotopia.org>
X-Patchwork-Id: 1231340
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_074914_516965_B645AB26 
X-CRM114-Status: UNSURE (   5.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Eitan Cohen <eitan@neot-semadar.com>, Piotr Dymacz <pepe2k@gmail.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Add XT25F128B made by XTX Technology (Shenzhen) Limited.
This chip supports dual and quad read and uniform 4K-byte erase.
Verified on Teltonika RUT955 which comes with XT25F128B in recent
versions of the device.

Signed-off-by: Daniel Golle <daniel@makrotopia.org>
---
 drivers/mtd/spi-nor/spi-nor.c | 4 ++++
 1 file changed, 4 insertions(+)

--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -1273,6 +1273,9 @@ static const struct flash_info spi_nor_i
 	/* XMC (Wuhan Xinxin Semiconductor Manufacturing Corp.) */
 	{ "XM25QH64A", INFO(0x207017, 0, 64 * 1024, 128, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
 	{ "XM25QH128A", INFO(0x207018, 0, 64 * 1024, 256, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
+
+	/* XTX Technology (Shenzhen) Limited */
+	{ "xt25f128b", INFO(0x0B4018, 0, 64 * 1024, 256, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
 	{ },
 };
 

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
