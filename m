Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBD1B5A402
	for <lists+linux-mtd@lfdr.de>; Fri, 28 Jun 2019 20:36:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gb3mbd0H4E/6WlXrp8AqOuCE3IiXytYP5QunVT+Ev5Q=; b=MCwRF7byf2ebkn
	zEtpRINCtwZWocbiQAW8QPdRoQI7Gy2umRaxUUSPQ+smmIjX2THTBOct1Jj086Ee4Q7nttjSOlLoD
	WzHGOvQ775cyrpiD8K9XOfNmuKjUxMm7JHZD7mOp0nUXH1TDIehGP0N7FiS5fqjC/MR2niWLHSpms
	10BBL7m1jCGqFf6iZdV0WWloJIXAdse4z/CImA1bTn/VqNZlj576akvy+E2oNSqBIQo9nywinUZFe
	Ibr2xou6RKeXjE840NAf0qnCwTWRCAv4anQCZ+J6cvZf1Wg3lVIXeCp/ckuKFrbmk7ZQIq7GLSBfX
	dFAKTAZCOC7xG8WdB0zQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgvjC-00029J-D5; Fri, 28 Jun 2019 18:36:06 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgvhg-00081A-9u
 for linux-mtd@lists.infradead.org; Fri, 28 Jun 2019 18:34:42 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5SIYGk2108800;
 Fri, 28 Jun 2019 18:34:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : from : to :
 cc : date : message-id : in-reply-to : references : mime-version :
 content-type : content-transfer-encoding; s=corp-2018-07-02;
 bh=e5Io/g0xNiWmEO2DTCvl0VF7LPoP49Kw7z5pPX7JPas=;
 b=e2Yx5ELrXHCtC1FcqjvQpX0ucA0XkkV2h1v33rqq+7P7h5RmGfdI6m81+ANkMnM0wmXf
 5c4c1nohEaKhzy1lhFm/a6Ktk8ZRkx0CQB/0dzettYCtfUrLAwjCxPmsvmQ5Nv47G7zB
 RM8KIFOAfP6vCsgySJdDc9mT4RQ0yJZkpJktSeR8HX4lmniVrEFWkQeiLWn/qfGVkAn1
 JuzyKJBO2LpQzZK31OOol9VuIg0ycz6JIiA8uvR3XwEIKMJ4rDFejfxMl2Dt3AJrzSJd
 xVRgE/53zSnBPzcd3rVTreNXLYTu8pmwiWL29ibFvyf6hla9kgu/XhEbk5exfbB7t3vT iw== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2t9brtq3ff-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 28 Jun 2019 18:34:16 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5SIX3PK148962;
 Fri, 28 Jun 2019 18:34:13 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by aserp3020.oracle.com with ESMTP id 2t9p6w22vr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 28 Jun 2019 18:34:13 +0000
Received: from aserp3020.oracle.com (aserp3020.oracle.com [127.0.0.1])
 by pps.reinject (8.16.0.27/8.16.0.27) with SMTP id x5SIYDhh150937;
 Fri, 28 Jun 2019 18:34:13 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 2t9p6w22vh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 28 Jun 2019 18:34:13 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x5SIYAwr021530;
 Fri, 28 Jun 2019 18:34:10 GMT
Received: from localhost (/67.169.218.210)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 28 Jun 2019 11:34:10 -0700
Subject: [PATCH 2/5] vfs: create a generic checking function for
 FS_IOC_FSSETXATTR
From: "Darrick J. Wong" <darrick.wong@oracle.com>
To: matthew.garrett@nebula.com, yuchao0@huawei.com, tytso@mit.edu,
 darrick.wong@oracle.com, shaggy@kernel.org, ard.biesheuvel@linaro.org,
 josef@toxicpanda.com, hch@infradead.org, clm@fb.com,
 adilger.kernel@dilger.ca, jk@ozlabs.org, jack@suse.com,
 dsterba@suse.com, jaegeuk@kernel.org, viro@zeniv.linux.org.uk
