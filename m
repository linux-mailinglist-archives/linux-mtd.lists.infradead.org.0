Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE44D8C3F4
	for <lists+linux-mtd@lfdr.de>; Tue, 13 Aug 2019 23:51:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ap9JVfDWF0Iqk9sa8ac1vNow3qiG4rvBS74HbXI9yjs=; b=R4Q
	9iISYtMqPbWZEFA0tdFRqTztOc+YPzBht4QKlzbykx84gGzaANS9lQCFaIHhDuAVo/nHaB/iVg8Xk
	7TPvO39nEmLLKDbXx3YnzHgQTA+NgUf2nwADwtmto8OzuGGNpH/zRjbQZYfGNUMsz9ZhG5FX7qDvk
	vQCCcQjtnsbluDECRH5UPzsRFMohhp+uofne5U5PDFkpQdKiilmdl+xlsry8DM+cHdQ9ihntq+CPm
	LnvSCF7VGWrmdwgywJTcTawRg6DbMqPAADpLOn9hs56YTM9XGB5R2arPmkVO4cqoz/3YhBI9d4kIl
	BqraeGPLKcDeVtZqIt3s4Yk+24COpiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxehP-0007uP-GQ; Tue, 13 Aug 2019 21:51:23 +0000
Received: from lilium.sigma-star.at ([109.75.188.150])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxehH-0007u0-9F
 for linux-mtd@lists.infradead.org; Tue, 13 Aug 2019 21:51:16 +0000
Received: from localhost (localhost [127.0.0.1])
 by lilium.sigma-star.at (Postfix) with ESMTP id 8CD1B18108D22;
 Tue, 13 Aug 2019 23:51:05 +0200 (CEST)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id CzbVf8pVWhfm; Tue, 13 Aug 2019 23:51:04 +0200 (CEST)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id c5BOIuYcxM-W; Tue, 13 Aug 2019 23:51:04 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: linux-mtd@lists.infradead.org
Subject: [PATCH] ubifs: Fix double unlock around orphan_delete()
Date: Tue, 13 Aug 2019 23:50:51 +0200
Message-Id: <20190813215051.32100-1-richard@nod.at>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_145115_470127_B0BF8126 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Richard Weinberger <richard@nod.at>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

We unlock after orphan_delete(), so no need to unlock
in the function too.

Reported-by: Han Xu <han.xu@nxp.com>
Fixes: 8009ce956c3d ("ubifs: Don't leak orphans on memory during commit")
Signed-off-by: Richard Weinberger <richard@nod.at>
---
 fs/ubifs/orphan.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/fs/ubifs/orphan.c b/fs/ubifs/orphan.c
index b52624e28fa1..3b4b4114f208 100644
--- a/fs/ubifs/orphan.c
+++ b/fs/ubifs/orphan.c
@@ -129,7 +129,6 @@ static void __orphan_drop(struct ubifs_info *c, struct ubifs_orphan *o)
 static void orphan_delete(struct ubifs_info *c, struct ubifs_orphan *orph)
 {
 	if (orph->del) {
-		spin_unlock(&c->orphan_lock);
 		dbg_gen("deleted twice ino %lu", orph->inum);
 		return;
 	}
@@ -138,7 +137,6 @@ static void orphan_delete(struct ubifs_info *c, struct ubifs_orphan *orph)
 		orph->del = 1;
 		orph->dnext = c->orph_dnext;
 		c->orph_dnext = orph;
-		spin_unlock(&c->orphan_lock);
 		dbg_gen("delete later ino %lu", orph->inum);
 		return;
 	}
-- 
2.16.4


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
