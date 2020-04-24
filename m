Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 590DB1B7C05
	for <lists+linux-mtd@lfdr.de>; Fri, 24 Apr 2020 18:46:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cTjXhu7xibNRUQ2/YLFqPXwO/lHD7deroWs4L+5njlc=; b=pnLBA34teQghkd
	+lp5IOTZo0dCHIOl0PP4VHJTNft9LnHz4uHMKbau4sxc5zH++HfBz/uGh4a/G/U5Uhgg55WFqo5UZ
	QZO65EeOnPxbKRZdPuQ3CjGHyi8JgUCco3nmRDQti6yWWQRU9PTSCbV/mtnCrENDTQIasjVYZorEu
	wtOZ9oKkn8xDSuhejc6NA0L9jnBEaFz0Elf71anpgYvUVjCDfb3IpcmLrJtaSfADRYI+TKQ2+pLPk
	kILw2YyxUxo+3WaiZTIgPg7D2Ne6TneFbJcxtCSq8jzD73EO4SVRFcYvkjHTUH7PXPtNraE7fZAiG
	ifMFERdpqk7OaE+ilRSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS1TE-0002mc-Qb; Fri, 24 Apr 2020 16:46:32 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS1Rv-0000pa-C5
 for linux-mtd@lists.infradead.org; Fri, 24 Apr 2020 16:45:13 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 41AAA24000F;
 Fri, 24 Apr 2020 16:45:09 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v2 5/6] mtd: rawnand: marvell: Rename a function to clarify
Date: Fri, 24 Apr 2020 18:45:00 +0200
Message-Id: <20200424164501.26719-6-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200424164501.26719-1-miquel.raynal@bootlin.com>
References: <20200424164501.26719-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_094511_579025_34477C1E 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

Cosmetic change to clarify the purpose of the function.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/mtd/nand/raw/marvell_nand.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/raw/marvell_nand.c b/drivers/mtd/nand/raw/marvell_nand.c
index 10b7f43d28e6..d6b978234933 100644
--- a/drivers/mtd/nand/raw/marvell_nand.c
+++ b/drivers/mtd/nand/raw/marvell_nand.c
@@ -2166,8 +2166,8 @@ static const struct mtd_ooblayout_ops marvell_nand_ooblayout_ops = {
 	.free = marvell_nand_ooblayout_free,
 };
 
-static int marvell_nand_hw_ecc_ctrl_init(struct mtd_info *mtd,
-					 struct nand_ecc_ctrl *ecc)
+static int marvell_nand_hw_ecc_controller_init(struct mtd_info *mtd,
+					       struct nand_ecc_ctrl *ecc)
 {
 	struct nand_chip *chip = mtd_to_nand(mtd);
 	struct marvell_nfc *nfc = to_marvell_nfc(chip->controller);
@@ -2261,7 +2261,7 @@ static int marvell_nand_ecc_init(struct mtd_info *mtd,
 
 	switch (ecc->mode) {
 	case NAND_ECC_HW:
-		ret = marvell_nand_hw_ecc_ctrl_init(mtd, ecc);
+		ret = marvell_nand_hw_ecc_controller_init(mtd, ecc);
 		if (ret)
 			return ret;
 		break;
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
