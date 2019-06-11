Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 297D73C28B
	for <lists+linux-mtd@lfdr.de>; Tue, 11 Jun 2019 06:47:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bwNpDeH//fb0H8dRNTOPg5V3BSlGgapLFbAOiXV7Y5Q=; b=iDEzMZx+nt1Upb
	G6MmjKBvseN0tNESHJa16JGW+ucFn+JpmQj+S13r+2ZKqPFg/zP+jvCGzYeBV54D8ttDJPqX4ArTx
	ITBqEZFDQ9F6f2O/pYx86L+6xzhJTe5+/6rsW3R8MC7XKMYC8v0gxUaI0k2JQWRKl9h1aekD/EHIH
	55SsO/uzHaocIw9lCu3HW7GH7UnlFYLvof7x92Fn59BfSJsglMovFpx9w6h9zOKpQ7we7wEdk8zMp
	WyjJ9vHTbEyOjlRWrl9BrYeCG9RAWnpMe4hDlxJv9HjaDmyWVGsg5JEp4kftz53qMmGbx+7vPZabm
	AEw6e726Bt9IAe9wiNhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haYgY-0005r6-OW; Tue, 11 Jun 2019 04:47:02 +0000
Received: from aserp2130.oracle.com ([141.146.126.79])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haYft-0005WU-T4
 for linux-mtd@lists.infradead.org; Tue, 11 Jun 2019 04:46:26 +0000
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5B4hiS8179851;
 Tue, 11 Jun 2019 04:46:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : from : to :
 cc : date : message-id : in-reply-to : references : mime-version :
 content-type : content-transfer-encoding; s=corp-2018-07-02;
 bh=QRgUEJD9c6Jv8UPms0CPUwYj4YqX2jmXNZDVpcIr6I4=;
 b=HeLbbNPvYBYlwCzkC7txWNLy9wxSe0dReBH5++FwKmRmVqZHhfD+U4yUg9RVinYoTY8W
 wTEBmwxUHCcGlSutovddgzzY5hi63/j20PsqKKeZtKxfaNES+d0p0xQl00kSAZVHHVwK
 2JwA+5xLNTzpRfnxVOIC7v8rlJ5wrDiBDwhI/vZPol5MWcytQw5vh76BWeIpzV9PY5hG
 xnd8alCVlDYaE9xg0lLWMMtoR90g+Tkd7EmgxxyGP547AEP3IfFhwGpVvChCNUJ9V64n
 IxT03BYEC9reGOnVv5D3CNnN9UFhwErgs/Ouxf+kHijhiXDXC4xSnjZZwirN6h+FPXXU ww== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2130.oracle.com with ESMTP id 2t02hejrf8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 11 Jun 2019 04:46:11 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5B4iptW120011;
 Tue, 11 Jun 2019 04:46:10 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by aserp3030.oracle.com with ESMTP id 2t04hy507p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 11 Jun 2019 04:46:10 +0000
Received: from aserp3030.oracle.com (aserp3030.oracle.com [127.0.0.1])
 by pps.reinject (8.16.0.27/8.16.0.27) with SMTP id x5B4kAvW122581;
 Tue, 11 Jun 2019 04:46:10 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 2t04hy507h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 11 Jun 2019 04:46:10 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x5B4k8uK022881;
 Tue, 11 Jun 2019 04:46:08 GMT
Received: from localhost (/67.169.218.210)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 10 Jun 2019 21:46:07 -0700
Subject: [PATCH 4/4] vfs: teach vfs_ioc_fssetxattr_check to check extent
 size hints
From: "Darrick J. Wong" <darrick.wong@oracle.com>
To: matthew.garrett@nebula.com, yuchao0@huawei.com, tytso@mit.edu,
 darrick.wong@oracle.com, shaggy@kernel.org, ard.biesheuvel@linaro.org,
 josef@toxicpanda.com, clm@fb.com, adilger.kernel@dilger.ca,
 jk@ozlabs.org, jack@suse.com, dsterba@suse.com, jaegeuk@kernel.org,
 viro@zeniv.linux.org.uk
