Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB3CE86B3
	for <lists+linux-mtd@lfdr.de>; Tue, 29 Oct 2019 12:22:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eptTUBfwmB0dHkbJIPRd+JotGYgp36fPYFbZPpstifM=; b=jswsH4p8OzeWqD
	mhOT6yieWeVJCPjffQXYjO0wY5ZD8blZLudEgMIuqa7rN7w//rFz9MMBoGQBgfgXCtyJHC9WBUsB0
	9FN0K4vY3QkzaJse+4qBAf9hwHuedzh4KBx9shdWGbcNmIVtvXJHkiO2lj1i2Ir+s8CG2Fi+FkJ4/
	mV3tvopsfmOwDMmOUI3W/Hjlq6biLQQyn+CwVNIGYgUSwp0ucnAJWJQIP9Nkw0Eceg8plW8LXS/8U
	nbkYq8UMr77XNdZTpQbgEx0xfBLupS63Ep4UPgiP+6qNt+83DhdV2N6SILPov1zs3ilE6qdMqkdpb
	Q0Hbf9hZ7vGy/5+uI/3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPPa1-00007S-GS; Tue, 29 Oct 2019 11:22:29 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPPV3-0002q2-NE
 for linux-mtd@lists.infradead.org; Tue, 29 Oct 2019 11:17:23 +0000
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
IronPort-SDR: 6H0ZMFE6eAbtHYceol178w7CJtkLJKVWBwQvcyEn7au6JziHJevGpB1REzV+p/m53Tms7eQxWX
 mxp9yjB3eIhD7wSKJLOFcqyQRSS/9kPhQRufHgO/56h7ko76vuSepdCSQywMY9rpzAj/Z05G9Y
 uNwW4VgIqOzHDO3SacxV73qQIq2T1FiWtssbioMUEd2G2t8osQxkRfaq/VGTMHNXv1H40ma+oB
 n20k5kpsKApI7DCPxxG8cyX9MRayVl2EcWpkQ86dh+5XLuRArWcgz8SBV6x9TUllfTd+QtiYPu
 VsU=
X-IronPort-AV: E=Sophos;i="5.68,243,1569308400"; d="scan'208";a="53292087"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 29 Oct 2019 04:17:20 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 29 Oct 2019 04:17:18 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 29 Oct 2019 04:17:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HOXrzoCtZQoXNEbX/47e5ysMqLhAbp79iLHXNinPm9lnRL+cTxQvR9Vgg6niFpeTH95W5n84BcR1NFz9OSuhnuSSAKoDgWBfKwlwVMEHpyWTdVAaPhUGXkWmt2dpU9mkPxCGXwerRx16HD2PMEaK52+3dNwOxKROOQRz5rsILFte4936dDfvWDdMSJnkj9ODzPD60Xq37CU0mT7g3b1lyfUz30HjKkg/6TJk/eQJX4J+8BAhKpoJ+9HoQbdBmjXzj/EQuIttU7nznpPZShU+lZw9GVAtQnH3S1R+7SQRj5G/du3YB2bNtsj4uQM1/qlUbihWXZdty5XgiReoYs1Xiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Rxt0/FmEoaf0ba4+d7BLBEpJnSSmujMti1ZQxMGx0zo=;
 b=hqWiudeznYlpa5gnVeSk0ct24sUb0FBVyH4hfyEfC2TxklQtowxX4pbfioQnPoVKgECo8e2ey+u+zpolvQpabZXjtFyRCbR+IE5pBq9fgEKIcK+x6Z0qhXrnSpPUU4c3Upaaqi6YnakZ/UJItmz95/Ead5lCeXRm3sg8vmHv5B5WZh4OgN5EdmfHRkOFCJPmEcg7HfuKGr5tN46lXa+idMsQ6L8LJU9J17v/NSrpMtRSMy/e6D+Y0xrlZe2PGmuf6Ypz4WUNQyknDDVGPYdYAURxeWsPsWY/B54QIfrlwmBvcllVUzmpXBzh9TE/GZnGfnsoVMfdQ/xK9TL+ucf+qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Rxt0/FmEoaf0ba4+d7BLBEpJnSSmujMti1ZQxMGx0zo=;
 b=i7neZ5VTHLRUxprZxZdtSKlUi5evLj/XZQ+L/js25xcHD1U9jtPuvS6Q+w7/jcgdJiDHsjpOnwMaAZoU4Qb3Sqap8hQuDdy283NY1OSWACxWlEtNYH551b5PvlPUxxeQO271dnxnHcGE4/d8L/oxtwJ+xCAMT952sJ18R+XZRps=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3712.namprd11.prod.outlook.com (20.178.253.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.20; Tue, 29 Oct 2019 11:17:17 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457%5]) with mapi id 15.20.2387.027; Tue, 29 Oct 2019
 11:17:17 +0000
