Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 291907BCCD
	for <lists+linux-mtd@lfdr.de>; Wed, 31 Jul 2019 11:19:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5j82oMOU2d1Hs2gBuj26CfSFdJCP/v5InMCfy/Z2uGc=; b=gh/vYR9nLPN0yw
	lPH45MSo+PIWTP1jyFLoEzRd2bqDbJyQHpGzOMI5W1/SR+h3AOVsFzEoACxSOn/4Y6hVHPvSNHZ19
	6bituYwbc+fk1hw7l0Bk0fKidv88rKIB2xkAGvh/KbNVmDC9WxNhOt79rWEhJl0Ww2GXB5/PCbNGS
	Bw/v10h5RF2QfaiSJZ1WN3h1q1t4XU5LqqDAyGVo4jWUhZgb6e5VPwpp5au4LJ5ULWT07urQ8vg7O
	5sqWTVxmEdTpgP7YgAlAGO7Ul96vQC27xVtJplrO0dihLONk/XY8kk+m6V1Of3FaiqFf3U9gWNukD
	aGDKdWoW8dM7/TNARyXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsklq-0008CW-71; Wed, 31 Jul 2019 09:19:42 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hskkz-0007hW-Hk
 for linux-mtd@lists.infradead.org; Wed, 31 Jul 2019 09:18:50 +0000
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
IronPort-SDR: KcnNm5AHJ1n8oPHcMcTgeZeaqCrJpDSMKqJdJAzdDBYReHw2IwXY3Y0n8I/Bd+IMQyB1CPF0aa
 5LBHa3R8rs8YYSsI7KRkvdNJF2GLkvizz/CQishIYU5O9hl3S+O7WUuo2gdej3ekroLGMg6pku
 oa9+tawhEfyNw3gh9ielGAgezStJAgLmIFkNiK6D5HjjFC2qu7MVmmmn14wIyx6V8u8265Dphz
 Pjo714ZI+9A74trnrHfA2sp8suUG4gfnkSfVGb/QwsliggBgHi8baRcnAHBbt9JEymBNJlOg76
 35M=
X-IronPort-AV: E=Sophos;i="5.64,329,1559545200"; d="scan'208";a="42632137"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 31 Jul 2019 02:18:49 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 31 Jul 2019 02:18:47 -0700
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 31 Jul 2019 02:18:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ct2eKPb4Kg/+oviPCy+qMqsc6nAFVKbiSckGWb2L/aZahAmX51coipAdlhcPS4EEts556mxGI5dAU6fGi5xnggNyDSQjDnjvs+pwOF6XOD9QPDJTCsI3zv5Zw4NJYP4NO2Hyaun9dKeYHTHX3wbohXesSYO/ezfVGJ9pNTzdKYs9TjliuIn0OyCOwNEYAtzeMwjSBKJc8xFbkDUNULXOIhS5u449H+ZJYzoODD9L9QqAs5/DK6Ipe7jUtXW3+fuv5rwy18d9Ymcqd2jlOMnzr77YRtLI/tmY9OsuuKE0z22fH3M6pD0+yqZ9bUYhem0GAWW3XodhN0kmAMf9XmJQ1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lPfgwzHDJqRsHk7WCmq552rS8TbxTVnH++Y33LrGews=;
 b=V4M/KQZHYvZEY+O9QfckRAM1hR93+GpQMF559YMJkMFuighPT2FmrM0zKFanqVbrIoI6K9sDe1PP15VDocwohPxcunQDS22DVXd30tESPO5x2slIgmbGZ7QA0ZQkUQwCRh4hbXBtWv4HdC5STUpRg+fFarq71A7zWe1WMMKoai15JcFK1gLtOsplJ6+paEsXf9baWt8Q7eR1MT3Qt2ggO8CSbwnetyBw5lbZWw0vF0/0no4jMsV1wbQ5WWxWWYlF1+WAc8dz2206G4jnu7d1SK2+j3pcoDz0zh4KGjlkU4e9wAE4B8SINtCaPs0Lb2vQr1BDYn3gV0/urB2pwykeqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=microchip.com;dmarc=pass action=none
 header.from=microchip.com;dkim=pass header.d=microchip.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lPfgwzHDJqRsHk7WCmq552rS8TbxTVnH++Y33LrGews=;
 b=XDJVCw5PW3UwaapxUqdg+GAkpbq9RrgFzTAoMm3ubSUz/iWjay1ndSmGXnvxpX1brkX2JR7mf2ub/eHKhb7dc5lCBIKj+cnqXDjtDqyG4Eduv4Hv+/fWxmMcoF0BwY7L27D52qxs+C6RO3xKk4eDmvxIuE3jHCKqCSfy3o69Uvs=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3680.namprd11.prod.outlook.com (20.178.252.96) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.14; Wed, 31 Jul 2019 09:18:47 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::61d1:6408:89a2:8de5]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::61d1:6408:89a2:8de5%2]) with mapi id 15.20.2115.005; Wed, 31 Jul 2019
 09:18:47 +0000
