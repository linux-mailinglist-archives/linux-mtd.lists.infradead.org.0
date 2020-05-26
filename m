Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3BEF1D96EE
	for <lists+linux-mtd@lfdr.de>; Tue, 19 May 2020 15:02:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C1qTAWkFD6qZD6f5iet6u3B5VN5YsXfO8K+Njs54j8M=; b=RXB2zeJmyT04x7
	2OtpeBxRaZEH5u167D1g/lOsV6CftXDYMIWetcrEvCM/4NHMOhYLym3wJ9UC+BeKTa2wM+X9t5+sG
	8HFKOjt9b/bMnh4V+vaNjqz4m4rOjB6Lg6NDVfTF3C/sKI/ClfD+zqXcygQCXSysfmTPffk/kPNVC
	c/Aa5trNU0pQD0l/atX/samYfHVhrZ40tKWE/LOpnDaVbsm/5oyxQyCNYCivC5jl24sQY65e7TWIS
	uDuKj3z6HceDmCK3+ZJIa5bZ0xve2HSevqR9824r4X3b8fGCvauYtRYwi2rihOzMtmHGvEG7/hcNh
	U04tNqnCPj6LT7BukPig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb1tM-0003B8-PP; Tue, 19 May 2020 13:02:44 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb1rQ-0001hV-Cl
 for linux-mtd@lists.infradead.org; Tue, 19 May 2020 13:00:47 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 4AD03FF80C;
 Tue, 19 May 2020 13:00:42 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: <linux-mtd@lists.infradead.org>
Subject: [PATCH v2 04/62] mtd: rawnand: brcmnand: Stop using nand_release()
Date: Tue, 19 May 2020 14:59:37 +0200
Message-Id: <20200519130035.1883-5-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200519130035.1883-1-miquel.raynal@bootlin.com>
References: <20200519130035.1883-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_060044_599999_7E5BD0DB 
X-CRM114-Status: GOOD (  10.29  )
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
Cc: Brian Norris <computersforpeace@gmail.com>,
 Kamal Dasu <kdasu.kdev@gmail.com>, Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This helper is not very useful and very often people get confused:
they use nand_release() instead of nand_cleanup().

Let's stop using nand_release() by calling mtd_device_unregister() and
nand_cleanup() directly.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Brian Norris <computersforpeace@gmail.com>
Cc: Kamal Dasu <kdasu.kdev@gmail.com>
---
 drivers/mtd/nand/raw/brcmnand/brcmnand.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/raw/brcmnand/brcmnand.c b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
index fe7cd3aa0cd6..d20aaa036608 100644
--- a/drivers/mtd/nand/raw/brcmnand/brcmnand.c
+++ b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
@@ -3045,9 +3045,15 @@ int brcmnand_remove(struct platform_device *pdev)
 {
 	struct brcmnand_controller *ctrl = dev_get_drvdata(&pdev->dev);
 	struct brcmnand_host *host;
+	struct nand_chip *chip;
+	int ret;
 
-	list_for_each_entry(host, &ctrl->host_list, node)
-		nand_release(&host->chip);
+	list_for_each_entry(host, &ctrl->host_list, node) {
+		chip = &host->chip;
+		ret = mtd_device_unregister(nand_to_mtd(chip));
+		WARN_ON(ret);
+		nand_cleanup(chip);
+	}
 
 	clk_disable_unprepare(ctrl->clk);
 
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
