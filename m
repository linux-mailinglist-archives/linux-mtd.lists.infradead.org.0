Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E192D7BC0E
	for <lists+linux-mtd@lfdr.de>; Wed, 31 Jul 2019 10:46:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VQMWopa3giJItCnNWH+MIEZZF7C8kw6uU/ubYZPnFys=; b=dnAmOAxXu1OTIZ
	oy3gx9DuwODn20DXvimywG6D4gR6ABZsSzEuzE8+Yh17dGH9P4oqwRR5/XIJmuP6n0IVc14h3Zcul
	025n7y6dSO8oTLsMEozL05PdX5ufkUtEADHCs24IGkx0IpaHMjQeNaiaFtxGg+YSk4QMNa7a7olXR
	vKRdbY352jzUuSIHpchXcTPpXIAttd+2DInwfIgfpgAyVdQKkufG6K3x6r5COih/YyNae/w3WfniS
	hAg57ofCvD/N6xafpRkShtJMnMdKOocl4qthgG0zVajtQBGl1FI3ZR0iKSXP7HywK+8hTe4DaTCpF
	1rQ3eNb892FbNoutD0uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hskFl-0001Zx-B7; Wed, 31 Jul 2019 08:46:33 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hskFa-0001ZI-2p
 for linux-mtd@lists.infradead.org; Wed, 31 Jul 2019 08:46:24 +0000
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
IronPort-SDR: dxJ74kRcq2vIvuKBPxg6/VAjnsTqs+E2/T88JD8R7yNX+GF101symp/j1zspryYfiaSvF5eOdY
 L8+PnoJ+BtjZ136wx3Tco06XySbZgy8kqYuAYw5QbKxgFDn5nggNvT1O46UP+UQhBzmiM4VfKf
 xLP5ojQk2o7i8ZLnvu4CcH/6XHw0rHtzbPM2nGLT/w35Z7JyDNN4PrZRTzRDRkL/DIO7x32k9s
 w1gW4Dh3/QpDgTOEbZtA8siQK/kE4851gW0JO0m4HG+K4hfX78gCL618LELU/4/4QGUNm7f51A
 Z4A=
X-IronPort-AV: E=Sophos;i="5.64,329,1559545200"; d="scan'208";a="44783306"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 31 Jul 2019 01:46:19 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 31 Jul 2019 01:46:18 -0700
Received: from NAM01-BY2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 31 Jul 2019 01:46:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gR/9L44VLzinj57nSGivPk0YjVf8QTv3RBFw/AMbqhsvrYO5nPb8Z73uypqxu+mh2SBIets8tiwZzLeRJTuHGZj5EBJek5I8mFXfTUgheJ/VYAPlAXL+Fc1nTF7cV6hc3QUNJeKr22Hu/8Yv3o3VnPhaBCBhwXfaKs16ML/KJdiesZa8/bKDsQztIMzLw+wdn63sS4+JspLbxCX573U+BH1uVRI6moLOfUFgFuapvYc8vKep0fKITq+sJSM2N/Kh5hJ/6k5RoIGsIzkUwTGiSOfKKrueV+DyeYWsLJoQcm/OUsJuibjtCPuY/M/5bM84GTRq3BniDofU7JSif0fBqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0sOCR84Ar4Fn/W8IRsfiyC/cKasNVLls7C8kbhjIgnY=;
 b=nJCzaeq2SRtMWLi5U0p7iytrlE4mOMSApiKvzb7ibjyg1VDJBj9n0jmOE96jy/FbBBK+hDFwf1dyLHMCw7tYGHo8O579z9rvTZ48kyPEx9PRDDiAOhBVlJOkgnGnHihFPH662kk9XzaoaLyYVTeDXtthPUIfLIUKs7x5FXbJdNi8Em/Ru8gQBKC0QFqHyD9VpGYFqHQRTKU6ffZBnxG9OyTKfIpmpIOxWyo0ylLPzlB9Wvcc1FLYuitltZ2au59cfiDt0oDURVfo9BtPjrxXBYyNeEoNelIX8xDYpTSy+hLs0qampoEI3FXsR2/G22wSvdZjgx1GE2NHDj6DyDH2jQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=microchip.com;dmarc=pass action=none
 header.from=microchip.com;dkim=pass header.d=microchip.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0sOCR84Ar4Fn/W8IRsfiyC/cKasNVLls7C8kbhjIgnY=;
 b=rU3jgNSS0UHIt9pNuCaNVDBgD1jf12bmMznFEgud+zq7BQkVTZQdDoa6g+fSlWAhUZcRou/22ZohoGXFT7YmE+ZDxWN1rbXb6YoW2Oiz925WIYRE3rR7xpeCI7g6d0rPCsZaV/aOlieEuPRE2fUQYA0Isr+1BKVQKZKKEPnSuKg=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3887.namprd11.prod.outlook.com (10.255.181.206) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.13; Wed, 31 Jul 2019 08:46:17 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::61d1:6408:89a2:8de5]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::61d1:6408:89a2:8de5%2]) with mapi id 15.20.2115.005; Wed, 31 Jul 2019
 08:46:17 +0000
