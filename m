Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6044C6B88F
	for <lists+linux-mtd@lfdr.de>; Wed, 17 Jul 2019 10:49:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yXSqym5tSpOjCeHm6gPTwAYKOHXqgemIs+7DEsUAdfQ=; b=LhwXAxk9CYPT0A
	tIpMaPGYfUO1c8WqeD3tCfTfOjXrXD0CUG3bQS6Vi2KVrWmf1uk07njdwXAemSHInvxT9LwOTqZ9Z
	KM3VaPKgD6WEmNPFfu85tKu7f6YID21Tu0nBfR9EepLvig36o8BYSyl8CsdmLCkEvoNpCdF0CThUJ
	NCfF0yrjnQ0Gsi76oSrNnGd+AuxtvJU3bv7ky6BoRDcswinGltCgO+B30rRUZsBkXW59zY1Hh9ogS
	i9IFPATjbCiC2HLYA/38q6YSvhFN3TzMZCAMWPamZ2Ltx+tu7tDCG7h10vuWy3pBGSJQOA08ncooE
	E9WBbCmcmucrzUu+FCqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnfcf-0005so-OL; Wed, 17 Jul 2019 08:49:13 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnfbh-00050c-5x
 for linux-mtd@lists.infradead.org; Wed, 17 Jul 2019 08:48:14 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: gX6BS/Kk4iDwTPHVG3y98rywHzDncZqB1DcwtmmKxR4Gx7AeMMg9bZ4KThxfkHWdI3FYhCAbc1
 DmgpxVDBWGgFZdlH0CPpHFQe0d4S3CYxldevy+0l05PuJgOEdP9bRz3BYUn0zlFVh5SPFoNbIm
 pyIb//WxHazVMQ6hL4vqGUllmlaH4+YLauX4frecEBuGnkh7A+o1Q3+XYh24C7SBoiRJ2kpDoA
 yVw19uIF7m7JJbpg7D7qV4pCupWR4GWXqLkX2QdDuIuQpATsECBVrqGGSC9h8Mkqm7yrtd9oAJ
 jpQ=
X-IronPort-AV: E=Sophos;i="5.64,273,1559545200"; d="scan'208";a="40862768"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 17 Jul 2019 01:48:12 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.87.71) by
 chn-vm-ex01.mchp-main.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 17 Jul 2019 01:48:10 -0700
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 17 Jul 2019 01:48:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dSZsS3bvrbKRWlJwSn4wzjD34SMVNTU58oXknxHwS4Cz4R9sly04r42S9Imlut6sjMm4hTyR5ANekMSFLtl+CgCXtmEkIv6+vzFcAlbMGS4uQfjiMxL7iZLQmRLYQ1j71NIh7JnbzYqJWZEPnfLvo1UL7ASCYUuIXtY36RkQl7kUYlw6PDoooFIfuNTYa2F12VVyvSo7EBJXrJ/Y55SR2WbxMOv9Gwr/2AODSK1h+r58mYBJ55XV3Hgm/burMt0Izv9AnXdzWofVmUtZmNRvfz/zAw5fBbgeyIuHTYw1nXKGh0dFExiwpF/xOp1QWsfP9i1dGS68VYp+qVvzAW41YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0Gyv/WkOXrC67AmpBWOY9ByZkwsz3pPLvYEy3Z1Qe7s=;
 b=c2xl+k97BYZVc43Sit6y9X1lhPkIv3ddv/Xips7Qmy6RI6WynJAE+I54pSYG/g34VSJZiSR5Fc6NgLhtNlOPQN2qH7O2dhvzxKD9VjdSt1S49iVHK3vYAtekpe5HyzpcyVanqvn6Z6+mzW5Yn0gr9RhJhF80urZ9uYjmZt1vZBAC76NxfgfjnDfOMnvOOle8gKUd5Gq3aXFEXsfZyTXlccapc4BZP3WyuCm043P0JQPLDNxQOjPW46VYbCiI5QacOeQfRA7+ATtxTCPMKaaBjN6UBwvPz859K2Sd5tPtwky30//E/r0qgIjxPNUqKJMOQVt8hHI1KtgGPyK2h2Jt4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=microchip.com;dmarc=pass action=none
 header.from=microchip.com;dkim=pass header.d=microchip.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0Gyv/WkOXrC67AmpBWOY9ByZkwsz3pPLvYEy3Z1Qe7s=;
 b=tmDLcCXLcv9j6xx6uoLqfzw2h0IIapQ4S/+cBzV62S7GEUWgurBnVk9STJACtBJ7QxqqqIcgqTlZWmQ9BZ4WEz5ID2ZqdT/kJwnF/PeMwQk908koOZ70N8tuYNmDk9Y/PKqjQ3X6t7XVGBCEGopzp8iWkS10aY3khCHbrXz+4GA=
