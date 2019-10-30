Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24418E9EF0
	for <lists+linux-mtd@lfdr.de>; Wed, 30 Oct 2019 16:28:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+4CBs//azbPNKlG2EZ89P3wT8otV8A9eTsEzh6B1Egg=; b=s7dZL3NI22TUVF
	5CempfleL5LJ1wkxuZlZoquoBVpWF3Zhdq3JsQeoifcQrk6h51wd11YAahiQEw1k9myYB64dkjNcc
	jf4JoHxYYGkm2lfricGC/MToSZ3xK4ZkDc50g8uIccufulbs79XcHTgWgFVAy/t+a8xbhodJtsINZ
	XxqVkXHw1RM/pUFn5OTiy96vG5gvqtkm6hz0Sr0mjwaG1TxqggHq/EYclx6AvoqwviGIvCXrYrpnw
	uSrLehTXnRGWvR4fbAxpUK7I58yWae16jdDJgmrqyFXoPUSJGHJF7FGh0iO147hZFEPKyK6nZXrbZ
	FjgjjZjk4DTJqHLDbqzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPptp-0006jC-KR; Wed, 30 Oct 2019 15:28:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPpsg-0005qi-Df
 for linux-mtd@lists.infradead.org; Wed, 30 Oct 2019 15:27:32 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1iPpsG-0003Y4-P0; Wed, 30 Oct 2019 16:27:04 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1iPpsF-0005nJ-Uz; Wed, 30 Oct 2019 16:27:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-fsdevel@vger.kernel.org
Subject: [PATCH 06/10] ubifs: Add support for FS_IOC_FS[SG]ETXATTR ioctls
Date: Wed, 30 Oct 2019 16:26:58 +0100
Message-Id: <20191030152702.14269-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20191030152702.14269-1-s.hauer@pengutronix.de>
References: <20191030152702.14269-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mtd@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_082730_471026_AB07F2D4 
X-CRM114-Status: GOOD (  15.50  )
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

The FS_IOC_FS[SG]ETXATTR ioctls are an alternative to FS_IOC_[GS]ETFLAGS
with additional features. This patch adds support for these ioctls.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ubifs/ioctl.c | 89 +++++++++++++++++++++++++++++++++++++++++++++---
 1 file changed, 84 insertions(+), 5 deletions(-)

diff --git a/fs/ubifs/ioctl.c b/fs/ubifs/ioctl.c
index 8230dba5fd74..076102a918a8 100644
--- a/fs/ubifs/ioctl.c
+++ b/fs/ubifs/ioctl.c
@@ -95,9 +95,39 @@ static int ubifs2ioctl(int ubifs_flags)
 	return ioctl_flags;
 }
 
-static int setflags(struct file *file, int flags)
+/* Transfer xflags flags to internal */
+static inline unsigned long ubifs_xflags_to_iflags(__u32 xflags)
 {
-	int oldflags, err, release;
+	unsigned long iflags = 0;
+
+	if (xflags & FS_XFLAG_SYNC)
+		iflags |= UBIFS_APPEND_FL;
+	if (xflags & FS_XFLAG_IMMUTABLE)
+		iflags |= UBIFS_IMMUTABLE_FL;
+	if (xflags & FS_XFLAG_APPEND)
+		iflags |= UBIFS_APPEND_FL;
+
+        return iflags;
+}
+
+/* Transfer internal flags to xflags */
+static inline __u32 ubifs_iflags_to_xflags(unsigned long flags)
+{
+	__u32 xflags = 0;
+
+	if (flags & UBIFS_APPEND_FL)
+		xflags |= FS_XFLAG_SYNC;
+	if (flags & UBIFS_IMMUTABLE_FL)
+		xflags |= FS_XFLAG_IMMUTABLE;
+	if (flags & UBIFS_APPEND_FL)
+		xflags |= FS_XFLAG_APPEND;
+
+        return xflags;
+}
+
+static int setflags(struct file *file, int flags, struct fsxattr *fa)
+{
+	int ubi_flags, oldflags, err, release;
 	struct inode *inode = file_inode(file);
 	struct ubifs_inode *ui = ubifs_inode(inode);
 	struct ubifs_info *c = inode->i_sb->s_fs_info;
@@ -110,6 +140,11 @@ static int setflags(struct file *file, int flags)
 	if (!inode_owner_or_capable(inode))
 		return -EACCES;
 
+	if (fa)
+		ubi_flags = ubifs_xflags_to_iflags(fa->fsx_xflags);
+	else
+		ubi_flags = ioctl2ubifs(flags);
+
 	/*
 	 * Make sure the file-system is read-write and make sure it
 	 * will not become read-only while we are changing the flags.
@@ -126,11 +161,11 @@ static int setflags(struct file *file, int flags)
 
 	mutex_lock(&ui->ui_mutex);
 	oldflags = ubifs2ioctl(ui->flags);
-	err = vfs_ioc_setflags_prepare(inode, oldflags, flags);
+	err = vfs_ioc_setflags_prepare(inode, oldflags, ubifs2ioctl(ubi_flags));
 	if (err)
 		goto out_unlock;
 
-	ui->flags = ioctl2ubifs(flags);
+	ui->flags = ubi_flags;
 	ubifs_set_inode_flags(inode);
 	inode->i_ctime = current_time(inode);
 	release = ui->dirty;
@@ -156,6 +191,44 @@ static int setflags(struct file *file, int flags)
 	return err;
 }
 
+static int ubifs_ioc_fsgetxattr(struct file *file, void __user *arg)
+{
+	struct inode *inode = file_inode(file);
+	struct ubifs_inode *ui = ubifs_inode(inode);
+	struct fsxattr fa;
+
+	memset(&fa, 0, sizeof(fa));
+
+	fa.fsx_xflags = ubifs_iflags_to_xflags(ui->flags);
+
+	if (copy_to_user(arg, &fa, sizeof(fa)))
+		return -EFAULT;
+
+	return 0;
+}
+
+static int check_xflags(unsigned int flags)
+{
+	if (flags & ~(FS_XFLAG_SYNC | FS_XFLAG_IMMUTABLE | FS_XFLAG_APPEND))
+		return -EOPNOTSUPP;
+	return 0;
+}
+
+static int ubifs_ioc_fssetxattr(struct file *file, const void __user *arg)
+{
+	struct fsxattr fa = {};
+	int err;
+
+	if (copy_from_user(&fa, (struct fsxattr __user *)arg, sizeof(fa)))
+		return -EFAULT;
+
+	err = check_xflags(fa.fsx_xflags);
+	if (err)
+		return err;
+
+	return setflags(file, 0, &fa);
+}
+
 long ubifs_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 {
 	int flags, err;
@@ -179,7 +252,7 @@ long ubifs_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 			flags &= ~FS_DIRSYNC_FL;
 
 
-		return setflags(file, flags);
+		return setflags(file, flags, NULL);
 	}
 	case FS_IOC_SET_ENCRYPTION_POLICY: {
 		struct ubifs_info *c = inode->i_sb->s_fs_info;
@@ -208,6 +281,12 @@ long ubifs_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 	case FS_IOC_GET_ENCRYPTION_KEY_STATUS:
 		return fscrypt_ioctl_get_key_status(file, (void __user *)arg);
 
+	case FS_IOC_FSGETXATTR:
+		return ubifs_ioc_fsgetxattr(file, (void __user *)arg);
+
+	case FS_IOC_FSSETXATTR:
+		return ubifs_ioc_fssetxattr(file, (const void __user *)arg);
+
 	default:
 		return -ENOTTY;
 	}
-- 
2.24.0.rc1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