Date: Fri, 28 Jun 2019 11:34:07 -0700
Message-ID: <156174684767.1557318.6536861616866697820.stgit@magnolia>
In-Reply-To: <156174682897.1557318.14418894077683701275.stgit@magnolia>
References: <156174682897.1557318.14418894077683701275.stgit@magnolia>
User-Agent: StGit/0.17.1-dirty
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9302
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906280210
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_113432_501106_E460ED02 
X-CRM114-Status: GOOD (  18.46  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-xfs@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-efi@vger.kernel.org, Jan Kara <jack@suse.cz>, linux-ext4@vger.kernel.org,
 reiserfs-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
 cluster-devel@redhat.com, linux-nilfs@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-btrfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 ocfs2-devel@oss.oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Darrick J. Wong <darrick.wong@oracle.com>

Create a generic checking function for the incoming FS_IOC_FSSETXATTR
fsxattr values so that we can standardize some of the implementation
behaviors.

Signed-off-by: Darrick J. Wong <darrick.wong@oracle.com>
Reviewed-by: Jan Kara <jack@suse.cz>
---
 fs/btrfs/ioctl.c   |   17 +++++--------
 fs/ext4/ioctl.c    |   25 +++++++++++++------
 fs/f2fs/file.c     |   27 ++++++++++++++------
 fs/inode.c         |   23 +++++++++++++++++
 fs/xfs/xfs_ioctl.c |   69 ++++++++++++++++++++++++++++++----------------------
 include/linux/fs.h |    9 +++++++
 6 files changed, 113 insertions(+), 57 deletions(-)


diff --git a/fs/btrfs/ioctl.c b/fs/btrfs/ioctl.c
index d3d9b4abb09b..3cd66efdb99d 100644
--- a/fs/btrfs/ioctl.c
+++ b/fs/btrfs/ioctl.c
@@ -375,9 +375,7 @@ static int btrfs_ioctl_fsgetxattr(struct file *file, void __user *arg)
 	struct btrfs_inode *binode = BTRFS_I(file_inode(file));
 	struct fsxattr fa;
 
-	memset(&fa, 0, sizeof(fa));
-	fa.fsx_xflags = btrfs_inode_flags_to_xflags(binode->flags);
-
+	simple_fill_fsxattr(&fa, btrfs_inode_flags_to_xflags(binode->flags));
 	if (copy_to_user(arg, &fa, sizeof(fa)))
 		return -EFAULT;
 
@@ -390,7 +388,7 @@ static int btrfs_ioctl_fssetxattr(struct file *file, void __user *arg)
 	struct btrfs_inode *binode = BTRFS_I(inode);
 	struct btrfs_root *root = binode->root;
 	struct btrfs_trans_handle *trans;
-	struct fsxattr fa;
+	struct fsxattr fa, old_fa;
 	unsigned old_flags;
 	unsigned old_i_flags;
 	int ret = 0;
@@ -401,7 +399,6 @@ static int btrfs_ioctl_fssetxattr(struct file *file, void __user *arg)
 	if (btrfs_root_readonly(root))
 		return -EROFS;
 
-	memset(&fa, 0, sizeof(fa));
 	if (copy_from_user(&fa, arg, sizeof(fa)))
 		return -EFAULT;
 
@@ -421,13 +418,11 @@ static int btrfs_ioctl_fssetxattr(struct file *file, void __user *arg)
 	old_flags = binode->flags;
 	old_i_flags = inode->i_flags;
 
-	/* We need the capabilities to change append-only or immutable inode */
-	if (((old_flags & (BTRFS_INODE_APPEND | BTRFS_INODE_IMMUTABLE)) ||
-	     (fa.fsx_xflags & (FS_XFLAG_APPEND | FS_XFLAG_IMMUTABLE))) &&
-	    !capable(CAP_LINUX_IMMUTABLE)) {
-		ret = -EPERM;
+	simple_fill_fsxattr(&old_fa,
+			    btrfs_inode_flags_to_xflags(binode->flags));
+	ret = vfs_ioc_fssetxattr_check(inode, &old_fa, &fa);
+	if (ret)
 		goto out_unlock;
-	}
 
 	if (fa.fsx_xflags & FS_XFLAG_SYNC)
 		binode->flags |= BTRFS_INODE_SYNC;
diff --git a/fs/ext4/ioctl.c b/fs/ext4/ioctl.c
index 272b6e44191b..1974cb755d09 100644
--- a/fs/ext4/ioctl.c
+++ b/fs/ext4/ioctl.c
@@ -721,6 +721,17 @@ static int ext4_ioctl_check_project(struct inode *inode, struct fsxattr *fa)
 	return 0;
 }
 
