Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D3B55EA7
	for <lists+linux-mtd@lfdr.de>; Wed, 26 Jun 2019 04:34:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BPofhRi4FsSQkWfxqwcwsnE4PSTGyp7goFCA6hEFRAA=; b=pNCbvJlJC4stCz
	h8zM978oSnzhg7z31cX02FtV+5iN+73ScsFpsWdj6w500qV8QT8uQcrrB73kiFtMbfSpuQyIug19x
	Ge9JvlAjJT4sReJHP6rXSiimpsDSb9XVHN3KuQon/E+UjKPtTTCEtqZw8VX/l0nkYIE+rPaQb/aBi
	KU/+sZc5ee0x/uio01Aw8w2I8nx1pY5i1QnXVzV6ouuO0Yxs5x8EtYQFUPBXmFo09VxSvLv00dXJK
	3km2y1VLZcOpUaSd4eHOGbbfbnb/kJGqaCILnggHQmTmQIdT9WT6qXXBdOg3R/cxRb+3LsJG7CiKA
	rQgQ7heLQqL3reE+velw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfxl8-0003Te-Lz; Wed, 26 Jun 2019 02:34:06 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfxjr-0002fL-Qa
 for linux-mtd@lists.infradead.org; Wed, 26 Jun 2019 02:32:49 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5Q2SvMX123556;
 Wed, 26 Jun 2019 02:32:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : from : to :
 cc : date : message-id : in-reply-to : references : mime-version :
 content-type : content-transfer-encoding; s=corp-2018-07-02;
 bh=S0gdoVOVzEL3D/718AR/u2Q3sdAsYWiUm062KsCK3iE=;
 b=aEgwLh6RaUOpxNKNVkJjZkKUGmltLWecI+HbzCr5FubtTbemsgSb4Mz/JZT9D/fBN5IA
 QM3BWFbDB5HK95xbeStxrywjaUJ6WAUvTMsyWITABoZIXFQvaZYye+VX9DfCI7PmhBNn
 szcbqDEFtA00p73e71KBzpe5jgrGFiwF9uDOCqOwL3X1qbtXLhKQEOUv9fNeWW2QjZ1u
 i89PfwwC36URM+FXpPyN9bYVLzo1EouiJR16JM7fr034m3nLL24qIaIO7/G4w0P/9MtX
 HtHKrLwWpMuMMeSCVlgsDOq/XmYdrh+NaoI52RuhprPLVjOUoHhqIMq9KwDoGj1/3H4v Qg== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 2t9cyqfh7q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 26 Jun 2019 02:32:35 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5Q2WY1p150495;
 Wed, 26 Jun 2019 02:32:34 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by aserp3030.oracle.com with ESMTP id 2t9acceh76-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 26 Jun 2019 02:32:34 +0000
Received: from aserp3030.oracle.com (aserp3030.oracle.com [127.0.0.1])
 by pps.reinject (8.16.0.27/8.16.0.27) with SMTP id x5Q2WYfF150423;
 Wed, 26 Jun 2019 02:32:34 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 2t9acceh6a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 26 Jun 2019 02:32:34 +0000
Received: from abhmp0022.oracle.com (abhmp0022.oracle.com [141.146.116.28])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x5Q2WTAd020858;
 Wed, 26 Jun 2019 02:32:29 GMT
Received: from localhost (/10.159.230.235)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 25 Jun 2019 19:32:29 -0700
Subject: [PATCH 3/5] vfs: teach vfs_ioc_fssetxattr_check to check project id
 info
From: "Darrick J. Wong" <darrick.wong@oracle.com>
To: matthew.garrett@nebula.com, yuchao0@huawei.com, tytso@mit.edu,
 darrick.wong@oracle.com, shaggy@kernel.org, ard.biesheuvel@linaro.org,
 josef@toxicpanda.com, hch@infradead.org, clm@fb.com,
 adilger.kernel@dilger.ca, jk@ozlabs.org, jack@suse.com,
 dsterba@suse.com, jaegeuk@kernel.org, viro@zeniv.linux.org.uk
