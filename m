Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EDB41E76CC
	for <lists+linux-mtd@lfdr.de>; Fri, 29 May 2020 09:37:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wGrv752gZSuOxSOMr4MhA5fO1siV5HKG1AAKwrTAi3I=; b=i5taflOvP4UktyZ2QR/3XkNciz
	Axmkjye62AzOgihs9jqbzOj7HTI2bFDKKMZW3eUlQGqQJjfAU9RhiQIs5GMfsWfk7CSeQ2Mx5D1jQ
	UDzgU9whWXqg5dvMyxYRFTrMou4hh+h2PnlhK0nJ+nJHTOCT9TiIcQTWwNZIOl6n41jMGUvvgXZx/
	pDfHdTwYZbaWv+PTR36CFbk7AbGFEdcZo0rEceaCoA0tJeF6Bec2JXv4wXfjr0XLH4yJVtshciWjf
	altr0Y3dgaA2rhCb+72LP4KbP1kVdyU4JCsJsRHtqPSJXzrMhvyL2Pje5lThMBUJeWWphdyEOqEQU
	8tqvOOjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeZZk-0000sc-Gs; Fri, 29 May 2020 07:37:08 +0000
Received: from twhmllg4.macronix.com ([122.147.135.202])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeZZW-0000qo-Ew
 for linux-mtd@lists.infradead.org; Fri, 29 May 2020 07:36:56 +0000
Received: from localhost.localdomain ([172.17.195.96])
 by TWHMLLG4.macronix.com with ESMTP id 04T7aHpv067318;
 Fri, 29 May 2020 15:36:18 +0800 (GMT-8)
 (envelope-from masonccyang@mxic.com.tw)
From: Mason Yang <masonccyang@mxic.com.tw>
To: broonie@kernel.org, tudor.ambarus@microchip.com, miquel.raynal@bootlin.com,
 richard@nod.at, vigneshr@ti.com, boris.brezillon@collabora.com,
 matthias.bgg@gmail.com
Subject: [PATCH v4 1/7] mtd: spi-nor: sfdp: get octal mode maximum speed from
 BFPT
