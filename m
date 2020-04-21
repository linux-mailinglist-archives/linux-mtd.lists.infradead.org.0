Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 250201B2D18
	for <lists+linux-mtd@lfdr.de>; Tue, 21 Apr 2020 18:49:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/oGV5q+ce9OeW0ME9PIQq1LoFgQ+utozZm5suOSnOgo=; b=DrzB3ECmokfhnV
	lFINemyP20LSVU453uAkjxFK85LdnBUP4y3CtXWd/epegbcOfAUCFrZdEvSg5CtRywHcnFn6GHe8o
	za8Nm4+gMBlRdkYTo6ehJ0NeifS0y74RqgjtxI1UNG++tZe3IRxPfJt9FVWwxLThD+JzJQ+QR86dB
	EKgGsHjviPF6jMcO3cyinFCUkMLINOqeXfvSGiz/gZT0T0Q3geVS07Z6ywpu4+TC/JHYJ8y+4XI3M
	4xuwKsio6yCkYmxI8lpjlyio8RNXVDmX6fALI/bR/9fM4zf2W+aSUuxoyKScHegt1mik+c9WruvA4
	Qi7jhIaUCoInlSZUUTxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQw4z-0005zh-Ch; Tue, 21 Apr 2020 16:49:01 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQw2s-00043w-GM
 for linux-mtd@lists.infradead.org; Tue, 21 Apr 2020 16:46:52 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 28AE62000E;
 Tue, 21 Apr 2020 16:46:48 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH 8/8] mtd: rawnand: jedec: Simplify the NAND operations during
 detection
Date: Tue, 21 Apr 2020 18:46:37 +0200
Message-Id: <20200421164637.8086-9-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200421164637.8086-1-miquel.raynal@bootlin.com>
References: <20200421164637.8086-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_094650_695704_BF8597B2 
X-CRM114-Status: GOOD (  12.59  )
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

There is no need for separate parameter page reads, the delay penalty
is negligible so let's do read the three copies in one go.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/nand_jedec.c | 20 ++++++++------------
 1 file changed, 8 insertions(+), 12 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_jedec.c b/drivers/mtd/nand/raw/nand_jedec.c
index 4cc1ea512887..befe8c29b505 100644
--- a/drivers/mtd/nand/raw/nand_jedec.c
+++ b/drivers/mtd/nand/raw/nand_jedec.c
@@ -23,7 +23,7 @@ int nand_jedec_detect(struct nand_chip *chip)
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct nand_memory_organization *memorg;
-	struct nand_jedec_params *p;
+	struct nand_jedec_params *p = NULL, *pbuf;
 	struct jedec_ecc_info *ecc;
 	int jedec_version = 0;
 	char id[5];
@@ -38,25 +38,19 @@ int nand_jedec_detect(struct nand_chip *chip)
 		return 0;
 
 	/* JEDEC chip: allocate a buffer to hold its parameter page */
-	p = kzalloc(sizeof(*p), GFP_KERNEL);
-	if (!p)
+	pbuf = kzalloc(sizeof(*pbuf) * 3, GFP_KERNEL);
+	if (!pbuf)
 		return -ENOMEM;
 
-	ret = nand_read_param_page_op(chip, 0x40, NULL, 0);
+	ret = nand_read_param_page_op(chip, 0x40, pbuf, 3 * sizeof(*pbuf));
 	if (ret) {
 		ret = 0;
 		goto free_jedec_param_page;
 	}
 
 	for (i = 0; i < 3; i++) {
-		ret = nand_read_data_op(chip, p, sizeof(*p), true);
-		if (ret) {
-			ret = 0;
-			goto free_jedec_param_page;
-		}
-
-		crc = onfi_crc16(ONFI_CRC_BASE, (u8 *)p, 510);
-		if (crc == le16_to_cpu(p->crc))
+		crc = onfi_crc16(ONFI_CRC_BASE, (u8 *)&pbuf[i], 510);
+		if (crc == le16_to_cpu(pbuf[i].crc))
 			break;
 	}
 
@@ -65,6 +59,8 @@ int nand_jedec_detect(struct nand_chip *chip)
 		goto free_jedec_param_page;
 	}
 
+	p = pbuf;
+
 	/* Check version */
 	val = le16_to_cpu(p->revision);
 	if (val & (1 << 2))
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
