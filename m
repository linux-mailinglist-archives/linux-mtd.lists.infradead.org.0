Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0CD532EFB
	for <lists+linux-mtd@lfdr.de>; Mon,  3 Jun 2019 13:51:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6Pf8MW8HFo8Xf/louQ0GQqGMJzbehGjAetWbD8RO01g=; b=rFUmUcT7NOSRfQ
	uPLvBdyOJk+th00L5ADrlCpOid8JN6g71GqkDs037nUI2Rg62T8kjv6sdQUIxyjVlUXFBQZFwDujc
	sFNwPBlwb1kBLpHwTIY0Rt+yFilKLjFqtn8kQa1gHawlziaoPY8v5YcmTC3DtVcIxjsuHrUit+EQd
	Fer3U0qOAplf7/2T3AVsMSz+Jn1tZjrfwK3OYXaAyJm1xpXUpySOjV2PV4Kir/N8itUfJazWde2cu
	2aqZAw7UrG2P0kR3eN53y4M63vUtIa9wrjD5dxSwl4pPcI4YDoEQAdyBKUBrvGoUmxedohXsnH2H+
	xl5DBwP/K/pAZPjkV7+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXlUq-0001BP-7s; Mon, 03 Jun 2019 11:51:24 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXlUY-00013M-8X
 for linux-mtd@lists.infradead.org; Mon, 03 Jun 2019 11:51:09 +0000
Received: by mail-pg1-x543.google.com with SMTP id 196so8156064pgc.6
 for <linux-mtd@lists.infradead.org>; Mon, 03 Jun 2019 04:51:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uq+3ciel3oU9hlhoJY0igas1fzSjGU3pF86y6y6oNyM=;
 b=YWGrzPP4aXEshSOljAbXdHbok7tdl4hehxvaEL2WIEFANJnZ6GFA8lEJeLJjBx1UFP
 6Ayp/8udncwdOsbNdQzssx263egAz9NCNFZJZVgqmKz23FpxN3fAnvESu+PV0l+dq4gS
 SbzthVwnNpuy7v9LH+3NP1jMmEj2SjmRO0Drs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uq+3ciel3oU9hlhoJY0igas1fzSjGU3pF86y6y6oNyM=;
 b=UfmPioX3fJpcVtOyfWqRNLomjYQo7T/8SdOFseP/bnGsHOQhG+Tun1GCTkvfA5/x0s
 4GNDJ4Oi1A722xAswmNtzm9wtPZcOLEdU8tSf/M9cNis+5JS7BVgHIcLyzqUOawO3cpn
 OfYp2y7ICBXYvysqtP5pt/0HGcS7ku5BPgIwWoh4YLZIkrC5HqqT/LzZnH86kujrMAwa
 wIfNRiDsXniwHN4DO/m/lh8Gr4WDAv11LjBEYwPIkvbit0nMQHLjdmQ7yGPztb3CE0dS
 Cmae28Oss5YXsQ4CxGm9fzFYh71rv7/vGZVtITxVAUfUF2Wc9FtlE8rTmNQL35FAkSEd
 Q/WQ==
X-Gm-Message-State: APjAAAXfTERXT/SZob9EWLbRu+poeXoCh7RTR3pRsOxyrRN2FF8ygL5W
 NzdW5Y7ULe4Kvc9jYEoUN9asWCjY+hY=
X-Google-Smtp-Source: APXvYqypZbb4mUj904IeIvjswAE2N/8n6hAi8VmaNUxG0gQONRFbovVD422CS6+GQsG6Aa58K0UqJA==
X-Received: by 2002:a63:6105:: with SMTP id v5mr11955553pgb.312.1559562660196; 
 Mon, 03 Jun 2019 04:51:00 -0700 (PDT)
Received: from zhuohao-z440.tpe.corp.google.com
 ([2401:fa00:1:10:e25c:13cd:9607:cc7f])
 by smtp.gmail.com with ESMTPSA id h132sm5772822pfe.17.2019.06.03.04.50.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 04:50:59 -0700 (PDT)
From: Zhuohao Lee <zhuohao@chromium.org>
To: linux-mtd@lists.infradead.org
Subject: [PATCH v6 1/2] mtd: mtdcore: add debugfs nodes for querying the flash
 name and id
Date: Mon,  3 Jun 2019 19:50:52 +0800
Message-Id: <20190603115053.219438-1-zhuohao@chromium.org>
X-Mailer: git-send-email 2.22.0.rc1.311.g5d7573a151-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_045106_327399_EDBF15D2 
X-CRM114-Status: GOOD (  17.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
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
---
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
 drivers/mtd/mtdcore.c   | 90 ++++++++++++++++++++++++++++++++++++-----
 include/linux/mtd/mtd.h |  3 ++
 2 files changed, 84 insertions(+), 9 deletions(-)

diff --git a/drivers/mtd/mtdcore.c b/drivers/mtd/mtdcore.c
index 3ef01baef9b6..54a5448fc1ac 100644
--- a/drivers/mtd/mtdcore.c
+++ b/drivers/mtd/mtdcore.c
@@ -357,6 +357,86 @@ static const struct device_type mtd_devtype = {
 	.release	= mtd_release,
 };
 
+static int mtd_partid_show(struct seq_file *s, void *p)
+{
+	struct mtd_info *mtd = s->private;
+
+	if (!mtd->dbg.partid)
+		return 0;
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
+	if (!mtd->dbg.partname)
+		return 0;
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
+		pr_debug("mtd device %s won't show data in debugfs\n",
+			 dev_name(dev));
+		return;
+	}
+
+	if (mtd->dbg.partid) {
+		dent = debugfs_create_file("partid", S_IRUSR, root, mtd,
+					   &mtd_partid_debug_fops);
+		if (IS_ERR_OR_NULL(dent))
+			pr_err("cannot create debugfs entry for partid\n");
+	}
+	if (mtd->dbg.partname) {
+		dent = debugfs_create_file("partname", S_IRUSR, root, mtd,
+					   &mtd_partname_debug_fops);
+		if (IS_ERR_OR_NULL(dent))
+			pr_err("cannot create debugfs entry for partname\n");
+	}
+}
+
 #ifndef CONFIG_MMU
 unsigned mtd_mmap_capabilities(struct mtd_info *mtd)
 {
@@ -534,8 +614,6 @@ static int mtd_nvmem_add(struct mtd_info *mtd)
 	return 0;
 }
 
-static struct dentry *dfs_dir_mtd;
-
 /**
  *	add_mtd_device - register an MTD device
  *	@mtd: pointer to new MTD device info structure
@@ -621,13 +699,7 @@ int add_mtd_device(struct mtd_info *mtd)
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
2.22.0.rc1.311.g5d7573a151-goog


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
