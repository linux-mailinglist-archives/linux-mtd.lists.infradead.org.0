Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC4811CCAFC
	for <lists+linux-mtd@lfdr.de>; Sun, 10 May 2020 14:26:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NrsVhf+CeNbPKF+VTDFR6wWQzNx3CMBRQgnap+COOiI=; b=mFDK/SpXul/D0L
	zeFSeQrlipIcs+LMaG0INAKL7d7jGvlNpS/+ASzxto2qnsHcl0uf06+NWZ3mtlU4MBnM+dyJNMFNc
	Hz/ZVWoOptt6eBXbxY3PuCthKkkgvcRsR9zwxe773A2w10CywPiJ21h1Qu54Upf3hF9rl9cYoWRlK
	P/hXo/AYX+Zy4p1sp0NX929ZtZgVT0s/q/aA40QtDrI4TmN1asPQKPLcWuXJ8MplvvpdqZyVfn3gN
	o8obw8lHwRHNQxbCXZVU7ivVlGM26GxtDtp0phucWFtZZAWOxvaO6W9+E3bUyhvb5QUoV2cgCTlxQ
	XdhMGcLbnv4e0UlbkvQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXl26-0007IH-Ua; Sun, 10 May 2020 12:26:14 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXkpV-0005cd-JY
 for linux-mtd@lists.infradead.org; Sun, 10 May 2020 12:13:16 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 6F61C2000E;
 Sun, 10 May 2020 12:13:11 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH 49/62] mtd: rawnand: sharpsl: Stop using nand_release()
Date: Sun, 10 May 2020 14:12:07 +0200
Message-Id: <20200510121220.18042-50-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200510121220.18042-1-miquel.raynal@bootlin.com>
References: <20200510121220.18042-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_051313_803171_B8F97C8B 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
