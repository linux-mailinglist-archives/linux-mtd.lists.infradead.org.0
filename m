Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D00E51BBA2A
	for <lists+linux-mtd@lfdr.de>; Tue, 28 Apr 2020 11:44:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q79QMWX6kIeNbSvZIryU/TwYqV6y/iMOuKR+MXz6zG4=; b=Oq48uO3jzHAU+W
	EUiSwqV6phlLCGjGBIifc+yCKdwLk8ZyZr8Cc3ArczsNiIIZsaQjfgf8qzQGuik6jI0lrYYj3CRaZ
	Vfq+GMGynXXhQtujOVNdhDBUQ06q0fQ+4t7oqadi2i0NTVuBqYzYA3DanhL2uYyvz8eL/4FoDNZ5S
	p6tA5aWshJgdGBW5KHTHqP25k2v2IQsYcxICPwxx54OExuX+txqI1VkGmrwpiMy+tbfwp03n0IL22
	tjK1SdZBtoFepfWsRKFCLe69P61mMpR4bV9VTmH3D8ycHIns4GybpM0fSOYNbi4voZrpI1DgFi1pV
	IuzLH6XNOZa8ky05ST6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTMn5-0000j1-BN; Tue, 28 Apr 2020 09:44:35 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTMlk-00081g-5e
 for linux-mtd@lists.infradead.org; Tue, 28 Apr 2020 09:43:13 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id CBE03C0007;
 Tue, 28 Apr 2020 09:43:09 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v3 5/9] mtd: rawnand: onfi: Define the number of parameter
 pages
Date: Tue, 28 Apr 2020 11:42:58 +0200
Message-Id: <20200428094302.14624-6-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200428094302.14624-1-miquel.raynal@bootlin.com>
References: <20200428094302.14624-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_024312_378099_9EA384E0 
X-CRM114-Status: GOOD (  12.51  )
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

Use a macro to define the number of parameter page instead of
hardcoding it everywhere.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/mtd/nand/raw/nand_onfi.c | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_onfi.c b/drivers/mtd/nand/raw/nand_onfi.c
index 7d9a3130443a..7286c014620b 100644
--- a/drivers/mtd/nand/raw/nand_onfi.c
+++ b/drivers/mtd/nand/raw/nand_onfi.c
@@ -16,6 +16,8 @@
 
 #include "internals.h"
 
+#define ONFI_PARAM_PAGES 3
+
 u16 onfi_crc16(u16 crc, u8 const *p, size_t len)
 {
 	int i;
@@ -156,7 +158,7 @@ int nand_onfi_detect(struct nand_chip *chip)
 		return 0;
 
 	/* ONFI chip: allocate a buffer to hold its parameter page */
-	p = kzalloc((sizeof(*p) * 3), GFP_KERNEL);
+	p = kzalloc((sizeof(*p) * ONFI_PARAM_PAGES), GFP_KERNEL);
 	if (!p)
 		return -ENOMEM;
 
@@ -166,7 +168,7 @@ int nand_onfi_detect(struct nand_chip *chip)
 		goto free_onfi_param_page;
 	}
 
-	for (i = 0; i < 3; i++) {
+	for (i = 0; i < ONFI_PARAM_PAGES; i++) {
 		ret = nand_read_data_op(chip, &p[i], sizeof(*p), true);
 		if (ret) {
 			ret = 0;
@@ -181,11 +183,15 @@ int nand_onfi_detect(struct nand_chip *chip)
 		}
 	}
 
-	if (i == 3) {
-		const void *srcbufs[3] = {p, p + 1, p + 2};
+	if (i == ONFI_PARAM_PAGES) {
+		const void *srcbufs[ONFI_PARAM_PAGES];
+		unsigned int j;
+
+		for (j = 0; j < ONFI_PARAM_PAGES; j++)
+			srcbufs[j] = p + j;
 
 		pr_warn("Could not find a valid ONFI parameter page, trying bit-wise majority to recover it\n");
-		nand_bit_wise_majority(srcbufs, ARRAY_SIZE(srcbufs), p,
+		nand_bit_wise_majority(srcbufs, ONFI_PARAM_PAGES, p,
 				       sizeof(*p));
 
 		crc = onfi_crc16(ONFI_CRC_BASE, (u8 *)p, 254);
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
