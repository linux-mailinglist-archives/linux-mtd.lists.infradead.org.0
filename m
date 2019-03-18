Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28FB71967BB
	for <lists+linux-mtd@lfdr.de>; Sat, 28 Mar 2020 17:46:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Date:
	From:Message-Id:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=RVTgieXWvbku8UphO1b9yvy69bxE+Av0t5KkNo+ZDK4=; b=TBX
	3DN8mkT/R+P+p1FWbuwcMzeWb7/CJ/vE/KVnvd4TZYmHBWSEdHjigkJcnGI02uw5FF/6Nw4pltc5z
	IFoEQp/OOWXn/0kUm03m36i1LbiucW6jDFIsIlSCuLWZaebWEzlx5DrREGVGngIMrU+ROxOVEuk8i
	zyrd99wrbRQuRmmYB7tISMa2drNPhryKfjMcEipy5PsfEY9cKz1OL5cxVJJb8G4gbaYCR4IYimdIn
	QkTqFD6u2UOUf6bLIbNSSQ9CfGbYA0V5kLTbaqjqcdNfV6cGyljgsSQ7+ExNAJgEL/3tbDEFVLjbz
	PB3LF8nfhM+Q2BQWoAZM83TXo048f5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIEbf-00070X-OX; Sat, 28 Mar 2020 16:46:47 +0000
Received: from mx.sdf.org ([205.166.94.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIEan-0006Ue-VF
 for linux-mtd@lists.infradead.org; Sat, 28 Mar 2020 16:45:56 +0000
Received: from sdf.org (IDENT:lkml@sdf.lonestar.org [205.166.94.16])
 by mx.sdf.org (8.15.2/8.14.5) with ESMTPS id 02SGh8dN003041
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits) verified NO);
 Sat, 28 Mar 2020 16:43:08 GMT
Received: (from lkml@localhost)
 by sdf.org (8.15.2/8.12.8/Submit) id 02SGh8XV025558;
 Sat, 28 Mar 2020 16:43:08 GMT
Message-Id: <202003281643.02SGh8XV025558@sdf.org>
From: George Spelvin <lkml@sdf.org>
Date: Mon, 18 Mar 2019 04:22:17 -0400
Subject: [RFC PATCH v1 06/50] ubi/debug: Optimize computation of odds
To: linux-kernel@vger.kernel.org, lkml@sdf.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_094554_062923_B2E36717 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.166.94.20 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 2.1 DATE_IN_PAST_96_XX     Date: is 96 hours or more before Received:
 date
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
Cc: Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Adrian Hunter <adrian.hunter@intel.com>,
 Artem Bityutskiy <dedekind1@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Not only is "prandom_u32() % d" an inefficient way to obtain
a random number, but "prandom_u32_max(d) < n" is an inefficient
way to return true with probability n/d.

Where n and d are compile-time constants, the efficient way to
do this test is "prandom_u32() < ((u64)n << 32)/d.

If n == 1 and d is not a power of 2, then 0xffffffff/d == 0x100000000/d
works just as well and avoids some 64-bit arithmetic.

Signed-off-by: George Spelvin <lkml@sdf.org>
Cc: Richard Weinberger <richard@nod.at>
Cc: Artem Bityutskiy <dedekind1@gmail.com>
Cc: Adrian Hunter <adrian.hunter@intel.com>
Cc: linux-mtd@lists.infradead.org
---
 drivers/mtd/ubi/debug.h | 6 +++---
 fs/ubifs/debug.c        | 5 +++--
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/mtd/ubi/debug.h b/drivers/mtd/ubi/debug.h
index 118248a5d7d48..d19671c1a098c 100644
--- a/drivers/mtd/ubi/debug.h
+++ b/drivers/mtd/ubi/debug.h
@@ -73,7 +73,7 @@ static inline int ubi_dbg_is_bgt_disabled(const struct ubi_device *ubi)
 static inline int ubi_dbg_is_bitflip(const struct ubi_device *ubi)
 {
 	if (ubi->dbg.emulate_bitflips)
-		return !(prandom_u32() % 200);
+		return prandom_u32() < 0xffffffff/200;
 	return 0;
 }
 
@@ -87,7 +87,7 @@ static inline int ubi_dbg_is_bitflip(const struct ubi_device *ubi)
 static inline int ubi_dbg_is_write_failure(const struct ubi_device *ubi)
 {
 	if (ubi->dbg.emulate_io_failures)
-		return !(prandom_u32() % 500);
+		return prandom_u32() < 0xffffffff/500;
 	return 0;
 }
 
@@ -101,7 +101,7 @@ static inline int ubi_dbg_is_write_failure(const struct ubi_device *ubi)
 static inline int ubi_dbg_is_erase_failure(const struct ubi_device *ubi)
 {
 	if (ubi->dbg.emulate_io_failures)
-		return !(prandom_u32() % 400);
+		return prandom_u32() < 0xffffffff/400;
 	return 0;
 }
 
diff --git a/fs/ubifs/debug.c b/fs/ubifs/debug.c
index 0f5a480fe264f..3d8d8eaea6c66 100644
--- a/fs/ubifs/debug.c
+++ b/fs/ubifs/debug.c
@@ -2444,9 +2444,10 @@ int dbg_check_nondata_nodes_order(struct ubifs_info *c, struct list_head *head)
 	return 0;
 }
 
-static inline int chance(unsigned int n, unsigned int out_of)
+static bool chance(unsigned int n, unsigned int out_of)
 {
-	return !!((prandom_u32() % out_of) + 1 <= n);
+	/* RHS is a constant expression */
+	return prandom_u32() < ((u64)n << 32) / out_of;
 
 }
 
-- 
2.26.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
