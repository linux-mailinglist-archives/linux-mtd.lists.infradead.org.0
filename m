Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 008A51CCB05
	for <lists+linux-mtd@lfdr.de>; Sun, 10 May 2020 14:27:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7n/mPKrrf57n+jivxXjLoAb86JOUwGSkyEw+OzFxU/o=; b=YXdIjQn5btvqYW
	Sy8EWdhkwyxzH1siIC52T5MEEBG0eOwm3KbYrVm5k2NU4gvYdNui5lkh+feh3qajilDU518yp2bPo
	5AqGEnl2tt1niaKHDC2VVbLoxTZHXtzPgwHGjLmkD+l2mItJn0EkAkOzkcUYNjZj1W0G6QDkRHSrv
	obsqsx0aKpb7ABMs+fqvn68A14segtjkS8KLgHNT4O2+orwVoFk281zW1CrCRtDWQN5/m8IMb2dzn
	TAirx6Vjs/Xx/VI9in76f++FKofocb5uPBbEm+VfOmHwAIJXsT8+LkmIHvk2RltIbOKkm9BMNMRba
	6QvJaqlnFjvFvZEAUqOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXl3F-0008Se-Ae; Sun, 10 May 2020 12:27:25 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXkpa-0005gj-SM
 for linux-mtd@lists.infradead.org; Sun, 10 May 2020 12:13:20 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 628FB20004;
 Sun, 10 May 2020 12:13:16 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH 55/62] mtd: rawnand: tango: Stop using nand_release()
Date: Sun, 10 May 2020 14:12:13 +0200
Message-Id: <20200510121220.18042-56-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200510121220.18042-1-miquel.raynal@bootlin.com>
References: <20200510121220.18042-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_051319_262013_A6CFC4BA 
X-CRM114-Status: GOOD (  11.20  )
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
