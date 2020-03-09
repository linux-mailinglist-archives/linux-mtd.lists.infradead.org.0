Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A6A17DB49
	for <lists+linux-mtd@lfdr.de>; Mon,  9 Mar 2020 09:40:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FMEb0h4YoPnHExje+GDMLuSxacedCT3Pr0Qqwy6V/nY=; b=EXQJqWu5h23G5W
	otEAcLRCjnbNlnWGH0HjYTla6fyra2SinZTM8f2yqhREyahvqV972B773eV9sV+c5UvwYRlpx1fua
	U+2h8JkuZ9Viswjg1jQD3vUxOHdjK4SiA2eYuCgI0Hf5Rvynqz+cjwf6APUWK2P4/KswxUDG/VuJh
	DiTmRSuPXFZ4alumPQxN7NZvqCKktvpG4vdihkcdnDMmrtZOql0cz74rv1FhpEAHw5VX16+RzXD6c
	IK5NWRPzUVDPH6Dir+/37N7O8SkfhK+iV4moS+aiwx+BYz9n4YTPzbpbQU0Y1mYy4a2VhJySt7Bg0
	XW1CGbf/dhBjBXz3akWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBDxt-0007cz-5o; Mon, 09 Mar 2020 08:40:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBDxm-0007cV-Qd
 for linux-mtd@lists.infradead.org; Mon, 09 Mar 2020 08:40:40 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jBDxl-0002dw-22; Mon, 09 Mar 2020 09:40:37 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jBDxj-0002V0-0e; Mon, 09 Mar 2020 09:40:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-mtd@lists.infradead.org
Subject: [PATCH v2] mtd: spi-nor: Add support for cy15x104q
Date: Mon,  9 Mar 2020 09:40:33 +0100
Message-Id: <20200309084033.8752-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200305120242.1391-1-s.hauer@pengutronix.de>
References: <20200305120242.1391-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mtd@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_014038_864282_C273EADF 
X-CRM114-Status: GOOD (  11.99  )
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
Cc: Richard Weinberger <richard@nod.at>, Sascha Hauer <s.hauer@pengutronix.de>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The Cypress cy15b104q and cy15v104q are 4Mbit serial SPI F-RAM devices.
Add support for them to the spi-nor driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---

Changes since v1:
- Instead of specifying 1024 sectors with a sector size of 512 specify
  512 * 1024 sectos with a sector size of 1. The device has no idea of
  sectors and is not erasable, so a sector size of 1 seems to better
  reflect reality.

 drivers/mtd/spi-nor/spi-nor.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 4fc632ec18fe..a5c1d684364c 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -2335,6 +2335,9 @@ static const struct flash_info spi_nor_ids[] = {
 
 	{ "at45db081d", INFO(0x1f2500, 0, 64 * 1024, 16, SECT_4K) },
 
+	/* Cypress */
+	{ "cy15x104q",  INFO6(0x042cc2, 0x7f7f7f, 512 * 1024, 1, SPI_NOR_NO_ERASE) },
+
 	/* EON -- en25xxx */
 	{ "en25f32",    INFO(0x1c3116, 0, 64 * 1024,   64, SECT_4K) },
 	{ "en25p32",    INFO(0x1c2016, 0, 64 * 1024,   64, 0) },
-- 
2.25.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
