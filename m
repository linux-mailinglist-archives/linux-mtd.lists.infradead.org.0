Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC5C81E2DB2
	for <lists+linux-mtd@lfdr.de>; Tue, 26 May 2020 21:25:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nQUzwtH06OSuaR0JXP4Di2JbDUCv14Z76QVDQenLV4s=; b=bbRkjmnr52YDus
	icAzR15ePlJWI7+R3JrMeDbntcLJhtd0TDgkW1y4NhB83jYuPLfOZDfWGL3YoxM9YBtrvY3j+idCt
	tstiDHWgCz8E9LJsHOV4SQ5IJRW+KGmOzlwiajZip+gToq7TWntAn5s+Z5W0QhlcjcZyMljfa7q00
	MAWuVuE65Kaippn1ExkJK73Xe3sWVC38uEd00lQM703T5HgNBgGz06osFfX2AAuCbqClkNvHHFPxy
	lz6mPIbta0MfZBY+cYrbesG1+Auf5uJjI2aM9QuTB6M3MzUKbieWPo+8hmzcUcUFU6uy4H3exuit+
	48gwShtFfXXTu/5qiR7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdfC0-0001WE-QM; Tue, 26 May 2020 19:24:52 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdf5S-0001iq-28
 for linux-mtd@lists.infradead.org; Tue, 26 May 2020 19:18:10 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id DCD0224000F;
 Tue, 26 May 2020 19:18:02 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v5 24/28] mtd: rawnand: toshiba: Implement
 ->choose_data_interface() for TC58NVG0S3E
Date: Tue, 26 May 2020 21:17:21 +0200
Message-Id: <20200526191725.7591-25-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200526191725.7591-1-miquel.raynal@bootlin.com>
References: <20200526191725.7591-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_121806_256319_92988D61 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: Rickard Andersson <rickaran@axis.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This chip supports ONFI SDR timing mode 2, implement the new hook to
advertize it.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/nand_ids.c     |  3 +--
 drivers/mtd/nand/raw/nand_toshiba.c | 21 +++++++++++++++++++++
 2 files changed, 22 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_ids.c b/drivers/mtd/nand/raw/nand_ids.c
index e0dbc2e316c7..c729a8bc895d 100644
--- a/drivers/mtd/nand/raw/nand_ids.c
+++ b/drivers/mtd/nand/raw/nand_ids.c
@@ -28,8 +28,7 @@ struct nand_flash_dev nand_flash_ids[] = {
 	 */
 	{"TC58NVG0S3E 1G 3.3V 8-bit",
 		{ .id = {0x98, 0xd1, 0x90, 0x15, 0x76, 0x14, 0x01, 0x00} },
-		  SZ_2K, SZ_128, SZ_128K, 0, 8, 64, NAND_ECC_INFO(1, SZ_512),
-		  2 },
+		  SZ_2K, SZ_128, SZ_128K, 0, 8, 64, NAND_ECC_INFO(1, SZ_512), },
 	{"TC58NVG2S0F 4G 3.3V 8-bit",
 		{ .id = {0x98, 0xdc, 0x90, 0x26, 0x76, 0x15, 0x01, 0x08} },
 		  SZ_4K, SZ_512, SZ_256K, 0, 8, 224, NAND_ECC_INFO(4, SZ_512) },
diff --git a/drivers/mtd/nand/raw/nand_toshiba.c b/drivers/mtd/nand/raw/nand_toshiba.c
index fe2bc20972a9..860ae0c13063 100644
--- a/drivers/mtd/nand/raw/nand_toshiba.c
+++ b/drivers/mtd/nand/raw/nand_toshiba.c
@@ -206,6 +206,18 @@ tc58teg5dclta00_choose_data_interface(struct nand_chip *chip,
 	return nand_choose_best_sdr_timings(chip, iface, NULL);
 }
 
+static int tc58nvg0s3e_choose_data_interface(struct nand_chip *chip,
+					     struct nand_data_interface *iface)
+{
+	int ret;
+
+	ret = onfi_fill_data_interface(chip, iface, NAND_SDR_IFACE, 2);
+	if (ret)
+		return ret;
+
+	return nand_choose_best_sdr_timings(chip, iface, NULL);
+}
+
 static int tc58teg5dclta00_init(struct nand_chip *chip)
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
@@ -217,6 +229,13 @@ static int tc58teg5dclta00_init(struct nand_chip *chip)
 	return 0;
 }
 
+static int tc58nvg0s3e_init(struct nand_chip *chip)
+{
+	chip->ops.choose_data_interface = &tc58nvg0s3e_choose_data_interface;
+
+	return 0;
+}
+
 static int toshiba_nand_init(struct nand_chip *chip)
 {
 	if (nand_is_slc(chip))
@@ -229,6 +248,8 @@ static int toshiba_nand_init(struct nand_chip *chip)
 
 	if (!strcmp("TC58TEG5DCLTA00", chip->parameters.model))
 		tc58teg5dclta00_init(chip);
+	if (!strcmp("TC58NVG0S3E", chip->parameters.model))
+		tc58nvg0s3e_init(chip);
 
 	return 0;
 }
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
