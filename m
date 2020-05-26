Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2969B1E097C
	for <lists+linux-mtd@lfdr.de>; Mon, 25 May 2020 11:01:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I/pMuAZiaddmVqXrZj7mSAjNZh8eE1jzc5DApycol+M=; b=oV4UC8OCHFZ56E
	4vdbtbTzZxdE6HPXEimtjuFRIkpCSx39sLh8TyP50W1dem0DyrqJL2oJI32m1UrNHODONbo8xjtDQ
	XP6MqRt1f9Eeiz34mfp6n4Co/Oi9yxvYIltlQb79kYoZtIczoMHzNPl8K1DN947img3jYmjWBFM0O
	XC7MngZfc3xm2Wmneq2How41Tn3EaCbP699I7IissxuvK5ZyI/eIvNGUh4JQd85Ck70ZbDY8xk13B
	8w0V5Pbe0R5FUEMyHTl7UkbE6PB74WdX6gh4ND6HelSeyCsdCsfl6vusl1e6n5gmti391l+5cLFsC
	vqGSOskjBKu6IfIKjMng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd8yi-0000OV-H2; Mon, 25 May 2020 09:01:00 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd8wq-0004R5-81
 for linux-mtd@lists.infradead.org; Mon, 25 May 2020 08:59:05 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 747BD24000D;
 Mon, 25 May 2020 08:59:00 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v2 05/17] mtd: rawnand: nandsim: Keep track of the created
 debugfs entries
Date: Mon, 25 May 2020 10:58:39 +0200
Message-Id: <20200525085851.17682-6-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200525085851.17682-1-miquel.raynal@bootlin.com>
References: <20200525085851.17682-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_015904_431295_1B5772B9 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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

Debugfs entries should be removed in the error path, so first, keep
track of them.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/nandsim.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/nand/raw/nandsim.c b/drivers/mtd/nand/raw/nandsim.c
index 5b427a50bc27..c8e9c70a6641 100644
--- a/drivers/mtd/nand/raw/nandsim.c
+++ b/drivers/mtd/nand/raw/nandsim.c
@@ -353,6 +353,9 @@ struct nandsim {
 	void *file_buf;
 	struct page *held_pages[NS_MAX_HELD_PAGES];
 	int held_cnt;
+
+	/* debugfs entry */
+	struct dentry *dent;
 };
 
 /*
@@ -495,7 +498,6 @@ DEFINE_SHOW_ATTRIBUTE(ns);
 static int ns_debugfs_create(struct nandsim *ns)
 {
 	struct dentry *root = nsmtd->dbg.dfs_dir;
-	struct dentry *dent;
 
 	/*
 	 * Just skip debugfs initialization when the debugfs directory is
@@ -508,9 +510,9 @@ static int ns_debugfs_create(struct nandsim *ns)
 		return 0;
 	}
 
-	dent = debugfs_create_file("nandsim_wear_report", 0400, root, ns,
-				   &ns_fops);
-	if (IS_ERR_OR_NULL(dent)) {
+	ns->dent = debugfs_create_file("nandsim_wear_report", 0400, root, ns,
+				       &ns_fops);
+	if (IS_ERR_OR_NULL(ns->dent)) {
 		NS_ERR("cannot create \"nandsim_wear_report\" debugfs entry\n");
 		return -1;
 	}
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
