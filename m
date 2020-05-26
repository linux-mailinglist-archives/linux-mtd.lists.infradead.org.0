Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F0F41B2D16
	for <lists+linux-mtd@lfdr.de>; Tue, 21 Apr 2020 18:48:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6TJb6FfmIMUhsA+WJvDTnyW6a7o7pIqZ5Y3TRkixiTI=; b=fMzpm4bMedzdXC
	vJKiwLmy7wNWL0yE85okjuWfBwrObSvxujPuI2sHxbMfIWMwm1DepKlE96q16Lh52/ONcrvTwOL6D
	5U8D56YbhS4OdR4flXDbrbyUicxCodMFuqjjjyBxQ2iofYSsdm4Bcn3EYcTZx9y+qOHb5x+Ihb/ql
	VXHYdaQBV1DryCZGQU9kbtPBIkJI84toYDbg8He5i7JmmanRyzLluxfxaspGmeMGu9i2hChxlUbpx
	Qh4OcytLmkFYO5J8wZxoOXrkQoVon2dfUc6HD9HYlJd7BZ4EEruHZOn+Fs0IoKeGedV3KB/YumN18
	oSfFejKFtAKiYjaynJvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQw4R-0005Sk-5Q; Tue, 21 Apr 2020 16:48:27 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQw2q-00041Y-GQ
 for linux-mtd@lists.infradead.org; Tue, 21 Apr 2020 16:46:49 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 2DE6B20004;
 Tue, 21 Apr 2020 16:46:46 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH 6/8] mtd: rawnand: onfi: Simplify the NAND operations during
 detection
Date: Tue, 21 Apr 2020 18:46:35 +0200
Message-Id: <20200421164637.8086-7-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200421164637.8086-1-miquel.raynal@bootlin.com>
References: <20200421164637.8086-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_094648_697745_2B63A2C8 
X-CRM114-Status: GOOD (  10.79  )
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
 drivers/mtd/nand/raw/nand_onfi.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_onfi.c b/drivers/mtd/nand/raw/nand_onfi.c
index d6124180b47b..b76772666b82 100644
--- a/drivers/mtd/nand/raw/nand_onfi.c
+++ b/drivers/mtd/nand/raw/nand_onfi.c
@@ -160,19 +160,13 @@ int nand_onfi_detect(struct nand_chip *chip)
 	if (!pbuf)
 		return -ENOMEM;
 
-	ret = nand_read_param_page_op(chip, 0, NULL, 0);
+	ret = nand_read_param_page_op(chip, 0, pbuf, 3 * sizeof(*pbuf));
 	if (ret) {
 		ret = 0;
 		goto free_onfi_param_page;
 	}
 
 	for (i = 0; i < 3; i++) {
-		ret = nand_read_data_op(chip, &pbuf[i], sizeof(*pbuf), true);
-		if (ret) {
-			ret = 0;
-			goto free_onfi_param_page;
-		}
-
 		crc = onfi_crc16(ONFI_CRC_BASE, (u8 *)&pbuf[i], 254);
 		if (crc == le16_to_cpu(pbuf[i].crc)) {
 			p = &pbuf[i];
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
