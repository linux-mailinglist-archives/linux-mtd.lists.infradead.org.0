Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C639CF3A
	for <lists+linux-mtd@lfdr.de>; Mon, 26 Aug 2019 14:12:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vntLHfYAi5gvxbf30wrhADwvyAGgOkLJUu/I5BqphAU=; b=PMfVigNtXPpoVa
	2tt+WtGL3tNF8Eu4NajZ0leSQV2CEpz+jNho9v9uJlkiqCiXA2X0fXLEdLqdvxQOR7+BFjIp6e52X
	QmbcaanuXYQPXM6q/b49sXKV0n5hrixpoT7HE0RAIcxtBew9kI3JMotFk8eQnsuFuQildYE04Wz53
	KqrPa8ljqDaLJZI4wUFPfFxY5NbD9HQa/AkA7Blut2yMcuEKjebSKJVZ/HILyYmGax8luzf/Q726y
	qaqg57Ceev1UV4k8dMO/OpWIV3phYLXgP135qnTveBNIkYKOXjF9jCPco/AZFG76q6IqeDiP0Z+di
	GfLyxTuz7yyGnHLjSLOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Dre-0007sk-7w; Mon, 26 Aug 2019 12:12:50 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Do8-0002oS-Rd
 for linux-mtd@lists.infradead.org; Mon, 26 Aug 2019 12:09:19 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: CiHVrJUU7cmxvsry7h+JLLHsAxpeYzDctQZzi3sXW135Go7GVploil062P6UaKXtGGmZPJXKND
 /FObsI7rA1+bdaxLvi/0J5UxmKTNAmFXTwgUPnaFRuLHIfucLFeeF1Tomhh5aJKlehCL5dGUrx
 D3rzvAmqfuB9pyph2CxT296UJmRLIWBE0ja8Zt4MnsXsqFHZAxpS+qinCjknOpyOkIrk42Q0y5
 gi3MbzMEOJEr67LTbOIr5hOSdoSf7MdLJi99ZjXDRgxp07UYBrT2qoDXS8vd6UeoAImm7Ul5hh
 Qqs=
X-IronPort-AV: E=Sophos;i="5.64,433,1559545200"; d="scan'208";a="46520791"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 26 Aug 2019 05:09:09 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 26 Aug 2019 05:09:07 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 26 Aug 2019 05:09:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mbUR453aNfUAxxAKhUGKLXninp46uOvs1raOgD0Vr4Qbs6R1G6bJoGAIEz2xFDKwbs3xLjTzVcsR8yBuS9nY0syLJQxfZ8qSfC31cdUUNWQIqfDigNrLg6Txt5aDJdXuC7RQ8W6afrvvzmbRMZecbP1JoKfzDLTLleA1UYoB+WKX93oqkIcPJ9cW6dFj5bqGE0D2RRkdFdy5BZGo6qb/fbFD5FFcMYt1g7HIhheQrNuqI9XAuf9wzwHiWlIG/ugecExxpWYTr7D5fM9YKO0jvZbx4BTqXWHwiHVoH1MPJoZpPW1JSiyNwVNxrBEEzZyp7gvI3Ic3Nrc3vPwswK3CkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=baMNcFxemh30UesYLRpSxjInG+neJNL1UAEyj/OjFCA=;
 b=Z8Jp7cK+BobPe6U0jTUFozume/uPCn/+eYWYSczW38T1fXQVXis0vpdsSQSM0ypn2Zt+n129hdZfH10P1KoMBGhtfsGGz5S162IQsfb3cbV74r7moU+epts1vGcp3aPnKBI+CFwYP4gyO/VqwrAyrecI7usQgjdFeH4eUZyciU3++IecgS9UMKOflY0OjJ1CWkDJZ6NZ7SrrSo7shsx8D88MVtKkLe1fJcVGC/yfFjwuei4Y5XLdc2upyuUn+cNs4VnZvD5Lxcm/3dmt0IVHajkXZ0KPcxaVcboASHfHAIxvBweIB+itv1kxe1xragRtsFWj+ZFkkwBDohfG43+zzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=baMNcFxemh30UesYLRpSxjInG+neJNL1UAEyj/OjFCA=;
 b=pbrkeAJ7JLFFzAV0+026hEBYck+H1KlcmqVcpuvw68Ezys+zvpSDYpmjkGQoClGKsLCcUhxRjzQTK4se0VR/IcEulfUGPNGO96CUU3LdprfmNNq/5mtKAWrUEGt0wVlk82XbZV76uuRHe9pRD7NCfL51LJKRysFwS1ZWIbMFvtg=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3678.namprd11.prod.outlook.com (20.178.252.94) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Mon, 26 Aug 2019 12:09:07 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5%7]) with mapi id 15.20.2199.021; Mon, 26 Aug 2019
 12:09:07 +0000
