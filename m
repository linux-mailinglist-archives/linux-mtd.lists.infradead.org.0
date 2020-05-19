Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD911D977B
	for <lists+linux-mtd@lfdr.de>; Tue, 19 May 2020 15:18:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r2zYDxpsIjeQb7lO50DAAccAMnQ6L7I/qoWqP+p9Qj4=; b=f0Rb053JJ7eZfq
	d7qMfxROEqiLQ26FQFJl0TGnqZ1NUUxuI8Ye1wTwy3kPAWPZMSu1z3VWbLXg2cKjmWYB8D309/m7T
	BIKqlTPoW0RjT0su7rLmke56wmPD9f8O8x7CF96YnswntOIBiy4M0jhm9vW3LVxONROvxffRvvgCN
	TBt9I+Ud8UUrvGGDMWhHFO5FtlL8dKjKdIRhxeiLa9mBmMQrtPL8hlMZh2NQ5WvGw+lqXsMSymZdN
	xKuTL0v3nHrosPFWdeC9+DQqQTdGplS2SxnUtVee+AW17YR9sdf4oTugFIxYdvboowdmwHZ3ZSPHD
	u+8RVVkMB+b6RNSiJ0xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb28k-0007nB-2o; Tue, 19 May 2020 13:18:38 +0000
Received: from merlin.infradead.org ([205.233.59.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb1ua-0004WJ-Iz
 for linux-mtd@bombadil.infradead.org; Tue, 19 May 2020 13:04:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=1Emt1lhLOnLkyvmuUn5s4APfx6Od+FjqsGz9Oq1BlzE=; b=KsWpM1r4IsyvQpWdICu57R3B7x
 +0Ta9CRN2ezoBs05zSHsL2UOTLXhU7MgWUENlSr7eEhUhXtyOsk1dXFXpNigd1QVVRFAoVzrSnl0D
 ardpmLj/dRxgQVdPA6ioLz++8WkIpQo8+s9NA4nnf2Q4nqFklpq2me3H65xi1QeJPKZioJQK/usyG
 JgT4GZ/leliS72HIGz2vouQqgu8ToAuTX+5fwUx/J44FE5k8QlgTfQRK2ZTTxqRb7iC3dG2GNw9EI
 kKXoUqkX6Ge9wZWFHplBXm50rmRbuKdZZqM0g9LXMxAOcdME1PsiIwF0emJmWRT1UoUw1di6P8XYT
 8Vbd8uIg==;
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb1sP-0007nB-I9
 for linux-mtd@lists.infradead.org; Tue, 19 May 2020 13:01:48 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 5E258FF827;
 Tue, 19 May 2020 13:01:02 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: <linux-mtd@lists.infradead.org>
Subject: [PATCH v2 43/62] mtd: rawnand: plat_nand: Stop using nand_release()
Date: Tue, 19 May 2020 15:00:16 +0200
Message-Id: <20200519130035.1883-44-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200519130035.1883-1-miquel.raynal@bootlin.com>
References: <20200519130035.1883-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.199 listed in wl.mailspike.net]
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
 drivers/mtd/nand/raw/plat_nand.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/plat_nand.c b/drivers/mtd/nand/raw/plat_nand.c
index 3a495b233443..556182f26057 100644
--- a/drivers/mtd/nand/raw/plat_nand.c
+++ b/drivers/mtd/nand/raw/plat_nand.c
@@ -106,8 +106,12 @@ static int plat_nand_remove(struct platform_device *pdev)
 {
 	struct plat_nand_data *data = platform_get_drvdata(pdev);
 	struct platform_nand_data *pdata = dev_get_platdata(&pdev->dev);
+	struct nand_chip *chip = &data->chip;
+	int ret;
 
-	nand_release(&data->chip);
+	ret = mtd_device_unregister(nand_to_mtd(chip));
+	WARN_ON(ret);
+	nand_cleanup(chip);
 	if (pdata->ctrl.remove)
 		pdata->ctrl.remove(pdev);
 
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
