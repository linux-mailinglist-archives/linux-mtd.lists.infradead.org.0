Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 843251EA08A
	for <lists+linux-mtd@lfdr.de>; Mon,  1 Jun 2020 11:11:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LHVzDM+tU9P14iR4sA3x7d3Eo9yOCD/132RltnG3p+8=; b=j0TmftNl6f36JN
	dLcRoIdVk0RX8p04OKzidWs7Aiqjn4B9wOIbNVfU6EaAYbr8k2FApO0YEmEYO6/ie8XNbO5TWZP4j
	Wr0DbvGqNkr41RDMmZdYfnFv7D7NmXU5m1i/afXTpJgPmNGzMf9/NNdKlolmHZ69BxNE9+lnDbhJo
	92vCLw2rcIAIlEsCPSuAXKOHbZAzznY+I3UWuQx3t+RS0vw6p8lthuVkV7p6tMDRDLyhc7/tyViQ3
	9VAaMDpVVdE6JFrdjSKL91YcqsWJ/KFOvWKdww69s8GSjrWP1GRPR+HOR9BJps8nsqOv+s45W+ugu
	UvIqUTwDiwXPMojmLfRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfgTm-00036g-IT; Mon, 01 Jun 2020 09:11:34 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfgTV-0002zQ-3B
 for linux-mtd@lists.infradead.org; Mon, 01 Jun 2020 09:11:18 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 80EC4818D4072B2359A9;
 Mon,  1 Jun 2020 17:11:06 +0800 (CST)
Received: from huawei.com (10.175.104.175) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.487.0; Mon, 1 Jun 2020
 17:10:58 +0800
From: Zhihao Cheng <chengzhihao1@huawei.com>
To: <linux-mtd@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 1/2] ubifs: xattr: Fix some potential memory leaks while
 iterating entries
Date: Mon, 1 Jun 2020 17:10:36 +0800
Message-ID: <20200601091037.3794172-1-chengzhihao1@huawei.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
X-Originating-IP: [10.175.104.175]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_021117_301646_524C3EE2 
X-CRM114-Status: UNSURE (   8.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.191 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: richard@nod.at, yi.zhang@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Fix some potential memory leaks in error handling branches while
iterating xattr entries. For example, function ubifs_tnc_remove_ino()
forgets to free pxent if it exists. Similar problems also exist in
ubifs_purge_xattrs(), ubifs_add_orphan() and ubifs_jnl_write_inode().

Signed-off-by: Zhihao Cheng <chengzhihao1@huawei.com>
Cc: <Stable@vger.kernel.org>
Fixes: 1e51764a3c2ac05a2 ("UBIFS: add new flash file system")
---
 fs/ubifs/journal.c | 2 ++
 fs/ubifs/orphan.c  | 2 ++
 fs/ubifs/tnc.c     | 3 +++
 fs/ubifs/xattr.c   | 2 ++
 4 files changed, 9 insertions(+)

diff --git a/fs/ubifs/journal.c b/fs/ubifs/journal.c
index e5ec1afe1c66..0b4b94b079a6 100644
--- a/fs/ubifs/journal.c
+++ b/fs/ubifs/journal.c
@@ -893,6 +893,7 @@ int ubifs_jnl_write_inode(struct ubifs_info *c, const struct inode *inode)
 				if (err == -ENOENT)
 					break;
 
+				kfree(pxent);
 				goto out_release;
 			}
 
@@ -905,6 +906,7 @@ int ubifs_jnl_write_inode(struct ubifs_info *c, const struct inode *inode)
 				ubifs_err(c, "dead directory entry '%s', error %d",
 					  xent->name, err);
 				ubifs_ro_mode(c, err);
+				kfree(pxent);
 				kfree(xent);
 				goto out_release;
 			}
diff --git a/fs/ubifs/orphan.c b/fs/ubifs/orphan.c
index 283f9eb48410..b0117878b3a0 100644
--- a/fs/ubifs/orphan.c
+++ b/fs/ubifs/orphan.c
@@ -173,6 +173,7 @@ int ubifs_add_orphan(struct ubifs_info *c, ino_t inum)
 			err = PTR_ERR(xent);
 			if (err == -ENOENT)
 				break;
+			kfree(pxent);
 			return err;
 		}
 
@@ -182,6 +183,7 @@ int ubifs_add_orphan(struct ubifs_info *c, ino_t inum)
 
 		xattr_orphan = orphan_add(c, xattr_inum, orphan);
 		if (IS_ERR(xattr_orphan)) {
+			kfree(pxent);
 			kfree(xent);
 			return PTR_ERR(xattr_orphan);
 		}
diff --git a/fs/ubifs/tnc.c b/fs/ubifs/tnc.c
index e8e7b0e9532e..33742ee3945b 100644
--- a/fs/ubifs/tnc.c
+++ b/fs/ubifs/tnc.c
@@ -2885,6 +2885,7 @@ int ubifs_tnc_remove_ino(struct ubifs_info *c, ino_t inum)
 			err = PTR_ERR(xent);
 			if (err == -ENOENT)
 				break;
+			kfree(pxent);
 			return err;
 		}
 
@@ -2898,6 +2899,7 @@ int ubifs_tnc_remove_ino(struct ubifs_info *c, ino_t inum)
 		fname_len(&nm) = le16_to_cpu(xent->nlen);
 		err = ubifs_tnc_remove_nm(c, &key1, &nm);
 		if (err) {
+			kfree(pxent);
 			kfree(xent);
 			return err;
 		}
@@ -2906,6 +2908,7 @@ int ubifs_tnc_remove_ino(struct ubifs_info *c, ino_t inum)
 		highest_ino_key(c, &key2, xattr_inum);
 		err = ubifs_tnc_remove_range(c, &key1, &key2);
 		if (err) {
+			kfree(pxent);
 			kfree(xent);
 			return err;
 		}
diff --git a/fs/ubifs/xattr.c b/fs/ubifs/xattr.c
index 9aefbb60074f..a0b9b349efe6 100644
--- a/fs/ubifs/xattr.c
+++ b/fs/ubifs/xattr.c
@@ -522,6 +522,7 @@ int ubifs_purge_xattrs(struct inode *host)
 				  xent->name, err);
 			ubifs_ro_mode(c, err);
 			kfree(pxent);
+			kfree(xent);
 			return err;
 		}
 
@@ -531,6 +532,7 @@ int ubifs_purge_xattrs(struct inode *host)
 		err = remove_xattr(c, host, xino, &nm);
 		if (err) {
 			kfree(pxent);
+			kfree(xent);
 			iput(xino);
 			ubifs_err(c, "cannot remove xattr, error %d", err);
 			return err;
-- 
2.25.4


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
