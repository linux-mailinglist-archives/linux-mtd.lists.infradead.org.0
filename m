Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F254813AB5F
	for <lists+linux-mtd@lfdr.de>; Tue, 14 Jan 2020 14:47:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pN9Jasueuh+1Gr3yI81+hUbsYehrSAhYGvBfNVhePD8=; b=bKLsbrp3D1csQY
	FxilJZ9HJ3i2mnxsUsxqDvaQJpKIJwS5NItRc3LIf/xcvQZ78xAitix3WAtw8HU3DufsT6645WKDK
	9s17SMaDNAcThRfDB86TyUAaGEBnw1RxdhwH5Dn0A76cSIMNczNTDf6hsyiIlqnyHs/YBqwklf6SC
	VnIfelvq6jLwUs3dvOy0jsc4bVNuu3d7TyaCkXXbJmmxSB9asneMyMMAAm90tZIA1ApOrsPRyuX9Z
	ia8vwQncA4sONeufNZ75pXkcleV0c7Ykpa3tA9ubSCPuE7cfXXudPVmDf4s+l7h2QFvRACFuxAKYV
	c7V5XllevY0kLkUhzfBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irMXh-0003ec-S5; Tue, 14 Jan 2020 13:47:37 +0000
Received: from mail-eopbgr60139.outbound.protection.outlook.com
 ([40.107.6.139] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irMXX-0003dx-9d
 for linux-mtd@lists.infradead.org; Tue, 14 Jan 2020 13:47:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nxmYU3ryGLIrd/MaDuedXWd5WXMo4lUXvX+hhXXbZWTDx9DO2Ee05mJ1yx2GAsvY6c8Iz9vyCRjxEoTxFSrS4i+sXLU67ZPEQh7BiMC3k47Y2oj7EdzjyDaNtT55Pwfcdn0y77m0GutA5um16tUzpCcsRBWVPDbRmRbTyTjOIXruw2ZGFoqozpAtn2mM67n42/VL9dvPLtinnzhCGH0Ttq+P3XTPUFaZRXxUNKM7+YcCIu7pA+jLb/CpmqTKbtYhAaTASo+cVxUdJ/i32B00fnSewYv/IRNQdgQsPLcFbw/ibPX9NcFBCpAt1YgOlxlg/1pgiNGC3yUb4sWmjqx7sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mNO8eRIErKN97hlurNLgmCOePqJEvPnHCEq9pOFN3Bw=;
 b=Ryb7ac+2uWEdDgp7lRE5ZTmNd8CMKEKJNLMllJQylA5nYDAzh0+thmsqf/xwA2eXmDvOqU22lzAH1U3YSCnr/Pg9VlFhwpsvUAp97vUQqo7QV79lQWX6yyLcyBZiLY1WtCmpPz4u1Tz1NsyMxGRpeyRQSMjQt26dMYaKuDVZlcuhAKk181cjDWBInZsFuS2PGSj6Zy51u5wD18U8i7xYoDeHKVu2sCwfFxyQPDwIQ+7Sd9V6QF8jcoLruvI0IgNr/hc5J0hJDihJ4Cs62X0dWgzAuWVNlRpgLqwIZccuSXQNLXiV+UaiF4bPXgf2oqjiSDuP8SCexdvF7cLswuY0JA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nokia.com; dmarc=pass action=none header.from=nokia.com;
 dkim=pass header.d=nokia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nokia.onmicrosoft.com; 
 s=selector1-nokia-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mNO8eRIErKN97hlurNLgmCOePqJEvPnHCEq9pOFN3Bw=;
 b=oHJ9KR9EicHHMeQwuqwaQcZ4kc+hr3L9qA2S1a2C4BUp26tb8NDClyl2Zr8rdtIn10g19HtaIewGAWabJ1HH5W11gqZXlDUKoInb5wkhicdaOGb+cED9KYng+N0AdXowjLauNITOuASmmK8rhryVALWj6KrfHs4mCp1VnEFSlaw=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=alexander.sverdlin@nokia.com; 
Received: from VI1PR07MB5040.eurprd07.prod.outlook.com (20.177.203.20) by
 VI1PR07MB4798.eurprd07.prod.outlook.com (20.177.56.219) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.12; Tue, 14 Jan 2020 13:47:23 +0000
Received: from VI1PR07MB5040.eurprd07.prod.outlook.com
 ([fe80::20c4:7ce8:f735:316e]) by VI1PR07MB5040.eurprd07.prod.outlook.com
 ([fe80::20c4:7ce8:f735:316e%2]) with mapi id 15.20.2644.015; Tue, 14 Jan 2020
 13:47:23 +0000
From: Alexander X Sverdlin <alexander.sverdlin@nokia.com>
To: linux-mtd@lists.infradead.org
Subject: [PATCH] mtd: spi-nor: Fixup page size for S25FS-S
Date: Tue, 14 Jan 2020 14:47:03 +0100
Message-Id: <20200114134704.4708-1-alexander.sverdlin@nokia.com>
X-Mailer: git-send-email 2.24.0
X-ClientProxiedBy: HE1PR08CA0050.eurprd08.prod.outlook.com
 (2603:10a6:7:2a::21) To VI1PR07MB5040.eurprd07.prod.outlook.com
 (2603:10a6:803:9c::20)
MIME-Version: 1.0
Received: from ulegcpsvdell.emea.nsn-net.net (131.228.32.181) by
 HE1PR08CA0050.eurprd08.prod.outlook.com (2603:10a6:7:2a::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.10 via Frontend Transport; Tue, 14 Jan 2020 13:47:22 +0000
X-Mailer: git-send-email 2.24.0
X-Originating-IP: [131.228.32.181]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: d4a68162-f3be-4cf5-dcce-08d798f848a4
X-MS-TrafficTypeDiagnostic: VI1PR07MB4798:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR07MB47984A14F1D85BC7B0C372C688340@VI1PR07MB4798.eurprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 028256169F
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(366004)(396003)(346002)(376002)(39860400002)(189003)(199004)(52116002)(5660300002)(1076003)(8676002)(26005)(2906002)(66556008)(66476007)(66946007)(186003)(6666004)(6916009)(6512007)(6506007)(956004)(54906003)(2616005)(81156014)(16526019)(4326008)(8936002)(86362001)(6486002)(36756003)(478600001)(81166006)(316002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR07MB4798;
 H:VI1PR07MB5040.eurprd07.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nokia.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vDbfilM90DDq1ecHAbDB8Rg0p1gGyIX7YAfBVC5pFs/QSMzJ19ReQUmWBgZz4dITTkV2RHFeFeL4nn87QtgSWnP6fKzX5uTGUB332j8lCSkCh8AozBuDJcjppEzpCPNlGJL3hSBeveua8BrJvZDYsjGvqf6KmBJTrWrmpqghfN0Di+0IKQ4eNLJkasvkFDlYWvueQYoXDqAcFDHxV+6mtToEn1EIuTIQYD5zOfAPal2rUBM5LOR6HZ9DsQ8k4pHrK7n9nAdNpBJO9bsnD69BYhDOjDTAYNcpOy3Nv+7ohtwaoG3Ex1wIHMTF4TxrsoTziUeeTaCmcB+M1td+Ru5IhKNvz+euKQbroNaBx2KpmpWBoT2GsGz5/5qq8kjesSLZ26snf3oPNm6pQBb9+6o75EbiLnu61sY8jGieD1o65AuEVQXQnvP2M+FpxGebQ2pw
X-OriginatorOrg: nokia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d4a68162-f3be-4cf5-dcce-08d798f848a4
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2020 13:47:23.6918 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5d471751-9675-428d-917b-70f44f9630b0
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JCep11jWLFenCOSjrj3Z075Fgk25tkHSQuq27w8aCZLVMTQ/4hQ/WG8WCuTTfAqGHF+jwKJSwhPtj4VYwsSBXX5MH92F6f9wrkQqEvwt1sc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR07MB4798
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_054727_408345_3903B16A 
X-CRM114-Status: GOOD (  15.72  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.139 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Boris Brezillon <bbrezillon@kernel.org>,
 Richard Weinberger <richard@nod.at>,
 Tudor Ambarus <tudor.ambarus@microchip.com>, stable@vger.kernel.org,
 Marek Vasut <marek.vasut@gmail.com>,
 Alexander Sverdlin <alexander.sverdlin@nokia.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Alexander Sverdlin <alexander.sverdlin@nokia.com>

Spansion S25FS-S family has an issue in Basic Flash Parameter Table:
DWORD-11 bits 7-4 specify write page size 512 bytes. In reality this
is configurable in the non-volatile CR3NV register and even factory
default configuration is "wrap at 256 bytes". So blind relying on BFPT
breaks write operation on these Flashes.

All this story is vendor-specific, so add the corresponding fixup hook
which first restores the safe page size of 256 bytes from
struct flash_info but checks is more performant 512 bytes configuration
is active and adjusts the page_size accordingly.

Cc: stable@vger.kernel.org
Fixes: f384b352c ("mtd: spi-nor: parse Serial Flash Discoverable Parameters (SFDP) tables")
Signed-off-by: Alexander Sverdlin <alexander.sverdlin@nokia.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 39 +++++++++++++++++++++++++++++++++++++--
 include/linux/mtd/spi-nor.h   |  5 +++++
 2 files changed, 42 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 73172d7..18f8705 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -1711,6 +1711,39 @@ static struct spi_nor_fixups mx25l25635_fixups = {
 	.post_bfpt = mx25l25635_post_bfpt_fixups,
 };
 
+/* Spansion S25FS-S SFDP workarounds */
+static int s25fs_s_post_bfpt_fixups(struct spi_nor *nor,
+	const struct sfdp_parameter_header *bfpt_header,
+	const struct sfdp_bfpt *bfpt,
+	struct spi_nor_flash_parameter *params)
+{
+	const struct flash_info *info = nor->info;
+	u8 read_opcode, buf;
+	int ret;
+
+	/* Default is safe */
+	params->page_size = info->page_size;
+
+	/*
+	 * But is the chip configured for more performant 512 bytes write page
+	 * size?
+	 */
+	read_opcode = nor->read_opcode;
+
+	nor->read_opcode = SPINOR_OP_RDAR;
+	ret = nor->read(nor, SPINOR_REG_CR3V, 1, &buf);
+	if (!ret && (buf & CR3V_02H_V))
+		params->page_size = 512;
+
+	nor->read_opcode = read_opcode;
+
+	return ret;
+}
+
+static const struct spi_nor_fixups s25fs_s_fixups = {
+	.post_bfpt = s25fs_s_post_bfpt_fixups,
+};
+
 /* NOTE: double check command sets and memory organization when you add
  * more nor chips.  This current list focusses on newer chips, which
  * have been converging on command sets which including JEDEC ID.
@@ -1903,7 +1936,8 @@ static const struct flash_info spi_nor_ids[] = {
 			SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ | USE_CLSR) },
 	{ "s25fl128s1", INFO6(0x012018, 0x4d0180, 64 * 1024, 256,
 			SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ | USE_CLSR) },
-	{ "s25fl256s0", INFO(0x010219, 0x4d00, 256 * 1024, 128, USE_CLSR) },
+	{ "s25fl256s0", INFO(0x010219, 0x4d00, 256 * 1024, 128, USE_CLSR)
+			.fixups = &s25fs_s_fixups, },
 	{ "s25fl256s1", INFO(0x010219, 0x4d01,  64 * 1024, 512, SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ | USE_CLSR) },
 	{ "s25fl512s",  INFO6(0x010220, 0x4d0080, 256 * 1024, 256,
 			SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
@@ -1913,7 +1947,8 @@ static const struct flash_info spi_nor_ids[] = {
 	{ "s25sl12800", INFO(0x012018, 0x0300, 256 * 1024,  64, 0) },
 	{ "s25sl12801", INFO(0x012018, 0x0301,  64 * 1024, 256, 0) },
 	{ "s25fl129p0", INFO(0x012018, 0x4d00, 256 * 1024,  64, SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ | USE_CLSR) },
-	{ "s25fl129p1", INFO(0x012018, 0x4d01,  64 * 1024, 256, SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ | USE_CLSR) },
+	{ "s25fl129p1", INFO(0x012018, 0x4d01,  64 * 1024, 256, SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ | USE_CLSR)
+			.fixups = &s25fs_s_fixups, },
 	{ "s25sl004a",  INFO(0x010212,      0,  64 * 1024,   8, 0) },
 	{ "s25sl008a",  INFO(0x010213,      0,  64 * 1024,  16, 0) },
 	{ "s25sl016a",  INFO(0x010214,      0,  64 * 1024,  32, 0) },
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index b3d360b..222eee9 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -114,6 +114,7 @@
 /* Used for Spansion flashes only. */
 #define SPINOR_OP_BRWR		0x17	/* Bank register write */
 #define SPINOR_OP_CLSR		0x30	/* Clear status register 1 */
+#define SPINOR_OP_RDAR		0x65	/* Read Any Register */
 
 /* Used for Micron flashes only. */
 #define SPINOR_OP_RD_EVCR      0x65    /* Read EVCR register */
@@ -149,6 +150,10 @@
 /* Status Register 2 bits. */
 #define SR2_QUAD_EN_BIT7	BIT(7)
 
+/* Used for Spansion flashes RDAR command only. */
+#define SPINOR_REG_CR3V		0x800004
+#define CR3V_02H_V		BIT(4)	/* Page Buffer Wrap */
+
 /* Supported SPI protocols */
 #define SNOR_PROTO_INST_MASK	GENMASK(23, 16)
 #define SNOR_PROTO_INST_SHIFT	16
-- 
2.4.6


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
