Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 448CC1BE33F
	for <lists+linux-mtd@lfdr.de>; Wed, 29 Apr 2020 17:59:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/VRKQFucUNfRSgEDmL4YiCoY658BuWBnUwAKdRXUoj0=; b=S/eM4pAnPU7nUd
	uwWKcHT1gswitL1/IfBEeHPFIPkpsiUhWv7gWyo5HSxxdD+TD6iTtf7G4yxP3Q0LHFZmWXs90+04m
	ZtzH9aCdD5LXwM2Weo+rZmAvtmm9kGnbq1DOLsOsiRiYO84erWpfnDzIua5b6ofi0qtx+meZwxt23
	/kyQXVOt7FzfY8fX54gciazuGMV07Qlfxpbkw3mHdpdUdnW4gJxe1xsXkIfoyWfY/YiRX3zh77ik8
	QDZo1/pxWtwlJphayBWXG28IsWCqVGvX0sL8+rTerwIvqoM3DZJq3MRckHVY+kAZ0FbRieHYI0aa8
	0OpykSzb5PZIRaw2sthg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTp77-0006bb-Nk; Wed, 29 Apr 2020 15:59:09 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTp46-0003uf-GT
 for linux-mtd@lists.infradead.org; Wed, 29 Apr 2020 15:56:04 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 1936820013;
 Wed, 29 Apr 2020 15:55:44 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v2 01/11] mtd: rawnand: Translate obscure bitfields into
 readable macros
Date: Wed, 29 Apr 2020 17:55:30 +0200
Message-Id: <20200429155540.22048-2-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200429155540.22048-1-miquel.raynal@bootlin.com>
References: <20200429155540.22048-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_085602_856454_33E36442 
X-CRM114-Status: GOOD (  11.86  )
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

Use the BIT() macro instead of defining a 8-digit value.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 include/linux/mtd/rawnand.h | 38 ++++++++++++++++++-------------------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index 21873168ba4d..4b58de842340 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -129,36 +129,36 @@ enum nand_ecc_algo {
  * features.
  */
 /* Buswidth is 16 bit */
-#define NAND_BUSWIDTH_16	0x00000002
+#define NAND_BUSWIDTH_16	BIT(1)
 /* Chip has cache program function */
-#define NAND_CACHEPRG		0x00000008
+#define NAND_CACHEPRG		BIT(3)
 /*
  * Chip requires ready check on read (for auto-incremented sequential read).
  * True only for small page devices; large page devices do not support
  * autoincrement.
  */
-#define NAND_NEED_READRDY	0x00000100
+#define NAND_NEED_READRDY	BIT(8)
 
 /* Chip does not allow subpage writes */
-#define NAND_NO_SUBPAGE_WRITE	0x00000200
+#define NAND_NO_SUBPAGE_WRITE	BIT(9)
 
 /* Device is one of 'new' xD cards that expose fake nand command set */
-#define NAND_BROKEN_XD		0x00000400
+#define NAND_BROKEN_XD		BIT(10)
 
 /* Device behaves just like nand, but is readonly */
-#define NAND_ROM		0x00000800
+#define NAND_ROM		BIT(11)
 
 /* Device supports subpage reads */
-#define NAND_SUBPAGE_READ	0x00001000
+#define NAND_SUBPAGE_READ	BIT(12)
 
 /*
  * Some MLC NANDs need data scrambling to limit bitflips caused by repeated
  * patterns.
  */
-#define NAND_NEED_SCRAMBLING	0x00002000
+#define NAND_NEED_SCRAMBLING	BIT(13)
 
 /* Device needs 3rd row address cycle */
-#define NAND_ROW_ADDR_3		0x00004000
+#define NAND_ROW_ADDR_3		BIT(14)
 
 /* Options valid for Samsung large page devices */
 #define NAND_SAMSUNG_LP_OPTIONS NAND_CACHEPRG
@@ -173,9 +173,9 @@ enum nand_ecc_algo {
  * Position within the block: Each of these pages needs to be checked for a
  * bad block marking pattern.
  */
-#define NAND_BBM_FIRSTPAGE		0x01000000
-#define NAND_BBM_SECONDPAGE		0x02000000
-#define NAND_BBM_LASTPAGE		0x04000000
+#define NAND_BBM_FIRSTPAGE	BIT(24)
+#define NAND_BBM_SECONDPAGE	BIT(25)
+#define NAND_BBM_LASTPAGE	BIT(26)
 
 /* Position within the OOB data of the page */
 #define NAND_BBM_POS_SMALL		5
@@ -183,21 +183,21 @@ enum nand_ecc_algo {
 
 /* Non chip related options */
 /* This option skips the bbt scan during initialization. */
-#define NAND_SKIP_BBTSCAN	0x00010000
+#define NAND_SKIP_BBTSCAN	BIT(16)
 /* Chip may not exist, so silence any errors in scan */
-#define NAND_SCAN_SILENT_NODEV	0x00040000
+#define NAND_SCAN_SILENT_NODEV	BIT(18)
 /*
  * Autodetect nand buswidth with readid/onfi.
  * This suppose the driver will configure the hardware in 8 bits mode
  * when calling nand_scan_ident, and update its configuration
  * before calling nand_scan_tail.
  */
-#define NAND_BUSWIDTH_AUTO      0x00080000
+#define NAND_BUSWIDTH_AUTO      BIT(19)
 /*
  * This option could be defined by controller drivers to protect against
  * kmap'ed, vmalloc'ed highmem buffers being passed from upper layers
  */
-#define NAND_USE_BOUNCE_BUFFER	0x00100000
+#define NAND_USE_BOUNCE_BUFFER	BIT(20)
 
 /*
  * In case your controller is implementing ->legacy.cmd_ctrl() and is relying
@@ -207,20 +207,20 @@ enum nand_ecc_algo {
  * If your controller already takes care of this delay, you don't need to set
  * this flag.
  */
-#define NAND_WAIT_TCCS		0x00200000
+#define NAND_WAIT_TCCS		BIT(21)
 
 /*
  * Whether the NAND chip is a boot medium. Drivers might use this information
  * to select ECC algorithms supported by the boot ROM or similar restrictions.
  */
-#define NAND_IS_BOOT_MEDIUM	0x00400000
+#define NAND_IS_BOOT_MEDIUM	BIT(22)
 
 /*
  * Do not try to tweak the timings at runtime. This is needed when the
  * controller initializes the timings on itself or when it relies on
  * configuration done by the bootloader.
  */
-#define NAND_KEEP_TIMINGS	0x00800000
+#define NAND_KEEP_TIMINGS	BIT(23)
 
 /* Cell info constants */
 #define NAND_CI_CHIPNR_MSK	0x03
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
