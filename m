Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 171B29BD9E
	for <lists+linux-mtd@lfdr.de>; Sat, 24 Aug 2019 14:19:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tz/baRzlTkPvinsUShdyLz6aOkshmO4GqIdmvkJU3pQ=; b=J2uPq6AwaNS4sN
	DNQbT3QyQbaQVtsGQbF+cV4MhQmCo/gYSW1R3u9iZHZEmQuMFkpBEgDJsvSgFD3Yn66Od4wXXvWnG
	bh00WQxZH6zG/kzdjOL9QANfJfY/FzzlVElztfvcvjMV3S+QsgTsctCH5zwKzEuAw0TenJYJ5dqIG
	hdrzk8ZeNts3VYg8T8ZWqz6MkPaAmyeNFNd87qgIJ+FcMkqQxXjFG+PfBELWhC6lVwkWXVQbbpqN9
	KenSd3lfkK6vXZfvcZvnGZquOc6a7SpPVQOpRywsEppSXYlzTKryrLBLAGYYeNpfGV+WzlUCyQZJb
	jA/36xhR8W2nVR++ETcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1V1D-0001Mn-Tq; Sat, 24 Aug 2019 12:19:43 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1V0v-000111-QJ
 for linux-mtd@lists.infradead.org; Sat, 24 Aug 2019 12:19:27 +0000
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
IronPort-SDR: suB42bOmdYgWUmXPa5YB/8saMsCRGhHHCcaDT2owBLBUi0xELHoJQI/N4q3UW6HIC7YpelPb80
 38mNUbVpB/LDDsBihlsx1NGBuGVdwpDviQZsVQKDksa4nqoh3Kwlku39bYrMCoX5Hq4eP9Gc3a
 2SlvdrZ3xA8410qI2sEanTsVUNp1o743cPfGGkb6x70rNAdeIlTDGt0in97k285HI1pHPP956z
 JtILnFf1IyTCC+aePaixxTIYi9zdIDJxUig1/6sUb7/DCOKTe3+d+1TsAx+d0oc8ZBfLYr1gr9
 fKo=
X-IronPort-AV: E=Sophos;i="5.64,425,1559545200"; d="scan'208";a="46393051"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 24 Aug 2019 05:19:25 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sat, 24 Aug 2019 05:19:24 -0700
Received: from NAM05-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Sat, 24 Aug 2019 05:19:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RoU5W3TH6cw1LOGqUlneLnTOL7H19gQxEnrP188N3RVrJnIVfcPKlWze9ZirLGA4XcCM6+DB/9iGDA/9BFnP0E+lGPccTVf0LwCx8S5snc79gPKRE07xmMpRWdtzJ4kRdR1ehqoWu4T5Bhr/TvPUXOGGSpCfhPO3WyBfA06GAsoQ1Q68BfVQSOJqs8OpY0JRaK00hKomNYJ3PeLHNThB3NRbtBT1+O5lMbrR56DeTt3SPI6if5R8fgWI6XDf0Z10Shcx1IxafV+j2RugzvDfuG+3JOn7Wdi58ULf5CAugS/WJhgYlk6dOMdjwK+XZ85JJuYcZFQGkilmD9XEPqeq2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iKyxN7zvmePKJTQAY6hLYJ+qUTy3y4CZ5b5vr40nKg8=;
 b=OaCGd3yBpoDEAJNdg/xavZhq5HDTnwmEWqlsY4A8u+ux/XYb0zir91HaWev4N3M4/x3kbAzoT6tXm7jvM126SO79vWkzfm91esX2RyV+kQRK+BkyRbjaPrDHWNoos1ln6fbKxorFyg6q/0wOo9gI/tUCWGGhydk112IG0GqNFHOv6tO2pGWjbGVsbI1/pBID4Zygkmd67FkUMv0SBPm5UnUpENgcwEyrNKHndkr94gWR5Z+5LHu66z5NxZXrPJAljvSaGXY+CDfXwVwhJlz1PRa78KSTW8ENP0eVk6pz0ARJ2cOhuS5p8COu2XAmDc2srMpoXY1k7OJbWWUQl16ggQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iKyxN7zvmePKJTQAY6hLYJ+qUTy3y4CZ5b5vr40nKg8=;
 b=hXYkgRtDH1dx8RYZeni+4QRdiyFE8+jWNXDKJk8bS7fjRjcvGDRNR3yaQK1SYWumPhXlEBjSC7dKpBVS5bAjCNM2Tb8UOdCSvhzR/EHNZ3Wtpo6Kpzje2Lcfj4hupMKXRWvJjcmZe2j7WVg9bSCfQ1fqzXxGd+JXK6dCcH8ps+U=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB4317.namprd11.prod.outlook.com (52.135.36.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.19; Sat, 24 Aug 2019 12:19:20 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5%7]) with mapi id 15.20.2178.020; Sat, 24 Aug 2019
 12:19:20 +0000
