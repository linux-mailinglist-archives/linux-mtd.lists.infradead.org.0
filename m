Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE001BDD63
	for <lists+linux-mtd@lfdr.de>; Wed, 29 Apr 2020 15:21:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2B3MQCbn4CYQv/Io8DabxTtnuY+075rz/6mq27BhUPg=; b=mAbomAiIGMEH21
	HcFEWCTbat9yHqOgOcU+0S2WjVbheJ+WSTaJ+ddwcKEVzsWhw8EEtIahXk1ngPsWHwcSDwS325y8+
	UO+fxgKmTSLrAC+WS2Hc4jvdN9YxRJ0TdK/fvBVnKM1Fatv4o4uw15TdYolq2CUVThUTp0LuXXIuF
	0sdZOVZMNDlfPGOCtT4K+qlgHBwrISG06hwR5SK4wa06wH2RsN8wmNHUXokhmooq/FF31O4VIf2Hd
	/y3A22r+HkYLhpRn0Zu9Yc5BibHwC0H4YWYtOfUIeJszixJUwaZ47VqOLlo/wzI2dSXzbgz8Pprz0
	yE9mcJM9XWXtmUdQOB0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTmed-0001Em-HK; Wed, 29 Apr 2020 13:21:35 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTmdw-0000mT-JQ
 for linux-mtd@lists.infradead.org; Wed, 29 Apr 2020 13:20:54 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id DFD492A21C2;
 Wed, 29 Apr 2020 14:20:50 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org,
 Tudor Ambarus <tudor.ambarus@microchip.com>
Subject: [PATCH v2 2/6] mtd: rawnand: atmel: Drop redundant nand_read_page_op()
Date: Wed, 29 Apr 2020 15:20:42 +0200
Message-Id: <20200429132046.583658-3-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.25.3
In-Reply-To: <20200429132046.583658-1-boris.brezillon@collabora.com>
References: <20200429132046.583658-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_062052_766898_0D2AB64F 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Boris Brezillon <boris.brezillon@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The legacy page read path in atmel_hsmc_nand_pmecc_read_pg() issues
a nand_read_page_op() that's already issued by
atmel_nand_pmecc_read_pg(). Let's get rid of the unneeded one.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
Changes in v2:
* New patch
---
 drivers/mtd/nand/raw/atmel/nand-controller.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/mtd/nand/raw/atmel/nand-controller.c b/drivers/mtd/nand/raw/atmel/nand-controller.c
index 1ba60b61dedc..8e5cfb5cf70b 100644
--- a/drivers/mtd/nand/raw/atmel/nand-controller.c
+++ b/drivers/mtd/nand/raw/atmel/nand-controller.c
@@ -983,12 +983,9 @@ static int atmel_hsmc_nand_pmecc_read_pg(struct nand_chip *chip, u8 *buf,
 	 * connected to a native SoC R/B pin. If that's not the case, fallback
 	 * to the non-optimized one.
 	 */
-	if (nand->activecs->rb.type != ATMEL_NAND_NATIVE_RB) {
-		nand_read_page_op(chip, page, 0, NULL, 0);
-
+	if (nand->activecs->rb.type != ATMEL_NAND_NATIVE_RB)
 		return atmel_nand_pmecc_read_pg(chip, buf, oob_required, page,
 						raw);
-	}
 
 	nc->op.cmds[nc->op.ncmds++] = NAND_CMD_READ0;
 
-- 
2.25.3


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
