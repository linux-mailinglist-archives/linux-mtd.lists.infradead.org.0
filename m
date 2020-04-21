Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 030F91B2D26
	for <lists+linux-mtd@lfdr.de>; Tue, 21 Apr 2020 18:51:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ww7Mfj1hOvBTm/kaIK46iU7r6BiCAVd02vP8GAYo3nk=; b=CXOZp1jHafmEuF
	/eh6rebNwDR8+BL3sS6Rf1vB89Ji6y8fTcwW83F3titgNuuTh3igDGL8UTiFlMr304gv7AisYcC8l
	tOzzRjnvgd8x6YxvhpXTaUuDiUUW7qpTY81+iw06hN7a4F7hDbSR7W6WPl4bDoNKR3Ht049YsuYoH
	TtjhkyFGe6e72u3LPnd/JuEWgz+TFVeJUnT8n3UucaNm3zfRWGbSnxSwIRtAhfQcpe6KMUq0EZy/Z
	V/etrDV7xNNWDLC0iJDshZbnlqNlv1qvR5vgW6WccqCKDv4bhDHoQImBa1LTic2QF6tOxXPGE2LdA
	QEAVuNVIdCE4zKpgX7gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQw6u-0001ip-2R; Tue, 21 Apr 2020 16:51:00 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQw55-0006J7-Tf
 for linux-mtd@lists.infradead.org; Tue, 21 Apr 2020 16:49:11 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 67C24C0015;
 Tue, 21 Apr 2020 16:49:05 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH 6/6] mtd: rawnand: marvell: Rename the ->correct() function
Date: Tue, 21 Apr 2020 18:48:57 +0200
Message-Id: <20200421164857.8255-7-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200421164857.8255-1-miquel.raynal@bootlin.com>
References: <20200421164857.8255-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_094908_248250_9F0AA475 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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

There is no correction involved at this point, it is just a matter of
reading registers and checking whether bitflips have occurred or
not. Rename the function to clarify it.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/marvell_nand.c | 19 +++++++++----------
 1 file changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/mtd/nand/raw/marvell_nand.c b/drivers/mtd/nand/raw/marvell_nand.c
index 2db143a97626..3e448b89aaad 100644
--- a/drivers/mtd/nand/raw/marvell_nand.c
+++ b/drivers/mtd/nand/raw/marvell_nand.c
@@ -932,14 +932,14 @@ static void marvell_nfc_check_empty_chunk(struct nand_chip *chip,
 }
 
 /*
- * Check a chunk is correct or not according to hardware ECC engine.
+ * Check if a chunk is correct or not according to the hardware ECC engine.
  * mtd->ecc_stats.corrected is updated, as well as max_bitflips, however
  * mtd->ecc_stats.failure is not, the function will instead return a non-zero
  * value indicating that a check on the emptyness of the subpage must be
- * performed before declaring the subpage corrupted.
+ * performed before actually declaring the subpage as "corrupted".
  */
-static int marvell_nfc_hw_ecc_correct(struct nand_chip *chip,
-				      unsigned int *max_bitflips)
+static int marvell_nfc_hw_ecc_check_bitflips(struct nand_chip *chip,
+					     unsigned int *max_bitflips)
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct marvell_nfc *nfc = to_marvell_nfc(chip->controller);
@@ -1053,7 +1053,7 @@ static int marvell_nfc_hw_ecc_hmg_read_page(struct nand_chip *chip, u8 *buf,
 	marvell_nfc_enable_hw_ecc(chip);
 	marvell_nfc_hw_ecc_hmg_do_read_page(chip, buf, chip->oob_poi, false,
 					    page);
-	ret = marvell_nfc_hw_ecc_correct(chip, &max_bitflips);
+	ret = marvell_nfc_hw_ecc_check_bitflips(chip, &max_bitflips);
 	marvell_nfc_disable_hw_ecc(chip);
 
 	if (!ret)
@@ -1336,7 +1336,7 @@ static int marvell_nfc_hw_ecc_bch_read_page(struct nand_chip *chip,
 		/* Read the chunk and detect number of bitflips */
 		marvell_nfc_hw_ecc_bch_read_chunk(chip, chunk, data, data_len,
 						  spare, spare_len, page);
-		ret = marvell_nfc_hw_ecc_correct(chip, &max_bitflips);
+		ret = marvell_nfc_hw_ecc_check_bitflips(chip, &max_bitflips);
 		if (ret)
 			failure_mask |= BIT(chunk);
 
@@ -1358,10 +1358,9 @@ static int marvell_nfc_hw_ecc_bch_read_page(struct nand_chip *chip,
 	 */
 
 	/*
-	 * In case there is any subpage read error reported by ->correct(), we
-	 * usually re-read only ECC bytes in raw mode and check if the whole
-	 * page is empty. In this case, it is normal that the ECC check failed
-	 * and we just ignore the error.
+	 * In case there is any subpage read error, we usually re-read only ECC
+	 * bytes in raw mode and check if the whole page is empty. In this case,
+	 * it is normal that the ECC check failed and we just ignore the error.
 	 *
 	 * However, it has been empirically observed that for some layouts (e.g
 	 * 2k page, 8b strength per 512B chunk), the controller tries to correct
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
