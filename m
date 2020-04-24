Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 998271B7BE1
	for <lists+linux-mtd@lfdr.de>; Fri, 24 Apr 2020 18:42:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u0H69loXd7eN+/zi6aOtQuBApSHlbUyHpDoCwULEiuo=; b=HkrBujDEetLbf2
	1S4s4J485Um/GzmqrwvTxag2iadNdg/cY/l4P/5e7UtQqs4xSuuT3eo5Vgfnm5Wf5BA3rMDgvYRS/
	kZHRcjbAPQp8y16C2fnNETaePY0xBf99yQ798CMbnStHnA2bhITfm1cerAdJ3DIGePEF3lG2p+4Dq
	fRWvFcvutU4h9TPom4n9oPXAdir3LUkQSiPTRcPuIClZxXI4riVs2rSNqBIlc68dgp0tBz00AQBHH
	I1XppM8kGDTjvsJyl4pDn62561HNQ75lKqpPmfKCTgKASre8pYGwTx4uZPJqjLCtdietlwDGmEoeM
	k2jkL91odrsWXhLKSI5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS1PB-00052L-UA; Fri, 24 Apr 2020 16:42:21 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS1Ni-0003vK-V1
 for linux-mtd@lists.infradead.org; Fri, 24 Apr 2020 16:40:54 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 8855C2000B;
 Fri, 24 Apr 2020 16:40:48 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v2 4/9] mtd: rawnand: onfi: Use intermediate variables to
 improve readability
Date: Fri, 24 Apr 2020 18:40:37 +0200
Message-Id: <20200424164042.26572-5-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200424164042.26572-1-miquel.raynal@bootlin.com>
References: <20200424164042.26572-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_094051_133025_4EFF6E5B 
X-CRM114-Status: GOOD (  10.00  )
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