Date: Tue, 25 Jun 2019 19:32:26 -0700
Message-ID: <156151634648.2283456.13503181576369039474.stgit@magnolia>
In-Reply-To: <156151632209.2283456.3592379873620132456.stgit@magnolia>
References: <156151632209.2283456.3592379873620132456.stgit@magnolia>
User-Agent: StGit/0.17.1-dirty
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9299
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906260027
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_193248_089738_8894C49E 
X-CRM114-Status: GOOD (  16.87  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Standardize the project id checks for FSSETXATTR.

Signed-off-by: Darrick J. Wong <darrick.wong@oracle.com>
Reviewed-by: Jan Kara <jack@suse.cz>
---
 fs/ext4/ioctl.c    |   27 ---------------------------
 fs/f2fs/file.c     |   27 ---------------------------
 fs/inode.c         |   13 +++++++++++++
 fs/xfs/xfs_ioctl.c |   15 ---------------
 4 files changed, 13 insertions(+), 69 deletions(-)


diff --git a/fs/ext4/ioctl.c b/fs/ext4/ioctl.c
index ebcc173d1e7d..1e88c3af9a8d 100644
--- a/fs/ext4/ioctl.c
+++ b/fs/ext4/ioctl.c
@@ -697,30 +697,6 @@ static long ext4_ioctl_group_add(struct file *file,
 	return err;
 }
 
-static int ext4_ioctl_check_project(struct inode *inode, struct fsxattr *fa)
-{
-	/*
-	 * Project Quota ID state is only allowed to change from within the init
-	 * namespace. Enforce that restriction only if we are trying to change
-	 * the quota ID state. Everything else is allowed in user namespaces.
-	 */
-	if (current_user_ns() == &init_user_ns)
-		return 0;
-
-	if (__kprojid_val(EXT4_I(inode)->i_projid) != fa->fsx_projid)
-		return -EINVAL;
-
-	if (ext4_test_inode_flag(inode, EXT4_INODE_PROJINHERIT)) {
-		if (!(fa->fsx_xflags & FS_XFLAG_PROJINHERIT))
-			return -EINVAL;
-	} else {
-		if (fa->fsx_xflags & FS_XFLAG_PROJINHERIT)
-			return -EINVAL;
-	}
-
-	return 0;
-}
-
 static void ext4_fill_fsxattr(struct inode *inode, struct fsxattr *fa)
 {
 	struct ext4_inode_info *ei = EXT4_I(inode);
@@ -1133,9 +1109,6 @@ long ext4_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 
 		inode_lock(inode);
 		ext4_fill_fsxattr(inode, &old_fa);
-		err = ext4_ioctl_check_project(inode, &fa);
-		if (err)
-			goto out;
 		err = vfs_ioc_fssetxattr_check(inode, &old_fa, &fa);
 		if (err)
 			goto out;
diff --git a/fs/f2fs/file.c b/fs/f2fs/file.c
index 555b970f7945..d6ed319388d6 100644
--- a/fs/f2fs/file.c
+++ b/fs/f2fs/file.c
@@ -2797,30 +2797,6 @@ static int f2fs_ioc_fsgetxattr(struct file *filp, unsigned long arg)
 	return 0;
 }
 
-static int f2fs_ioctl_check_project(struct inode *inode, struct fsxattr *fa)
-{
-	/*
-	 * Project Quota ID state is only allowed to change from within the init
-	 * namespace. Enforce that restriction only if we are trying to change
-	 * the quota ID state. Everything else is allowed in user namespaces.
-	 */
-	if (current_user_ns() == &init_user_ns)
-		return 0;
-
-	if (__kprojid_val(F2FS_I(inode)->i_projid) != fa->fsx_projid)
-		return -EINVAL;
-
-	if (F2FS_I(inode)->i_flags & F2FS_PROJINHERIT_FL) {
-		if (!(fa->fsx_xflags & FS_XFLAG_PROJINHERIT))
-			return -EINVAL;
-	} else {
-		if (fa->fsx_xflags & FS_XFLAG_PROJINHERIT)
-			return -EINVAL;
-	}
-
-	return 0;
-}
-
 static int f2fs_ioc_fssetxattr(struct file *filp, unsigned long arg)
 {
 	struct inode *inode = file_inode(filp);
@@ -2848,9 +2824,6 @@ static int f2fs_ioc_fssetxattr(struct file *filp, unsigned long arg)
 		return err;
 
 	inode_lock(inode);
-	err = f2fs_ioctl_check_project(inode, &fa);
-	if (err)
-		goto out;
 
 	f2fs_fill_fsxattr(inode, &old_fa);
 	err = vfs_ioc_fssetxattr_check(inode, &old_fa, &fa);
diff --git a/fs/inode.c b/fs/inode.c
index fdd6c5d3e48d..c4f8fb16f633 100644
--- a/fs/inode.c
+++ b/fs/inode.c
@@ -2234,6 +2234,19 @@ int vfs_ioc_fssetxattr_check(struct inode *inode, const struct fsxattr *old_fa,
 	    !capable(CAP_LINUX_IMMUTABLE))
 		return -EPERM;
 
+	/*
+	 * Project Quota ID state is only allowed to change from within the init
+	 * namespace. Enforce that restriction only if we are trying to change
+	 * the quota ID state. Everything else is allowed in user namespaces.
+	 */
+	if (current_user_ns() != &init_user_ns) {
+		if (old_fa->fsx_projid != fa->fsx_projid)
+			return -EINVAL;
+		if ((old_fa->fsx_xflags ^ fa->fsx_xflags) &
+				FS_XFLAG_PROJINHERIT)
+			return -EINVAL;
+	}
+
 	return 0;
 }
 EXPORT_SYMBOL(vfs_ioc_fssetxattr_check);
diff --git a/fs/xfs/xfs_ioctl.c b/fs/xfs/xfs_ioctl.c
index 08ec1e458865..d8c02b9905a7 100644
--- a/fs/xfs/xfs_ioctl.c
+++ b/fs/xfs/xfs_ioctl.c
@@ -1299,21 +1299,6 @@ xfs_ioctl_setattr_check_projid(
 	if (fa->fsx_projid > (uint16_t)-1 &&
 	    !xfs_sb_version_hasprojid32bit(&ip->i_mount->m_sb))
 		return -EINVAL;
-
-	/*
-	 * Project Quota ID state is only allowed to change from within the init
-	 * namespace. Enforce that restriction only if we are trying to change
-	 * the quota ID state. Everything else is allowed in user namespaces.
-	 */
-	if (current_user_ns() == &init_user_ns)
-		return 0;
-
-	if (xfs_get_projid(ip) != fa->fsx_projid)
-		return -EINVAL;
-	if ((fa->fsx_xflags & FS_XFLAG_PROJINHERIT) !=
-	    (ip->i_d.di_flags & XFS_DIFLAG_PROJINHERIT))
-		return -EINVAL;
-
 	return 0;
 }
 


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
