Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D91929BD72
	for <lists+linux-mtd@lfdr.de>; Sat, 24 Aug 2019 14:02:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Kq5Bhb8Gx7hUB0Uv4dJHltlGAMK1FOR6vpYTEM6xqc=; b=LZnFeK8AfygG/u
	JIoDc7iQYveGodFTXdbV6Ygd/PvHTIPMzQ3bYRg7kzeoCEUCCnj0LwHLlUC8/PVyncewYUg2fQNNx
	MVgNgg9pRh9mHz0JkVTzSb5y6gPujOoLOTOLnyX2OjKybJWAEwl7GTEcY38AwJEfDdkTh/sUYgLdN
	N5t4f3IQC9mDJ9OahLOMl+E0AsY6vQbn1ZXDRy0TXi5v53pDfTam4JBSnNdkIKtsJmSCfDw5UN8Hm
	7Jg6zZniU8JSce6SKayXC6UBrP7GnWmdo1AvYVRJVQ0dMKHsAbLiJ9ImsAvt++NUspnFWTtJyo89G
	wl+VWePZnEQIh4Fi+52A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Uk1-00024H-Qo; Sat, 24 Aug 2019 12:01:57 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Uiw-0000wk-3s
 for linux-mtd@lists.infradead.org; Sat, 24 Aug 2019 12:00:51 +0000
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
IronPort-SDR: LWCHe0CYToYvGvT1XkWxAuE5BZ3/gujJkSDTO9zymW/pozDHxa2vjnbxjWAND8szdw+4D+jHnt
 ySYxaSjcj/uZO3Bdsl9saMxXcQS892IOtpFlhzq9eUSCpBLbZ0Z1k+cyJ04eFO/vZ20wmdzez0
 mDCoqM9NkToweLtN2sMDTsTnodV/d3ciULMDM/y24YLpkPzDRB0qpxqtIkv5vp+EJKsBBrXJXE
 7MGDNax7HVbotmDtS46WpR/L7EQI4TjvJppZPtQyhw5vbZW8PTzyfmQ0WE9zaZhK+riIAjuPMf
 vJ0=
X-IronPort-AV: E=Sophos;i="5.64,425,1559545200"; d="scan'208";a="47839602"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 24 Aug 2019 05:00:44 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sat, 24 Aug 2019 05:00:44 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Sat, 24 Aug 2019 05:00:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XGHpIIPdFf6kh3obLoM2l/gZsdyMwjPP2oa/FshFySPp8oLg0iaje8+CzfdvJk0cbOM1gDqlAz7eIn/PEDZ8HK0cT+PDrONC2VizPwm+XrRmXbYyml75wOmoWx6u7M1JLiMi2TLBr7FATV4+bQwY9i2WnpFOpnnUGRzCm0hmPWI5sXJNeDvR7Ss6luWbJB2QcgbLHXpzkZmLqsYNW8XMUg56225kzh/xIAfBUBXn5kezPEc1Vb3ehuZMmrgrtFZdOdRdPDGeklevvBgSe+/5Brr746x1pcMfAhkqe6anSF00cJY+3zjwsRAJyLL3h8i1p5JEEvpg8bsj3WBnGFCdFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AG1Sk97TQGRCb98DOJ7nCDi/LPOL1dYT8AOTeCR4o04=;
 b=ISTM0C3LKzWbr1zLhUiwecSBWAvd15pk4cAfrIym1W+CyZTpwamhCU9oYK+OX8aF5it/xWG14Qhc48ysSII5rQLfJaXD7B/CknPCTnrFm5FI7EFXvoKBuuD/WEL9OcMV1mT919si9cBA9SjrhYl1iylhsyP2Az9NK5MiMs28atvxt8hmAJFHoAbkRMbcq2MrAJlAC8jhXFSoAnJ+I3cAgMYEMWR72eKuuviip2mcq5yrfg1vdBsQrNmlg4AydBIA+l01PAxuK7XU+Z+UD3jHCrpVzpMZYpayrpY/Mee7QG1dASEFIbZdJyf1LNh1sOAc4SoAieyZlWrUdsFUmhzL0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AG1Sk97TQGRCb98DOJ7nCDi/LPOL1dYT8AOTeCR4o04=;
 b=NLSQHtpc45n/N5Y5wMPnsTSBXWg6fLxGJuPBOA6muslDBrOL0rMsmDDzOhuB6Hy1Kf4iQ1wEMuwfhr7XqfcDN/2279kWuhZQycEc0OWWS0Yz7Zu1jQ19eWReyEuNfd2GQRPQO/b1u72K9wDVSjXn808SPyiF7vUT0pvRmC9yU0E=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3984.namprd11.prod.outlook.com (10.255.181.77) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.19; Sat, 24 Aug 2019 12:00:43 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5%7]) with mapi id 15.20.2178.020; Sat, 24 Aug 2019
 12:00:43 +0000
