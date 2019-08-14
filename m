Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D50C8D2DA
	for <lists+linux-mtd@lfdr.de>; Wed, 14 Aug 2019 14:19:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vGqJ/TYKFSYfo3+rbCwrMBVHzOfPJoldLH2Dsv1zp9Y=; b=EZ2ZaZuQUG8p+1
	GJM9tCqRLYW0voqvP1tcsPErdU3qvTiBWOyTPX0eO5Nb5fSzhV34qXGohJCq14TD7VwGuUGnY1ZoS
	sV4iprlgy+Cmd1AJgkRB4rutz2MmXAUJJkGuqlVj94AsyA85nlLMGiC0zIZ653WnMsE0rCzfo6v7k
	ELQg1/ji3fmy2NVyTnjAxACsyygXLIXm9hG0KE8eN9uRty2IJi59StUnIn9iCTIxv8pTin65hxa5r
	TS4gt3aAYJ+ZMaXDrCnHQoRo+DNAj+JFSkcVXYHvf6wOcYGyl5ZCPDcDCGUzBzFIwofHL9iTBYjYC
	T0Kv0Ei+Y4/4HIW9y6Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxsFF-0000mx-K0; Wed, 14 Aug 2019 12:19:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxsEt-0000XG-Lx
 for linux-mtd@lists.infradead.org; Wed, 14 Aug 2019 12:18:53 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1hxsEs-0005kJ-Ba; Wed, 14 Aug 2019 14:18:50 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1hxsEm-00082v-QG; Wed, 14 Aug 2019 14:18:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-fsdevel@vger.kernel.org
Subject: [PATCH 10/11] ubifs: export get_znode
Date: Wed, 14 Aug 2019 14:18:33 +0200
Message-Id: <20190814121834.13983-11-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190814121834.13983-1-s.hauer@pengutronix.de>
References: <20190814121834.13983-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mtd@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_051851_717307_3C4CB420 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

get_znode will be needed by upcoming UBIFS quota support. Rename it to
ubifs_get_znode and export it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ubifs/tnc.c   | 32 ++++++++++++++++----------------
 fs/ubifs/ubifs.h |  2 ++
 2 files changed, 18 insertions(+), 16 deletions(-)

diff --git a/fs/ubifs/tnc.c b/fs/ubifs/tnc.c
index e8e7b0e9532e..188fa036e655 100644
--- a/fs/ubifs/tnc.c
+++ b/fs/ubifs/tnc.c
@@ -571,15 +571,15 @@ static int matches_name(struct ubifs_info *c, struct ubifs_zbranch *zbr,
 }
 
 /**
- * get_znode - get a TNC znode that may not be loaded yet.
+ * ubifs_get_znode - get a TNC znode that may not be loaded yet.
  * @c: UBIFS file-system description object
  * @znode: parent znode
  * @n: znode branch slot number
  *
  * This function returns the znode or a negative error code.
  */