From: <Tudor.Ambarus@microchip.com>
To: <marek.vasut@gmail.com>, <vigneshr@ti.com>
Subject: [PATCH] mtd: spi-nor: Fix the disabling of write protection at init
Thread-Topic: [PATCH] mtd: spi-nor: Fix the disabling of write protection at
 init
Thread-Index: AQHVR3xq181SaXv8vEit3yagtYoHVg==
Date: Wed, 31 Jul 2019 08:46:16 +0000
Message-ID: <20190731084606.26289-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR07CA0145.eurprd07.prod.outlook.com
 (2603:10a6:802:16::32) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1f4ec134-f8ba-404f-8a8c-08d715938d0a
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR11MB3887; 
x-ms-traffictypediagnostic: MN2PR11MB3887:
x-microsoft-antispam-prvs: <MN2PR11MB38876EAE6F5FE2814564BF71F0DF0@MN2PR11MB3887.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(346002)(376002)(136003)(366004)(396003)(199004)(189003)(66556008)(66446008)(66476007)(68736007)(64756008)(53936002)(6512007)(66946007)(25786009)(6436002)(71200400001)(386003)(305945005)(6506007)(6486002)(1076003)(7736002)(52116002)(66066001)(5660300002)(110136005)(54906003)(50226002)(2906002)(107886003)(316002)(3846002)(81166006)(81156014)(256004)(186003)(86362001)(6116002)(8676002)(102836004)(71190400001)(26005)(2616005)(478600001)(4326008)(99286004)(36756003)(2501003)(486006)(476003)(14454004)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3887;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: TWKTHXWD62PX1KELpb/m3HNWB3TdtHQ8P0p83DJuasisU7DEe+H/7icM9XVDZhx1Mis3xl6d6pb67mECZzu7w2VcQB1OAgc8j3qqy17CFT6VUJCV4zsQF6gHd57oJ2rnWKk9hAxV74cURGbP6fAVDNDWN3AzLIvdf8MWx9oiGfaAFzBW+MHH/iCTriL+8KXIF7kxZD08k6Fqog5A0OUpH3Vl/WRybH3VTrDfHexIGAf8lAbyF+2XZCGSgCKInkHzwbm2xGGsFE15dA1mbudsrlp5A4q/BGQR6qJicCCLJydiAqWjQVLtI7qhGrNwz6aPULmRY/6ODnuS+cd571X/vcDBYOS6Z2spB779iHeQsFK3lXhDt6bXn4AGRjAr6vW7qcZ1yNQzy30EQLmAJo4FNTxoQ8cWKjhUaRBI+oGPgyQ=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f4ec134-f8ba-404f-8a8c-08d715938d0a
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 08:46:16.8769 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tudor.ambarus@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3887
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_014622_291077_75B3FFCA 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
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

spi_nor_spansion_clear_sr_bp() depends on spansion_quad_enable().
While spansion_quad_enable() is selected as default when
initializing the flash parameters, the nor->quad_enable() method
can be overwritten later on when parsing BFPT.

Select the write protection disable mechanism at spi_nor_init() time,
when the nor->quad_enable() method is already known.

Fixes: 191f5c2ed4b6faba ("mtd: spi-nor: use 16-bit WRR command when QE is set on spansion flashes")
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 924dbaf3fa49..28a64dbdaea9 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -4357,8 +4357,6 @@ static int spi_nor_init_params(struct spi_nor *nor,
 		default:
 			/* Kept only for backward compatibility purpose. */
 			params->quad_enable = spansion_quad_enable;
-			if (nor->clear_sr_bp)
-				nor->clear_sr_bp = spi_nor_spansion_clear_sr_bp;
 			break;
 		}
 
@@ -4621,6 +4619,9 @@ static int spi_nor_init(struct spi_nor *nor)
 	int err;
 
 	if (nor->clear_sr_bp) {
+		if (nor->quad_enable == spansion_quad_enable)
+			nor->clear_sr_bp = spi_nor_spansion_clear_sr_bp;
+
 		err = nor->clear_sr_bp(nor);
 		if (err) {
 			dev_err(nor->dev,
-- 
2.9.5


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
