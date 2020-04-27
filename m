Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1CF1B9A17
	for <lists+linux-mtd@lfdr.de>; Mon, 27 Apr 2020 10:26:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WGNmz03oyp9vo3Z02d1ha40xM6LqdRegYZGQBbsSiu4=; b=HV17Z+ciSwdVHW
	uXB4fIqaiKjQJw5aEVU76RsugRWJ6HVQIeA5dTNlElBr8ss8VyBHrFhwJzBNlTssXEPEDnSx3LUUI
	vKoHMMGPT5pf0mOAZ9Xs9/jZdYMxmM6GnXMrFeQ1ZxdjM1jgsqZJFbm18cF8Iwe9mNPzU0Pb358He
	IaQDQMhPBVgUvjIHki0PiMxYLvZgpwPZKdCMGu6YZlJUe4McR57yPa9rA+UVpQgzzRZIo3S8PwrE9
	X+cNoaDGW+xWc555zb55mWZnpUeMx5grZqYWJhdEhx5wPV+7IGXVPi4SFNfO0e49VoWcAIsNso8xc
	zuAk3w931ZceUr8ypqfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSz5r-0004nG-9P; Mon, 27 Apr 2020 08:26:23 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSz0L-0006At-Ey
 for linux-mtd@lists.infradead.org; Mon, 27 Apr 2020 08:20:44 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 4A93B2A0B4F;
 Mon, 27 Apr 2020 09:20:39 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: David Woodhouse <dwmw2@infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org
Subject: [PATCH 10/17] mtd: rawnand: cafe: Explicitly inherit from
 nand_controller
Date: Mon, 27 Apr 2020 10:20:20 +0200
Message-Id: <20200427082028.394719-11-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.25.3
In-Reply-To: <20200427082028.394719-1-boris.brezillon@collabora.com>
References: <20200427082028.394719-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_012041_661691_882F9EC5 
X-CRM114-Status: GOOD (  12.37  )
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

Explicitly inherit from nand_controller instead of using the dummy
controller object.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/mtd/nand/raw/cafe_nand.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/cafe_nand.c b/drivers/mtd/nand/raw/cafe_nand.c
index 348debbc04af..2825489a71b8 100644
--- a/drivers/mtd/nand/raw/cafe_nand.c
+++ b/drivers/mtd/nand/raw/cafe_nand.c
@@ -146,6 +146,7 @@
 #define CAFE_FIELD_GET(reg, field, val)		FIELD_GET(CAFE_##reg##_##field, val)
 
 struct cafe_priv {
+	struct nand_controller base;
 	struct nand_chip nand;
 	struct pci_dev *pdev;
 	void __iomem *mmio;
@@ -920,7 +921,9 @@ static int cafe_nand_probe(struct pci_dev *pdev,
 	cafe->usedma = 0;
 
 	/* Scan to find existence of the device */
-	cafe->nand.legacy.dummy_controller.ops = &cafe_nand_controller_ops;
+	nand_controller_init(&cafe->base);
+	cafe->base.ops = &cafe_nand_controller_ops;
+	cafe->nand.controller = &cafe->base;
 	err = nand_scan(&cafe->nand, 2);
 	if (err)
 		goto out_irq;
-- 
2.25.3


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
