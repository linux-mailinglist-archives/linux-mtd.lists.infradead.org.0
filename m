Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F67B8B53
	for <lists+linux-mtd@lfdr.de>; Fri, 20 Sep 2019 09:02:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=yosfBdUhL51LMJ3ov8ZeuKR3fEclHsez5KWclRsZBDw=; b=OLa
	FPkp7/WDFmQxRqJiOoELNlG3poLiDUewcu8/xGnatYb+VUf7UzByvLzhJRXFDwvOxU+lB2IUPTXnl
	eujcjI88L97LxdH/SZps5o58wqkY/AXngNuhojFdZ41h4P6l7ge1BcaOdQhtDi2VBNFcNdt5klRUd
	JV/bGV4LhZiekR7psZCR2jslqB4WwQwWxl9otfvCOqdvLEzIFJ1zXRnSJZJtYpQN8abVPNvt1IAVk
	yFGMCnFHSmRWF6e5nTsm6GiP/W5k6Md6DQRw2Vw27MFfgUKBKCGcbdR7heIjtRbvktFlxdv4M+mNn
	mZ+gJIFNX1mrZwSlOt1d/MYbb/7STEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBCwA-0005MG-1v; Fri, 20 Sep 2019 07:02:38 +0000
Received: from lilium.sigma-star.at ([109.75.188.150])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBCvz-0005Lo-Vf
 for linux-mtd@lists.infradead.org; Fri, 20 Sep 2019 07:02:29 +0000
Received: from localhost (localhost [127.0.0.1])
 by lilium.sigma-star.at (Postfix) with ESMTP id 174ED18013A68;
 Fri, 20 Sep 2019 08:54:47 +0200 (CEST)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 0DMwfpTKi4jM; Fri, 20 Sep 2019 08:54:46 +0200 (CEST)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 49ghSciSR6TN; Fri, 20 Sep 2019 08:54:46 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: linux-mtd@lists.infradead.org
Subject: [PATCH] ubifs: Remove obsolete TODO from dfs_file_write()
Date: Fri, 20 Sep 2019 08:54:29 +0200
Message-Id: <20190920065429.19709-1-richard@nod.at>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_000228_168937_B926583F 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: linux-fsdevel@vger.kernel.org, Richard Weinberger <richard@nod.at>,
 Nicolai Stange <nicstange@gmail.com>, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

AFAICT this kind of problems are no longer possible since
debugfs gained file removal protection via
e9117a5a4bf6 ("debugfs: implement per-file removal protection").

Cc: Christoph Hellwig <hch@lst.de>
Cc: Nicolai Stange <nicstange@gmail.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
---
 fs/ubifs/debug.c | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/fs/ubifs/debug.c b/fs/ubifs/debug.c
index a5f10d79e0dd..d67f91752f83 100644
--- a/fs/ubifs/debug.c
+++ b/fs/ubifs/debug.c
@@ -2737,18 +2737,6 @@ static ssize_t dfs_file_write(struct file *file, const char __user *u,
 	struct dentry *dent = file->f_path.dentry;
 	int val;
 
-	/*
-	 * TODO: this is racy - the file-system might have already been
-	 * unmounted and we'd oops in this case. The plan is to fix it with
-	 * help of 'iterate_supers_type()' which we should have in v3.0: when
-	 * a debugfs opened, we rember FS's UUID in file->private_data. Then
-	 * whenever we access the FS via a debugfs file, we iterate all UBIFS
-	 * superblocks and fine the one with the same UUID, and take the
-	 * locking right.
-	 *
-	 * The other way to go suggested by Al Viro is to create a separate
-	 * 'ubifs-debug' file-system instead.
-	 */
 	if (file->f_path.dentry == d->dfs_dump_lprops) {
 		ubifs_dump_lprops(c);
 		return count;
-- 
2.16.4


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
