Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29DEB1FA9C8
	for <lists+linux-mtd@lfdr.de>; Tue, 16 Jun 2020 09:12:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JLUKDbPun2DimN+EcDPg/iyhXtgNhZGklhqh0Oz8ZaY=; b=bOsCcLEkojdKHk
	TPsPc7TKFCo86yJf6nIcMNR6e9zwydaiERitDx58KSM93yeS5eqe9n8anme5gpUkyZOO3TtZANduY
	aydSV07k6jymuh4lh6PGpECfjfZHV03ymHySt1WT7BKX14r3R8yCpu2XTlKZFKCe7ZO7h4UMbuMqZ
	P517zxalc8ED5ViVVPGlAn0JMBy2R/nhGpSudwjglEuwFdo+SSN+pwdqmCe8cPntdYNAciKeOZUXM
	xHcwA9b1pxlxns0DmLz9caHYTXgSSd12stPXdSmrDl8LO3b+s0B6ICJEKGEJWg812a46A5U1fhL2L
	V1thE+fz8aRWqgMPgTww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl5lP-0007ZM-Uf; Tue, 16 Jun 2020 07:12:07 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl5kF-0006bb-VD
 for linux-mtd@lists.infradead.org; Tue, 16 Jun 2020 07:10:57 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id C89E5D6E242227FF4D68;
 Tue, 16 Jun 2020 15:10:43 +0800 (CST)
Received: from huawei.com (10.175.127.227) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.487.0; Tue, 16 Jun 2020
 15:10:33 +0800
From: Zhihao Cheng <chengzhihao1@huawei.com>
To: <linux-mtd@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH RFC 4/5] ubifs: ubifs_dump_sleb: Remove unused function
Date: Tue, 16 Jun 2020 15:11:45 +0800
Message-ID: <20200616071146.2607061-5-chengzhihao1@huawei.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200616071146.2607061-1-chengzhihao1@huawei.com>
References: <20200616071146.2607061-1-chengzhihao1@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.127.227]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_001056_203179_D55D76D3 
X-CRM114-Status: UNSURE (   6.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.32 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: richard@nod.at, liu.song11@zte.com.cn, yi.zhang@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Function ubifs_dump_sleb() is defined but unused, it can be removed.

Signed-off-by: Zhihao Cheng <chengzhihao1@huawei.com>
---
 fs/ubifs/debug.c | 16 ----------------
 fs/ubifs/debug.h |  2 --
 2 files changed, 18 deletions(-)

diff --git a/fs/ubifs/debug.c b/fs/ubifs/debug.c
index 24a6e6fb5e9a..2d07615369f9 100644
--- a/fs/ubifs/debug.c
+++ b/fs/ubifs/debug.c
@@ -828,22 +828,6 @@ void ubifs_dump_lpt_info(struct ubifs_info *c)
 	spin_unlock(&dbg_lock);
 }
 
-void ubifs_dump_sleb(const struct ubifs_info *c,
-		     const struct ubifs_scan_leb *sleb, int offs)
-{
-	struct ubifs_scan_node *snod;
-
-	pr_err("(pid %d) start dumping scanned data from LEB %d:%d\n",
-	       current->pid, sleb->lnum, offs);
-
-	list_for_each_entry(snod, &sleb->nodes, list) {
-		cond_resched();
-		pr_err("Dumping node at LEB %d:%d len %d\n",
-		       sleb->lnum, snod->offs, snod->len);
-		ubifs_dump_node(c, snod->node);
-	}
-}
-
 void ubifs_dump_leb(const struct ubifs_info *c, int lnum)
 {
 	struct ubifs_scan_leb *sleb;
diff --git a/fs/ubifs/debug.h b/fs/ubifs/debug.h
index 42610fa5f3a7..ed966108da80 100644
--- a/fs/ubifs/debug.h
+++ b/fs/ubifs/debug.h
@@ -252,8 +252,6 @@ void ubifs_dump_lprop(const struct ubifs_info *c,
 void ubifs_dump_lprops(struct ubifs_info *c);
 void ubifs_dump_lpt_info(struct ubifs_info *c);
 void ubifs_dump_leb(const struct ubifs_info *c, int lnum);
-void ubifs_dump_sleb(const struct ubifs_info *c,
-		     const struct ubifs_scan_leb *sleb, int offs);
 void ubifs_dump_znode(const struct ubifs_info *c,
 		      const struct ubifs_znode *znode);
 void ubifs_dump_heap(struct ubifs_info *c, struct ubifs_lpt_heap *heap,
-- 
2.25.4


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
