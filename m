Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 714A1F11F2
	for <lists+linux-mtd@lfdr.de>; Wed,  6 Nov 2019 10:16:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X9AmadbQUgWNVWPdFES8Td2WZCvobuKcKrNOidCVlrw=; b=C6UrydS1KHWzM9
	I4B418UcYUfEiWmzqld/EPjVQ4OhgkRfpJ2Q2yH4/Kll8pMnDkUVM07PLmsyA+afC1ZhrWorma8RN
	g0HRnC1kES3tyyRMwm6weyTTjferhCHdyrcVNwgwj5S6Zfj0HS01o3kf6GeuuAi9hAaqIHfCYstkr
	GmYOgTJrF8xVzPv/MHqo9sO9usgoMaSqn8eQDYsawceyJ7ZWS+mzBupoap+H1eyx064tJ6H4aVnHa
	njoRpKVCBMuQNW/HjcvFxzqtOXf4wWoPPTyMkY6DhUxI7Eg0lgiAVILDjdB/dpYT2opxpGuVBg5vq
	SjW2tpvYgLQ93iQcgvzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSHQn-0001r3-Pz; Wed, 06 Nov 2019 09:16:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSHPy-0001GG-1I
 for linux-mtd@lists.infradead.org; Wed, 06 Nov 2019 09:16:00 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1iSHPg-0002ea-I3; Wed, 06 Nov 2019 10:15:40 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1iSHPe-0000B2-K9; Wed, 06 Nov 2019 10:15:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-fsdevel@vger.kernel.org
