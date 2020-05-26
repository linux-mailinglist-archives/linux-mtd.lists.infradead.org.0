Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE241D7E2B
	for <lists+linux-mtd@lfdr.de>; Mon, 18 May 2020 18:19:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h0kYn7I03FrPdgyoEyrcwE1RXH0gjMKakkfUdP76W1Q=; b=rvFo0L7VvypvGn
	apYqotAW/iS9Fr+xMbXTNh8l1+w90KQXzJlgALWo1R5T2kH+ptQvUEfunKlsgMOl+RyxTiEgJ376O
	LijmKkjLt4WILE2rzOJvuhRVhDLIvuKmHgFiAe+P4yKp4rhhCzK5RCPtQGi//HuGSSKmja0ZBxXc9
	7phjDIlCSpXjY1khL3gL8ZQmnn6j9PIBdW5+qoYcSfVAwknKzqL/5DQYnIGOTIw22Sk2BAhtuws1Q
	JNOgaZHRxbpYXWckoqGgFJidCLjo8uSVhs+9QkSfU988Gr+OXQgFA4BiBMTtK2QmnD2eF0HwlrJ+e
	Ywzx6g8bw955uzt8pDdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaiTg-0007p8-BQ; Mon, 18 May 2020 16:18:56 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaiSn-0006oh-I4
 for linux-mtd@lists.infradead.org; Mon, 18 May 2020 16:18:03 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 0754D2A0A82;
 Mon, 18 May 2020 17:18:00 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>
Subject: [PATCH v3 4/6] mtd: rawnand: atmel: Use nand_prog_page_end_op()
Date: Mon, 18 May 2020 18:17:52 +0200
Message-Id: <20200518161754.302415-5-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200518161754.302415-1-boris.brezillon@collabora.com>
References: <20200518161754.302415-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_091801_721529_5854B5D1 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Richard Weinberger <richard@nod.at>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The nand_prog_page_end_op() sequence is open-coded in
atmel_hsmc_nand_pmecc_write_pg(). Let's use the generic helper here.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
Changes in v3:
* Add R-bs

Changes in v2:
* New patch
---
 drivers/mtd/nand/raw/atmel/nand-controller.c | 16 ++--------------
 1 file changed, 2 insertions(+), 14 deletions(-)

diff --git a/drivers/mtd/nand/raw/atmel/nand-controller.c b/drivers/mtd/nand/raw/atmel/nand-controller.c
index 8dab0d6d208e..1ef8cff5ab72 100644
--- a/drivers/mtd/nand/raw/atmel/nand-controller.c
+++ b/drivers/mtd/nand/raw/atmel/nand-controller.c
@@ -902,7 +902,7 @@ static int atmel_hsmc_nand_pmecc_write_pg(struct nand_chip *chip,
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct atmel_nand *nand = to_atmel_nand(chip);
 	struct atmel_hsmc_nand_controller *nc;
-	int ret, status;
+	int ret;
 
 	nc = to_hsmc_nand_controller(chip->controller);
 
@@ -936,19 +936,7 @@ static int atmel_hsmc_nand_pmecc_write_pg(struct nand_chip *chip,
 
 	nand_write_data_op(chip, chip->oob_poi, mtd->oobsize, false);
 
-	nc->op.cmds[0] = NAND_CMD_PAGEPROG;
-	nc->op.ncmds = 1;
-	nc->op.cs = nand->activecs->id;
-	ret = atmel_nfc_exec_op(nc, false);
-	if (ret)
-		dev_err(nc->base.dev, "Failed to program NAND page (err = %d)\n",
-			ret);
-
-	status = chip->legacy.waitfunc(chip);
-	if (status & NAND_STATUS_FAIL)
-		return -EIO;
-
-	return ret;
+	return nand_prog_page_end_op(chip);
 }
 
 static int atmel_hsmc_nand_pmecc_write_page(struct nand_chip *chip,
-- 
2.25.4


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
