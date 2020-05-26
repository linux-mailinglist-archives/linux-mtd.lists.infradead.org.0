Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 683C41C3665
	for <lists+linux-mtd@lfdr.de>; Mon,  4 May 2020 12:04:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mHBfzDVnxzqh1pQM4KGEEmCvyxwk+s3Id8PMCXuzlXY=; b=osyhlh/836oaB/
	HY1L3nJR50vbCigrx1gM5X/DUmdre1yU8uYbVVzYUgclvG8zsz7btQVX3QqiBxIfjC499XYJO8SQD
	Kh0ioFHmsKCTmllbK3FyKg5ey40RDNeUsv4PGhDKX15/QqFfSjEZwoKK2D2L3Gst/xydL1ZoO8yGV
	rL/oRvNQHnzUwNX88lOXrXMLKbHyT6fEhGZ7QPOZHytAS9uJNS+L4iJkO0PlaZe2RxSwLow5Tf17o
	OwiqHhEdtKvQUyEOHKy22GQz5uIAFR0+814tkNaKBa1eyiL/WG0/c3ebkh1sp4KLv8cQ0nV10N1yu
	sL9CYl49VLvQS88CBpkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVXxD-0003M7-Dw; Mon, 04 May 2020 10:04:03 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVXx5-0003LQ-8g
 for linux-mtd@lists.infradead.org; Mon, 04 May 2020 10:03:56 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id C414D24001D;
 Mon,  4 May 2020 10:02:40 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v4 04/13] mtd: rawnand: Fix comments about the use of bufpoi
Date: Mon,  4 May 2020 11:52:28 +0200
Message-Id: <20200504095237.1654-5-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200504095237.1654-1-miquel.raynal@bootlin.com>
References: <20200504095237.1654-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_030355_438485_C4B2305A 
X-CRM114-Status: GOOD (  11.24  )
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
Cc: Michal Simek <monstr@monstr.eu>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Clarify these comments which are not very accurate (even wrong in the
read case).

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/mtd/nand/raw/nand_base.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 82f7544f58b7..dfb4e9376990 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -3229,7 +3229,10 @@ static int nand_do_read_ops(struct nand_chip *chip, loff_t from,
 				break;
 			}
 
-			/* Transfer not aligned data */
+			/*
+			 * Copy back the data in the initial buffer when reading
+			 * partial pages or when a bounce buffer is required.
+			 */
 			if (use_bufpoi) {
 				if (!NAND_HAS_SUBPAGE_READ(chip) && !oob &&
 				    !(mtd->ecc_stats.failed - ecc_failures) &&
@@ -4024,7 +4027,10 @@ static int nand_do_write_ops(struct nand_chip *chip, loff_t to,
 		else
 			use_bufpoi = 0;
 
-		/* Partial page write?, or need to use bounce buffer */
+		/*
+		 * Copy the data from the initial buffer when doing partial page
+		 * writes or when a bounce buffer is required.
+		 */
 		if (use_bufpoi) {
 			pr_debug("%s: using write bounce buffer for buf@%p\n",
 					 __func__, buf);
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
