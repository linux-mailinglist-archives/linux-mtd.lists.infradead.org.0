Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B5C79CEE8
	for <lists+linux-mtd@lfdr.de>; Mon, 26 Aug 2019 14:02:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MRLTFHaGW8q0Kp0CNuxv22CR/VLJ06ZZ0lEzxLiHM3g=; b=hGUjB2lLCC79M0
	wrw+0fjwQv8LA5AWRtCadifmkA9PJOp7FcTJnA7P29rMMyu8C6LQNSvJppkq2OUnbgvPQtsENR+Fg
	/VWixKeliVImy9VkZ+XLFia1sJa8gM17jmQ59nWmFLw9ECGe4ZvfQKplg9R9aEDCjDl6KB2PppQRg
	zlRGr8MIjr1gGu0rZXsuDXuu3mksthjVMSOD2sa3GlAd2VKERSiVtvs1U4YQWuNkC1pjjOStRz2vy
	DYXuVAaFqKWHVsTOVWzUow+V4HIXshYQ6yzyMXqzzlS2D3T/Q//9LrKWdzqFyF7VFbtZutB880F8M
	Fpzp6CbJ6kHQUioPYQTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Di1-0007b2-0M; Mon, 26 Aug 2019 12:02:53 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Dhb-0007Bq-HL
 for linux-mtd@lists.infradead.org; Mon, 26 Aug 2019 12:02:29 +0000
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
IronPort-SDR: 4qmohj4DEFQaMv3nmVvq+3MCj3WS8gOLG5vUP2XQOwP5HKm/AAt4C9c8Bw8M9d1OJPzTmApU0E
 EcPLNCSMiRa4v7t+K5VuGExSAFLCx6Xv2Bqw97DONvwez5YsBqcjZJF7iCc54iDSFWYvm8ZoSp
 B15XyEv3OK6hT0uLu9pcb4LpNyJJ3O+pyIq0sbv3zs5mb06gOqaz05zYjbzzwYN9/F/f2X4WuP
 rLj6GlqES95idg1WqSPIiiuBi1+/5MlyLKbhWMihTiXVyuOtsI3nkMiI6p9HoCbCSjanV1t7gk
 jWk=
X-IronPort-AV: E=Sophos;i="5.64,433,1559545200"; d="scan'208";a="44988420"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 26 Aug 2019 05:02:19 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 26 Aug 2019 05:02:18 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 26 Aug 2019 05:02:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sd2DWYLKYZImARiP3dMMT5lIPxRIhrATypIjo8rILMyZbir+tqGW/myb2rIzHHhyy5kHROtWW4kKVF77aUUxxbFL1CFZVluMO9y2qvaIlQ80lnF7LupnvMHtuhBqADSciC8JsGYYVE+wHF4n1/M9GXsNspDGbvU4HxPS+G1VDQv0UqpBrtJkGrBL2xDf6IGHG94aoWbukFnQVrVmFaT50uK7t5Oj7d+PiRQhs3aExgWVstlONQzJvBoPk+m3Bwsur8zIOB613jbM8oUkx0IdvRtf7sSG5jKDw0vV6ck38FjaCFSNyJM9JEUuQtu3KyYkQ11Qj6zJ8KdK/N8yA5SQpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wzKEj7C2oecdyIVgmS+q8nCE1Ab6V9iG0C1/KPjXWOM=;
 b=LidGZ3RHSfpb1Qe83EjovYArBJd/ZapAIrEcCkwh35jGeaxanbEAkv9+kcmVtwwN8Kyyivi3Ag/8rkSAJnMhEj1xMlJ0hJfnBj5IUlmhGisdWyRWPxfb/MhwaMakX4vHLMPvxdaXfarpYBuIoVQRZ6Z9AnzPJiAozMl2Zd6d+/k5bdYsjCo8J7ismW25COWA9WIWkJI7gHNxiCLexdClL0f/xrJzbqFcfN69TXY0HGraG+UDBRjAy1gzWSf4EdlV/f0JVP8TcaqSpuwF5nyYYg5RKDLt4d5Q1Grum1TL7bvVMUGDV16oxrGPafr0JPJJb6996Y3FUik3m2QaMU3whQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wzKEj7C2oecdyIVgmS+q8nCE1Ab6V9iG0C1/KPjXWOM=;
 b=IHymxgpGI5vPCazQDh8CS/F8c5bGOYEAn7X/WnHCQdN79XJBk6GkjtQeloJlGnoro03qcuf38hsQQlYbxsL5+w8YoAZPf/VU+Xh1fbw0F2nD5XLBXkFOlnuBePdYN1uHB4suxLjh7YDeDqtKkRTiyP3YZv0ssqX9w/fx2rbokuQ=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3776.namprd11.prod.outlook.com (20.178.251.156) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Mon, 26 Aug 2019 12:02:17 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5%7]) with mapi id 15.20.2199.021; Mon, 26 Aug 2019
 12:02:17 +0000
