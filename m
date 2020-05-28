Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40B6A1E7059
	for <lists+linux-mtd@lfdr.de>; Fri, 29 May 2020 01:23:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DEw1GLmYOxAd3zvNDSZp1YjgB0JFW+RHmykosIbOl+M=; b=BWuSSaFulxb75p
	RH4W6A82ht8Fyk3EwtgwnMhbc0y5C1gqmoAY6zc2p+4dO7gDGJGWdjOFzXwe8rs/OqBdCJE2Dut7K
	xkQCO/iYODnQnC7PDDg5vVvaC7rhU8bnkIPo2ZtttGZI/zsRTaHRLUO9xuoIhwV+rTDoKrloS1/rF
	wR0JNQVzjRamZAox7v/0PWsUDJZaVZIcJM0JG8zwK+PChSgDKv5FG8kZ1afC+W97pyZLhU0hrvTm/
	LYbG+p3B2e3VfL4TDOSTNqDbpujGa2UqKkZpIbGfNQyqauSzylnVp3xRefoYYHQY80XEAHAWZGNWs
	/nOIkLrZQvlgWxuIUSZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeRrv-0005zT-R3; Thu, 28 May 2020 23:23:23 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeRlW-0006Q2-CD
 for linux-mtd@lists.infradead.org; Thu, 28 May 2020 23:16:51 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 8627D24000D;
 Thu, 28 May 2020 23:16:43 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v6 24/30] mtd: rawnand: Add the ->choose_interface() hook
Date: Fri, 29 May 2020 01:16:06 +0200
Message-Id: <20200528231612.8958-25-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200528231612.8958-1-miquel.raynal@bootlin.com>
References: <20200528231612.8958-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_161646_588290_826EA77C 
X-CRM114-Status: GOOD (  11.61  )
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

This hook can be overloaded by NAND manufacturer drivers to propose
alternative timings when not following the main standards. In this
case, the manufacturer drivers is responsible for choosing the best
interface configuration that fits both the controller and chip
capabilities.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/nand_base.c | 9 +++++++--
 include/linux/mtd/rawnand.h      | 3 +++
 2 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 28e249beb335..132feee3ba13 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -1047,7 +1047,6 @@ int nand_choose_best_sdr_timings(struct nand_chip *chip,
 		}
 	}
 
-
 	for (mode = best_mode; mode >= 0; mode--) {
 		onfi_fill_interface_config(chip, iface, NAND_SDR_IFACE, mode);
 
@@ -1065,7 +1064,9 @@ int nand_choose_best_sdr_timings(struct nand_chip *chip,
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
@@ -1076,6 +1077,10 @@ static int nand_choose_interface(struct nand_chip *chip)
 	if (!nand_controller_can_setup_interface(chip))
 		return 0;
 
+	if (chip->ops.choose_interface)
+		return chip->ops.choose_interface(chip,
+						  &chip->interface_config);
+
 	return nand_choose_best_sdr_timings(chip, &chip->interface_config,
 					    NULL);
 }
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index 03b62f900d20..ce4a525517a6 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -1033,6 +1033,7 @@ struct nand_legacy {
  * @lock_area: Lock operation
  * @unlock_area: Unlock operation
  * @setup_read_retry: Set the read-retry mode (mostly needed for MLC NANDs)
+ * @choose_data_interface: Choose the best data interface
  */
 struct nand_chip_ops {
 	int (*suspend)(struct nand_chip *chip);
@@ -1040,6 +1041,8 @@ struct nand_chip_ops {
 	int (*lock_area)(struct nand_chip *chip, loff_t ofs, uint64_t len);
 	int (*unlock_area)(struct nand_chip *chip, loff_t ofs, uint64_t len);
 	int (*setup_read_retry)(struct nand_chip *chip, int retry_mode);
+	int (*choose_interface)(struct nand_chip *chip,
+				struct nand_interface_config *iface);
 };
 
 /**
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
