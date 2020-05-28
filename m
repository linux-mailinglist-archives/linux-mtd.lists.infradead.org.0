Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3F71E7063
	for <lists+linux-mtd@lfdr.de>; Fri, 29 May 2020 01:24:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=af05KaUpR0+JjoPW9dSh6C0Vx7WdMCvdUxyAyPX0Ujo=; b=Qth13b5/np/kJn
	yBQpdjpsJSTylRX4YXkDvfp2OPS+oGTXFDTIJh8mErXIajhMWHTC2eRBW5mmJI696huBQu57SQjAv
	z/x20Um6CXB1UCPHp9haYJcKWjOPzvP+u0xmUkIlJ0lUj4tNWKTAOo4oWKT+dDcO5Gr2QOcOhcjDG
	DskmNTLgnehd3uq71XX/dluNF02S3XJYJ9Zh256U2OxO532SMMDWDA472KW2Rhqd36vzdL2JxBzI5
	2Qy/V5RpNeJFxOxu2HXdGqSlP1mxQ2vTCzu+HFu24XNzGqrw5uc95gUE7kktPieOgoO+Yi3sDpedz
	XjZJs6PDycEYacDwTYUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeRt6-0007CL-AV; Thu, 28 May 2020 23:24:36 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeRla-0006Tp-Q3
 for linux-mtd@lists.infradead.org; Thu, 28 May 2020 23:16:56 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 38D4D240007;
 Thu, 28 May 2020 23:16:48 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v6 28/30] mtd: rawnand: toshiba: Choose the data interface for
 TH58NVG2S3HBAI4
Date: Fri, 29 May 2020 01:16:10 +0200
Message-Id: <20200528231612.8958-29-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200528231612.8958-1-miquel.raynal@bootlin.com>
References: <20200528231612.8958-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_161651_141858_B3578C6F 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
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
Cc: Rickard Andersson <rickaran@axis.com>, Michal Simek <monstr@monstr.eu>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Rickard x Andersson <rickaran@axis.com>

The Kioxia/Toshiba TH58NVG2S3HBAI4 NAND memory is not ONFI compliant.
The timings of the NAND chip memory are quite close to ONFI mode 4 but
is breaking that spec.

By providing our own set of timings, erase block read speed is increased
from 6910 kiB/s to 13490 kiB/s and erase block write speed is increased
from 3350 kiB/s to 4410 kiB/s.

Tested on IMX6SX which has a NAND controller supporting EDO mode.

Signed-off-by: Rickard x Andersson <rickaran@axis.com>
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/nand_ids.c     |  3 +++
 drivers/mtd/nand/raw/nand_toshiba.c | 36 +++++++++++++++++++++++++++++
 2 files changed, 39 insertions(+)

diff --git a/drivers/mtd/nand/raw/nand_ids.c b/drivers/mtd/nand/raw/nand_ids.c
index 3b890d55703d..b9945791a9d7 100644
--- a/drivers/mtd/nand/raw/nand_ids.c
+++ b/drivers/mtd/nand/raw/nand_ids.c
@@ -51,6 +51,9 @@ struct nand_flash_dev nand_flash_ids[] = {
 		{ .id = {0xad, 0xde, 0x94, 0xda, 0x74, 0xc4} },
 		  SZ_8K, SZ_8K, SZ_2M, NAND_NEED_SCRAMBLING, 6, 640,
 		  NAND_ECC_INFO(40, SZ_1K) },
+	{"TH58NVG2S3HBAI4 4G 3.3V 8-bit",
+		{ .id = {0x98, 0xdc, 0x91, 0x15, 0x76} },
+		  SZ_2K, SZ_512, SZ_128K, 0, 5, 128, NAND_ECC_INFO(8, SZ_512) },
 
 	LEGACY_ID_NAND("NAND 4MiB 5V 8-bit",   0x6B, 4, SZ_8K, SP_OPTIONS),
 	LEGACY_ID_NAND("NAND 4MiB 3,3V 8-bit", 0xE3, 4, SZ_8K, SP_OPTIONS),
diff --git a/drivers/mtd/nand/raw/nand_toshiba.c b/drivers/mtd/nand/raw/nand_toshiba.c
index a6888e4d436b..56463c6ef9ae 100644
--- a/drivers/mtd/nand/raw/nand_toshiba.c
+++ b/drivers/mtd/nand/raw/nand_toshiba.c
@@ -210,6 +210,32 @@ static int tc58nvg0s3e_choose_interface(struct nand_chip *chip,
 	return nand_choose_best_sdr_timings(chip, iface, NULL);
 }
 
+static int th58nvg2s3hbai4_choose_interface(struct nand_chip *chip,
+					    struct nand_interface_config *iface)
+{
+	struct nand_sdr_timings *sdr = &iface->timings.sdr;
+
+	/* Start with timings from the closest timing mode, mode 4. */
+	onfi_fill_interface_config(chip, iface, NAND_SDR_IFACE, 4);
+
+	/* Patch timings that differ from mode 4. */
+	sdr->tALS_min = 12000;
+	sdr->tCHZ_max = 20000;
+	sdr->tCLS_min = 12000;
+	sdr->tCOH_min = 0;
+	sdr->tDS_min = 12000;
+	sdr->tRHOH_min = 25000;
+	sdr->tRHW_min = 30000;
+	sdr->tRHZ_max = 60000;
+	sdr->tWHR_min = 60000;
+
+	/* Patch timings not part of onfi timing mode. */
+	sdr->tPROG_max = 700000000;
+	sdr->tBERS_max = 5000000000;
+
+	return nand_choose_best_sdr_timings(chip, iface, sdr);
+}
+
 static int tc58teg5dclta00_init(struct nand_chip *chip)
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
@@ -228,6 +254,13 @@ static int tc58nvg0s3e_init(struct nand_chip *chip)
 	return 0;
 }
 
+static int th58nvg2s3hbai4_init(struct nand_chip *chip)
+{
+	chip->ops.choose_interface = th58nvg2s3hbai4_choose_interface;
+
+	return 0;
+}
+
 static int toshiba_nand_init(struct nand_chip *chip)
 {
 	if (nand_is_slc(chip))
@@ -243,6 +276,9 @@ static int toshiba_nand_init(struct nand_chip *chip)
 	if (!strncmp("TC58NVG0S3E", chip->parameters.model,
 		     sizeof("TC58NVG0S3E") - 1))
 		tc58nvg0s3e_init(chip);
+	if (!strncmp("TH58NVG2S3HBAI4", chip->parameters.model,
+		     sizeof("TH58NVG2S3HBAI4") - 1))
+		th58nvg2s3hbai4_init(chip);
 
 	return 0;
 }
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
