Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1870A1E2D3B
	for <lists+linux-mtd@lfdr.de>; Tue, 26 May 2020 21:20:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XLdA7jFxpSBog54sXoYNkabqZX/noWuGeEsVZZTYBFM=; b=OOYIcTSnT2uO17
	UMl6p8t1x6H+1WaDnR/qkroD9jAZZHR0HOgouKBDbwRTEELrUqvLimYM5KSbfezRhWcV/xB2gH7pC
	p5SDfPjBMKE2UPxnt29t/y+xixLqfs7jawry1zR4vfqg+zIOlEUJ72t48wI9/MRg79mTdtJNIgD+x
	TmVHGro+iEYwa0vCzZzMjOa1i9pSVh794CB2oMZ0NBeCmuY203yuje2SjaVZrAIwJ2Ja0/Q0IdTAS
	0K4DNTLO6wubT0CRb3pootlTG1h/0NgLps8MuFuEZ0PbYw044jbuRP3clcuEw5IbcexztYYLTvDaT
	R0WjCnSFhLQqVKX5/r+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdf88-00063R-GN; Tue, 26 May 2020 19:20:52 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdf57-0001PP-Hf
 for linux-mtd@lists.infradead.org; Tue, 26 May 2020 19:17:47 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 2C060240006;
 Tue, 26 May 2020 19:17:43 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v5 09/28] mtd: rawnand: Rename nand_has_setup_data_interface()
Date: Tue, 26 May 2020 21:17:06 +0200
Message-Id: <20200526191725.7591-10-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200526191725.7591-1-miquel.raynal@bootlin.com>
References: <20200526191725.7591-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_121745_823250_45948946 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Rickard Andersson <rickaran@axis.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This is really a NAND controller hook so call it
nand_controller_has_setup_data_interface(), which makes much more
sense.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/mtd/nand/raw/internals.h   | 2 +-
 drivers/mtd/nand/raw/nand_base.c   | 6 +++---
 drivers/mtd/nand/raw/nand_legacy.c | 2 +-
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/mtd/nand/raw/internals.h b/drivers/mtd/nand/raw/internals.h
index a518acfd9b3f..347d42c55353 100644
--- a/drivers/mtd/nand/raw/internals.h
+++ b/drivers/mtd/nand/raw/internals.h
@@ -130,7 +130,7 @@ static inline int nand_exec_op(struct nand_chip *chip,
 	return chip->controller->ops->exec_op(chip, op, false);
 }
 
-static inline bool nand_has_setup_data_iface(struct nand_chip *chip)
+static inline bool nand_controller_has_setup_data_iface(struct nand_chip *chip)
 {
 	if (!chip->controller || !chip->controller->ops ||
 	    !chip->controller->ops->setup_data_interface)
diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 6a6af0b19fec..8e2c5f52ae6b 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -910,7 +910,7 @@ static int nand_reset_data_interface(struct nand_chip *chip, int chipnr)
 {
 	int ret;
 
-	if (!nand_has_setup_data_iface(chip))
+	if (!nand_controller_has_setup_data_iface(chip))
 		return 0;
 
 	/*
@@ -955,7 +955,7 @@ static int nand_setup_data_interface(struct nand_chip *chip, int chipnr)
 	u8 tmode_param[ONFI_SUBFEATURE_PARAM_LEN] = { mode, };
 	int ret;
 
-	if (!nand_has_setup_data_iface(chip))
+	if (!nand_controller_has_setup_data_iface(chip))
 		return 0;
 
 	/* Change the mode on the chip side (if supported by the NAND chip) */
@@ -1025,7 +1025,7 @@ static int nand_init_data_interface(struct nand_chip *chip)
 {
 	int modes, mode, ret;
 
-	if (!nand_has_setup_data_iface(chip))
+	if (!nand_controller_has_setup_data_iface(chip))
 		return 0;
 
 	/*
diff --git a/drivers/mtd/nand/raw/nand_legacy.c b/drivers/mtd/nand/raw/nand_legacy.c
index d64791c06a97..8b91aa7773d8 100644
--- a/drivers/mtd/nand/raw/nand_legacy.c
+++ b/drivers/mtd/nand/raw/nand_legacy.c
@@ -365,7 +365,7 @@ static void nand_ccs_delay(struct nand_chip *chip)
 	 * Wait tCCS_min if it is correctly defined, otherwise wait 500ns
 	 * (which should be safe for all NANDs).
 	 */
-	if (nand_has_setup_data_iface(chip))
+	if (nand_controller_has_setup_data_iface(chip))
 		ndelay(chip->data_interface.timings.sdr.tCCS_min / 1000);
 	else
 		ndelay(500);
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
