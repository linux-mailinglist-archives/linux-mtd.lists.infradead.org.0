Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 585391D9720
	for <lists+linux-mtd@lfdr.de>; Tue, 19 May 2020 15:07:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tye3YBirXesYrS98lDRDGBhXg3kHObKIa+ZMme5ZVeY=; b=hMGWJslkva7Zgo
	oyn92LlJcnmdjZ0pz9YhcjF0IOWqbdSOAm62KZjC37fd5Jv7faNcI4Kxk7KE4XsTXsczpxYsJHj5f
	3C1t0JRPQkfSC/OGIUKFxX2fWPrUPsm2M6+jNCs9KZlAcuIEIm9xgM7HqnOHvzj61ttNp5QZ32K7+
	unfFL/KJIMZLTT950KHUYHd6WNeGa6Cn5h3nMJgxXU7ZmpjgmG6jYZGmBVDn6BnJG2hTreLjQocNn
	KcuPIywOFsK7W4OcGLD29+ytXSTLvX4/5neKYPyQrbMOIZS55cjSkP2kMLHQ8BkIxPDBstXX8q3xG
	tEtJ4hqRjISZzusGkGbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb1yG-0001ds-8s; Tue, 19 May 2020 13:07:48 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb1ra-0001tP-11
 for linux-mtd@lists.infradead.org; Tue, 19 May 2020 13:00:56 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id B251AFF807;
 Tue, 19 May 2020 13:00:51 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: <linux-mtd@lists.infradead.org>
Subject: [PATCH v2 22/62] mtd: rawnand: ingenic: Stop using nand_release()
Date: Tue, 19 May 2020 14:59:55 +0200
Message-Id: <20200519130035.1883-23-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200519130035.1883-1-miquel.raynal@bootlin.com>
References: <20200519130035.1883-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_060054_206544_31E9673A 
X-CRM114-Status: GOOD (  10.70  )
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
Cc: Paul Cercueil <paul@crapouillou.net>,
 Harvey Hunt <harveyhuntnexus@gmail.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This helper is not very useful and very often people get confused:
they use nand_release() instead of nand_cleanup().

Let's stop using nand_release() by calling mtd_device_unregister() and
nand_cleanup() directly.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Paul Cercueil <paul@crapouillou.net>
Cc: Harvey Hunt <harveyhuntnexus@gmail.com>
---
 drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c b/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c
index 3bfb6fa8bad9..2af1b54d5d9d 100644
--- a/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c
+++ b/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c
@@ -387,13 +387,18 @@ static int ingenic_nand_init_chip(struct platform_device *pdev,
 
 static void ingenic_nand_cleanup_chips(struct ingenic_nfc *nfc)
 {
-	struct ingenic_nand *chip;
+	struct ingenic_nand *ingenic_chip;
+	struct nand_chip *chip;
+	int ret;
 
 	while (!list_empty(&nfc->chips)) {
-		chip = list_first_entry(&nfc->chips,
-					struct ingenic_nand, chip_list);
-		nand_release(&chip->chip);
-		list_del(&chip->chip_list);
+		ingenic_chip = list_first_entry(&nfc->chips,
+						struct ingenic_nand, chip_list);
+		chip = &ingenic_chip->chip;
+		ret = mtd_device_unregister(nand_to_mtd(chip));
+		WARN_ON(ret);
+		nand_cleanup(chip);
+		list_del(&ingenic_chip->chip_list);
 	}
 }
 
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
