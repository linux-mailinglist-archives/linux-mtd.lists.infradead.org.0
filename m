Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 393F61E430
	for <lists+linux-mtd@lfdr.de>; Tue, 14 May 2019 23:56:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y4jCzvyv6HVTNHLZ5Ce0MQpKUntKVMDNcXNr9F3/Q9E=; b=VERE7j1OHxG433
	RbCnSJhDOcCBvTre0tJ+rpJd30jyJC61mpkHk33ouMpzz4MxDlECF4wOypPDCnEhbpV9TQe3dYXA4
	7XjRsPQ09lY+mrT3bb+dLBz+uNp3WAXlbIf8Tt0tnEVx4HgXpAxB/X+ymZE9Dkwv2W4A6Zpw/Bz2l
	4uvJHPPkvm56O+4TFlTXFnGgTeIXytMPEmzNmN29sJ8lLavMvaz06G2kPWUgKENf4h/vwqu78xn2O
	MIhH5vT6cw27cKeZxZk8DMNvev30yFS6g6ndh6AuH2e8BaTldQWd0LPv1wQFiRu1VWRvzyoMU1jP2
	TutHpZjjI36c642A+RQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQfOv-00070M-Ph; Tue, 14 May 2019 21:55:57 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQfOo-0006zx-GQ
 for linux-mtd@lists.infradead.org; Tue, 14 May 2019 21:55:51 +0000
Received: from allycomm.com (inet.guidewire.com [199.91.42.30])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 37F7C3B853;
 Tue, 14 May 2019 14:55:19 -0700 (PDT)
From: Jeff Kletsky <lede@allycomm.com>
To: Boris Brezillon <bbrezillon@kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>
Subject: [PATCH v2 2/3] mtd: spinand: Add support for two-byte device IDs
Date: Tue, 14 May 2019 14:53:14 -0700
Message-Id: <20190514215315.19228-3-lede@allycomm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190514215315.19228-1-lede@allycomm.com>
References: <20190514215315.19228-1-lede@allycomm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_145550_546976_F6627375 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Jeff Kletsky <git-commits@allycomm.com>

The GigaDevice GD5F1GQ4UFxxG SPI NAND utilizes two-byte device IDs.

http://www.gigadevice.com/datasheet/gd5f1gq4xfxxg/

Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>
---
 drivers/mtd/nand/spi/core.c | 2 +-
 include/linux/mtd/spinand.h | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/spi/core.c b/drivers/mtd/nand/spi/core.c
index fa87ae28cdfe..a13154785dad 100644
--- a/drivers/mtd/nand/spi/core.c
+++ b/drivers/mtd/nand/spi/core.c
@@ -853,7 +853,7 @@ spinand_select_op_variant(struct spinand_device *spinand,
  */
 int spinand_match_and_init(struct spinand_device *spinand,
 			   const struct spinand_info *table,
-			   unsigned int table_size, u8 devid)
+			   unsigned int table_size, u16 devid)
 {
 	struct nand_device *nand = spinand_to_nand(spinand);
 	unsigned int i;
diff --git a/include/linux/mtd/spinand.h b/include/linux/mtd/spinand.h
index 05fe98eebe27..8901ba272538 100644
--- a/include/linux/mtd/spinand.h
+++ b/include/linux/mtd/spinand.h
@@ -290,7 +290,7 @@ struct spinand_ecc_info {
  */
 struct spinand_info {
 	const char *model;
-	u8 devid;
+	u16 devid;
 	u32 flags;
 	struct nand_memory_organization memorg;
 	struct nand_ecc_req eccreq;
@@ -445,7 +445,7 @@ static inline void spinand_set_of_node(struct spinand_device *spinand,
 
 int spinand_match_and_init(struct spinand_device *dev,
 			   const struct spinand_info *table,
-			   unsigned int table_size, u8 devid);
+			   unsigned int table_size, u16 devid);
 
 int spinand_upd_cfg(struct spinand_device *spinand, u8 mask, u8 val);
 int spinand_select_target(struct spinand_device *spinand, unsigned int target);
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
