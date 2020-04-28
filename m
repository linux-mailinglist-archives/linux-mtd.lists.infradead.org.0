Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B9EF1BBA2B
	for <lists+linux-mtd@lfdr.de>; Tue, 28 Apr 2020 11:44:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bAOD0g2RFU8GbmihhLfndJF3R5BZRMyHrExbX3yWoRI=; b=PxCQdfV2QufUxA
	619ZzNF3GkijccEurm72JEunhXufyDF/61LSh+s77+rcm1kE6IYhyGgfKGPDi/L4rsnjiEjjJXOd0
	7RI6I4Wr+FBZb8iGyOckuQbqLitTuWDXG+P5L0+XvXCfI59ivrsNPLocKWcp4q8Ly9ikX+/e3i6dq
	J5WR1wnQjSkoXqFRzpV1VMfnq+uWCjFug7eLR8yGxvsmErqT0l5t/L4nFRhnOSIhPbSCM9zMdGTcc
	MZ5QQ+5HNQNO68NcOnPAurHwIr+83GJw30KkG2K0WVsDCXKNOdAvZcUB7PtV6B0TMvEs0qltNJw2o
	emFgI1xKXqq6yTIkPgdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTMnI-0000vf-35; Tue, 28 Apr 2020 09:44:48 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTMll-00082j-5I
 for linux-mtd@lists.infradead.org; Tue, 28 Apr 2020 09:43:14 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id CFDB0C001A;
 Tue, 28 Apr 2020 09:43:10 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v3 6/9] mtd: rawnand: onfi: Avoid doing a copy of the
 parameter page
Date: Tue, 28 Apr 2020 11:42:59 +0200
Message-Id: <20200428094302.14624-7-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200428094302.14624-1-miquel.raynal@bootlin.com>
References: <20200428094302.14624-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_024313_490054_E774F0F7 
X-CRM114-Status: GOOD (  13.97  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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
Cc: Boris Brezillon <boris.brezillon@collabora.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

There is no need for copying the parameter page, playing with
pointers does the trick.

There is not functional change.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/mtd/nand/raw/nand_onfi.c | 30 +++++++++++++++---------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_onfi.c b/drivers/mtd/nand/raw/nand_onfi.c
index 7286c014620b..0f3fb9fe4d1d 100644
--- a/drivers/mtd/nand/raw/nand_onfi.c
+++ b/drivers/mtd/nand/raw/nand_onfi.c
@@ -143,7 +143,7 @@ int nand_onfi_detect(struct nand_chip *chip)
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct nand_memory_organization *memorg;
-	struct nand_onfi_params *p;
+	struct nand_onfi_params *p = NULL, *pbuf;
 	struct onfi_params *onfi;
 	int onfi_version = 0;
 	char id[4];
@@ -158,8 +158,8 @@ int nand_onfi_detect(struct nand_chip *chip)
 		return 0;
 
 	/* ONFI chip: allocate a buffer to hold its parameter page */
-	p = kzalloc((sizeof(*p) * ONFI_PARAM_PAGES), GFP_KERNEL);
-	if (!p)
+	pbuf = kzalloc((sizeof(*pbuf) * ONFI_PARAM_PAGES), GFP_KERNEL);
+	if (!pbuf)
 		return -ENOMEM;
 
 	ret = nand_read_param_page_op(chip, 0, NULL, 0);
@@ -169,16 +169,15 @@ int nand_onfi_detect(struct nand_chip *chip)
 	}
 
 	for (i = 0; i < ONFI_PARAM_PAGES; i++) {
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
@@ -188,17 +187,18 @@ int nand_onfi_detect(struct nand_chip *chip)
 		unsigned int j;
 
 		for (j = 0; j < ONFI_PARAM_PAGES; j++)
-			srcbufs[j] = p + j;
+			srcbufs[j] = pbuf + j;
 
 		pr_warn("Could not find a valid ONFI parameter page, trying bit-wise majority to recover it\n");
-		nand_bit_wise_majority(srcbufs, ONFI_PARAM_PAGES, p,
-				       sizeof(*p));
+		nand_bit_wise_majority(srcbufs, ONFI_PARAM_PAGES, pbuf,
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
@@ -306,14 +306,14 @@ int nand_onfi_detect(struct nand_chip *chip)
 	chip->parameters.onfi = onfi;
 
 	/* Identification done, free the full ONFI parameter page and exit */
-	kfree(p);
+	kfree(pbuf);
 
 	return 1;
 
 free_model:
 	kfree(chip->parameters.model);
 free_onfi_param_page:
-	kfree(p);
+	kfree(pbuf);
 
 	return ret;
 }
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
