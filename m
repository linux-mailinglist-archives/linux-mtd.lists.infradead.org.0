Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F31475917
	for <lists+linux-mtd@lfdr.de>; Thu, 25 Jul 2019 22:46:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=pDQd6sAtd3dHw+hu2pXqO5w5ufKrauXNHcDIklYOiBw=; b=XgA
	VDfaQMJXPatm8h1Mhcf2C3mEYl4nqKfpSScPy37l6NkTadY7RgU3qin6gsd2xcz8XcLnEDuTFwzvb
	V5MPP/vj867pZf2E7Z69pjh887tDt9GqdFrnTft8474Q91nAAk9DiF8m0xoT4dmXMxJbsz2AWbQbj
	cwMFaZ8LHreB2voh9uDbH4u/CJ7BwS0byEtTDq5rFI0hAQ8Bc1nJ/ba4X5rCPyPGYzAMpSFFhuGr5
	k97FhaoX3cM+KQVfzOwSn3gRMF1H0DCcSWgXm13CTH6MQJ5+AK37cDd4ZPiGEWH29gOkVWqIhee7o
	oDbZVk3A0Lyqv7wWKO51pcKPG2VVh3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqkd9-0001wy-8E; Thu, 25 Jul 2019 20:46:27 +0000
Received: from lilium.sigma-star.at ([109.75.188.150])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqkct-0001uF-QO
 for linux-mtd@lists.infradead.org; Thu, 25 Jul 2019 20:46:13 +0000
Received: from localhost (localhost [127.0.0.1])
 by lilium.sigma-star.at (Postfix) with ESMTP id 67D2D181821E2;
 Thu, 25 Jul 2019 22:46:10 +0200 (CEST)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id m1DZp134zG_d; Thu, 25 Jul 2019 22:46:08 +0200 (CEST)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id bh7zGY6KuOSy; Thu, 25 Jul 2019 22:46:08 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: linux-mtd@lists.infradead.org
Subject: [PATCH] ubi: Don't do anchor move within fastmap area
Date: Thu, 25 Jul 2019 22:46:01 +0200
Message-Id: <20190725204601.30642-1-richard@nod.at>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_134612_017061_C2DA2E2B 
X-CRM114-Status: GOOD (  10.73  )
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

To make sure that Fastmap can use a PEB within the first 64
PEBs, UBI moves blocks away from that area.
It uses regular wear-leveling for that job.

An anchor move can be triggered if no PEB is free in this area
or because of anticipation. In the latter case it can happen
that UBI decides to move a block but finds a free PEB
within the same area.
This case is in vain an increases only erase counters.

Catch this case and cancel wear-leveling if this happens.

Signed-off-by: Richard Weinberger <richard@nod.at>
---
 drivers/mtd/ubi/wl.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/mtd/ubi/wl.c b/drivers/mtd/ubi/wl.c
index 949700a9bb4b..3fcdefe2714d 100644
--- a/drivers/mtd/ubi/wl.c
+++ b/drivers/mtd/ubi/wl.c
@@ -710,6 +710,12 @@ static int wear_leveling_worker(struct ubi_device *ubi, struct ubi_work *wrk,
 		if (!e2)
 			goto out_cancel;
 
+		/*
+		 * Anchor move within the anchor area is useless.
+		 */
+		if (e2->pnum < UBI_FM_MAX_START)
+			goto out_cancel;
+
 		self_check_in_wl_tree(ubi, e1, &ubi->used);
 		rb_erase(&e1->u.rb, &ubi->used);
 		dbg_wl("anchor-move PEB %d to PEB %d", e1->pnum, e2->pnum);
-- 
2.16.4


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
