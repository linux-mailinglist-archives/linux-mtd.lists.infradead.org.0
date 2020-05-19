Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 213161D96F3
	for <lists+linux-mtd@lfdr.de>; Tue, 19 May 2020 15:03:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ESBb7A7UXzlDLf80gOEDL09tZIJC9qc7tn8ltxmpIOc=; b=MOSDZwxFUReD34
	I2mXRx78apxmdEkHOkI7woeO4kmlff2nd8KfpeEeqSY01ebLDqJAQd8gq+5ngGeNnIkqtmysK4xHH
	/XnxcnmVby03JFeatuzL9i49Fi853e15td7bo8MmZgv+oVz7sQ6G/qVqAeJ8Ze5zwFKwuTmI2rcK3
	VOaoqe46XUe4hKoHkcZf6rFOEEULhUOVW61xAQUo+j8Fgn4f8e00Uc8LxfLa01X5FP8M3yclOVSu3
	0+YTbdcTfE0JKLztnLkl3bIcVYpzxzSF1jVNMfS7H3xbNcVcb1dad2qIeLqe9IawXMwaNn7QcDEiA
	FWAQ15z7WxP+y2AvJAzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb1uO-00047Q-L9; Tue, 19 May 2020 13:03:48 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb1rT-0001lx-Sf
 for linux-mtd@lists.infradead.org; Tue, 19 May 2020 13:00:49 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id C2883FF814;
 Tue, 19 May 2020 13:00:45 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: <linux-mtd@lists.infradead.org>
Subject: [PATCH v2 10/62] mtd: rawnand: denali: Delete items from the list in
 the _remove() path
Date: Tue, 19 May 2020 14:59:43 +0200
Message-Id: <20200519130035.1883-11-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200519130035.1883-1-miquel.raynal@bootlin.com>
References: <20200519130035.1883-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_060048_055183_974CDCC1 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
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
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Denali driver keeps track of devices with a list. Delete items of this
list as long as they are not in use anymore.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Acked-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---
 drivers/mtd/nand/raw/denali.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/raw/denali.c b/drivers/mtd/nand/raw/denali.c
index 7a76b761dd0b..6ac125b9e927 100644
--- a/drivers/mtd/nand/raw/denali.c
+++ b/drivers/mtd/nand/raw/denali.c
@@ -1359,10 +1359,12 @@ EXPORT_SYMBOL(denali_init);
 
 void denali_remove(struct denali_controller *denali)
 {
-	struct denali_chip *dchip;
+	struct denali_chip *dchip, *tmp;
 
-	list_for_each_entry(dchip, &denali->chips, node)
+	list_for_each_entry_safe(dchip, tmp, &denali->chips, node) {
 		nand_release(&dchip->chip);
+		list_del(&dchip->node);
+	}
 
 	denali_disable_irq(denali);
 }
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
