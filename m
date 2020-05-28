Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 716A11E7058
	for <lists+linux-mtd@lfdr.de>; Fri, 29 May 2020 01:23:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=keKLk4f1gPPBar0Wze9E4LiNhMM/ptjNQZzv4uOEwhU=; b=upIfDBFCbLB/rE
	o7BrQuxECGkVhIAJONj8C06ZHVSHu11MGUPEhP6jIZjWatlSy0LvgnLwzgeI5w5o/my2EaTAqQsl4
	7HGIchSNE7pjludpgOQu/gx5u8a+KMhGrxKe1fhLy2Utsr5K06odXPRrPxD1IUYa1blIof+tghL1E
	SBprKGQrXNNuFC0AU24eZoT4WC4KtC5HfI7u+RamjhxwdnCwcbfrGaof2PJyb1EeMHAKmVLKWOtFb
	YGlWwT4FFEunWs0GdKH+rBbbvphOnYmSS8aVMeG/hynTqGLIKpSQsvHdC4NfD2rqRZt1NAd6542zR
	hefuGQFNWEqbqlOqJsww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeRrb-0005h5-46; Thu, 28 May 2020 23:23:03 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeRlV-0006P9-Dh
 for linux-mtd@lists.infradead.org; Thu, 28 May 2020 23:16:51 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 44B45240006;
 Thu, 28 May 2020 23:16:42 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v6 23/30] mtd: rawnand: Introduce
 nand_choose_best_sdr_timings()
Date: Fri, 29 May 2020 01:16:05 +0200
Message-Id: <20200528231612.8958-24-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200528231612.8958-1-miquel.raynal@bootlin.com>
References: <20200528231612.8958-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_161645_810250_31BF98D0 
X-CRM114-Status: GOOD (  18.41  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Rickard Andersson <rickaran@axis.com>, Michal Simek <monstr@monstr.eu>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Extract the logic out of nand_choose_interface() to create a
public helper that can be reused by manufacturer drivers. Add the
possibility to provide a specific set of timings.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/internals.h |   3 +
 drivers/mtd/nand/raw/nand_base.c | 100 +++++++++++++++++++------------
 2 files changed, 64 insertions(+), 39 deletions(-)

diff --git a/drivers/mtd/nand/raw/internals.h b/drivers/mtd/nand/raw/internals.h
index 11415b054d2e..3feff77c7c81 100644
--- a/drivers/mtd/nand/raw/internals.h
+++ b/drivers/mtd/nand/raw/internals.h
@@ -90,6 +90,9 @@ void onfi_fill_interface_config(struct nand_chip *chip,
 				int timing_mode);
 unsigned int
 onfi_find_closest_sdr_mode(const struct nand_sdr_timings *spec_timings);
+int nand_choose_best_sdr_timings(struct nand_chip *chip,
+				 struct nand_interface_config *iface,
+				 struct nand_sdr_timings *spec_timings);
 int nand_get_features(struct nand_chip *chip, int addr, u8 *subfeature_param);
 int nand_set_features(struct nand_chip *chip, int addr, u8 *subfeature_param);
 int nand_read_page_raw_notsupp(struct nand_chip *chip, u8 *buf,
diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 14d003062fa6..28e249beb335 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -1003,59 +1003,81 @@ static int nand_setup_interface(struct nand_chip *chip, int chipnr)
 	return ret;
 }
 
+/**
+ * nand_choose_best_sdr_timings - Pick up the best SDR timings that both the
+ *                                NAND controller and the NAND chip support
+ * @chip: the NAND chip
+ * @iface: the interface configuration (can eventually be updated)
+ * @spec_timings: specific timings, when not fitting the ONFI specification
+ *
+ * If specific timings are provided, use them. Otherwise, try to retrieve
+ * supported timing modes from ONFI information. Finally, if the NAND chip does
+ * not follow the ONFI specification, rely on the ->default_timing_mode
+ * specified in the nand_ids table.
+ */
+int nand_choose_best_sdr_timings(struct nand_chip *chip,
+				 struct nand_interface_config *iface,
+				 struct nand_sdr_timings *spec_timings)
+{
+	const struct nand_controller_ops *ops = chip->controller->ops;
+	int best_mode = 0, mode, ret;
+
+	iface->type = NAND_SDR_IFACE;
+
+	if (spec_timings) {
+		iface->timings.sdr = *spec_timings;
+		iface->timings.mode = onfi_find_closest_sdr_mode(spec_timings);
+
+		/* Verify the controller supports the requested interface */
+		ret = ops->setup_interface(chip, NAND_DATA_IFACE_CHECK_ONLY,
+					   iface);
+		if (!ret)
+			return ret;
+
+		/* Fallback to slower modes */
+		best_mode = iface->timings.mode;
+	} else {
+		if (chip->parameters.onfi) {
+			unsigned int onfi_modes;
+
+			onfi_modes = chip->parameters.onfi->async_timing_mode;
+			best_mode = fls(onfi_modes) - 1;
+		} else {
+			best_mode = chip->onfi_timing_mode_default;
+		}
+	}
+
+
+	for (mode = best_mode; mode >= 0; mode--) {
+		onfi_fill_interface_config(chip, iface, NAND_SDR_IFACE, mode);
+
+		ret = ops->setup_interface(chip, NAND_DATA_IFACE_CHECK_ONLY,
+					   iface);
+		if (!ret)
+			return 0;
+	}
+
+	return 0;
+}
+
 /**
  * nand_choose_interface - find the best data interface and timings
  * @chip: The NAND chip
  *
  * Find the best data interface and NAND timings supported by the chip
  * and the driver.
- * First tries to retrieve supported timing modes from ONFI information,
- * and if the NAND chip does not support ONFI, relies on the
- * ->onfi_timing_mode_default specified in the nand_ids table. After this
- * function nand_chip->interface_ is initialized with the best timing mode
- * available.
+ * After this function nand_chip->data_interface is initialized with the best
+ * timing mode available.
  *
  * Returns 0 for success or negative error code otherwise.
  */
 static int nand_choose_interface(struct nand_chip *chip)
 {
-	int modes, mode, ret;
-
 	if (!nand_controller_can_setup_interface(chip))
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
-		onfi_fill_interface_config(chip, &chip->interface_config,
-					   NAND_SDR_IFACE, mode);
-
-		/*
-		 * Pass NAND_DATA_IFACE_CHECK_ONLY to only check if the
-		 * controller supports the requested timings.
-		 */
-		ret = chip->controller->ops->setup_interface(chip,
-						 NAND_DATA_IFACE_CHECK_ONLY,
-						 &chip->interface_config);
-		if (!ret) {
-			chip->onfi_timing_mode_default = mode;
-			break;
-		}
-	}
-
-	return 0;
+	return nand_choose_best_sdr_timings(chip, &chip->interface_config,
+					    NULL);
 }
 
 /**
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
