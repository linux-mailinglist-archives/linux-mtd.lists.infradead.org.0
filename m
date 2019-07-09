Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 838FE6346C
	for <lists+linux-mtd@lfdr.de>; Tue,  9 Jul 2019 12:38:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lzw3b39B+UAIbSq9Y2iMyR3ZgbljtqFrPH92f2QV5YU=; b=qEVHwvXOF3iook
	UpGC/NJCTZ9ZVqU61z1PSPIg1YYUTmUY3+BWAjoinFijJcXNmyyVJ2TgBkJJGeoWJAIyBxMYIIbjN
	VqE/7cMJK3BcdpGO9uyiUAIH9qN3Zg8xhScCZHM1uTagglvyUz3aKBQd1sJQWfpD9fmOMzG2KxTVh
	1An9m3PRY5JXGuqT4oLMCr1EJIqebppprpmYwaBzTN4r50T5tCZ74f6/QjvmFkr+5Mqhq4oMrkqOT
	2PBzbuK28JwphxQeQxay641zN+9pRLjadFJL/nv73a2UR6t9bkWCeWvoTrmiz7YqRU0K+bBkai4w1
	7RoT1R1YrL6mJQRaAtrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hknVz-0002mJ-OW; Tue, 09 Jul 2019 10:38:28 +0000
Received: from lilium.sigma-star.at ([109.75.188.150])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hknVg-0002li-E5
 for linux-mtd@lists.infradead.org; Tue, 09 Jul 2019 10:38:10 +0000
Received: from localhost (localhost [127.0.0.1])
 by lilium.sigma-star.at (Postfix) with ESMTP id 58D62181821E2;
 Tue,  9 Jul 2019 12:38:04 +0200 (CEST)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 3b9GW3odU4dc; Tue,  9 Jul 2019 12:38:02 +0200 (CEST)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id yjYhPgoOoIzg; Tue,  9 Jul 2019 12:38:01 +0200 (CEST)
From: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
To: linux-mtd@lists.infradead.org
Subject: [PATCH] mkfs.ubifs: remove ZSTD_CLEVEL_DEFAULT for backwards
 compatibillity
Date: Tue,  9 Jul 2019 12:37:05 +0200
Message-Id: <20190709103705.9871-1-david.oberhollenzer@sigma-star.at>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_033808_622258_FDA8991E 
X-CRM114-Status: GOOD (  12.13  )
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
Cc: richard@nod.at, David Oberhollenzer <david.oberhollenzer@sigma-star.at>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Support for ZSTD compression has been added recently through the ZSTD
library.

This patch removes usage of ZSTD_CLEVEL_DEFAULT, which isn't exposed
in older versions of the ZSTD library, and replaces it with with the
constant parameter 0. According to the documentation this should then
use a reasonable default (which is defined internally).

Other possible approachs include defining ZSTD_CLEVEL_DEFAULT to 3
(the value it _currently_ has) if it isn't defined. This patch chooses
the approach of passing 0 since this seems to be encouraged by the
existing documentation.

Signed-off-by: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
---
 ubifs-utils/mkfs.ubifs/compr.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/ubifs-utils/mkfs.ubifs/compr.c b/ubifs-utils/mkfs.ubifs/compr.c
index 6239835..9eade89 100644
--- a/ubifs-utils/mkfs.ubifs/compr.c
+++ b/ubifs-utils/mkfs.ubifs/compr.c
@@ -120,8 +120,7 @@ static int zstd_compress(void *in_buf, size_t in_len, void *out_buf,
 {
 	size_t ret;
 
-	ret = ZSTD_compressCCtx(zctx, out_buf, *out_len, in_buf, in_len,
-				ZSTD_CLEVEL_DEFAULT);
+	ret = ZSTD_compressCCtx(zctx, out_buf, *out_len, in_buf, in_len, 0);
 	if (ZSTD_isError(ret)) {
 		errcnt += 1;
 		return -1;
-- 
2.21.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
