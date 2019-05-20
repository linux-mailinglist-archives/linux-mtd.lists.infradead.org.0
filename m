Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A2E724172
	for <lists+linux-mtd@lfdr.de>; Mon, 20 May 2019 21:46:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DqdtYzcRGRXwClq+ajpdVcTVSUYrg0xaIilmfJF26wE=; b=u50jF48Pa4gji9
	mOQ7lYKk3mRY8EdkJf0GVkZe89ELvs1Xbp+HVgJdEn+MUBAxcWwsz41xXDGT/woozH68imqe+pLSt
	eFRhV7wy4PsNkWW7GsDBhm6W4aSc3mYbq4LP+nT7x7PKDXYb4mlR7nV898qUhGRWvk5xuuxwx+Z9q
	tfVZS4IpniWwQ9TCKw0zA2QWWFojxxXdO6zj64yyQFUrRXW7NxY4fbOQcumP7wu54hO8EvzgfmdEp
	dK5McZUcWQkyez8BTIdwF7gDl0+NW5E0aOAyWf57I7Wdh9Er7xYtHl0glt76LXrjnpIPM5vprUodP
	3pYd1XdP/81m+10Te9Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSoER-00043R-Hm; Mon, 20 May 2019 19:45:59 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSoDh-0002pG-6l
 for linux-mtd@lists.infradead.org; Mon, 20 May 2019 19:45:32 +0000
Received: from allycomm.com (184-23-191-215.vpn.dynamic.sonic.net
 [184.23.191.215])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id D94353BCD7;
 Mon, 20 May 2019 12:45:07 -0700 (PDT)
From: Jeff Kletsky <lede@allycomm.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Boris Brezillon <bbrezillon@kernel.org>,
 Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>
Subject: [PATCH v3 2/3] mtd: spinand: Add support for two-byte device IDs
Date: Mon, 20 May 2019 12:44:53 -0700
Message-Id: <20190520194454.32175-3-lede@allycomm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190520194454.32175-1-lede@allycomm.com>
References: <20190520194454.32175-1-lede@allycomm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_124513_556459_86422722 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-mtd@lists.infradead.org, Jeff Kletsky <git-commits@allycomm.com>,
 linux-kernel@vger.kernel.org, Frieder Schrempf <frieder.schrempf@kontron.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Jeff Kletsky <git-commits@allycomm.com>

The GigaDevice GD5F1GQ4UFxxG SPI NAND utilizes two-byte device IDs.

http://www.gigadevice.com/datasheet/gd5f1gq4xfxxg/

Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>

Reviewed-by: Frieder Schrempf <frieder.schrempf@kontron.de>
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
