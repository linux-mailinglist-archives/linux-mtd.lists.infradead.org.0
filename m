Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3466E9CEE2
	for <lists+linux-mtd@lfdr.de>; Mon, 26 Aug 2019 14:02:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OvDROGb4YUihxPLk3XjVbTQsjzAl/rUyam4DspZPu20=; b=KQTnPf5Kr+rKwc
	AEIwtY4lCePtmoABOWReZaULjsyvfZXkXFcaChyiCpQZ18bmXe49SeyH7HTPNb6YzsQCwPq9qusKA
	e3ugeHuTSIBY4iWEyzBwNFzTlhbqcT8rrgfSXsTzkIHeVdG1hqjfD1o/vdR8a+IiJ+UBzAbz5j5Yx
	9VoNFhVqwOLfGmtk/PMxs3l2NciCJoZFEHXbYdjAbyhCd6PifMhLaVQut8EvR7f+gpZasqX86XFUK
	tgwdIkYTgU0iF+zHnRWvKGK5NSiHYs9drdzg3IjujApgExF+4w8iooWtb51w6GGxqDEHWKUCH9b5a
	4FoDPJ6/PRR8HkLvie7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Dhg-0007C3-QR; Mon, 26 Aug 2019 12:02:32 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2DhY-0007B7-BC
 for linux-mtd@lists.infradead.org; Mon, 26 Aug 2019 12:02:25 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: nxYrdt/2KVgtTNqUOOF7AqKX6xSGpalCQlk+/jVd525M3ULohz+rJUTFo1iR66D9YsHQEfLyq1
 KpWw60qHW7ByrPGj7kwGZ1S0371jMrJZZCREsM5nQLrCErX1MEbPCQ04kIVxVsMd8f6vKeVroR
 iNqcQWVWLbYleyKy1O2Sv+n/HjfG5EL22XrEnMin9n32titSQQ0nistlmC2A231JCK7HrZ0un1
 FRFS6QzWdsoRG7ask8paQ2wGIaUGMgSmHbd+WAnZh0ovP6Jm1Up57UueO9sOWhDFIbnh5QDqiR
 drw=
X-IronPort-AV: E=Sophos;i="5.64,433,1559545200"; d="scan'208";a="46587493"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 26 Aug 2019 05:02:23 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 26 Aug 2019 05:02:22 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 26 Aug 2019 05:02:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QwHaSwirFpIpMfdITTsD7E7JIsl8gZcuNJ5PBpywVJ7LY/5xzQQt38qKo4TrZG/jpiEeG+dcnlGToFTWSR/ao75IkhCNZLI9i9yjL7Z6BWfPdm5ZGZwZzHYhDH2b05cTrPGNeqQBq2DbcAiayzSKi/JlL5EWw+zFYdgDLQpUXVxLtmpZzFnjoR3t+ba0MAdfzZTSOiu42h1x1M6xJK0nRwprurLnKWG7nwTTe81Vu9UiwKw3RzwFwmE0M6pB1+swfFXLIIy2poURtkH4dP/26rUS6VVC2Oe47DEXPGn4TVcl7cn4nqfvjfXv0jsTOup6iMHZxzcZTaFLiyG+S+bAew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SEa3ZqPuW8cpxsoaY8eDsDepH+bxZ+OldsB82OwGtv8=;
 b=l2KTk9UH3i0b3Ba9zo2y0aNfo1+kQHxhun1/1eDZw1CI+aCEJrSzzs2jN5kA/T4pTX9aSXY32icq8pQghxd26StlkwgOIieCH5RebZwNK+telm3FqseWrn16HTkDzNADvSXk8uo10zo7DCQqf1lEzNQVCarnh0bq/bw2NcRc/1CGw7do8odd9ngT4XTNeRabmJ3crh1JiSA2dkMlnuBdJAVwz/nO3IAlCiz09S+9irpP04GAbTtxMKXDRnR8Kwzmp//xyfhag6iARuhMdjpJnUpUwijhXpSDCxBkq3L1XT2AM6FhC/GKOeNUf5C825y1uLpZ8kupBUmkzZhUklAb9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SEa3ZqPuW8cpxsoaY8eDsDepH+bxZ+OldsB82OwGtv8=;
 b=YD9zQWUyzYruK5VLjsaJO5P0cRwlsXO3GA684nNPN4A/gBHKOSDSzL6vyLIsGDGG4G1apStFGlrb6CLyr8Odx3obAeJ2BEvbwPPERq5N3NFIao6vZssvEDQDsatia43g8e7embmW8IiulgrHiRClolrIkSGvlbnb4lOREV95dEE=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3776.namprd11.prod.outlook.com (20.178.251.156) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Mon, 26 Aug 2019 12:02:22 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5%7]) with mapi id 15.20.2199.021; Mon, 26 Aug 2019
 12:02:21 +0000