From: <Tudor.Ambarus@microchip.com>
To: <boris.brezillon@collabora.com>, <marek.vasut@gmail.com>,
 <vigneshr@ti.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <linux-mtd@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 1/3] mtd: spi-nor: Bring flash params init together
Thread-Topic: [PATCH v2 1/3] mtd: spi-nor: Bring flash params init together
Thread-Index: AQHVWnYoKN2C4GgKNEas4QOeFP8sRA==
Date: Sat, 24 Aug 2019 12:19:20 +0000
Message-ID: <20190824121910.15267-2-tudor.ambarus@microchip.com>
References: <20190824121910.15267-1-tudor.ambarus@microchip.com>
In-Reply-To: <20190824121910.15267-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0602CA0013.eurprd06.prod.outlook.com
 (2603:10a6:800:bc::23) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [86.127.53.184]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6329ace6-429c-4d98-0521-08d7288d4ab7
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR11MB4317; 
x-ms-traffictypediagnostic: MN2PR11MB4317:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4317D031D9CF8BFC829CE040F0A70@MN2PR11MB4317.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0139052FDB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(396003)(366004)(346002)(39860400002)(376002)(189003)(199004)(81156014)(110136005)(6436002)(3846002)(8936002)(8676002)(6512007)(50226002)(305945005)(25786009)(7736002)(478600001)(53936002)(2906002)(316002)(66066001)(81166006)(99286004)(36756003)(6486002)(107886003)(386003)(6506007)(102836004)(476003)(2616005)(52116002)(76176011)(446003)(486006)(26005)(186003)(6116002)(2501003)(4326008)(11346002)(71190400001)(71200400001)(2201001)(66946007)(66476007)(66556008)(64756008)(14454004)(1076003)(256004)(66446008)(86362001)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4317;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: NmTPWFESWvm07RiUp/F7Jyw7W3Utr6WjgwrNnFHmpUyoYMFlUWrlViKdt/8UD1MzC62EYhP9gyM3j+jLMMsKA1TwEEP61kS4y6/BkWhFw9noZNPsyKybM1hIo86p8XA3yP2a8YZtvjBprXQ8w3e81bIRIpycYhBHqixcIzDLqcWFES2HF/daP/hHMN17Lp2S4sQZW7HJylHnw73ZnkeAV5kcjDI+z/E421PNVCVuIx9/jcwCGKyB3WqHNn64BamcPBuoh2qITqfCdGtXSZWCENu8XYr1kqY0uGhxQ74sm6khPqUcTdo3DCgbcS1llTCK2UT9eA7shKEKwh7BrFjwoLqnklZE6Z6ABvmoTz4+FxKA7YVoXsS/XwSyjpKL/X4pDhC4gKoKLgA8277PVmDOew4ZlclfbRg4u0lEG233zdc=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 6329ace6-429c-4d98-0521-08d7288d4ab7
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2019 12:19:20.7041 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ahdWu/cv7jpLgr8imZ7C1hB+2BxnLi4Q04AFvFgmPVnL8Mw1RSRMVw/A0hYISAPDzEetzRXpVYCO00I9zW2EdOc3WQ5cRbwvmMkeoUoeP5s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4317
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_051925_885069_9F44B2B9 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
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

Bring all flash parameters default initialization in
spi_nor_legacy_params_init().

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 29 +++++++++++------------------
 1 file changed, 11 insertions(+), 18 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index e76c23d1c54a..7e6da0ace2c7 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -4469,6 +4469,7 @@ static void spi_nor_legacy_init_params(struct spi_nor *nor)
 	struct spi_nor_flash_parameter *params = &nor->params;
 	struct spi_nor_erase_map *map = &params->erase_map;
 	const struct flash_info *info = nor->info;
+	struct device_node *np = spi_nor_get_flash_node(nor);
 	u8 i, erase_mask;
 
 	/* Initialize legacy flash parameters and settings. */
@@ -4480,18 +4481,25 @@ static void spi_nor_legacy_init_params(struct spi_nor *nor)
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
@@ -4897,24 +4905,9 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
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
