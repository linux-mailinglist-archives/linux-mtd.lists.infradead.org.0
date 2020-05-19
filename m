Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FBD41D96ED
	for <lists+linux-mtd@lfdr.de>; Tue, 19 May 2020 15:02:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wTXjVuuOjV0STOEM9RpNGEH05faMx+NCYfV1r7j79yc=; b=a7MyZByztVjK8X
	RItugWv+phJG2nstKM3TD0N82GB5SI0GVf+xxQiXyybBdH4GKKedy1UHNHjkuX+ccqcijyIzFrG3Z
	WVN/r+jEbbJc8UDzBT5sIh7LIrQ1gyg/GgcA6Rx2gYn6U10GLE5dslBIRAlWgm9vaUoGYpnzY17tF
	sapkXnAA+EiCCPCw52Abo0hY3Up4f2K1m25utlg6YukaGbDYNofasJK5G7PA0rULYy2y/8VdzMKyH
	NPPVyT5baLN9ztHYuiS97qsq2vptdrt9VE+gNuYsVG6mCdXQYQPJHZvYF8YUwU4Ga1PrZEF37AMpz
	ZCHICWxUEql+e5ry5y9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb1t7-0002x0-ET; Tue, 19 May 2020 13:02:29 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb1rR-0001j1-DD
 for linux-mtd@lists.infradead.org; Tue, 19 May 2020 13:00:47 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 7EF2DFF807;
 Tue, 19 May 2020 13:00:43 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: <linux-mtd@lists.infradead.org>
Subject: [PATCH v2 06/62] mtd: rawnand: cafe: Stop using nand_release()
Date: Tue, 19 May 2020 14:59:39 +0200
Message-Id: <20200519130035.1883-7-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200519130035.1883-1-miquel.raynal@bootlin.com>
References: <20200519130035.1883-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_060045_613704_1D831302 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.199 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
Cc: Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This helper is not very useful and very often people get confused:
they use nand_release() instead of nand_cleanup().

Let's stop using nand_release() by calling mtd_device_unregister() and
nand_cleanup() directly.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/cafe_nand.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/cafe_nand.c b/drivers/mtd/nand/raw/cafe_nand.c
index 2a0df13df5f3..92173790f20b 100644
--- a/drivers/mtd/nand/raw/cafe_nand.c
+++ b/drivers/mtd/nand/raw/cafe_nand.c
@@ -807,11 +807,14 @@ static void cafe_nand_remove(struct pci_dev *pdev)
 	struct mtd_info *mtd = pci_get_drvdata(pdev);
 	struct nand_chip *chip = mtd_to_nand(mtd);
 	struct cafe_priv *cafe = nand_get_controller_data(chip);
+	int ret;
 
 	/* Disable NAND IRQ in global IRQ mask register */
 	cafe_writel(cafe, ~1 & cafe_readl(cafe, GLOBAL_IRQ_MASK), GLOBAL_IRQ_MASK);
 	free_irq(pdev->irq, mtd);
-	nand_release(chip);
+	ret = mtd_device_unregister(mtd);
+	WARN_ON(ret);
+	nand_cleanup(chip);
 	free_rs(cafe->rs);
 	pci_iounmap(pdev, cafe->mmio);
 	dma_free_coherent(&cafe->pdev->dev, 2112, cafe->dmabuf, cafe->dmaaddr);
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
