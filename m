Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E04B127648
	for <lists+linux-mtd@lfdr.de>; Fri, 20 Dec 2019 08:09:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=glM3SXLcvTmRp/inTcEsEuXMXPs4giA7zkxJKnZMIro=; b=eMFRkFh3FIJNLr
	WhAulJ8ETGd9+gp/vNgCs10T7dZHukh1kWIqIH0qvg0hr+RLR+5Ir5pW+hx3FUiZcncLIQCgEC9nV
	NxEnhR5i3isfYlPvjcGqW8Pimk39Fi+49eV9fWAM1iBVln3gxfoUsdLmHbIZHA3IYTL8bZ6zYmTW1
	Gbj+qNSRphbRxjTApkUbI/hH1ZJuWK+gYEy30yVSp0eezjqKsucfXIRLSk8RkYaYFwTD8zv4dzeWX
	Flflc77Zdv/9OIK7HRhv2LGibvqn/E6RFuHJSkmx4X4BDtx7x76TE9QRzg8hOJQ62wOaUTjqgIEgW
	Ekcawl+ehjlhT0CVj4aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiCP8-0007K5-5t; Fri, 20 Dec 2019 07:08:54 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiCOj-00074E-R2
 for linux-mtd@lists.infradead.org; Fri, 20 Dec 2019 07:08:31 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id B1E4FF35266EDFC729C5;
 Fri, 20 Dec 2019 15:08:22 +0800 (CST)
Received: from DESKTOP-9SCKDU9.china.huawei.com (10.67.102.224) by
 DGGEMS401-HUB.china.huawei.com (10.3.19.201) with Microsoft SMTP Server id
 14.3.439.0; Fri, 20 Dec 2019 15:08:13 +0800
From: Huaijie Yi <yihuaijie@huawei.com>
To: <dwmw2@infradead.org>, <richard@nod.at>, <viro@zeniv.linux.org.uk>,
 <dhowells@redhat.com>
Subject: [PATCH] jffs2: fix kfree uninitialized pointer in jffs2_i_callback
Date: Fri, 20 Dec 2019 15:07:24 +0800
Message-ID: <20191220070724.27660-1-yihuaijie@huawei.com>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.67.102.224]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_230830_083942_A1DC7F2C 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Guohua Zhong <zhongguohua1@huawei.com>, zhangyi <yi.zhang@huawei.com>,
 yihuaijie@huawei.com, linux-kernel@vger.kernel.org,
 fangxinwei <fangxinwei@huawei.com>, linux-mtd@lists.infradead.org,
 chenjie <chenjie6@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

commit 4fdcfab5b553 ("jffs2: fix use-after-free on
symlink traversal") move free operation of f->target
to jffs2_i_callback().

But when destroy an jffs2 inode in iget_locked(), jffs2_inode_info
was not initialized. which results in destroy_inode() calling
jffs2_i_callback() to kfree the uninitialized pointer f->target
and then BUG_ON. So move the initialization from jffs2_init_inode_info()
to jffs2_alloc_inode().

The stack likes following:
[19700101000004]kernel BUG at mm/slub.c:3824!
[19700101000004]Internal error: Oops - BUG: 0 [#1] SMP ARM
[19700101000004]CPU: 2 PID: 9 Comm: rcuos/0 Tainted: P O 4.4.185 #1
[19700101000004]PC is at kfree+0xfc/0x264
[19700101000004]LR is at jffs2_i_callback+0x10/0x28 [jffs2]
......
[20191219102226][<ffffff80083630a4>] kfree+0xd4/0x2ac
[20191219102226][<ffffff80008a0ae4>] jffs2_i_callback+0x24/0x40 [jffs2]
[20191219102226][<ffffff800828a908>] rcu_process_callbacks+0x524/0x61c
[20191219102226][<ffffff8008229cf8>] __do_softirq+0x1e0/0x3bc
[20191219102226][<ffffff800822a19c>] irq_exit+0xa0/0x124
[20191219102226][<ffffff800825074c>] msa_irq_exit+0x138/0x1c4
[20191219102226][<ffffff800827aaf8>] __handle_domain_irq+0xf0/0x1a4
[20191219102226][<ffffff8008200944>] gic_handle_irq+0xac/0x140

Reported-by: Guohua Zhong <zhongguohua1@huawei.com>
Signed-off-by: Huaijie Yi <yihuaijie@huawei.com>
Signed-off-by: zhangyi (F) <yi.zhang@huawei.com>
Signed-off-by: chenjie <chenjie6@huawei.com>
Signed-off-by: fangxinwei <fangxinwei@huawei.com>
---
 fs/jffs2/os-linux.h | 1 -
 fs/jffs2/super.c    | 2 ++
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/fs/jffs2/os-linux.h b/fs/jffs2/os-linux.h
index ef1cfa61549e..625c4da3246d 100644
--- a/fs/jffs2/os-linux.h
+++ b/fs/jffs2/os-linux.h
@@ -54,7 +54,6 @@ static inline void jffs2_init_inode_info(struct jffs2_inode_info *f)
 	f->fragtree = RB_ROOT;
 	f->metadata = NULL;
 	f->dents = NULL;
-	f->target = NULL;
 	f->flags = 0;
 	f->usercompr = 0;
 }
diff --git a/fs/jffs2/super.c b/fs/jffs2/super.c
index 0e6406c4f362..d76ed98057a1 100644
--- a/fs/jffs2/super.c
+++ b/fs/jffs2/super.c
@@ -42,6 +42,8 @@ static struct inode *jffs2_alloc_inode(struct super_block *sb)
 	f = kmem_cache_alloc(jffs2_inode_cachep, GFP_KERNEL);
 	if (!f)
 		return NULL;
+	f->target = NULL;
+
 	return &f->vfs_inode;
 }
 
-- 
2.12.3



______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
