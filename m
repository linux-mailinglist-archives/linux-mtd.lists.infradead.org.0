Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B5A1DB53C
	for <lists+linux-mtd@lfdr.de>; Wed, 20 May 2020 15:39:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TpCWHDzOSp3pMNRIq7S6CvyhO2OrxsiVqFACCkuMg78=; b=CnSnQEuPabW8l4
	FUnaZCUCIYN+MD7yB1nzzdVZPk4tXx8Wk/dDMRsP7L9dLy5eKO9FyCUm2I1Sik7VIvgFdNDz/43LT
	cLQoT2HHX9c57mx4A+gRsyCv9+qKwtRWcZMOWBq/c8PvrbtwNmZ5mws4r1JmtlKAQr7pxWH7DtoG7
	MFZyLX4bgg8NndQaozxtHAPKvItOqNWaEd/WtEoW7+EM49+7EeXnwzq7yeEhuLZdmBABn1n/LC+nS
	kBMPI8nd047CE4GVoyyD5XlESqIPPZeD/wBdC0YE1+9r25TVc5smTIsw7KLKi1MR3qbqT/tLGDodz
	nxYBRS8wE2yV5rxaSing==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbOwP-0008To-O6; Wed, 20 May 2020 13:39:25 +0000
Received: from smtp1.axis.com ([195.60.68.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbOwA-0008L1-U7
 for linux-mtd@lists.infradead.org; Wed, 20 May 2020 13:39:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=axis.com; l=3818; q=dns/txt; s=axis-central1;
 t=1589981951; x=1621517951;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=8Z+TP1nqnvZAL5BU/cb+CpSHbpx22lN/Pj4qTpGdF7U=;
 b=dH1veYv/8dqiIGD1KYh2b4U14rER2ShSLSsi4kPRC15cdMh9209jx9gX
 accRBTyfeT5fBcTI97kC/rOI0Baww5s6EbWozaNFR97Gjppl9ZtIsrnys
 s8O5GQ+3jCqnYDhXK9IVsaRJao8oUT8y6gCPlhuwKoL6O0iNMDgaDcHm3
 ZolA2ciw4c4srK4xJB+OlKq8MIvgtgwiK3OZwHyCBV/wXQRvsdEYeAwgF
 ZYhR5qbWbaSkD7sI4fE/NYNyhUhEHVLqOPhTrVyhzdEDtcEAk2Y9hNga6
 KE2Lq7l2M5o7oWC7vdHV2SHYusQJPGVKXOggsLTHwSfawVwoSeE1T50fK g==;
IronPort-SDR: U7Rz53LGzMW6yUcIfPSqPPSgogmiO4AulCNjKkBng8THgXToqBg67SxbMgwYe84s6s7XB1uNOD
 G3llcZ1o9Z5OE8qw2CUJvK4ftHPCpsDIgiUYjGf6VbCQvMFgMNPSmW+5fZrkq7gj58CUnEH4Z0
 fP5pTgYgMTdjAiLjOBtAKBXiJ8JOLoWLD1cWjj4MLgse/7xgszrGENwVmM3kvy0sBOfytXjc3T
 Q2VuszOepoYJZgD1NjlL5Xl89E9GxrvNR6onLQhCo57I9F0Pbj6yAkRhFVFqC1/SeMGUOJu97b
 2q8=
X-IronPort-AV: E=Sophos;i="5.73,414,1583190000"; 
   d="scan'208";a="8924575"
From: Rickard Andersson <rickaran@axis.com>
To: <miquel.raynal@bootlin.com>, <linux-mtd@lists.infradead.org>
Subject: [PATCH v2 2/2] mtd: rawnand: Add timings for Kioxia TH58NVG2S3HBAI4
Date: Wed, 20 May 2020 15:38:54 +0200
Message-ID: <20200520133854.25241-2-rickaran@axis.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200520133854.25241-1-rickaran@axis.com>
References: <20200520133854.25241-1-rickaran@axis.com>
MIME-Version: 1.0
X-Originating-IP: [10.0.5.60]
X-ClientProxiedBy: XBOX03.axis.com (10.0.5.17) To XBOX02.axis.com (10.0.5.16)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_063911_307198_88A5AD20 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.60.68.17 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: rickaran@axis.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Rickard x Andersson <rickaran@axis.com>

The Kioxia/Toshiba TH58NVG2S3HBAI4 NAND memory is not a
ONFI compliant memory. The timings of the memory is quite
close to ONFI mode 4 but is breaking that spec.

Erase block read speed is increased from 6910 KiB/s to
13490 KiB/s. Erase block write speed is increased from
3350 KiB/s to 4410 KiB/s.

Tested on IMX6SX which has a NAND controller supporting
EDO mode.

Signed-off-by: Rickard x Andersson <rickaran@axis.com>
---
 drivers/mtd/nand/raw/nand_ids.c     |  3 ++
 drivers/mtd/nand/raw/nand_toshiba.c | 66 +++++++++++++++++++++++++++++++++++++
 2 files changed, 69 insertions(+)

diff --git a/drivers/mtd/nand/raw/nand_ids.c b/drivers/mtd/nand/raw/nand_ids.c
index e0dbc2e316c7..8b676e8b481b 100644
--- a/drivers/mtd/nand/raw/nand_ids.c
+++ b/drivers/mtd/nand/raw/nand_ids.c
@@ -52,6 +52,9 @@ struct nand_flash_dev nand_flash_ids[] = {
 		{ .id = {0xad, 0xde, 0x94, 0xda, 0x74, 0xc4} },
 		  SZ_8K, SZ_8K, SZ_2M, NAND_NEED_SCRAMBLING, 6, 640,
 		  NAND_ECC_INFO(40, SZ_1K), 4 },
+	{"TH58NVG2S3HBAI4 4G 3.3V 8-bit",
+		{ .id = {0x98, 0xdc, 0x91, 0x15, 0x76} },
+		  SZ_2K, SZ_512, SZ_128K, 0, 5, 128, NAND_ECC_INFO(8, SZ_512) },
 
 	LEGACY_ID_NAND("NAND 4MiB 5V 8-bit",   0x6B, 4, SZ_8K, SP_OPTIONS),
 	LEGACY_ID_NAND("NAND 4MiB 3,3V 8-bit", 0xE3, 4, SZ_8K, SP_OPTIONS),
diff --git a/drivers/mtd/nand/raw/nand_toshiba.c b/drivers/mtd/nand/raw/nand_toshiba.c
index b6efaf5195bb..60ca895b1775 100644
--- a/drivers/mtd/nand/raw/nand_toshiba.c
+++ b/drivers/mtd/nand/raw/nand_toshiba.c
@@ -26,6 +26,52 @@
 /* Max ECC Steps for BENAND */
 #define TOSHIBA_NAND_MAX_ECC_STEPS		8
 
+static const struct nand_data_interface th58nvg2s3hbai4_timings = {
+	.type = NAND_SDR_IFACE,
+	.timings.mode = 0,
+	.timings.sdr = {
+		.tPROG_max = 700000000,
+		.tBERS_max = 5000000000,
+		.tCCS_min = 500000,
+		.tR_max = 200000000,
+		.tADL_min = 400000,
+		.tALH_min = 5000,
+		.tALS_min = 12000,
+		.tAR_min = 10000,
+		.tCEA_max = 25000,
+		.tCEH_min = 20000,
+		.tCH_min = 5000,
+		.tCHZ_max = 20000,
+		.tCLH_min = 5000,
+		.tCLR_min = 10000,
+		.tCLS_min = 12000,
+		.tCOH_min = 0,
+		.tCS_min = 20000,
+		.tDH_min = 5000,
+		.tDS_min = 12000,
+		.tFEAT_max = 1000000,
+		.tIR_min = 0,
+		.tITC_max = 1000000,
+		.tRC_min = 25000,
+		.tREA_max = 20000,
+		.tREH_min = 10000,
+		.tRHOH_min = 25000,
+		.tRHW_min = 30000,
+		.tRHZ_max = 60000,
+		.tRLOH_min = 5000,
+		.tRP_min = 12000,
+		.tRR_min = 20000,
+		.tRST_max = 500000000,
+		.tWB_max = 100000,
+		.tWC_min = 25000,
+		.tWH_min = 10000,
+		.tWHR_min = 60000,
+		.tWP_min = 12000,
+		.tWW_min = 100000,
+	}
+};
+
+
 static int toshiba_nand_benand_read_eccstatus_op(struct nand_chip *chip,
 						 u8 *buf)
 {
@@ -194,6 +240,18 @@ static void toshiba_nand_decode_id(struct nand_chip *chip)
 	}
 }
 
+static int th58nvg2s3hbai4_choose_data_interface(struct nand_chip *chip)
+{
+	int ret;
+
+	chip->data_interface = th58nvg2s3hbai4_timings;
+
+	/* Check if the controller can handle the timings */
+	ret = nand_test_data_interface(chip);
+
+	return ret;
+}
+
 static int tc58teg5dclta00_init(struct nand_chip *chip)
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
@@ -205,6 +263,12 @@ static int tc58teg5dclta00_init(struct nand_chip *chip)
 	return 0;
 }
 
+static int th58nvg2s3hbai4_init(struct nand_chip *chip)
+{
+	chip->ops.choose_data_interface = th58nvg2s3hbai4_choose_data_interface;
+	return 0;
+}
+
 static int toshiba_nand_init(struct nand_chip *chip)
 {
 	if (nand_is_slc(chip))
@@ -217,6 +281,8 @@ static int toshiba_nand_init(struct nand_chip *chip)
 
 	if (!strcmp("TC58TEG5DCLTA00", chip->parameters.model))
 		tc58teg5dclta00_init(chip);
+	if (!strncmp("TH58NVG2S3HBAI4", chip->parameters.model, 15))
+		th58nvg2s3hbai4_init(chip);
 
 	return 0;
 }
-- 
2.11.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
