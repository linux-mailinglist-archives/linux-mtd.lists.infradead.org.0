Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE481E13A9
	for <lists+linux-mtd@lfdr.de>; Mon, 25 May 2020 19:47:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3WEg3rgBE75uB3iwC0kcl9lUzrII3uSovnhEfpAvgD4=; b=uae8fJ5k211KlN
	sbnDjztht62+UfKVBoXTrg4SGNHvjN4MomkZ8J17+htl9oROM4UbSukszdn39AEG+NJDHYFvnN/rI
	2S/sTUGwBMOK7FXM7nARBA2RlYSfDbhU0yDo8YJyjHobSFBQ4EqR+QcZmLASnworvh/yz0cIepDfQ
	tiDDvOV5eL5A2X/O8Fhw28CfrBErf6iIodGBLXCSzMsVbOB8a5G5Y25LjVWeoCJE0oJa32KnyZxXq
	Dy7qJyyy2BoMagNGviqPQbNGeA8lx1Ixf5VmGlnhREeqTKHIxHzhTGfAjWXH+qMXLnUw84xs+A1nF
	TT92sAqVitJd4NJONbTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdHBv-0000Rh-DS; Mon, 25 May 2020 17:47:11 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdH7t-0003I5-M8
 for linux-mtd@lists.infradead.org; Mon, 25 May 2020 17:43:03 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 6896C24000D;
 Mon, 25 May 2020 17:42:59 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v4 14/19] mtd: rawnand: timings: Provide
 onfi_fill_data_interface() with a data interface
Date: Mon, 25 May 2020 19:42:34 +0200
Message-Id: <20200525174239.11349-15-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200525174239.11349-1-miquel.raynal@bootlin.com>
References: <20200525174239.11349-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_104301_994804_3E3BD925 
X-CRM114-Status: GOOD (  13.84  )
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

We rely be default on the data interface which is in the nand_chip
structure but it should be possible to fill any other data interface.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/internals.h    | 1 +
 drivers/mtd/nand/raw/nand_base.c    | 7 ++++---
 drivers/mtd/nand/raw/nand_timings.c | 3 ++-
 3 files changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/nand/raw/internals.h b/drivers/mtd/nand/raw/internals.h
index 347d42c55353..dc84e3b55d48 100644
--- a/drivers/mtd/nand/raw/internals.h
+++ b/drivers/mtd/nand/raw/internals.h
@@ -85,6 +85,7 @@ int nand_markbad_bbm(struct nand_chip *chip, loff_t ofs);
 int nand_erase_nand(struct nand_chip *chip, struct erase_info *instr,
 		    int allowbbt);
 int onfi_fill_data_interface(struct nand_chip *chip,
+			     struct nand_data_interface *iface,
 			     enum nand_data_interface_type type,
 			     int timing_mode);
 int nand_get_features(struct nand_chip *chip, int addr, u8 *subfeature_param);
diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index ac08d1fc710a..776f2d119bad 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -927,7 +927,7 @@ static int nand_reset_data_interface(struct nand_chip *chip, int chipnr)
 	 * timings to timing mode 0.
 	 */
 
-	onfi_fill_data_interface(chip, NAND_SDR_IFACE, 0);
+	onfi_fill_data_interface(chip, &chip->data_interface, NAND_SDR_IFACE, 0);
 	ret = chip->controller->ops->setup_data_interface(chip, chipnr,
 							&chip->data_interface);
 	if (ret)
@@ -1039,7 +1039,8 @@ static int nand_choose_data_interface(struct nand_chip *chip)
 	}
 
 	for (mode = fls(modes) - 1; mode >= 0; mode--) {
-		ret = onfi_fill_data_interface(chip, NAND_SDR_IFACE, mode);
+		ret = onfi_fill_data_interface(chip, &chip->data_interface,
+					       NAND_SDR_IFACE, mode);
 		if (ret)
 			continue;
 
@@ -5248,7 +5249,7 @@ static int nand_scan_ident(struct nand_chip *chip, unsigned int maxchips,
 	mutex_init(&chip->lock);
 
 	/* Enforce the right timings for reset/detection */
-	onfi_fill_data_interface(chip, NAND_SDR_IFACE, 0);
+	onfi_fill_data_interface(chip, &chip->data_interface, NAND_SDR_IFACE, 0);
 
 	ret = nand_dt_init(chip);
 	if (ret)
diff --git a/drivers/mtd/nand/raw/nand_timings.c b/drivers/mtd/nand/raw/nand_timings.c
index a73d934e86f9..ce6bb87db2e8 100644
--- a/drivers/mtd/nand/raw/nand_timings.c
+++ b/drivers/mtd/nand/raw/nand_timings.c
@@ -276,14 +276,15 @@ static const struct nand_data_interface onfi_sdr_timings[] = {
 /**
  * onfi_fill_data_interface - Initialize a data interface from a given ONFI mode
  * @chip: The NAND chip
+ * @iface: The data interface to fill
  * @type: The data interface type
  * @timing_mode: The ONFI timing mode
  */
 int onfi_fill_data_interface(struct nand_chip *chip,
+			     struct nand_data_interface *iface,
 			     enum nand_data_interface_type type,
 			     int timing_mode)
 {
-	struct nand_data_interface *iface = &chip->data_interface;
 	struct onfi_params *onfi = chip->parameters.onfi;
 
 	if (type != NAND_SDR_IFACE)
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
