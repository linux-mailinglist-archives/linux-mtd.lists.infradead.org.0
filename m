Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B49D7141345
	for <lists+linux-mtd@lfdr.de>; Fri, 17 Jan 2020 22:42:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bq/hJvhAM48hasMNF0R9d1gNejR5Cy6ts+QLuKOKpf4=; b=MGz70Fo+ZJh1io
	Yr8hlj15hbfOX+J+uvdQVIy2AtptaqrSZfl5jvNkquCRM8yJDwOEHeh7vYQdSpbXcimy1N5jkRGOh
	u0FRS2TXtT43x7iaYIUVn2843ekcp3fD/4WdkUJhit1DjiYQwfI4IhByg9OKYLC39t2pukR2QpK6O
	T1HAusxZRF7Py8j2dmYUDy3jH/diQQniJ5/mnHqD2NZAS/RRkzjLAuGR6bm9n1LAbbEOGgJxZ9N9g
	UpZXQsG0RWdwO+Ug14oETmZggV0U/DTC+DMT1ibF0Y0jJEwjHTLPg7csf9fwAKS4xYU1H+pKpu0XE
	DqpJLtu9GNmIuPDPnzmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isZOF-0000zB-1h; Fri, 17 Jan 2020 21:42:51 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isZNe-0000iK-GV
 for linux-mtd@lists.infradead.org; Fri, 17 Jan 2020 21:42:16 +0000
Received: from xps13.lan (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id D6D4124000B;
 Fri, 17 Jan 2020 21:42:07 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v4 02/21] mtd: rawnand: Avoid a typedef
Date: Fri, 17 Jan 2020 22:41:32 +0100
Message-Id: <20200117214151.20767-3-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200117214151.20767-1-miquel.raynal@bootlin.com>
References: <20200117214151.20767-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_134214_688745_F22C205A 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: Julien Su <juliensu@mxic.com.tw>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Mason Yang <masonccyang@mxic.com.tw>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

In new code, the use of typedef is discouraged. Turn this one in the
raw NAND core into a regular enumeration.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/mtd/nand/raw/nand_base.c               | 4 ++--
 include/linux/mtd/rawnand.h                    | 6 +++---
 include/linux/platform_data/mtd-davinci.h      | 2 +-
 include/linux/platform_data/mtd-nand-s3c2410.h | 2 +-
 4 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index ce64a2054d4c..c5fc217f452b 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -4861,8 +4861,8 @@ static int of_get_nand_ecc_mode(struct device_node *np)
 
 	/*
 	 * For backward compatibility we support few obsoleted values that don't
-	 * have their mappings into nand_ecc_modes_t anymore (they were merged
-	 * with other enums).
+	 * have their mappings into the nand_ecc_mode enum anymore (they were
+	 * merged with other enums).
 	 */
 	if (!strcasecmp(pm, "soft_bch"))
 		return NAND_ECC_SOFT;
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index 4ab9bccfcde0..cd834e9f7e78 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -83,14 +83,14 @@ struct nand_chip;
 /*
  * Constants for ECC_MODES
  */
-typedef enum {
+enum nand_ecc_mode {
 	NAND_ECC_NONE,
 	NAND_ECC_SOFT,
 	NAND_ECC_HW,
 	NAND_ECC_HW_SYNDROME,
 	NAND_ECC_HW_OOB_FIRST,
 	NAND_ECC_ON_DIE,
-} nand_ecc_modes_t;
+};
 
 enum nand_ecc_algo {
 	NAND_ECC_UNKNOWN,
@@ -351,7 +351,7 @@ static const struct nand_ecc_caps __name = {			\
  * @write_oob:	function to write chip OOB data
  */
 struct nand_ecc_ctrl {
-	nand_ecc_modes_t mode;
+	enum nand_ecc_mode mode;
 	enum nand_ecc_algo algo;
 	int steps;
 	int size;
diff --git a/include/linux/platform_data/mtd-davinci.h b/include/linux/platform_data/mtd-davinci.h
index 08e639e047e5..03e92c71b3fa 100644
--- a/include/linux/platform_data/mtd-davinci.h
+++ b/include/linux/platform_data/mtd-davinci.h
@@ -68,7 +68,7 @@ struct davinci_nand_pdata {		/* platform_data */
 	 * Newer ones also support 4-bit ECC, but are awkward
 	 * using it with large page chips.
 	 */
-	nand_ecc_modes_t	ecc_mode;
+	enum nand_ecc_mode	ecc_mode;
 	u8			ecc_bits;
 
 	/* e.g. NAND_BUSWIDTH_16 */
diff --git a/include/linux/platform_data/mtd-nand-s3c2410.h b/include/linux/platform_data/mtd-nand-s3c2410.h
index deb849bcf0ec..08675b16f9e1 100644
--- a/include/linux/platform_data/mtd-nand-s3c2410.h
+++ b/include/linux/platform_data/mtd-nand-s3c2410.h
@@ -49,7 +49,7 @@ struct s3c2410_platform_nand {
 
 	unsigned int	ignore_unset_ecc:1;
 
-	nand_ecc_modes_t	ecc_mode;
+	enum nand_ecc_mode	ecc_mode;
 
 	int			nr_sets;
 	struct s3c2410_nand_set *sets;
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