Received: from BN6PR11MB1842.namprd11.prod.outlook.com (10.175.98.146) by
 BN6SPR00MB254.namprd11.prod.outlook.com (10.173.236.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Wed, 17 Jul 2019 08:48:09 +0000
Received: from BN6PR11MB1842.namprd11.prod.outlook.com
 ([fe80::6515:912a:d113:5102]) by BN6PR11MB1842.namprd11.prod.outlook.com
 ([fe80::6515:912a:d113:5102%12]) with mapi id 15.20.2073.012; Wed, 17 Jul
 2019 08:48:09 +0000
From: <Tudor.Ambarus@microchip.com>
To: <vigneshr@ti.com>, <marek.vasut@gmail.com>
Subject: [PATCH 2/5] mtd: spi-nor: group the code about the write protection
 at power-up
Thread-Topic: [PATCH 2/5] mtd: spi-nor: group the code about the write
 protection at power-up
Thread-Index: AQHVPHxbXzKnWnPqC02RF1i1z4jGIA==
Date: Wed, 17 Jul 2019 08:48:09 +0000
Message-ID: <20190717084745.19322-3-tudor.ambarus@microchip.com>
References: <20190717084745.19322-1-tudor.ambarus@microchip.com>
In-Reply-To: <20190717084745.19322-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1P195CA0085.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:802:59::38) To BN6PR11MB1842.namprd11.prod.outlook.com
 (2603:10b6:404:101::18)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 725769e7-69a2-4086-391b-08d70a937e36
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BN6SPR00MB254; 
x-ms-traffictypediagnostic: BN6SPR00MB254:
x-microsoft-antispam-prvs: <BN6SPR00MB25462B82FA90ECC16C8E0E1F0C90@BN6SPR00MB254.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 01018CB5B3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(136003)(39860400002)(376002)(366004)(346002)(189003)(199004)(66066001)(102836004)(186003)(4326008)(99286004)(52116002)(76176011)(2616005)(486006)(386003)(6436002)(446003)(256004)(26005)(476003)(86362001)(53936002)(107886003)(6506007)(6486002)(66446008)(11346002)(14454004)(14444005)(6512007)(71190400001)(64756008)(71200400001)(25786009)(81156014)(110136005)(2501003)(478600001)(305945005)(7736002)(54906003)(1076003)(2906002)(5660300002)(36756003)(66476007)(81166006)(66556008)(6116002)(8676002)(50226002)(8936002)(316002)(3846002)(66946007)(68736007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6SPR00MB254;
 H:BN6PR11MB1842.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: nzq7bFE1U875o5XbhduQrdT6ebGJQqjWgphgFV/trK4gfqxcgt83HuNv03NRX6Kv3iKY+juKRzlFxtMOlBCgobQoBbanWZxHA/6pZ6Q2Ipw4G8VKkhE7LT6wV4Pr5R7uU4Ouf263Jjb9k0Rax0OZ+55DI0HtC4WXqihfoXCJB+CFj1VGfSZMwbI19Q4fwbhVADMcA8S/STRBe/GTqEsYPtU+B1bBCsDXLAgW0BiQB8opUTjCF4nZRCAxUVlATCNcLxu/uEqrdl09yCI29Ss5jYR+bRYw5/yTBHZtp95WzvSYITrXib6wptQakVugAS7FBZwDNEjeSemCpfU73poCns1MthOJvFvsJYb42219s65iNwUITz3rERfWKBV9HU79ka04DKwjPb1V7K83GKe5DXL3GmBlXYcrj14/vxkIlZ4=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 725769e7-69a2-4086-391b-08d70a937e36
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jul 2019 08:48:09.2026 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tudor.ambarus@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6SPR00MB254
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_014813_302767_9907796E 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
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
 Nicolas.Ferre@microchip.com, boris.brezillon@collabora.com,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 computersforpeace@gmail.com, dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

The write protection at power-up logic was split across functions
because of a dependency to spansion_quad_enable(). Group the code
in spi_nor_init() as the pointer to spansion_quad_enable() can be
retrieved from nor->quad_enable.

While touching this code, rename nor->clear_sr_bp() to
nor->disable_write_protection() to better indicate its scope: it
disables the default write protection after a power-on reset cycle.

No functional change intended.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 39 ++++++++++++++++++++++++---------------
 include/linux/mtd/spi-nor.h   |  6 +++---
 2 files changed, 27 insertions(+), 18 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 03cc788511d5..e9e441f91b68 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -3780,8 +3780,6 @@ static int spi_nor_init_params(struct spi_nor *nor,
 		default:
 			/* Kept only for backward compatibility purpose. */
 			params->quad_enable = spansion_quad_enable;
-			if (nor->clear_sr_bp)
-				nor->clear_sr_bp = spi_nor_spansion_clear_sr_bp;
 			break;
 		}
 
@@ -4034,11 +4032,32 @@ static int spi_nor_init(struct spi_nor *nor)
 {
 	int err;
 
-	if (nor->clear_sr_bp) {
-		err = nor->clear_sr_bp(nor);
+	/*
+	 * Atmel, SST, Intel/Numonyx, and others serial NOR tend to power up
+	 * with the software protection bits set.
+	 */
+	if (JEDEC_MFR(nor->info) == SNOR_MFR_ATMEL ||
+	    JEDEC_MFR(nor->info) == SNOR_MFR_INTEL ||
+	    JEDEC_MFR(nor->info) == SNOR_MFR_SST ||
+	    nor->info->flags & SPI_NOR_HAS_LOCK) {
+		nor->disable_write_protection = spi_nor_clear_sr_bp;
+
+		/*
+		 * In case of spansion flashes, when the configuration register
+		 * Quad Enable bit is one, only the the Write Status (01h)
+		 * command with two data bytes may be used to clear the block
+		 * protection bits.
+		 */
+		if (nor->quad_enable == spansion_quad_enable)
+			nor->disable_write_protection =
+				spi_nor_spansion_clear_sr_bp;
+	}
+
+	if (nor->disable_write_protection) {
+		err = nor->disable_write_protection(nor);
 		if (err) {
 			dev_err(nor->dev,
-				"fail to clear block protection bits\n");
+				"failed to unlock the flash at init\n");
 			return err;
 		}
 	}
@@ -4165,16 +4184,6 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
 	if (info->flags & SPI_S3AN)
 		nor->flags |=  SNOR_F_READY_XSR_RDY;
 
-	/*
-	 * Atmel, SST, Intel/Numonyx, and others serial NOR tend to power up
-	 * with the software protection bits set.
-	 */
-	if (JEDEC_MFR(nor->info) == SNOR_MFR_ATMEL ||
-	    JEDEC_MFR(nor->info) == SNOR_MFR_INTEL ||
-	    JEDEC_MFR(nor->info) == SNOR_MFR_SST ||
-	    nor->info->flags & SPI_NOR_HAS_LOCK)
-		nor->clear_sr_bp = spi_nor_clear_sr_bp;
-
 	/* Parse the Serial Flash Discoverable Parameters table. */
 	ret = spi_nor_init_params(nor, &params);
 	if (ret)
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index c4c2c5971284..6c3273760700 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -374,8 +374,8 @@ struct flash_info;
  * @flash_is_locked:	[FLASH-SPECIFIC] check if a region of the SPI NOR is
  *			completely locked
  * @quad_enable:	[FLASH-SPECIFIC] enables SPI NOR quad mode
- * @clear_sr_bp:	[FLASH-SPECIFIC] clears the Block Protection Bits from
- *			the SPI NOR Status Register.
+ * @disable_write_protection: [FLASH-SPECIFIC] disable write protection during
+ *                            power-up
  * @priv:		the private data
  */
 struct spi_nor {
@@ -412,7 +412,7 @@ struct spi_nor {
 	int (*flash_unlock)(struct spi_nor *nor, loff_t ofs, uint64_t len);
 	int (*flash_is_locked)(struct spi_nor *nor, loff_t ofs, uint64_t len);
 	int (*quad_enable)(struct spi_nor *nor);
-	int (*clear_sr_bp)(struct spi_nor *nor);
+	int (*disable_write_protection)(struct spi_nor *nor);
 
 	void *priv;
 };
-- 
2.9.5


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
