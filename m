Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D3469BD6D
	for <lists+linux-mtd@lfdr.de>; Sat, 24 Aug 2019 14:01:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QnI4WqoYmA7Whpl4bOrbVKb9q++JePHSZO4j9ofHDlM=; b=nSNpXGQwzclWD8
	LV/s8YA3FIW4gbN5wtJgQixoEGzMbkJh9DD+sTCEFcwsLZvl1fMheJdYeepth9JksWYJZ9NmWmX3+
	Y8/nHtEc3trW4pg/zjPEJWEG2gVBKsuBOvFPF1v2UVMzU/pyK4nnSbeQ1NOAgibdeBUNulcYPuvTi
	YSlavNRD3wVoZrh6XrK1yPb21i0a/e6u579Ux2cp/8MjtpcyAM4L9vhPk6j415aoqSGj9BTsfXCpO
	K3D9umiU/tx1Jyue/7GTsJqMlAcUK8DlZLA1osHPuulgkN9rZgG5Ln2gXOf5SaKz29riuCI8RTzD4
	fVCwDQ9YOtghbAFxuXKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Uiz-0000uu-2n; Sat, 24 Aug 2019 12:00:53 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Uio-0000tN-QX
 for linux-mtd@lists.infradead.org; Sat, 24 Aug 2019 12:00:46 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: sF7LT+VeOgFcoqxHl5EiMaceEGV7a04E2ZlWSBwD9NFODDxfkCA55iMCYixdfJvyGW2ZRvGe4N
 1XhdxlIKi2UUvxA+mSaPs+WN+bC/iS/v0LEafEEtmfVi3lhplhAHa6XZ/jAfQKesA4NN370NSR
 pU0MIIR3lkPb1N16BqUJpEDbyEN7MJ2Egja6QxeUKv4v91r1c3w/A8TBIu8p5bIgPfz3HEWHgs
 xqzQzuFFA55NlFmCJ7QoSF3Yw6xzZS8BvGh28i2Rzd8QSN9lYioR+ajos072etUhVyplQOhhuf
 OZs=
X-IronPort-AV: E=Sophos;i="5.64,425,1559545200"; d="scan'208";a="43547600"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 24 Aug 2019 05:00:42 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sat, 24 Aug 2019 05:00:42 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Sat, 24 Aug 2019 05:00:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SanOM13blwytsNHV0RuFfdwOkCG8dnFnichIijGbILIA3lu7gs4cukYV9vcdDStWhMTBH7qDaYRD+A+6ax5No4Cvh1Kr4BTzaIwQ8TQghbVTGbML0lnju4lVkG7lIpfgrHVbDeaZZMvP8si2m7v2J9PMIkHy2Y3FiQKnLctaME3kHX93Y0Bzf5S1OTGdghXClM2+kyDsgbqbLI9z0Bz6wX8L1SN3y8fAO6SZrd6qvZ0qIqBqTketJQmCCUOAIBgj/L/tvlMi5f4TLIITh+UcvLHigmb+1cxWTx8mo59ZNHibjgS7kVLvYPK9XV47hwBIW6EuGa0+kJoqwNrGF2dFaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V+wVsZJum0MgjumBsmRzL8S+Ti+AGbUZTlYcuZ9VtkE=;
 b=HANLO76SY3uVHEIeAu3lo7DAoa+yqXZzOHUa8UifIONR/vwK9MUifL1DidDkXgE/XJzI8w6VJ1CcnzoG2k/8Jv/w3uojWA7qbZSgD1XsEt/lEPYSqxX+V5AWOYqAkDCQ74kN6Zs6nwX4yqerg22L8OnYmHkJjTeIEPDExW3VMXcv+vz/KOtnCr1OAPcrgxN9k8SAd4uFT/oHmrpJcXwY4W+fIPVUsj4n2f+5rArenJmoG3G++CUBKiHJjR7DbSMWX6MGlipTtRml6/dmrDHAwVnsbLa4U4yHslXkRzZ47sqdqUGO1+OdxOmedLT4KmmsSJuWN9nAQ76y8/vnRK6oBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V+wVsZJum0MgjumBsmRzL8S+Ti+AGbUZTlYcuZ9VtkE=;
 b=twisf6WS8ef+ED4zUOcN6zeVFw92Lni5cNDdiiZG1sFZSSgjMKTRSkM7IjhsZpZhwpP/RDZA+1pRVFzqYZOPwfvm49STy7SKsmj0jpAGGVcaQmbFTbonJ5THFOgXEiJ1gqyf/Q3T+1r0cTkfh/hPKrslWrtE/L5ywORavrEgofU=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3984.namprd11.prod.outlook.com (10.255.181.77) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.19; Sat, 24 Aug 2019 12:00:39 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5%7]) with mapi id 15.20.2178.020; Sat, 24 Aug 2019
 12:00:39 +0000
