Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 558FA1C52DF
	for <lists+linux-mtd@lfdr.de>; Tue,  5 May 2020 12:16:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DDrasyNK+A0gelbsg99POt1C6Jhtj5PtheQWK4esjF0=; b=MOndR3j8qoDUw1
	Qdf/iJ6ncKr8NkpUDTFIG41QHNzglzIuLCTLUSEZI00bnOl5TBsB97pmTo7Mb4FC3GVZJLG6Qaj1I
	j3SmwZWPL738sUPGeZYFD8yRf/aXoiKzoSpCzgGHmihKlxpxbH3Nt8TVhKlatg9sKwWg2furLnGbi
	5Y6lRQxj9ZykANTBWR8jdBQpvJooL71jCxtsrXczDa8G08AHTcUHmdSIo4ys4IkjmQ2lO0E6yz7cY
	KpChxcmalCzzdjTR+C0AYrS8NQ4tjXMfyt5IjCHu/32wlCuDi9MhozNZGxqMRnH17YJMzU0M4wU94
	EGcTPP3fqMJFyEpQttSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVudA-0003SD-G0; Tue, 05 May 2020 10:16:52 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVuaR-00077m-4T
 for linux-mtd@lists.infradead.org; Tue, 05 May 2020 10:14:06 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:d3ea:1c7:41fd:3038])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id CE9DE2A1B0D;
 Tue,  5 May 2020 11:14:00 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org,
 Lubomir Rintel <lkundrak@v3.sk>
Subject: [PATCH v2 10/19] mtd: rawnand: cafe: Get rid of a useless label
Date: Tue,  5 May 2020 12:13:44 +0200
Message-Id: <20200505101353.1776394-11-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.25.3
In-Reply-To: <20200505101353.1776394-1-boris.brezillon@collabora.com>
References: <20200505101353.1776394-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_031403_357736_071602B7 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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

We can return 0 directly instead of branching to the out label.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>
Tested-by: Lubomir Rintel <lkundrak@v3.sk>
---
Changes in v2:
* Add R-b/T-b
---
 drivers/mtd/nand/raw/cafe_nand.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/raw/cafe_nand.c b/drivers/mtd/nand/raw/cafe_nand.c
index 93e8e124df45..84b8d50c7f08 100644
--- a/drivers/mtd/nand/raw/cafe_nand.c
+++ b/drivers/mtd/nand/raw/cafe_nand.c
@@ -930,7 +930,7 @@ static int cafe_nand_probe(struct pci_dev *pdev,
 	if (err)
 		goto out_cleanup_nand;
 
-	goto out;
+	return 0;
 
  out_cleanup_nand:
 	nand_cleanup(&cafe->nand);
@@ -941,7 +941,6 @@ static int cafe_nand_probe(struct pci_dev *pdev,
 		    GLOBAL_IRQ_MASK);
  out_ior:
 	pci_iounmap(pdev, cafe->mmio);
- out:
 	return err;
 }
 
-- 
2.25.3


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
