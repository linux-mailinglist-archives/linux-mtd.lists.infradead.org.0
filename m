Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A214703B
	for <lists+linux-mtd@lfdr.de>; Sat, 15 Jun 2019 15:45:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BUTYtyvh4n3GTkS+nIlZy7YH8buf0bcA7rRlXz1MD+g=; b=pp3I+FZbPj99pV
	BVBib8r0zcDk8NJjGBn03SnQYxCanWaSWFR3OR5W6F7VvV4+utlMOLJFi0AGZHd5igGkZVKZa+HTt
	2iKWLDmrN85FhbjDs5sKcOFKH3i24iX+elMs7XwLBKR4FXlQbEkaPT7o+Kgaf9376B9kNJgJ+e4KQ
	3K4OSkP8e72Epsqw8Z6sSsgf7RB7CBNOw1Wsb6cB75GwMqbJ3EnInYM3Djk7qrItvL4zXDzml08AX
	hKmjuXkuln05W7dy7betUoOLBdb6GFmqqdzOQTJjlctxF45EqCDLUlKSeNrq5Sh8f1bk8+LziLlsB
	pl+AWPYhXm6EeSqrXQhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc90C-0001RD-HT; Sat, 15 Jun 2019 13:45:52 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hc902-0001Qj-3G
 for linux-mtd@lists.infradead.org; Sat, 15 Jun 2019 13:45:43 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id AF088C10F934311373F7;
 Sat, 15 Jun 2019 21:45:37 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.439.0; Sat, 15 Jun 2019
 21:45:26 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <miquel.raynal@bootlin.com>, <richard@nod.at>, <dwmw2@infradead.org>,
 <computersforpeace@gmail.com>, <marek.vasut@gmail.com>, <vigneshr@ti.com>,
 <paul@crapouillou.net>, <gregkh@linuxfoundation.org>
Subject: [PATCH] mtd: rawnand: ingenic: Fix build error
Date: Sat, 15 Jun 2019 21:44:30 +0800
Message-ID: <20190615134430.30384-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_064542_359991_2C1798FF 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: YueHaibing <yuehaibing@huawei.com>, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

If MTD_NAND_JZ4780 is y and MTD_NAND_JZ4780_BCH is m,
which select CONFIG_MTD_NAND_INGENIC_ECC to m, building fails:

drivers/mtd/nand/raw/ingenic/ingenic_nand.o: In function `ingenic_nand_remove':
ingenic_nand.c:(.text+0x177): undefined reference to `ingenic_ecc_release'
drivers/mtd/nand/raw/ingenic/ingenic_nand.o: In function `ingenic_nand_ecc_correct':
ingenic_nand.c:(.text+0x2ee): undefined reference to `ingenic_ecc_correct'

Select MTD_NAND_INGENIC_ECC if MTD_NAND_JZ4780 is set

Reported-by: Hulk Robot <hulkci@huawei.com>
Fiexes: 15de8c6efd0e ("mtd: rawnand: ingenic: Separate top-level and SoC specific code")
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/mtd/nand/raw/ingenic/Kconfig | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/raw/ingenic/Kconfig b/drivers/mtd/nand/raw/ingenic/Kconfig
index 19a96ce..d0b1909 100644
--- a/drivers/mtd/nand/raw/ingenic/Kconfig
+++ b/drivers/mtd/nand/raw/ingenic/Kconfig
@@ -9,6 +9,7 @@ config MTD_NAND_JZ4740
 config MTD_NAND_JZ4780
 	tristate "JZ4780 NAND controller"
 	depends on JZ4780_NEMC
+	select MTD_NAND_INGENIC_ECC
 	help
 	  Enables support for NAND Flash connected to the NEMC on JZ4780 SoC
 	  based boards, using the BCH controller for hardware error correction.
@@ -20,7 +21,6 @@ config MTD_NAND_INGENIC_ECC
 
 config MTD_NAND_JZ4740_ECC
 	tristate "Hardware BCH support for JZ4740 SoC"
-	select MTD_NAND_INGENIC_ECC
 	help
 	  Enable this driver to support the Reed-Solomon error-correction
 	  hardware present on the JZ4740 SoC from Ingenic.
@@ -30,7 +30,6 @@ config MTD_NAND_JZ4740_ECC
 
 config MTD_NAND_JZ4725B_BCH
 	tristate "Hardware BCH support for JZ4725B SoC"
-	select MTD_NAND_INGENIC_ECC
 	help
 	  Enable this driver to support the BCH error-correction hardware
 	  present on the JZ4725B SoC from Ingenic.
@@ -40,7 +39,6 @@ config MTD_NAND_JZ4725B_BCH
 
 config MTD_NAND_JZ4780_BCH
 	tristate "Hardware BCH support for JZ4780 SoC"
-	select MTD_NAND_INGENIC_ECC
 	help
 	  Enable this driver to support the BCH error-correction hardware
 	  present on the JZ4780 SoC from Ingenic.
-- 
2.7.4



______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
