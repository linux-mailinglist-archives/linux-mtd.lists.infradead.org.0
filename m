Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD3929CEDB
	for <lists+linux-mtd@lfdr.de>; Mon, 26 Aug 2019 14:01:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9jqzsUxJor9ZI5eksno3ug1nX9qoGsV3y5hZ23j9qj0=; b=udByWr2Oc7r3kR
	Bdsk8vT37hmrMb39mLKq8q9IXFpt1jIUKz1vCBspwibyfPNE1uGlz573A+ITQwObPbeEg6EaNienI
	gB7g4WJDnHmSEhfRaM4P3FE2v8wYUdP7ypgZsgI/Pu5D7uva/0NYhwt7SIcQP0tq1mPQF6JlkxG4F
	AbJgiilQZ/qxMhdDNZq5w1OCYedDytbCePG93y5zaSROJtI2MGf3fy0VL7lcYESdPcAfS4Xe3UqrS
	BoI/JLbmW+cMX4y01zs43HGQsL5+hZy3ATnW4arkMfytemnq7tIT1YyCxqb8wxWLdud+FiO2TTERs
	IEtXmxl6ytM++WLVm2bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2DgC-00060W-TX; Mon, 26 Aug 2019 12:01:00 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2DeK-0002oT-4c
 for linux-mtd@lists.infradead.org; Mon, 26 Aug 2019 11:59:06 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: hE5SYeNt8nJgcF1VeTxwUVRkxEqwBp9Sxq5fkqT3Nzr/CKiKHk7d8J6CYeQW6LOWdH8WIfYTat
 eRpbxDjSgikDvWYTmveSqkchlvMU/yMpCAuCnclY3nEO1lDNgfqFW0YCgR06VseccYTtsZKBex
 Xy9P+wsrdQhVnEmZCFOulYMum0y5Kvtx/9Sbyk3MuNoMyToqbRpar30oZJ5Qxwqxihb9yxP0v5
 2KH2bERSiP1LQu08Nq8gVCqgGkzBH56XzO/4tKPfAk8/ZcalCvGVAA4L37mwxfOQOZefkw/tUq
 YRg=
X-IronPort-AV: E=Sophos;i="5.64,433,1559545200"; d="scan'208";a="43684497"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 26 Aug 2019 04:59:00 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 26 Aug 2019 04:58:57 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 26 Aug 2019 04:58:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QPcH0PpUPXOKhxXIGoaNdaOx9gT8iKfW8miMg1LmM2suyQkJ3r7oHQ/biF9I4OyCKTK5MUduFsS6xlOCxvyhKtPgb24eQWfj12ixwO4eSrHztLiDZ2M7U8cum6s9qJXO7zw0TLiLAgZjGLRqaQ2ZXEJQwgkxU6+wFu1U7DECXU5NNLGEzW1ah4DGfxvDRP9A7/8O6+dJE4CnPD4Bt6huT04mk/gMML/1v6HhlrxfAjtzCE+QDGyE3riR25CMvGBxShIcVUhpd6LUfqNF+Um+CWpO6mVlrrqMttqKK/pFHCq1aaX31xalVf0hZTBiJ7oAzJ9zrkgxk7TXA0zRHomHJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mr6WprtHHL/51al8o4FDNLNd4upljb84M2qM0FgfKmY=;
 b=g/u83fHQ9SM44/ccSuKdP+KOnyKbi42bDZLijTRszmbRhOXHsoQCtfW/tvl3nbZHYNvvvtX66qZK1g2GY6PnOJ+4HkapmdZGl8aRvxeI5vBfCZQYvmh11/lVlbwgZyLnFw3eNfOQUi2YeQRk+ReQ5h3xryGXlWSpCXLAnalOGJCmffRufC6FGsIBu2k8pWnYL6aWFbUPWSL1zDQcq8SnqU63lmMV0XqIMkvDaisrefoiZpmmYzkvA9qIRAtmtdyd7R8b3TbcRqq/EFoSNeVkM/iDtM6T62bO++6pgsanCJ5M3WPw/2AN78WW0JK7nSgFHzJymC40cpl9MoIsfCRLRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mr6WprtHHL/51al8o4FDNLNd4upljb84M2qM0FgfKmY=;
 b=j1U+TOE29QyxfxcCcyBsFY4dNfvPoGWkV1XrmTcid/12yD1E+0rCyKxrkcJmvhT82wcdZeHVMGqxZlheUqoQmTXRZzVuMvOkODPQRqORUyshclJH/1fRncnqE0K6XuFsVm8qJggMJqKOfLcQ0xW+k0PtHgG1hdXJgqyFNY3HFx0=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB4350.namprd11.prod.outlook.com (52.135.39.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Mon, 26 Aug 2019 11:58:57 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5%7]) with mapi id 15.20.2199.021; Mon, 26 Aug 2019
 11:58:57 +0000
