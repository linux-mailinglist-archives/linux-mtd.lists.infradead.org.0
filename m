Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 252D61E7BA1
	for <lists+linux-mtd@lfdr.de>; Fri, 29 May 2020 13:21:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3VQwr5kmvUlrDicNIPlM9n0nzB469wwWlGpfyg3FmXU=; b=pIIkTMsd6PJ0QU
	Y0KAgTfuUnOSwdoA8ba1FwpQr7hpGrM86VbmT91WDZ0Hy2VjB7cJEdPCv3qz2rGWxj21+tMbrqB+k
	nZIm+i/tiouE6em/qKwUVBiSlAa2IuqyPw5Ymr9tdAG5voPIqrp8CzKKHl8fX59+9SIM58zzaEMgf
	lb38YvVtUjKw4N0nnM0ufpzpu3BPqVl21ao3epImhe0FNS5xZZXq863nTYSStyrcPkXR4eZPW87CM
	VWBItMf3X5+JY+4pcNf1MLhPvzmNqXhc5y2V3nSvdx1pOyW9zzmsyI5XqBQ6JHvS+W/f5+hfsx397
	Xk1RKuK1f9wDDj5hRbfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jed52-0006Rs-16; Fri, 29 May 2020 11:21:40 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jecxb-0003dG-MX
 for linux-mtd@lists.infradead.org; Fri, 29 May 2020 11:14:09 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id A0B0E24000B;
 Fri, 29 May 2020 11:13:56 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v7 27/28] mtd: rawnand: Get rid of the default ONFI timing mode
Date: Fri, 29 May 2020 13:13:21 +0200
Message-Id: <20200529111322.7184-28-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200529111322.7184-1-miquel.raynal@bootlin.com>
References: <20200529111322.7184-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_041400_058329_C8D5E9EE 
X-CRM114-Status: GOOD (  14.33  )
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

The ->choose_interface() hook is here for manufacturer drivers to
provide a better timing interface than the default one, this field is
not needed anymore.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/mtd/nand/raw/nand_base.c | 19 ++++---------------
 include/linux/mtd/rawnand.h      |  9 ---------
 2 files changed, 4 insertions(+), 24 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 2f4eba1a1082..753328f106c1 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -1012,10 +1012,8 @@ static int nand_setup_interface(struct nand_chip *chip, int chipnr)
  * @iface: the interface configuration (can eventually be updated)
  * @spec_timings: specific timings, when not fitting the ONFI specification
  *
- * If specific timings are provided, use them. Otherwise, try to retrieve
- * supported timing modes from ONFI information. Finally, if the NAND chip does
- * not follow the ONFI specification, rely on the ->default_timing_mode
- * specified in the nand_ids table.
+ * If specific timings are provided, use them. Otherwise, retrieve supported
+ * timing modes from ONFI information.
  */
 int nand_choose_best_sdr_timings(struct nand_chip *chip,
 				 struct nand_interface_config *iface,
@@ -1038,15 +1036,8 @@ int nand_choose_best_sdr_timings(struct nand_chip *chip,
 
 		/* Fallback to slower modes */
 		best_mode = iface->timings.mode;
-	} else {
-		if (chip->parameters.onfi) {
-			unsigned int onfi_modes;
-
-			onfi_modes = chip->parameters.onfi->async_timing_mode;
-			best_mode = fls(onfi_modes) - 1;
-		} else {
-			best_mode = chip->onfi_timing_mode_default;
-		}
+	} else if (chip->parameters.onfi) {
+		best_mode = fls(chip->parameters.onfi->async_timing_mode) - 1;
 	}
 
 	for (mode = best_mode; mode >= 0; mode--) {
@@ -4767,8 +4758,6 @@ static bool find_full_id_nand(struct nand_chip *chip,
 		chip->options |= type->options;
 		chip->base.eccreq.strength = NAND_ECC_STRENGTH(type);
 		chip->base.eccreq.step_size = NAND_ECC_STEP(type);
-		chip->onfi_timing_mode_default =
-					type->onfi_timing_mode_default;
 
 		chip->parameters.model = kstrdup(type->name, GFP_KERNEL);
 		if (!chip->parameters.model)
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index 316a02189da1..a2427c67d38b 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -1069,9 +1069,6 @@ struct nand_manufacturer {
  * @options: Various chip options. They can partly be set to inform nand_scan
  *           about special functionality. See the defines for further
  *           explanation.
- * @onfi_timing_mode_default: Default ONFI timing mode. This field is set to the
- *			      actually used ONFI mode if the chip is ONFI
- *			      compliant or deduced from the datasheet otherwise
  * @interface_config: NAND interface timing information
  * @bbt_erase_shift: Number of address bits in a bbt entry
  * @bbt_options: Bad block table specific options. All options used here must
@@ -1119,7 +1116,6 @@ struct nand_chip {
 	unsigned int options;
 
 	/* Data interface */
-	int onfi_timing_mode_default;
 	struct nand_interface_config interface_config;
 
 	/* Bad block information */
@@ -1268,10 +1264,6 @@ nand_get_interface_config(struct nand_chip *chip)
  *               @ecc_step_ds in nand_chip{}, also from the datasheet.
  *               For example, the "4bit ECC for each 512Byte" can be set with
  *               NAND_ECC_INFO(4, 512).
- * @onfi_timing_mode_default: the default ONFI timing mode entered after a NAND
- *			      reset. Should be deduced from timings described
- *			      in the datasheet.
- *
  */
 struct nand_flash_dev {
 	char *name;
@@ -1292,7 +1284,6 @@ struct nand_flash_dev {
 		uint16_t strength_ds;
 		uint16_t step_ds;
 	} ecc;
-	int onfi_timing_mode_default;
 };
 
 int nand_create_bbt(struct nand_chip *chip);
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
