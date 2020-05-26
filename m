Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA5C1B6E8E
	for <lists+linux-mtd@lfdr.de>; Fri, 24 Apr 2020 08:56:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MyOvmAyooKpy9eJsTFsu3hyU7fGaHXZPBOZb8oey8tE=; b=qzcMomfeVAp0AF
	rE1jn0ZhDnDUX+QbPwu+5GZfZS+IZ8KmFXTaEGrh3LWhcAXzgntZBF0z584tpLxYx1a2WStxxjVII
	Ss2hGOOgKDw8B5BcmoxdknXD7fxhz7Aq+Z2Wc5sqYXg/QFNxYsY54ryNn9lkgMx3CGKgEcmrAIOLc
	QuNPrczAu/jD5kIORSSyt35/9XVfp2WXvqPYu2jw1XmvjxZYv8ak+k+gzpTkJIfjbcaWJnuqC9DuG
	3dGlMxUsBuxWkNbF/G0sfCHkJzF6scp6nHy7/gZuyIY433IEgCiERZVwnexz2fNr7cFxehOaW1lyJ
	prk/Nsa6rzXoRW7pMgkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRsGP-0003Fx-R7; Fri, 24 Apr 2020 06:56:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRsGG-0003FO-I5
 for linux-mtd@lists.infradead.org; Fri, 24 Apr 2020 06:56:33 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jRsGD-0003xe-0V; Fri, 24 Apr 2020 08:56:29 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jRsGB-00028y-JA; Fri, 24 Apr 2020 08:56:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-mtd@lists.infradead.org
Subject: [PATCH v3] mtd: spi-nor: Add support for Cypress cy15x104q
Date: Fri, 24 Apr 2020 08:56:26 +0200
Message-Id: <20200424065626.8196-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mtd@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_235632_598829_D6E9AFED 
X-CRM114-Status: GOOD (  13.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Sascha Hauer <s.hauer@pengutronix.de>,
 kernel@pengutronix.de, Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The Cypress cy15b104q and cy15v104q are 4Mbit serial SPI F-RAM devices.
Add support for them to the spi-nor driver.

The actual Device ID of this chip is 7f 7f 7f 7f 7f 7f c2 2c 04. That is
six times the continuation code 7f followed by c2 for Ramtron.
Unfortunately the chip sends the Device ID in reversed order, so the
continuation code is not at the beginning, but instead at the end. Even
more unfortunate is that when reading further the chip sends more 7f
codes which means we are not even able to count the continuation codes.
We can only hope that this reversed Device ID will never match any other
devices ID.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---

Changes since v2:
- Add explanation of the reversed order of the Device ID to the commit message
Changes since v1:
- Instead of specifying 1024 sectors with a sector size of 512 specify
  512 * 1024 sectos with a sector size of 1. The device has no idea of
  sectors and is not erasable, so a sector size of 1 seems to better
  reflect reality.

 drivers/mtd/spi-nor/spansion.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/spi-nor/spansion.c b/drivers/mtd/spi-nor/spansion.c
index 6756202ace4b..3e8ac602e36b 100644
--- a/drivers/mtd/spi-nor/spansion.c
+++ b/drivers/mtd/spi-nor/spansion.c
@@ -70,6 +70,7 @@ static const struct flash_info spansion_parts[] = {
 	{ "s25fl256l",  INFO(0x016019,      0,  64 * 1024, 512,
 			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
 			     SPI_NOR_4B_OPCODES) },
+	{ "cy15x104q",  INFO6(0x042cc2, 0x7f7f7f, 512 * 1024, 1, SPI_NOR_NO_ERASE) },
 };
 
 static void spansion_post_sfdp_fixups(struct spi_nor *nor)
-- 
2.26.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
