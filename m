Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9CF87BCB7
	for <lists+linux-mtd@lfdr.de>; Wed, 31 Jul 2019 11:13:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T+UZWgwouWLe/WrMKq3c/j6SfK3DMhPFm0SLltqvrZU=; b=afvlUZUH3gD5XJ
	2w5YR/XgLrCXSVqmbAdOkFeKwRX6vsUvGQfD7yr2U0OBaREODHecxDtwndIKFC+dOml2DmI4so5y1
	897Ljbcpq3crNA8Qnhfgx1/RK25CrsUK6Fxv9ax5Fh6vE5cb3ARfQGSZYIKjQQy0LrOOB3GqaF1hr
	pTxrOPGcJh0YQF9Z8amNZrHhVOwfxD7VSD0SUElbdnLLCUsDhpzJcgNWzNmZI69bWsogxaC9KnjJU
	H3wCPrzZy/R8tpkRGfybtsX4d0HzwpTWI6/gg2e941LOaL02nta8w+OseuS/Amqj+tblbx6O1olUF
	gFbhpakF7vPkmOT2JmnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hskfQ-0004h6-Ci; Wed, 31 Jul 2019 09:13:04 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hskel-0003wY-Dc
 for linux-mtd@lists.infradead.org; Wed, 31 Jul 2019 09:12:25 +0000
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
IronPort-SDR: RwLcJLpr/EaDDKiioYSWMIrxGeR3XlRqbU+BjqViVV42SUkt23T7sn6iLAPYlhVgzJhmy78d4t
 mljdQDQeMtB2brM25Af3ir3TRQOZ07U/Ikt3k43wkqVyCEnoVA5lGyo65sHgwamehcYlb1yFlJ
 TYI8+d4nGfkTdZR6DZ3J9uz5dpQN9aIEsNIfzukqk1eFqzOcekIoV+dTRj7lTziUfGHZdAXpAE
 eLz4qPyjt7AOoMMPWXngnmm1P4xAWZynnMeIbSM1Pzk/V18e8UPGRY4eMyc+BxQimGIPh7EuyH
 3do=
X-IronPort-AV: E=Sophos;i="5.64,329,1559545200"; d="scan'208";a="41824408"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 31 Jul 2019 02:12:21 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 31 Jul 2019 02:12:13 -0700
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 31 Jul 2019 02:12:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RUK2Q4U1K6kolfeMyyesJNGCLCf9+cx8uL3fVx7khorDB9kTxPyXbvHgpY3ZY7zd5uhLnwYRkkXuPwSn4+eNF7nXLnTxcxILRNS6uGS6L8vGZ1pOemTsMMKHtdIxUtTpovhgvlYpR2bZUoLpzDdNPE0QcVgHSZW9OPq5aOKl9KFMvYcP9pZc/GJaDH7an5y9HTnhOqntHihe3bzbaTFnW7ujyyC8XwHFj5jwaG5rPfyfs+Uu2YQwMSoDCjPBYrsbAmVLsGxSiWETpViUCn5aukQeY2Qbv/mbOuOa+QlnzLpYJrFS2T+sntpz9EV/noNTiRH4tRZtcD3bDTG1aXdGbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PTU4RSIjl6EOCx5G0+FMMG0Qu/fGNCcZwoNXFZOLpt0=;
 b=nl6t/3Uq56pNtzleG1N9qVw9T4DtaUoryF+RmMYSxOcKmlD2qeoMXBbMhDlFrc3+O02o4c3829g8yMp+54xBAPwEsCqAf+BW+pe+fjFOcdbZMCxpaKvDVoAZ+hPqGLSFgtY1kx2nySqn6OYl5lWr88YJs+n86noJDpJPDhyDqc4LXEujD23ld1xdPnzT6m2xUoABGxuGe8ItsiJJmcn8dQb8LqjsYzbAiy7dIIa8OGYi++HRTF5QsSirHQzH96DXLgASkMoHrD4NrgV6EtyxcRPlK6lgVOjiCUfPHuXO4Q54YyfISq/vxdJhNPT4hd7DHzuwMayw3AwBpNSNQ4D/iQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=microchip.com;dmarc=pass action=none
 header.from=microchip.com;dkim=pass header.d=microchip.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PTU4RSIjl6EOCx5G0+FMMG0Qu/fGNCcZwoNXFZOLpt0=;
 b=djlpA+Vvo/FZ6ghndKjuBjgeNDvycr8auajJTHMg8JVloalOS4AuuPLgQKzit+z3CYrZreiGTJYT7RP/9Ix0DWqsu9Bb24zsWYRgmQAUO2SGi6hn6rvS5Qeb00pDqkM9IutoyA0faUck/7DXOyG6ukug2DlstGrVfF+6b0wBWl4=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB4414.namprd11.prod.outlook.com (52.135.36.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.16; Wed, 31 Jul 2019 09:12:12 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::61d1:6408:89a2:8de5]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::61d1:6408:89a2:8de5%2]) with mapi id 15.20.2115.005; Wed, 31 Jul 2019
 09:12:12 +0000