From: <Tudor.Ambarus@microchip.com>
To: <boris.brezillon@collabora.com>, <marek.vasut@gmail.com>,
 <vigneshr@ti.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <linux-mtd@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v3 13/20] mtd: spi-nor: Add a ->convert_addr() method
Thread-Topic: [PATCH v3 13/20] mtd: spi-nor: Add a ->convert_addr() method
Thread-Index: AQHVXAYda1fnkG9HI0CF2HvmEZYmhg==
Date: Mon, 26 Aug 2019 12:02:21 +0000
Message-ID: <20190826120206.15025-4-tudor.ambarus@microchip.com>
References: <20190826120206.15025-1-tudor.ambarus@microchip.com>
In-Reply-To: <20190826120206.15025-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1P194CA0041.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:803:3c::30) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 093e56a0-820c-43ae-45fa-08d72a1d4021
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR11MB3776; 
x-ms-traffictypediagnostic: MN2PR11MB3776:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB37768849EAFC6EFCBC5AAE43F0A10@MN2PR11MB3776.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 01415BB535
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(376002)(346002)(136003)(39860400002)(189003)(199004)(81166006)(81156014)(8676002)(1076003)(2201001)(2501003)(14444005)(256004)(26005)(7736002)(99286004)(66066001)(2906002)(54906003)(76176011)(52116002)(316002)(186003)(50226002)(8936002)(66476007)(66556008)(64756008)(66946007)(66446008)(110136005)(53936002)(2616005)(36756003)(25786009)(5660300002)(386003)(305945005)(6506007)(102836004)(3846002)(6116002)(446003)(11346002)(478600001)(4326008)(86362001)(6436002)(6486002)(6512007)(14454004)(71200400001)(71190400001)(107886003)(476003)(486006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3776;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: jUZY6kLFaa3Y/MrcXT31O1O8ke7VyB5bCK4TFLNV5GT3iqLMFPbgCjn0nIrj4MNG0telFa/uExQTF8rjL+7s737UHoxEEWtGp4YU4cCrce/m9FHokUxpMNEO/bh9V7q6pDw33zH9IXmATc+fY73Q7ZrReK5zdB2A836RHRIRh2QwZMapcVHeqctNvT29UVppNtMYR7NHjuGD+x6TYtXdNueKdnKi4KuvaIRdhBAYemcRuPKEfzFT8szQcjB5KqwcH7jj7OycbLinmL5BY9XZ+EjiJgidhV02q0BEJS2d8G1jz3/ktELYExcTlBMR4wcz1jfLz3hboX6fF6x5KK9kMOSZ1ubOP+guyAk8O2CyIhYGMwm41ZyNCKlko/wEhm+lwBVkkDXdfoGolTHp463eXw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 093e56a0-820c-43ae-45fa-08d72a1d4021
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2019 12:02:21.7933 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lyHibv6MwxqNl/O1fZK5VQuWE3smCC+n61HKxlP/y9byUhYFRrzqFe6Almil31+pULV0cYevOtQCVGlyr9oOU8yavtTSN5OwuN97NZ1LW2g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3776
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_050224_501078_3DD588B6 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
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
Cc: boris.brezillon@bootlin.com, Tudor.Ambarus@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Boris Brezillon <boris.brezillon@bootlin.com>

In order to separate manufacturer quirks from the core we need to get
rid of all the manufacturer specific flags, like the
SNOR_F_S3AN_ADDR_DEFAULT one.

This can easily be replaced by a ->convert_addr() hook, which when
implemented will provide the core with an easy way to convert an
absolute address into something the flash understands.

Right now the only user are the S3AN chips, but other manufacturers
can implement it if needed.

Signed-off-by: Boris Brezillon <boris.brezillon@bootlin.com>
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
v3: no changes, rebase on previous commits

 drivers/mtd/spi-nor/spi-nor.c | 24 ++++++++++++++----------
 include/linux/mtd/spi-nor.h   | 17 ++++++++++-------
 2 files changed, 24 insertions(+), 17 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index c862a59ce9df..b96a7066a36c 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -899,10 +899,9 @@ static void spi_nor_unlock_and_unprep(struct spi_nor *nor, enum spi_nor_ops ops)
  * Addr can safely be unsigned int, the biggest S3AN device is smaller than
  * 4 MiB.
  */
-static loff_t spi_nor_s3an_addr_convert(struct spi_nor *nor, unsigned int addr)
+static u32 s3an_convert_addr(struct spi_nor *nor, u32 addr)
 {
-	unsigned int offset;
-	unsigned int page;
+	u32 offset, page;
 
 	offset = addr % nor->page_size;
 	page = addr / nor->page_size;
@@ -911,6 +910,14 @@ static loff_t spi_nor_s3an_addr_convert(struct spi_nor *nor, unsigned int addr)
 	return page | offset;
 }
 
+static u32 spi_nor_convert_addr(struct spi_nor *nor, loff_t addr)
+{
+	if (!nor->params.convert_addr)
+		return addr;
+
+	return nor->params.convert_addr(nor, addr);
+}
+
 /*
  * Initiate the erasure of a single sector
  */
@@ -918,8 +925,7 @@ static int spi_nor_erase_sector(struct spi_nor *nor, u32 addr)
 {
 	int i;
 
-	if (nor->flags & SNOR_F_S3AN_ADDR_DEFAULT)
-		addr = spi_nor_s3an_addr_convert(nor, addr);
+	addr = spi_nor_convert_addr(nor, addr);
 
 	if (nor->erase)
 		return nor->erase(nor, addr);
@@ -2535,8 +2541,7 @@ static int spi_nor_read(struct mtd_info *mtd, loff_t from, size_t len,
 	while (len) {
 		loff_t addr = from;
 
-		if (nor->flags & SNOR_F_S3AN_ADDR_DEFAULT)
-			addr = spi_nor_s3an_addr_convert(nor, addr);
+		addr = spi_nor_convert_addr(nor, addr);
 
 		ret = spi_nor_read_data(nor, addr, len, buf);
 		if (ret == 0) {
@@ -2680,8 +2685,7 @@ static int spi_nor_write(struct mtd_info *mtd, loff_t to, size_t len,
 		page_remain = min_t(size_t,
 				    nor->page_size - page_offset, len - i);
 
-		if (nor->flags & SNOR_F_S3AN_ADDR_DEFAULT)
-			addr = spi_nor_s3an_addr_convert(nor, addr);
+		addr = spi_nor_convert_addr(nor, addr);
 
 		write_enable(nor);
 		ret = spi_nor_write_data(nor, addr, page_remain, buf + i);
@@ -2748,7 +2752,7 @@ static int s3an_nor_scan(struct spi_nor *nor)
 		nor->mtd.erasesize = 8 * nor->page_size;
 	} else {
 		/* Flash in Default addressing mode */
-		nor->flags |= SNOR_F_S3AN_ADDR_DEFAULT;
+		nor->params.convert_addr = s3an_convert_addr;
 	}
 
 	return 0;
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index ea3bcac54dc2..35aad92a4ff8 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -237,13 +237,12 @@ enum spi_nor_option_flags {
 	SNOR_F_USE_FSR		= BIT(0),
 	SNOR_F_HAS_SR_TB	= BIT(1),
 	SNOR_F_NO_OP_CHIP_ERASE	= BIT(2),
-	SNOR_F_S3AN_ADDR_DEFAULT = BIT(3),
-	SNOR_F_READY_XSR_RDY	= BIT(4),
-	SNOR_F_USE_CLSR		= BIT(5),
-	SNOR_F_BROKEN_RESET	= BIT(6),
-	SNOR_F_4B_OPCODES	= BIT(7),
-	SNOR_F_HAS_4BAIT	= BIT(8),
-	SNOR_F_HAS_LOCK		= BIT(9),
+	SNOR_F_READY_XSR_RDY	= BIT(3),
+	SNOR_F_USE_CLSR		= BIT(4),
+	SNOR_F_BROKEN_RESET	= BIT(5),
+	SNOR_F_4B_OPCODES	= BIT(6),
+	SNOR_F_HAS_4BAIT	= BIT(7),
+	SNOR_F_HAS_LOCK		= BIT(8),
 };
 
 /**
@@ -496,6 +495,9 @@ struct spi_nor_locking_ops {
  *                      Table.
  * @quad_enable:	enables SPI NOR quad mode.
  * @set_4byte:		puts the SPI NOR in 4 byte addressing mode.
+ * @convert_addr:	converts an absolute address into something the flash
+ *                      will understand. Particularly useful when pagesize is
+ *                      not a power-of-2.
  * @locking_ops:	SPI NOR locking methods.
  */
 struct spi_nor_flash_parameter {
@@ -510,6 +512,7 @@ struct spi_nor_flash_parameter {
 
 	int (*quad_enable)(struct spi_nor *nor);
 	int (*set_4byte)(struct spi_nor *nor, bool enable);
+	u32 (*convert_addr)(struct spi_nor *nor, u32 addr);
 
 	const struct spi_nor_locking_ops *locking_ops;
 };
-- 
2.9.5


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