Subject: [PATCH 5/7] ubifs: Add support for project id
Date: Wed,  6 Nov 2019 10:15:35 +0100
Message-Id: <20191106091537.32480-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20191106091537.32480-1-s.hauer@pengutronix.de>
References: <20191106091537.32480-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mtd@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_011558_249383_B7489A48 
X-CRM114-Status: GOOD (  19.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Richard Weinberger <richard@nod.at>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-mtd@lists.infradead.org, kernel@pengutronix.de, Jan Kara <jack@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The project id is necessary for quota project id support. This adds
support for the project id to UBIFS as well as support for the
FS_PROJINHERIT_FL flag.

This includes a change for the UBIFS on-disk format. struct
ubifs_ino_node gains a project id number and a UBIFS_PROJINHERIT_FL
flag.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ubifs/dir.c         | 23 +++++++++++++++++++++--
 fs/ubifs/ioctl.c       | 34 ++++++++++++++++++++++++++++++++--
 fs/ubifs/journal.c     |  2 +-
 fs/ubifs/super.c       |  1 +
 fs/ubifs/ubifs-media.h |  6 ++++--
 fs/ubifs/ubifs.h       |  4 ++++
 6 files changed, 63 insertions(+), 7 deletions(-)

diff --git a/fs/ubifs/dir.c b/fs/ubifs/dir.c
index cfce5fee9262..db2456537e6d 100644
--- a/fs/ubifs/dir.c
+++ b/fs/ubifs/dir.c
@@ -56,7 +56,8 @@ static int inherit_flags(const struct inode *dir, umode_t mode)
 		 */
 		return 0;
 
-	flags = ui->flags & (UBIFS_COMPR_FL | UBIFS_SYNC_FL | UBIFS_DIRSYNC_FL);
+	flags = ui->flags & (UBIFS_COMPR_FL | UBIFS_SYNC_FL | UBIFS_DIRSYNC_FL |
+			     UBIFS_PROJINHERIT_FL);
 	if (!S_ISDIR(mode))
 		/* The "DIRSYNC" flag only applies to directories */
 		flags &= ~UBIFS_DIRSYNC_FL;
@@ -112,6 +113,11 @@ struct inode *ubifs_new_inode(struct ubifs_info *c, struct inode *dir,
 			 current_time(inode);
 	inode->i_mapping->nrpages = 0;
 
+	if (ubifs_inode(dir)->flags & UBIFS_PROJINHERIT_FL)
+		ui->projid = ubifs_inode(dir)->projid;
+	else
+		ui->projid = make_kprojid(&init_user_ns, UBIFS_DEF_PROJID);
+
 	switch (mode & S_IFMT) {
 	case S_IFREG:
 		inode->i_mapping->a_ops = &ubifs_file_address_operations;
@@ -705,6 +711,9 @@ static int ubifs_link(struct dentry *old_dentry, struct inode *dir,
 	ubifs_assert(c, inode_is_locked(dir));
 	ubifs_assert(c, inode_is_locked(inode));
 
+	if (!projid_eq(dir_ui->projid, ui->projid))
+                return -EXDEV;
+
 	err = fscrypt_prepare_link(old_dentry, dir, dentry);
 	if (err)
 		return err;
@@ -1556,8 +1565,18 @@ static int ubifs_rename(struct inode *old_dir, struct dentry *old_dentry,
 	if (err)
 		return err;
 
-	if (flags & RENAME_EXCHANGE)
+	if ((ubifs_inode(new_dir)->flags & UBIFS_PROJINHERIT_FL) &&
+	    (!projid_eq(ubifs_inode(new_dir)->projid,
+			ubifs_inode(old_dentry->d_inode)->projid)))
+		return -EXDEV;
+
+	if (flags & RENAME_EXCHANGE) {
+		if ((ubifs_inode(old_dir)->flags & UBIFS_PROJINHERIT_FL) &&
+		   (!projid_eq(ubifs_inode(old_dir)->projid,
+			ubifs_inode(new_dentry->d_inode)->projid)))
+			return -EXDEV;
 		return ubifs_xrename(old_dir, old_dentry, new_dir, new_dentry);
+	}
 
 	return do_rename(old_dir, old_dentry, new_dir, new_dentry, flags);
 }
diff --git a/fs/ubifs/ioctl.c b/fs/ubifs/ioctl.c
index 533df56beab4..829e71d9c9ae 100644
--- a/fs/ubifs/ioctl.c
+++ b/fs/ubifs/ioctl.c
@@ -19,7 +19,7 @@
 /* Need to be kept consistent with checked flags in ioctl2ubifs() */
 #define UBIFS_SUPPORTED_IOCTL_FLAGS \
 	(FS_COMPR_FL | FS_SYNC_FL | FS_APPEND_FL | \
-	 FS_IMMUTABLE_FL | FS_DIRSYNC_FL)
+	 FS_IMMUTABLE_FL | FS_DIRSYNC_FL | FS_PROJINHERIT_FL)
 
 /**
  * ubifs_set_inode_flags - set VFS inode flags.
@@ -66,6 +66,8 @@ static int ioctl2ubifs(int ioctl_flags)
 		ubifs_flags |= UBIFS_IMMUTABLE_FL;
 	if (ioctl_flags & FS_DIRSYNC_FL)
 		ubifs_flags |= UBIFS_DIRSYNC_FL;
+	if (ioctl_flags & FS_PROJINHERIT_FL)
+		ubifs_flags |= UBIFS_PROJINHERIT_FL;
 
 	return ubifs_flags;
 }
@@ -91,6 +93,8 @@ static int ubifs2ioctl(int ubifs_flags)
 		ioctl_flags |= FS_IMMUTABLE_FL;
 	if (ubifs_flags & UBIFS_DIRSYNC_FL)
 		ioctl_flags |= FS_DIRSYNC_FL;
+	if (ubifs_flags & UBIFS_PROJINHERIT_FL)
+		ioctl_flags |= FS_PROJINHERIT_FL;
 
 	return ioctl_flags;
 }
@@ -106,6 +110,8 @@ static inline unsigned long ubifs_xflags_to_iflags(__u32 xflags)
 		iflags |= UBIFS_IMMUTABLE_FL;
 	if (xflags & FS_XFLAG_APPEND)
 		iflags |= UBIFS_APPEND_FL;
+	if (xflags & FS_XFLAG_PROJINHERIT)
+		iflags |= UBIFS_PROJINHERIT_FL;
 
         return iflags;
 }
@@ -121,15 +127,34 @@ static inline __u32 ubifs_iflags_to_xflags(unsigned long flags)
 		xflags |= FS_XFLAG_IMMUTABLE;
 	if (flags & UBIFS_APPEND_FL)
 		xflags |= FS_XFLAG_APPEND;
+	if (flags & UBIFS_PROJINHERIT_FL)
+		xflags |= FS_XFLAG_PROJINHERIT;
 
         return xflags;
 }
 
+static int ubifs_ioc_setproject(struct file *file, __u32 projid)
+{
+	struct inode *inode = file_inode(file);
+	struct ubifs_inode *ui = ubifs_inode(inode);
+	kprojid_t kprojid;
+
+	kprojid = make_kprojid(&init_user_ns, (projid_t)projid);
+	if (projid_eq(kprojid, ui->projid))
+		return 0;
+
+	ui->projid = kprojid;
+
+	return 0;
+}
+
 static void ubifs_fill_fsxattr(struct inode *inode, struct fsxattr *fa)
 {
 	struct ubifs_inode *ui = ubifs_inode(inode);
 
 	simple_fill_fsxattr(fa, ubifs_iflags_to_xflags(ui->flags));
+
+	fa->fsx_projid = (__u32)from_kprojid(&init_user_ns, ui->projid);
 }
 
 static int setflags(struct file *file, int flags, struct fsxattr *fa)
@@ -180,6 +205,10 @@ static int setflags(struct file *file, int flags, struct fsxattr *fa)
 		err = vfs_ioc_fssetxattr_check(inode, &old_fa, fa);
 		if (err)
 			goto out_unlock;
+
+		err = ubifs_ioc_setproject(file, fa->fsx_projid);
+		if (err)
+			goto out_unlock;
 	}
 
 	ui->flags = ubi_flags;
@@ -223,7 +252,8 @@ static int ubifs_ioc_fsgetxattr(struct file *file, void __user *arg)
 
 static int check_xflags(unsigned int flags)
 {
-	if (flags & ~(FS_XFLAG_SYNC | FS_XFLAG_IMMUTABLE | FS_XFLAG_APPEND))
+	if (flags & ~(FS_XFLAG_SYNC | FS_XFLAG_IMMUTABLE | FS_XFLAG_APPEND |
+		      FS_XFLAG_PROJINHERIT))
 		return -EOPNOTSUPP;
 	return 0;
 }
diff --git a/fs/ubifs/journal.c b/fs/ubifs/journal.c
index 4fd9683b8245..d8961993f9dd 100644
--- a/fs/ubifs/journal.c
+++ b/fs/ubifs/journal.c
@@ -54,7 +54,6 @@
  */
 static inline void zero_ino_node_unused(struct ubifs_ino_node *ino)
 {
-	memset(ino->padding1, 0, 4);
 	memset(ino->padding2, 0, 26);
 }
 
@@ -469,6 +468,7 @@ static void pack_inode(struct ubifs_info *c, struct ubifs_ino_node *ino,
 	ino->xattr_cnt   = cpu_to_le32(ui->xattr_cnt);
 	ino->xattr_size  = cpu_to_le32(ui->xattr_size);
 	ino->xattr_names = cpu_to_le32(ui->xattr_names);
+	ino->projid = cpu_to_le32(from_kprojid(&init_user_ns, ui->projid));
 	zero_ino_node_unused(ino);
 
 	/*
diff --git a/fs/ubifs/super.c b/fs/ubifs/super.c
index 7d4547e5202d..281f34789e32 100644
--- a/fs/ubifs/super.c
+++ b/fs/ubifs/super.c
@@ -141,6 +141,7 @@ struct inode *ubifs_iget(struct super_block *sb, unsigned long inum)
 	ui->xattr_size  = le32_to_cpu(ino->xattr_size);
 	ui->xattr_names = le32_to_cpu(ino->xattr_names);
 	ui->synced_i_size = ui->ui_size = inode->i_size;
+	ui->projid = make_kprojid(&init_user_ns, le32_to_cpu(ino->projid));
 
 	ui->xattr = (ui->flags & UBIFS_XATTR_FL) ? 1 : 0;
 
diff --git a/fs/ubifs/ubifs-media.h b/fs/ubifs/ubifs-media.h
index 3c9792cbb6ff..418f4eba1624 100644
--- a/fs/ubifs/ubifs-media.h
+++ b/fs/ubifs/ubifs-media.h
@@ -316,6 +316,7 @@ enum {
  * UBIFS_DIRSYNC_FL: I/O on this directory inode has to be synchronous
  * UBIFS_XATTR_FL: this inode is the inode for an extended attribute value
  * UBIFS_CRYPT_FL: use encryption for this inode
+ * UBIFS_PROJINHERIT_FL: Create with parents projid
  *
  * Note, these are on-flash flags which correspond to ioctl flags
  * (@FS_COMPR_FL, etc). They have the same values now, but generally, do not
@@ -329,6 +330,7 @@ enum {
 	UBIFS_DIRSYNC_FL   = 0x10,
 	UBIFS_XATTR_FL     = 0x20,
 	UBIFS_CRYPT_FL     = 0x40,
+	UBIFS_PROJINHERIT_FL = 0x80,
 };
 
 /* Inode flag bits used by UBIFS */
@@ -497,7 +499,7 @@ union ubifs_dev_desc {
  * @data_len: inode data length
  * @xattr_cnt: count of extended attributes this inode has
  * @xattr_size: summarized size of all extended attributes in bytes
- * @padding1: reserved for future, zeroes
+ * @projid: Quota project id
  * @xattr_names: sum of lengths of all extended attribute names belonging to
  *               this inode
  * @compr_type: compression type used for this inode
@@ -531,7 +533,7 @@ struct ubifs_ino_node {
 	__le32 data_len;
 	__le32 xattr_cnt;
 	__le32 xattr_size;
-	__u8 padding1[4]; /* Watch 'zero_ino_node_unused()' if changing! */
+	__le32 projid;
 	__le32 xattr_names;
 	__le16 compr_type;
 	__u8 padding2[26]; /* Watch 'zero_ino_node_unused()' if changing! */
diff --git a/fs/ubifs/ubifs.h b/fs/ubifs/ubifs.h
index c55f212dcb75..3f8a33fca67b 100644
--- a/fs/ubifs/ubifs.h
+++ b/fs/ubifs/ubifs.h
@@ -155,6 +155,8 @@
 #define UBIFS_HMAC_ARR_SZ 0
 #endif
 
+#define UBIFS_DEF_PROJID 0
+
 /*
  * Lockdep classes for UBIFS inode @ui_mutex.
  */
@@ -362,6 +364,7 @@ struct ubifs_gced_idx_leb {
  *                 inodes
  * @ui_size: inode size used by UBIFS when writing to flash
  * @flags: inode flags (@UBIFS_COMPR_FL, etc)
+ * @projid: The project id of this inode
  * @compr_type: default compression type used for this inode
  * @last_page_read: page number of last page read (for bulk read)
  * @read_in_a_row: number of consecutive pages read in a row (for bulk read)
@@ -413,6 +416,7 @@ struct ubifs_inode {
 	loff_t synced_i_size;
 	loff_t ui_size;
 	int flags;
+	kprojid_t projid;
 	pgoff_t last_page_read;
 	pgoff_t read_in_a_row;
 	int data_len;
-- 
2.24.0.rc1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
