Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44E671B9A27
	for <lists+linux-mtd@lfdr.de>; Mon, 27 Apr 2020 10:28:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sCY+rGi/V3Zl32rxbGubuZTfjrSHQHdmb6EkM6+2Dc8=; b=negIzHliug/KyI
	iOWe6DDcwHtzFEYz/omu5jlpTQbdIIWgPBgxMgouH7VxwRzqzTOWdw/CUXzdjZPCwB5VcSId6yTuL
	vfTvxdsjxKAIyODspDqUHEwQgNrFDdYu6LaG/tI5didU3NW5L+ZYyYxPGwdtqk7FdigslfoEwE7o+
	/4uizWtO4S8L2spoPuMcUNCYVS7s76cs9dt90b7X3ZrPQXZp3XERqZkJFNJuh1cMa4yTBUR/GRWw1
	1mcEjxT2/GQir0k+p4LdUUVHbVPRjYHc85M9SA1eEGJUV+JVTsxxUDt0SuKgLPXZuLmc0FpjY96KV
	pjEFxyT7Os6JZjgUqX/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSz7b-0006Go-07; Mon, 27 Apr 2020 08:28:11 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSz0N-0006E4-US
 for linux-mtd@lists.infradead.org; Mon, 27 Apr 2020 08:20:48 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id ED0192A08E5;
 Mon, 27 Apr 2020 09:20:40 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: David Woodhouse <dwmw2@infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org
Subject: [PATCH 16/17] mtd: rawnand: cafe: Handle non-32bit aligned
 reads/writes
Date: Mon, 27 Apr 2020 10:20:26 +0200
Message-Id: <20200427082028.394719-17-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.25.3
In-Reply-To: <20200427082028.394719-1-boris.brezillon@collabora.com>
References: <20200427082028.394719-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_012044_238553_8E3CDF89 
X-CRM114-Status: GOOD (  13.41  )
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
Cc: Richard Weinberger <richard@nod.at>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The spec says the write/read buffers should be filled/read 32bits at a
time. While most of the time the reads/writes are aligned on 4 bytes,
we should make the implementation more robust to non-usual NAND
operations.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/mtd/nand/raw/cafe_nand.c | 27 +++++++++++++++++++++------
 1 file changed, 21 insertions(+), 6 deletions(-)

diff --git a/drivers/mtd/nand/raw/cafe_nand.c b/drivers/mtd/nand/raw/cafe_nand.c
index 26495085f285..955dc78c57be 100644
--- a/drivers/mtd/nand/raw/cafe_nand.c
+++ b/drivers/mtd/nand/raw/cafe_nand.c
@@ -184,10 +184,18 @@ static void cafe_write_buf(struct nand_chip *chip, const void *buf,
 {
 	struct cafe_priv *cafe = nand_get_controller_data(chip);
 
-	if (cafe->usedma)
+	if (cafe->usedma) {
 		memcpy(cafe->dmabuf, buf, len);
-	else
-		memcpy_toio(cafe->mmio + CAFE_NAND_WRITE_DATA, buf, len);
+	} else {
+		memcpy_toio(cafe->mmio + CAFE_NAND_WRITE_DATA, buf,
+			    len & ~0x3);
+		if (len & 0x3) {
+			u32 tmp = 0;
+
+			memcpy(&tmp, buf + (len & ~0x3), len & 0x3);
+			cafe_writel(cafe, tmp, NAND_WRITE_DATA);
+		}
+	}
 
 	dev_dbg(&cafe->pdev->dev, "Copy 0x%x bytes to write buffer.\n",	len);
 }
@@ -196,10 +204,17 @@ static void cafe_read_buf(struct nand_chip *chip, void *buf, unsigned int len)
 {
 	struct cafe_priv *cafe = nand_get_controller_data(chip);
 
-	if (cafe->usedma)
+	if (cafe->usedma) {
 		memcpy(buf, cafe->dmabuf, len);
-	else
-		memcpy_fromio(buf, cafe->mmio + CAFE_NAND_READ_DATA, len);
+	} else {
+		memcpy_fromio(buf, cafe->mmio + CAFE_NAND_READ_DATA,
+			      len & ~0x3);
+		if (len & 0x3) {
+			u32 tmp = cafe_readl(cafe, NAND_READ_DATA);
+
+			memcpy(buf + (len & ~0x3), &tmp, len & 0x3);
+		}
+	}
 
 	dev_dbg(&cafe->pdev->dev, "Copy 0x%x bytes from read buffer.\n", len);
 }
-- 
2.25.3


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
