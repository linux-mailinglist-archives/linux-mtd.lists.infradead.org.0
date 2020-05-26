Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C30D21E0966
	for <lists+linux-mtd@lfdr.de>; Mon, 25 May 2020 10:54:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Yzm8tYveomZ3zndKPr0QGxqFsZBptZS2EG20de3kWU=; b=k5l3iXvZ5lj3oF
	NXmfcsk7O12sc42gqsC9ueUh9tFHZSrYjimFvj+y0XfQ8MPyRQPGSBYgTiQQS0q8/nNwaf14hDbPV
	PzDpkOIepm+shQMecxRdInaQESEuRvnfCnjjAdWp8MlDSaJ28DoGimi/BOs9N7koG+xBx1fr5vhCw
	+339c2S+ZXGEfK9Sil7kiGW6X9Ctw6Z5l6p5w45UVjhdKc/u9n8TfLrIOI+sVmgO9Mfti2/Y0PADq
	5irtTeDm3G/TQ0a8mM3Nx62TYRhIAzId03jr0rj5XmMNh/EzfM55+7iW6ltdo/ynjD6A8Ncw70+ei
	Vgu3OSHCTW2uAtpgY6Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd8sF-0000hf-80; Mon, 25 May 2020 08:54:19 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd8rY-0000CL-RA
 for linux-mtd@lists.infradead.org; Mon, 25 May 2020 08:53:38 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id C9D0F200019;
 Mon, 25 May 2020 08:53:34 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v2 01/17] mtd: rawnand: nandsim: Consistent use of 'ns'
 instead of 'dev'
Date: Mon, 25 May 2020 10:52:12 +0200
Message-Id: <20200525085329.17259-3-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200525085329.17259-1-miquel.raynal@bootlin.com>
References: <20200525085329.17259-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_015337_012115_5928AFEA 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.178.232 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Boris Brezillon <boris.brezillon@collabora.com>,
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
