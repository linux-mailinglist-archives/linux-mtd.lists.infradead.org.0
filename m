Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F4C1E7B8C
	for <lists+linux-mtd@lfdr.de>; Fri, 29 May 2020 13:19:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3tJlQnHrkQLPBPKmWufBkHLV3y3JNuGjKwSIDWA147g=; b=mcJHkqbR9Fvn2J
	8AWDwrjLPEnNrqYbRyAM/vuf5dBjwfB7Jm2LWBl6MMh86Uo9/l/ZWPxrBM2iM/Cr2As0wntmQULr2
	12lY5NVQjadg/2XD/BzGCpORH5VCEhKSLau3Dla8QDZUj7oz07x/hbyBdEuh9q/6FLIWVG/hGsPV/
	fChOrjF/mTmrDlS0T6j3qq7tyTtQEiQjt86u9O9RcGq8thqubUqOlwyS5uODdiiPTXNzS5Jm27p7o
	x9/mTVWt8UEDLjhjs3OR8myJWzecPbunG2jOp8+kBny5t/Ldslu/AY8WsGfC7XcMp1a1i88BBojYl
	MZY8vJLN9OjKvC/5edNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jed3E-0002WY-UR; Fri, 29 May 2020 11:19:48 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jecxW-0003YQ-5r
 for linux-mtd@lists.infradead.org; Fri, 29 May 2020 11:13:56 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id C83A8240005;
 Fri, 29 May 2020 11:13:50 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v7 22/28] mtd: rawnand: Add the ->choose_interface_config()
 hook
Date: Fri, 29 May 2020 13:13:16 +0200
Message-Id: <20200529111322.7184-23-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200529111322.7184-1-miquel.raynal@bootlin.com>
References: <20200529111322.7184-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_041354_562302_9A469724 
X-CRM114-Status: GOOD (  12.63  )
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

This hook can be overloaded by NAND manufacturer drivers to propose
alternative timings when not following the main standards. In this
case, the manufacturer drivers is responsible for choosing the best
interface configuration that fits both the controller and chip
capabilities.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/nand_base.c | 18 +++++++++++-------
 include/linux/mtd/rawnand.h      |  3 +++
 2 files changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 956a66fdccb8..2f4eba1a1082 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -1049,7 +1049,6 @@ int nand_choose_best_sdr_timings(struct nand_chip *chip,
 		}
 	}
 
-
 	for (mode = best_mode; mode >= 0; mode--) {
 		onfi_fill_interface_config(chip, iface, NAND_SDR_IFACE, mode);
 
@@ -1067,18 +1066,23 @@ int nand_choose_best_sdr_timings(struct nand_chip *chip,
  * @chip: The NAND chip
  *
  * Find the best data interface and NAND timings supported by the chip
- * and the driver.
- * First tries to retrieve supported timing modes from ONFI information,
- * and if the NAND chip does not support ONFI, relies on the
- * ->onfi_timing_mode_default specified in the nand_ids table. After this
- * function nand_chip->interface_ is initialized with the best timing mode
- * available.
+ * and the driver. Eventually let the NAND manufacturer driver propose his own
+ * set of timings.
+ *
+ * After this function nand_chip->interface_config is initialized with the best
+ * timing mode available.
+ *
+ * Returns 0 for success or negative error code otherwise.
  */
 static int nand_choose_interface_config(struct nand_chip *chip)
 {
 	if (!nand_controller_can_setup_interface(chip))
 		return 0;
 
+	if (chip->ops.choose_interface_config)
+		return chip->ops.choose_interface_config(chip,
+							 &chip->interface_config);
+
 	return nand_choose_best_sdr_timings(chip, &chip->interface_config,
 					    NULL);
 }
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index 2ca56eef0f07..316a02189da1 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -1033,6 +1033,7 @@ struct nand_legacy {
  * @lock_area: Lock operation
  * @unlock_area: Unlock operation
  * @setup_read_retry: Set the read-retry mode (mostly needed for MLC NANDs)
+ * @choose_interface_config: Choose the best interface configuration
  */
 struct nand_chip_ops {
 	int (*suspend)(struct nand_chip *chip);
@@ -1040,6 +1041,8 @@ struct nand_chip_ops {
 	int (*lock_area)(struct nand_chip *chip, loff_t ofs, uint64_t len);
 	int (*unlock_area)(struct nand_chip *chip, loff_t ofs, uint64_t len);
 	int (*setup_read_retry)(struct nand_chip *chip, int retry_mode);
+	int (*choose_interface_config)(struct nand_chip *chip,
+				       struct nand_interface_config *iface);
 };
 
 /**
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
