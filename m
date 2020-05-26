Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCD2F1E2D4F
	for <lists+linux-mtd@lfdr.de>; Tue, 26 May 2020 21:23:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e/qAyrsn2ZpULAbBbcOAfl5jDK/wwDMed9D05wCPigk=; b=ciRmn+lUZ+hrX5
	qBAjQOVvJQHmxpTkDRwDe0hhx5vmrhG9u/N0amPSwwFzc3d4rmxYatWexsJ0ywZyHTFiVdtokpsVa
	ZLpecD8MzYA6Y8DIi4N13+i5oqN+ko21K9UJ9DFujzNiV1m1hm14HKTeFDaKzCtNf6k8ntFUa0F59
	dDBwSPBdwlO8IwbdDFkZAJQf131dnsHk92xhcbO5m+hOnd+nC9PmMQqcDfJtunHEgfzCMq+7XIUmk
	ynTXUhOOuUvnk71SlV5J+2XGC79hJxdCFFG/IiV2LbUGXn8oyQiLPA5nbGBuIv3qHDzkXQRvgUVNO
	TBXQWpUfs2hrcHvhZ/Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdfAQ-00005d-Io; Tue, 26 May 2020 19:23:14 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdf5I-0001ad-If
 for linux-mtd@lists.infradead.org; Tue, 26 May 2020 19:17:58 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 8111724000F;
 Tue, 26 May 2020 19:17:53 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v5 17/28] mtd: rawnand: Define a unique reset data interface
Date: Tue, 26 May 2020 21:17:14 +0200
Message-Id: <20200526191725.7591-18-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200526191725.7591-1-miquel.raynal@bootlin.com>
References: <20200526191725.7591-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_121756_929101_3660B966 
X-CRM114-Status: GOOD (  12.18  )
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

All NAND chips will always use the same data interface for reset and
at startup: SDR mode 0. Instead of copying around the data interface
timings, let's just have a default reset data interface for that.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/nand_base.c    | 9 +++------
 drivers/mtd/nand/raw/nand_timings.c | 3 +++
 include/linux/mtd/rawnand.h         | 3 +++
 3 files changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 89f10a8c1d62..1005035c233a 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -927,9 +927,8 @@ static int nand_reset_data_interface(struct nand_chip *chip, int chipnr)
 	 * timings to timing mode 0.
 	 */
 
-	onfi_fill_data_interface(chip, &chip->data_interface, NAND_SDR_IFACE, 0);
 	ret = chip->controller->ops->setup_data_interface(chip, chipnr,
-							&chip->data_interface);
+							  nand_reset_data_iface);
 	if (ret)
 		pr_err("Failed to configure data interface to SDR timing mode 0\n");
 
@@ -2484,7 +2483,6 @@ EXPORT_SYMBOL_GPL(nand_subop_get_data_len);
  */
 int nand_reset(struct nand_chip *chip, int chipnr)
 {
-	struct nand_data_interface saved_data_intf = chip->data_interface;
 	int ret;
 
 	ret = nand_reset_data_interface(chip, chipnr);
@@ -2509,11 +2507,10 @@ int nand_reset(struct nand_chip *chip, int chipnr)
 	 * nand_setup_data_interface() uses ->set/get_features() which would
 	 * fail anyway as the parameter page is not available yet.
 	 */
-	if (!memcmp(&chip->data_interface, &saved_data_intf,
-		    sizeof(saved_data_intf)))
+	if (!memcmp(&chip->data_interface, nand_reset_data_iface,
+		    sizeof(*nand_reset_data_iface)))
 		return 0;
 
-	chip->data_interface = saved_data_intf;
 	ret = nand_setup_data_interface(chip, chipnr);
 	if (ret)
 		return ret;
diff --git a/drivers/mtd/nand/raw/nand_timings.c b/drivers/mtd/nand/raw/nand_timings.c
index 52ee83e75646..343284c43e81 100644
--- a/drivers/mtd/nand/raw/nand_timings.c
+++ b/drivers/mtd/nand/raw/nand_timings.c
@@ -285,6 +285,9 @@ static const struct nand_data_interface onfi_sdr_timings[] = {
 	},
 };
 
+/* All NAND chips share the same reset data interface: SDR mode 0 */
+const struct nand_data_interface *nand_reset_data_iface = &onfi_sdr_timings[0];
+
 /**
  * onfi_find_closest_sdr_mode - Derive the closest ONFI SDR timing mode given a
  *                              set of timings
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index 622da6527a36..6c334cca3977 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -1203,6 +1203,9 @@ static inline struct device_node *nand_get_flash_node(struct nand_chip *chip)
 	return mtd_get_of_node(nand_to_mtd(chip));
 }
 
+/* Default/reset data interface */
+extern const struct nand_data_interface *nand_reset_data_iface;
+
 /*
  * A helper for defining older NAND chips where the second ID byte fully
  * defined the chip, including the geometry (chip size, eraseblock size, page
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
