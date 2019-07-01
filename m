Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D18BF4A7E7
	for <lists+linux-mtd@lfdr.de>; Tue, 18 Jun 2019 19:09:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=La2CWHR6Ufwp05C49s1FUOtw2C0QrOTz/pmeMlgZD4o=; b=NQPQZv5v2oksDb
	E3Gjd/5pCfhL22/X+Wa9KrLBE2zO5tuhb2azRvtp6H4XDACF+aI6S/l8pQvmKhHOSgNdKkQ1qthgw
	6LP2wCjqyqzzLkhWChRRhJkgI46/sZQhYj4E2cuJ0HIt1+yJQV9i/o8Ao9U/y0Vum7S8euihpvKmr
	2CE+wDLYlvkjDGWclilX5LMfDRoDaejZruEGwtR0a6zAzq5LMfEq5DiMlW3RW6jad36A9ddTJ14QF
	/mn+xwqWPA01PH1XW/OZbDx8LEjc8iMgMEcMnBCambdjAGzb6Euj+kdZkSHeMuwaM4b0/db+WVD2P
	8k/eeb02pfkQkulYIBvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdHbT-0007jq-RL; Tue, 18 Jun 2019 17:09:03 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdHbI-0007it-SX
 for linux-mtd@lists.infradead.org; Tue, 18 Jun 2019 17:08:54 +0000