From: <Tudor.Ambarus@microchip.com>
To: <boris.brezillon@collabora.com>, <marek.vasut@gmail.com>, <vigneshr@ti.com>
Subject: [PATCH 2/3] mtd: spi_nor: Introduce spi_nor_set_addr_width()
Thread-Topic: [PATCH 2/3] mtd: spi_nor: Introduce spi_nor_set_addr_width()
Thread-Index: AQHVR4D1RBgNHxMtYECno2oX6R9FXA==
Date: Wed, 31 Jul 2019 09:18:47 +0000
Message-ID: <20190731091835.27766-3-tudor.ambarus@microchip.com>
References: <20190731091835.27766-1-tudor.ambarus@microchip.com>
In-Reply-To: <20190731091835.27766-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR04CA0079.eurprd04.prod.outlook.com
 (2603:10a6:803:64::14) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4063977b-01ad-4f1f-1d70-08d7159817c9
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR11MB3680; 
x-ms-traffictypediagnostic: MN2PR11MB3680:
x-microsoft-antispam-prvs: <MN2PR11MB3680C47A8021F5F1CB5E9AECF0DF0@MN2PR11MB3680.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(39860400002)(346002)(376002)(136003)(199004)(189003)(8676002)(81166006)(4326008)(81156014)(53936002)(7736002)(256004)(25786009)(68736007)(8936002)(50226002)(478600001)(6486002)(11346002)(2906002)(107886003)(14454004)(2501003)(102836004)(86362001)(6436002)(71190400001)(71200400001)(476003)(1076003)(305945005)(5660300002)(66556008)(66476007)(64756008)(66946007)(2201001)(66446008)(36756003)(486006)(3846002)(99286004)(76176011)(6512007)(6506007)(66066001)(386003)(446003)(316002)(6116002)(26005)(54906003)(186003)(110136005)(52116002)(2616005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3680;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: qqGYGA+cGBR6PfOF+nUpu7UOdUxdN4opyZ0ghBqEZBX51iP7NIVQSbo4n6bzzBbfSRWMKE58b4T3jfKH2sPrw05MwdrYkHibPUjgEL6qtl53jwxoirJ84CsjxkefWoH1VrZtTih65vx408rt0xbPPnClwuy/uuRHDTbI0gaZ0mPQi0pX0G91FGviSTuoZ1hDV0bY1N87QtH87t5LpbMe7mZQu8ekEVI36dIMDuQorDktP7HngZxAzP0FAc5lMM+cfL9Wp5r8V7HYPBXBDcNzol3UIbRKyHWGS1d4Kw5gvBTZZK6ByWV4nrCt4GPDe7UsOklO9qHTtMZ6SMo7Aa6SI5kUkHMiCB31QNzojg+WAPF7N1nIUMG7G5hDimXP7CU9WKe8HqgmXV3lTJRh5R/Vc8o1M9D66RZi39GqjDsjjTk=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4063977b-01ad-4f1f-1d70-08d7159817c9
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 09:18:47.5793 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tudor.ambarus@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3680
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_021849_619934_38FB99BC 
X-CRM114-Status: GOOD (  11.27  )
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
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 computersforpeace@gmail.com, dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

Parsing of flash parameters were interleaved with setting of the
nor addr width. Dedicate a function for setting nor addr width.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 50 ++++++++++++++++++++++++++-----------------
 1 file changed, 30 insertions(+), 20 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index fba941a932cc..c322d7cd8216 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -4773,6 +4773,33 @@ static const struct flash_info *spi_nor_match_id(const char *name)
 	return NULL;
 }
 
+static int spi_nor_set_addr_width(struct spi_nor *nor)
+{
+	if (nor->addr_width) {
+		/* already configured from SFDP */
+	} else if (nor->info->addr_width) {
+		nor->addr_width = nor->info->addr_width;
+	} else if (nor->mtd.size > 0x1000000) {
+		/* enable 4-byte addressing if the device exceeds 16MiB */
+		nor->addr_width = 4;
+	} else {
+		nor->addr_width = 3;
+	}
+
+	if (nor->addr_width > SPI_NOR_MAX_ADDR_WIDTH) {
+		dev_err(nor->dev, "address width is too large: %u\n",
+			nor->addr_width);
+		return -EINVAL;
+	}
+
+	/* Set 4byte opcodes when possible. */
+	if (nor->addr_width == 4 && nor->flags & SNOR_F_4B_OPCODES &&
+	    !(nor->flags & SNOR_F_HAS_4BAIT))
+		spi_nor_set_4byte_opcodes(nor);
+
+	return 0;
+}
+
 int spi_nor_scan(struct spi_nor *nor, const char *name,
 		 const struct spi_nor_hwcaps *hwcaps)
 {
@@ -4903,29 +4930,12 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
 	if (ret)
 		return ret;
 
-	if (nor->addr_width) {
-		/* already configured from SFDP */
-	} else if (info->addr_width) {
-		nor->addr_width = info->addr_width;
-	} else if (mtd->size > 0x1000000) {
-		/* enable 4-byte addressing if the device exceeds 16MiB */
-		nor->addr_width = 4;
-	} else {
-		nor->addr_width = 3;
-	}
-
 	if (info->flags & SPI_NOR_4B_OPCODES)
 		nor->flags |= SNOR_F_4B_OPCODES;
 
-	if (nor->addr_width == 4 && nor->flags & SNOR_F_4B_OPCODES &&
-	    !(nor->flags & SNOR_F_HAS_4BAIT))
-		spi_nor_set_4byte_opcodes(nor);
-
-	if (nor->addr_width > SPI_NOR_MAX_ADDR_WIDTH) {
-		dev_err(dev, "address width is too large: %u\n",
-			nor->addr_width);
-		return -EINVAL;
-	}
+	ret = spi_nor_set_addr_width(nor);
+	if (ret)
+		return ret;
 
 	/* Send all the required SPI flash commands to initialize device */
 	ret = spi_nor_init(nor);
-- 
2.9.5


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
