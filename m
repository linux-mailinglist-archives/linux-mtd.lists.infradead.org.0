Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2FC1CCAC4
	for <lists+linux-mtd@lfdr.de>; Sun, 10 May 2020 14:15:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ili6tlfC7o645iO8oOaJ7QZmxOCXSaK4ubhluDnr/sY=; b=Ff65Ph6BCjyu86
	0gdiZoWL2h0T4e/6ccwtW9QI2jvm8y0P45QbpXt75wPUZmNR9FhedC3U9HSznQHWwLd30N3tGRNz8
	VtiW5IZXn3FQ3i70HsZ8fDhWA0XL69lciJUl4vj3VYll+cQ5/Hr8wCAmm9xKon/LYFxQco2VQGOKl
	EL+PN9gKbbbXHdnsb/QIy7GCOTZfEiYyf8Nsik0jeoor6OYV9tZM8pjFs9ODbIx6f9qGdcRqtHwWH
	UduVHRlCmFDJ8VftMXZss3fzh7nHb12AYUpiDBwtG3KnvAmTOp2vJEUeIcTDwXFm1/EQbaTCPa7j9
	7YbO6UZwuq5wpauN7Aig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXkrI-0006wh-RT; Sun, 10 May 2020 12:15:04 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXkou-000542-Ug
 for linux-mtd@lists.infradead.org; Sun, 10 May 2020 12:12:38 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id E3C122000D;
 Sun, 10 May 2020 12:12:34 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH 07/62] mtd: rawnand: cmx270: Stop using nand_release()
Date: Sun, 10 May 2020 14:11:25 +0200
Message-Id: <20200510121220.18042-8-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200510121220.18042-1-miquel.raynal@bootlin.com>
References: <20200510121220.18042-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_051237_134103_C08D1788 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
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
 drivers/mtd/nand/raw/cmx270_nand.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/cmx270_nand.c b/drivers/mtd/nand/raw/cmx270_nand.c
index 045b6175ae79..42c4cc030be3 100644
--- a/drivers/mtd/nand/raw/cmx270_nand.c
+++ b/drivers/mtd/nand/raw/cmx270_nand.c
@@ -219,8 +219,12 @@ module_init(cmx270_init);
  */
 static void __exit cmx270_cleanup(void)
 {
+	int ret;
+
 	/* Release resources, unregister device */
-	nand_release(mtd_to_nand(cmx270_nand_mtd));
+	ret = mtd_device_unregister(cmx270_nand_mtd);
+	WARN_ON(ret);
+	nand_cleanup(mtd_to_nand(cmx270_nand_mtd));
 
 	gpio_free(GPIO_NAND_RB);
 	gpio_free(GPIO_NAND_CS);
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
