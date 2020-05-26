Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3BAD1B7D0E
	for <lists+linux-mtd@lfdr.de>; Fri, 24 Apr 2020 19:38:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KDK/G5SADgJA3PSr0tFjyIapph5yWuwt1mP4JjGzv5Q=; b=oq5nmWUpNkzrg5
	QxwquXmbxj617GR+TcM/KqbS5LZTcngov0SdzO/MLrccmV2+T0mujINw1nlrPHamR5tmHkzrQAkQN
	BjCwxszktPCoh8WJfoiYGMG/RY4sekVf+Z3GrbosYliHjjlRTt+TynCy1nzZ2BQHiKa6Hc9sm6fdS
	4aMcZNRpqillxolz4r7SPhNy1iZaraykZZHfy/ICqKl7G+n8R3k8Xn7ak/ppLnZ5tGxgRt/lJuS3/
	lSSSxxI5mc2hx3O8War51THiUv3JWDceYY1SZlUlvw4hO4HB6i0XD9R0BrDBfczAvXGggh+pDcmam
	Vm0vXA0Fb341wxdK7/IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS2HW-0007T4-1N; Fri, 24 Apr 2020 17:38:30 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS2Fi-000613-BM
 for linux-mtd@lists.infradead.org; Fri, 24 Apr 2020 17:36:40 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 9CB6220007;
 Fri, 24 Apr 2020 17:36:35 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH 02/10] mtd: rawnand: Reorder the nand_chip->options flags
Date: Fri, 24 Apr 2020 19:36:23 +0200
Message-Id: <20200424173631.14311-3-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200424173631.14311-1-miquel.raynal@bootlin.com>
References: <20200424173631.14311-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_103638_663703_C4082EB0 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Cc: Michal Simek <monstr@monstr.eu>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

These flags are in a strange order, reorder the list, add spaces when
it is relevant, pack definitions that are related.

There is no functional change.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 include/linux/mtd/rawnand.h | 69 +++++++++++++++++++------------------
 1 file changed, 36 insertions(+), 33 deletions(-)

diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index c92e7ecebdea..dee4578d2389 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -118,20 +118,25 @@ enum nand_ecc_algo {
 #define NAND_ECC_GENERIC_ERASED_CHECK	BIT(0)
 #define NAND_ECC_MAXIMIZE		BIT(1)
 
-/*
- * When using software implementation of Hamming, we can specify which byte
- * ordering should be used.
- */
-#define NAND_ECC_SOFT_HAMMING_SM_ORDER	BIT(2)
-
 /*
  * Option constants for bizarre disfunctionality and real
  * features.
  */
+
 /* Buswidth is 16 bit */
 #define NAND_BUSWIDTH_16	BIT(1)
+
+/*
+ * When using software implementation of Hamming, we can specify which byte
+ * ordering should be used.
+ */
+#define NAND_ECC_SOFT_HAMMING_SM_ORDER	BIT(2)
+
 /* Chip has cache program function */
 #define NAND_CACHEPRG		BIT(3)
+/* Options valid for Samsung large page devices */
+#define NAND_SAMSUNG_LP_OPTIONS NAND_CACHEPRG
+
 /*
  * Chip requires ready check on read (for auto-incremented sequential read).
  * True only for small page devices; large page devices do not support
@@ -150,6 +155,8 @@ enum nand_ecc_algo {
 
 /* Device supports subpage reads */
 #define NAND_SUBPAGE_READ	BIT(12)
+/* Macros to identify the above */
+#define NAND_HAS_SUBPAGE_READ(chip) ((chip->options & NAND_SUBPAGE_READ))
 
 /*
  * Some MLC NANDs need data scrambling to limit bitflips caused by repeated
@@ -160,32 +167,12 @@ enum nand_ecc_algo {
 /* Device needs 3rd row address cycle */
 #define NAND_ROW_ADDR_3		BIT(14)
 
-/* Options valid for Samsung large page devices */
-#define NAND_SAMSUNG_LP_OPTIONS NAND_CACHEPRG
-
-/* Macros to identify the above */
-#define NAND_HAS_SUBPAGE_READ(chip) ((chip->options & NAND_SUBPAGE_READ))
-
-/*
- * There are different places where the manufacturer stores the factory bad
- * block markers.
- *
- * Position within the block: Each of these pages needs to be checked for a
- * bad block marking pattern.
- */
-#define NAND_BBM_FIRSTPAGE	BIT(24)
-#define NAND_BBM_SECONDPAGE	BIT(25)
-#define NAND_BBM_LASTPAGE	BIT(26)
-
-/* Position within the OOB data of the page */
-#define NAND_BBM_POS_SMALL		5
-#define NAND_BBM_POS_LARGE		0
-
 /* Non chip related options */
 /* This option skips the bbt scan during initialization. */
 #define NAND_SKIP_BBTSCAN	BIT(16)
 /* Chip may not exist, so silence any errors in scan */
 #define NAND_SCAN_SILENT_NODEV	BIT(18)
+
 /*
  * Autodetect nand buswidth with readid/onfi.
  * This suppose the driver will configure the hardware in 8 bits mode
@@ -193,11 +180,12 @@ enum nand_ecc_algo {
  * before calling nand_scan_tail.
  */
 #define NAND_BUSWIDTH_AUTO      BIT(19)
+
 /*
- * This option could be defined by controller drivers to protect against
- * kmap'ed, vmalloc'ed highmem buffers being passed from upper layers
+ * Whether the NAND chip is a boot medium. Drivers might use this information
+ * to select ECC algorithms supported by the boot ROM or similar restrictions.
  */
-#define NAND_USE_BOUNCE_BUFFER	BIT(22)
+#define NAND_IS_BOOT_MEDIUM	BIT(20)
 
 /*
  * In case your controller is implementing ->legacy.cmd_ctrl() and is relying
@@ -210,10 +198,10 @@ enum nand_ecc_algo {
 #define NAND_WAIT_TCCS		BIT(21)
 
 /*
- * Whether the NAND chip is a boot medium. Drivers might use this information
- * to select ECC algorithms supported by the boot ROM or similar restrictions.
+ * This option could be defined by controller drivers to protect against
+ * kmap'ed, vmalloc'ed highmem buffers being passed from upper layers
  */
-#define NAND_IS_BOOT_MEDIUM	BIT(20)
+#define NAND_USE_BOUNCE_BUFFER	BIT(22)
 
 /*
  * Do not try to tweak the timings at runtime. This is needed when the
@@ -222,11 +210,26 @@ enum nand_ecc_algo {
  */
 #define NAND_KEEP_TIMINGS	BIT(23)
 
+/*
+ * There are different places where the manufacturer stores the factory bad
+ * block markers.
+ *
+ * Position within the block: Each of these pages needs to be checked for a
+ * bad block marking pattern.
+ */
+#define NAND_BBM_FIRSTPAGE	BIT(24)
+#define NAND_BBM_SECONDPAGE	BIT(25)
+#define NAND_BBM_LASTPAGE	BIT(26)
+
 /* Cell info constants */
 #define NAND_CI_CHIPNR_MSK	0x03
 #define NAND_CI_CELLTYPE_MSK	0x0C
 #define NAND_CI_CELLTYPE_SHIFT	2
 
+/* Position within the OOB data of the page */
+#define NAND_BBM_POS_SMALL		5
+#define NAND_BBM_POS_LARGE		0
+
 /**
  * struct nand_parameters - NAND generic parameters from the parameter page
  * @model: Model name
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
