Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E4677BCD1
	for <lists+linux-mtd@lfdr.de>; Wed, 31 Jul 2019 11:20:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5VFlL6RLbAAlPIzMhqPmdMbGCYB1c+uLawIYV68GXAM=; b=pXl0e9bq1BYjeZ
	c44enkG1x9/L0zlP01wKawSaEjzISIVS+UinnK1SuLHie9reV3cLNUYIBZWw+5h9BDILAM+9TKDiP
	SePtBKP89V9FZp1f1anJVXKIaMxSg7BHmoMZVQkir7wIG5XxWHrJ9ys+QWi7ntWJtb+QRQTcoKQry
	/lxxb51v6/T2xegirE7MZW3+SjapFoS3KhYcQq4jPfEF4Ud1M5DgNKUSIKEP1rewsHxKJT5C/DH79
	jfSh8eZNWCO3LKo0Pz4Lw4do8eDyaRWb0pWEBTQVfcaOzxlPprYifCeKMRmpnFx7s2IwqHKeiOUZq
	UQcFfpl0OIxRc/chVG+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hskmx-0001Sn-93; Wed, 31 Jul 2019 09:20:51 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hskmo-0001SU-3R
 for linux-mtd@lists.infradead.org; Wed, 31 Jul 2019 09:20:43 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: qQ5cWc+eRKzGyOF/pF6m+IUy/qq+PNF/cp6lgRid/BtBQoB+SjkN4zQMhO1eq7QIsyBZtq7Eaj
 8Y0kqOYUFvl6YYCw0058vIfC5y/xXhZQdONZGE71focu6FCD/waQo6LqwnPrw44IrNXP3U3+gA
 Jzvupv3WxS5bq28THuPZf2o0lW2wLY7Obkp2d2eGxNnbBmMlDkrWO5D9ufiF+vm3dNifgY1Jfr
 r8RZRl6jy7qp1SxFCgzfVGJPfC5znFO09obNInHd/0TvTVhLuMVYyKKjYSp05XnoinCuBExq0V
 eH0=
X-IronPort-AV: E=Sophos;i="5.64,329,1559545200"; d="scan'208";a="44787492"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 31 Jul 2019 02:20:39 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 31 Jul 2019 02:18:50 -0700
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 31 Jul 2019 02:18:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=erl2mwbusor0UuNaGEwE23hseHSb0xJn4bEPrPukeFVohxtr63ULD6BT0XcvqoMIiDaNHO6Ic8u+GBFCDaxn6qGtLk1ctrCFlEYw0SxMNmIz7d7AlpQHOwBRmQHvqkfZJsJmfEuDhOGNF9yhXxCRHX8i1awu/BM9pQIidcUqXfyTL9FpGHgdQ34e730HQmlGcXST9c25M4KVxEYaAzBo2CFi53xFQpeY9fXSFpSfAaH50xRfjWBwuI5ECWh7kocfBaZzNKinnIN1LOX4Mdd9XKivJE4JddKjrdx01Sk39QsHxW1cv0pzK0Jj6AkQ2DfQ/7KMQcAHLMm7glmH1gIagw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qUhc6o3/+XXP4yqYCU1hIe/HWiQytN7nIY9T4Ht6zIU=;
 b=McuQmiuopnf43uNfUNdI883Mmdajh2M8h/ALgOZ20RuFysyqh7nc4vQHOagrBNhZB06XMixr6GRflFksAOrWP/1d2SumEEDYtRu4dMgDq8LCe1S6RbV70DQp1ZOk9xXtnKXGisCsKEdj2cOkQPz6e2Z7kHXAYRud/KrbcP8DwTR6/rIUxQQ+WLS6YZwQQVww7Qsof3MerIpEgy9fOuJ3KENR92BBC0gY/cNIk3zv6pzB9/d6WJPzhUq1nKgzR701pWTF8Owiyl5IZu9SrBo1+bwlVp/IibgGsUlAHcufP8JDH6og9vZC7qtVsCZdSF1YcKhIDRIR/e+ga/X8V2SN7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=microchip.com;dmarc=pass action=none
 header.from=microchip.com;dkim=pass header.d=microchip.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qUhc6o3/+XXP4yqYCU1hIe/HWiQytN7nIY9T4Ht6zIU=;
 b=Dp2VUwas84B/eAo77qdMV2foCXL/iKEMBkjg0L9e7Cd4gQet+UoqlBWFlpedPzc+XAAgYI1rzNnBNqxEVXyKkVp28gFNrnFIBE+Lh0IepaMidFushifG2DfUvmKT/31XD/it1NSXVMXmE4Rw5T/Tz9m6Wlo48w2O6vB7W1KZMLs=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3680.namprd11.prod.outlook.com (20.178.252.96) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.14; Wed, 31 Jul 2019 09:18:49 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::61d1:6408:89a2:8de5]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::61d1:6408:89a2:8de5%2]) with mapi id 15.20.2115.005; Wed, 31 Jul 2019
 09:18:49 +0000