From: <Tudor.Ambarus@microchip.com>
To: <miquel.raynal@bootlin.com>, <richard@nod.at>, <vigneshr@ti.com>,
 <boris.brezillon@collabora.com>
Subject: [PATCH v3 18/32] mtd: spi-nor: Constify data to write to the Status
 Register
Thread-Topic: [PATCH v3 18/32] mtd: spi-nor: Constify data to write to the
 Status Register
Thread-Index: AQHVjkpsCYpkWXjL6ECEsiVdkEng9A==
Date: Tue, 29 Oct 2019 11:17:17 +0000
Message-ID: <20191029111615.3706-19-tudor.ambarus@microchip.com>
References: <20191029111615.3706-1-tudor.ambarus@microchip.com>
In-Reply-To: <20191029111615.3706-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0376.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a3::28) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [83.166.207.93]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8b00f110-656a-4156-6adf-08d75c618ea0
x-ms-traffictypediagnostic: MN2PR11MB3712:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB371271F1D8C725815C3344F6F0610@MN2PR11MB3712.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2331;
x-forefront-prvs: 0205EDCD76
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(396003)(136003)(376002)(39860400002)(189003)(199004)(107886003)(6512007)(316002)(110136005)(4326008)(2201001)(305945005)(6436002)(54906003)(7736002)(2906002)(66946007)(66476007)(66556008)(64756008)(66446008)(6116002)(3846002)(6486002)(5660300002)(36756003)(86362001)(11346002)(446003)(8936002)(81156014)(81166006)(50226002)(2616005)(186003)(476003)(256004)(478600001)(8676002)(25786009)(14454004)(486006)(66066001)(2501003)(26005)(99286004)(386003)(76176011)(52116002)(1076003)(102836004)(71200400001)(71190400001)(6506007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3712;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TMoxIuGxo7Xna48DWLUR2jfLB27PKVsAcIm4it1PkrQ0RbX1RhisHgGd66RY18ct3saH2kPQCC7L5YAwjl6lSFlHhKSLLPpfCpUsvfSKlq5ec9PNVNGz/TA8QvNBIZ4fmSwNhjL1qJ0SDe8uMh/JanXINr7ipnz6Uk+up+phm3nF3W1a/CO2rk0mnE0adyQbHQO3xnUcfiPR11qacWfMZ1JZwDhCOQYCM0grI0VG+Nf+ph17UZnNJMP7AunTQNdsjQBDdXxoWBmWz7Vym7KskGAOzuFNtjviJrPeemC1SZoj4ORJnykdNNSAQqVXDD8N1qtr9At79DL5elEczSXErxnS0xMjq02dYURgRj8qqkAGA4cDrlhwPoYvgL+Sjby6wxtNk1gGo8qd7RTOkODBM7eSJRr0X/VgAQRtTA4JO638B8mIxW/Y4IRx75vnsdZb
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b00f110-656a-4156-6adf-08d75c618ea0
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2019 11:17:17.3213 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9C0JCUXjteGfCq9hi2TFzzLDSxzlwKuZgNpA6QuA8UTx/skq3JDwMSbd0VM+p4p/PeLxxxewHQcU8rcEjcLsrTHu+Oh0AKTsKZINzOmPP3c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3712
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_041721_854639_FF0B02CB 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 Tudor.Ambarus@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

Constify the data to write to the Status Register.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 5fb4d953b5c7..274786e1988f 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -865,7 +865,7 @@ static int spi_nor_write_sr(struct spi_nor *nor, u8 val)
  * second byte will be written to the configuration register.
  * Return negative if error occurred.
  */
-static int spi_nor_write_sr_cr(struct spi_nor *nor, u8 *sr_cr)
+static int spi_nor_write_sr_cr(struct spi_nor *nor, const u8 *sr_cr)
 {
 	int ret;
 
@@ -912,7 +912,7 @@ static int spi_nor_write_sr_and_check(struct spi_nor *nor, u8 status_new,
 	return ((nor->bouncebuf[0] & mask) != (status_new & mask)) ? -EIO : 0;
 }
 
-static int spi_nor_write_sr2(struct spi_nor *nor, u8 *sr2)
+static int spi_nor_write_sr2(struct spi_nor *nor, const u8 *sr2)
 {
 	int ret;
 
-- 
2.9.5


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