From: <Tudor.Ambarus@microchip.com>
To: <boris.brezillon@collabora.com>, <marek.vasut@gmail.com>,
 <vigneshr@ti.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <linux-mtd@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v3 11/20] mtd: spi-nor: Add post_sfdp() hook to tweak flash
 config
Thread-Topic: [PATCH v3 11/20] mtd: spi-nor: Add post_sfdp() hook to tweak
 flash config
Thread-Index: AQHVXAYanLzXi6dQ6kebhi8SjF66Ug==
Date: Mon, 26 Aug 2019 12:02:16 +0000
Message-ID: <20190826120206.15025-2-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: 629732a1-7303-4a38-795b-08d72a1d3d51
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR11MB3776; 
x-ms-traffictypediagnostic: MN2PR11MB3776:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3776D49BBC0A13D2BF08A43DF0A10@MN2PR11MB3776.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 01415BB535
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(376002)(346002)(136003)(39860400002)(189003)(199004)(81166006)(81156014)(8676002)(1076003)(2201001)(2501003)(14444005)(256004)(26005)(7736002)(99286004)(66066001)(2906002)(54906003)(76176011)(52116002)(316002)(186003)(50226002)(8936002)(66476007)(66556008)(64756008)(66946007)(66446008)(110136005)(53936002)(2616005)(36756003)(25786009)(5660300002)(386003)(305945005)(6506007)(102836004)(3846002)(6116002)(446003)(11346002)(478600001)(4326008)(86362001)(6436002)(6486002)(6512007)(14454004)(71200400001)(71190400001)(107886003)(476003)(486006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3776;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Mx4nB7m3P7hQ5RE4BMIAWio8UOtBDIzkBDoTdzojcVjEZW+lt13QzHgxDNhKdIa1M5xu53Mb+J6ymCYi+6UJzyfrgYhAE3rYpdwW9jjbtUDV4wcj3bovTmDc4IgOITwO8l7DrJx8d+yLkPwSSifmBSHCQUhVHgfML8EDpX3zdQVpPaYp3hfuDvhvoTLP2QLVGr6P9mfLStAVmR//7XtguVmq+t+pyzlz35FiP17plsYADv0eX0PhuWBrp2J9SLyNuzKFZtQ1HtgkRg0rKBjRdm1Btd1wBPdkLMVH1NnG9KyMrI2WANgjc/TWBgTbv7bSQqKehU7wX7qbfBVN9FiUHlKeY7nR6ogcyexa5X7tfX6GrC1M85463mVhtnaTU/XPpSZ9OKtIk36C+wWuZqCahr3sGzqLrVzOUtLR4XKUGiI=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 629732a1-7303-4a38-795b-08d72a1d3d51
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2019 12:02:17.2209 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jA/S4MKVtwiTsKDHdYJ1jkvDXPzAkNdFOMqbdS6drWxYa2lGFHOMINOlyNWXc8+JatrejvtDx/vFoaxWgbqej2+ZXrhS0bC1JqvAuDlvGJ0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3776
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_050227_697218_1FD35445 
X-CRM114-Status: GOOD (  12.48  )
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
Cc: boris.brezillon@bootlin.com, Tudor.Ambarus@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Boris Brezillon <boris.brezillon@bootlin.com>

SFDP tables are sometimes wrong and we need a way to override the
config chosen by the SFDP parsing logic without discarding all of it.

Add a new hook called after the SFDP parsing has taken place to deal
with such problems.

Signed-off-by: Boris Brezillon <boris.brezillon@bootlin.com>
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
v3: no changes, rebase on previous commits

 drivers/mtd/spi-nor/spi-nor.c | 33 ++++++++++++++++++++++++++++++++-
 1 file changed, 32 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 3f997797fa9d..b8caf5171ff5 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -158,6 +158,11 @@ struct sfdp_bfpt {
  *                flash parameters when information provided by the flash_info
  *                table is incomplete or wrong.
  * @post_bfpt: called after the BFPT table has been parsed
+ * @post_sfdp: called after SFDP has been parsed (is also called for SPI NORs
+ *             that do not support RDSFDP). Typically used to tweak various
+ *             parameters that could not be extracted by other means (i.e.
+ *             when information provided by the SFDP/flash_info tables are
+ *             incomplete or wrong).
  *
  * Those hooks can be used to tweak the SPI NOR configuration when the SFDP
  * table is broken or not available.
@@ -168,6 +173,7 @@ struct spi_nor_fixups {
 			 const struct sfdp_parameter_header *bfpt_header,
 			 const struct sfdp_bfpt *bfpt,
 			 struct spi_nor_flash_parameter *params);
+	void (*post_sfdp)(struct spi_nor *nor);
 };
 
 struct flash_info {
@@ -4299,6 +4305,22 @@ static void spi_nor_info_init_params(struct spi_nor *nor)
 }
 
 /**
+ * spi_nor_post_sfdp_fixups() - Updates the flash's parameters and settings
+ * after SFDP has been parsed (is also called for SPI NORs that do not
+ * support RDSFDP).
+ * @nor:	pointer to a 'struct spi_nor'
+ *
+ * Typically used to tweak various parameters that could not be extracted by
+ * other means (i.e. when information provided by the SFDP/flash_info tables
+ * are incomplete or wrong).
+ */
+static void spi_nor_post_sfdp_fixups(struct spi_nor *nor)
+{
+	if (nor->info->fixups && nor->info->fixups->post_sfdp)
+		nor->info->fixups->post_sfdp(nor);
+}
+
+/**
  * spi_nor_late_init_params() - Late initialization of default flash parameters.
  * @nor:	pointer to a 'struct spi_nor'
  *
@@ -4341,7 +4363,14 @@ static void spi_nor_late_init_params(struct spi_nor *nor)
  *    flash parameters and settings imediately after parsing the Basic Flash
  *    Parameter Table.
  *
- * 4/ Late default flash parameters initialization, used when the
+ * which can be overwritten by:
+ * 4/ Post SFDP flash parameters initialization. Used to tweak various
+ *    parameters that could not be extracted by other means (i.e. when
+ *    information provided by the SFDP/flash_info tables are incomplete or
+ *    wrong).
+ *		spi_nor_post_sfdp_fixups()
+ *
+ * 5/ Late default flash parameters initialization, used when the
  * ->default_init() hook or the SFDP parser do not set specific params.
  *		spi_nor_late_init_params()
  */
@@ -4355,6 +4384,8 @@ static void spi_nor_init_params(struct spi_nor *nor)
 	    !(nor->info->flags & SPI_NOR_SKIP_SFDP))
 		spi_nor_sfdp_init_params(nor);
 
+	spi_nor_post_sfdp_fixups(nor);
+
 	spi_nor_late_init_params(nor);
 }
 
-- 
2.9.5


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
