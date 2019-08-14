Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8D78D2E6
	for <lists+linux-mtd@lfdr.de>; Wed, 14 Aug 2019 14:20:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5smQqMPxY7XXkcMM+26M7emNJKpfA7DkIQlFzN4IWkU=; b=ThzWl3442ntS+v
	NB7l6fdvQhmxss0gR2L0XvXdwOdGIEjN041T4j6bdIEwf5F7grfotLzL6ab0NCEjk6bI7SKwJvEQ5
	s4S2wdCALtGFysaRLvFSMb1mFV9vZMltIXcxz+ko0SmFpO2rFpBmR61a7XE3lyqiZ83qEYsgAhpEQ
	tiAIlbOC3JlKY2WSl9GP0Bhh/mzNXM49xBEpDTkh/cxVUcilB3pUiZxMOPsodAb5mnECbApMmkJXh
	CmBCR9FrPfMw2CzHAEHjSTJbbJoCuVIpdB5AYR88bmZB6Qi13pik4Sdr14BGJk4EtQKD9pRcB+IPc
	8wZpgvPVy+MY3tJ6E0Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxsGU-0003E5-AY; Wed, 14 Aug 2019 12:20:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxsF6-0000qc-UG
 for linux-mtd@lists.infradead.org; Wed, 14 Aug 2019 12:19:06 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1hxsEp-0005kF-Ee; Wed, 14 Aug 2019 14:18:47 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1hxsEm-00081f-OC; Wed, 14 Aug 2019 14:18:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-fsdevel@vger.kernel.org
Subject: [PATCH 06/11] ubifs: move checks and preparation into setflags()
Date: Wed, 14 Aug 2019 14:18:29 +0200
Message-Id: <20190814121834.13983-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190814121834.13983-1-s.hauer@pengutronix.de>
References: <20190814121834.13983-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mtd@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_051905_041436_677C9F30 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Richard Weinberger <richard@nod.at>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-mtd@lists.infradead.org, kernel@pengutronix.de, Jan Kara <jack@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

setflags() can be reused for upcoming FS_IOC_FS[SG]ETXATTR ioctl support.
In preparation for that move the checks and preparation into that
function so we can reuse them aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ubifs/ioctl.c | 46 +++++++++++++++++++++++++++-------------------
 1 file changed, 27 insertions(+), 19 deletions(-)

diff --git a/fs/ubifs/ioctl.c b/fs/ubifs/ioctl.c
index 034ad14710d1..b9c4a51bceea 100644
--- a/fs/ubifs/ioctl.c
+++ b/fs/ubifs/ioctl.c
@@ -95,18 +95,35 @@ static int ubifs2ioctl(int ubifs_flags)
 	return ioctl_flags;
 }
 
-static int setflags(struct inode *inode, int flags)
+static int setflags(struct file *file, int flags)
 {
 	int oldflags, err, release;
+	struct inode *inode = file_inode(file);
 	struct ubifs_inode *ui = ubifs_inode(inode);
 	struct ubifs_info *c = inode->i_sb->s_fs_info;
 	struct ubifs_budget_req req = { .dirtied_ino = 1,
 					.dirtied_ino_d = ui->data_len };
 
-	err = ubifs_budget_space(c, &req);
+	if (IS_RDONLY(inode))
+		return -EROFS;
+
+	if (!inode_owner_or_capable(inode))
+		return -EACCES;
+
+	/*
+	 * Make sure the file-system is read-write and make sure it
+	 * will not become read-only while we are changing the flags.
+	 */
+	err = mnt_want_write_file(file);
 	if (err)
 		return err;
 
+	dbg_gen("set flags: %#x, i_flags %#x", flags, inode->i_flags);
+
+	err = ubifs_budget_space(c, &req);
+	if (err)
+		goto out_drop;
+
 	mutex_lock(&ui->ui_mutex);
 	oldflags = ubifs2ioctl(ui->flags);
 	err = vfs_ioc_setflags_prepare(inode, oldflags, flags);
@@ -124,12 +141,18 @@ static int setflags(struct inode *inode, int flags)
 		ubifs_release_budget(c, &req);
 	if (IS_SYNC(inode))
 		err = write_inode_now(inode, 1);
+
+	mnt_drop_write_file(file);
+
 	return err;
 
 out_unlock:
 	ubifs_err(c, "can't modify inode %lu attributes", inode->i_ino);
 	mutex_unlock(&ui->ui_mutex);
 	ubifs_release_budget(c, &req);
+out_drop:
+	mnt_drop_write_file(file);
+
 	return err;
 }
 
@@ -146,12 +169,6 @@ long ubifs_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 		return put_user(flags, (int __user *) arg);
 
 	case FS_IOC_SETFLAGS: {
-		if (IS_RDONLY(inode))
-			return -EROFS;
-
-		if (!inode_owner_or_capable(inode))
-			return -EACCES;
-
 		if (get_user(flags, (int __user *) arg))
 			return -EFAULT;
 
@@ -161,17 +178,8 @@ long ubifs_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 		if (!S_ISDIR(inode->i_mode))
 			flags &= ~FS_DIRSYNC_FL;
 
-		/*
-		 * Make sure the file-system is read-write and make sure it
-		 * will not become read-only while we are changing the flags.
-		 */
-		err = mnt_want_write_file(file);
-		if (err)
-			return err;
-		dbg_gen("set flags: %#x, i_flags %#x", flags, inode->i_flags);
-		err = setflags(inode, flags);
-		mnt_drop_write_file(file);
-		return err;
+
+		return setflags(file, flags);
 	}
 	case FS_IOC_SET_ENCRYPTION_POLICY: {
 		struct ubifs_info *c = inode->i_sb->s_fs_info;
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
