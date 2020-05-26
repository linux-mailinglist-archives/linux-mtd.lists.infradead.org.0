Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B2E91E2D5B
	for <lists+linux-mtd@lfdr.de>; Tue, 26 May 2020 21:24:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fGFNW/SbN+pAv+rRNmNapZFyjEC5PXuA9xAxSHR/Nik=; b=CAL/5ob0jl7bUE
	G7rN6BSKVoBBUb+Xt5JZgYYjrRfSTpqV1eOhYfotxETxWxIdYcrG6Zs36v1XuW27shX1N72i2Z/Z8
	OWxpN9YOXi6l0BWFeO8zQCuLTWUQEZ/8Ws9FJW9icjE6T/AU52S2TRyulCpstxo0AeWocZvp7qvE6
	hPz6WuCl1HDS0MVZsQKUde28s6KgEss/z1ruf0WXt0LGyQ6C2oYyHZYyHXq14XD84Rz2vCw88sDoa
	uDQzohbMWGyTOzN5UjuiEmwwu39rAGd51LO1+jijqzXqz4F+k2Akj5HAjeMUMMJ8mgalbFTSCGbBV
	1vf+H/iIH4ugq72j8Glg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdfBT-00014P-OI; Tue, 26 May 2020 19:24:19 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdf5P-0001gs-9z
 for linux-mtd@lists.infradead.org; Tue, 26 May 2020 19:18:06 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 72D67240002;
 Tue, 26 May 2020 19:18:00 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v5 22/28] mtd: rawnand: Add the ->choose_data_interface() hook
Date: Tue, 26 May 2020 21:17:19 +0200
Message-Id: <20200526191725.7591-23-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200526191725.7591-1-miquel.raynal@bootlin.com>
References: <20200526191725.7591-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_121803_563993_8F1A3B33 
X-CRM114-Status: GOOD (  11.49  )
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

This hook can be overloaded by NAND manufacturer drivers to propose
alternative timings when not following the main standards. In this
case, the manufacturer drivers is responsible for choosing the best
data interface and configuration that fits both the controller and
chip capabilities.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/nand_base.c | 9 +++++++--
 include/linux/mtd/rawnand.h      | 3 +++
 2 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index b2e833a8ab9d..f14d297c50f4 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -1046,7 +1046,6 @@ int nand_choose_best_sdr_timings(struct nand_chip *chip,
 		}
 	}
 
-
 	for (mode = best_mode; mode >= 0; mode--) {
 		ret = onfi_fill_data_interface(chip, iface, NAND_SDR_IFACE,
 					       mode);
@@ -1068,7 +1067,9 @@ int nand_choose_best_sdr_timings(struct nand_chip *chip,
  * @chip: The NAND chip
  *
  * Find the best data interface and NAND timings supported by the chip
- * and the driver.
+ * and the driver. Eventually let the NAND manufacturer driver propose his own
+ * set of timings.
+ *
  * After this function nand_chip->data_interface is initialized with the best
  * timing mode available.
  *
@@ -1079,6 +1080,10 @@ static int nand_choose_data_interface(struct nand_chip *chip)
 	if (!nand_controller_has_setup_data_iface(chip))
 		return 0;
 
+	if (chip->ops.choose_data_interface)
+		return chip->ops.choose_data_interface(chip,
+						       &chip->data_interface);
+
 	return nand_choose_best_sdr_timings(chip, &chip->data_interface, NULL);
 }
 
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index 2995d29587c3..5bd79e853140 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -1034,6 +1034,7 @@ struct nand_legacy {
  * @lock_area: Lock operation
  * @unlock_area: Unlock operation
  * @setup_read_retry: Set the read-retry mode (mostly needed for MLC NANDs)
+ * @choose_data_interface: Choose the best data interface
  */
 struct nand_chip_ops {
 	int (*suspend)(struct nand_chip *chip);
@@ -1041,6 +1042,8 @@ struct nand_chip_ops {
 	int (*lock_area)(struct nand_chip *chip, loff_t ofs, uint64_t len);
 	int (*unlock_area)(struct nand_chip *chip, loff_t ofs, uint64_t len);
 	int (*setup_read_retry)(struct nand_chip *chip, int retry_mode);
+	int (*choose_data_interface)(struct nand_chip *chip,
+				     struct nand_data_interface *iface);
 };
 
 /**
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
