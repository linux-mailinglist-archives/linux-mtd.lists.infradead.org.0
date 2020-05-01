Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 750831C1029
	for <lists+linux-mtd@lfdr.de>; Fri,  1 May 2020 11:07:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=krbHW5oDHWC5qQ6zT/zu3YcRAYZaVKyBFbtKLmKifRI=; b=n1A5FDFM1oqDii
	YJtqsRnOaGiOzf9Uk1hgc0VO8hbbKcR70zR456Lf0la8X2MPxFbn+Oh2KLOIrkKM87zZuXbr+thmY
	bV7y1egU/nEx5dNUxfr2Kwqlfy+wKThQNx2P9/KBXvwDBbskACVRyU+CQFuJqoowF59CNKMLM19o2
	DEo1S/nOdGF3FfTUg8q7Th+58WtcC2mYjwXPwiZLY/plCtAx5RYii9ilOhWShx+yFKs0nUdUJC9kz
	LAQwx23/3xncl7EpuPZUCAGo1TJmM/DV1Zhd1wmsZ7VE/w0TU/wOXEHvLTwu9j2of7Lg8uKO49EiL
	82PuYebkXBYMm5ZNkSbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jURdr-0001KM-PD; Fri, 01 May 2020 09:07:31 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jURdO-00018v-6E; Fri, 01 May 2020 09:07:03 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id D4EAA2A2D4E;
 Fri,  1 May 2020 10:07:00 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
	linux-mtd@lists.infradead.org
Subject: [PATCH 1/4] mtd: rawnand: cs553x: Declare controllers instead of NAND
 chips
Date: Fri,  1 May 2020 11:06:47 +0200
Message-Id: <20200501090650.1138200-2-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.25.3
In-Reply-To: <20200501090650.1138200-1-boris.brezillon@collabora.com>
References: <20200501090650.1138200-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_020702_355810_8872486E 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, linux-geode@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Andres Salomon <dilinger@queued.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The CS553x companion chip embeds 4 NAND controllers. Declare them as
NAND controllers instead of NAND chips. That's done in preparation
of the transition to exec_op().

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/mtd/nand/raw/cs553x_nand.c | 33 ++++++++++++++++++++----------
 1 file changed, 22 insertions(+), 11 deletions(-)

diff --git a/drivers/mtd/nand/raw/cs553x_nand.c b/drivers/mtd/nand/raw/cs553x_nand.c
index e2322cee3229..970de727679f 100644
--- a/drivers/mtd/nand/raw/cs553x_nand.c
+++ b/drivers/mtd/nand/raw/cs553x_nand.c
@@ -89,6 +89,11 @@
 #define CS_NAND_ECC_CLRECC	(1<<1)
 #define CS_NAND_ECC_ENECC	(1<<0)
 
+struct cs553x_nand_controller {
+	struct nand_controller base;
+	struct nand_chip chip;
+};
+
 static void cs553x_read_buf(struct nand_chip *this, u_char *buf, int len)
 {
 	while (unlikely(len > 0x800)) {
@@ -166,10 +171,11 @@ static int cs_calculate_ecc(struct nand_chip *this, const u_char *dat,
 	return 0;
 }
 
-static struct mtd_info *cs553x_mtd[4];
+static struct cs553x_nand_controller *controllers[4];
 
 static int __init cs553x_init_one(int cs, int mmio, unsigned long adr)
 {
+	struct cs553x_nand_controller *controller;
 	int err = 0;
 	struct nand_chip *this;
 	struct mtd_info *new_mtd;
@@ -183,12 +189,15 @@ static int __init cs553x_init_one(int cs, int mmio, unsigned long adr)
 	}
 
 	/* Allocate memory for MTD device structure and private data */
-	this = kzalloc(sizeof(struct nand_chip), GFP_KERNEL);
-	if (!this) {
+	controller = kzalloc(sizeof(*controller), GFP_KERNEL);
+	if (!controller) {
 		err = -ENOMEM;
 		goto out;
 	}
 
+	this = &controller->chip;
+	nand_controller_init(&controller->base);
+	this->controller = &controller->base;
 	new_mtd = nand_to_mtd(this);
 
 	/* Link the private data with the MTD structure */
@@ -232,7 +241,7 @@ static int __init cs553x_init_one(int cs, int mmio, unsigned long adr)
 	if (err)
 		goto out_free;
 
-	cs553x_mtd[cs] = new_mtd;
+	controllers[cs] = controller;
 	goto out;
 
 out_free:
@@ -240,7 +249,7 @@ static int __init cs553x_init_one(int cs, int mmio, unsigned long adr)
 out_ior:
 	iounmap(this->legacy.IO_ADDR_R);
 out_mtd:
-	kfree(this);
+	kfree(controller);
 out:
 	return err;
 }
@@ -295,9 +304,10 @@ static int __init cs553x_init(void)
 	/* Register all devices together here. This means we can easily hack it to
 	   do mtdconcat etc. if we want to. */
 	for (i = 0; i < NR_CS553X_CONTROLLERS; i++) {
-		if (cs553x_mtd[i]) {
+		if (controllers[i]) {
 			/* If any devices registered, return success. Else the last error. */
-			mtd_device_register(cs553x_mtd[i], NULL, 0);
+			mtd_device_register(nand_to_mtd(&controllers[i]->chip),
+					    NULL, 0);
 			err = 0;
 		}
 	}
@@ -312,9 +322,10 @@ static void __exit cs553x_cleanup(void)
 	int i;
 
 	for (i = 0; i < NR_CS553X_CONTROLLERS; i++) {
-		struct mtd_info *mtd = cs553x_mtd[i];
-		struct nand_chip *this;
 		void __iomem *mmio_base;
+		struct cs553x_nand_controller *controller = controllers[i];
+		struct nand_chip *this = &controller->chip;
+		struct mtd_info *mtd = nand_to_mtd(this);
 
 		if (!mtd)
 			continue;
@@ -325,13 +336,13 @@ static void __exit cs553x_cleanup(void)
 		/* Release resources, unregister device */
 		nand_release(this);
 		kfree(mtd->name);
-		cs553x_mtd[i] = NULL;
+		controllers[i] = NULL;
 
 		/* unmap physical address */
 		iounmap(mmio_base);
 
 		/* Free the MTD device structure */
-		kfree(this);
+		kfree(controller);
 	}
 }
 
-- 
2.25.3


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
