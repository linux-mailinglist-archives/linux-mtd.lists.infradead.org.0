Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA1401E13AD
	for <lists+linux-mtd@lfdr.de>; Mon, 25 May 2020 19:48:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sncrXGTqdXkCZ0vzlbIym/4R2Wg93Hf7gPil3bmQeB8=; b=sr02hxMSFL7hwX
	xPpH/6MSY9g+Cc5WkMmtdTmK9SuvcRpQ3/wVpQ6CdPCdvJzy7aboH3cxeEAwH3NLPUxIV5/AZNLRB
	l8GVyvLs4YbWiir2mnFlz4/SJn9XdqyRahNB4qzMlUhZe058seKLDYxFqBzc72Rqq/bvgO+lxiw9V
	bhzREBlk/aeHE2k+OSfAveg9Ttt2iHS3PbaAIeq5Id9KldLf5nxmTc2lT/E+t0ui9wENd3liLyJZa
	+CCmUjC/6QjPCMD0OrsxWNj/9zNYwHnJFP+XqFMnhO3ky0TzRQoLCbGYtq06rprkuXPb9sy3Oq4Oz
	CsedzPDp8QUePpHNxEhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdHCh-00019E-Ch; Mon, 25 May 2020 17:47:59 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdH7v-0003Jw-NR
 for linux-mtd@lists.infradead.org; Mon, 25 May 2020 17:43:05 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 27FA5240009;
 Mon, 25 May 2020 17:43:01 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v4 16/19] mtd: rawnand: Introduce nand_choose_best_sdr_iface()
Date: Mon, 25 May 2020 19:42:36 +0200
Message-Id: <20200525174239.11349-17-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200525174239.11349-1-miquel.raynal@bootlin.com>
References: <20200525174239.11349-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_104304_044363_EB0E71E4 
X-CRM114-Status: GOOD (  16.56  )
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
Cc: Rickard Andersson <rickaran@axis.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Add a new helper: given a data interface with a specific set of
timings, check with the controller if this interface can be
supported. If not, fallback to the closest slower ONFI mode.

Extract this logic from nand_choose_data_interface() and use the new
helper instead, so that this code can be reused later.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/nand_base.c | 74 ++++++++++++++++++++------------
 1 file changed, 46 insertions(+), 28 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 776f2d119bad..15e10f045c9f 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -1004,6 +1004,42 @@ static int nand_setup_data_interface(struct nand_chip *chip, int chipnr)
 	return ret;
 }
 
+/**
+ * nand_choose_best_sdr_iface - given a data interface, find the closest
+ *                              mode/timings set for this interface supported
+ *                              by both the NAND controller and the NAND chip
+ * @chip: the NAND chip
+ * @best_iface: the best data interface (can eventually be updated)
+ */
+static int nand_choose_best_sdr_iface(struct nand_chip *chip,
+				      struct nand_data_interface *best_iface)
+{
+	const struct nand_controller_ops *ops = chip->controller->ops;
+	int mode, ret;
+
+	/* Verify the controller supports the requested interface */
+	ret = ops->setup_data_interface(chip, NAND_DATA_IFACE_CHECK_ONLY,
+					best_iface);
+	if (!ret)
+		return ret;
+
+	/* Fallback to slower modes */
+	for (mode = best_iface->timings.mode - 1; mode >= 0; mode--) {
+		ret = onfi_fill_data_interface(chip, best_iface,
+					       NAND_SDR_IFACE, mode);
+		if (ret)
+			continue;
+
+		ret = ops->setup_data_interface(chip,
+						NAND_DATA_IFACE_CHECK_ONLY,
+						best_iface);
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
@@ -1019,7 +1055,7 @@ static int nand_setup_data_interface(struct nand_chip *chip, int chipnr)
  */
 static int nand_choose_data_interface(struct nand_chip *chip)
 {
-	int modes, mode, ret;
+	int best_mode, ret;
 
 	if (!nand_controller_has_setup_data_iface(chip))
 		return 0;
@@ -1029,35 +1065,17 @@ static int nand_choose_data_interface(struct nand_chip *chip)
 	 * if the NAND does not support ONFI, fallback to the default ONFI
 	 * timing mode.
 	 */
-	if (chip->parameters.onfi) {
-		modes = chip->parameters.onfi->async_timing_mode;
-	} else {
-		if (!chip->default_timing_mode)
-			return 0;
+	if (chip->parameters.onfi)
+		best_mode = fls(chip->parameters.onfi->async_timing_mode) - 1;
+	else
+		best_mode = chip->default_timing_mode;
 
-		modes = GENMASK(chip->default_timing_mode, 0);
-	}
+	ret = onfi_fill_data_interface(chip, &chip->data_interface,
+				       NAND_SDR_IFACE, best_mode);
+	if (ret)
+		return ret;
 
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
-			chip->default_timing_mode = mode;
-			break;
-		}
-	}
-
-	return 0;
+	return nand_choose_best_sdr_iface(chip, &chip->data_interface);
 }
 
 /**
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
