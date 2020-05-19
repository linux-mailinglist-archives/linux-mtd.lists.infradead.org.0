Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F32151D973E
	for <lists+linux-mtd@lfdr.de>; Tue, 19 May 2020 15:12:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3kFqViL6SL0e5zO0MqwbxlhtM86D/C9Jqh2NltBy4xw=; b=tgRvebvlKU860l
	D2iKr4qnhyVLAxQal9NJvGpsNI8QklbKhxfRHIT91jUce9qJYNpU0JxNsMC3h/YME613nq+Fy2s49
	EU3fcD9dEKdSuR8wzN9Eu9HnS6WF2BymDtgl7xGAxP/LVI6kofpz7jki2jL9UJkKd1r+HTvMp6wcC
	U+2z5CdgVlzUpAqfWEdk0TinUNPLFWycdXln8edDz7k0nB+E7FnDCbDnvSLZ4FCdpX/Y83CfxS5ut
	u0sBBjU/fVFxUSY3YuSSmNNFiz6O58iI9Cfbb3DyWe7dTRAj1kQ+Bl6idpMkEl00p/AdvOH53U9aH
	VQT1kYLYTqnLxVLcayMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb22g-0008Ex-A3; Tue, 19 May 2020 13:12:22 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb1rm-000265-8t
 for linux-mtd@lists.infradead.org; Tue, 19 May 2020 13:01:09 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id BDA4AFF80A;
 Tue, 19 May 2020 13:01:03 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: <linux-mtd@lists.infradead.org>
Subject: [PATCH v2 45/62] mtd: rawnand: r852: Stop using nand_release()
Date: Tue, 19 May 2020 15:00:18 +0200
Message-Id: <20200519130035.1883-46-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200519130035.1883-1-miquel.raynal@bootlin.com>
References: <20200519130035.1883-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_060106_474611_9F535289 
X-CRM114-Status: GOOD (  10.78  )
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
Cc: Maxim Levitsky <maximlevitsky@gmail.com>,
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
Cc: Maxim Levitsky <maximlevitsky@gmail.com>
---
 drivers/mtd/nand/raw/r852.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/raw/r852.c b/drivers/mtd/nand/raw/r852.c
index 77774250fb11..f865e3a47b01 100644
--- a/drivers/mtd/nand/raw/r852.c
+++ b/drivers/mtd/nand/raw/r852.c
@@ -651,7 +651,8 @@ static int r852_register_nand_device(struct r852_device *dev)
 	dev->card_registered = 1;
 	return 0;
 error3:
-	nand_release(dev->chip);
+	WARN_ON(mtd_device_unregister(nand_to_mtd(dev->chip)));
+	nand_cleanup(dev->chip);
 error1:
 	/* Force card redetect */
 	dev->card_detected = 0;
@@ -670,7 +671,8 @@ static void r852_unregister_nand_device(struct r852_device *dev)
 		return;
 
 	device_remove_file(&mtd->dev, &dev_attr_media_type);
-	nand_release(dev->chip);
+	WARN_ON(mtd_device_unregister(mtd));
+	nand_cleanup(dev->chip);
 	r852_engine_disable(dev);
 	dev->card_registered = 0;
 }
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
