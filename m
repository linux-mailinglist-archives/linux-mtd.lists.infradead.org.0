Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B721B7BC81
	for <lists+linux-mtd@lfdr.de>; Wed, 31 Jul 2019 11:04:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jBMx3jkHW7ZV07BmajS+5vfVZ5dcwbHX1ZK2hq1Ks/8=; b=dpIbfw8eeT524Q
	HL+dkAQRoKXW5AjNALhHVBWKjiiOKzVoZC8F2RAuxodZ77Gu325dzCJNr9sbWjBTZYFUjMEg5Sk5L
	6l6R1LMr7/xcFmQOytF0MFsvtctONIK9q8MO6l/07ZgKVvnqD/G0gndfFIQWV/pLQOLKcZ2KyEx5Q
	GfFk4HpT8HgJdELikEXtg5VZ1ObnGePBufm5jM9Or3OAVKvOj/2t/x5T+PTxF73+HdqyiJWnhkWP7
	6hbKaXU/6LWCXIfE73FyJvZhl43Foo0p3Em5aDpZ6KAeQkEs2nWVVGIhrdc1XWdVmazEy6HzzbSu5
	hbj6VVhsaod5VFAU18Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hskWc-0007fh-0Y; Wed, 31 Jul 2019 09:03:58 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hskWE-0007UH-Cw
 for linux-mtd@lists.infradead.org; Wed, 31 Jul 2019 09:03:35 +0000
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
IronPort-SDR: RIu+WhYM7EolzeEm1amKvSdREtxRJhIdxRl2EmGlv2tSFS3GzIUfKLjgjCO16+EVzkv3+Ek2Qt
 G3m/79TEzMpl8jVq6xciQpqNKOQ+pCaQzCZvXHtGkJna5Wwl1hmW2aqygRiGljyPLExXFacJnn
 BiXTKdkRnWGg6drwWlJ1D2PpwZaI8HJWpxJkXs7URUmB749l3u5vImW0CqEGPKrw9MpwHmMeVl
 6U2cI2ecVE5RmbYbmfHh9v8dQgBjb3mwCiD2IyPyZce7/ESNljc5j2OINHD4wyshrbIM80Yh+y
 n3c=
X-IronPort-AV: E=Sophos;i="5.64,329,1559545200"; d="scan'208";a="41823055"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 31 Jul 2019 02:03:31 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 31 Jul 2019 02:03:29 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 31 Jul 2019 02:03:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aYz0yGTvWlNnApnP2Ca5eefeV/xVn+bImgrAjVk3lMV5iXP/+TXdRFBolnHe3hr9H747lBJ17zPfL2fMcsRQZirmKpxwVibUwvwS4lEzJ5Iw5kB8Lwld5VbpZOYvW2fUbMFVdcTcJRMdmdJwWSaK4+sUtVuzNPBc9MimDLCjKSpGhsLRkCKFdHgs+dC+YDpTmMjgINb42JmGXoQDwjR1IWMhE9tZboggUckEa2dEoo0RlDptwVi9Ay9C8s/91Bvk9BkOByNJsN6ZLhVb47vEXpSk2Mk+pODHhww/qopEiurs6oFrQ07IR0KBK77Bc7FChNWpJosViQ0Xxo6rkZ4nnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d8yIcMHMq6Er6vAjwuUn5TbieUcB74FCHRHEw8tljbw=;
 b=JhrAj9T5arv7QHACaTOQUWv0x3yzcMoSyC2BiMhS7EbG2G4eRbq2SKzPYMXBbRU8FeJQKowcSO9S5pMpJNbGpt6YrJaOYzUNpWvX/A3peQxi52XUPes2ZKWkxYLO+2BUlMGA9g08lzT1z6qEynklgWOkFa78cQhukGsRUihcjm9EbMtFfevFXi+jWDCF7NwtrSJRacZLYVT+AsNzy0bDcqoMQjrYivFrC6RIkBn7pN0GZi/JtjeOX8Mn5QwS2Q5aKBmNeTA8DljWs5mMvumr8y6QuZd+rl7i/7K/lZWKtO5r+TuQ41b5sRfWgDQgC52FDpv3Hn2e9UsGjNpNJwHdcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=microchip.com;dmarc=pass action=none
 header.from=microchip.com;dkim=pass header.d=microchip.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d8yIcMHMq6Er6vAjwuUn5TbieUcB74FCHRHEw8tljbw=;
 b=QG/sPboqzSiy0ROP23Ajm2AWwUg2MMzIFxE7CZz2nT57zuvlI2YN18LcqNfIuBSQtrK+nsdBoTPX8sw2sjDNs6ePTFT3OLQen78jpVUBdALaPjO+BarshT1CCTQaPz9jUPIeLfcagiQFa/K1cyHnlbOW23mI1lJcRdPfcHnjyns=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2SPR01MB0050.namprd11.prod.outlook.com (10.255.239.221) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.15; Wed, 31 Jul 2019 09:03:29 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::61d1:6408:89a2:8de5]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::61d1:6408:89a2:8de5%2]) with mapi id 15.20.2115.005; Wed, 31 Jul 2019
 09:03:29 +0000
From: <Tudor.Ambarus@microchip.com>
To: <boris.brezillon@collabora.com>, <marek.vasut@gmail.com>, <vigneshr@ti.com>
Subject: [PATCH 2/7] mtd: spi-nor: Add a default_init() fixup hook for gd25q256
Thread-Topic: [PATCH 2/7] mtd: spi-nor: Add a default_init() fixup hook for
 gd25q256
