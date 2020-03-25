Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2608C19285E
	for <lists+linux-mtd@lfdr.de>; Wed, 25 Mar 2020 13:29:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZYoxHsMDiqvuDzVV2NQXFdmIf5kTds3rqzmsGB84g04=; b=RVzkpjLxnEgqcI
	5ob44qhoVicspwrEfyQvQ+Z4sD6scmzL71al0hNVtngzokB7GwXfHtMAQKsc+3UmgZDrziYAFtcQX
	19Bs+U7mq8D+it/lCC3dfnhuUcPOhu1wkCcozJCvYpXrgJNMonqYX6OMuOaEjVPD6lFhpus9kZ4Mw
	BTUhv9RgNCwjhEfPOOVFO+MGxYjBtQhGpJSg9d+9ukGFkTFZzTYFrscuJcy0f4BSRxSplUa7MDPGd
	x32eodcjuUT8h6S7ofIp79eNZ1jwixFndnf9uXbC2DdKAID/GR7PLnq8n6FBqe2KqlnxCMolRf5sA
	FhItAaUGHhGiGVrPZN8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH59u-00043D-V9; Wed, 25 Mar 2020 12:29:22 +0000
Received: from [2001:4bb8:18c:2a9e:999c:283e:b14a:9189] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH599-0003Ko-4c; Wed, 25 Mar 2020 12:28:35 +0000
From: Christoph Hellwig <hch@lst.de>
To: "Theodore Ts'o" <tytso@mit.edu>, Jaegeuk Kim <jaegeuk@kernel.org>,
 Chao Yu <chao@kernel.org>, Al Viro <viro@zeniv.linux.org.uk>,
 Richard Weinberger <richard@nod.at>, linux-xfs@vger.kernel.org
Subject: [PATCH 3/4] fs: don't call ->dirty_inode for lazytime timestamp
 updates
Date: Wed, 25 Mar 2020 13:28:24 +0100
Message-Id: <20200325122825.1086872-4-hch@lst.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200325122825.1086872-1-hch@lst.de>
References: <20200325122825.1086872-1-hch@lst.de>
MIME-Version: 1.0
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
Cc: linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 Eric Biggers <ebiggers@kernel.org>, linux-mtd@lists.infradead.org,
 linux-fsdevel@vger.kernel.org, linux-ext4@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

There is no need to call into ->dirty_inode for lazytime timestamp
updates that use the I_DIRTY_TIME flag, as file systems per definition
must ignore them.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 fs/ext4/inode.c   | 8 +-------
 fs/f2fs/super.c   | 3 ---
 fs/fs-writeback.c | 8 +++-----
 3 files changed, 4 insertions(+), 15 deletions(-)

diff --git a/fs/ext4/inode.c b/fs/ext4/inode.c
index fa0ff78dc033..dbdcf3cc0e64 100644
--- a/fs/ext4/inode.c
+++ b/fs/ext4/inode.c
@@ -5805,17 +5805,11 @@ void ext4_dirty_inode(struct inode *inode, int flags)
 {
 	handle_t *handle;
 
-	if (flags == I_DIRTY_TIME)
-		return;
 	handle = ext4_journal_start(inode, EXT4_HT_INODE, 2);
 	if (IS_ERR(handle))
-		goto out;
-
+		return;
 	ext4_mark_inode_dirty(handle, inode);
-
 	ext4_journal_stop(handle);
-out:
-	return;
 }
 
 int ext4_change_inode_journal_flag(struct inode *inode, int val)
diff --git a/fs/f2fs/super.c b/fs/f2fs/super.c
index 529334573944..5f3221ade64e 100644
--- a/fs/f2fs/super.c
+++ b/fs/f2fs/super.c
@@ -1091,9 +1091,6 @@ static void f2fs_dirty_inode(struct inode *inode, int flags)
 			inode->i_ino == F2FS_META_INO(sbi))
 		return;
 
-	if (flags == I_DIRTY_TIME)
-		return;
-
 	if (is_inode_flag_set(inode, FI_AUTO_RECOVER))
 		clear_inode_flag(inode, FI_AUTO_RECOVER);
 
diff --git a/fs/fs-writeback.c b/fs/fs-writeback.c
index dc2d65c765ae..482781da8be1 100644
--- a/fs/fs-writeback.c
+++ b/fs/fs-writeback.c
@@ -2252,16 +2252,14 @@ void __mark_inode_dirty(struct inode *inode, int flags)
 	 * Don't do this for I_DIRTY_PAGES - that doesn't actually
 	 * dirty the inode itself
 	 */
-	if (flags & (I_DIRTY_INODE | I_DIRTY_TIME)) {
+	if (flags & I_DIRTY_INODE) {
 		trace_writeback_dirty_inode_start(inode, flags);
-
 		if (sb->s_op->dirty_inode)
 			sb->s_op->dirty_inode(inode, flags);
-
 		trace_writeback_dirty_inode(inode, flags);
-	}
-	if (flags & I_DIRTY_INODE)
+
 		flags &= ~I_DIRTY_TIME;
+	}
 	dirtytime = flags & I_DIRTY_TIME;
 
 	/*
-- 
2.25.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
