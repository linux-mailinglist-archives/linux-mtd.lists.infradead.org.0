Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7CAE19285F
	for <lists+linux-mtd@lfdr.de>; Wed, 25 Mar 2020 13:29:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=71IJEUGQJbT2sterOA06OJAXLGBRfxcfDYaeAWXBcd8=; b=APJeWB0W9oSgJi
	8QGNEm6tPb34ymXazQaqdI8ZID4kOZOOLLvQfKtrUpomw1BBKQHYlJ3WY49qNQuvMDYpTqHW/JPTq
	rrM3KnwzX2tyEed6bvtfGK16/8CDgITjf8ERVt9Nsqk6g8cGNx2S0gH8uJcGnKElCrm0tjf2mziwx
	8zC4OTs4qa+7T820OMRpU02yQXNVjsgZyg/yq97lbJRqyEanzmdqjCjtUy5VVM5SRyvgHgnyr8g1h
	hw9KhYYG5ubKOEXp53bn523V7mydrcY1VmYLhbOX9PIhK3YQnJ8l/x1nOXB0jrLNFVkvdgTuCdATk
	jlaeaM9ffK/o/wHbdtkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH5A8-0004I2-UZ; Wed, 25 Mar 2020 12:29:36 +0000
Received: from [2001:4bb8:18c:2a9e:999c:283e:b14a:9189] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH59C-0003No-4o; Wed, 25 Mar 2020 12:28:38 +0000
From: Christoph Hellwig <hch@lst.de>
To: "Theodore Ts'o" <tytso@mit.edu>, Jaegeuk Kim <jaegeuk@kernel.org>,
 Chao Yu <chao@kernel.org>, Al Viro <viro@zeniv.linux.org.uk>,
 Richard Weinberger <richard@nod.at>, linux-xfs@vger.kernel.org
Subject: [PATCH 4/4] fs: clean up generic_update_time a bit
Date: Wed, 25 Mar 2020 13:28:25 +0100
Message-Id: <20200325122825.1086872-5-hch@lst.de>
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

There is no need both the sync and iflag variables - just use dirty as
the indicator for which flag to pass to __mark_inode_dirty, as there
is no point in passing both flags - __mark_inode_dirty will immediately
clear I_DIRTY_TIME if I_DIRTY_SYNC is set.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 fs/inode.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/fs/inode.c b/fs/inode.c
index 96cf26ed4c7b..a7d19b1b15ac 100644
--- a/fs/inode.c
+++ b/fs/inode.c
@@ -1662,7 +1662,6 @@ static int relatime_need_update(struct vfsmount *mnt, struct inode *inode,
 
 int generic_update_time(struct inode *inode, struct timespec64 *time, int flags)
 {
-	int iflags = I_DIRTY_TIME;
 	bool dirty = false;
 
 	if (flags & S_ATIME)
@@ -1678,9 +1677,7 @@ int generic_update_time(struct inode *inode, struct timespec64 *time, int flags)
 	     !(inode->i_sb->s_flags & SB_LAZYTIME)))
 		dirty = true;
 
-	if (dirty)
-		iflags |= I_DIRTY_SYNC;
-	__mark_inode_dirty(inode, iflags);
+	__mark_inode_dirty(inode, dirty ? I_DIRTY_SYNC : I_DIRTY_TIME);
 	return 0;
 }
 EXPORT_SYMBOL(generic_update_time);
-- 
2.25.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
