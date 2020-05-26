Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADCF01E13B0
	for <lists+linux-mtd@lfdr.de>; Mon, 25 May 2020 19:48:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YIg8+5XKcpx7HVI5jn8wt4oFSqVCO5vkbiYoO81lNyk=; b=qe0rJjAB9bsWGb
	MdRL91JBFp1ss52gWIURCN8R4tpr/gs160PiEVW8YA6LI6g5ZOjjMCYRBMjgX0TJ9+slXLuQ/PHI5
	+eGnsgjRbkaVs7G6HIi6sFQwYG+qBKu1D0iuptBOBhmWyesJHhKAl5ekIu9TKB6VvwvNLctiX/F2P
	iCO5qvblPrf46GH5MJWQTyAbwAN2QyDOssUAGrqKHKxrtp/q1ib4D2tQfEvr4gjjkzIcV7xSRfOCw
	ftVrOn6KTiZjCE2Mov+k5ybMe+6XAZtoLb0tYKmN79wz2ODSUtKPHqux4f6hPc3ufRIm4RkhFCQrU
	lLsJ2wplQreUPDtPPE3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdHD8-0001bq-PT; Mon, 25 May 2020 17:48:26 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdH7x-0003Lo-Ew
 for linux-mtd@lists.infradead.org; Mon, 25 May 2020 17:43:07 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 339CA24000E;
 Mon, 25 May 2020 17:43:03 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v4 18/19] mtd: rawnand: Add the ->choose_data_interface() hook
Date: Mon, 25 May 2020 19:42:38 +0200
Message-Id: <20200525174239.11349-19-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200525174239.11349-1-miquel.raynal@bootlin.com>
References: <20200525174239.11349-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_104305_755543_5DCEE89F 
X-CRM114-Status: GOOD (  12.03  )
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

This hook can be overloaded by NAND manufacturer drivers to propose
alternative timings when not following the main standards.

Vendors implementing this hook should:
1- choose the best timings and fill the data interface,
2- verify that the controller supports them.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/internals.h | 5 +++++
 drivers/mtd/nand/raw/nand_base.c | 8 ++++++++
 include/linux/mtd/rawnand.h      | 2 ++
 3 files changed, 15 insertions(+)

diff --git a/drivers/mtd/nand/raw/internals.h b/drivers/mtd/nand/raw/internals.h
index 9af6979257e2..61edbab35068 100644
--- a/drivers/mtd/nand/raw/internals.h
+++ b/drivers/mtd/nand/raw/internals.h
@@ -146,6 +146,11 @@ static inline bool nand_controller_has_setup_data_iface(struct nand_chip *chip)
 	return true;
 }
 
+static inline bool nand_can_choose_data_interface(struct nand_chip *chip)
+{
+	return chip->ops.choose_data_interface;
+}
+
 /* BBT functions */
 int nand_markbad_bbt(struct nand_chip *chip, loff_t offs);
 int nand_isreserved_bbt(struct nand_chip *chip, loff_t offs);
diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index d9fe7795f183..e9df339849d3 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -1060,6 +1060,14 @@ static int nand_choose_data_interface(struct nand_chip *chip)
 	if (!nand_controller_has_setup_data_iface(chip))
 		return 0;
 
+	/*
+	 * Let the NAND vendor hook identify the best timings.
+	 * ->choose_data_interface() is expected to update the entire chip's
+	 * nand_data_interface structure.
+	 */
+	if (nand_can_choose_data_interface(chip))
+		return chip->ops.choose_data_interface(chip);
+
 	/*
 	 * First try to identify the best timings from ONFI parameters and
 	 * if the NAND does not support ONFI, fallback to the default ONFI
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index a4b68e7b246a..5b8b94521a18 100644
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
@@ -1041,6 +1042,7 @@ struct nand_chip_ops {
 	int (*lock_area)(struct nand_chip *chip, loff_t ofs, uint64_t len);
 	int (*unlock_area)(struct nand_chip *chip, loff_t ofs, uint64_t len);
 	int (*setup_read_retry)(struct nand_chip *chip, int retry_mode);
+	int (*choose_data_interface)(struct nand_chip *chip);
 };
 
 /**
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
