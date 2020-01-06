Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C6A130E56
	for <lists+linux-mtd@lfdr.de>; Mon,  6 Jan 2020 09:05:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EgikmVJdiIOVGwUrEBEiNf8JsgLSUKYvCdiW0Ad6A2w=; b=njVD5JmfFhshSH
	jbZHSbypcn/jJaHTPowVW06uSdA62xccLV41aQQItxXDV4hMb5zZXw3sKuIWd8TlkmNU43CkpVDUU
	1PyvmehXknimzKrSsnAnMNZ3n3xD88Q3TINhJpOFyWBbhyi5geoF9yQXRe2qC6l/1sbauVFJ7zLG6
	RvsEPitsfxLBuQStpKhsFYbUcgm9kVscLEUlLWOwvaj98IjGNrWv+egBewXeCylsycidGyh5+z+na
	3Kx/95ba4sjxZ2zdT509Bvt6MHyPMGxg1JQrqfdKZQEKwY+XDx1EtHg7Gu/NrOQ78qiYuDPdKUoN7
	0CP3eN+2LVcb3ahKu/3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioNO6-0006AC-BY; Mon, 06 Jan 2020 08:05:22 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioNNy-00068x-2S
 for linux-mtd@lists.infradead.org; Mon, 06 Jan 2020 08:05:16 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id A87FC39B56C3B4CF6703;
 Mon,  6 Jan 2020 16:05:06 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.439.0; Mon, 6 Jan 2020
 16:04:57 +0800
From: "zhangyi (F)" <yi.zhang@huawei.com>
To: <viro@zeniv.linux.org.uk>
Subject: [PATCH] jffs2: move jffs2_init_inode_info() just after allocating
 inode
Date: Mon, 6 Jan 2020 16:04:11 +0800
Message-ID: <20200106080411.41394-1-yi.zhang@huawei.com>
X-Mailer: git-send-email 2.17.2
MIME-Version: 1.0
X-Originating-IP: [10.175.124.28]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_000514_701763_AC89652A 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: zhongguohua1@huawei.com, daniel@iogearbox.net, yi.zhang@huawei.com,
 yihuaijie@huawei.com, ast@kernel.org, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-fsdevel@vger.kernel.org,
 chenjie6@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

After commit 4fdcfab5b553 ("jffs2: fix use-after-free on symlink
traversal"), it expose a freeing uninitialized memory problem due to
this commit move the operaion of freeing f->target to
jffs2_i_callback(), which may not be initialized in some error path of
allocating jffs2 inode (eg: jffs2_iget()->iget_locked()->
destroy_inode()->..->jffs2_i_callback()->kfree(f->target)).

Fix this by initialize the jffs2_inode_info just after allocating it.

Reported-by: Guohua Zhong <zhongguohua1@huawei.com>
Reported-by: Huaijie Yi <yihuaijie@huawei.com>
Signed-off-by: zhangyi (F) <yi.zhang@huawei.com>
Cc: stable@vger.kernel.org
---
 fs/jffs2/fs.c    | 2 --
 fs/jffs2/super.c | 2 ++
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/jffs2/fs.c b/fs/jffs2/fs.c
index ab8cdd9e9325..50a9df7d43a5 100644
--- a/fs/jffs2/fs.c
+++ b/fs/jffs2/fs.c
@@ -270,7 +270,6 @@ struct inode *jffs2_iget(struct super_block *sb, unsigned long ino)
 	f = JFFS2_INODE_INFO(inode);
 	c = JFFS2_SB_INFO(inode->i_sb);
 
-	jffs2_init_inode_info(f);
 	mutex_lock(&f->sem);
 
 	ret = jffs2_do_read_inode(c, f, inode->i_ino, &latest_node);
@@ -438,7 +437,6 @@ struct inode *jffs2_new_inode (struct inode *dir_i, umode_t mode, struct jffs2_r
 		return ERR_PTR(-ENOMEM);
 
 	f = JFFS2_INODE_INFO(inode);
-	jffs2_init_inode_info(f);
 	mutex_lock(&f->sem);
 
 	memset(ri, 0, sizeof(*ri));
diff --git a/fs/jffs2/super.c b/fs/jffs2/super.c
index 0e6406c4f362..90373898587f 100644
--- a/fs/jffs2/super.c
+++ b/fs/jffs2/super.c
@@ -42,6 +42,8 @@ static struct inode *jffs2_alloc_inode(struct super_block *sb)
 	f = kmem_cache_alloc(jffs2_inode_cachep, GFP_KERNEL);
 	if (!f)
 		return NULL;
+
+	jffs2_init_inode_info(f);
 	return &f->vfs_inode;
 }
 
-- 
2.17.2


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
