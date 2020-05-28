Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B5B1E7038
	for <lists+linux-mtd@lfdr.de>; Fri, 29 May 2020 01:20:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sSs21RxdSme+Sb01Jk0aFH5aI3QomW5rE5cQvrDK008=; b=RfFFe44ltJ1Dob
	OxYOwFdOnLg7ZeizGzn64znL0kZKRFphagjHQOhF6NC/8GoDT7ceI4hXJcw6lxORE7Nkfhhs1yetn
	f0bs9/85wtOtEWV4CBp0hbsvKVEG16QdV3b8LjERcEfgYOYEDlfWw1AqLuQYMQyLxM7z0PFkWCW2h
	eamAMiUQVMffwOOdtmxKfSzSWuy8l40cLaafgTFqbsNL159FH1z3unZevq07PDOrh0taLYk2HfAGc
	3/679EcuEYRFLMZlVOIdcV3vx58LexwK3EccQ2/Q4xTeOSXDSdLFWmVOa0GCls55zwISuwSn43lhJ
	+cBHvahoOXhIFtd4LNuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeRpH-0003al-W2; Thu, 28 May 2020 23:20:40 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeRlI-0006DH-Jl
 for linux-mtd@lists.infradead.org; Thu, 28 May 2020 23:16:34 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 19E60240006;
 Thu, 28 May 2020 23:16:30 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v6 13/30] mtd: rawnand: timings: Provide
 onfi_fill_data_interface() with a data interface
Date: Fri, 29 May 2020 01:15:55 +0200
Message-Id: <20200528231612.8958-14-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200528231612.8958-1-miquel.raynal@bootlin.com>
References: <20200528231612.8958-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_161632_936663_4F5A60C2 
X-CRM114-Status: GOOD (  13.64  )
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

We rely be default on the data interface which is in the nand_chip
structure but it should be possible to fill any other data interface.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/mtd/nand/raw/internals.h    | 1 +
 drivers/mtd/nand/raw/nand_base.c    | 7 ++++---
 drivers/mtd/nand/raw/nand_timings.c | 3 ++-
 3 files changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/nand/raw/internals.h b/drivers/mtd/nand/raw/internals.h
index a5e2cec7e301..0f74509abc4c 100644
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
index 1d9cf02d164b..b4de85794e07 100644
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
@@ -1040,7 +1040,8 @@ static int nand_choose_data_interface(struct nand_chip *chip)
 	}
 
 	for (mode = fls(modes) - 1; mode >= 0; mode--) {
-		ret = onfi_fill_data_interface(chip, NAND_SDR_IFACE, mode);
+		ret = onfi_fill_data_interface(chip, &chip->data_interface,
+					       NAND_SDR_IFACE, mode);
 		if (ret)
 			continue;
 
@@ -5182,7 +5183,7 @@ static int nand_scan_ident(struct nand_chip *chip, unsigned int maxchips,
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
