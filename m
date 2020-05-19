Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A4691D974F
	for <lists+linux-mtd@lfdr.de>; Tue, 19 May 2020 15:13:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NrsVhf+CeNbPKF+VTDFR6wWQzNx3CMBRQgnap+COOiI=; b=pa/iqZflfzjFpO
	4Yj5r2c9UjJAN9irxi6g1NvWlnrfDCDbrC22gsr7IkhXg7wxodi05El5E3zsVS8dDd1/wKmJggHcR
	spMhWb674zshjkVwtlADj8BUoWS3YH4Pr1UKoOhH3sTnmDJdvrs95GV4kIJncxG4jgbyJV35pPUVd
	YNkz3zw1dhvMYZg2XQQQZiFjvauw4163H8kqNPsiIrL3UCEJ1zeoLc1gasyIOD/4RXEXsqodkSRgW
	tHTMP0wHjzvlRNS+OXNWdKtUigSTuaED/uQ/Kn9Esf3SOMGbcJfrkPrkFEDahAG4UbXRMX5Eedi2/
	DUn36zjR2WjVNSu5yrDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb23g-0000ir-QV; Tue, 19 May 2020 13:13:24 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb1ro-00027J-1Q
 for linux-mtd@lists.infradead.org; Tue, 19 May 2020 13:01:14 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 33D46FF81C;
 Tue, 19 May 2020 13:01:06 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: <linux-mtd@lists.infradead.org>
Subject: [PATCH v2 49/62] mtd: rawnand: sharpsl: Stop using nand_release()
Date: Tue, 19 May 2020 15:00:22 +0200
Message-Id: <20200519130035.1883-50-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200519130035.1883-1-miquel.raynal@bootlin.com>
References: <20200519130035.1883-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_060108_223103_CCDEB985 
X-CRM114-Status: GOOD (  10.97  )
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
 drivers/mtd/nand/raw/sharpsl.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/raw/sharpsl.c b/drivers/mtd/nand/raw/sharpsl.c
index d8c52a016080..51286f7acf54 100644
--- a/drivers/mtd/nand/raw/sharpsl.c
+++ b/drivers/mtd/nand/raw/sharpsl.c
@@ -199,13 +199,19 @@ static int sharpsl_nand_probe(struct platform_device *pdev)
 static int sharpsl_nand_remove(struct platform_device *pdev)
 {
 	struct sharpsl_nand *sharpsl = platform_get_drvdata(pdev);
+	struct nand_chip *chip = &sharpsl->chip;
+	int ret;
 
-	/* Release resources, unregister device */
-	nand_release(&sharpsl->chip);
+	/* Unregister device */
+	ret = mtd_device_unregister(nand_to_mtd(chip));
+	WARN_ON(ret);
+
+	/* Release resources */
+	nand_cleanup(chip);
 
 	iounmap(sharpsl->io);
 
-	/* Free the MTD device structure */
+	/* Free the driver's structure */
 	kfree(sharpsl);
 
 	return 0;
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
