Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A887F1C10A0
	for <lists+linux-mtd@lfdr.de>; Fri,  1 May 2020 12:09:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R0YIFTbPVREY3R/tcoPEeIyjPEyvifoNr8ZNLI2wp+8=; b=sJThkb22bJgepK
	oxUiXLeV/D8WqgAlQbMHSAYPCed2kym2ik/AfckddQQNnKq74Y1adFz+9ivhjq+YorVdVzBUdkhp8
	/dxJ6xPu0JSHRtzcu1bbX72wiUbXjeIIMhcQDabgAQ59/pbzgt4ZPTy0vGxLaSVvxJk/lsATG4QgB
	iV+wQKPCssEuf493THlj1nzJ6/PiFPvKYEHQvINpPRQ61hTnnSRrJFzcc5EN1PHYZk4VbAeRO59Fy
	t4qnDECgqkCsiKvEbtFl34KjwDsNCJoyyQUM0kzRZJLGHZHfqXVjLEPxa0vWVM5c0QwE6MgmdFGaX
	KYLGNTTPHdAoEMxM53iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUSbL-00018N-Oa; Fri, 01 May 2020 10:08:59 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUSa2-0008R0-5a
 for linux-mtd@lists.infradead.org; Fri, 01 May 2020 10:07:39 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id EC93D2A2DCA;
 Fri,  1 May 2020 11:07:34 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org,
 Sekhar Nori <nsekhar@ti.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: [PATCH 5/5] mtd: rawnand: davinci: Change the {read,
 write}_buf prototypes
Date: Fri,  1 May 2020 12:07:29 +0200
Message-Id: <20200501100729.1237040-6-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.25.3
In-Reply-To: <20200501100729.1237040-1-boris.brezillon@collabora.com>
References: <20200501100729.1237040-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_030738_366974_3362811A 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Richard Weinberger <richard@nod.at>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Change the {read,write}_buf() helper prototypes to pass a
davinci_nand_info object and match the types stored in nand_op_instr.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/mtd/nand/raw/davinci_nand.c | 16 ++++++----------
 1 file changed, 6 insertions(+), 10 deletions(-)

diff --git a/drivers/mtd/nand/raw/davinci_nand.c b/drivers/mtd/nand/raw/davinci_nand.c
index c629e1a6ed71..29a785d426d3 100644
--- a/drivers/mtd/nand/raw/davinci_nand.c
+++ b/drivers/mtd/nand/raw/davinci_nand.c
@@ -382,11 +382,9 @@ static int nand_davinci_correct_4bit(struct nand_chip *chip, u_char *data,
  * the two LSBs for NAND access ... so we can issue 32-bit reads/writes
  * and have that transparently morphed into multiple NAND operations.
  */
-static void nand_davinci_read_buf(struct nand_chip *chip, uint8_t *buf,
-				  int len)
+static void nand_davinci_read_buf(struct davinci_nand_info *info, void *buf,
+				  unsigned int len)
 {
-	struct davinci_nand_info *info = to_davinci_nand(nand_to_mtd(chip));
-
 	if ((0x03 & ((uintptr_t)buf)) == 0 && (0x03 & len) == 0)
 		ioread32_rep(info->current_cs, buf, len >> 2);
 	else if ((0x01 & ((uintptr_t)buf)) == 0 && (0x01 & len) == 0)
@@ -395,11 +393,9 @@ static void nand_davinci_read_buf(struct nand_chip *chip, uint8_t *buf,
 		ioread8_rep(info->current_cs, buf, len);
 }
 
-static void nand_davinci_write_buf(struct nand_chip *chip, const uint8_t *buf,
-				   int len)
+static void nand_davinci_write_buf(struct davinci_nand_info *info,
+				   const void *buf, unsigned int len)
 {
-	struct davinci_nand_info *info = to_davinci_nand(nand_to_mtd(chip));
-
 	if ((0x03 & ((uintptr_t)buf)) == 0 && (0x03 & len) == 0)
 		iowrite32_rep(info->current_cs, buf, len >> 2);
 	else if ((0x01 & ((uintptr_t)buf)) == 0 && (0x01 & len) == 0)
@@ -656,12 +652,12 @@ static int davinci_nand_exec_instr(struct davinci_nand_info *info,
 		break;
 
 	case NAND_OP_DATA_IN_INSTR:
-		nand_davinci_read_buf(&info->chip, instr->ctx.data.buf.in,
+		nand_davinci_read_buf(info, instr->ctx.data.buf.in,
 				      instr->ctx.data.len);
 		break;
 
 	case NAND_OP_DATA_OUT_INSTR:
-		nand_davinci_write_buf(&info->chip, instr->ctx.data.buf.out,
+		nand_davinci_write_buf(info, instr->ctx.data.buf.out,
 				       instr->ctx.data.len);
 		break;
 
-- 
2.25.3


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