Date: Mon, 10 Jun 2019 21:46:05 -0700
Message-ID: <156022836522.3227089.4353401791178719941.stgit@magnolia>
In-Reply-To: <156022833285.3227089.11990489625041926920.stgit@magnolia>
References: <156022833285.3227089.11990489625041926920.stgit@magnolia>
User-Agent: StGit/0.17.1-dirty
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9284
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=975 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906110033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_214622_087168_9FD2964F 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.79 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
 linux-efi@vger.kernel.org, linux-kernel@vger.kernel.org,
 reiserfs-devel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 cluster-devel@redhat.com, linux-nilfs@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-btrfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-ext4@vger.kernel.org,
 ocfs2-devel@oss.oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Darrick J. Wong <darrick.wong@oracle.com>

Move the extent size hint checks that aren't xfs-specific to the vfs.

Signed-off-by: Darrick J. Wong <darrick.wong@oracle.com>
---
 fs/inode.c         |   18 +++++++++++++
 fs/xfs/xfs_ioctl.c |   70 ++++++++++++++++++++++------------------------------
 2 files changed, 47 insertions(+), 41 deletions(-)


diff --git a/fs/inode.c b/fs/inode.c
index 40ecd3a6a188..a3757051fd55 100644
--- a/fs/inode.c
+++ b/fs/inode.c
@@ -2214,6 +2214,24 @@ int vfs_ioc_fssetxattr_check(struct inode *inode, const struct fsxattr *old_fa,
 			return -EINVAL;
 	}
 
+	/* Check extent size hints. */
+	if ((fa->fsx_xflags & FS_XFLAG_EXTSIZE) && !S_ISREG(inode->i_mode))
+		return -EINVAL;
+
+	if ((fa->fsx_xflags & FS_XFLAG_EXTSZINHERIT) &&
+			!S_ISDIR(inode->i_mode))
+		return -EINVAL;
+
+	if ((fa->fsx_xflags & FS_XFLAG_COWEXTSIZE) &&
+	    !S_ISREG(inode->i_mode) && !S_ISDIR(inode->i_mode))
+		return -EINVAL;
+
+	/* Extent size hints of zero turn off the flags. */
+	if (fa->fsx_extsize == 0)
+		fa->fsx_xflags &= ~(FS_XFLAG_EXTSIZE | FS_XFLAG_EXTSZINHERIT);
+	if (fa->fsx_cowextsize == 0)
+		fa->fsx_xflags &= ~FS_XFLAG_COWEXTSIZE;
+
 	return 0;
 }
 EXPORT_SYMBOL(vfs_ioc_fssetxattr_check);
