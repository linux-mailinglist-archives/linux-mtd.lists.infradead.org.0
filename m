Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C08DA1E7B8F
	for <lists+linux-mtd@lfdr.de>; Fri, 29 May 2020 13:20:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CljCeVhMwGsOFXSNJCo0qC9JW3miyvthMeP9qqIW+tE=; b=gefTHRwgHLXbI7
	Pq1gt5LcCtMzyNyrdvAdBftcrvv3Zri+LyQsCXar0EmSwKlN8evL29gMeiAK8xJ//OEsEIIZdnm1P
	+U0abGjdvnjDMg7pDMGjMkIUc8mvxK2yUQuBjehXRo98tRHaggyQu940sgf2udUOm5ss9Nl1i37fK
	N/5c3ngZaRIz3KP61LwK6vwjc9FTuR8yeF24Ze5lt+g4Qcvlrj5fqdDa9DkoyLitLYO5x9Ai+iYr+
	Y2p/gBbRqV4K9H9/h8Cxx9p+X/IU0SuKE8OLEUgMRzFk3T+hJdgZa2VIZlwyiji1EAyYuSzSWBcYC
	mX/IyYqxkeGHc0jLx1+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jed3d-0002kk-3j; Fri, 29 May 2020 11:20:13 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jecxU-0003XZ-P9
 for linux-mtd@lists.infradead.org; Fri, 29 May 2020 11:13:56 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id B794E24000B;
 Fri, 29 May 2020 11:13:49 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v7 21/28] mtd: rawnand: Introduce
 nand_choose_best_sdr_timings()
Date: Fri, 29 May 2020 13:13:15 +0200
Message-Id: <20200529111322.7184-22-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200529111322.7184-1-miquel.raynal@bootlin.com>
References: <20200529111322.7184-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_041353_213843_611B9341 
X-CRM114-Status: GOOD (  17.82  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Michal Simek <monstr@monstr.eu>,
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
 drivers/mtd/nand/raw/internals.h |  3 +
 drivers/mtd/nand/raw/nand_base.c | 95 ++++++++++++++++++++------------
 2 files changed, 62 insertions(+), 36 deletions(-)

diff --git a/drivers/mtd/nand/raw/internals.h b/drivers/mtd/nand/raw/internals.h
index 63c5af436901..5ebfbb89e572 100644
--- a/drivers/mtd/nand/raw/internals.h
+++ b/drivers/mtd/nand/raw/internals.h
@@ -90,6 +90,9 @@ void onfi_fill_interface_config(struct nand_chip *chip,
 				unsigned int timing_mode);
 unsigned int
 onfi_find_closest_sdr_mode(const struct nand_sdr_timings *spec_timings);
+int nand_choose_best_sdr_timings(struct nand_chip *chip,
+				 struct nand_interface_config *iface,
+				 struct nand_sdr_timings *spec_timings);
 int nand_get_features(struct nand_chip *chip, int addr, u8 *subfeature_param);
 int nand_set_features(struct nand_chip *chip, int addr, u8 *subfeature_param);
 int nand_read_page_raw_notsupp(struct nand_chip *chip, u8 *buf,
diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 3bfd71d589cf..956a66fdccb8 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -1005,6 +1005,63 @@ static int nand_setup_interface(struct nand_chip *chip, int chipnr)
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
  * nand_choose_interface_config - find the best data interface and timings
  * @chip: The NAND chip
@@ -1016,48 +1073,14 @@ static int nand_setup_interface(struct nand_chip *chip, int chipnr)
  * ->onfi_timing_mode_default specified in the nand_ids table. After this
  * function nand_chip->interface_ is initialized with the best timing mode
  * available.
- *
- * Returns 0 for success or negative error code otherwise.
  */
 static int nand_choose_interface_config(struct nand_chip *chip)
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
