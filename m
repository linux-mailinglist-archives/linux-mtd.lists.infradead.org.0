Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5CB33011
	for <lists+linux-mtd@lfdr.de>; Mon,  3 Jun 2019 14:45:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3ZqB0JwVLtTutqCgl6xZjPEFh3pICCKn6XN1NfmS0Gs=; b=qV6zBmar9y9she
	ODFIC+b4XnJhQPDZhG3ZmesFsdv/BY19QW6JDtZc36F7gVatz6GEYT+fmky8WZuDVz0ZwlHBlpXtV
	X3K8zdzDbY0Au9AQaPB4iuYN3AqCea4zNiaRaNUDRP4QX+i8djRF2rQ2gXx0XaYjEq7wPaPmY22GM
	+9o239oKAoP9t7GiEL11DPiP9+tmH3mPMLkXcRrVLXKoh69z3vk87yMNi9oqLc/oKvKDjotmUWL3D
	bSBAFWdsXUujSBUrjwKzA6u7TGeBqm5KdSTpVVYT0XKMZK/SqiGdcxb2K7JQaVLLqmK3IJowoXClr
	H/pZ3xVg8mzRA0UUyFeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXmKs-00066w-W6; Mon, 03 Jun 2019 12:45:11 +0000
Received: from mail-eopbgr770042.outbound.protection.outlook.com
 ([40.107.77.42] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXmJi-0004Oj-HJ
 for linux-mtd@lists.infradead.org; Mon, 03 Jun 2019 12:44:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=micron.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ceEg2Cu+TtkgwAu5gnOJH72jT2tkLxZkbe0TP39b7qY=;
 b=wPSy3R92swnQJg5ommpIzzJ/w2bC0zZ73yaK3IpeyfVTIjQDFft2OUBLdtlNiMY3P/n6eoJJcmUnJgCd1zYbl3r63K25O4yBfZfFirjRcVdyKgURxCpm/2Ooe8e9myR/hfMWWS6AKeQmTcExdWqSGpZg4Fr+tJt8VwDjnfTaOFs=
Received: from MN2PR08MB5951.namprd08.prod.outlook.com (20.179.85.220) by
 MN2PR08MB5854.namprd08.prod.outlook.com (20.179.98.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Mon, 3 Jun 2019 12:43:38 +0000
Received: from MN2PR08MB5951.namprd08.prod.outlook.com
 ([fe80::f0f7:f262:a3c6:ce23]) by MN2PR08MB5951.namprd08.prod.outlook.com
 ([fe80::f0f7:f262:a3c6:ce23%7]) with mapi id 15.20.1943.018; Mon, 3 Jun 2019
 12:43:38 +0000
From: "Shivamurthy Shastri (sshivamurthy)" <sshivamurthy@micron.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger
 <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>, Brian Norris
 <computersforpeace@gmail.com>, Marek Vasut <marek.vasut@gmail.com>, Vignesh
 Raghavendra <vigneshr@ti.com>, Boris Brezillon <bbrezillon@kernel.org>, Yixun
 Lan <yixun.lan@amlogic.com>, Lucas Stach <dev@lynxeye.de>, Anders Roxell
 <anders.roxell@linaro.org>, Stefan Agner <stefan@agner.ch>, Marcel Ziswiler
 <marcel.ziswiler@toradex.com>, "Bean Huo (beanhuo)" <beanhuo@micron.com>,
 Paul Cercueil <paul@crapouillou.net>, Frieder Schrempf
 <frieder.schrempf@kontron.de>, Chuanhong Guo <gch981213@gmail.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: [PATCH v3 09/12] mtd: spinand: micron: prepare for generalizing driver
Thread-Topic: [PATCH v3 09/12] mtd: spinand: micron: prepare for generalizing
 driver
Thread-Index: AdUaBiMix19KY2jqS2qrkB9UmPjl7g==
Date: Mon, 3 Jun 2019 12:43:38 +0000
Message-ID: <MN2PR08MB5951A62F8BE7AC5A125F1949B8140@MN2PR08MB5951.namprd08.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=sshivamurthy@micron.com; 
x-originating-ip: [165.225.81.42]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9ffc65b4-4f50-43ca-8584-08d6e82119f2
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MN2PR08MB5854; 
x-ms-traffictypediagnostic: MN2PR08MB5854:|MN2PR08MB5854:
x-microsoft-antispam-prvs: <MN2PR08MB5854B512C2D7B1F78C760109B8140@MN2PR08MB5854.namprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-forefront-prvs: 0057EE387C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(346002)(136003)(396003)(376002)(39860400002)(189003)(199004)(5660300002)(81166006)(8936002)(7696005)(14444005)(7736002)(8676002)(305945005)(55016002)(256004)(2501003)(81156014)(102836004)(2906002)(110136005)(53546011)(6506007)(25786009)(55236004)(33656002)(76116006)(476003)(73956011)(66066001)(66556008)(66946007)(26005)(99286004)(64756008)(486006)(66446008)(186003)(66476007)(52536014)(6436002)(74316002)(9686003)(6116002)(3846002)(2201001)(14454004)(7416002)(86362001)(316002)(53936002)(71190400001)(71200400001)(68736007)(478600001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR08MB5854;
 H:MN2PR08MB5951.namprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: micron.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: AF+l9W2C39jPSeRoqKul7jeoVnEjumdeCK2i2y2BWI8b/mwt8zp3rV9jfdEq1Mn0sXDd5ZEOuMG0bDvC+hnPgc8JOsTTYuGpCdnvXYXP6BeCrgZ1kV5lFS7rOxm8P1fFVudYOEePXxGrs+uWP41uWF4kGVk0D+TpPdtJPuwHCgsl7Nn81jk0tZhbHy9HracgiHGdrvE+LOMaLBt6O0AemUSuM2dWh1mdYAudy0SjUZ2brprFaxTT1S5aUU02IOb56H3/NABp6EMGg/o8kQsid8v8pgJ3SqpMNNI88xzaeIZNqoKRqPzi4VXOEeBaT1D2NP4FOEaZ9SW9F1umN8b4ThF4fO6HSq6zCOXeNmRcatOHqq8GEQjekwGV8NFMcCKGjjchtG9xVDWCHDW825SGyWMlAankMef+dGssFkwt2Vs=
MIME-Version: 1.0
X-OriginatorOrg: micron.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ffc65b4-4f50-43ca-8584-08d6e82119f2
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2019 12:43:38.4244 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f38a5ecd-2813-4862-b11b-ac1d563c806f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sshivamurthy@micron.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR08MB5854
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_054359_266602_ADE4BF69 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From 654f8acf5d0724fda54c352cc91b0ab576dff928 Mon Sep 17 00:00:00 2001
From: Shivamurthy Shastri <sshivamurthy@micron.com>
Date: Tue, 7 May 2019 15:19:22 +0200
Subject: [PATCH 09/12] mtd: spinand: micron: prepare for generalizing driver

Generalize OOB layout structure and function names.

Signed-off-by: Shivamurthy Shastri <sshivamurthy@micron.com>
---
 drivers/mtd/nand/spi/micron.c | 28 ++++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/mtd/nand/spi/micron.c b/drivers/mtd/nand/spi/micron.c
index 7d7b1f7fcf71..95bc5264ebc1 100644
--- a/drivers/mtd/nand/spi/micron.c
+++ b/drivers/mtd/nand/spi/micron.c
@@ -34,38 +34,38 @@ static SPINAND_OP_VARIANTS(update_cache_variants,
 		SPINAND_PROG_LOAD_X4(false, 0, NULL, 0),
 		SPINAND_PROG_LOAD(false, 0, NULL, 0));
 
-static int mt29f2g01abagd_ooblayout_ecc(struct mtd_info *mtd, int section,
-					struct mtd_oob_region *region)
+static int micron_ooblayout_ecc(struct mtd_info *mtd, int section,
+				struct mtd_oob_region *region)
 {
 	if (section)
 		return -ERANGE;
 
-	region->offset = 64;
-	region->length = 64;
+	region->offset = mtd->oobsize / 2;
+	region->length = mtd->oobsize / 2;
 
 	return 0;
 }
 
-static int mt29f2g01abagd_ooblayout_free(struct mtd_info *mtd, int section,
-					 struct mtd_oob_region *region)
+static int micron_ooblayout_free(struct mtd_info *mtd, int section,
+				 struct mtd_oob_region *region)
 {
 	if (section)
 		return -ERANGE;
 
 	/* Reserve 2 bytes for the BBM. */
 	region->offset = 2;
-	region->length = 62;
+	region->length = (mtd->oobsize / 2) - 2;
 
 	return 0;
 }
 
-static const struct mtd_ooblayout_ops mt29f2g01abagd_ooblayout = {
-	.ecc = mt29f2g01abagd_ooblayout_ecc,
-	.free = mt29f2g01abagd_ooblayout_free,
+static const struct mtd_ooblayout_ops micron_ooblayout_ops = {
+	.ecc = micron_ooblayout_ecc,
+	.free = micron_ooblayout_free,
 };
 
-static int mt29f2g01abagd_ecc_get_status(struct spinand_device *spinand,
-					 u8 status)
+static int micron_ecc_get_status(struct spinand_device *spinand,
+				 u8 status)
 {
 	switch (status & MICRON_STATUS_ECC_MASK) {
 	case STATUS_ECC_NO_BITFLIPS:
@@ -98,8 +98,8 @@ static const struct spinand_info micron_spinand_table[] = {
 					      &write_cache_variants,
 					      &update_cache_variants),
 		     0,
-		     SPINAND_ECCINFO(&mt29f2g01abagd_ooblayout,
-				     mt29f2g01abagd_ecc_get_status)),
+		     SPINAND_ECCINFO(&micron_ooblayout_ops,
+				     micron_ecc_get_status)),
 };
 
 static int micron_spinand_detect(struct spinand_device *spinand)
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
