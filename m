Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA1BF1CC3F4
	for <lists+linux-mtd@lfdr.de>; Sat,  9 May 2020 21:14:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Yzm8tYveomZ3zndKPr0QGxqFsZBptZS2EG20de3kWU=; b=sPyQ8rxXnQdYnm
	+6TMLV+ehl/QMj7cZHrZ1zA/sxu//ljrO1ICo7uZEe1nUUmZb4+vWlfbEg50H5Xrxv95KsCF85P2Z
	CNB3PCmuuIDKQ0gV+4gYsS+F7uyhK+o7I8ExWyGrBfXb8/AO8+G5byTJxChi/0bfINTy5pkEWSOr/
	3a4WB5JE835kJ8Jy0j0oKDLBDj1io4OUWjd55dOoxZh41KxuqVUPUqiHZZFum+THK7DXOOZ+vUJdD
	htB88Xjivb84pkw2iiUOKaEEX1qMpZryVzF1xiEOt5M+nKiiwOhQ84c8G9TnSjAT4hUzEZkap4oO5
	w72IRIF8X6EpJPWD6T6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXUvz-0001oA-Pt; Sat, 09 May 2020 19:14:51 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXUvl-0001lr-Pk
 for linux-mtd@lists.infradead.org; Sat, 09 May 2020 19:14:39 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id A3DA5100008;
 Sat,  9 May 2020 19:14:33 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH 01/17] mtd: rawnand: nandsim: Consistent use of 'ns' instead
 of 'dev'
Date: Sat,  9 May 2020 21:14:14 +0200
Message-Id: <20200509191431.15862-2-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200509191431.15862-1-miquel.raynal@bootlin.com>
References: <20200509191431.15862-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_121437_970057_17975E08 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.178.231 listed in wl.mailspike.net]
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
Cc: dedekind@infradead.org, Boris Brezillon <boris.brezillon@collabora.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The nandsim object is called 'ns' almost everywhere, keep it that way
everywhere for consistency.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/nandsim.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/nand/raw/nandsim.c b/drivers/mtd/nand/raw/nandsim.c
index 23cda67a3f53..0062e4fedcc0 100644
--- a/drivers/mtd/nand/raw/nandsim.c
+++ b/drivers/mtd/nand/raw/nandsim.c
@@ -487,12 +487,12 @@ DEFINE_SHOW_ATTRIBUTE(nandsim);
 
 /**
  * nandsim_debugfs_create - initialize debugfs
- * @dev: nandsim device description object
+ * @ns: nandsim device description object
  *
  * This function creates all debugfs files for UBI device @ubi. Returns zero in
  * case of success and a negative error code in case of failure.
  */
-static int nandsim_debugfs_create(struct nandsim *dev)
+static int nandsim_debugfs_create(struct nandsim *ns)
 {
 	struct dentry *root = nsmtd->dbg.dfs_dir;
 	struct dentry *dent;
@@ -508,8 +508,8 @@ static int nandsim_debugfs_create(struct nandsim *dev)
 		return 0;
 	}
 
-	dent = debugfs_create_file("nandsim_wear_report", S_IRUSR,
-				   root, dev, &nandsim_fops);
+	dent = debugfs_create_file("nandsim_wear_report", S_IRUSR, root, ns,
+				   &nandsim_fops);
 	if (IS_ERR_OR_NULL(dent)) {
 		NS_ERR("cannot create \"nandsim_wear_report\" debugfs entry\n");
 		return -1;
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
