Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C92E7BCAB
	for <lists+linux-mtd@lfdr.de>; Wed, 31 Jul 2019 11:12:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7iven7d8rE1fWCFcpqow5njD6t65nChECwOwFWScgfc=; b=mf7YMU+qGz0Xzr
	VKrC0vtxWAf4v54Muodbg2X4jjk0riu0kySfy30xNO7YdvN2zFnDh6nmcwekz3Zzl+emA3w3QsB25
	mUi4/svIAvkY3WGAgLKombh4wE4ppXDl4wfO0+GIWDdm8/DX3/grQpRXL8Pz9P3CYe6i7xUIlGLtH
	No2iESPVA2MfvUVs/tCvEKUOJXxpwX00jwxd+welXQz8Il+PsYUOeeAHvNB31qKbE5i/0s1yP87S9
	NEs18QGwIcDoSU3kciMbAQ/UELuOeFp8uajGnKN62u8fkgmUEUlsqYNiM8JJXUnliCK9dIf4ULCc9
	eerP0+4gla8NBeHo9Jhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hskew-0003yV-Rs; Wed, 31 Jul 2019 09:12:34 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hskea-0003kM-OZ
 for linux-mtd@lists.infradead.org; Wed, 31 Jul 2019 09:12:14 +0000
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
IronPort-SDR: zRx5EuQPhj9JfDz42jSimj9SqQNXc9Ob2Gi9btUlSZmPaK6naSJXP/kKrfk7KqXHN5oW04GRSI
 j3YFyfJN4YgS2dei+7xe0FFOlvmGAgESQUIcL1FinTZUHvlGrVOlw41hOJJMZEcoT+jvzXL4Ds
 NmbJ7GQwHCfXmG8U261V22+Kq77VPf5akS9CCVcZJJ438PSkaTsxNe3yI7gq5R+FePEgObjNsx
 YY17nUaj1vtXY8nqWEqGfD254Hinjfz456yXI1TY819UufxUVd1ssPMyHk3kZRVagyVgNwj8jj
 Zsk=
X-IronPort-AV: E=Sophos;i="5.64,329,1559545200"; d="scan'208";a="41824396"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 31 Jul 2019 02:12:11 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 31 Jul 2019 02:12:10 -0700
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 31 Jul 2019 02:12:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Yf569aeLJH4UGq6h11pKWI9NJgxo469eWdplaM1N0WRuW6fVIBvQ1LdZze3/gRCQKA0v6u27b0rANDnvehkCuImJU+/By2uU9Z4OBOpE/HzZqERyMZJDScoc/nSu7gZ0Pa5sIAgzEAi+NT2ewA1DQNnRWrKv+6K1m4NmQXvaOWtUGXCNce1HRyNQmuxx7EEwqHlkEYLu9wkKanaWi/gL5DsPrXexJ3PbCd+apDgO2fdcFFd8L7GNhTmWxv1Sy+bqdFB44EfW4MwjljV43WcS0UqPGWMEv4m5URNmtb25l4istr+nuprVQAxOId8vFkKnQB5AZPOH7IsVPUcgIPx2Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jEQHSlecCAJjZ9NwC8f1ADL2pS4YNT8gGEk3FdG4FT8=;
 b=GIBlX17Tvnt/wn+cY609y1bgk1ikCwoBgGNfVDLabWh6TksbmW1nh/L7rD3iBDC/Kewzv2KlIg7Q0FEbaylC7In5VK9vT0MMs0RFHZMK/NzPwxhCYTr33shlAcVXNPFChIJEI03WzM70u9KHdgaYeHuhqHuoiYlynO0tngkOIgRa0DcE9WTTKWpnk60I4Df6uuWeJT8zhO/xTMI6po8DEd6vg1+kBuT9/lHBtzXR4YIEyXWE93jtXKlzOd32r4VNA7n5bbmkIZtbMYlf9ezgd8l33inFCQy5PQFJTPHE74ITojF82THvIsKu2POpeP13FSNneiQr2ObVDvtqbF0JZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=microchip.com;dmarc=pass action=none
 header.from=microchip.com;dkim=pass header.d=microchip.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jEQHSlecCAJjZ9NwC8f1ADL2pS4YNT8gGEk3FdG4FT8=;
 b=EeqUzJBvSNMyTMa/VWgg0KvfKJDwR0hL/a3AkcXN1mzUoux/NTS91VkYJtNXrNi1SQVVhO9zA3tlDoBl8on31YuNWAUMtQp5klJ1ycXWSx9Ll65QMweMruZbe8AOJBbdefEr2nKtyyHmD6P2ea5ciGyFMYnxQJjb//wzLnDPQUo=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB4414.namprd11.prod.outlook.com (52.135.36.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.16; Wed, 31 Jul 2019 09:12:08 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::61d1:6408:89a2:8de5]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::61d1:6408:89a2:8de5%2]) with mapi id 15.20.2115.005; Wed, 31 Jul 2019
 09:12:08 +0000
