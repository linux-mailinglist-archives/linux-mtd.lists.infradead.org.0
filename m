Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E85F1B7D22
	for <lists+linux-mtd@lfdr.de>; Fri, 24 Apr 2020 19:40:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eX2QZ91yoEG4uCfzEg+RCB+4MRtXbuvcZldr+t36xmY=; b=JGiQ+aWZdsm/bW
	VqPhKV06rY/5nRW7f2tBiQ2LkWxZl3uJEXA1RK/GXRFpa8z2WH24hLwnC4HNBj/C4uek++e+HyZyo
	COAXswEyViai7Evkn0TenGD0GyM8oNGugQb/+Q9ZMlXS5QhZPACowjP2dr0LDiENmfuKUvB8G0R32
	x0nzRZ6SQ6sfSwTzgu6KtyDujbLPKccl3ul1ktgL/PMZ10E8YgtQiMI9fcVdDCRnro5foAR7fV0bp
	FVKJeG2dmyhmawg2eWaf5dRFVdmn4AfWEzLlqvQAr259xHXBnLBnVpWv0CPm+dv+GOg6c+HenNteT
	OLoDaLnSIXRXH0NvOqCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS2Je-0003Z7-06; Fri, 24 Apr 2020 17:40:42 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS2Fr-0006Ah-Ta
 for linux-mtd@lists.infradead.org; Fri, 24 Apr 2020 17:36:51 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id B7F612000A;
 Fri, 24 Apr 2020 17:36:44 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH 10/10] mtd: rawnand: Fallback on easier operations when needed
Date: Fri, 24 Apr 2020 19:36:31 +0200
Message-Id: <20200424173631.14311-11-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200424173631.14311-1-miquel.raynal@bootlin.com>
References: <20200424173631.14311-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_103649_043870_03E8ADF5 
X-CRM114-Status: GOOD (  10.91  )
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

nand_read/write_page_raw() helpers are extensively used when working
with software ECC engines, hence they must support almost any kind of
controller.

Now that we have a way to distinguish between a controller that
supports split operations and one that do not, let's support both.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/nand_base.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 6e4eabb9dc11..145b3059e5ff 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -2614,6 +2614,12 @@ int nand_read_page_raw(struct nand_chip *chip, uint8_t *buf, int oob_required,
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	int ret;
 
+	if (nand_pack_ops(chip)) {
+		int len = mtd->writesize + (oob_required ? mtd->oobsize : 0);
+
+		return nand_read_page_op(chip, page, 0, buf, len);
+	}
+
 	ret = nand_read_page_op(chip, page, 0, buf, mtd->writesize);
 	if (ret)
 		return ret;
@@ -3189,7 +3195,7 @@ static int nand_do_read_ops(struct nand_chip *chip, loff_t from,
 		bytes = min(mtd->writesize - col, readlen);
 		aligned = (bytes == mtd->writesize);
 
-		if (!aligned)
+		if (!aligned || nand_pack_ops(chip))
 			use_bounce_buf = 1;
 		else if (chip->options & NAND_USE_DMA_BUFFER)
 			use_bounce_buf = !virt_addr_valid(buf) ||
@@ -3621,6 +3627,12 @@ int nand_write_page_raw(struct nand_chip *chip, const uint8_t *buf,
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	int ret;
 
+	if (nand_pack_ops(chip)) {
+		int len = mtd->writesize + (oob_required ? mtd->oobsize : 0);
+
+		return nand_prog_page_op(chip, page, 0, buf, len);
+	}
+
 	ret = nand_prog_page_begin_op(chip, page, 0, buf, mtd->writesize);
 	if (ret)
 		return ret;
@@ -4018,7 +4030,7 @@ static int nand_do_write_ops(struct nand_chip *chip, loff_t to,
 		int use_bounce_buf;
 		int part_pagewr = (column || writelen < mtd->writesize);
 
-		if (part_pagewr)
+		if (part_pagewr || nand_pack_ops(chip))
 			use_bounce_buf = 1;
 		else if (chip->options & NAND_USE_DMA_BUFFER)
 			use_bounce_buf = !virt_addr_valid(buf) ||
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
