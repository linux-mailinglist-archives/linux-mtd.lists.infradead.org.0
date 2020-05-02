Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 559011C257A
	for <lists+linux-mtd@lfdr.de>; Sat,  2 May 2020 14:48:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=JZCyZ4UMpWeb1dyjE8kXTL+jwMJR8soaFp9a1JaXsjo=; b=ORa
	SmAY8x3fEUTpWZBg2kSnldHBY00usPOsIjvCqCWihFSCxIEsgzEClgPXTyYUxl1VXqZ+PNUwhy9HA
	VRgRaVsphPAmv5saqggeO1OJM21yF9+dhaWeMY7LgzgbeAFWxbLR+3Jp5OjK7vPtHIndtZCI0Fl0o
	1OqOyuql+MflX29tjmD3ho+RSOV9aB0DsLD8sXzRSkca6JREAxZAkRStFq0UMks+SMV4tbZPAlRHx
	7EXmYeWZTDPjdRH13XXNV1DSelR+FDR6elqsiAIS0JfIuMQfxw+GHUycp+2VjaWAPFY0rKGq37vas
	O81KvidJm6zUuNEjaBS4xb1rEOF8r8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUrZK-00060b-Bk; Sat, 02 May 2020 12:48:34 +0000
Received: from lilium.sigma-star.at ([109.75.188.150])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUrZD-0005zb-Rm
 for linux-mtd@lists.infradead.org; Sat, 02 May 2020 12:48:29 +0000
Received: from localhost (localhost [127.0.0.1])
 by lilium.sigma-star.at (Postfix) with ESMTP id AE2C31816FAAB;
 Sat,  2 May 2020 14:48:14 +0200 (CEST)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id QL42c_S2pARi; Sat,  2 May 2020 14:48:14 +0200 (CEST)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id cHviY_6gy_rL; Sat,  2 May 2020 14:48:14 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: linux-mtd@lists.infradead.org
Subject: [PATCH] ubi: Fix seq_file usage in detailed_erase_block_info debugfs
 file
Date: Sat,  2 May 2020 14:48:02 +0200
Message-Id: <20200502124802.9758-1-richard@nod.at>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_054828_043888_AEC2F99A 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: ben.shelton@ni.com, Richard Weinberger <richard@nod.at>,
 linux-kernel@vger.kernel.org, zach.brown@ni.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

3bfa7e141b0b ("fs/seq_file.c: seq_read(): add info message about buggy .next functions")
showed that we don't use seq_file correctly.
So make sure that our ->next function always updates the position.

Fixes: 7bccd12d27b7 ("ubi: Add debugfs file for tracking PEB state")
Signed-off-by: Richard Weinberger <richard@nod.at>
---
 drivers/mtd/ubi/debug.c | 12 ++----------
 1 file changed, 2 insertions(+), 10 deletions(-)

diff --git a/drivers/mtd/ubi/debug.c b/drivers/mtd/ubi/debug.c
index 54646c2c2744..ac2bdba8bb1a 100644
--- a/drivers/mtd/ubi/debug.c
+++ b/drivers/mtd/ubi/debug.c
@@ -393,9 +393,6 @@ static void *eraseblk_count_seq_start(struct seq_file *s, loff_t *pos)
 {
 	struct ubi_device *ubi = s->private;
 
-	if (*pos == 0)
-		return SEQ_START_TOKEN;
-
 	if (*pos < ubi->peb_count)
 		return pos;
 
@@ -409,8 +406,6 @@ static void *eraseblk_count_seq_next(struct seq_file *s, void *v, loff_t *pos)
 {
 	struct ubi_device *ubi = s->private;
 
-	if (v == SEQ_START_TOKEN)
-		return pos;
 	(*pos)++;
 
 	if (*pos < ubi->peb_count)
@@ -432,11 +427,8 @@ static int eraseblk_count_seq_show(struct seq_file *s, void *iter)
 	int err;
 
 	/* If this is the start, print a header */
-	if (iter == SEQ_START_TOKEN) {
-		seq_puts(s,
-			 "physical_block_number\terase_count\tblock_status\tread_status\n");
-		return 0;
-	}
+	if (*block_number == 0)
+		seq_puts(s, "physical_block_number\terase_count\n");
 
 	err = ubi_io_is_bad(ubi, *block_number);
 	if (err)
-- 
2.16.4


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
