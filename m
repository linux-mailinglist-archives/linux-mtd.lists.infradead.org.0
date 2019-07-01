Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A393710AAD
	for <lists+linux-mtd@lfdr.de>; Wed,  1 May 2019 18:08:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7fFT5wNZ/KHiEQWcnFZEGal7spDdBxElv5JKdepPPTU=; b=hbJCF7W9PoNgXY
	DHdjgO+5CQlBlainmpV1efqq0IlMYSINI//hDZ/ceJoA+HUjKWRdtvEO2kdLzmJhJrMW3LhIHJy2d
	FuCCIex32pSS/f4GFE5qUQtYbXIf7uehtZrpk824EYcaNZkiQcBk3Wvpgk2/S/SjRa0OLEkbh8JkK
	XHUecVzza6yXcoGtQcnUOA7pXEjAL6VA3hI3TwDeF3bfrwZYOTh+8Ld6G0Jqf2/Kw3hiAYGWlsEF5
	XplykCAjwfJYSYZjfoMTeaP/GiX3l/34tShSX1t6n2VGKV+JyiI4ixF7OsbwYQAWgY/0qK9c7O9m/
	lg3LRE8+OYTa4KmDQkYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLrm7-0000sY-7d; Wed, 01 May 2019 16:08:03 +0000
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLrlQ-0008P9-2K; Wed, 01 May 2019 16:07:20 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 4/4] jffs2: pass the correct prototype to read_cache_page
Date: Wed,  1 May 2019 12:06:36 -0400
Message-Id: <20190501160636.30841-5-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190501160636.30841-1-hch@lst.de>
References: <20190501160636.30841-1-hch@lst.de>
MIME-Version: 1.0
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: linux-nfs@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, linux-mtd@lists.infradead.org,
 Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Fix the callback jffs2 passes to read_cache_page to actually have the
proper type expected.  Casting around function pointers can easily
hide typing bugs, and defeats control flow protection.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 fs/jffs2/file.c     | 4 ++--
 fs/jffs2/fs.c       | 2 +-
 fs/jffs2/os-linux.h | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/fs/jffs2/file.c b/fs/jffs2/file.c
index 7d8654a1472e..f8fb89b10227 100644
--- a/fs/jffs2/file.c
+++ b/fs/jffs2/file.c
@@ -109,9 +109,9 @@ static int jffs2_do_readpage_nolock (struct inode *inode, struct page *pg)
 	return ret;
 }
 
-int jffs2_do_readpage_unlock(struct inode *inode, struct page *pg)
+int jffs2_do_readpage_unlock(void *data, struct page *pg)
 {
-	int ret = jffs2_do_readpage_nolock(inode, pg);
+	int ret = jffs2_do_readpage_nolock(data, pg);
 	unlock_page(pg);
 	return ret;
 }
diff --git a/fs/jffs2/fs.c b/fs/jffs2/fs.c
index eab04eca95a3..7fbe8a7843b9 100644
--- a/fs/jffs2/fs.c
+++ b/fs/jffs2/fs.c
@@ -686,7 +686,7 @@ unsigned char *jffs2_gc_fetch_page(struct jffs2_sb_info *c,
 	struct page *pg;
 
 	pg = read_cache_page(inode->i_mapping, offset >> PAGE_SHIFT,
-			     (void *)jffs2_do_readpage_unlock, inode);
+			     jffs2_do_readpage_unlock, inode);
 	if (IS_ERR(pg))
 		return (void *)pg;
 
diff --git a/fs/jffs2/os-linux.h b/fs/jffs2/os-linux.h
index a2dbbb3f4c74..bd3d5f0ddc34 100644
--- a/fs/jffs2/os-linux.h
+++ b/fs/jffs2/os-linux.h
@@ -155,7 +155,7 @@ extern const struct file_operations jffs2_file_operations;
 extern const struct inode_operations jffs2_file_inode_operations;
 extern const struct address_space_operations jffs2_file_address_operations;
 int jffs2_fsync(struct file *, loff_t, loff_t, int);
-int jffs2_do_readpage_unlock (struct inode *inode, struct page *pg);
+int jffs2_do_readpage_unlock(void *data, struct page *pg);
 
 /* ioctl.c */
 long jffs2_ioctl(struct file *, unsigned int, unsigned long);
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