diff --git a/fs/xfs/xfs_ioctl.c b/fs/xfs/xfs_ioctl.c
index 82961de98900..b494e7e881e3 100644
--- a/fs/xfs/xfs_ioctl.c
+++ b/fs/xfs/xfs_ioctl.c
@@ -1201,39 +1201,31 @@ xfs_ioctl_setattr_check_extsize(
 	struct fsxattr		*fa)
 {
 	struct xfs_mount	*mp = ip->i_mount;
-
-	if ((fa->fsx_xflags & FS_XFLAG_EXTSIZE) && !S_ISREG(VFS_I(ip)->i_mode))
-		return -EINVAL;
-
-	if ((fa->fsx_xflags & FS_XFLAG_EXTSZINHERIT) &&
-	    !S_ISDIR(VFS_I(ip)->i_mode))
-		return -EINVAL;
+	xfs_extlen_t		size;
+	xfs_fsblock_t		extsize_fsb;
 
 	if (S_ISREG(VFS_I(ip)->i_mode) && ip->i_d.di_nextents &&
 	    ((ip->i_d.di_extsize << mp->m_sb.sb_blocklog) != fa->fsx_extsize))
 		return -EINVAL;
 
-	if (fa->fsx_extsize != 0) {
-		xfs_extlen_t    size;
-		xfs_fsblock_t   extsize_fsb;
-
-		extsize_fsb = XFS_B_TO_FSB(mp, fa->fsx_extsize);
-		if (extsize_fsb > MAXEXTLEN)
-			return -EINVAL;
+	if (fa->fsx_extsize == 0)
+		return 0;
 
-		if (XFS_IS_REALTIME_INODE(ip) ||
-		    (fa->fsx_xflags & FS_XFLAG_REALTIME)) {
-			size = mp->m_sb.sb_rextsize << mp->m_sb.sb_blocklog;
-		} else {
-			size = mp->m_sb.sb_blocksize;
-			if (extsize_fsb > mp->m_sb.sb_agblocks / 2)
-				return -EINVAL;
-		}
+	extsize_fsb = XFS_B_TO_FSB(mp, fa->fsx_extsize);
+	if (extsize_fsb > MAXEXTLEN)
+		return -EINVAL;
 
-		if (fa->fsx_extsize % size)
+	if (XFS_IS_REALTIME_INODE(ip) ||
+	    (fa->fsx_xflags & FS_XFLAG_REALTIME)) {
+		size = mp->m_sb.sb_rextsize << mp->m_sb.sb_blocklog;
+	} else {
+		size = mp->m_sb.sb_blocksize;
+		if (extsize_fsb > mp->m_sb.sb_agblocks / 2)
 			return -EINVAL;
-	} else
-		fa->fsx_xflags &= ~(FS_XFLAG_EXTSIZE | FS_XFLAG_EXTSZINHERIT);
+	}
+
+	if (fa->fsx_extsize % size)
+		return -EINVAL;
 
 	return 0;
 }
@@ -1259,6 +1251,8 @@ xfs_ioctl_setattr_check_cowextsize(
 	struct fsxattr		*fa)
 {
 	struct xfs_mount	*mp = ip->i_mount;
+	xfs_extlen_t		size;
+	xfs_fsblock_t		cowextsize_fsb;
 
 	if (!(fa->fsx_xflags & FS_XFLAG_COWEXTSIZE))
 		return 0;
@@ -1267,25 +1261,19 @@ xfs_ioctl_setattr_check_cowextsize(
 	    ip->i_d.di_version != 3)
 		return -EINVAL;
 
-	if (!S_ISREG(VFS_I(ip)->i_mode) && !S_ISDIR(VFS_I(ip)->i_mode))
-		return -EINVAL;
-
-	if (fa->fsx_cowextsize != 0) {
-		xfs_extlen_t    size;
-		xfs_fsblock_t   cowextsize_fsb;
+	if (fa->fsx_cowextsize == 0)
+		return 0;
 
-		cowextsize_fsb = XFS_B_TO_FSB(mp, fa->fsx_cowextsize);
-		if (cowextsize_fsb > MAXEXTLEN)
-			return -EINVAL;
+	cowextsize_fsb = XFS_B_TO_FSB(mp, fa->fsx_cowextsize);
+	if (cowextsize_fsb > MAXEXTLEN)
+		return -EINVAL;
 
-		size = mp->m_sb.sb_blocksize;
-		if (cowextsize_fsb > mp->m_sb.sb_agblocks / 2)
-			return -EINVAL;
+	size = mp->m_sb.sb_blocksize;
+	if (cowextsize_fsb > mp->m_sb.sb_agblocks / 2)
+		return -EINVAL;
 
-		if (fa->fsx_cowextsize % size)
-			return -EINVAL;
-	} else
-		fa->fsx_xflags &= ~FS_XFLAG_COWEXTSIZE;
+	if (fa->fsx_cowextsize % size)
+		return -EINVAL;
 
 	return 0;
 }


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