From: <Tudor.Ambarus@microchip.com>
To: <boris.brezillon@collabora.com>, <marek.vasut@gmail.com>,
 <vigneshr@ti.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <linux-mtd@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v3 08/20] mtd: spi-nor: Split spi_nor_init_params()
Thread-Topic: [PATCH v3 08/20] mtd: spi-nor: Split spi_nor_init_params()
Thread-Index: AQHVXAWjUAUU37DYr0iIfs/7GJ/k1w==
Date: Mon, 26 Aug 2019 11:58:56 +0000
Message-ID: <20190826115833.14913-9-tudor.ambarus@microchip.com>
References: <20190826115833.14913-1-tudor.ambarus@microchip.com>
In-Reply-To: <20190826115833.14913-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR09CA0095.eurprd09.prod.outlook.com
 (2603:10a6:803:78::18) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d94498a6-6d8b-4f2d-c108-08d72a1cc61c
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR11MB4350; 
x-ms-traffictypediagnostic: MN2PR11MB4350:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4350A07528194BF0F5AAD652F0A10@MN2PR11MB4350.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 01415BB535
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(396003)(376002)(366004)(39860400002)(189003)(199004)(386003)(66476007)(6506007)(66556008)(64756008)(81156014)(66446008)(66946007)(14444005)(256004)(8676002)(81166006)(71200400001)(71190400001)(25786009)(6512007)(1076003)(6436002)(8936002)(107886003)(53936002)(36756003)(6486002)(5660300002)(4326008)(50226002)(486006)(86362001)(66066001)(2616005)(476003)(305945005)(3846002)(186003)(76176011)(52116002)(99286004)(6116002)(478600001)(2501003)(7736002)(446003)(11346002)(14454004)(2906002)(110136005)(2201001)(316002)(26005)(102836004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4350;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: XGonMWU6BJEgOv2bpXO+9aM9z8VC6apJHkR3874LX1sm7jpphnj8Uf9Gex50Sub4SPy0k0HjuyfZzt2Wl9KxS9tLi469MSuc7lFr/KtKONl9bqyOkMQ2F7GBqqD82xclrPJQtvfApFshw5NG1mk1/+VUBsgdpy8rNEBziAgiiEJiLmUrfrjci7pclPPgPSB0VTjxhA8HBZwvgkyn3BOj5W1i0033ecM/1DAVt8x44H1A2JrWfVrAazdgXSgUA+zjym0em74va0qrSwh1zJ7+qmDfg/Q+epENB75vjw1bXckApx6FuMY2FtkrpHD9krbFUDvN8Ub7Z48UAW/VioPDVEfYrWJgFt5qKJlTeEDszQ9Ih8PsfbrG4V3zRrTQmfLUUKBKTskQ2DOOjgGyTGtUjAMS/mRcZrzBnkURvaNj0mY=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d94498a6-6d8b-4f2d-c108-08d72a1cc61c
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2019 11:58:56.9567 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ip25s5glJHQ7AOg/srMEyeiuVH5Tfo5EhXVl0L8yDceaE1m9IyntVwEt/H4A/TIoLWXMpPAVDqzOygIb1VMhNwg/ry1hQHcYNCZRoVgYhPQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4350
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_045904_355858_B728EFE1 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
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

Add functions to delimit what the chunks of code do:

static void spi_nor_init_params()
{
	spi_nor_info_init_params()
	spi_nor_manufacturer_init_params()
	spi_nor_sfdp_init_params()
}

Add descriptions to all methods.

spi_nor_init_params() becomes of type void, as all its children
return void.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
v3: rename spi_nor_legacy_init_params() to spi_nor_info_init_params()

 drivers/mtd/spi-nor/spi-nor.c | 83 ++++++++++++++++++++++++++++++++-----------
 1 file changed, 63 insertions(+), 20 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 2a239531704a..1e7f8dc3457d 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -4186,7 +4186,34 @@ static void spi_nor_manufacturer_init_params(struct spi_nor *nor)
 		nor->info->fixups->default_init(nor);
 }
 
