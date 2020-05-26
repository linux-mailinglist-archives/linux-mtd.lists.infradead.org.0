Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E061BBA23
	for <lists+linux-mtd@lfdr.de>; Tue, 28 Apr 2020 11:44:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u0H69loXd7eN+/zi6aOtQuBApSHlbUyHpDoCwULEiuo=; b=kS54mnqRUscAuD
	FnSQadtOF95LcWcvYofioH7sL65c+E2hXVrDMvvYE/175uOjfDujZuZsizvUMCts0rSppDIQpqi/I
	UwluQ2pvqwcD1ydKZ5kJJUmL9z/Lnh/NBfW9p5sl+RYe4xHgAvV6mdE0hF3l+ArmDvqzCMkfgYQH3
	XjvzYTEEleGE4e4Fo2yuXMBktkBt3oWcZg8NbcPyRB5zl71kNWvU7LQLe0qOHVAGtI/dtLannR7W8
	MuezxlxjntbcN1AbDDEkCYr0mVfQgG39joEDpnbmUwcgMy3SYe0Gdd2ky86NrxeKdDO18ERJYpMrA
	iCRD99tyrMKamXJMHMCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTMms-0000TU-Fq; Tue, 28 Apr 2020 09:44:22 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTMlj-00080t-5h
 for linux-mtd@lists.infradead.org; Tue, 28 Apr 2020 09:43:12 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id DD856C0013;
 Tue, 28 Apr 2020 09:43:08 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v3 4/9] mtd: rawnand: onfi: Use intermediate variables to
 improve readability
Date: Tue, 28 Apr 2020 11:42:57 +0200
Message-Id: <20200428094302.14624-5-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200428094302.14624-1-miquel.raynal@bootlin.com>
References: <20200428094302.14624-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_024311_403111_E2A60D7B 
X-CRM114-Status: GOOD (  10.04  )
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

Before reworking a little bit the ONFI detection code, let's
clean the coding style of the if statements to improve readability.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/mtd/nand/raw/nand_onfi.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_onfi.c b/drivers/mtd/nand/raw/nand_onfi.c
index 8fe8d7bdd203..7d9a3130443a 100644
--- a/drivers/mtd/nand/raw/nand_onfi.c
+++ b/drivers/mtd/nand/raw/nand_onfi.c
@@ -146,6 +146,7 @@ int nand_onfi_detect(struct nand_chip *chip)
 	int onfi_version = 0;
 	char id[4];
 	int i, ret, val;
+	u16 crc;
 
 	memorg = nanddev_get_memorg(&chip->base);
 
@@ -172,8 +173,8 @@ int nand_onfi_detect(struct nand_chip *chip)
 			goto free_onfi_param_page;
 		}
 
-		if (onfi_crc16(ONFI_CRC_BASE, (u8 *)&p[i], 254) ==
-		    le16_to_cpu(p[i].crc)) {
+		crc = onfi_crc16(ONFI_CRC_BASE, (u8 *)&p[i], 254);
+		if (crc == le16_to_cpu(p[i].crc)) {
 			if (i)
 				memcpy(p, &p[i], sizeof(*p));
 			break;
@@ -187,8 +188,8 @@ int nand_onfi_detect(struct nand_chip *chip)
 		nand_bit_wise_majority(srcbufs, ARRAY_SIZE(srcbufs), p,
 				       sizeof(*p));
 
-		if (onfi_crc16(ONFI_CRC_BASE, (u8 *)p, 254) !=
-				le16_to_cpu(p->crc)) {
+		crc = onfi_crc16(ONFI_CRC_BASE, (u8 *)p, 254);
+		if (crc != le16_to_cpu(p->crc)) {
 			pr_err("ONFI parameter recovery failed, aborting\n");
 			goto free_onfi_param_page;
 		}
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
