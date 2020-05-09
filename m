Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 075491CC3FA
	for <lists+linux-mtd@lfdr.de>; Sat,  9 May 2020 21:16:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I/pMuAZiaddmVqXrZj7mSAjNZh8eE1jzc5DApycol+M=; b=R+6GLyU1/+ZlyN
	BG12QWYUduazItiRp6AoWMm4uTYjZQHVxq+WffEHt9AJPgaDACicTzkEMQWcoCy2iqB4opN6uWlGc
	AFICrUU3QyMuELyLJctu8DNJi/AJW/7z74oRYvaph4vouw3AIQhsBnocKy5eIK8MzMZKwA02qIDaq
	4TsU21v0mILEVqhQcz0CE/rbC9aMIvz2fvFideHOPwHrC4awAxdXXeuHQUg0EifdTsto9Su4o8LAN
	XzvWEzT+tZr2fPoiEyWW/Ndb0pDaFJ8jYcFEUN2AOuIFNvcoyYCdvRNLPfwJPi3VgkUc842f86v/s
	QU7SLAdmGNnJv81CqeOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXUxK-0005MH-Um; Sat, 09 May 2020 19:16:14 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXUvn-0001mn-DZ
 for linux-mtd@lists.infradead.org; Sat, 09 May 2020 19:14:42 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 4FAE1100009;
 Sat,  9 May 2020 19:14:37 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH 05/17] mtd: rawnand: nandsim: Keep track of the created
 debugfs entries
Date: Sat,  9 May 2020 21:14:18 +0200
Message-Id: <20200509191431.15862-6-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200509191431.15862-1-miquel.raynal@bootlin.com>
References: <20200509191431.15862-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_121439_624758_1C92C108 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.178.231 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