+static void ext4_fill_fsxattr(struct inode *inode, struct fsxattr *fa)
+{
+	struct ext4_inode_info *ei = EXT4_I(inode);
+
+	simple_fill_fsxattr(fa, ext4_iflags_to_xflags(ei->i_flags &
+						      EXT4_FL_USER_VISIBLE));
+
+	if (ext4_has_feature_project(inode->i_sb))
+		fa->fsx_projid = from_kprojid(&init_user_ns, ei->i_projid);
+}
+
 long ext4_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 {
 	struct inode *inode = file_inode(filp);
@@ -1089,13 +1100,7 @@ long ext4_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 	{
 		struct fsxattr fa;
 
-		memset(&fa, 0, sizeof(struct fsxattr));
-		fa.fsx_xflags = ext4_iflags_to_xflags(ei->i_flags & EXT4_FL_USER_VISIBLE);
-
-		if (ext4_has_feature_project(inode->i_sb)) {
-			fa.fsx_projid = (__u32)from_kprojid(&init_user_ns,
-				EXT4_I(inode)->i_projid);
-		}
+		ext4_fill_fsxattr(inode, &fa);
 
 		if (copy_to_user((struct fsxattr __user *)arg,
 				 &fa, sizeof(fa)))
@@ -1104,7 +1109,7 @@ long ext4_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 	}
 	case EXT4_IOC_FSSETXATTR:
 	{
-		struct fsxattr fa;
+		struct fsxattr fa, old_fa;
 		int err;
 
 		if (copy_from_user(&fa, (struct fsxattr __user *)arg,
@@ -1127,7 +1132,11 @@ long ext4_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 			return err;
 
 		inode_lock(inode);
+		ext4_fill_fsxattr(inode, &old_fa);
 		err = ext4_ioctl_check_project(inode, &fa);
+		if (err)
+			goto out;
+		err = vfs_ioc_fssetxattr_check(inode, &old_fa, &fa);
 		if (err)
 			goto out;
 		flags = (ei->i_flags & ~EXT4_FL_XFLAG_VISIBLE) |
diff --git a/fs/f2fs/file.c b/fs/f2fs/file.c
index 845ae6f43ebc..8da95b84520c 100644
--- a/fs/f2fs/file.c
+++ b/fs/f2fs/file.c
@@ -2773,19 +2773,23 @@ static inline unsigned long f2fs_xflags_to_iflags(__u32 xflags)
 	return iflags;
 }
 
-static int f2fs_ioc_fsgetxattr(struct file *filp, unsigned long arg)
+static void f2fs_fill_fsxattr(struct inode *inode, struct fsxattr *fa)
 {
-	struct inode *inode = file_inode(filp);
 	struct f2fs_inode_info *fi = F2FS_I(inode);
-	struct fsxattr fa;
 
-	memset(&fa, 0, sizeof(struct fsxattr));
-	fa.fsx_xflags = f2fs_iflags_to_xflags(fi->i_flags &
-				F2FS_FL_USER_VISIBLE);
+	simple_fill_fsxattr(fa, f2fs_iflags_to_xflags(fi->i_flags &
+						      F2FS_FL_USER_VISIBLE));
 
 	if (f2fs_sb_has_project_quota(F2FS_I_SB(inode)))
-		fa.fsx_projid = (__u32)from_kprojid(&init_user_ns,
-							fi->i_projid);
+		fa->fsx_projid = from_kprojid(&init_user_ns, fi->i_projid);
+}
+
+static int f2fs_ioc_fsgetxattr(struct file *filp, unsigned long arg)
+{
+	struct inode *inode = file_inode(filp);
+	struct fsxattr fa;
+
+	f2fs_fill_fsxattr(inode, &fa);
 
 	if (copy_to_user((struct fsxattr __user *)arg, &fa, sizeof(fa)))
 		return -EFAULT;
@@ -2820,7 +2824,7 @@ static int f2fs_ioc_fssetxattr(struct file *filp, unsigned long arg)
 {
 	struct inode *inode = file_inode(filp);
 	struct f2fs_inode_info *fi = F2FS_I(inode);
-	struct fsxattr fa;
+	struct fsxattr fa, old_fa;
 	unsigned int flags;
 	int err;
 
@@ -2844,6 +2848,11 @@ static int f2fs_ioc_fssetxattr(struct file *filp, unsigned long arg)
 
 	inode_lock(inode);
 	err = f2fs_ioctl_check_project(inode, &fa);
+	if (err)
+		goto out;
+
+	f2fs_fill_fsxattr(inode, &old_fa);
+	err = vfs_ioc_fssetxattr_check(inode, &old_fa, &fa);
 	if (err)
 		goto out;
 	flags = (fi->i_flags & ~F2FS_FL_XFLAG_VISIBLE) |
diff --git a/fs/inode.c b/fs/inode.c
index 9cd1b6501e97..fdd6c5d3e48d 100644
--- a/fs/inode.c
+++ b/fs/inode.c
@@ -2214,3 +2214,26 @@ int vfs_ioc_setflags_prepare(struct inode *inode, unsigned int oldflags,
 	return 0;
 }
 EXPORT_SYMBOL(vfs_ioc_setflags_prepare);
+
+/*
+ * Generic function to check FS_IOC_FSSETXATTR values and reject any invalid
+ * configurations.
+ *
+ * Note: the caller should be holding i_mutex, or else be sure that they have
+ * exclusive access to the inode structure.
+ */
+int vfs_ioc_fssetxattr_check(struct inode *inode, const struct fsxattr *old_fa,
+			     struct fsxattr *fa)
+{
+	/*
+	 * Can't modify an immutable/append-only file unless we have
+	 * appropriate permission.
+	 */
+	if ((old_fa->fsx_xflags ^ fa->fsx_xflags) &
+			(FS_XFLAG_IMMUTABLE | FS_XFLAG_APPEND) &&
+	    !capable(CAP_LINUX_IMMUTABLE))
+		return -EPERM;
+
+	return 0;
+}
+EXPORT_SYMBOL(vfs_ioc_fssetxattr_check);
diff --git a/fs/xfs/xfs_ioctl.c b/fs/xfs/xfs_ioctl.c
index d7dfc13f30f5..458a7043b4d2 100644
--- a/fs/xfs/xfs_ioctl.c
+++ b/fs/xfs/xfs_ioctl.c
@@ -879,37 +879,44 @@ xfs_di2lxflags(
 	return flags;
 }
 
-STATIC int
-xfs_ioc_fsgetxattr(
-	xfs_inode_t		*ip,
-	int			attr,
-	void			__user *arg)
+static void
+xfs_fill_fsxattr(
+	struct xfs_inode	*ip,
+	bool			attr,
+	struct fsxattr		*fa)
 {
-	struct fsxattr		fa;
-
-	memset(&fa, 0, sizeof(struct fsxattr));
-
-	xfs_ilock(ip, XFS_ILOCK_SHARED);
-	fa.fsx_xflags = xfs_ip2xflags(ip);
-	fa.fsx_extsize = ip->i_d.di_extsize << ip->i_mount->m_sb.sb_blocklog;
-	fa.fsx_cowextsize = ip->i_d.di_cowextsize <<
+	simple_fill_fsxattr(fa, xfs_ip2xflags(ip));
+	fa->fsx_extsize = ip->i_d.di_extsize << ip->i_mount->m_sb.sb_blocklog;
+	fa->fsx_cowextsize = ip->i_d.di_cowextsize <<
 			ip->i_mount->m_sb.sb_blocklog;
-	fa.fsx_projid = xfs_get_projid(ip);
+	fa->fsx_projid = xfs_get_projid(ip);
 
 	if (attr) {
 		if (ip->i_afp) {
 			if (ip->i_afp->if_flags & XFS_IFEXTENTS)
-				fa.fsx_nextents = xfs_iext_count(ip->i_afp);
+				fa->fsx_nextents = xfs_iext_count(ip->i_afp);
 			else
-				fa.fsx_nextents = ip->i_d.di_anextents;
+				fa->fsx_nextents = ip->i_d.di_anextents;
 		} else
-			fa.fsx_nextents = 0;
+			fa->fsx_nextents = 0;
 	} else {
 		if (ip->i_df.if_flags & XFS_IFEXTENTS)
-			fa.fsx_nextents = xfs_iext_count(&ip->i_df);
+			fa->fsx_nextents = xfs_iext_count(&ip->i_df);
 		else
-			fa.fsx_nextents = ip->i_d.di_nextents;
+			fa->fsx_nextents = ip->i_d.di_nextents;
 	}
+}
+
+STATIC int
+xfs_ioc_fsgetxattr(
+	xfs_inode_t		*ip,
+	int			attr,
+	void			__user *arg)
+{
+	struct fsxattr		fa;
+
+	xfs_ilock(ip, XFS_ILOCK_SHARED);
+	xfs_fill_fsxattr(ip, attr, &fa);
 	xfs_iunlock(ip, XFS_ILOCK_SHARED);
 
 	if (copy_to_user(arg, &fa, sizeof(fa)))
@@ -1035,15 +1042,6 @@ xfs_ioctl_setattr_xflags(
 	if ((fa->fsx_xflags & FS_XFLAG_DAX) && xfs_is_reflink_inode(ip))
 		return -EINVAL;
 
-	/*
-	 * Can't modify an immutable/append-only file unless
-	 * we have appropriate permission.
-	 */
-	if (((ip->i_d.di_flags & (XFS_DIFLAG_IMMUTABLE | XFS_DIFLAG_APPEND)) ||
-	     (fa->fsx_xflags & (FS_XFLAG_IMMUTABLE | FS_XFLAG_APPEND))) &&
-	    !capable(CAP_LINUX_IMMUTABLE))
-		return -EPERM;
-
 	/* diflags2 only valid for v3 inodes. */
 	di_flags2 = xfs_flags2diflags2(ip, fa->fsx_xflags);
 	if (di_flags2 && ip->i_d.di_version < 3)
@@ -1323,6 +1321,7 @@ xfs_ioctl_setattr(
 	xfs_inode_t		*ip,
 	struct fsxattr		*fa)
 {
+	struct fsxattr		old_fa;
 	struct xfs_mount	*mp = ip->i_mount;
 	struct xfs_trans	*tp;
 	struct xfs_dquot	*udqp = NULL;
@@ -1370,7 +1369,6 @@ xfs_ioctl_setattr(
 		goto error_free_dquots;
 	}
 
-
 	if (XFS_IS_QUOTA_RUNNING(mp) && XFS_IS_PQUOTA_ON(mp) &&
 	    xfs_get_projid(ip) != fa->fsx_projid) {
 		code = xfs_qm_vop_chown_reserve(tp, ip, udqp, NULL, pdqp,
@@ -1379,6 +1377,11 @@ xfs_ioctl_setattr(
 			goto error_trans_cancel;
 	}
 
+	xfs_fill_fsxattr(ip, false, &old_fa);
+	code = vfs_ioc_fssetxattr_check(VFS_I(ip), &old_fa, fa);
+	if (code)
+		goto error_trans_cancel;
+
 	code = xfs_ioctl_setattr_check_extsize(ip, fa);
 	if (code)
 		goto error_trans_cancel;
@@ -1489,6 +1492,7 @@ xfs_ioc_setxflags(
 {
 	struct xfs_trans	*tp;
 	struct fsxattr		fa;
+	struct fsxattr		old_fa;
 	unsigned int		flags;
 	int			join_flags = 0;
 	int			error;
@@ -1524,6 +1528,13 @@ xfs_ioc_setxflags(
 		goto out_drop_write;
 	}
 
+	xfs_fill_fsxattr(ip, false, &old_fa);
+	error = vfs_ioc_fssetxattr_check(VFS_I(ip), &old_fa, &fa);
+	if (error) {
+		xfs_trans_cancel(tp);
+		goto out_drop_write;
+	}
+
 	error = xfs_ioctl_setattr_xflags(tp, ip, &fa);
 	if (error) {
 		xfs_trans_cancel(tp);
diff --git a/include/linux/fs.h b/include/linux/fs.h
index 3f74066d3f44..91482ab4556a 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -3558,4 +3558,13 @@ static inline struct sock *io_uring_get_socket(struct file *file)
 int vfs_ioc_setflags_prepare(struct inode *inode, unsigned int oldflags,
 			     unsigned int flags);
 
+int vfs_ioc_fssetxattr_check(struct inode *inode, const struct fsxattr *old_fa,
+			     struct fsxattr *fa);
+
+static inline void simple_fill_fsxattr(struct fsxattr *fa, __u32 xflags)
+{
+	memset(fa, 0, sizeof(*fa));
+	fa->fsx_xflags = xflags;
+}
+
 #endif /* _LINUX_FS_H */


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
