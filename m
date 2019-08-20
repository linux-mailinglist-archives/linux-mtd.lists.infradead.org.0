Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FFEB954A4
	for <lists+linux-mtd@lfdr.de>; Tue, 20 Aug 2019 04:51:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=z/OZ8MkrIgQhk/DRUnnRnXr/MTnmsV/4Bgu5rlOkpjU=; b=dyO
	pjhOd6arajpmdUlG5z2UDAkjOH11iRpWqYbgf8q9kYnF5+mOFH4AAeVZsG/5pLylFVSxtYM+R4whu
	bgqSCUqjOk/AnPtHih9H8l/p5/q4bxKxndoD17E3rmUxsYa2/JMXFp8kf4My7yKo0zloIJ/lnJIJb
	0rhh2UnL1pkV/e9Lahx9ojgdLokxX43xVs+FSEKNUwRvwj6gsjKT+cW01ca+rx1lLitPhkJZJM7nA
	s9DIDkjbOov+h185CCPp/blrGyGSlCuM7RVzvpcGPEXJRS8JuRWr+D6L6leXTur9ptwsN/QNY+9N+
	fDo6prSlWybIQVJSj0ToeBl1mcp83/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzuFC-00061H-N3; Tue, 20 Aug 2019 02:51:34 +0000
Received: from conuserg-10.nifty.com ([210.131.2.77])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzuEv-00060r-Fy
 for linux-mtd@lists.infradead.org; Tue, 20 Aug 2019 02:51:19 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-10.nifty.com with ESMTP id x7K2p1bO009142;
 Tue, 20 Aug 2019 11:51:01 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com x7K2p1bO009142
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1566269461;
 bh=dXr0OgerpGLpvO15fBQbFtGCHaWopa8Rn3l0Gbo/i5U=;
 h=From:To:Cc:Subject:Date:From;
 b=PZQOyz0KV8kIUbenMN0QGsc5QzpgcSbzrYQJgi3rvJgAI1X5WtebmLdUmFcBW4HTA
 /nVtTWOQwjEnn9BNuqvNRJ0Zs62UeJuyje7jUK1h6G9yWygiKfcHACxepb88ICSKgl
 7yyDbjjTpsf18Q6wBRt8rCrXmOO5mHTmac8vVvLUNb5vaO8vCKCS3CROVIPa2X6+gq
 oLmrY2iI4t1J17OhC86imoM/pmIw1deaN7WuoFHK7otZn7227+rDuhPoAX3xYffXUa
 Kpo6iQWWdNrqhZOQDMPVj+QpE+oLFQoVNpg8IQAZnMPq6MIwNCwm3u4Wtuqwd0A6vW
 uA9hCosFTCo/w==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>,
 Vignesh Raghavendra <vigneshr@ti.com>, linux-mtd@lists.infradead.org
Subject: [PATCH] mtd: rawnand: sharpsl: add include guard to
 linux/mtd/sharpsl.h
Date: Tue, 20 Aug 2019 11:50:57 +0900
Message-Id: <20190820025057.16164-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_195117_878728_43336832 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.77 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Add a header include guard just in case.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 include/linux/mtd/sharpsl.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/linux/mtd/sharpsl.h b/include/linux/mtd/sharpsl.h
index 01306ebe266d..d2c3cf29e0d1 100644
--- a/include/linux/mtd/sharpsl.h
+++ b/include/linux/mtd/sharpsl.h
@@ -5,6 +5,9 @@
  * Copyright (C) 2008 Dmitry Baryshkov
  */
 
+#ifndef _MTD_SHARPSL_H
+#define _MTD_SHARPSL_H
+
 #include <linux/mtd/rawnand.h>
 #include <linux/mtd/nand_ecc.h>
 #include <linux/mtd/partitions.h>
@@ -16,3 +19,5 @@ struct sharpsl_nand_platform_data {
 	unsigned int		nr_partitions;
 	const char *const	*part_parsers;
 };
+
+#endif /* _MTD_SHARPSL_H */
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