From: <Tudor.Ambarus@microchip.com>
To: <boris.brezillon@collabora.com>, <marek.vasut@gmail.com>,
 <vigneshr@ti.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <linux-mtd@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 4/7] mtd: spi-nor: Split spi_nor_init_params()
Thread-Topic: [PATCH v2 4/7] mtd: spi-nor: Split spi_nor_init_params()
Thread-Index: AQHVWnOOC9h2mNJjWkK/0S4j8FdZtg==
Date: Sat, 24 Aug 2019 12:00:43 +0000
Message-ID: <20190824120027.14452-5-tudor.ambarus@microchip.com>
References: <20190824120027.14452-1-tudor.ambarus@microchip.com>
In-Reply-To: <20190824120027.14452-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR07CA0194.eurprd07.prod.outlook.com
 (2603:10a6:802:3f::18) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [86.127.53.184]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e016e0ba-0094-451f-c921-08d7288ab0a4
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR11MB3984; 
x-ms-traffictypediagnostic: MN2PR11MB3984:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3984013735E14DB352236DF4F0A70@MN2PR11MB3984.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0139052FDB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(136003)(396003)(366004)(39860400002)(199004)(189003)(110136005)(25786009)(26005)(446003)(4326008)(1076003)(256004)(316002)(386003)(2501003)(81156014)(6506007)(8936002)(14444005)(64756008)(66556008)(66476007)(66946007)(6436002)(81166006)(66446008)(8676002)(2201001)(53936002)(76176011)(5660300002)(86362001)(6512007)(52116002)(71200400001)(14454004)(11346002)(66066001)(476003)(305945005)(6486002)(36756003)(7736002)(186003)(71190400001)(478600001)(2906002)(102836004)(99286004)(50226002)(6116002)(3846002)(107886003)(486006)(2616005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3984;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: yz0QwxnHS+d+DNB2m2jUnRCcDXSVhmP5VJRXRaaVVXZR8Fr5A3tRWgrwT3xm5YvDML8H88PPIw6eOuzL3r60ZaGOVLZBW+/7bqflt2AmRiV1VQlX/8hDdEJX8AJUix2jWcmUIL6R4828hHcy/eMU5ANgwfAYJn507o/wZi+586pCh4oKGjDB36R+N8d7nHWVmxV4+zaF6kG1qTUAW1zdoOYhJCUbE1kmCH6OVSjdTQ3ivGluSqHGS4StNJHh47B3FcGhUdbflr0N3ThbTKp0DaDaqlVG+NRMmprrYscSVJ5/3G7ZhyjVTj0/luICrLQseFk/LDkzPu9kD4FeJHfATlId+JbSFEBuSUPhVD/0fql0jZ4ATDNdW30WvSSXOm5KeFLfd9Ja61Ny4Aow2jkFGWu/KWodyoAbJrqLeUeuOVQ=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e016e0ba-0094-451f-c921-08d7288ab0a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2019 12:00:43.3889 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jANYWcKq/cpCsQlGSws8eK8IshFCb/ngfrEF1XtpMx+mfSY9q4mKBv2H3l/pPQkxGFVxWqJWlRMDflVwS4fTG6sxObZMg4KywzhH37xyIuM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3984
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_050050_281954_6DB6BA37 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Tudor.Ambarus@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

Add functions to delimit what the chunks of code do:

static void spi_nor_init_params()
{
	spi_nor_legacy_init_params()
	spi_nor_manufacturer_init_params()
	spi_nor_sfdp_init_params()
}

Add descriptions to all methods.

spi_nor_init_params() becomes of type void, as all its children
return void.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 83 ++++++++++++++++++++++++++++++++-----------
 1 file changed, 63 insertions(+), 20 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index c9514dfd7d6d..93424f914159 100644
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
+ * spi_nor_legacy_init_params() - Initialize the flash's parameters and settings
+ * based on nor->info data.
+ * @nor:	pointer to a 'struct spi-nor'.
+ */
+static void spi_nor_legacy_init_params(struct spi_nor *nor)
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
+ * 1/ Legacy flash parameters initialization. The initializations are done
+ *    based on nor->info data:
+ *		spi_nor_legacy_init_params()
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
+	spi_nor_legacy_init_params(nor);
 
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
@@ -4693,10 +4738,8 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
 	    nor->info->flags & SPI_NOR_HAS_LOCK)
 		nor->params.disable_block_protection = spi_nor_clear_sr_bp;
 
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