From: <Tudor.Ambarus@microchip.com>
To: <boris.brezillon@collabora.com>, <marek.vasut@gmail.com>, <vigneshr@ti.com>
Subject: [PATCH 1/6] mtd: spi-nor: Add post_sfdp() hook to tweak flash config
Thread-Topic: [PATCH 1/6] mtd: spi-nor: Add post_sfdp() hook to tweak flash
 config
Thread-Index: AQHVR4AHEj1fjWjkOU2mBlHhbksvPA==
Date: Wed, 31 Jul 2019 09:12:08 +0000
Message-ID: <20190731091145.27374-2-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: 7ac62ca9-a150-4ce5-23c8-08d7159729be
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR11MB4414; 
x-ms-traffictypediagnostic: MN2PR11MB4414:
x-microsoft-antispam-prvs: <MN2PR11MB441419A8779BD8E7D267174BF0DF0@MN2PR11MB4414.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(396003)(39860400002)(376002)(346002)(199004)(189003)(14454004)(26005)(81166006)(6116002)(50226002)(76176011)(5660300002)(66066001)(2501003)(6512007)(25786009)(486006)(102836004)(107886003)(2201001)(110136005)(305945005)(3846002)(7736002)(68736007)(53936002)(6486002)(478600001)(86362001)(71200400001)(71190400001)(186003)(476003)(256004)(8936002)(6436002)(7416002)(386003)(52116002)(54906003)(316002)(66946007)(81156014)(11346002)(2616005)(2906002)(64756008)(4326008)(446003)(99286004)(36756003)(66556008)(8676002)(66476007)(66446008)(1076003)(6506007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4414;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: CWxd0op5kU95eOvKe3qSCGCSkcm2nBOU33aCz4+lUe8tAhruEQrJLNKV3fBon8NEuQK8o6shu8nB40UepC5vPzOk0TiWtCoTAygnd2oG91RngNd9q9zzVGigea98YYgN2Eatr4zFBEDxR0cvMiBFRolIxxMXlZ7vFFsS58PZwO6kJf69XKtmmo+vXqbMue3CXedKVWuVvduBlGi17TL5EszhsCHZlo8+in2fxAU2uX8r9FsPSbhrO4bkraFq2KRwN1yF5Dcylhb8FaZzY66dd5gRZjSH89zCFCy39IazXtcT6HzWRlcQhaTVX/As6ehKqkb7pFsGNpH0lzCNyZsxsIVgT0kTWokbejeDComwAbrVwI1/Mi3aem9zVCfMpEIC4OVVf8MUoY1jzglCGxXVeTKn7IX12qUc7XsO3SfM1Cc=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ac62ca9-a150-4ce5-23c8-08d7159729be
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 09:12:08.2677 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tudor.ambarus@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4414
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_021212_908995_BB2D7B49 
X-CRM114-Status: GOOD (  10.15  )
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

SFDP tables are sometimes wrong and we need a way to override the
config chosen by the SFDP parsing logic without discarding all of it.

Add a new hook called after the SFDP parsing has taken place to deal
with such problems.

Signed-off-by: Boris Brezillon <boris.brezillon@bootlin.com>
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 9b9f9b530207..2c2d13060427 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -221,6 +221,11 @@ struct sfdp_bfpt {
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
@@ -232,6 +237,8 @@ struct spi_nor_fixups {
 			 const struct sfdp_parameter_header *bfpt_header,
 			 const struct sfdp_bfpt *bfpt,
 			 struct spi_nor_flash_parameter *params);
+	void (*post_sfdp)(struct spi_nor *nor,
+			  struct spi_nor_flash_parameter *params);
 };
 
 struct flash_info {
@@ -4444,6 +4451,13 @@ static void spi_nor_default_init_params(struct spi_nor *nor,
 	spi_nor_init_uniform_erase_map(map, erase_mask, params->size);
 }
 
+static void spi_nor_post_sfdp_fixups(struct spi_nor *nor,
+				     struct spi_nor_flash_parameter *params)
+{
+	if (nor->info->fixups && nor->info->fixups->post_sfdp)
+		return nor->info->fixups->post_sfdp(nor, params);
+}
+
 static void spi_nor_init_params(struct spi_nor *nor,
 				struct spi_nor_flash_parameter *params)
 {
@@ -4454,6 +4468,8 @@ static void spi_nor_init_params(struct spi_nor *nor,
 	if ((nor->info->flags & (SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ)) &&
 	    !(nor->info->flags & SPI_NOR_SKIP_SFDP))
 		spi_nor_sfdp_init_params(nor, params);
+
+	spi_nor_post_sfdp_fixups(nor, params);
 }
 
 static int spi_nor_select_read(struct spi_nor *nor,
-- 
2.9.5


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
