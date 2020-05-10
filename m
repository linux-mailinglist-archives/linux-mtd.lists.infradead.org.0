Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52FEA1CCAE8
	for <lists+linux-mtd@lfdr.de>; Sun, 10 May 2020 14:23:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EiJnHwGTudw3HrzIpmAuEHhlY7b9bXzlv8yYblJdWM4=; b=Kpj6FT88Q7P4U/
	i4sgjH/eXGdfrEoihlQh92aR10r2wy/+bGVuTomccOu91LVwXki96nwRfDBgPPe4BzxaU22qdZlmw
	+/eBD41yqT77GVn0YygK62vwZ5imI4Ccwj/3ChcTzl2FMasb9xrOHQQUVZPy2cUOnDKFY8MtS7UXs
	cgzkn+YI1yOihJNUffWPv3seGaMsden7fumQ+evGV9jjvX/Ft/xinBqBa/RisnwgVNYhQYf0TBPyX
	Wvi9wQ1CxAP8f0kemG/p4H25RkPaWsjiHCc7gPP3eYuXMmGVi7HmG+JK+W73U65lNwUCOBEtdFy9E
	5RVkPDm+B9NuoPiyEU4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXkyt-00028r-VF; Sun, 10 May 2020 12:22:55 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXkpK-0005TO-Gn
 for linux-mtd@lists.infradead.org; Sun, 10 May 2020 12:13:04 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 68D6C20004;
 Sun, 10 May 2020 12:13:00 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH 38/62] mtd: rawnand: oxnas: Release all devices in the
 _remove() path
Date: Sun, 10 May 2020 14:11:56 +0200
Message-Id: <20200510121220.18042-39-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200510121220.18042-1-miquel.raynal@bootlin.com>
References: <20200510121220.18042-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_051302_733259_6CA2A342 
X-CRM114-Status: GOOD (  10.40  )
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

oxnans_nand_remove() should release all MTD devices and clean all NAND
devices, not only the first one registered.

Fixes: 668592492409 ("mtd: nand: Add OX820 NAND Support")
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/oxnas_nand.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/raw/oxnas_nand.c b/drivers/mtd/nand/raw/oxnas_nand.c
index 25862d62f994..23c222b6c40e 100644
--- a/drivers/mtd/nand/raw/oxnas_nand.c
+++ b/drivers/mtd/nand/raw/oxnas_nand.c
@@ -177,9 +177,13 @@ static int oxnas_nand_probe(struct platform_device *pdev)
 static int oxnas_nand_remove(struct platform_device *pdev)
 {
 	struct oxnas_nand_ctrl *oxnas = platform_get_drvdata(pdev);
+	struct nand_chip *chip;
+	int i;
 
-	if (oxnas->chips[0])
-		nand_release(oxnas->chips[0]);
+	for (i = 0; i < oxnas->nchips; i++) {
+		chip = oxnas->chips[i];
+		nand_release(chip);
+	}
 
 	clk_disable_unprepare(oxnas->clk);
 
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
