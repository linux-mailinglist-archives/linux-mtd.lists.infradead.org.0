Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5021E13A5
	for <lists+linux-mtd@lfdr.de>; Mon, 25 May 2020 19:46:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rC+GIVMKEWlXY3UZH0BugGU+uKP8h93jt6slmKLK0XY=; b=tYiP1advWLg3HP
	0h0J8MESgn8PKGj+EHRk86MZ+poelytgghaz6GWl5NtsUb2Ohrbd+5yzMhOM8OM+VXDYlNLOrI7dA
	CDNLt1pN4KDzMgb6QPqK7KmGqp8+yK6mBoT7xICkTd54vF+em3BDLTvdchnZPUq3ZJRY2o7L3mOI6
	UGuTbZPyK8fOb9J6Slu0Tbed2kvhH+FD32LhJaT/gKjCfaFL34uhMarfz7f+f4wY4rfENjTTNimeQ
	FdtN3kA54n6cJL7+azopU4euAvgown2xjNOPmgY9cSwGmSCrsQDXKU3cq/j2lKxeHqBL284IPkl09
	ImLwhg0MqQ9V/pwREcuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdHB6-0008D5-Ho; Mon, 25 May 2020 17:46:20 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdH7r-0003Fn-VD
 for linux-mtd@lists.infradead.org; Mon, 25 May 2020 17:43:01 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 9E9DF240002;
 Mon, 25 May 2020 17:42:57 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v4 12/19] mtd: rawnand: Rename nand_init_data_interface()
Date: Mon, 25 May 2020 19:42:32 +0200
Message-Id: <20200525174239.11349-13-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200525174239.11349-1-miquel.raynal@bootlin.com>
References: <20200525174239.11349-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_104300_159747_00059A8B 
X-CRM114-Status: GOOD (  10.41  )
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

This name is a bit misleading, what we do in this helper is trying to
find the best timings supported by the controller and the chip. In
other words, we choose the data interface.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/nand_base.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index c8f5d4557ed5..ac08d1fc710a 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -1005,7 +1005,7 @@ static int nand_setup_data_interface(struct nand_chip *chip, int chipnr)
 }
 
 /**
- * nand_init_data_interface - find the best data interface and timings
+ * nand_choose_data_interface - find the best data interface and timings
  * @chip: The NAND chip
  *
  * Find the best data interface and NAND timings supported by the chip
@@ -1017,7 +1017,7 @@ static int nand_setup_data_interface(struct nand_chip *chip, int chipnr)
  *
  * Returns 0 for success or negative error code otherwise.
  */
-static int nand_init_data_interface(struct nand_chip *chip)
+static int nand_choose_data_interface(struct nand_chip *chip)
 {
 	int modes, mode, ret;
 
@@ -6045,8 +6045,8 @@ static int nand_scan_tail(struct nand_chip *chip)
 	if (!mtd->bitflip_threshold)
 		mtd->bitflip_threshold = DIV_ROUND_UP(mtd->ecc_strength * 3, 4);
 
-	/* Initialize the ->data_interface field. */
-	ret = nand_init_data_interface(chip);
+	/* Find the fastest data interface for this chip */
+	ret = nand_choose_data_interface(chip);
 	if (ret)
 		goto err_nanddev_cleanup;
 
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
