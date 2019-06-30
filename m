Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7D025B084
	for <lists+linux-mtd@lfdr.de>; Sun, 30 Jun 2019 18:07:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dzX/GOK+p688PComehTba9OjfZPaKWuR/WkX+UXLfCw=; b=SKey8tCKHT1bKb
	WZ425SLeJhHGXQBBFGm5/iwRTjV1336HfMg+YD5p+4NmL4sGlf2fa71h+Ryqexv0Brds2WNM1v17v
	h751Zfk2XwroIoNg3tRm+7v6oeh4+vlp5xsg2UUGsQnJGHjZGP5xl8vCbg+RLFjsOyZWv2kuyc3cz
	25IAiPVdhGjraeXTu40zqNEbneuF3EGSgSbI8Thck/rYl2HNHOSb8wC7RuahRF7bG1IUXmZM15ZRk
	c8CKgnJjJEPaolO0h1cC8Gb4VgXJ4X4idYPN6RE1yDVsffj1il9onsvoZWx26LwRK/m/aG/msLkxy
	c5Th0MXJI1hPj48RGOnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhcMb-0001Ac-K1; Sun, 30 Jun 2019 16:07:37 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhcMI-0001AA-A6
 for linux-mtd@lists.infradead.org; Sun, 30 Jun 2019 16:07:20 +0000
Received: by mail-pf1-x442.google.com with SMTP id 19so5324654pfa.4
 for <linux-mtd@lists.infradead.org>; Sun, 30 Jun 2019 09:07:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6ofePWR9y57IHRX0wCnEWK2SIeAHDmpL2Xkdc5wlS1E=;
 b=c072iIno999FOTq3fiElGVKS9YvkEegTbi91lAZ5j6zzQ9FymrcQAkINdEsssRDwuJ
 AxxEz4hzsT9vIo6RewHN9lxgECxPwjYr3BPpy6sBPqimQ3szkz56B6jR6JBXSqP6n8Q1
 7YLi2kRf2e6L5nVBPV5PvnVut7PYKY/3V/v9Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6ofePWR9y57IHRX0wCnEWK2SIeAHDmpL2Xkdc5wlS1E=;
 b=U8Ky4bCz+8Yso10LsQQSXc+a1wnK1U8DLKOkfUKIUCVHl8qn/84j/FcjBYkVUNM6B7
 Y25CtpC09ix5qzU+sBi1BeB/rCPqbAz3R1eb0T6nSDGfKOtPTfx5UiI4dWwd+8XQ3uqe
 eikWSSQb7J2WXKqfpcrw9VHd6RKkF6PJ1akIOYZbHwc6IIftdJc7GQEANjlz+Nrol2a8
 X/sd7UoJnsVZAwzCZIFs0IvZtllZ5bYN4QM3TUzq4Z6IzorJDzxnNOr+jf5gwffOPmV0
 yP23iXgTRBViPrZRGovJ8gFfEhHor7a/zqt149gXksUXHgBKZCBlj4jDE7JORObYkbnE
 leMg==
X-Gm-Message-State: APjAAAVpkPgwJPmFxiUGH1drvfAWc4kNZVoTsRAaYnkNS0nbA0fB28lr
 guo7VgXZTcu7nTPQQlqeTccHPgWBkRI=
X-Google-Smtp-Source: APXvYqxP75foJBKrbS0cudDUEC8qX59bvg5Sv9o5BS/+qn3pALBdTibvs/5+DcWS3UUZcUaDBjUojA==
X-Received: by 2002:a63:c106:: with SMTP id w6mr19958166pgf.422.1561910836705; 
 Sun, 30 Jun 2019 09:07:16 -0700 (PDT)
Received: from zhuohao-z440.tpe.corp.google.com
 ([2401:fa00:1:10:e25c:13cd:9607:cc7f])
 by smtp.gmail.com with ESMTPSA id y10sm8990409pfm.66.2019.06.30.09.07.14
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 30 Jun 2019 09:07:16 -0700 (PDT)
From: Zhuohao Lee <zhuohao@chromium.org>
To: linux-mtd@lists.infradead.org
Subject: [PATCH v8 1/2] mtd: mtdcore: add debugfs nodes for querying the flash
 name and id
