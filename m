Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3FCC1C52C9
	for <lists+linux-mtd@lfdr.de>; Tue,  5 May 2020 12:14:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VR7TZ5jJdZENrkL80xsoAggJTm5qfW1PgTY7bYmGww4=; b=S65ZwtqOQfvaSw
	ILOlJae/0csKdiHSJcZcFYxEL327qj4AR/fsltYahBBHvwsMg2pxxlNhJGh594ap0fOXcc0N9/vnP
	a3AomFWkJa8hkBAM0A6dGqVSYnGoUoQORSYi+iMppQ+OTWNHtfIR64WLysSuATw28rai4fcFlcHPf
	cwIS7kyPdfk6wsdtP4kq49WC2iV0/Ja9EBHFyhr5fJ80MGVn0Ig+GL/puUNbaAOjVxirVSPmnUpvO
	V7rL8YhDgZLroxa9ff+LlBWGhdPnPoSTl3Y+aj4jBow0f0cmw6peWe1Y/VM1fos60NptHbrIpjnO1
	tMAa1oX8R3Iu7z0YenrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVubD-0007bo-8y; Tue, 05 May 2020 10:14:51 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVuaN-00075S-SS
 for linux-mtd@lists.infradead.org; Tue, 05 May 2020 10:14:01 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:d3ea:1c7:41fd:3038])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 871172A1ADC;
 Tue,  5 May 2020 11:13:58 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org,
 Lubomir Rintel <lkundrak@v3.sk>
Subject: [PATCH v2 02/19] mtd: rawnand: cafe: Get rid of an inaccurate kernel
 doc header
Date: Tue,  5 May 2020 12:13:36 +0200
Message-Id: <20200505101353.1776394-3-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.25.3
In-Reply-To: <20200505101353.1776394-1-boris.brezillon@collabora.com>
References: <20200505101353.1776394-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_031400_045809_B45F1511 
X-CRM114-Status: GOOD (  10.45  )
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

Driver files are not parsed for doc generation, and the
cafe_nand_read_page() kernel-doc header was wrong, so let's get rid of
it.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
Changes in v2:
* Add R-b
---
 drivers/mtd/nand/raw/cafe_nand.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/mtd/nand/raw/cafe_nand.c b/drivers/mtd/nand/raw/cafe_nand.c
index 2a0df13df5f3..1296380a4996 100644
--- a/drivers/mtd/nand/raw/cafe_nand.c
+++ b/drivers/mtd/nand/raw/cafe_nand.c
@@ -357,13 +357,8 @@ static int cafe_nand_read_oob(struct nand_chip *chip, int page)
 
 	return nand_read_oob_op(chip, page, 0, chip->oob_poi, mtd->oobsize);
 }
-/**
- * cafe_nand_read_page_syndrome - [REPLACEABLE] hardware ecc syndrome based page read
- * @mtd:	mtd info structure
- * @chip:	nand chip info structure
- * @buf:	buffer to store read data
- * @oob_required:	caller expects OOB data read to chip->oob_poi
- *
+
+/*
  * The hw generator calculates the error syndrome automatically. Therefore
  * we need a special oob layout and handling.
  */
-- 
2.25.3


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
