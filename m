Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D3A1F955C
	for <lists+linux-mtd@lfdr.de>; Mon, 15 Jun 2020 13:34:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v8noCvuY2BNqBAfcQd5YGCd9KAsJqV9KifqcOZQB7x0=; b=ht7I1uIzqtvbfU
	kb4jKTL0K7o4zKMST9Gz7ju6kCgnZWJDFFNyBeSGSuL5KvJ7BQAycFaekD9rt72++haYyrVaK7Zaf
	dwtzE7h78FRzdDuFRGrCOzXTlCjYvNDLlFpoxhzCvyU3Ghexh2k5GelMbzHiXJu498jRFAx7fwolc
	6zL7Q8CXQq6qHinIECx1vq1/RQWglwOvYq2aV/I7BangluZG77OuMTOh3VqAlmQ5ClAUbR9b8eoai
	fE63kFnpi7ZOvRNa5dGCy6/VBelhKrxDsNNDSNjrS08lLmM300DvHzr+QcZxKp47o7drfyrDgkXkT
	Y0o3IO7cCYzCLp/LrjGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jknO0-0004vl-8K; Mon, 15 Jun 2020 11:34:44 +0000
Received: from lilium.sigma-star.at ([109.75.188.150])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jknNr-0004un-Nt
 for linux-mtd@lists.infradead.org; Mon, 15 Jun 2020 11:34:37 +0000
Received: from localhost (localhost [127.0.0.1])
 by lilium.sigma-star.at (Postfix) with ESMTP id 515BF18191042;
 Mon, 15 Jun 2020 13:34:23 +0200 (CEST)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id dOA46q-Td_kF; Mon, 15 Jun 2020 13:34:22 +0200 (CEST)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id HUAf7wxJjGOH; Mon, 15 Jun 2020 13:34:22 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: linux-mtd@lists.infradead.org
Subject: [PATCH] nandsim: Fix return code testing of ns_find_operation()
Date: Mon, 15 Jun 2020 13:34:04 +0200
Message-Id: <20200615113404.25447-1-richard@nod.at>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_043435_921208_A67797CE 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: vigneshr@ti.com, Richard Weinberger <richard@nod.at>,
 linux-kernel@vger.kernel.org, miquel.raynal@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

ns_find_operation() returns 0 on success.

Fixes: 052a7a5374bc ("mtd: rawnand: nandsim: Clean error handling")
Signed-off-by: Richard Weinberger <richard@nod.at>
---
 drivers/mtd/nand/raw/nandsim.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/nandsim.c b/drivers/mtd/nand/raw/nandsim.c
index 0a5cb77966cc..f5a53aac3c5f 100644
--- a/drivers/mtd/nand/raw/nandsim.c
+++ b/drivers/mtd/nand/raw/nandsim.c
@@ -1761,7 +1761,7 @@ static void ns_switch_state(struct nandsim *ns)
 
 		NS_DBG("switch_state: operation is unknown, try to find it\n");
 
-		if (!ns_find_operation(ns, 0))
+		if (ns_find_operation(ns, 0))
 			return;
 
 		if ((ns->state & ACTION_MASK) &&
-- 
2.26.2


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
