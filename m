Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79DFC1BDD65
	for <lists+linux-mtd@lfdr.de>; Wed, 29 Apr 2020 15:21:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rP1HrdHdQQ52yIRxErTQSHyv+3CQSVmResEnQLUPcv4=; b=os+nt4+0yO8Kxe
	WKz0017pJnE6+JS7vqkZfRgT6/IpESt0u2Ycjyor0Fum5GUI+bOsdnToMpe+dScJrqsVQteKN0cIl
	X5wGwcE3RGBugVKgfPYbdfHZtZhNwq4lMEtNKN5IYxiNMjX2rHJ3WH15+2ogeC+vpUGa3Fe2Zdi4k
	JDNm9xTsqvTlGDM6CwhO11NYctKbtqg+8GCCOFeb4oZI2+5BJSfXo8ERJE38yZvLnk4LiQoE2UT6Y
	xPteRmqJUVYJikRQGiL8UtJ2n3YaYG+FDK0q7/FOhtHMrkdbdazRP7zO2QIY7LT7uSbtMFm+TuCtr
	iJ4N8GeAcefOsu7mBLDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTmeq-0001UZ-UB; Wed, 29 Apr 2020 13:21:48 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTmdw-0000ma-Q0
 for linux-mtd@lists.infradead.org; Wed, 29 Apr 2020 13:20:54 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 720ED2A21C3;
 Wed, 29 Apr 2020 14:20:51 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org,
 Tudor Ambarus <tudor.ambarus@microchip.com>
Subject: [PATCH v2 3/6] mtd: rawnand: atmel: Use nand_{write,read}_data_op()
Date: Wed, 29 Apr 2020 15:20:43 +0200
Message-Id: <20200429132046.583658-4-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.25.3
In-Reply-To: <20200429132046.583658-1-boris.brezillon@collabora.com>
References: <20200429132046.583658-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_062052_968240_0F009825 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Boris Brezillon <boris.brezillon@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Use the nand_{write,read}_data_op() helpers instead of calling the
atmel_nand_{read,write}_buf() functions directly. This will ease the
transition to exec_op().

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
Changes in v2:
* New patch
---
 drivers/mtd/nand/raw/atmel/nand-controller.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/mtd/nand/raw/atmel/nand-controller.c b/drivers/mtd/nand/raw/atmel/nand-controller.c
index 8e5cfb5cf70b..8be911ef9a6c 100644
--- a/drivers/mtd/nand/raw/atmel/nand-controller.c
+++ b/drivers/mtd/nand/raw/atmel/nand-controller.c
@@ -833,7 +833,7 @@ static int atmel_nand_pmecc_write_pg(struct nand_chip *chip, const u8 *buf,
 	if (ret)
 		return ret;
 
-	atmel_nand_write_buf(chip, buf, mtd->writesize);
+	nand_write_data_op(chip, buf, mtd->writesize, false);
 
 	ret = atmel_nand_pmecc_generate_eccbytes(chip, raw);
 	if (ret) {
@@ -843,7 +843,7 @@ static int atmel_nand_pmecc_write_pg(struct nand_chip *chip, const u8 *buf,
 
 	atmel_nand_pmecc_disable(chip, raw);
 
-	atmel_nand_write_buf(chip, chip->oob_poi, mtd->oobsize);
+	nand_write_data_op(chip, chip->oob_poi, mtd->oobsize, false);
 
 	return nand_prog_page_end_op(chip);
 }
@@ -873,8 +873,8 @@ static int atmel_nand_pmecc_read_pg(struct nand_chip *chip, u8 *buf,
 	if (ret)
 		return ret;
 
-	atmel_nand_read_buf(chip, buf, mtd->writesize);
-	atmel_nand_read_buf(chip, chip->oob_poi, mtd->oobsize);
+	nand_read_data_op(chip, buf, mtd->writesize, false);
+	nand_read_data_op(chip, chip->oob_poi, mtd->oobsize, false);
 
 	ret = atmel_nand_pmecc_correct_data(chip, buf, raw);
 
@@ -934,7 +934,7 @@ static int atmel_hsmc_nand_pmecc_write_pg(struct nand_chip *chip,
 	if (ret)
 		return ret;
 
-	atmel_nand_write_buf(chip, chip->oob_poi, mtd->oobsize);
+	nand_write_data_op(chip, chip->oob_poi, mtd->oobsize, false);
 
 	nc->op.cmds[0] = NAND_CMD_PAGEPROG;
 	nc->op.ncmds = 1;
-- 
2.25.3


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
