Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F621E2CCF
	for <lists+linux-mtd@lfdr.de>; Tue, 26 May 2020 21:17:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wh11W7QxrsCZqGLxagBdnkxyqQNZmj+5Pwu3YY7OWyk=; b=EmBoQgzCuD3GA/
	xASUUTgM+J8gd0pMQMNhNrf8LjRL7vBiALXu1Z5PjxHjyPKZ70x/PFsgCsBnhA2jm5F4kjLgEg8UK
	pgEK1T/hCJ9qmoDVDlfDmjjSRdvR47R4oRDe4pV1AQOiupw9JTx7idJRsktA58YxSepsSnirQK9vg
	KYzdl+667y39UFA735vanpACZRVdRj/oNDXWmhu+jlTYdGtSRirmFwfTEEUIjFk28EjpF2ez2foGO
	yczxA7MLqPuE2VVrmCUTW29SD2Pc0+heme2J//Y4vBvFSr62/nkANX62GlFHQOfTxwVoOcPXNmEYc
	1TuTNeHWdGOb/drd1vQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdf5F-0001JQ-4k; Tue, 26 May 2020 19:17:53 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdf4x-0001Hk-JN
 for linux-mtd@lists.infradead.org; Tue, 26 May 2020 19:17:37 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id ACF4C24000B;
 Tue, 26 May 2020 19:17:32 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v5 01/28] mtd: rawnand: Use unsigned types for nand_chip
 unsigned values
Date: Tue, 26 May 2020 21:16:58 +0200
Message-Id: <20200526191725.7591-2-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200526191725.7591-1-miquel.raynal@bootlin.com>
References: <20200526191725.7591-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_121735_769642_14323938 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: Rickard Andersson <rickaran@axis.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

page_shift, phys_erase_shift, bbt_erase_shift, chip_shift, pagemask,
subpagesize and badblockbits are all positive values, so declare
them as unsigned.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 include/linux/mtd/rawnand.h | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index 2804c13e5662..8a1e0192f78e 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -1110,11 +1110,11 @@ struct nand_chip {
 	unsigned int options;
 	unsigned int bbt_options;
 
-	int page_shift;
-	int phys_erase_shift;
-	int bbt_erase_shift;
-	int chip_shift;
-	int pagemask;
+	unsigned int page_shift;
+	unsigned int phys_erase_shift;
+	unsigned int bbt_erase_shift;
+	unsigned int chip_shift;
+	unsigned int pagemask;
 	u8 *data_buf;
 
 	struct {
@@ -1122,10 +1122,10 @@ struct nand_chip {
 		int page;
 	} pagecache;
 
-	int subpagesize;
+	unsigned int subpagesize;
 	int onfi_timing_mode_default;
 	unsigned int badblockpos;
-	int badblockbits;
+	unsigned int badblockbits;
 
 	struct nand_id id;
 	struct nand_parameters parameters;
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