Thread-Index: AQHVR37SzJUb6rePcEWKq1Ud1rngjw==
Date: Wed, 31 Jul 2019 09:03:29 +0000
Message-ID: <20190731090315.26798-3-tudor.ambarus@microchip.com>
References: <20190731090315.26798-1-tudor.ambarus@microchip.com>
In-Reply-To: <20190731090315.26798-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR03CA0070.eurprd03.prod.outlook.com
 (2603:10a6:803:50::41) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e07a43d7-f741-43ff-4a61-08d71595f47f
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2SPR01MB0050; 
x-ms-traffictypediagnostic: MN2SPR01MB0050:
x-microsoft-antispam-prvs: <MN2SPR01MB0050868659E7C0A0C12BAEB9F0DF0@MN2SPR01MB0050.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(39860400002)(366004)(346002)(396003)(136003)(189003)(199004)(6116002)(3846002)(50226002)(53936002)(36756003)(54906003)(7416002)(305945005)(8676002)(81166006)(107886003)(2906002)(81156014)(6436002)(316002)(26005)(66476007)(66946007)(64756008)(66446008)(66556008)(6486002)(68736007)(8936002)(6512007)(86362001)(5660300002)(25786009)(1076003)(110136005)(7736002)(186003)(4326008)(11346002)(446003)(102836004)(386003)(6506007)(256004)(2616005)(476003)(52116002)(99286004)(76176011)(478600001)(2501003)(66066001)(14454004)(14444005)(486006)(71190400001)(71200400001)(2201001)(138113003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2SPR01MB0050;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: zROeRrD3PoYeuqunA33zfpT4HFF33eixWWmg0TBizrSkB4hsiSmCUXzQx1lAvkhKbwgVIJGZ7LCB8USOUAM75FYLMTm+17Dtvp3csq2K6UZgrFeJxokJ3iWjJ/S2GfOty7bexOxJEp5tBxIp22hBn70yJY2Fku0mnOiQ/53zANTfoFZyVFPMUIMyUQXUUiCsFlfGvDWCU87rNtGXka6l8I29/I0EIC2XfnaQACl0NhxO7aBrc+Rust9wp48DAtRuthI4XbIfZ4AVtu1+7m/8Qd/I4LbP+EfuMHqBROgb1YxuoVXOQv4OxULDAKXBrlGr6D9XU3ZG+eRcEGQZBSNRONm9FXm8+OG3sS6A/WYrK93+hVZ9KK19wmeElbM9o5a2XLVjnHpF0K3MV/EfC5dm8lmaLsmrnj3tvbFJonwRqB0=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e07a43d7-f741-43ff-4a61-08d71595f47f
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 09:03:29.4088 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tudor.ambarus@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2SPR01MB0050
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_020334_556402_D023045A 
X-CRM114-Status: GOOD (  13.66  )
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

gd25q256 needs to tweak the ->quad_enable() implementation and the
->default_init() fixup hook is the perfect place to do that. This way,
if we ever need to tweak more things for this flash, we won't have to
add new fields in flash_info.

We can get rid of the flash_info->quad_enable field as gd25q256 was
the only user.

Signed-off-by: Boris Brezillon <boris.brezillon@bootlin.com>
[tudor.ambarus@microchip.com: use ->default_init() hook instead of
->post_sfdp()]
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 29 +++++++++++++++++------------
 1 file changed, 17 insertions(+), 12 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index ac00f90ebaa9..94aba5ce1462 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -288,8 +288,6 @@ struct flash_info {
 
 	/* Part specific fixup hooks. */
 	const struct spi_nor_fixups *fixups;
-
-	int	(*quad_enable)(struct spi_nor *nor);
 };
 
 #define JEDEC_MFR(info)	((info)->id[0])
@@ -2268,6 +2266,22 @@ static struct spi_nor_fixups mx25l25635_fixups = {
 	.post_bfpt = mx25l25635_post_bfpt_fixups,
 };
 
+static void gd25q256_default_init(struct spi_nor *nor,
+				  struct spi_nor_flash_parameter *params)
+{
+	/*
+	 * Some manufacturer like GigaDevice may use different
+	 * bit to set QE on different memories, so the MFR can't
+	 * indicate the quad_enable method for this case, we need
+	 * set it in the default_init fixup hook.
+	 */
+	params->quad_enable = macronix_quad_enable;
+}
+
+static struct spi_nor_fixups gd25q256_fixups = {
+	.default_init = gd25q256_default_init,
+};
+
 /* NOTE: double check command sets and memory organization when you add
  * more nor chips.  This current list focusses on newer chips, which
  * have been converging on command sets which including JEDEC ID.
@@ -2360,7 +2374,7 @@ static const struct flash_info spi_nor_ids[] = {
 		"gd25q256", INFO(0xc84019, 0, 64 * 1024, 512,
 			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
 			SPI_NOR_4B_OPCODES | SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
-			.quad_enable = macronix_quad_enable,
+			.fixups = &gd25q256_fixups,
 	},
 
 	/* Intel/Numonyx -- xxxs33b */
@@ -4372,15 +4386,6 @@ static int spi_nor_init_params(struct spi_nor *nor,
 			params->quad_enable = spansion_quad_enable;
 			break;
 		}
-
-		/*
-		 * Some manufacturer like GigaDevice may use different
-		 * bit to set QE on different memories, so the MFR can't
-		 * indicate the quad_enable method for this case, we need
-		 * set it in flash info list.
-		 */
-		if (info->quad_enable)
-			params->quad_enable = info->quad_enable;
 	}
 
 	spi_nor_manufacturer_init_params(nor, params);
-- 
2.9.5


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
