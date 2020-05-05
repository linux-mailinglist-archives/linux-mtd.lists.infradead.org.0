Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3C461C52E1
	for <lists+linux-mtd@lfdr.de>; Tue,  5 May 2020 12:17:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SfSMBFrezOMTFQWOgTX6pw4HpRCxjrJy5qhknu0/8wU=; b=DhHOs9dMA6Q3Je
	0LsPFyhrZAj40Jon3k5jz5A2JsFYj9+A4GWcmTWxEvZ7nQQ9j9mhq5LmnlibhODl8ybEuXy58YhSW
	3Rg0l7dYNGWrALBdkwbataZMLG1xVzmwDg4xQwAr5/3N7sDnYBk+75mTrNKQHxJYZ8MARpxxV1Xaf
	hrxrECGSMoDU1QFcrJgNyNzlCuzRV9yjGRxKanE2v7bBadBf/ddgLsXSvoG+9f8gsO0DOmfSpgfVc
	2oymj0vEX9yHkZ7jLQCY0aAUE6b76Ytg1ppRK15Zj/cB4B3J9n97aOO6UMd6HJFnJ5HFwlBagA7+l
	SBIbuo1S29iKcYkU9z+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVudQ-0003it-AN; Tue, 05 May 2020 10:17:08 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVuaV-0007Ct-EA
 for linux-mtd@lists.infradead.org; Tue, 05 May 2020 10:14:09 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:d3ea:1c7:41fd:3038])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 661622A1CFA;
 Tue,  5 May 2020 11:14:03 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org,
 Lubomir Rintel <lkundrak@v3.sk>
Subject: [PATCH v2 19/19] mtd: rawnand: cafe: Get rid of the last printk()
Date: Tue,  5 May 2020 12:13:53 +0200
Message-Id: <20200505101353.1776394-20-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.25.3
In-Reply-To: <20200505101353.1776394-1-boris.brezillon@collabora.com>
References: <20200505101353.1776394-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_031407_637601_3063B981 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Richard Weinberger <richard@nod.at>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Replace the last printk() by a dev_dbg().

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/mtd/nand/raw/cafe_nand.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/raw/cafe_nand.c b/drivers/mtd/nand/raw/cafe_nand.c
index 2f20032b4df7..9df02ad951d8 100644
--- a/drivers/mtd/nand/raw/cafe_nand.c
+++ b/drivers/mtd/nand/raw/cafe_nand.c
@@ -315,8 +315,9 @@ static int cafe_nand_read_page(struct nand_chip *chip, u8 *buf,
 				"Failed to correct ECC at %08x\n",
 				readl(cafe->mmio + CAFE_NAND_ADDR2) * 2048);
 			for (i = 0; i < 0x5c; i += 4)
-				printk("Register %x: %08x\n", i,
-				       readl(cafe->mmio + i));
+				dev_dbg(&cafe->pdev->dev,
+					"Register %x: %08x\n", i,
+					readl(cafe->mmio + i));
 			mtd->ecc_stats.failed++;
 		} else {
 			dev_dbg(&cafe->pdev->dev, "Corrected %d symbol errors\n", n);
-- 
2.25.3


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
