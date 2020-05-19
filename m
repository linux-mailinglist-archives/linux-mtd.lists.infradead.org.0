Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C77D1D975C
	for <lists+linux-mtd@lfdr.de>; Tue, 19 May 2020 15:14:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HwOkt6ezCDf2dJU5V1n5yJkH7pwnSYObefCEK6/QvSs=; b=MxIuqbo0c34tAR
	EBSETquwE1V7JbafanY4Jrsnl/gAP3LV4C0RWID4yFGxy2OQw4R7ENxHSpXNgy7DJRojsnV0Eq1FW
	AA6mk1+XR0jAvg7vd9cKJZ0rIzBDbH+0LXZivq9IlVHNEDeznAseOZzfQaS+wsn6OeTBmnvyH5tQ+
	O0FShGePSd6LDPHdz7nBa8aWdl3wUUoBJDQo/KVThMO8rxSNBKBoo87ZEiXVqqWre67crtJJWWnJN
	0EmHqq2dqVK6AHqh2RGhaH0pgaTEAJVQR0EkH+eN+R2CAgX3u6TUXLVhbSfSNdv/e6w4uJ+a1QaS6
	JmWP/QiXM8W5StbpO4QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb24d-0001dY-NA; Tue, 19 May 2020 13:14:23 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb1rs-0002BL-Iy
 for linux-mtd@lists.infradead.org; Tue, 19 May 2020 13:01:16 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id E13C1FF80E;
 Tue, 19 May 2020 13:01:10 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: <linux-mtd@lists.infradead.org>
Subject: [PATCH v2 54/62] mtd: rawnand: sunxi: Stop using nand_release()
Date: Tue, 19 May 2020 15:00:27 +0200
Message-Id: <20200519130035.1883-55-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200519130035.1883-1-miquel.raynal@bootlin.com>
References: <20200519130035.1883-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_060112_802717_E4DB2B40 
X-CRM114-Status: GOOD (  10.45  )
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
 drivers/mtd/nand/raw/sunxi_nand.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/raw/sunxi_nand.c b/drivers/mtd/nand/raw/sunxi_nand.c
index 9f51fd20a52e..ffbc1651fadc 100644
--- a/drivers/mtd/nand/raw/sunxi_nand.c
+++ b/drivers/mtd/nand/raw/sunxi_nand.c
@@ -2039,13 +2039,18 @@ static int sunxi_nand_chips_init(struct device *dev, struct sunxi_nfc *nfc)
 static void sunxi_nand_chips_cleanup(struct sunxi_nfc *nfc)
 {
 	struct sunxi_nand_chip *sunxi_nand;
+	struct nand_chip *chip;
+	int ret;
 
 	while (!list_empty(&nfc->chips)) {
 		sunxi_nand = list_first_entry(&nfc->chips,
 					      struct sunxi_nand_chip,
 					      node);
-		nand_release(&sunxi_nand->nand);
-		sunxi_nand_ecc_cleanup(&sunxi_nand->nand.ecc);
+		chip = &sunxi_nand->nand;
+		ret = mtd_device_unregister(nand_to_mtd(chip));
+		WARN_ON(ret);
+		nand_cleanup(chip);
+		sunxi_nand_ecc_cleanup(&chip->ecc);
 		list_del(&sunxi_nand->node);
 	}
 }
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
