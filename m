Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 125631E2D51
	for <lists+linux-mtd@lfdr.de>; Tue, 26 May 2020 21:23:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TBzyEsEWWlHgnV9trxAo0r1lYmloP6Znw4ci0hcpq/M=; b=HARaNCwWTDim8x
	vMISV7rsxR6m7zow096iZgk9dX6NLzEL4PsCy5FDBPtZg53bWGVHus2zdcPoU223U5bEoTfYSmSOy
	gHLc4M7SQZpm1wW7kzHvDu4PB25VaEBXOLERz/In4xQ8qWQepA98USzd92qNyRVqIHpeBlGaRxj1E
	r6yho+f9e/BM68MO4Cyr19pt5QToxYSFLkAYvACasgBJv/qAxnlEKdSFi6DK0IEpv0HYvs0FMJ2gG
	RRXe+8IHQgZtGpBzviM5OVL1XMjBMh3vo7GFAm8eBu+KQXlJrNZ8PmcfslV2LyfLqNYXOT1FPoJ+B
	VMTKGjIZ8jlnIuZPKcZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdfAu-0000Zp-Vh; Tue, 26 May 2020 19:23:45 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdf5N-0001fh-N7
 for linux-mtd@lists.infradead.org; Tue, 26 May 2020 19:18:04 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 6EDD8240007;
 Tue, 26 May 2020 19:17:59 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v5 21/28] mtd: rawnand: Introduce
 nand_choose_best_sdr_timings()
Date: Tue, 26 May 2020 21:17:18 +0200
Message-Id: <20200526191725.7591-22-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200526191725.7591-1-miquel.raynal@bootlin.com>
References: <20200526191725.7591-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_121802_145517_9C0E4B8C 
X-CRM114-Status: GOOD (  18.62  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Rickard Andersson <rickaran@axis.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Extract the logic out of nand_choose_data_interface() to create a
public helper that can be reused by manufacturer drivers. Add the
possibility to provide a specific set of timings.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/internals.h |   3 +
 drivers/mtd/nand/raw/nand_base.c | 104 +++++++++++++++++++------------
 2 files changed, 66 insertions(+), 41 deletions(-)

diff --git a/drivers/mtd/nand/raw/internals.h b/drivers/mtd/nand/raw/internals.h
index c7357ae86eeb..5c49c4d1e231 100644
--- a/drivers/mtd/nand/raw/internals.h
+++ b/drivers/mtd/nand/raw/internals.h
@@ -90,6 +90,9 @@ int onfi_fill_data_interface(struct nand_chip *chip,
 			     int timing_mode);
 unsigned int
 onfi_find_closest_sdr_mode(const struct nand_sdr_timings *spec_timings);
+int nand_choose_best_sdr_timings(struct nand_chip *chip,
+				 struct nand_data_interface *iface,
+				 struct nand_sdr_timings *spec_timings);
 int nand_get_features(struct nand_chip *chip, int addr, u8 *subfeature_param);
 int nand_set_features(struct nand_chip *chip, int addr, u8 *subfeature_param);
 int nand_read_page_raw_notsupp(struct nand_chip *chip, u8 *buf,
diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 6a7edd2e1357..b2e833a8ab9d 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -1003,61 +1003,83 @@ static int nand_setup_data_interface(struct nand_chip *chip, int chipnr)
 	return ret;
 }
 
+/**
+ * nand_choose_best_sdr_timings - Pick up the best SDR timings that both the
+ *                                NAND controller and the NAND chip support
+ * @chip: the NAND chip
+ * @iface: the data interface (can eventually be updated)
+ * @spec_timings: specific timings, when not fitting the ONFI specification
+ *
+ * If specific timings are provided, use them. Otherwise, try to retrieve
+ * supported timing modes from ONFI information. Finally, if the NAND chip does
+ * not follow the ONFI specification, rely on the ->default_timing_mode
+ * specified in the nand_ids table.
+ */
+int nand_choose_best_sdr_timings(struct nand_chip *chip,
+				 struct nand_data_interface *iface,
+				 struct nand_sdr_timings *spec_timings)
+{
+	const struct nand_controller_ops *ops = chip->controller->ops;
+	int best_mode = 0, onfi_modes, mode, ret;
+
+	iface->type = NAND_SDR_IFACE;
+
+	if (spec_timings) {
+		iface->timings.sdr = *spec_timings;
+		iface->timings.mode = onfi_find_closest_sdr_mode(spec_timings);
+
+		/* Verify the controller supports the requested interface */
+		ret = ops->setup_data_interface(chip,
+						NAND_DATA_IFACE_CHECK_ONLY,
+						iface);
+		if (!ret)
+			return ret;
+
+		/* Fallback to slower modes */
+		best_mode = iface->timings.mode;
+	} else {
+		if (chip->parameters.onfi) {
+			onfi_modes = chip->parameters.onfi->async_timing_mode;
+			best_mode = fls(onfi_modes) - 1;
+		} else {
+			best_mode = chip->onfi_timing_mode_default;
+		}
+	}
+
+
+	for (mode = best_mode; mode >= 0; mode--) {
+		ret = onfi_fill_data_interface(chip, iface, NAND_SDR_IFACE,
+					       mode);
+		if (ret)
+			continue;
+
+		ret = ops->setup_data_interface(chip,
+						NAND_DATA_IFACE_CHECK_ONLY,
+						iface);
+		if (!ret)
+			break;
+	}
+
+	return 0;
+}
+
 /**
  * nand_choose_data_interface - find the best data interface and timings
  * @chip: The NAND chip
  *
  * Find the best data interface and NAND timings supported by the chip
  * and the driver.
- * First tries to retrieve supported timing modes from ONFI information,
- * and if the NAND chip does not support ONFI, relies on the
- * ->onfi_timing_mode_default specified in the nand_ids table. After this
- * function nand_chip->data_interface is initialized with the best timing mode
- * available.
+ * After this function nand_chip->data_interface is initialized with the best
+ * timing mode available.
  *
  * Returns 0 for success or negative error code otherwise.
  */
 static int nand_choose_data_interface(struct nand_chip *chip)
 {
-	int modes, mode, ret;
-
 	if (!nand_controller_has_setup_data_iface(chip))
 		return 0;
 
-	/*
-	 * First try to identify the best timings from ONFI parameters and
-	 * if the NAND does not support ONFI, fallback to the default ONFI
-	 * timing mode.
-	 */
-	if (chip->parameters.onfi) {
-		modes = chip->parameters.onfi->async_timing_mode;
-	} else {
-		if (!chip->onfi_timing_mode_default)
-			return 0;
-
-		modes = GENMASK(chip->onfi_timing_mode_default, 0);
-	}
-
-	for (mode = fls(modes) - 1; mode >= 0; mode--) {
-		ret = onfi_fill_data_interface(chip, &chip->data_interface,
-					       NAND_SDR_IFACE, mode);
-		if (ret)
-			continue;
-
-		/*
-		 * Pass NAND_DATA_IFACE_CHECK_ONLY to only check if the
-		 * controller supports the requested timings.
-		 */
-		ret = chip->controller->ops->setup_data_interface(chip,
-						 NAND_DATA_IFACE_CHECK_ONLY,
-						 &chip->data_interface);
-		if (!ret) {
-			chip->onfi_timing_mode_default = mode;
-			break;
-		}
-	}
-
-	return 0;
+	return nand_choose_best_sdr_timings(chip, &chip->data_interface, NULL);
 }
 
 /**
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
