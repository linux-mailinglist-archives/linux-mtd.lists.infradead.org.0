Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0765D106253
	for <lists+linux-mtd@lfdr.de>; Fri, 22 Nov 2019 07:03:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EJKC/CnFFaodYT4aQXXmwxlchHf5BR11rBRoHcDXNcc=; b=ZlKdCCg5q/Rv4U
	jCt94uGlrRSjUJLAMmlC0ITvWC0a1Q+8RADAV4CxZsnCXGBdWFo7D0YhFH3c7vvDHLLN7UVHWHy3n
	1uhoIlN+dCj+CtmR6Sn3vzlnwYX9BxLqkLMYxEECZaGbyx+Qt2/jDPWBzdXjEsdpl+Gz0RI2qelYi
	rKDCgAM/Lq8H0ws1P7zjSWSZ1G3Q6I6rWDul72bqZ713iSyowkIerYjtw3Id+mgvGGT6WvLcTJfdJ
	PN9zxbskmxKZz2wLDvv1V2qS6tOFAD9KOktPZvKcXAGLf3omNp7V1Y8jpYmLzc+HT248tRoTVsThA
	6qDOiC3vqOYLqt2limZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY22m-0000RX-97; Fri, 22 Nov 2019 06:03:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY1wn-0001Qn-Dr
 for linux-mtd@lists.infradead.org; Fri, 22 Nov 2019 05:57:39 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4C5B92072E;
 Fri, 22 Nov 2019 05:57:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574402256;
 bh=TYfsVzZ4zwiOufA5oBSyagynvgD3Ixw6QqNPhHSGTfE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Ybgw8ZIqgQAdBE74FgRRy4uZZY20iRAJfXTgkSxAaIk2LxyoHCwHZCuU2Nwhw5qti
 Hd0kOBQTvR7nBBxTRa3Dmtlg5h+aVVyiMkAr8LjSgZgfGkZdxSzKF2dYPPkc+/VLPd
 6X4BhngDbrPJsH5FZO8xsTMBKHb0LnJ7VmIN/Ht4=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 098/127] mtd: Check add_mtd_device() ret code
Date: Fri, 22 Nov 2019 00:55:16 -0500
Message-Id: <20191122055544.3299-97-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191122055544.3299-1-sashal@kernel.org>
References: <20191122055544.3299-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_215737_514960_276C7838 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Sasha Levin <sashal@kernel.org>, linux-mtd@lists.infradead.org,
 Boris Brezillon <bbrezillon@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Boris Brezillon <bbrezillon@kernel.org>

[ Upstream commit 2b6f0090a3335b7bdd03ca520c35591159463041 ]

add_mtd_device() can fail. We should always check its return value
and gracefully handle the failure case. Fix the call sites where this
not done (in mtdpart.c) and add a __must_check attribute to the
prototype to avoid this kind of mistakes.

Signed-off-by: Boris Brezillon <bbrezillon@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/mtd/mtdcore.h |  2 +-
 drivers/mtd/mtdpart.c | 36 +++++++++++++++++++++++++++++++-----
 2 files changed, 32 insertions(+), 6 deletions(-)

diff --git a/drivers/mtd/mtdcore.h b/drivers/mtd/mtdcore.h
index 37accfd0400e5..24480b75a88dd 100644
--- a/drivers/mtd/mtdcore.h
+++ b/drivers/mtd/mtdcore.h
@@ -7,7 +7,7 @@
 extern struct mutex mtd_table_mutex;
 
 struct mtd_info *__mtd_next_device(int i);
-int add_mtd_device(struct mtd_info *mtd);
+int __must_check add_mtd_device(struct mtd_info *mtd);
 int del_mtd_device(struct mtd_info *mtd);
 int add_mtd_partitions(struct mtd_info *, const struct mtd_partition *, int);
 int del_mtd_partitions(struct mtd_info *);
diff --git a/drivers/mtd/mtdpart.c b/drivers/mtd/mtdpart.c
index a308e707392d5..27d9785487d69 100644
--- a/drivers/mtd/mtdpart.c
+++ b/drivers/mtd/mtdpart.c
@@ -684,10 +684,22 @@ int mtd_add_partition(struct mtd_info *parent, const char *name,
 	list_add(&new->list, &mtd_partitions);
 	mutex_unlock(&mtd_partitions_mutex);
 
-	add_mtd_device(&new->mtd);
+	ret = add_mtd_device(&new->mtd);
+	if (ret)
+		goto err_remove_part;
 
 	mtd_add_partition_attrs(new);
 
+	return 0;
+
+err_remove_part:
+	mutex_lock(&mtd_partitions_mutex);
+	list_del(&new->list);
+	mutex_unlock(&mtd_partitions_mutex);
+
+	free_partition(new);
+	pr_info("%s:%i\n", __func__, __LINE__);
+
 	return ret;
 }
 EXPORT_SYMBOL_GPL(mtd_add_partition);
@@ -778,22 +790,31 @@ int add_mtd_partitions(struct mtd_info *master,
 {
 	struct mtd_part *slave;
 	uint64_t cur_offset = 0;
-	int i;
+	int i, ret;
 
 	printk(KERN_NOTICE "Creating %d MTD partitions on \"%s\":\n", nbparts, master->name);
 
 	for (i = 0; i < nbparts; i++) {
 		slave = allocate_partition(master, parts + i, i, cur_offset);
 		if (IS_ERR(slave)) {
-			del_mtd_partitions(master);
-			return PTR_ERR(slave);
+			ret = PTR_ERR(slave);
+			goto err_del_partitions;
 		}
 
 		mutex_lock(&mtd_partitions_mutex);
 		list_add(&slave->list, &mtd_partitions);
 		mutex_unlock(&mtd_partitions_mutex);
 
-		add_mtd_device(&slave->mtd);
+		ret = add_mtd_device(&slave->mtd);
+		if (ret) {
+			mutex_lock(&mtd_partitions_mutex);
+			list_del(&slave->list);
+			mutex_unlock(&mtd_partitions_mutex);
+
+			free_partition(slave);
+			goto err_del_partitions;
+		}
+
 		mtd_add_partition_attrs(slave);
 		if (parts[i].types)
 			mtd_parse_part(slave, parts[i].types);
@@ -802,6 +823,11 @@ int add_mtd_partitions(struct mtd_info *master,
 	}
 
 	return 0;
+
+err_del_partitions:
+	del_mtd_partitions(master);
+
+	return ret;
 }
 
 static DEFINE_SPINLOCK(part_parser_lock);
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
