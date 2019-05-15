Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1E641FB44
	for <lists+linux-mtd@lfdr.de>; Wed, 15 May 2019 21:52:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=EZa9bx6DaUGMPPxr50hmWsJSUDi+kF2QW1ynvCvvyHM=; b=ge4
	z/1xZgoPidlCQ6KlmCi68gD5pUHaHtFHojMrdAc9oThjBYIK9iImtiNGLrO73b88/lLYVhueeRM36
	J792GXGLug2tkhPdNoSyt8p9gsBk02AWxkKTandtjw/Q8aXbUtzWDVY2GYc0GduNUXeqMVKDc8A39
	XIPhaM2W7gVmDAahsAGEBdja8tSE+Rz/JPX3paNt1PYvP5igjSCWBdSPWl+VX5GqvaW3q5SowyxC3
	V65r2QUGEQA/Yir5/3JkT9MBjPAZAALENadJdms5reRBZaswzsfT/kH1zEZjLmEv/pT1qluVYcrHJ
	Dl2kyv8c8LXYeB0/RZ21jANcjPGly1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQzxK-0003EE-Nz; Wed, 15 May 2019 19:52:50 +0000
Received: from lilium.sigma-star.at ([109.75.188.150])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQzxD-0003Dm-C5
 for linux-mtd@lists.infradead.org; Wed, 15 May 2019 19:52:44 +0000
Received: from localhost (localhost [127.0.0.1])
 by lilium.sigma-star.at (Postfix) with ESMTP id 1C3A01809AD8D;
 Wed, 15 May 2019 21:52:42 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: linux-mtd@lists.infradead.org
Subject: [PATCH] ubifs: Don't leak orphans on memory during commit
Date: Wed, 15 May 2019 21:52:34 +0200
Message-Id: <20190515195234.17090-1-richard@nod.at>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_125243_562338_4146D5CC 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

If an orphan has child orphans (xattrs), and due
to a commit the parent orpahn cannot get free()'ed immediately,
put also all child orphans on the erase list.
Otherwise UBIFS will free() them only upon unmount and we
waste memory.

Fixes: 988bec41318f ("ubifs: orphan: Handle xattrs like files")
Signed-off-by: Richard Weinberger <richard@nod.at>
---
 fs/ubifs/orphan.c | 50 ++++++++++++++++++++++++--------------------------
 1 file changed, 24 insertions(+), 26 deletions(-)

diff --git a/fs/ubifs/orphan.c b/fs/ubifs/orphan.c
index 2f1618f300fb..7ae835d3f17a 100644
--- a/fs/ubifs/orphan.c
+++ b/fs/ubifs/orphan.c
@@ -138,25 +138,11 @@ static void __orphan_drop(struct ubifs_info *c, struct ubifs_orphan *o)
 	kfree(o);
 }
 
-static void orphan_delete(struct ubifs_info *c, ino_t inum)
+static void orphan_delete(struct ubifs_info *c, struct ubifs_orphan *orph)
 {
-	struct ubifs_orphan *orph, *child_orph, *tmp_o;
-
-	spin_lock(&c->orphan_lock);
-
-	orph = lookup_orphan(c, inum);
-	if (!orph) {
-		spin_unlock(&c->orphan_lock);
-		ubifs_err(c, "missing orphan ino %lu", (unsigned long)inum);
-		dump_stack();
-
-		return;
-	}
-
 	if (orph->del) {
 		spin_unlock(&c->orphan_lock);
-		dbg_gen("deleted twice ino %lu",
-			(unsigned long)inum);
+		dbg_gen("deleted twice ino %lu", orph->inum);
 		return;
 	}
 
@@ -165,19 +151,11 @@ static void orphan_delete(struct ubifs_info *c, ino_t inum)
 		orph->dnext = c->orph_dnext;
 		c->orph_dnext = orph;
 		spin_unlock(&c->orphan_lock);
-		dbg_gen("delete later ino %lu",
-			(unsigned long)inum);
+		dbg_gen("delete later ino %lu", orph->inum);
 		return;
 	}
 
-	list_for_each_entry_safe(child_orph, tmp_o, &orph->child_list, child_list) {
-		list_del(&child_orph->child_list);
-		__orphan_drop(c, child_orph);
-	}
-
 	__orphan_drop(c, orph);
-
-	spin_unlock(&c->orphan_lock);
 }
 
 /**
@@ -235,7 +213,27 @@ int ubifs_add_orphan(struct ubifs_info *c, ino_t inum)
  */
 void ubifs_delete_orphan(struct ubifs_info *c, ino_t inum)
 {
-	orphan_delete(c, inum);
+	struct ubifs_orphan *orph, *child_orph, *tmp_o;
+
+	spin_lock(&c->orphan_lock);
+
+	orph = lookup_orphan(c, inum);
+	if (!orph) {
+		spin_unlock(&c->orphan_lock);
+		ubifs_err(c, "missing orphan ino %lu", (unsigned long)inum);
+		dump_stack();
+
+		return;
+	}
+
+	orphan_delete(c, orph);
+
+	list_for_each_entry_safe(child_orph, tmp_o, &orph->child_list, child_list) {
+		list_del(&child_orph->child_list);
+		orphan_delete(c, child_orph);
+	}
+
+	spin_unlock(&c->orphan_lock);
 }
 
 /**
-- 
2.16.4


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
