Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A12A519708
	for <lists+linux-mtd@lfdr.de>; Fri, 10 May 2019 05:22:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sHntIVse0UicRS4WdNkBLtRRHSKYbrYutDJDffKGxNo=; b=q7ru97ZwDC1vAL
	cJu0kUXvspgF30d78t46zlmFsk+v+w+F4lowpDOXuhKppKvo8ign1thF865kPcSW7p3iVfHdVjMcw
	WcmYWTgaJjEU73lAsUuFUldmYZclf6YJA1vPlw6UKpBxBgGko5yZgPfjonKcwGggsZi3utJ+INKFX
	2E7tI9trB+VB6R5Qu05PKcJd6C7WddZHSmovB5L0iFzzKZsgO6fl7MVJa+K06Nqs83nWypPfrc5AB
	iGAae+jv3sJXzzxYW9Ev1aIPimdFrYXURxEsFQJUiXMBUAX0iJQ8gswuvEH4DV/NNeophOTQ19ecS
	eNaOK4t+tPMIwCe7EF8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOw7P-00014J-GN; Fri, 10 May 2019 03:22:43 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOw7H-00013A-DD
 for linux-mtd@lists.infradead.org; Fri, 10 May 2019 03:22:36 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 0EDE877DFFF3D5616573;
 Fri, 10 May 2019 11:22:26 +0800 (CST)
Received: from localhost (10.177.31.96) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0; Fri, 10 May 2019
 11:22:16 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <richard@nod.at>, <dedekind1@gmail.com>, <adrian.hunter@intel.com>
Subject: [PATCH] ubifs: Fix build error without CONFIG_UBIFS_FS_XATTR
Date: Fri, 10 May 2019 11:21:44 +0800
Message-ID: <20190510032144.15060-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.177.31.96]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_202235_672143_6ABC6559 
X-CRM114-Status: UNSURE (   7.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: YueHaibing <yuehaibing@huawei.com>, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Fix gcc build error while CONFIG_UBIFS_FS_XATTR
is not set

fs/ubifs/dir.o: In function `ubifs_unlink':
dir.c:(.text+0x260): undefined reference to `ubifs_purge_xattrs'
fs/ubifs/dir.o: In function `do_rename':
dir.c:(.text+0x1edc): undefined reference to `ubifs_purge_xattrs'
fs/ubifs/dir.o: In function `ubifs_rmdir':
dir.c:(.text+0x2638): undefined reference to `ubifs_purge_xattrs'

Reported-by: Hulk Robot <hulkci@huawei.com>
Fixes: 9ca2d7326444 ("ubifs: Limit number of xattrs per inode")
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 fs/ubifs/ubifs.h | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/fs/ubifs/ubifs.h b/fs/ubifs/ubifs.h
index 379b9f7..fd7f399 100644
--- a/fs/ubifs/ubifs.h
+++ b/fs/ubifs/ubifs.h
@@ -2015,13 +2015,17 @@ int ubifs_xattr_set(struct inode *host, const char *name, const void *value,
 		    size_t size, int flags, bool check_lock);
 ssize_t ubifs_xattr_get(struct inode *host, const char *name, void *buf,
 			size_t size);
-int ubifs_purge_xattrs(struct inode *host);
 
 #ifdef CONFIG_UBIFS_FS_XATTR
 void ubifs_evict_xattr_inode(struct ubifs_info *c, ino_t xattr_inum);
+int ubifs_purge_xattrs(struct inode *host);
 #else
 static inline void ubifs_evict_xattr_inode(struct ubifs_info *c,
 					   ino_t xattr_inum) { }
+static inline int ubifs_purge_xattrs(struct inode *host)
+{
+	return 0;
+}
 #endif
 
 #ifdef CONFIG_UBIFS_FS_SECURITY
-- 
2.7.4



______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