Date: Fri, 29 May 2020 15:36:09 +0800
Message-Id: <1590737775-4798-2-git-send-email-masonccyang@mxic.com.tw>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1590737775-4798-1-git-send-email-masonccyang@mxic.com.tw>
References: <1590737775-4798-1-git-send-email-masonccyang@mxic.com.tw>
X-MAIL: TWHMLLG4.macronix.com 04T7aHpv067318
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_003654_779635_9D038A7C 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [122.147.135.202 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: juliensu@mxic.com.tw, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-mtd@lists.infradead.org,
 Mason Yang <masonccyang@mxic.com.tw>, p.yadav@ti.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Get maximum operation speed of device in octal mode from
BFPT 20th DWORD.

Signed-off-by: Mason Yang <masonccyang@mxic.com.tw>
---
 drivers/mtd/spi-nor/core.h |  2 ++
 drivers/mtd/spi-nor/sfdp.c | 36 ++++++++++++++++++++++++++++++++++++
 drivers/mtd/spi-nor/sfdp.h |  4 ++++
 3 files changed, 42 insertions(+)

diff --git a/drivers/mtd/spi-nor/core.h b/drivers/mtd/spi-nor/core.h
index 6f2f6b2..7a36b22 100644
--- a/drivers/mtd/spi-nor/core.h
+++ b/drivers/mtd/spi-nor/core.h
@@ -190,6 +190,7 @@ struct spi_nor_locking_ops {
  *
  * @size:		the flash memory density in bytes.
  * @page_size:		the page size of the SPI NOR flash memory.
+ * @octal_max_speed:	maximum operation speed of device in octal mode.
  * @hwcaps:		describes the read and page program hardware
  *			capabilities.
  * @reads:		read capabilities ordered by priority: the higher index
@@ -212,6 +213,7 @@ struct spi_nor_locking_ops {
 struct spi_nor_flash_parameter {
 	u64				size;
 	u32				page_size;
+	u16				octal_max_speed;
 
 	struct spi_nor_hwcaps		hwcaps;
 	struct spi_nor_read_command	reads[SNOR_CMD_READ_MAX];
diff --git a/drivers/mtd/spi-nor/sfdp.c b/drivers/mtd/spi-nor/sfdp.c
index f6038d3..4d13f66 100644
--- a/drivers/mtd/spi-nor/sfdp.c
+++ b/drivers/mtd/spi-nor/sfdp.c
@@ -4,6 +4,7 @@
  * Copyright (C) 2014, Freescale Semiconductor, Inc.
  */
 
+#include <linux/bitfield.h>
 #include <linux/slab.h>
 #include <linux/sort.h>
 #include <linux/mtd/spi-nor.h>
@@ -26,6 +27,12 @@
 #define SFDP_JESD216A_MINOR	5
 #define SFDP_JESD216B_MINOR	6
 
+/* Basic Flash Parameter Table 20th DWORD, Max operation speed of device */
+struct octal_max_speed {
+	u8 idx; /* Bits value */
+	u16 hz; /* MHz */
+};
+
 struct sfdp_header {
 	u32		signature; /* Ox50444653U <=> "SFDP" */
 	u8		minor;
@@ -440,6 +447,22 @@ static int spi_nor_parse_bfpt(struct spi_nor *nor,
 	u32 addr;
 	u16 half;
 	u8 erase_mask;
+	static const struct octal_max_speed max_hz[] = {
+		/* Bits value, MHz */
+		{ 0x0c, 400 },
+		{ 0x0b, 333 },
+		{ 0x0a, 266 },
+		{ 0x09, 250 },
+		{ 0x08, 200 },
+		{ 0x07, 166 },
+		{ 0x06, 133 },
+		{ 0x05, 100 },
+		{ 0x04,  80 },
+		{ 0x03,  66 },
+		{ 0x02,  50 },
+		{ 0x01,  33 },
+	};
+	u8 idx;
 
 	/* JESD216 Basic Flash Parameter Table length is at least 9 DWORDs. */
 	if (bfpt_header->length < BFPT_DWORD_MAX_JESD216)
@@ -604,6 +627,19 @@ static int spi_nor_parse_bfpt(struct spi_nor *nor,
 		return -EINVAL;
 	}
 
+	/* Octal mode max speed */
+	idx = max(FIELD_GET(BFPT_DWORD20_OCTAL_DTR_MAX_SPEED,
+			    bfpt.dwords[BFPT_DWORD(20)]),
+		  FIELD_GET(BFPT_DWORD20_OCTAL_STR_MAX_SPEED,
+			    bfpt.dwords[BFPT_DWORD(20)]));
+
+	for (i = 0; i < ARRAY_SIZE(max_hz); i++) {
+		if (max_hz[i].idx == idx) {
+			params->octal_max_speed = max_hz[i].hz;
+			break;
+		}
+	}
+
 	return spi_nor_post_bfpt_fixups(nor, bfpt_header, &bfpt, params);
 }
 
diff --git a/drivers/mtd/spi-nor/sfdp.h b/drivers/mtd/spi-nor/sfdp.h
index e0a8ded..8ae6d9a 100644
--- a/drivers/mtd/spi-nor/sfdp.h
+++ b/drivers/mtd/spi-nor/sfdp.h
@@ -83,6 +83,10 @@ struct sfdp_bfpt {
 #define BFPT_DWORD15_QER_SR2_BIT1_NO_RD		(0x4UL << 20)
 #define BFPT_DWORD15_QER_SR2_BIT1		(0x5UL << 20) /* Spansion */
 
+#define BFPT_DWORD20_OCTAL_MAX_SPEED_MASK       GENMASK(31, 16)
+#define BFPT_DWORD20_OCTAL_DTR_MAX_SPEED        GENMASK(31, 28)
+#define BFPT_DWORD20_OCTAL_STR_MAX_SPEED        GENMASK(19, 16)
+
 struct sfdp_parameter_header {
 	u8		id_lsb;
 	u8		minor;
-- 
1.9.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