From: <Tudor.Ambarus@microchip.com>
To: <boris.brezillon@collabora.com>, <marek.vasut@gmail.com>,
 <vigneshr@ti.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <linux-mtd@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 2/7] mtd: spi-nor: Add a default_init() fixup hook for
 gd25q256
Thread-Topic: [PATCH v2 2/7] mtd: spi-nor: Add a default_init() fixup hook for
 gd25q256
Thread-Index: AQHVWnOMw/3GdNILR0+rd21CR5EHpQ==
Date: Sat, 24 Aug 2019 12:00:39 +0000
Message-ID: <20190824120027.14452-3-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: c56fe2ea-68cd-42b8-f38c-08d7288aae8f
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR11MB3984; 
x-ms-traffictypediagnostic: MN2PR11MB3984:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB398431AF9E0C4D6C72BC4DCEF0A70@MN2PR11MB3984.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0139052FDB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(136003)(396003)(366004)(39860400002)(199004)(189003)(110136005)(25786009)(26005)(446003)(4326008)(1076003)(256004)(316002)(386003)(2501003)(81156014)(6506007)(8936002)(14444005)(64756008)(66556008)(66476007)(66946007)(6436002)(81166006)(66446008)(8676002)(2201001)(54906003)(53936002)(76176011)(5660300002)(86362001)(6512007)(52116002)(71200400001)(14454004)(11346002)(66066001)(476003)(305945005)(6486002)(36756003)(7736002)(186003)(71190400001)(478600001)(2906002)(102836004)(99286004)(50226002)(6116002)(3846002)(107886003)(486006)(2616005)(138113003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3984;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: u6TzciohBQRqKKHAKdkYTUvG1pp8F/qo+jw3OcRm5KfCtlmpd7KHBagmOHch4jZm4hlGyUFAsciS/X17njfRcO396QF8GaR4OQyE2qnCMNLu687/5hLXUTeMT2lzylKvVHy8scL0ljYBIlN1xVA097cRw7MlmGseTeajFXtBPLedw4QrQuNwp+YZTfXtqIwzZgVSN4PBOEgAiZE57SHXYFOam4aOIRT8hdVUJ2gaIDgYXbd4r2H7uZDD2KE3QSp0nqkKVRdxy9M89GtdLPIItI3eHbj0AcuIYmIAY/UST2YqjQbKU5mVNmZXH+Edvm/UoP5/KtIuyj0+YW5ikRVDoRec3aXRkyd+Gpp8x12MLsvwl1c0JsJG36lkIJxlhzu2dyquq4HyfKMMKl1eA2ZUP2+un9Ks/Jf7E2r+oQgF5qU=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c56fe2ea-68cd-42b8-f38c-08d7288aae8f
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2019 12:00:39.7450 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JOUwUGIsDjKwslqkjBIuu//h66MA7eZEt2shlygyfV0XvVJTdF/lvsaaqnNuuNqeC3PASNjwKCjtbpZIbFeuMhNMJk6iZD36VRRCNt3Ocbw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3984
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_050042_891542_CD630F05 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
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
Cc: boris.brezillon@bootlin.com, Tudor.Ambarus@microchip.com
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
 drivers/mtd/spi-nor/spi-nor.c | 28 ++++++++++++++++------------
 1 file changed, 16 insertions(+), 12 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 016bfe2fb592..27951e5a01e2 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -222,8 +222,6 @@ struct flash_info {
 
 	/* Part specific fixup hooks. */
 	const struct spi_nor_fixups *fixups;
-
-	int	(*quad_enable)(struct spi_nor *nor);
 };
 
 #define JEDEC_MFR(info)	((info)->id[0])
@@ -2126,6 +2124,21 @@ static struct spi_nor_fixups mx25l25635_fixups = {
 	.post_bfpt = mx25l25635_post_bfpt_fixups,
 };
 
+static void gd25q256_default_init(struct spi_nor *nor)
+{
+	/*
+	 * Some manufacturer like GigaDevice may use different
+	 * bit to set QE on different memories, so the MFR can't
+	 * indicate the quad_enable method for this case, we need
+	 * to set it in the default_init fixup hook.
+	 */
+	nor->params.quad_enable = macronix_quad_enable;
+}
+
+static struct spi_nor_fixups gd25q256_fixups = {
+	.default_init = gd25q256_default_init,
+};
+
 /* NOTE: double check command sets and memory organization when you add
  * more nor chips.  This current list focusses on newer chips, which
  * have been converging on command sets which including JEDEC ID.
@@ -2218,7 +2231,7 @@ static const struct flash_info spi_nor_ids[] = {
 		"gd25q256", INFO(0xc84019, 0, 64 * 1024, 512,
 			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
 			SPI_NOR_4B_OPCODES | SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
-			.quad_enable = macronix_quad_enable,
+			.fixups = &gd25q256_fixups,
 	},
 
 	/* Intel/Numonyx -- xxxs33b */
@@ -4237,15 +4250,6 @@ static int spi_nor_init_params(struct spi_nor *nor)
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
 
 	spi_nor_manufacturer_init_params(nor);
-- 
2.9.5


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
