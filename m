Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A22799CF0D
	for <lists+linux-mtd@lfdr.de>; Mon, 26 Aug 2019 14:09:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zn527gMpuBW9NG/PtGx4BAgzTq/TM0Y/B5VwAHzmo24=; b=c9YUkJMfNi/Iaj
	fNQzGkGzOyVqF3hL0fZMzneIo9xFoJSGKqwZ/EFcHhkUc+Rr1qW3bFeL+sWdvsTFEhSvaFQVemjaw
	jeEBzbLMkhnfc+DZCRy200oWR10oqTkGDbWkIAjrC/uNprQ55pHOXTEz58uf3m0b0iYqsyOgfhspI
	D/Pbmnr1MXK7d33kv0HheAide+JOSQ7bkpU9YDuhu5TMiFFwfmRQ0hbYf0gHZv/tr9TIe3OGOwVPo
	OSZNIlHrGx+wMDhF9oI8hSwjSkfmOcZuVZ7/X/bhn/dR+prz2xWl9hEyUAetwyvsedrX9Y/wwfiDv
	2AJdnwfIz7T1OJ7KQGPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Dnv-0002Ji-NZ; Mon, 26 Aug 2019 12:08:59 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Dna-000273-Ua
 for linux-mtd@lists.infradead.org; Mon, 26 Aug 2019 12:08:41 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: V5xWt+wl5G2t4buljh8poCRIuHBa0kbXH9njm4sor3BfKQCTWbtGgnA16yUoevLphk3TZHga0r
 GVc5PQoBeoa9RtopE6sXKeuu/yjpjNQGlxPRM/K2kTlRIErIYBP7BMRW+KEPNgq09WFok3iDzZ
 ajVm1NroTzTHYtLcgQ2Y9NKDh2AxI57ddb0qnNEi+hcu9xfWlQvkTPdPw6mn2JTUeosng3+KRo
 9maFQ5mIqVZ20B+3648z4u33ZnCBCp2SzAwHkN4yURCfsFc7S/l/chW7Y+l86abWEQf9fomTvx
 aY4=
X-IronPort-AV: E=Sophos;i="5.64,433,1559545200"; d="scan'208";a="44989583"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 26 Aug 2019 05:08:38 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 26 Aug 2019 05:08:37 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 26 Aug 2019 05:08:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jEb9uXyy1NC/HsuzDU6xNp7zwFBhwAKelvPs391O+vLXH85inUSMLF8t4LYxLZCujRW/hHCgBirV1LrfeMcl9WnnoME2ysfGqLLC0OUpavESUZcKTb2SLyaiFIYjGTIlr4h1nTRr7f0GJtGlQdTn+p37tAg6vnVjZBpJWtwrQPvJLGSDb3Wpbn/KMCkEG75bakvPnWs7ZORJ7pop3YY3HKShGiQmXkVvpdGcLx8/OVs6vVq429pyamJFTrZ1ZiB9a6CHRTeaUHOzolmW0zyMHAn5XkcYrmq0dOLEYwz60lR4cXHIc2A0zhs7QqMKazb6u7aO51hDDa+Pt1LzD81RfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kNJWgqpt+XlI34xYN7jthxW+soDIOhBBBwQX2gs00SI=;
 b=aBcpBAggturLanfq0GJERZOE44Y6TBYKtmxSx3rltIYf6Qs8KzWd+U8yjocXUQjn4uyf405mY8hYNWUyTfEgosa2de+cl2iX0/MzxrmOuY4P01wTUzlo7UW492dpZ9MGHDKQxoKM0xBjD9CVCJtG7O7M0Jk4pjBLN/qDbHCMTIuvXMXMXFUCC04jUXsCxINJ3H2FLy2eYEGFliNuXU2sSlAy2EQqDXuT8hVpKMq4hj1FoO3SXaNj15VbnlccMo9i3VEQnBOHH+apa1F+z6DOjAmmIs95gooRfPD1budIZGTu+yo2tTYJBYKM4a0eh2VtDSmmPX1DTarhYvxer8j6ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kNJWgqpt+XlI34xYN7jthxW+soDIOhBBBwQX2gs00SI=;
 b=koMOH4neSD2x/haYSLqkToA1oW5kQe+m595VL9d7epiNJOArfPaYFpjv6HEEjVzkbcp0MnJqU8SMCQw5n8r4T7u2GqRgCEJIH4p7120GbgbmugZiUbt5Cn0XmjKbLWiteCoWQH+JRC+0fdveb1GsqmtWnjw5TrR6GjRrFZJ58Gk=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3678.namprd11.prod.outlook.com (20.178.252.94) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Mon, 26 Aug 2019 12:08:33 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5%7]) with mapi id 15.20.2199.021; Mon, 26 Aug 2019
 12:08:33 +0000
