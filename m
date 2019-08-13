Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3150A8B5C4
	for <lists+linux-mtd@lfdr.de>; Tue, 13 Aug 2019 12:38:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=vbj8nakzMF90cNcZBNqr5zc/K56oIhOWsSb86rMNCpA=; b=MMC
	Q/uwJ8dUXjGtfHNQ5OShv27rszja9bu1+1oba9Tb+Yjtx3Ih5mJDK25XfrjT7RCRrWYBD9VHt5AdU
	pYRY7GVZE/9akxMgxwH32QZ1oMrNAIOPj8TUpz9e+DP+3S/PKXW5tYQnaV8dubcJnAdIr9YWzo2zC
	3rFE9RKV9RoCXYFAdT/uR+/rR+WJ45tasQLMWQVA1vo7PZclewYJ9K9juONA+CtgrTZhIKDoT/JIh
	A55uR7jx6VCVHYhOlBpcMmoue+2MIFLgsrq9IYNLUIS5J1UXIYUQR9NcAJkQK8HGv9TVCnpD+8TIf
	E8SkDWMvo+PtqhntXuyNntYlxqsEAUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxUCb-0003PG-F6; Tue, 13 Aug 2019 10:38:53 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxUCR-0003N0-1t
 for linux-mtd@lists.infradead.org; Tue, 13 Aug 2019 10:38:44 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 7BCD31A00C2;
 Tue, 13 Aug 2019 12:38:39 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 06B701A0300;
 Tue, 13 Aug 2019 12:38:34 +0200 (CEST)
Received: from lsv03124.swis.in-blr01.nxp.com (lsv03124.swis.in-blr01.nxp.com
 [92.120.146.121])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 6AD82402F0;
 Tue, 13 Aug 2019 18:38:27 +0800 (SGT)
From: Ashish Kumar <Ashish.Kumar@nxp.com>
To: tudor.ambarus@microchip.com, marek.vasut@gmail.com, dwmw2@infradead.org,
 computersforpeace@gmail.com, miquel.raynal@bootlin.com, richard@nod.at,
 vigneshr@ti.com, linux-mtd@lists.infradead.org
Subject: [Patch v3] drivers: mtd: spi-nor: Add flash property for mt25qu512a
 and mt35xu02g
Date: Tue, 13 Aug 2019 16:08:25 +0530
Message-Id: <1565692705-27749-1-git-send-email-Ashish.Kumar@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_033843_239296_F5E57212 
X-CRM114-Status: UNSURE (   6.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: Kuldeep Singh <kuldeep.singh@nxp.com>, linux-kernel@vger.kernel.org,
 Ashish Kumar <ashish.kumar@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

mt25qu512a is rebranded after its spinoff from STM, so it is
different only in term of operating frequency, initial JEDEC id
is same as that of n25q512a. In order to avoid any confussion
with respect to name new entry is added.
This flash is tested for Single I/O and QUAD I/O mode on LS1046FRWY.

mt35xu02g is Octal flash supporting Single I/O and QCTAL I/O
and it has been tested on LS1028ARDB

Signed-off-by: Kuldeep Singh <kuldeep.singh@nxp.com>
Signed-off-by: Ashish Kumar <ashish.kumar@nxp.com>
---
v3:
-Reword commits msg
-rebase to top of mtd-linux spi-nor/next
v2:
Incorporate review comments from Vignesh

 drivers/mtd/spi-nor/spi-nor.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 03cc788..97d3de8 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -1988,6 +1988,12 @@ static const struct flash_info spi_nor_ids[] = {
 	{ "n25q128a13",  INFO(0x20ba18, 0, 64 * 1024,  256, SECT_4K | SPI_NOR_QUAD_READ) },
 	{ "n25q256a",    INFO(0x20ba19, 0, 64 * 1024,  512, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
 	{ "n25q256ax1",  INFO(0x20bb19, 0, 64 * 1024,  512, SECT_4K | SPI_NOR_QUAD_READ) },
+
+	/* Micron */
+	{ "mt25qu512a", INFO6(0x20bb20, 0x104400, 64 * 1024, 1024, SECT_4K |
+				USE_FSR | SPI_NOR_DUAL_READ |
+				SPI_NOR_QUAD_READ | SPI_NOR_4B_OPCODES) },
+
 	{ "n25q512a",    INFO(0x20bb20, 0, 64 * 1024, 1024, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },
 	{ "n25q512ax3",  INFO(0x20ba20, 0, 64 * 1024, 1024, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },
 	{ "n25q00",      INFO(0x20ba21, 0, 64 * 1024, 2048, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ | NO_CHIP_ERASE) },
@@ -2003,6 +2009,9 @@ static const struct flash_info spi_nor_ids[] = {
 			SECT_4K | USE_FSR | SPI_NOR_OCTAL_READ |
 			SPI_NOR_4B_OPCODES)
 	},
+	{ "mt35xu02g",  INFO(0x2c5b1c, 0, 128 * 1024, 2048,
+			SECT_4K | USE_FSR | SPI_NOR_OCTAL_READ |
+			SPI_NOR_4B_OPCODES) },
 
 	/* PMC */
 	{ "pm25lv512",   INFO(0,        0, 32 * 1024,    2, SECT_4K_PMC) },
-- 
2.7.4


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
