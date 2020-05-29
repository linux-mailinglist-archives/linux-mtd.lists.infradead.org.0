Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1FE21E7B9C
	for <lists+linux-mtd@lfdr.de>; Fri, 29 May 2020 13:21:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EqzGCm/UJ6Rz2j37BI5zy4I8fRou7SUgWoW5+Ft66Mo=; b=PaYfYZ1jbwg8Mh
	ITVbyNhMtJDPdA+sHVNKqXeGzwkLL4nPoF1CZx6k9v5Nj8PLkRNJBtuXlfjpGOMoyIaRhfkxoAb6E
	CtjT4HDzg64teZTshsVF1Ul25bsVg8JqeNmkRWOFxq+k2NYVYizywKwttNfPpZNh6Nheu0EL/N48U
	LmiuA3WbgxlUCSVspthOxcc6ZMbhc4qERyJuFqtGsNwRi/RqfxmLaz30/bCtm+/CZFJISp97gud7V
	5pH63zIeyRkwGp2lbI418iPUqCBkpdECakg2dNXtvhWoeQJXYOKJ4a+kK6C5wLMEQpUnx+wGs0CRM
	kpALbYqPYnJu5WrS51OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jed4T-0005s8-85; Fri, 29 May 2020 11:21:05 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jecxY-0003Zy-91
 for linux-mtd@lists.infradead.org; Fri, 29 May 2020 11:14:02 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 0A6D524000E;
 Fri, 29 May 2020 11:13:52 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v7 24/28] mtd: rawnand: toshiba: Implement
 ->choose_interface_config() for TC58NVG0S3E
Date: Fri, 29 May 2020 13:13:18 +0200
Message-Id: <20200529111322.7184-25-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200529111322.7184-1-miquel.raynal@bootlin.com>
References: <20200529111322.7184-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_041356_617519_F6FF660A 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Michal Simek <monstr@monstr.eu>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
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
 drivers/mtd/nand/raw/nand_toshiba.c | 20 ++++++++++++++++++++
 2 files changed, 21 insertions(+), 2 deletions(-)

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
index d23bb4322062..6d53f9b7a817 100644
--- a/drivers/mtd/nand/raw/nand_toshiba.c
+++ b/drivers/mtd/nand/raw/nand_toshiba.c
@@ -203,6 +203,15 @@ tc58teg5dclta00_choose_interface_config(struct nand_chip *chip,
 	return nand_choose_best_sdr_timings(chip, iface, NULL);
 }
 
+static int
+tc58nvg0s3e_choose_interface_config(struct nand_chip *chip,
+				    struct nand_interface_config *iface)
+{
+	onfi_fill_interface_config(chip, iface, NAND_SDR_IFACE, 2);
+
+	return nand_choose_best_sdr_timings(chip, iface, NULL);
+}
+
 static int tc58teg5dclta00_init(struct nand_chip *chip)
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
@@ -215,6 +224,14 @@ static int tc58teg5dclta00_init(struct nand_chip *chip)
 	return 0;
 }
 
+static int tc58nvg0s3e_init(struct nand_chip *chip)
+{
+	chip->ops.choose_interface_config =
+		&tc58nvg0s3e_choose_interface_config;
+
+	return 0;
+}
+
 static int toshiba_nand_init(struct nand_chip *chip)
 {
 	if (nand_is_slc(chip))
@@ -227,6 +244,9 @@ static int toshiba_nand_init(struct nand_chip *chip)
 
 	if (!strcmp("TC58TEG5DCLTA00", chip->parameters.model))
 		tc58teg5dclta00_init(chip);
+	if (!strncmp("TC58NVG0S3E", chip->parameters.model,
+		     sizeof("TC58NVG0S3E") - 1))
+		tc58nvg0s3e_init(chip);
 
 	return 0;
 }
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