From: <Tudor.Ambarus@microchip.com>
To: <boris.brezillon@collabora.com>, <marek.vasut@gmail.com>,
 <vigneshr@ti.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <linux-mtd@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [RESEND PATCH v3 01/20] mtd: spi-nor: Regroup flash parameter and
 settings
Thread-Topic: [RESEND PATCH v3 01/20] mtd: spi-nor: Regroup flash parameter
 and settings
Thread-Index: AQHVXAb7Ihn2m9KKzka1TgfBbZC4ug==
Date: Mon, 26 Aug 2019 12:08:32 +0000
Message-ID: <20190826120821.16351-2-tudor.ambarus@microchip.com>
References: <20190826120821.16351-1-tudor.ambarus@microchip.com>
In-Reply-To: <20190826120821.16351-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR09CA0046.eurprd09.prod.outlook.com
 (2603:10a6:802:28::14) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f733f046-60ce-4375-3cc2-08d72a1e1d5e
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR11MB3678; 
x-ms-traffictypediagnostic: MN2PR11MB3678:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3678B760AA664C7497911B62F0A10@MN2PR11MB3678.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 01415BB535
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(39860400002)(346002)(366004)(396003)(376002)(199004)(189003)(486006)(2616005)(476003)(107886003)(316002)(14454004)(386003)(6506007)(76176011)(99286004)(52116002)(110136005)(478600001)(102836004)(4326008)(25786009)(36756003)(446003)(26005)(11346002)(50226002)(81156014)(66066001)(8676002)(53936002)(81166006)(8936002)(6512007)(6486002)(6436002)(3846002)(6116002)(186003)(86362001)(305945005)(2201001)(7736002)(2906002)(64756008)(66446008)(1076003)(71190400001)(5660300002)(71200400001)(256004)(14444005)(66946007)(66556008)(30864003)(66476007)(2501003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3678;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 3y/bJzodmOeTJUIo4MA/3vn+Gc+4ubMHgXIcAhNsoHyS6my55rcVThBH9b+PDHVHA7H2vFhsOTAdEaVpfDvEXpsXf/RM4cyt88Zoo7MHWbddDklSVKUUQdiS8P4PAnpTxcvN2FBwHK0qsZ9JZ7YJg3mfly9xXoX/42pb3k1V4SMlw4xW89yp5ZtzIy9PjnaY5cud+tubdYND36hYwmGVzBUxYg98vPfMkX7JrhH/aXFhvhauyYmEkZZ8JG8nVH4PC5o4Fd63PlB7nMskahlfm2c7TgiHqcrXBrFKR6V9b8lxuARWgj/lncvSVa8glj0EeGIHzZQYfm8ygUa014GJqGaMfqP/6x3F4ezmzds9YWODFi/3xhVPo/QphXoaUTC/UJZi0Yg5BajNGN2nspJM4sLjFDXX1IBnV/N7Gtwinw8=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f733f046-60ce-4375-3cc2-08d72a1e1d5e
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2019 12:08:32.9323 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jqeaXObmrcI+vw6PuRUNK1pUfc2ccLSl+p6Zxs5bVihj1AK2rZb1OoWN9oDzGem5tg4yxhWiW0nTX7nmzEuB444UvKW3Lf8H9m52NxK5Uh0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3678
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_050839_170829_B66C834E 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Tudor.Ambarus@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

The scope is to move all [FLASH-SPECIFIC] parameters and settings
from 'struct spi_nor' to 'struct spi_nor_flash_parameter'.

'struct spi_nor_flash_parameter' describes the hardware capabilities
and associated settings of the SPI NOR flash memory. It includes
legacy flash parameters and settings that can be overwritten by the
spi_nor_fixups hooks, or dynamically when parsing the JESD216
Serial Flash Discoverable Parameters (SFDP) tables. All SFDP params
and settings will fit inside 'struct spi_nor_flash_parameter'.

Move spi_nor_hwcaps related code to avoid forward declarations.
Add a forward declaration that we can't avoid: 'struct spi_nor' will
be used in 'struct spi_nor_flash_parameter'.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
v3: collect R-b

 drivers/mtd/spi-nor/spi-nor.c |  65 ------------
 include/linux/mtd/spi-nor.h   | 239 +++++++++++++++++++++++++++++-------------
 2 files changed, 164 insertions(+), 140 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 0597cb8257b0..d35dc6a97521 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -40,71 +40,6 @@
 #define SPI_NOR_MAX_ID_LEN	6
 #define SPI_NOR_MAX_ADDR_WIDTH	4
 
-struct spi_nor_read_command {
-	u8			num_mode_clocks;
-	u8			num_wait_states;
-	u8			opcode;
-	enum spi_nor_protocol	proto;
-};
-
-struct spi_nor_pp_command {
-	u8			opcode;
-	enum spi_nor_protocol	proto;
-};
-
-enum spi_nor_read_command_index {
-	SNOR_CMD_READ,
-	SNOR_CMD_READ_FAST,
-	SNOR_CMD_READ_1_1_1_DTR,
-
-	/* Dual SPI */
-	SNOR_CMD_READ_1_1_2,
-	SNOR_CMD_READ_1_2_2,
-	SNOR_CMD_READ_2_2_2,
-	SNOR_CMD_READ_1_2_2_DTR,
-
-	/* Quad SPI */
-	SNOR_CMD_READ_1_1_4,
-	SNOR_CMD_READ_1_4_4,
-	SNOR_CMD_READ_4_4_4,
-	SNOR_CMD_READ_1_4_4_DTR,
-
-	/* Octal SPI */
-	SNOR_CMD_READ_1_1_8,
-	SNOR_CMD_READ_1_8_8,
-	SNOR_CMD_READ_8_8_8,
-	SNOR_CMD_READ_1_8_8_DTR,
-
-	SNOR_CMD_READ_MAX
-};
-
-enum spi_nor_pp_command_index {
-	SNOR_CMD_PP,
-
-	/* Quad SPI */
-	SNOR_CMD_PP_1_1_4,
-	SNOR_CMD_PP_1_4_4,
-	SNOR_CMD_PP_4_4_4,
-
-	/* Octal SPI */
-	SNOR_CMD_PP_1_1_8,
-	SNOR_CMD_PP_1_8_8,
-	SNOR_CMD_PP_8_8_8,
-
-	SNOR_CMD_PP_MAX
-};
-
-struct spi_nor_flash_parameter {
-	u64				size;
-	u32				page_size;
-
-	struct spi_nor_hwcaps		hwcaps;
-	struct spi_nor_read_command	reads[SNOR_CMD_READ_MAX];
-	struct spi_nor_pp_command	page_programs[SNOR_CMD_PP_MAX];
-
-	int (*quad_enable)(struct spi_nor *nor);
-};
-
 struct sfdp_parameter_header {
 	u8		id_lsb;
 	u8		minor;
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index 3075ac73b171..77ba692d9348 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -334,6 +334,165 @@ struct spi_nor_erase_map {
 };
 
 /**
+ * struct spi_nor_hwcaps - Structure for describing the hardware capabilies
+ * supported by the SPI controller (bus master).
+ * @mask:		the bitmask listing all the supported hw capabilies
+ */
+struct spi_nor_hwcaps {
+	u32	mask;
+};
+
+/*
+ *(Fast) Read capabilities.
+ * MUST be ordered by priority: the higher bit position, the higher priority.
+ * As a matter of performances, it is relevant to use Octal SPI protocols first,
+ * then Quad SPI protocols before Dual SPI protocols, Fast Read and lastly
+ * (Slow) Read.
+ */
+#define SNOR_HWCAPS_READ_MASK		GENMASK(14, 0)
+#define SNOR_HWCAPS_READ		BIT(0)
+#define SNOR_HWCAPS_READ_FAST		BIT(1)
+#define SNOR_HWCAPS_READ_1_1_1_DTR	BIT(2)
+
+#define SNOR_HWCAPS_READ_DUAL		GENMASK(6, 3)
+#define SNOR_HWCAPS_READ_1_1_2		BIT(3)
+#define SNOR_HWCAPS_READ_1_2_2		BIT(4)
+#define SNOR_HWCAPS_READ_2_2_2		BIT(5)
+#define SNOR_HWCAPS_READ_1_2_2_DTR	BIT(6)
+
+#define SNOR_HWCAPS_READ_QUAD		GENMASK(10, 7)
+#define SNOR_HWCAPS_READ_1_1_4		BIT(7)
+#define SNOR_HWCAPS_READ_1_4_4		BIT(8)
+#define SNOR_HWCAPS_READ_4_4_4		BIT(9)
+#define SNOR_HWCAPS_READ_1_4_4_DTR	BIT(10)
+
+#define SNOR_HWCAPS_READ_OCTAL		GENMASK(14, 11)
+#define SNOR_HWCAPS_READ_1_1_8		BIT(11)
+#define SNOR_HWCAPS_READ_1_8_8		BIT(12)
+#define SNOR_HWCAPS_READ_8_8_8		BIT(13)
+#define SNOR_HWCAPS_READ_1_8_8_DTR	BIT(14)
+
+/*
+ * Page Program capabilities.
+ * MUST be ordered by priority: the higher bit position, the higher priority.
+ * Like (Fast) Read capabilities, Octal/Quad SPI protocols are preferred to the
+ * legacy SPI 1-1-1 protocol.
+ * Note that Dual Page Programs are not supported because there is no existing
+ * JEDEC/SFDP standard to define them. Also at this moment no SPI flash memory
+ * implements such commands.
+ */
+#define SNOR_HWCAPS_PP_MASK	GENMASK(22, 16)
+#define SNOR_HWCAPS_PP		BIT(16)
+
+#define SNOR_HWCAPS_PP_QUAD	GENMASK(19, 17)
+#define SNOR_HWCAPS_PP_1_1_4	BIT(17)
+#define SNOR_HWCAPS_PP_1_4_4	BIT(18)
+#define SNOR_HWCAPS_PP_4_4_4	BIT(19)
+
+#define SNOR_HWCAPS_PP_OCTAL	GENMASK(22, 20)
+#define SNOR_HWCAPS_PP_1_1_8	BIT(20)
+#define SNOR_HWCAPS_PP_1_8_8	BIT(21)
+#define SNOR_HWCAPS_PP_8_8_8	BIT(22)
+
+#define SNOR_HWCAPS_X_X_X	(SNOR_HWCAPS_READ_2_2_2 |	\
+				 SNOR_HWCAPS_READ_4_4_4 |	\
+				 SNOR_HWCAPS_READ_8_8_8 |	\
+				 SNOR_HWCAPS_PP_4_4_4 |		\
+				 SNOR_HWCAPS_PP_8_8_8)
+
+#define SNOR_HWCAPS_DTR		(SNOR_HWCAPS_READ_1_1_1_DTR |	\
+				 SNOR_HWCAPS_READ_1_2_2_DTR |	\
+				 SNOR_HWCAPS_READ_1_4_4_DTR |	\
+				 SNOR_HWCAPS_READ_1_8_8_DTR)
+
+#define SNOR_HWCAPS_ALL		(SNOR_HWCAPS_READ_MASK |	\
+				 SNOR_HWCAPS_PP_MASK)
+
+struct spi_nor_read_command {
+	u8			num_mode_clocks;
+	u8			num_wait_states;
+	u8			opcode;
+	enum spi_nor_protocol	proto;
+};
+
+struct spi_nor_pp_command {
+	u8			opcode;
+	enum spi_nor_protocol	proto;
+};
+
+enum spi_nor_read_command_index {
+	SNOR_CMD_READ,
+	SNOR_CMD_READ_FAST,
+	SNOR_CMD_READ_1_1_1_DTR,
+
+	/* Dual SPI */
+	SNOR_CMD_READ_1_1_2,
+	SNOR_CMD_READ_1_2_2,
+	SNOR_CMD_READ_2_2_2,
+	SNOR_CMD_READ_1_2_2_DTR,
+
+	/* Quad SPI */
+	SNOR_CMD_READ_1_1_4,
+	SNOR_CMD_READ_1_4_4,
+	SNOR_CMD_READ_4_4_4,
+	SNOR_CMD_READ_1_4_4_DTR,
+
+	/* Octal SPI */
+	SNOR_CMD_READ_1_1_8,
+	SNOR_CMD_READ_1_8_8,
+	SNOR_CMD_READ_8_8_8,
+	SNOR_CMD_READ_1_8_8_DTR,
+
+	SNOR_CMD_READ_MAX
+};
+
+enum spi_nor_pp_command_index {
+	SNOR_CMD_PP,
+
+	/* Quad SPI */
+	SNOR_CMD_PP_1_1_4,
+	SNOR_CMD_PP_1_4_4,
+	SNOR_CMD_PP_4_4_4,
+
+	/* Octal SPI */
+	SNOR_CMD_PP_1_1_8,
+	SNOR_CMD_PP_1_8_8,
+	SNOR_CMD_PP_8_8_8,
+
+	SNOR_CMD_PP_MAX
+};
+
+/* Forward declaration that will be used in 'struct spi_nor_flash_parameter' */
+struct spi_nor;
+
+/**
+ * struct spi_nor_flash_parameter - SPI NOR flash parameters and settings.
+ * Includes legacy flash parameters and settings that can be overwritten
+ * by the spi_nor_fixups hooks, or dynamically when parsing the JESD216
+ * Serial Flash Discoverable Parameters (SFDP) tables.
+ *
+ * @size:		the flash memory density in bytes.
+ * @page_size:		the page size of the SPI NOR flash memory.
+ * @hwcaps:		describes the read and page program hardware
+ *			capabilities.
+ * @reads:		read capabilities ordered by priority: the higher index
+ *                      in the array, the higher priority.
+ * @page_programs:	page program capabilities ordered by priority: the
+ *                      higher index in the array, the higher priority.
+ * @quad_enable:	enables SPI NOR quad mode.
+ */
+struct spi_nor_flash_parameter {
+	u64				size;
+	u32				page_size;
+
+	struct spi_nor_hwcaps		hwcaps;
+	struct spi_nor_read_command	reads[SNOR_CMD_READ_MAX];
+	struct spi_nor_pp_command	page_programs[SNOR_CMD_PP_MAX];
+
+	int (*quad_enable)(struct spi_nor *nor);
+};
+
+/**
  * struct flash_info - Forward declaration of a structure used internally by
  *		       spi_nor_scan()
  */