From: <Tudor.Ambarus@microchip.com>
To: <boris.brezillon@collabora.com>, <marek.vasut@gmail.com>,
 <vigneshr@ti.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <linux-mtd@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [RESEND PATCH v3 17/20] mtd: spi-nor: Bring flash params init together
Thread-Topic: [RESEND PATCH v3 17/20] mtd: spi-nor: Bring flash params init
 together
Thread-Index: AQHVXAcNKsgtTQvdf0Gwo9nlZWqAKQ==
Date: Mon, 26 Aug 2019 12:09:03 +0000
Message-ID: <20190826120821.16351-18-tudor.ambarus@microchip.com>
References: <20190826120821.16351-1-tudor.ambarus@microchip.com>
In-Reply-To: <20190826120821.16351-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR09CA0046.eurprd09.prod.outlook.com
 (2603:10a6:802:28::14) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 56300c36-a8f7-407d-318d-08d72a1e2fdf
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR11MB3678; 
x-ms-traffictypediagnostic: MN2PR11MB3678:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3678067AA33DB673E43D5CB7F0A10@MN2PR11MB3678.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 01415BB535
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(396003)(366004)(346002)(39860400002)(136003)(189003)(199004)(186003)(86362001)(305945005)(2906002)(7736002)(2201001)(6486002)(6436002)(6116002)(3846002)(66556008)(66946007)(66476007)(2501003)(66446008)(64756008)(5660300002)(71190400001)(256004)(71200400001)(1076003)(6506007)(386003)(14454004)(107886003)(316002)(99286004)(76176011)(110136005)(52116002)(6666004)(2616005)(476003)(486006)(53936002)(66066001)(8676002)(8936002)(81166006)(6512007)(4326008)(25786009)(36756003)(478600001)(81156014)(102836004)(50226002)(446003)(11346002)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3678;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: vdjyBlXYN05ssVtaHf7fJ6rne5xDKiLDvw5KjzhOeHN+hE+BUCcaqain4H96o5gzV4989Fg4rYYQRWJts/REmOvigyjNsIYoyWBK59PNhlAiOzkjJLCo9qLhti87Z71he9QbBF9PF4wEkcrbPP0wrTNpmpU4re7ahf1S8Ko3d7vojJidV7tkjHYyjlChz3jReByqQB2m1KtUifSO3Vq0Bhm4R8WcqGN4/DYRFY42oucxS37XHJOL8mj6Ju6oofXj0GHUOfGTXD7tvV8yjbLYBBW6R799UTzx38paf9Oki3GqFJEZXiBK2FUjORP2R3zU6gpZ3xEPce3Pg+/M0JMX4MSBmsenhIR+H/V8dlclTIrqB6PhCsUop6qPXaEmLLcyb0V81juNejwxKB/o7kxjd8ShP0eCeamLfB8KYrwt1rg=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 56300c36-a8f7-407d-318d-08d72a1e2fdf
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2019 12:09:03.8845 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: a1wgnCGFe+PsrVaPL2V4AwI+UaV5ZxIt3qxFsKLe52hsydSSh2GpSePY83sfRjz+KntNaSTxT0xoFN/m1pB/dI5YTFd/XS/UsaZqjOIYFJU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3678
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_050912_998544_929DAF5D 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
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

