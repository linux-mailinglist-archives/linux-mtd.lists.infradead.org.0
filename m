Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4635E1B9A2B
	for <lists+linux-mtd@lfdr.de>; Mon, 27 Apr 2020 10:28:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lY6QreAt6C73DV4P1TXN6Z1XnXlOFAtPzMWr0w0ZRO8=; b=bth0kF+NSykxfT
	nGKV0fZ7a6ll17LdrkIyH7RdpeMdcg0diULghv0Brzh/CPxVsutkFSMZioQNNkCu7mzscxUskpnke
	Ql4XIflD6M2N933RVlmm7MYBQGLfU9c8dzfs3eS2jx/9VCGPlUJRT5BtIB6295KbllNGHjW8qLnOO
	9785FTsIFsLkC7AhlvVktoAOtJCLFKU0TB/SI3BQEECvtlaX4Ge5l2QaLkbvTJdp+rs/+FHCdaTRg
	RhZ3w/B9wqj62gSwSV4eqrykYFmefXp+TzUUUMOP23DABxDg9a1tkiZ/8xtwFOr18ri0ZkV7Hyi/r
	Avaj5csaI+KydcNAY8dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSz7n-0006Up-NF; Mon, 27 Apr 2020 08:28:23 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSz0N-0006E3-UU
 for linux-mtd@lists.infradead.org; Mon, 27 Apr 2020 08:20:47 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id A8EA32A08D5;
 Mon, 27 Apr 2020 09:20:40 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: David Woodhouse <dwmw2@infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org
Subject: [PATCH 15/17] mtd: rawnand: cafe: Adjust the cafe_{read,
 write}_buf() prototypes
Date: Mon, 27 Apr 2020 10:20:25 +0200
Message-Id: <20200427082028.394719-16-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.25.3
In-Reply-To: <20200427082028.394719-1-boris.brezillon@collabora.com>
References: <20200427082028.394719-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_012044_230118_5C4E9738 
X-CRM114-Status: GOOD (  12.16  )
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

Replace the uint8_t pointer by a void pointer and make the length
unsigned so it matches what's passed through the nand instructions.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/mtd/nand/raw/cafe_nand.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/raw/cafe_nand.c b/drivers/mtd/nand/raw/cafe_nand.c
index 5b38d496d923..26495085f285 100644
--- a/drivers/mtd/nand/raw/cafe_nand.c
+++ b/drivers/mtd/nand/raw/cafe_nand.c
@@ -179,7 +179,8 @@ static const char *part_probes[] = { "cmdlinepart", "RedBoot", NULL };
 #define cafe_readl(cafe, addr)			readl((cafe)->mmio + CAFE_##addr)
 #define cafe_writel(cafe, datum, addr)		writel(datum, (cafe)->mmio + CAFE_##addr)
 
-static void cafe_write_buf(struct nand_chip *chip, const uint8_t *buf, int len)
+static void cafe_write_buf(struct nand_chip *chip, const void *buf,
+			   unsigned int len)
 {
 	struct cafe_priv *cafe = nand_get_controller_data(chip);
 
@@ -191,7 +192,7 @@ static void cafe_write_buf(struct nand_chip *chip, const uint8_t *buf, int len)
 	dev_dbg(&cafe->pdev->dev, "Copy 0x%x bytes to write buffer.\n",	len);
 }
 
-static void cafe_read_buf(struct nand_chip *chip, uint8_t *buf, int len)
+static void cafe_read_buf(struct nand_chip *chip, void *buf, unsigned int len)
 {
 	struct cafe_priv *cafe = nand_get_controller_data(chip);
 
-- 
2.25.3


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