Received: from allycomm.com (unknown [IPv6:2601:647:5401:2210::49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 050ED26F4B;
 Tue, 18 Jun 2019 10:08:20 -0700 (PDT)
From: Jeff Kletsky <lede@allycomm.com>
To: Schrempf Frieder <frieder.schrempf@kontron.de>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>, Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH v2] mtd: spinand: Add initial support for Paragon PN26G0xA
Date: Tue, 18 Jun 2019 10:08:05 -0700
Message-Id: <20190618170805.7187-1-lede@allycomm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_100852_920165_8CCD097A 
X-CRM114-Status: GOOD (  16.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-mtd@lists.infradead.org, Jeff Kletsky <git-commits@allycomm.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Jeff Kletsky <git-commits@allycomm.com>

Add initial support for Paragon Technology
PN26G01Axxxxx and PN26G02Axxxxx SPI NAND

Datasheets available at
http://www.xtxtech.com/upfile/2016082517274590.pdf
http://www.xtxtech.com/upfile/2016082517282329.pdf

Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>
---
 drivers/mtd/nand/spi/Makefile  |   2 +-
 drivers/mtd/nand/spi/core.c    |   1 +
 drivers/mtd/nand/spi/paragon.c | 147 +++++++++++++++++++++++++++++++++
 include/linux/mtd/spinand.h    |   1 +
 4 files changed, 150 insertions(+), 1 deletion(-)
 create mode 100644 drivers/mtd/nand/spi/paragon.c

diff --git a/drivers/mtd/nand/spi/Makefile b/drivers/mtd/nand/spi/Makefile
index 753125082640..9662b9c1d5a9 100644
--- a/drivers/mtd/nand/spi/Makefile
+++ b/drivers/mtd/nand/spi/Makefile
@@ -1,3 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0
-spinand-objs := core.o gigadevice.o macronix.o micron.o toshiba.o winbond.o
+spinand-objs := core.o gigadevice.o macronix.o micron.o paragon.o toshiba.o winbond.o
 obj-$(CONFIG_MTD_SPI_NAND) += spinand.o
diff --git a/drivers/mtd/nand/spi/core.c b/drivers/mtd/nand/spi/core.c
index 556bfdb34455..f0f3528aab8f 100644
--- a/drivers/mtd/nand/spi/core.c
+++ b/drivers/mtd/nand/spi/core.c
@@ -757,6 +757,7 @@ static const struct spinand_manufacturer *spinand_manufacturers[] = {
 	&gigadevice_spinand_manufacturer,
 	&macronix_spinand_manufacturer,
 	&micron_spinand_manufacturer,
+	&paragon_spinand_manufacturer,
 	&toshiba_spinand_manufacturer,
 	&winbond_spinand_manufacturer,
 };
diff --git a/drivers/mtd/nand/spi/paragon.c b/drivers/mtd/nand/spi/paragon.c
new file mode 100644
index 000000000000..52307681cbd0
--- /dev/null
+++ b/drivers/mtd/nand/spi/paragon.c
@@ -0,0 +1,147 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 Jeff Kletsky
+ *
+ * Author: Jeff Kletsky <git-commits@allycomm.com>
+ */
+
+#include <linux/device.h>
+#include <linux/kernel.h>
+#include <linux/mtd/spinand.h>
+
+
+#define SPINAND_MFR_PARAGON	0xa1
+
+
+#define PN26G0XA_STATUS_ECC_BITMASK		(3 << 4)
+
+#define PN26G0XA_STATUS_ECC_NONE_DETECTED	(0 << 4)
+#define PN26G0XA_STATUS_ECC_1_7_CORRECTED	(1 << 4)
+#define PN26G0XA_STATUS_ECC_ERRORED		(2 << 4)
+#define PN26G0XA_STATUS_ECC_8_CORRECTED		(3 << 4)
+
+
+static SPINAND_OP_VARIANTS(read_cache_variants,
+		SPINAND_PAGE_READ_FROM_CACHE_QUADIO_OP(0, 2, NULL, 0),
+		SPINAND_PAGE_READ_FROM_CACHE_X4_OP(0, 1, NULL, 0),
+		SPINAND_PAGE_READ_FROM_CACHE_DUALIO_OP(0, 1, NULL, 0),
+		SPINAND_PAGE_READ_FROM_CACHE_X2_OP(0, 1, NULL, 0),
+		SPINAND_PAGE_READ_FROM_CACHE_OP(true, 0, 1, NULL, 0),
+		SPINAND_PAGE_READ_FROM_CACHE_OP(false, 0, 1, NULL, 0));
+
+static SPINAND_OP_VARIANTS(write_cache_variants,
+		SPINAND_PROG_LOAD_X4(true, 0, NULL, 0),
+		SPINAND_PROG_LOAD(true, 0, NULL, 0));
+
+static SPINAND_OP_VARIANTS(update_cache_variants,
+		SPINAND_PROG_LOAD_X4(false, 0, NULL, 0),
+		SPINAND_PROG_LOAD(false, 0, NULL, 0));
+
+
+static int pn26g0xa_ooblayout_ecc(struct mtd_info *mtd, int section,
+				   struct mtd_oob_region *region)
+{
+	if (section > 3)
+		return -ERANGE;
+
+	region->offset = 6 + (15 * section); /* 4 BBM + 2 user bytes */
+	region->length = 13;
+
+	return 0;
+}
+
+static int pn26g0xa_ooblayout_free(struct mtd_info *mtd, int section,
+				   struct mtd_oob_region *region)
+{
+	if (section > 4)
+		return -ERANGE;
+
+	if (section == 4) {
+		region->offset = 64;
+		region->length = 64;
+	} else {
+		region->offset = 4 + (15 * section);
+		region->length = 2;
+	}
+
+	return 0;
+}
+
+static int pn26g0xa_ecc_get_status(struct spinand_device *spinand,
+				   u8 status)
+{
+	switch (status & PN26G0XA_STATUS_ECC_BITMASK) {
+	case PN26G0XA_STATUS_ECC_NONE_DETECTED:
+		return 0;
+
+	case PN26G0XA_STATUS_ECC_1_7_CORRECTED:
+		return 7;	/* Return upper limit by convention */
+
+	case PN26G0XA_STATUS_ECC_8_CORRECTED:
+		return 8;
+
+	case PN26G0XA_STATUS_ECC_ERRORED:
+		return -EBADMSG;
+
+	default:
+		break;
+	}
+
+	return -EINVAL;
+}
+
+static const struct mtd_ooblayout_ops pn26g0xa_ooblayout = {
+	.ecc = pn26g0xa_ooblayout_ecc,
+	.free = pn26g0xa_ooblayout_free,
+};
+
+
+static const struct spinand_info paragon_spinand_table[] = {
+	SPINAND_INFO("PN26G01A", 0xe1,
+		     NAND_MEMORG(1, 2048, 128, 64, 1024, 21, 1, 1, 1),
+		     NAND_ECCREQ(8, 512),
+		     SPINAND_INFO_OP_VARIANTS(&read_cache_variants,
+					      &write_cache_variants,
+					      &update_cache_variants),
+		     0,
+		     SPINAND_ECCINFO(&pn26g0xa_ooblayout,
+				     pn26g0xa_ecc_get_status)),
+	SPINAND_INFO("PN26G02A", 0xe2,
+		     NAND_MEMORG(1, 2048, 128, 64, 2048, 41, 1, 1, 1),
+		     NAND_ECCREQ(8, 512),
+		     SPINAND_INFO_OP_VARIANTS(&read_cache_variants,
+					      &write_cache_variants,
+					      &update_cache_variants),
+		     0,
+		     SPINAND_ECCINFO(&pn26g0xa_ooblayout,
+				     pn26g0xa_ecc_get_status)),
+};
+
+static int paragon_spinand_detect(struct spinand_device *spinand)
+{
+	u8 *id = spinand->id.data;
+	int ret;
+
+	/* Read ID returns [0][MID][DID] */
+
+	if (id[1] != SPINAND_MFR_PARAGON)
+		return 0;
+
+	ret = spinand_match_and_init(spinand, paragon_spinand_table,
+				     ARRAY_SIZE(paragon_spinand_table),
+				     id[2]);
+	if (ret)
+		return ret;
+
+	return 1;
+}
+
+static const struct spinand_manufacturer_ops paragon_spinand_manuf_ops = {
+	.detect = paragon_spinand_detect,
+};
+
+const struct spinand_manufacturer paragon_spinand_manufacturer = {
+	.id = SPINAND_MFR_PARAGON,
+	.name = "Paragon",
+	.ops = &paragon_spinand_manuf_ops,
+};
diff --git a/include/linux/mtd/spinand.h b/include/linux/mtd/spinand.h
index fbc0423bb4ae..4ea558bd3c46 100644
--- a/include/linux/mtd/spinand.h
+++ b/include/linux/mtd/spinand.h
@@ -227,6 +227,7 @@ struct spinand_manufacturer {
 extern const struct spinand_manufacturer gigadevice_spinand_manufacturer;
 extern const struct spinand_manufacturer macronix_spinand_manufacturer;
 extern const struct spinand_manufacturer micron_spinand_manufacturer;
+extern const struct spinand_manufacturer paragon_spinand_manufacturer;
 extern const struct spinand_manufacturer toshiba_spinand_manufacturer;
 extern const struct spinand_manufacturer winbond_spinand_manufacturer;
 
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
