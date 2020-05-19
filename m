Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B101F1D9772
	for <lists+linux-mtd@lfdr.de>; Tue, 19 May 2020 15:16:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fu9Hx4GSJ+QWbg3O9QVENn6TlgTmW2kUYI95TILQ7b8=; b=gse3G9QFptlXym
	6P/n+1boyUk2VwO3jTHmeYmt8iakz1inbReH/To6yP/OCM0ze8eh4NhLqCLEoG6R4kJQJB4pBf/VT
	o8aPhrrx2lWAjlE/jR0I4YgwdUTYfnjhls29I9OkmP5Fszm6O8Y+ETkPRkh5AC218CZwEcpV21E+O
	BxWfuaP5NbXXanRvBXmyey6J+umpceLCdoAv3a75uoYKsqgdTHqUZ8gaQgCvaP1BF8Ay6ICsUtJcc
	GEtZz7axnbVWLTIcRHj7/N01ifqUSArwToPE+wRJ4ENSk7jLRbHCUGjntRlVyh2QDnhjcWAaOkY8P
	9SQFkCC8Pk4/CCk27FJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb26U-0005gs-H2; Tue, 19 May 2020 13:16:18 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb1ru-0002CV-Iw
 for linux-mtd@lists.infradead.org; Tue, 19 May 2020 13:01:18 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 9A57BFF819;
 Tue, 19 May 2020 13:01:12 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: <linux-mtd@lists.infradead.org>
Subject: [PATCH v2 58/62] mtd: rawnand: txx9ndfmc: Stop using nand_release()
Date: Tue, 19 May 2020 15:00:31 +0200
Message-Id: <20200519130035.1883-59-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200519130035.1883-1-miquel.raynal@bootlin.com>
References: <20200519130035.1883-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_060115_115706_B3DB0153 
X-CRM114-Status: GOOD (  10.75  )
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
 drivers/mtd/nand/raw/txx9ndfmc.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/raw/txx9ndfmc.c b/drivers/mtd/nand/raw/txx9ndfmc.c
index 2642d5bb3241..47d966871445 100644
--- a/drivers/mtd/nand/raw/txx9ndfmc.c
+++ b/drivers/mtd/nand/raw/txx9ndfmc.c
@@ -371,7 +371,7 @@ static int __init txx9ndfmc_probe(struct platform_device *dev)
 static int __exit txx9ndfmc_remove(struct platform_device *dev)
 {
 	struct txx9ndfmc_drvdata *drvdata = platform_get_drvdata(dev);
-	int i;
+	int ret, i;
 
 	if (!drvdata)
 		return 0;
@@ -385,7 +385,9 @@ static int __exit txx9ndfmc_remove(struct platform_device *dev)
 		chip = mtd_to_nand(mtd);
 		txx9_priv = nand_get_controller_data(chip);
 
-		nand_release(chip);
+		ret = mtd_device_unregister(nand_to_mtd(chip));
+		WARN_ON(ret);
+		nand_cleanup(chip);
 		kfree(txx9_priv->mtdname);
 		kfree(txx9_priv);
 	}
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