From: <Tudor.Ambarus@microchip.com>
To: <boris.brezillon@collabora.com>, <marek.vasut@gmail.com>, <vigneshr@ti.com>
Subject: [PATCH 3/3] mtd: spi-nor: Introduce spi_nor_get_flash_info()
Thread-Topic: [PATCH 3/3] mtd: spi-nor: Introduce spi_nor_get_flash_info()
Thread-Index: AQHVR4D2dVyQUM7xR0KDZRbhf1XpYg==
Date: Wed, 31 Jul 2019 09:18:49 +0000
Message-ID: <20190731091835.27766-4-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: 3b743723-9d7f-4713-43c4-08d7159818e7
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR11MB3680; 
x-ms-traffictypediagnostic: MN2PR11MB3680:
x-microsoft-antispam-prvs: <MN2PR11MB3680C945F88859442FAB5008F0DF0@MN2PR11MB3680.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:517;
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(39860400002)(346002)(376002)(136003)(199004)(189003)(8676002)(81166006)(4326008)(81156014)(53936002)(7736002)(256004)(25786009)(68736007)(8936002)(50226002)(14444005)(478600001)(6486002)(11346002)(2906002)(107886003)(14454004)(2501003)(102836004)(86362001)(6436002)(71190400001)(71200400001)(476003)(1076003)(305945005)(5660300002)(66556008)(66476007)(64756008)(66946007)(2201001)(66446008)(36756003)(486006)(3846002)(99286004)(76176011)(6512007)(6506007)(66066001)(386003)(446003)(316002)(6116002)(26005)(54906003)(186003)(110136005)(52116002)(2616005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3680;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 66WROcukXeSIqSC55CS/6ch9eNkJlDHKIowqmUEJ2nEL/oJ9I0XlzWDZUQDT9GHUyE4LqkAZ9eYA7oIqN7ZzyKWOr4jJo1HRsGb1RfBSgrwG5Jtg7BAzPNpZ6grTipO92r4l3ZTH2VBx53pIXgQsrpqNFKuPS4R264QO4ekjkU95JUVhKFxEAnb70o+kSxt/LNTqk1ybG+8Ury1DivcSI60mqjOM1/xlm37ZGdU6NZU67mlT1vJlO7R/VZgtj9vapM/3uCR9CzZyoN8lNtrWZoGxfFOwljA6LG6S3hAvEkg621XuEyA6Aneaw3ef2m6ppFf+7y5TQD4NhBCfbdtPyzgBEBTxylKF43x3ktwcwZKey0ky8alGpql/0Eo2Pls5IChEoLtELIVyJkLo6jNO6FmWTWxtujmOAMED0oPu6Lw=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b743723-9d7f-4713-43c4-08d7159818e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 09:18:49.4587 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tudor.ambarus@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3680
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_022042_262310_BF62CC4C 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
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

Dedicate a function for getting the pointer to the flash_info
const struct. Trim a bit the spi_nor_scan() huge function.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 52 ++++++++++++++++++++++++++-----------------
 1 file changed, 32 insertions(+), 20 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index c322d7cd8216..636f065cc869 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -4800,25 +4800,10 @@ static int spi_nor_set_addr_width(struct spi_nor *nor)
 	return 0;
 }
 
-int spi_nor_scan(struct spi_nor *nor, const char *name,
-		 const struct spi_nor_hwcaps *hwcaps)
+static const struct flash_info *spi_nor_get_flash_info(struct spi_nor *nor,
+						       const char *name)
 {
-	struct spi_nor_flash_parameter params;
 	const struct flash_info *info = NULL;
-	struct device *dev = nor->dev;
-	struct mtd_info *mtd = &nor->mtd;
-	struct device_node *np = spi_nor_get_flash_node(nor);
-	int ret;
-	int i;
-
-	ret = spi_nor_check(nor);
-	if (ret)
-		return ret;
-
-	/* Reset SPI protocol for all commands. */
-	nor->reg_proto = SNOR_PROTO_1_1_1;
-	nor->read_proto = SNOR_PROTO_1_1_1;
-	nor->write_proto = SNOR_PROTO_1_1_1;
 
 	if (name)
 		info = spi_nor_match_id(name);
@@ -4826,7 +4811,7 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
 	if (!info)
 		info = spi_nor_read_id(nor);
 	if (IS_ERR_OR_NULL(info))
-		return -ENOENT;
+		return ERR_PTR(-ENOENT);
 
 	/*
 	 * If caller has specified name of flash model that can normally be
@@ -4837,7 +4822,7 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
 
 		jinfo = spi_nor_read_id(nor);
 		if (IS_ERR(jinfo)) {
-			return PTR_ERR(jinfo);
+			return jinfo;
 		} else if (jinfo != info) {
 			/*
 			 * JEDEC knows better, so overwrite platform ID. We
@@ -4846,12 +4831,39 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
 			 * marked read-only, and we don't want to lose that
 			 * information, even if it's not 100% accurate.
 			 */
-			dev_warn(dev, "found %s, expected %s\n",
+			dev_warn(nor->dev, "found %s, expected %s\n",
 				 jinfo->name, info->name);
 			info = jinfo;
 		}
 	}
 
+	return info;
+}
+
+int spi_nor_scan(struct spi_nor *nor, const char *name,
+		 const struct spi_nor_hwcaps *hwcaps)
+{
+	struct spi_nor_flash_parameter params;
+	const struct flash_info *info;
+	struct device *dev = nor->dev;
+	struct mtd_info *mtd = &nor->mtd;
+	struct device_node *np = spi_nor_get_flash_node(nor);
+	int ret;
+	int i;
+
+	ret = spi_nor_check(nor);
+	if (ret)
+		return ret;
+
+	/* Reset SPI protocol for all commands. */
+	nor->reg_proto = SNOR_PROTO_1_1_1;
+	nor->read_proto = SNOR_PROTO_1_1_1;
+	nor->write_proto = SNOR_PROTO_1_1_1;
+
+	info = spi_nor_get_flash_info(nor, name);
+	if (IS_ERR(info))
+		return PTR_ERR(info);
+
 	nor->info = info;
 
 	mutex_init(&nor->lock);
-- 
2.9.5


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