From: <Tudor.Ambarus@microchip.com>
To: <boris.brezillon@collabora.com>, <marek.vasut@gmail.com>, <vigneshr@ti.com>
Subject: [PATCH 3/6] mtd: spi-nor: Add a ->convert_addr() method
Thread-Topic: [PATCH 3/6] mtd: spi-nor: Add a ->convert_addr() method
Thread-Index: AQHVR4AJ8T1LlMyH1UObdz4atBEwIQ==
Date: Wed, 31 Jul 2019 09:12:12 +0000
Message-ID: <20190731091145.27374-4-tudor.ambarus@microchip.com>
References: <20190731091145.27374-1-tudor.ambarus@microchip.com>
In-Reply-To: <20190731091145.27374-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR08CA0130.eurprd08.prod.outlook.com
 (2603:10a6:800:d4::32) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4348bc61-8ef4-4294-c0a0-08d715972c4a
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR11MB4414; 
x-ms-traffictypediagnostic: MN2PR11MB4414:
x-microsoft-antispam-prvs: <MN2PR11MB44147B5713EA9D52F8F2365BF0DF0@MN2PR11MB4414.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(396003)(39860400002)(376002)(346002)(199004)(189003)(14454004)(26005)(81166006)(6116002)(50226002)(76176011)(5660300002)(66066001)(2501003)(6512007)(25786009)(486006)(102836004)(107886003)(2201001)(110136005)(305945005)(3846002)(7736002)(68736007)(53936002)(6486002)(478600001)(86362001)(71200400001)(71190400001)(14444005)(186003)(476003)(256004)(8936002)(6436002)(7416002)(386003)(52116002)(54906003)(316002)(66946007)(81156014)(11346002)(2616005)(2906002)(64756008)(4326008)(446003)(99286004)(36756003)(66556008)(8676002)(66476007)(66446008)(1076003)(6506007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4414;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: qKX38Amk+5xLjWWMTzhwwAL0iLvUu/GYbn3Er2TQ7W+h1BhlcfGhhOTvUqnkDESuK8++ng2jHyq2tk5ykKeB5oNX9A/BRmYFAnB1NcLBgPBPT4dS6T1jWlysQWuW8OlOqdwYNBxRbjRRFJT+dq1zfSTgbYAeZF6QJB0w8ZF/sqasYP0/1opmkd8RUAtKlKeikNonMxNwZgMpswitqRdr0AL1ici1758FYhjRxOvxfBAKg6Ayuwu4F1LrlS23es9L8Cnp4HjVZzzvJvuIoiB1mqKiVCboqC2vqwXYQte6Iv2U+AVWKAU959sh+L2o3jaNESB4k2siKVgZyCv5Hc0nCT+tZbaFS4Sv4YfkD2uc5CTE0ay173R1yh4/7I7G4grw2R2VCeDGpBAfxVieU0/nBXe3Zmfh6znnBQ6QBnXMMBM=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4348bc61-8ef4-4294-c0a0-08d715972c4a
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 09:12:12.4726 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tudor.ambarus@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4414
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_021223_657787_C68B2538 
X-CRM114-Status: GOOD (  14.42  )
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
Cc: Tudor.Ambarus@microchip.com, richard@nod.at, linux-kernel@vger.kernel.org,
 boris.brezillon@bootlin.com, linux-mtd@lists.infradead.org,
 miquel.raynal@bootlin.com, computersforpeace@gmail.com, dwmw2@infradead.org
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
 drivers/mtd/spi-nor/spi-nor.c | 24 ++++++++++++++----------
 include/linux/mtd/spi-nor.h   | 15 +++++++++------
 2 files changed, 23 insertions(+), 16 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 30f9d524e72f..3b6810d76a79 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -1045,10 +1045,9 @@ static void spi_nor_unlock_and_unprep(struct spi_nor *nor, enum spi_nor_ops ops)
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
@@ -1057,6 +1056,14 @@ static loff_t spi_nor_s3an_addr_convert(struct spi_nor *nor, unsigned int addr)
 	return page | offset;
 }
 
