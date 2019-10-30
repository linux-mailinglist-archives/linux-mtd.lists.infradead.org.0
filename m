Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 215B6E9F01
	for <lists+linux-mtd@lfdr.de>; Wed, 30 Oct 2019 16:29:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d8rcSdeGklBcOZFm5BbIVi9V3ytUwkpMCMlqq1S8UG0=; b=B80/b+jHsPL0C5
	/Bgvwoga71eXGwHgh81EyxW/mG2OxAVlFJh4lLZ+WHLR1h7tYvKtR9gXmALCARPCKSSAWU5gbd9nR
	weYcxDupOjBDf++5k4FeNlJLKYKqUpAAyRuEYQIwnvDtxPlyr4MTz2nvNIGW3jFS9cnZrrdcArcR3
	TwpOxuxr4ISash7mkVbr1L8PtbeDJLYlRJzRA+ChViMdAkhHww+xE/bSd3SHtRlLremi2dYpkjVsr
	DepzlY0HKkU/CH/o4iHtL5RHwkOBIsKa+hJzWUz36++W+rxSILBrmOP3PYwy+kw9dSWQVkQpmbxbu
	j/pU7oAmKm6Kd+45r/JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPpv2-0007pK-1Y; Wed, 30 Oct 2019 15:29:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPpt4-0006Cm-AE
 for linux-mtd@lists.infradead.org; Wed, 30 Oct 2019 15:27:55 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1iPpsG-0003Y5-Om; Wed, 30 Oct 2019 16:27:04 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1iPpsF-0005nM-Vb; Wed, 30 Oct 2019 16:27:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-fsdevel@vger.kernel.org
Subject: [PATCH 07/10] ubifs: do not ubifs_inode() on potentially NULL pointer
Date: Wed, 30 Oct 2019 16:26:59 +0100
Message-Id: <20191030152702.14269-8-s.hauer@pengutronix.de>
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
X-CRM114-CacheID: sfid-20191030_082754_362664_408BE167 
X-CRM114-Status: GOOD (  12.12  )
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

new_inode() may return NULL, so only derefence the return inode when
non NULL. This is merely a cleanup as calling ubifs_inode() on a NULL
pointer doesn't do any harm, only using the return value would.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ubifs/dir.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/ubifs/dir.c b/fs/ubifs/dir.c
index 0b98e3c8b461..cfce5fee9262 100644
--- a/fs/ubifs/dir.c
+++ b/fs/ubifs/dir.c
@@ -95,10 +95,10 @@ struct inode *ubifs_new_inode(struct ubifs_info *c, struct inode *dir,
 	}
 
 	inode = new_inode(c->vfs_sb);
-	ui = ubifs_inode(inode);
 	if (!inode)
 		return ERR_PTR(-ENOMEM);
 
+	ui = ubifs_inode(inode);
 	/*
 	 * Set 'S_NOCMTIME' to prevent VFS form updating [mc]time of inodes and
 	 * marking them dirty in file write path (see 'file_update_time()').
-- 
2.24.0.rc1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
