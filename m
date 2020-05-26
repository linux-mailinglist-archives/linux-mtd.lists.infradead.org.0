Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 187851C52CD
	for <lists+linux-mtd@lfdr.de>; Tue,  5 May 2020 12:15:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n+KuOqu10w9q6uTf23CHh+kx/yx3jeIya3tq6dvSmBg=; b=aLSW/iQFz5o4aT
	b3ElzPZ3vkxI3dbXlPm+tEYBwEb36WVqdqzFi1E6EOvVq5SXy5yIcSxZygO9fI+TVCQvChydhHC8I
	hLcGLmTfxNjRckzJ0g8G8cczghfXeMw2urYp3vXtK0AjJSPSClk1t1Q1syr+Qvg2kOVwezFS0qErU
	JLqY8fK9WS69X76i9Nn4Bapru1a5le4QOBzdwDG5DYDgJ22KFV4iEsApp4cBobhRcxGkbf77aUVIn
	TZQhO2GbPE9UWm044B6EGkN69Hr7hiUKC5EgTlHQBqWEaYQWSCKLI9YMS8nHEp/ml4+M0xvEsuJ1h
	0292VnCVZY6AOE+66dJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVube-0007qx-FA; Tue, 05 May 2020 10:15:18 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVuaO-00075Z-53
 for linux-mtd@lists.infradead.org; Tue, 05 May 2020 10:14:02 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:d3ea:1c7:41fd:3038])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id D793B2A1AE0;
 Tue,  5 May 2020 11:13:58 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org,
 Lubomir Rintel <lkundrak@v3.sk>
Subject: [PATCH v2 03/19] mtd: rawnand: cafe: Rename
 cafe_nand_write_page_lowlevel()
Date: Tue,  5 May 2020 12:13:37 +0200
Message-Id: <20200505101353.1776394-4-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.25.3
In-Reply-To: <20200505101353.1776394-1-boris.brezillon@collabora.com>
References: <20200505101353.1776394-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_031400_317099_9FA39B90 
X-CRM114-Status: GOOD (  11.09  )
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

Let's rename that one cafe_nand_write_page() to be consistent with other
function names.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>
Tested-by: Lubomir Rintel <lkundrak@v3.sk>
---
Changes in v2:
* Add R-b/T-b
---
 drivers/mtd/nand/raw/cafe_nand.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/nand/raw/cafe_nand.c b/drivers/mtd/nand/raw/cafe_nand.c
index 1296380a4996..03964e092243 100644
--- a/drivers/mtd/nand/raw/cafe_nand.c
+++ b/drivers/mtd/nand/raw/cafe_nand.c
@@ -525,9 +525,9 @@ static struct nand_bbt_descr cafe_bbt_mirror_descr_512 = {
 };
 
 
-static int cafe_nand_write_page_lowlevel(struct nand_chip *chip,
-					 const uint8_t *buf, int oob_required,
-					 int page)
+static int cafe_nand_write_page(struct nand_chip *chip,
+				const uint8_t *buf, int oob_required,
+				int page)
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct cafe_priv *cafe = nand_get_controller_data(chip);
@@ -628,7 +628,7 @@ static int cafe_nand_attach_chip(struct nand_chip *chip)
 	cafe->nand.ecc.size = mtd->writesize;
 	cafe->nand.ecc.bytes = 14;
 	cafe->nand.ecc.strength = 4;
-	cafe->nand.ecc.write_page = cafe_nand_write_page_lowlevel;
+	cafe->nand.ecc.write_page = cafe_nand_write_page;
 	cafe->nand.ecc.write_oob = cafe_nand_write_oob;
 	cafe->nand.ecc.read_page = cafe_nand_read_page;
 	cafe->nand.ecc.read_oob = cafe_nand_read_oob;
-- 
2.25.3


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
