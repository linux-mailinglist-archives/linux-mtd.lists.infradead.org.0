Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA8791B9A10
	for <lists+linux-mtd@lfdr.de>; Mon, 27 Apr 2020 10:25:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H4RhdOJZuzUGjql9cyQQ1jm/qPiiE/8MZwX5vLRjI+U=; b=BtsTGO57k7GZOj
	6wfSfcl668NtDm6YgeJXM0xsY+mTa/iGVmg9yZceEpw/wog8hhR1i/sF4dD1ftBSr24iN4aNjLLIh
	oDdcZRbtut61htRjUFCcg8gYD5WGAhHRDmUqp/pZzohKtYjWa01BMyY/yd9M1sn3ksvJcHbkgl7xk
	UgXO5I812U4ztMD4HJK8PEmFg7ientgNfdsGQvi+WrbB+C8SdaRudbSMJMYQotUP2M9TElg+zo+9J
	Me7/1XgWgqb+RcdA51+iBy847gP7pcmNv0S94P05HtEsx0F42ibmBsRX09ySisdZRnyX1SYhX0DZQ
	fAv4GuP8q5LHdW0WPd/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSz53-0003h5-85; Mon, 27 Apr 2020 08:25:33 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSz0J-00068N-RP
 for linux-mtd@lists.infradead.org; Mon, 27 Apr 2020 08:20:42 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 22F612A0A17;
 Mon, 27 Apr 2020 09:20:38 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: David Woodhouse <dwmw2@infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org
Subject: [PATCH 08/17] mtd: rawnand: cafe: Use devm_kzalloc and
 devm_request_irq()
Date: Mon, 27 Apr 2020 10:20:18 +0200
Message-Id: <20200427082028.394719-9-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.25.3
In-Reply-To: <20200427082028.394719-1-boris.brezillon@collabora.com>
References: <20200427082028.394719-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_012040_050319_C8B94632 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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

This simplifies the error/remove path.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/mtd/nand/raw/cafe_nand.c | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/mtd/nand/raw/cafe_nand.c b/drivers/mtd/nand/raw/cafe_nand.c
index 55fa0bf2806a..3eab57e63215 100644
--- a/drivers/mtd/nand/raw/cafe_nand.c
+++ b/drivers/mtd/nand/raw/cafe_nand.c
@@ -848,7 +848,7 @@ static int cafe_nand_probe(struct pci_dev *pdev,
 
 	pci_set_master(pdev);
 
-	cafe = kzalloc(sizeof(*cafe), GFP_KERNEL);
+	cafe = devm_kzalloc(&pdev->dev, sizeof(*cafe), GFP_KERNEL);
 	if (!cafe)
 		return  -ENOMEM;
 
@@ -860,8 +860,7 @@ static int cafe_nand_probe(struct pci_dev *pdev,
 	cafe->mmio = pci_iomap(pdev, 0, 0);
 	if (!cafe->mmio) {
 		dev_warn(&pdev->dev, "failed to iomap\n");
-		err = -ENOMEM;
-		goto out_free_mtd;
+		return -ENOMEM;
 	}
 
 	cafe->rs = init_rs_non_canonical(12, &cafe_mul, 0, 1, 8);
@@ -910,8 +909,8 @@ static int cafe_nand_probe(struct pci_dev *pdev,
 
 	cafe_nand_init(cafe);
 
-	err = request_irq(pdev->irq, &cafe_nand_interrupt, IRQF_SHARED,
-			  "CAFE NAND", mtd);
+	err = devm_request_irq(&pdev->dev, pdev->irq, cafe_nand_interrupt,
+			       IRQF_SHARED, "CAFE NAND", mtd);
 	if (err) {
 		dev_warn(&pdev->dev, "Could not register IRQ %d\n", pdev->irq);
 		goto out_ior;
@@ -942,11 +941,8 @@ static int cafe_nand_probe(struct pci_dev *pdev,
 	cafe_writel(cafe,
 		    cafe_readl(cafe, GLOBAL_IRQ_MASK) & ~CAFE_GLOBAL_IRQ_NAND,
 		    GLOBAL_IRQ_MASK);
-	free_irq(pdev->irq, mtd);
  out_ior:
 	pci_iounmap(pdev, cafe->mmio);
- out_free_mtd:
-	kfree(cafe);
  out:
 	return err;
 }
@@ -961,12 +957,10 @@ static void cafe_nand_remove(struct pci_dev *pdev)
 	cafe_writel(cafe,
 		    cafe_readl(cafe, GLOBAL_IRQ_MASK) & ~CAFE_GLOBAL_IRQ_NAND,
 		    GLOBAL_IRQ_MASK);
-	free_irq(pdev->irq, mtd);
 	nand_release(chip);
 	free_rs(cafe->rs);
 	pci_iounmap(pdev, cafe->mmio);
 	dma_free_coherent(&cafe->pdev->dev, 2112, cafe->dmabuf, cafe->dmaaddr);
-	kfree(cafe);
 }
 
 static const struct pci_device_id cafe_nand_tbl[] = {
-- 
2.25.3


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