+static u32 spi_nor_convert_addr(struct spi_nor *nor, loff_t addr)
+{
+	if (!nor->convert_addr)
+		return addr;
+
+	return nor->convert_addr(nor, addr);
+}
+
 /*
  * Initiate the erasure of a single sector
  */
@@ -1065,8 +1072,7 @@ static int spi_nor_erase_sector(struct spi_nor *nor, u32 addr)
 	u8 buf[SPI_NOR_MAX_ADDR_WIDTH];
 	int i;
 
-	if (nor->flags & SNOR_F_S3AN_ADDR_DEFAULT)
-		addr = spi_nor_s3an_addr_convert(nor, addr);
+	addr = spi_nor_convert_addr(nor, addr);
 
 	if (nor->erase)
 		return nor->erase(nor, addr);
@@ -2675,8 +2681,7 @@ static int spi_nor_read(struct mtd_info *mtd, loff_t from, size_t len,
 	while (len) {
 		loff_t addr = from;
 
-		if (nor->flags & SNOR_F_S3AN_ADDR_DEFAULT)
-			addr = spi_nor_s3an_addr_convert(nor, addr);
+		addr = spi_nor_convert_addr(nor, addr);
 
 		ret = spi_nor_read_data(nor, addr, len, buf);
 		if (ret == 0) {
@@ -2820,8 +2825,7 @@ static int spi_nor_write(struct mtd_info *mtd, loff_t to, size_t len,
 		page_remain = min_t(size_t,
 				    nor->page_size - page_offset, len - i);
 
-		if (nor->flags & SNOR_F_S3AN_ADDR_DEFAULT)
-			addr = spi_nor_s3an_addr_convert(nor, addr);
+		addr = spi_nor_convert_addr(nor, addr);
 
 		write_enable(nor);
 		ret = spi_nor_write_data(nor, addr, page_remain, buf + i);
@@ -2889,7 +2893,7 @@ static int s3an_nor_scan(struct spi_nor *nor)
 		nor->mtd.erasesize = 8 * nor->page_size;
 	} else {
 		/* Flash in Default addressing mode */
-		nor->flags |= SNOR_F_S3AN_ADDR_DEFAULT;
+		nor->convert_addr = s3an_convert_addr;
 	}
 
 	return 0;
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index 185ca11bfb63..af04d3117188 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -238,12 +238,11 @@ enum spi_nor_option_flags {
 	SNOR_F_USE_FSR		= BIT(0),
 	SNOR_F_HAS_SR_TB	= BIT(1),
 	SNOR_F_NO_OP_CHIP_ERASE	= BIT(2),
-	SNOR_F_S3AN_ADDR_DEFAULT = BIT(3),
-	SNOR_F_READY_XSR_RDY	= BIT(4),
-	SNOR_F_USE_CLSR		= BIT(5),
-	SNOR_F_BROKEN_RESET	= BIT(6),
-	SNOR_F_4B_OPCODES	= BIT(7),
-	SNOR_F_HAS_4BAIT	= BIT(8),
+	SNOR_F_READY_XSR_RDY	= BIT(3),
+	SNOR_F_USE_CLSR		= BIT(4),
+	SNOR_F_BROKEN_RESET	= BIT(5),
+	SNOR_F_4B_OPCODES	= BIT(6),
+	SNOR_F_HAS_4BAIT	= BIT(7),
 };
 
 /**
@@ -380,6 +379,9 @@ struct flash_info;
  * @quad_enable:	[FLASH-SPECIFIC] enables SPI NOR quad mode
  * @set_4byte:		[FLASH-SPECIFIC] puts the SPI NOR in 4 byte addressing
  *                      mode
+ * @convert_addr:	[FLASH-SPECIFIC] convert an absolute address into
+ *                      something the flash will understand. Particularly
+ *                      useful when pagesize is not a power-of-2
  * @disable_write_protection: [FLASH-SPECIFIC] disable write protection during
  *                            power-up
  *			completely locked
@@ -423,6 +425,7 @@ struct spi_nor {
 	int (*flash_is_locked)(struct spi_nor *nor, loff_t ofs, uint64_t len);
 	int (*quad_enable)(struct spi_nor *nor);
 	int (*set_4byte)(struct spi_nor *nor, bool enable);
+	u32 (*convert_addr)(struct spi_nor *nor, u32 addr);
 	int (*disable_write_protection)(struct spi_nor *nor);
 
 	const struct spi_nor_locking_ops *locking_ops;
-- 
2.9.5


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
