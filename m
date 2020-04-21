Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A6361B2D21
	for <lists+linux-mtd@lfdr.de>; Tue, 21 Apr 2020 18:50:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=050gOd14oex2vjrE4GtZFqu5Qsw67mx1ORcvjTTCqws=; b=SM6wfG2mHH7MqY
	rJsxCYHAIEQac+X1NwfZGDPodYd5GkzkyFP/i92/1jgXPb5gbj4URcWZVmEdKE4nBOHPVAo8f2Zhv
	siM5h0Wb2y8uLJ2MNWA04kb7JK9rRPtJbhamGq9kNY7nIBiU3QALr9Q/HCQSnU2yeSPK7s0mf6VE2
	tDRDk7CT8eXPATTxIYa8rmxvzXXGgJbSt6RXPxe7I4qg9sJRH0PGjDqFk1l0vu3FAEaNC5tfIipqF
	VRRSYyHymc1QXvHt+ZeN8+0Fi2tsrUoZUy1DxJSdnjwNWuEIj+9OdP3VuxGqINtO1IGIru0QVPmKS
	OH0ZlsQX/aifHJxdD1IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQw6G-000737-4y; Tue, 21 Apr 2020 16:50:20 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQw54-0006Gj-0J
 for linux-mtd@lists.infradead.org; Tue, 21 Apr 2020 16:49:08 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 976ABC0016;
 Tue, 21 Apr 2020 16:49:03 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH 4/6] mtd: rawnand: marvell: Fix probe error path
Date: Tue, 21 Apr 2020 18:48:55 +0200
Message-Id: <20200421164857.8255-5-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200421164857.8255-1-miquel.raynal@bootlin.com>
References: <20200421164857.8255-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_094906_199112_91FF6816 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Ensure all chips are deregistered and cleaned in case of error during
the probe.

Fixes: 02f26ecf8c77 ("mtd: nand: add reworked Marvell NAND controller driver")
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/marvell_nand.c | 21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/mtd/nand/raw/marvell_nand.c b/drivers/mtd/nand/raw/marvell_nand.c
index 350949b34eee..cb1e1a295002 100644
--- a/drivers/mtd/nand/raw/marvell_nand.c
+++ b/drivers/mtd/nand/raw/marvell_nand.c
@@ -2673,6 +2673,16 @@ static int marvell_nand_chip_init(struct device *dev, struct marvell_nfc *nfc,
 	return 0;
 }
 
+static void marvell_nand_chips_cleanup(struct marvell_nfc *nfc)
+{
+	struct marvell_nand_chip *entry, *temp;
+
+	list_for_each_entry_safe(entry, temp, &nfc->chips, node) {
+		nand_release(&entry->chip);
+		list_del(&entry->node);
+	}
+}
+
 static int marvell_nand_chips_init(struct device *dev, struct marvell_nfc *nfc)
 {
 	struct device_node *np = dev->of_node;
@@ -2707,6 +2717,7 @@ static int marvell_nand_chips_init(struct device *dev, struct marvell_nfc *nfc)
 		ret = marvell_nand_chip_init(dev, nfc, nand_np);
 		if (ret) {
 			of_node_put(nand_np);
+			marvell_nand_chips_cleanup(nfc);
 			return ret;
 		}
 	}
@@ -2714,16 +2725,6 @@ static int marvell_nand_chips_init(struct device *dev, struct marvell_nfc *nfc)
 	return 0;
 }
 
-static void marvell_nand_chips_cleanup(struct marvell_nfc *nfc)
-{
-	struct marvell_nand_chip *entry, *temp;
-
-	list_for_each_entry_safe(entry, temp, &nfc->chips, node) {
-		nand_release(&entry->chip);
-		list_del(&entry->node);
-	}
-}
-
 static int marvell_nfc_init_dma(struct marvell_nfc *nfc)
 {
 	struct platform_device *pdev = container_of(nfc->dev,
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
