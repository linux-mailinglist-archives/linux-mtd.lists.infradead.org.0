Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72B211D37EB
	for <lists+linux-mtd@lfdr.de>; Thu, 14 May 2020 19:21:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p7QFbsok+Ykt8Zh/5TpvI5cXGHBYM93MtdAHtNy4T+g=; b=lY8RgaSl72gPo2
	UeHXFXkg0LDn3DAF2SOMwGkUM+BpzMhYu573hNwVp1QCcgnkWZIWyQDi24ov+mpTqpJTCbVOw/xzS
	zbMfKpGy3AAuTQcP6cGQwNgkbR9uYUN0pgYo9eKT+juxbNQ3J3EthL/1HEbH8jvxh3HsauferFNFM
	fu5wZsyhyBf4YhaQ/kuT3A7xDDbzpTpU42KkTwZdh1ilfgkU6T4fTjnwaL1Lw0vE5x7K2q6D+yojT
	FoxdViEMTkUWxFOw8ssAYeOFXfWLfzbOqvkGTliyXn4rKvnaI7bhT1DPCGGA0wY/AkKUyOobjYLZX
	Ja2HURGEpWluqPnQtmag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZHYB-0003ij-JM; Thu, 14 May 2020 17:21:39 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZHTo-00051D-3l; Thu, 14 May 2020 17:17:09 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 6A969240009;
 Thu, 14 May 2020 17:17:03 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>
Subject: [PATCH v5 05/21] mtd: rawnand: Return an enum from
 of_get_nand_ecc_algo()
Date: Thu, 14 May 2020 19:16:35 +0200
Message-Id: <20200514171651.24851-6-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200514171651.24851-1-miquel.raynal@bootlin.com>
References: <20200514171651.24851-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_101708_298111_CD7A1512 
X-CRM114-Status: GOOD (  11.65  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: Tudor Ambarus <tudor.ambarus@microchip.com>,
 Julien Su <juliensu@mxic.com.tw>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 Paul Cercueil <paul@crapouillou.net>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, Chuanhong Guo <gch981213@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

There is an enumeration to list ECC algorithm, let's use it instead of
returning an int.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/nand_base.c | 35 +++++++++++++++++---------------
 1 file changed, 19 insertions(+), 16 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index deb8c21a3cf1..e4296b67adbc 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -4997,17 +4997,20 @@ static const char * const nand_ecc_algos[] = {
 	[NAND_ECC_RS]		= "rs",
 };
 
-static int of_get_nand_ecc_algo(struct device_node *np)
+static enum nand_ecc_algo of_get_nand_ecc_algo(struct device_node *np)
 {
+	enum nand_ecc_algo ecc_algo;
 	const char *pm;
-	int err, i;
+	int err;
 
 	err = of_property_read_string(np, "nand-ecc-algo", &pm);
 	if (!err) {
-		for (i = NAND_ECC_HAMMING; i < ARRAY_SIZE(nand_ecc_algos); i++)
-			if (!strcasecmp(pm, nand_ecc_algos[i]))
-				return i;
-		return -ENODEV;
+		for (ecc_algo = NAND_ECC_HAMMING;
+		     ecc_algo < ARRAY_SIZE(nand_ecc_algos);
+		     ecc_algo++) {
+			if (!strcasecmp(pm, nand_ecc_algos[ecc_algo]))
+				return ecc_algo;
+		}
 	}
 
 	/*
@@ -5015,15 +5018,14 @@ static int of_get_nand_ecc_algo(struct device_node *np)
 	 * for some obsoleted values that were specifying ECC algorithm.
 	 */
 	err = of_property_read_string(np, "nand-ecc-mode", &pm);
-	if (err < 0)
-		return err;
+	if (!err) {
+		if (!strcasecmp(pm, "soft"))
+			return NAND_ECC_HAMMING;
+		else if (!strcasecmp(pm, "soft_bch"))
+			return NAND_ECC_BCH;
+	}
 
-	if (!strcasecmp(pm, "soft"))
-		return NAND_ECC_HAMMING;
-	else if (!strcasecmp(pm, "soft_bch"))
-		return NAND_ECC_BCH;
-
-	return -ENODEV;
+	return NAND_ECC_UNKNOWN;
 }
 
 static int of_get_nand_ecc_step_size(struct device_node *np)
@@ -5068,7 +5070,8 @@ static bool of_get_nand_on_flash_bbt(struct device_node *np)
 static int nand_dt_init(struct nand_chip *chip)
 {
 	struct device_node *dn = nand_get_flash_node(chip);
-	int ecc_mode, ecc_algo, ecc_strength, ecc_step;
+	enum nand_ecc_algo ecc_algo;
+	int ecc_mode, ecc_strength, ecc_step;
 
 	if (!dn)
 		return 0;
@@ -5090,7 +5093,7 @@ static int nand_dt_init(struct nand_chip *chip)
 	if (ecc_mode >= 0)
 		chip->ecc.mode = ecc_mode;
 
-	if (ecc_algo >= 0)
+	if (ecc_algo != NAND_ECC_UNKNOWN)
 		chip->ecc.algo = ecc_algo;
 
 	if (ecc_strength >= 0)
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
