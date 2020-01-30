Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FBA914D804
	for <lists+linux-mtd@lfdr.de>; Thu, 30 Jan 2020 09:55:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gSJnhMOHUYJEVjFSZIMvxngkOQSaKiPidg8uzL+7cjk=; b=stKlpx0PfVea7a
	2WrKAakePlf4G1jduODJ6rS2tYY/BoEtjn3X4tsLhsCQRsVkdG3W9BAniSCtK6j8dhPyN4amXxxgM
	C9vEGjp23j1bN6pxOhJH0icdW3o408/2EJZb6acKfteQPuogfKLCRLhD3i+mtAQcng/kDawOJ1nDz
	HtJ+u4FPJm9OlGqpxTXIB79cZ6wVKSmCH0aJwDHMs5LzD5AUEEuja5Z0u8srnl57GSQdA0tYHltlO
	keVgGyXjYEz0XYZrpqr7UdGNreSF1yRPmz7mWwcnmKU49BAFSabyjLvNqKzLJq8vYoyS6vfbCJO4A
	7VhDWrZlrnECPaqiWT/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix5c0-00006M-6w; Thu, 30 Jan 2020 08:55:44 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix5bk-00005h-LH
 for linux-mtd@lists.infradead.org; Thu, 30 Jan 2020 08:55:32 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1ix5bg-0006nz-Jo; Thu, 30 Jan 2020 09:55:24 +0100
Date: Thu, 30 Jan 2020 10:55:12 +0200
From: Daniel Golle <daniel@makrotopia.org>
To: linux-mtd@lists.infradead.org
Subject: [PATCH] mtd: spi-nor: Add support for xt25f128 chips
Message-ID: <20200130085512.GA243814@makrotopia.org>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_005530_419738_5758092A 
X-CRM114-Status: UNSURE (   7.10  )
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

Add XT25F128A and XT25F128B made by XTX Technology (Shenzhen) Limited.
Both chips supports dual and quad read and uniform 4K-byte erase.
Verified on Teltonika RUT955 which comes with XT25F128B in recent
versions of the device.

Signed-off-by: Daniel Golle <daniel@makrotopia.org>
---
 drivers/mtd/spi-nor/spi-nor.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 4fc632ec18fe..186412b6c1ad 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -2706,6 +2706,10 @@ static const struct flash_info spi_nor_ids[] = {
 	/* XMC (Wuhan Xinxin Semiconductor Manufacturing Corp.) */
 	{ "XM25QH64A", INFO(0x207017, 0, 64 * 1024, 128, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
 	{ "XM25QH128A", INFO(0x207018, 0, 64 * 1024, 256, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
+
+	/* XTX Technology (Shenzhen) Limited */
+	{ "xt25f128a", INFO(0x207018, 0, 64 * 1024, 256, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
+	{ "xt25f128b", INFO(0x0B4018, 0, 64 * 1024, 256, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
 	{ },
 };
 
-- 
2.25.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