-static int spi_nor_init_params(struct spi_nor *nor)
+/**
+ * spi_nor_sfdp_init_params() - Initialize the flash's parameters and settings
+ * based on JESD216 SFDP standard.
+ * @nor:	pointer to a 'struct spi-nor'.
+ *
+ * The method has a roll-back mechanism: in case the SFDP parsing fails, the
+ * legacy flash parameters and settings will be restored.
+ */
+static void spi_nor_sfdp_init_params(struct spi_nor *nor)
+{
+	struct spi_nor_flash_parameter sfdp_params;
+
+	memcpy(&sfdp_params, &nor->params, sizeof(sfdp_params));
+
+	if (spi_nor_parse_sfdp(nor, &sfdp_params)) {
+		nor->addr_width = 0;
+		nor->flags &= ~SNOR_F_4B_OPCODES;
+	} else {
+		memcpy(&nor->params, &sfdp_params, sizeof(nor->params));
+	}
+}
+
+/**
+ * spi_nor_info_init_params() - Initialize the flash's parameters and settings
+ * based on nor->info data.
+ * @nor:	pointer to a 'struct spi-nor'.
+ */
+static void spi_nor_info_init_params(struct spi_nor *nor)
 {
 	struct spi_nor_flash_parameter *params = &nor->params;
 	struct spi_nor_erase_map *map = &params->erase_map;
@@ -4260,25 +4287,43 @@ static int spi_nor_init_params(struct spi_nor *nor)
 	spi_nor_set_erase_type(&map->erase_type[i], info->sector_size,
 			       SPINOR_OP_SE);
 	spi_nor_init_uniform_erase_map(map, erase_mask, params->size);
+}
 
+/**
+ * spi_nor_init_params() - Initialize the flash's parameters and settings.
+ * @nor:	pointer to a 'struct spi-nor'.
+ *
+ * The flash parameters and settings are initialized based on a sequence of
+ * calls that are ordered by priority:
+ *
+ * 1/ Default flash parameters initialization. The initializations are done
+ *    based on nor->info data:
+ *		spi_nor_info_init_params()
+ *
+ * which can be overwritten by:
+ * 2/ Manufacturer flash parameters initialization. The initializations are
+ *    done based on MFR register, or when the decisions can not be done solely
+ *    based on MFR, by using specific flash_info tweeks, ->default_init():
+ *		spi_nor_manufacturer_init_params()
+ *
+ * which can be overwritten by:
+ * 3/ SFDP flash parameters initialization. JESD216 SFDP is a standard and
+ *    should be more accurate that the above.
+ *		spi_nor_sfdp_init_params()
+ *
+ *    Please not that there is a ->post_bfpt() fixup hook that can overwrite the
+ *    flash parameters and settings imediately after parsing the Basic Flash
+ *    Parameter Table.
+ */
+static void spi_nor_init_params(struct spi_nor *nor)
+{
+	spi_nor_info_init_params(nor);
 
 	spi_nor_manufacturer_init_params(nor);
 
-	if ((info->flags & (SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ)) &&
-	    !(info->flags & SPI_NOR_SKIP_SFDP)) {
-		struct spi_nor_flash_parameter sfdp_params;
-
-		memcpy(&sfdp_params, params, sizeof(sfdp_params));
-
-		if (spi_nor_parse_sfdp(nor, &sfdp_params)) {
-			nor->addr_width = 0;
-			nor->flags &= ~SNOR_F_4B_OPCODES;
-		} else {
-			memcpy(params, &sfdp_params, sizeof(*params));
-		}
-	}
-
-	return 0;
+	if ((nor->info->flags & (SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ)) &&
+	    !(nor->info->flags & SPI_NOR_SKIP_SFDP))
+		spi_nor_sfdp_init_params(nor);
 }
 
 static int spi_nor_select_read(struct spi_nor *nor,
@@ -4670,10 +4715,8 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
 	    nor->info->flags & SPI_NOR_HAS_LOCK)
 		nor->clear_sr_bp = spi_nor_clear_sr_bp;
 
-	/* Parse the Serial Flash Discoverable Parameters table. */
-	ret = spi_nor_init_params(nor);
-	if (ret)
-		return ret;
+	/* Init flash parameters based on flash_info struct and SFDP */
+	spi_nor_init_params(nor);
 
 	if (!mtd->name)
 		mtd->name = dev_name(dev);
-- 
2.9.5


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
