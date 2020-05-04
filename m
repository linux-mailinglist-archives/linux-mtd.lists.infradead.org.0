Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 542FC1C345E
	for <lists+linux-mtd@lfdr.de>; Mon,  4 May 2020 10:27:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VXjgwWJiSRvkkrsSb6YRb+F1vrcvITVKOm4kcMXo/ns=; b=flxVm64gVSXf5B
	gGXw5dljTqydUNICJciMGyH0bhwrZg8XIM0pO6BbMOlo0R/xaYStkSS2nVd44+zj+A/ACl4l04InQ
	VHVqSRA6Q1wtcteuzNbFEA49WkSp/hn9cKHwI2DtDSo65ZKf6LUkV5HO8sR3UIvVp9OXU5LTrYW9V
	0JcnoWUxVxrt6nDbAuJxXyhdHWUVBZaJxzzGbGkC2e1rL3wPFXDn/utU8/j7BBfHcVnM0TKDa2CiR
	kPBroZwOzmb692ODckCglNtLoiOkaZTKDq0sFWu+Fb6UBZ0rEKsPsWbmVCISHkoAjoEPwSplDYCwP
	RJP3CkyHr8wgHtZAENMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVWRf-0004pA-KJ; Mon, 04 May 2020 08:27:23 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVWPD-0000KA-BB
 for linux-mtd@lists.infradead.org; Mon, 04 May 2020 08:24:56 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id D54B3C0006;
 Mon,  4 May 2020 08:24:48 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v3 10/13] mtd: rawnand: jedec: Adapt the parameter page read
 to constraint controllers
Date: Mon,  4 May 2020 10:24:11 +0200
Message-Id: <20200504082414.7327-11-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200504082414.7327-1-miquel.raynal@bootlin.com>
References: <20200504082414.7327-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_012452_143851_7A79E7D5 
X-CRM114-Status: GOOD (  15.95  )
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
Cc: Michal Simek <monstr@monstr.eu>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

We already know that there are controllers not able to read the three
copies of the parameter page in one go. The workaround was to first
request the controller to assert command and address cycles on the
NAND bus to trigger a parameter page read, and then do a read
operation for each page.

But there are also controllers which are not able to split the
parameter page read between the command/address cycles and the actual
data operation.

Let's use a regular PARAMETER PAGE READ operation for the first
iteration and use eithe a CHANGE READ COLUMN or a simple DATA READ
operation for the following copies, depending on what the controller
supports. The default for non-exec-op compliant drivers remains
unchanged: use a SIMPLE READ.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/nand_jedec.c | 34 ++++++++++++++++++++-----------
 1 file changed, 22 insertions(+), 12 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_jedec.c b/drivers/mtd/nand/raw/nand_jedec.c
index 63069f1948a8..be270b36317e 100644
--- a/drivers/mtd/nand/raw/nand_jedec.c
+++ b/drivers/mtd/nand/raw/nand_jedec.c
@@ -25,8 +25,9 @@ int nand_jedec_detect(struct nand_chip *chip)
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct nand_memory_organization *memorg;
-	struct nand_jedec_params *p;
+	struct nand_jedec_params *p = NULL, *pbuf;
 	struct jedec_ecc_info *ecc;
+	bool use_datain = false;
 	int jedec_version = 0;
 	char id[5];
 	int i, val, ret;
@@ -40,25 +41,32 @@ int nand_jedec_detect(struct nand_chip *chip)
 		return 0;
 
 	/* JEDEC chip: allocate a buffer to hold its parameter page */
-	p = kzalloc(sizeof(*p), GFP_KERNEL);
-	if (!p)
+	pbuf = kzalloc(sizeof(*pbuf) * JEDEC_PARAM_PAGES, GFP_KERNEL);
+	if (!pbuf)
 		return -ENOMEM;
 
-	ret = nand_read_param_page_op(chip, 0x40, NULL, 0);
-	if (ret) {
-		ret = 0;
-		goto free_jedec_param_page;
-	}
+	if (!nand_has_exec_op(chip) ||
+	    (nand_read_data_op(chip, &pbuf[0], sizeof(*pbuf), true, true) == 0))
+		use_datain = true;
 
 	for (i = 0; i < JEDEC_PARAM_PAGES; i++) {
-		ret = nand_read_data_op(chip, p, sizeof(*p), true, false);
+		if (!i)
+			ret = nand_read_param_page_op(chip, 0x40, &pbuf[i],
+						      sizeof(*pbuf));
+		else if (use_datain)
+			ret = nand_read_data_op(chip, &pbuf[i], sizeof(*pbuf),
+						true, false);
+		else
+			ret = nand_change_read_column_op(chip, sizeof(*pbuf) * i,
+							 &pbuf[i], sizeof(*pbuf),
+							 true);
 		if (ret) {
 			ret = 0;
 			goto free_jedec_param_page;
 		}
 
-		crc = onfi_crc16(ONFI_CRC_BASE, (u8 *)p, 510);
-		if (crc == le16_to_cpu(p->crc))
+		crc = onfi_crc16(ONFI_CRC_BASE, (u8 *)&pbuf[i], 510);
+		if (crc == le16_to_cpu(pbuf[i].crc))
 			break;
 	}
 
@@ -67,6 +75,8 @@ int nand_jedec_detect(struct nand_chip *chip)
 		goto free_jedec_param_page;
 	}
 
+	p = &pbuf[i];
+
 	/* Check version */
 	val = le16_to_cpu(p->revision);
 	if (val & (1 << 2))
@@ -122,6 +132,6 @@ int nand_jedec_detect(struct nand_chip *chip)
 	ret = 1;
 
 free_jedec_param_page:
-	kfree(p);
+	kfree(pbuf);
 	return ret;
 }
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
