Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E2B91B2D11
	for <lists+linux-mtd@lfdr.de>; Tue, 21 Apr 2020 18:48:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zQbDN/GG1HCsrzkaJWKokfz9HPXVfP0ZbLEnW38n3+s=; b=dG17GcFK+lpabX
	dlT5X2l7rbtliETuYbjh7skpKoW3JRE6Q/XXh6JOBV1lYiEth5QHtvy/qPE3jbDlc1yVLBiscs7oL
	u9K+msYevZFyFghFzMAV5h+ehc1GYCgFYCo4ho/m0YPRIS2SujoyJRaop3cXSgxYRaIXY6hwNKIt0
	bFmmxUVcQpkAYoCEDD8/0HLUoqLp5F1uv+cDzsj5NTMDdaVnQGqLei8DJt1aS5in2rm4Nu0DHOT2+
	KNNlNOU/D8oryGF0yj7FWs8UAvIg7MyT12QheXZA16SwdVuEl+6voU0cAzanxaWNM0yoMzWrwcY4w
	7mSJRuE178TjPXMGDtJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQw4B-0005CV-Kd; Tue, 21 Apr 2020 16:48:11 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQw2p-00040X-Cv
 for linux-mtd@lists.infradead.org; Tue, 21 Apr 2020 16:46:48 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 2352120003;
 Tue, 21 Apr 2020 16:46:45 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH 5/8] mtd: rawnand: onfi: Avoid doing a copy of the parameter
 page
Date: Tue, 21 Apr 2020 18:46:34 +0200
Message-Id: <20200421164637.8086-6-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200421164637.8086-1-miquel.raynal@bootlin.com>
References: <20200421164637.8086-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_094647_578734_B111CA4E 
X-CRM114-Status: GOOD (  14.23  )
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
Cc: Michal Simek <monstr@monstr.eu>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

There is not need for copying the parameter page, playing with
pointers works the same.

There is not functional change.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/nand_onfi.c | 29 ++++++++++++++---------------
 1 file changed, 14 insertions(+), 15 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_onfi.c b/drivers/mtd/nand/raw/nand_onfi.c
index 7d9a3130443a..d6124180b47b 100644
--- a/drivers/mtd/nand/raw/nand_onfi.c
+++ b/drivers/mtd/nand/raw/nand_onfi.c
@@ -141,7 +141,7 @@ int nand_onfi_detect(struct nand_chip *chip)
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct nand_memory_organization *memorg;
-	struct nand_onfi_params *p;
+	struct nand_onfi_params *p = NULL, *pbuf;
 	struct onfi_params *onfi;
 	int onfi_version = 0;
 	char id[4];
@@ -156,8 +156,8 @@ int nand_onfi_detect(struct nand_chip *chip)
 		return 0;
 
 	/* ONFI chip: allocate a buffer to hold its parameter page */
-	p = kzalloc((sizeof(*p) * 3), GFP_KERNEL);
-	if (!p)
+	pbuf = kzalloc((sizeof(*pbuf) * 3), GFP_KERNEL);
+	if (!pbuf)
 		return -ENOMEM;
 
 	ret = nand_read_param_page_op(chip, 0, NULL, 0);
@@ -167,32 +167,31 @@ int nand_onfi_detect(struct nand_chip *chip)
 	}
 
 	for (i = 0; i < 3; i++) {
-		ret = nand_read_data_op(chip, &p[i], sizeof(*p), true);
+		ret = nand_read_data_op(chip, &pbuf[i], sizeof(*pbuf), true);
 		if (ret) {
 			ret = 0;
 			goto free_onfi_param_page;
 		}
 
-		crc = onfi_crc16(ONFI_CRC_BASE, (u8 *)&p[i], 254);
-		if (crc == le16_to_cpu(p[i].crc)) {
-			if (i)
-				memcpy(p, &p[i], sizeof(*p));
+		crc = onfi_crc16(ONFI_CRC_BASE, (u8 *)&pbuf[i], 254);
+		if (crc == le16_to_cpu(pbuf[i].crc)) {
+			p = &pbuf[i];
 			break;
 		}
 	}
 
 	if (i == 3) {
-		const void *srcbufs[3] = {p, p + 1, p + 2};
-
+		const void *srcbufs[3] = {pbuf, pbuf + 1, pbuf + 2};
 		pr_warn("Could not find a valid ONFI parameter page, trying bit-wise majority to recover it\n");
-		nand_bit_wise_majority(srcbufs, ARRAY_SIZE(srcbufs), p,
-				       sizeof(*p));
+		nand_bit_wise_majority(srcbufs, ARRAY_SIZE(srcbufs), pbuf,
+				       sizeof(*pbuf));
 
-		crc = onfi_crc16(ONFI_CRC_BASE, (u8 *)p, 254);
-		if (crc != le16_to_cpu(p->crc)) {
+		crc = onfi_crc16(ONFI_CRC_BASE, (u8 *)pbuf, 254);
+		if (crc != le16_to_cpu(pbuf->crc)) {
 			pr_err("ONFI parameter recovery failed, aborting\n");
 			goto free_onfi_param_page;
 		}
+		p = pbuf;
 	}
 
 	if (chip->manufacturer.desc && chip->manufacturer.desc->ops &&
@@ -300,7 +299,7 @@ int nand_onfi_detect(struct nand_chip *chip)
 	chip->parameters.onfi = onfi;
 
 	/* Identification done, free the full ONFI parameter page and exit */
-	kfree(p);
+	kfree(pbuf);
 
 	return 1;
 
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