Bring all flash parameters default initialization in
spi_nor_legacy_params_init().

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
v3: collect R-b

 drivers/mtd/spi-nor/spi-nor.c | 29 +++++++++++------------------
 1 file changed, 11 insertions(+), 18 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 2699e999d21a..dcda96a20f6c 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -4453,6 +4453,7 @@ static void spi_nor_info_init_params(struct spi_nor *nor)
 	struct spi_nor_flash_parameter *params = &nor->params;
 	struct spi_nor_erase_map *map = &params->erase_map;
 	const struct flash_info *info = nor->info;
+	struct device_node *np = spi_nor_get_flash_node(nor);
 	u8 i, erase_mask;
 
 	/* Initialize legacy flash parameters and settings. */
@@ -4464,18 +4465,25 @@ static void spi_nor_info_init_params(struct spi_nor *nor)
 	params->size = (u64)info->sector_size * info->n_sectors;
 	params->page_size = info->page_size;
 
+	if (!(info->flags & SPI_NOR_NO_FR)) {
+		/* Default to Fast Read for DT and non-DT platform devices. */
+		params->hwcaps.mask |= SNOR_HWCAPS_READ_FAST;
+
+		/* Mask out Fast Read if not requested at DT instantiation. */
+		if (np && !of_property_read_bool(np, "m25p,fast-read"))
+			params->hwcaps.mask &= ~SNOR_HWCAPS_READ_FAST;
+	}
+
 	/* (Fast) Read settings. */
 	params->hwcaps.mask |= SNOR_HWCAPS_READ;
 	spi_nor_set_read_settings(&params->reads[SNOR_CMD_READ],
 				  0, 0, SPINOR_OP_READ,
 				  SNOR_PROTO_1_1_1);
 
-	if (!(info->flags & SPI_NOR_NO_FR)) {
-		params->hwcaps.mask |= SNOR_HWCAPS_READ_FAST;
+	if (params->hwcaps.mask & SNOR_HWCAPS_READ_FAST)
 		spi_nor_set_read_settings(&params->reads[SNOR_CMD_READ_FAST],
 					  0, 8, SPINOR_OP_READ_FAST,
 					  SNOR_PROTO_1_1_1);
-	}
 
 	if (info->flags & SPI_NOR_DUAL_READ) {
 		params->hwcaps.mask |= SNOR_HWCAPS_READ_1_1_2;
@@ -4864,24 +4872,9 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
 	nor->page_size = params->page_size;
 	mtd->writebufsize = nor->page_size;
 
-	if (np) {
-		/* If we were instantiated by DT, use it */
-		if (of_property_read_bool(np, "m25p,fast-read"))
-			params->hwcaps.mask |= SNOR_HWCAPS_READ_FAST;
-		else
-			params->hwcaps.mask &= ~SNOR_HWCAPS_READ_FAST;
-	} else {
-		/* If we weren't instantiated by DT, default to fast-read */
-		params->hwcaps.mask |= SNOR_HWCAPS_READ_FAST;
-	}
-
 	if (of_property_read_bool(np, "broken-flash-reset"))
 		nor->flags |= SNOR_F_BROKEN_RESET;
 
-	/* Some devices cannot do fast-read, no matter what DT tells us */
-	if (info->flags & SPI_NOR_NO_FR)
-		params->hwcaps.mask &= ~SNOR_HWCAPS_READ_FAST;
-
 	/*
 	 * Configure the SPI memory:
 	 * - select op codes for (Fast) Read, Page Program and Sector Erase.
-- 
2.9.5


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
