Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E275E1D9767
	for <lists+linux-mtd@lfdr.de>; Tue, 19 May 2020 15:15:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7n/mPKrrf57n+jivxXjLoAb86JOUwGSkyEw+OzFxU/o=; b=XNky3S5QaGO54F
	7+CfoOXN25DndfdEnlp2nRDRe0nERY1/ood+8ULJfCsU0Ebq1pGJJNNc3+sgrpm4tW1LlQQWf5wpQ
	ub1bCLEKGHWMAUE4AZKZVWBQqK/KQN362GW2NZ5DTRBJ2qRK8wIYt1CM/C0TddRktC0r6ErXk7CtH
	jTkKGa7IUhsall8EhSihaKuIo3vM5/UaJoUDwsVVUrRIsXtKnvMqK6Umz/rXVQBg+k5P8D7cVoHjr
	vWzWIziLw71QzyEP7m91md7RAArIK3n6Vsxc82r8A3V5RZM9ffmcD222zC4IY/8aFpQLzMP3pssTP
	tmICONr4f8wR2e6J/7SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb25W-0002Jy-Ir; Tue, 19 May 2020 13:15:18 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb1rt-0002BV-36
 for linux-mtd@lists.infradead.org; Tue, 19 May 2020 13:01:17 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 519C9FF802;
 Tue, 19 May 2020 13:01:11 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: <linux-mtd@lists.infradead.org>
Subject: [PATCH v2 55/62] mtd: rawnand: tango: Stop using nand_release()
Date: Tue, 19 May 2020 15:00:28 +0200
Message-Id: <20200519130035.1883-56-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200519130035.1883-1-miquel.raynal@bootlin.com>
References: <20200519130035.1883-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_060113_281742_2CBED6C3 
X-CRM114-Status: GOOD (  11.30  )
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
 drivers/mtd/nand/raw/tango_nand.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/raw/tango_nand.c b/drivers/mtd/nand/raw/tango_nand.c
index b92de603e6db..246871e01027 100644
--- a/drivers/mtd/nand/raw/tango_nand.c
+++ b/drivers/mtd/nand/raw/tango_nand.c
@@ -600,14 +600,19 @@ static int chip_init(struct device *dev, struct device_node *np)
 
 static int tango_nand_remove(struct platform_device *pdev)
 {
-	int cs;
 	struct tango_nfc *nfc = platform_get_drvdata(pdev);
+	struct nand_chip *chip;
+	int cs, ret;
 
 	dma_release_channel(nfc->chan);
 
 	for (cs = 0; cs < MAX_CS; ++cs) {
-		if (nfc->chips[cs])
-			nand_release(&nfc->chips[cs]->nand_chip);
+		if (nfc->chips[cs]) {
+			chip = &nfc->chips[cs]->nand_chip;
+			ret = mtd_device_unregister(nand_to_mtd(chip));
+			WARN_ON(ret);
+			nand_cleanup(chip);
+		}
 	}
 
 	return 0;
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