-static struct ubifs_znode *get_znode(struct ubifs_info *c,
-				     struct ubifs_znode *znode, int n)
+struct ubifs_znode *ubifs_get_znode(struct ubifs_info *c,
+				    struct ubifs_znode *znode, int n)
 {
 	struct ubifs_zbranch *zbr;
 
@@ -619,11 +619,11 @@ static int tnc_next(struct ubifs_info *c, struct ubifs_znode **zn, int *n)
 		nn = znode->iip + 1;
 		znode = zp;
 		if (nn < znode->child_cnt) {
-			znode = get_znode(c, znode, nn);
+			znode = ubifs_get_znode(c, znode, nn);
 			if (IS_ERR(znode))
 				return PTR_ERR(znode);
 			while (znode->level != 0) {
-				znode = get_znode(c, znode, 0);
+				znode = ubifs_get_znode(c, znode, 0);
 				if (IS_ERR(znode))
 					return PTR_ERR(znode);
 			}
@@ -663,12 +663,12 @@ static int tnc_prev(struct ubifs_info *c, struct ubifs_znode **zn, int *n)
 		nn = znode->iip - 1;
 		znode = zp;
 		if (nn >= 0) {
-			znode = get_znode(c, znode, nn);
+			znode = ubifs_get_znode(c, znode, nn);
 			if (IS_ERR(znode))
 				return PTR_ERR(znode);
 			while (znode->level != 0) {
 				nn = znode->child_cnt - 1;
-				znode = get_znode(c, znode, nn);
+				znode = ubifs_get_znode(c, znode, nn);
 				if (IS_ERR(znode))
 					return PTR_ERR(znode);
 			}
@@ -2572,7 +2572,7 @@ static int tnc_delete(struct ubifs_info *c, struct ubifs_znode *znode, int n)
 		while (znode->child_cnt == 1 && znode->level != 0) {
 			zp = znode;
 			zbr = &znode->zbranch[0];
-			znode = get_znode(c, znode, 0);
+			znode = ubifs_get_znode(c, znode, 0);
 			if (IS_ERR(znode))
 				return PTR_ERR(znode);
 			znode = dirty_cow_znode(c, zbr);
@@ -3096,12 +3096,12 @@ static struct ubifs_znode *left_znode(struct ubifs_info *c,
 			return NULL;
 		if (n >= 0) {
 			/* Now go down the rightmost branch to 'level' */
-			znode = get_znode(c, znode, n);
+			znode = ubifs_get_znode(c, znode, n);
 			if (IS_ERR(znode))
 				return znode;
 			while (znode->level != level) {
 				n = znode->child_cnt - 1;
-				znode = get_znode(c, znode, n);
+				znode = ubifs_get_znode(c, znode, n);
 				if (IS_ERR(znode))
 					return znode;
 			}
@@ -3133,11 +3133,11 @@ static struct ubifs_znode *right_znode(struct ubifs_info *c,
 			return NULL;
 		if (n < znode->child_cnt) {
 			/* Now go down the leftmost branch to 'level' */
-			znode = get_znode(c, znode, n);
+			znode = ubifs_get_znode(c, znode, n);
 			if (IS_ERR(znode))
 				return znode;
 			while (znode->level != level) {
-				znode = get_znode(c, znode, 0);
+				znode = ubifs_get_znode(c, znode, 0);
 				if (IS_ERR(znode))
 					return znode;
 			}
@@ -3222,13 +3222,13 @@ static struct ubifs_znode *lookup_znode(struct ubifs_info *c,
 		}
 		if (znode->level == level + 1)
 			break;
-		znode = get_znode(c, znode, n);
+		znode = ubifs_get_znode(c, znode, n);
 		if (IS_ERR(znode))
 			return znode;
 	}
 	/* Check if the child is the one we are looking for */
 	if (znode->zbranch[n].lnum == lnum && znode->zbranch[n].offs == offs)
-		return get_znode(c, znode, n);
+		return ubifs_get_znode(c, znode, n);
 	/* If the key is unique, there is nowhere else to look */
 	if (!is_hash_key(c, key))
 		return NULL;
@@ -3254,7 +3254,7 @@ static struct ubifs_znode *lookup_znode(struct ubifs_info *c,
 		/* Check it */
 		if (znode->zbranch[n].lnum == lnum &&
 		    znode->zbranch[n].offs == offs)
-			return get_znode(c, znode, n);
+			return ubifs_get_znode(c, znode, n);
 		/* Stop if the key is less than the one we are looking for */
 		if (keys_cmp(c, &znode->zbranch[n].key, key) < 0)
 			break;
@@ -3276,7 +3276,7 @@ static struct ubifs_znode *lookup_znode(struct ubifs_info *c,
 		/* Check it */
 		if (znode->zbranch[n].lnum == lnum &&
 		    znode->zbranch[n].offs == offs)
-			return get_znode(c, znode, n);
+			return ubifs_get_znode(c, znode, n);
 		/* Stop if the key is greater than the one we are looking for */
 		if (keys_cmp(c, &znode->zbranch[n].key, key) > 0)
 			break;
diff --git a/fs/ubifs/ubifs.h b/fs/ubifs/ubifs.h
index 3f8a33fca67b..fd9e52749ef7 100644
--- a/fs/ubifs/ubifs.h
+++ b/fs/ubifs/ubifs.h
@@ -1819,6 +1819,8 @@ int ubifs_find_dirty_idx_leb(struct ubifs_info *c);
 int ubifs_save_dirty_idx_lnums(struct ubifs_info *c);
 
 /* tnc.c */
+struct ubifs_znode *ubifs_get_znode(struct ubifs_info *c,
+				    struct ubifs_znode *znode, int n);
 int ubifs_lookup_level0(struct ubifs_info *c, const union ubifs_key *key,
 			struct ubifs_znode **zn, int *n);
 int ubifs_tnc_lookup_nm(struct ubifs_info *c, const union ubifs_key *key,
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