Date: Mon,  1 Jul 2019 00:07:10 +0800
Message-Id: <20190630160711.178679-1-zhuohao@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_090718_384310_9AD80573 
X-CRM114-Status: GOOD (  16.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: drinkcat@chromium.org, zhuohao@chromium.org, bbrezillon@kernel.org,
 richard@nod.at, briannorris@chromium.org, marek.vasut@gmail.com,
 boris.brezillon@collabora.com, computersforpeace@gmail.com,
 dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Currently, we don't have vfs nodes for querying the underlying flash name
and flash id. This information is important especially when we want to
know the flash detail of the defective system. In order to support the
query, we add mtd_debugfs_populate() to create two debugfs nodes
(ie. partname and partid). The upper driver can assign the pointer to
partname and partid before calling mtd_device_register().

Signed-off-by: Zhuohao Lee <zhuohao@chromium.org>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
Changes in V8:
- Change pr_debug/pr_err to dev_dbg/dev_err respectively
- Previous discussion: https://patchwork.ozlabs.org/patch/1109227/
Changes in V7:
- Remove unused check for partname/partid
- Previous discussion: https://patchwork.ozlabs.org/patch/1109200/
Changes in V6:
- Create the debugfs only when the partname/partid is not NULL
- Previous discussion: https://patchwork.ozlabs.org/patch/1109041/
Changes in V5:
- Move debugfs_create_dir() to mtd_debugfs_populate()
- Previous discussion: https://patchwork.ozlabs.org/patch/1107810/
Changes in V4:
- Separate the change to two patches. The first patch is adding the general
  handling for the partname and partid in the mtdcore.c. The second patch
  is enabling the two debugfs nodes for spi-nor.
- Previous discussion: https://patchwork.ozlabs.org/patch/1097377/
Changes in v3:
- Add partname and partid to mtd.h and create debugfs inside mtdcore.c
- Previous discussion: https://patchwork.ozlabs.org/patch/1095731/
Changes in v2:
- Change to use debugfs to output flash name and id
- Previous discussion: https://patchwork.ozlabs.org/patch/1067763/
---
 drivers/mtd/mtdcore.c   | 85 ++++++++++++++++++++++++++++++++++++-----
 include/linux/mtd/mtd.h |  3 ++
 2 files changed, 79 insertions(+), 9 deletions(-)

diff --git a/drivers/mtd/mtdcore.c b/drivers/mtd/mtdcore.c
index 3ef01baef9b6..1ecc27340379 100644
--- a/drivers/mtd/mtdcore.c
+++ b/drivers/mtd/mtdcore.c
@@ -357,6 +357,81 @@ static const struct device_type mtd_devtype = {
 	.release	= mtd_release,
 };
 
+static int mtd_partid_show(struct seq_file *s, void *p)
+{
+	struct mtd_info *mtd = s->private;
+
+	seq_printf(s, "%s\n", mtd->dbg.partid);
+
+	return 0;
+}
+
+static int mtd_partid_debugfs_open(struct inode *inode, struct file *file)
+{
+	return single_open(file, mtd_partid_show, inode->i_private);
+}
+
+static const struct file_operations mtd_partid_debug_fops = {
+	.open           = mtd_partid_debugfs_open,
+	.read           = seq_read,
+	.llseek         = seq_lseek,
+	.release        = single_release,
+};
+
+static int mtd_partname_show(struct seq_file *s, void *p)
+{
+	struct mtd_info *mtd = s->private;
+
+	seq_printf(s, "%s\n", mtd->dbg.partname);
+
+	return 0;
+}
+
+static int mtd_partname_debugfs_open(struct inode *inode, struct file *file)
+{
+	return single_open(file, mtd_partname_show, inode->i_private);
+}
+
+static const struct file_operations mtd_partname_debug_fops = {
+	.open           = mtd_partname_debugfs_open,
+	.read           = seq_read,
+	.llseek         = seq_lseek,
+	.release        = single_release,
+};
+
+static struct dentry *dfs_dir_mtd;
+
+static void mtd_debugfs_populate(struct mtd_info *mtd)
+{
+	struct device *dev = &mtd->dev;
+	struct dentry *root, *dent;
+
+	if (IS_ERR_OR_NULL(dfs_dir_mtd))
+		return;
+
+	root = mtd->dbg.dfs_dir = debugfs_create_dir(dev_name(dev),
+						     dfs_dir_mtd);
+	if (IS_ERR_OR_NULL(root)) {
+		dev_dbg(dev, "won't show data in debugfs\n");
+		return;
+	}
+
+	if (mtd->dbg.partid) {
+		dent = debugfs_create_file("partid", S_IRUSR, root, mtd,
+					   &mtd_partid_debug_fops);
+		if (IS_ERR_OR_NULL(dent))
+			dev_err(dev,
+				"can't create debugfs entry for partid\n");
+	}
+	if (mtd->dbg.partname) {
+		dent = debugfs_create_file("partname", S_IRUSR, root, mtd,
+					   &mtd_partname_debug_fops);
+		if (IS_ERR_OR_NULL(dent))
+			dev_err(dev,
+				"can't create debugfs entry for partname\n");
+	}
+}
+
 #ifndef CONFIG_MMU
 unsigned mtd_mmap_capabilities(struct mtd_info *mtd)
 {
@@ -534,8 +609,6 @@ static int mtd_nvmem_add(struct mtd_info *mtd)
 	return 0;
 }
 
-static struct dentry *dfs_dir_mtd;
-
 /**
  *	add_mtd_device - register an MTD device
  *	@mtd: pointer to new MTD device info structure
@@ -621,13 +694,7 @@ int add_mtd_device(struct mtd_info *mtd)
 	if (error)
 		goto fail_nvmem_add;
 
-	if (!IS_ERR_OR_NULL(dfs_dir_mtd)) {
-		mtd->dbg.dfs_dir = debugfs_create_dir(dev_name(&mtd->dev), dfs_dir_mtd);
-		if (IS_ERR_OR_NULL(mtd->dbg.dfs_dir)) {
-			pr_debug("mtd device %s won't show data in debugfs\n",
-				 dev_name(&mtd->dev));
-		}
-	}
+	mtd_debugfs_populate(mtd);
 
 	device_create(&mtd_class, mtd->dev.parent, MTD_DEVT(i) + 1, NULL,
 		      "mtd%dro", i);
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index 677768b21a1d..b11afb85d962 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -203,6 +203,9 @@ struct module;	/* only needed for owner field in mtd_info */
  */
 struct mtd_debug_info {
 	struct dentry *dfs_dir;
+
+	const char *partname;
+	const char *partid;
 };
 
 struct mtd_info {
-- 
2.22.0.410.gd8fdbe21b5-goog


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
