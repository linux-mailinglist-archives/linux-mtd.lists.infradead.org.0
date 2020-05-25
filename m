Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B091E098D
	for <lists+linux-mtd@lfdr.de>; Mon, 25 May 2020 11:03:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xteUj5x3w0iny6gnJDEaU6Oj/aorTBPlbCK7SQ/941A=; b=WvhbmUrP8BKcYL
	+Pvmw9WYH/CvOEvg/nbQT5O7QNQatDTxP4BceYNmteRZ1LBYIWo87Iv2S2ymz5nSDAcOCU+y4VOGX
	xYfFvk2RbEtaZgI+KwPu62gkJnyOmfsbwut497XPo9/kZsvSfZt1wvb4tzb/RJwYuISWoRF4cfr6i
	zBZg8YZXd6rEC2Myr4fYD64KOa4sp1xbznjDpm9tf5s8luy9SKb775wReJlSNJLyeDr5lDdsE/Zrh
	NFTXa/Pwx5ThhyTTU2J8eBgZktBAyh7rQqo+ISQkIkFNlTbPb2ZKRF7VdxyWq7jC5Yf2dmde+twcr
	rDNFOfeRzHSv63/45cpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd90f-0002G5-JX; Mon, 25 May 2020 09:03:01 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd8x1-0004dF-7r
 for linux-mtd@lists.infradead.org; Mon, 25 May 2020 08:59:17 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 09E7D240009;
 Mon, 25 May 2020 08:59:12 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v2 13/17] mtd: rawnand: nandsim: Free erase_block_wear on error
Date: Mon, 25 May 2020 10:58:47 +0200
Message-Id: <20200525085851.17682-14-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200525085851.17682-1-miquel.raynal@bootlin.com>
References: <20200525085851.17682-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_015916_393304_C6D0D02C 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Boris Brezillon <boris.brezillon@collabora.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Free erase_block_wear on error, which is allocated by
ns_setup_wear_reporting().

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/nandsim.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/nandsim.c b/drivers/mtd/nand/raw/nandsim.c
index a31a8aaab1fe..8511e70ca1e9 100644
--- a/drivers/mtd/nand/raw/nandsim.c
+++ b/drivers/mtd/nand/raw/nandsim.c
@@ -2383,7 +2383,7 @@ static int __init ns_init_module(void)
 
 	ret = ns_init(nsmtd);
 	if (ret)
-		goto err_exit;
+		goto free_ebw;
 
 	ret = nand_create_bbt(chip);
 	if (ret)
@@ -2409,6 +2409,8 @@ static int __init ns_init_module(void)
 err_exit:
 free_ns_object:
 	ns_free(ns);
+free_ebw:
+	kfree(erase_block_wear);
 	nand_cleanup(chip);
 error:
 	kfree(ns);
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