@@ -379,6 +538,10 @@ struct flash_info;
  * @quad_enable:	[FLASH-SPECIFIC] enables SPI NOR quad mode
  * @clear_sr_bp:	[FLASH-SPECIFIC] clears the Block Protection Bits from
  *			the SPI NOR Status Register.
+ * @params:		[FLASH-SPECIFIC] SPI-NOR flash parameters and settings.
+ *                      The structure includes legacy flash parameters and
+ *                      settings that can be overwritten by the spi_nor_fixups
+ *                      hooks, or dynamically when parsing the SFDP tables.
  * @priv:		the private data
  */
 struct spi_nor {
@@ -418,6 +581,7 @@ struct spi_nor {
 	int (*flash_is_locked)(struct spi_nor *nor, loff_t ofs, uint64_t len);
 	int (*quad_enable)(struct spi_nor *nor);
 	int (*clear_sr_bp)(struct spi_nor *nor);
+	struct spi_nor_flash_parameter params;
 
 	void *priv;
 };
@@ -463,81 +627,6 @@ static inline struct device_node *spi_nor_get_flash_node(struct spi_nor *nor)
 }
 
 /**
- * struct spi_nor_hwcaps - Structure for describing the hardware capabilies
- * supported by the SPI controller (bus master).
- * @mask:		the bitmask listing all the supported hw capabilies
- */
-struct spi_nor_hwcaps {
-	u32	mask;
-};
-
-/*
- *(Fast) Read capabilities.
- * MUST be ordered by priority: the higher bit position, the higher priority.
- * As a matter of performances, it is relevant to use Octal SPI protocols first,
- * then Quad SPI protocols before Dual SPI protocols, Fast Read and lastly
- * (Slow) Read.
- */
-#define SNOR_HWCAPS_READ_MASK		GENMASK(14, 0)
-#define SNOR_HWCAPS_READ		BIT(0)
-#define SNOR_HWCAPS_READ_FAST		BIT(1)
-#define SNOR_HWCAPS_READ_1_1_1_DTR	BIT(2)
-
-#define SNOR_HWCAPS_READ_DUAL		GENMASK(6, 3)
-#define SNOR_HWCAPS_READ_1_1_2		BIT(3)
-#define SNOR_HWCAPS_READ_1_2_2		BIT(4)
-#define SNOR_HWCAPS_READ_2_2_2		BIT(5)
-#define SNOR_HWCAPS_READ_1_2_2_DTR	BIT(6)
-
-#define SNOR_HWCAPS_READ_QUAD		GENMASK(10, 7)
-#define SNOR_HWCAPS_READ_1_1_4		BIT(7)
-#define SNOR_HWCAPS_READ_1_4_4		BIT(8)
-#define SNOR_HWCAPS_READ_4_4_4		BIT(9)
-#define SNOR_HWCAPS_READ_1_4_4_DTR	BIT(10)
-
-#define SNOR_HWCAPS_READ_OCTAL		GENMASK(14, 11)
-#define SNOR_HWCAPS_READ_1_1_8		BIT(11)
-#define SNOR_HWCAPS_READ_1_8_8		BIT(12)
-#define SNOR_HWCAPS_READ_8_8_8		BIT(13)
-#define SNOR_HWCAPS_READ_1_8_8_DTR	BIT(14)
-
-/*
- * Page Program capabilities.
- * MUST be ordered by priority: the higher bit position, the higher priority.
- * Like (Fast) Read capabilities, Octal/Quad SPI protocols are preferred to the
- * legacy SPI 1-1-1 protocol.
- * Note that Dual Page Programs are not supported because there is no existing
- * JEDEC/SFDP standard to define them. Also at this moment no SPI flash memory
- * implements such commands.
- */
-#define SNOR_HWCAPS_PP_MASK	GENMASK(22, 16)
-#define SNOR_HWCAPS_PP		BIT(16)
-
-#define SNOR_HWCAPS_PP_QUAD	GENMASK(19, 17)
-#define SNOR_HWCAPS_PP_1_1_4	BIT(17)
-#define SNOR_HWCAPS_PP_1_4_4	BIT(18)
-#define SNOR_HWCAPS_PP_4_4_4	BIT(19)
-
-#define SNOR_HWCAPS_PP_OCTAL	GENMASK(22, 20)
-#define SNOR_HWCAPS_PP_1_1_8	BIT(20)
-#define SNOR_HWCAPS_PP_1_8_8	BIT(21)
-#define SNOR_HWCAPS_PP_8_8_8	BIT(22)
-
-#define SNOR_HWCAPS_X_X_X	(SNOR_HWCAPS_READ_2_2_2 |	\
-				 SNOR_HWCAPS_READ_4_4_4 |	\
-				 SNOR_HWCAPS_READ_8_8_8 |	\
-				 SNOR_HWCAPS_PP_4_4_4 |		\
-				 SNOR_HWCAPS_PP_8_8_8)
-
-#define SNOR_HWCAPS_DTR		(SNOR_HWCAPS_READ_1_1_1_DTR |	\
-				 SNOR_HWCAPS_READ_1_2_2_DTR |	\
-				 SNOR_HWCAPS_READ_1_4_4_DTR |	\
-				 SNOR_HWCAPS_READ_1_8_8_DTR)
-
-#define SNOR_HWCAPS_ALL		(SNOR_HWCAPS_READ_MASK |	\
-				 SNOR_HWCAPS_PP_MASK)
-
-/**
  * spi_nor_scan() - scan the SPI NOR
  * @nor:	the spi_nor structure
  * @name:	the chip type name
-- 
2.9.5


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
