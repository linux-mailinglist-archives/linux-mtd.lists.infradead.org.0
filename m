Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E8509BDA9
	for <lists+linux-mtd@lfdr.de>; Sat, 24 Aug 2019 14:27:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vASW7OqeiLJJk4G5cbajMTt8YObsDOlobM+vpVtr1h0=; b=LAYi+OiTFFoSQ+
	8ziT88vYiaDNS+CO2unA99PIOeJEoyhH88OKwrcWN7rO12Ms/314zAnlrmPX116f2ld0JDAyBTh1Z
	52vr8jOjH0MxclshDqvEsPpoIKichRlm1LGzxRjr0XvSerO4hjX/4nOKp2N0Ezkl2ygfXOM6ahwuG
	7LEToW/3Vbik98Lv9V+xecHbtskeE3iF9NSsIb5FxbJ/zP/8NFvSLanpX27b64pLFk2OtXZwDM4k7
	S5aRnIvfROjzzLQl5lmTBnlZrVljyvtSTkfGV7ACPfjoWeTPGCmnCW83qhbbIPzG2lfm7jvbqewzV
	6eRP5yhfMsNMyvG8WfvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1V8x-00059L-FU; Sat, 24 Aug 2019 12:27:43 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1V8W-0004hY-P8
 for linux-mtd@lists.infradead.org; Sat, 24 Aug 2019 12:27:18 +0000
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
IronPort-SDR: 3YZ+XJvnhSFuhm7BxVcuzI91hBsIhUonADaAfeg9K/N8yGQqy5z3B0My34bSFGtLvSTr/dar15
 SuNKuoXQzdV69a3uQskEYqe9FpfPb7hFSTMiFcKj8dIDZ8Plzp8WdZtYocAoqNDoj75rlxgs0H
 kY0Ivb2N2O6T2bBjPE76WpBPOch0Zuqoxwe0i2qp00pP0KsbPbCSqeE5n0I0ZqKW8mSuFtYTRr
 4iPuoZXTqDsnuniYm8bXa4AZ8/exw/RVKhZWAdwfEAHRdr1QyimgA095b7YiqaPtuh47u5gLn4
 hE8=
X-IronPort-AV: E=Sophos;i="5.64,425,1559545200"; d="scan'208";a="44864844"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 24 Aug 2019 05:27:16 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sat, 24 Aug 2019 05:27:15 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Sat, 24 Aug 2019 05:27:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a/H0HpX5KLMH/fVbhReglk8llmGsY+qdWJHj3f5sXDUPx2JWtCUM0bjEGUaxRwATPMWi4vIaIOxNjsUgDgHSBdQ6RYnCmeFwxPoA082nXV98LlER/5Zw+hZoU0BMReFE1iyk/os93eESPD5No8Z1y0v1tBl85tvoqYJBuBI2eAZ4jEtJ7p303MlK0Av7PjAG1c0lSYm7IVAhxVUMlioxaepRnU5obhsPr0rMj/nnwf4U83aWeMf/8Lq12k20jWgjQ00fR8GybFlSpOQz7k3cEWZI1tPwN5+wuPQIaOdeshqnQ8+J6oVXMYaEe2+HWdrdfnK4orP4OfWNMTfdehVQHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gOql6G/DPy3QDBUoDff10gGbq5Pi95MgzCgxr37iJGM=;
 b=RJNfcAf4ROWBOHPg1HUyUnDYuS7fyNtihvApS7xvrHx2tFEReCPlpjvYSqid0tmPbORKeGoBjNyD4IUI0QVNMIQV951h5r1So71Y8Exm3H1MwhL3yazJ0tQF9k2VYfFuohSgJcTjNVMhYbBHkDbSgwjT2eq0b2R2cJOc4NldLIrDnFdetfa66Tq1GD2o+PT++9UVGmMA4LD4pTv/NVwpDtIDrnRWBNdj5D4e0xlw25WhxPf7STj2jFu+faJqP+iLSY0jDCc+HlBZ9ObNiJ9vNAKGMhk93T8EdCtCEYGoQ8GeUf371WLUTcHmPNeD96lqyE+EQiR5BrgZLFfoZ39Gxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gOql6G/DPy3QDBUoDff10gGbq5Pi95MgzCgxr37iJGM=;
 b=Flyns2Togb2oO+lw9hlfw9IWOkYZbKIGeb+oGI80IZyKlTAgNcxCA+ONQFRP+R7eWEoyOny7PjdY7we31IKLLDaQjDtX/LYakbCHP56JbaPhbIceSqgKJsG2U4N6GuIVQYBii1Sf0pXm2mWmmpvYcg8K14WgsomSxoFf0pfjuqs=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3854.namprd11.prod.outlook.com (20.178.252.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Sat, 24 Aug 2019 12:27:14 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5%7]) with mapi id 15.20.2178.020; Sat, 24 Aug 2019
 12:27:14 +0000
From: <Tudor.Ambarus@microchip.com>
To: <boris.brezillon@collabora.com>, <marek.vasut@gmail.com>,
 <vigneshr@ti.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <linux-mtd@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 2/2] mtd: spi-nor: unlock global block protection on
 sst26vf064b
Thread-Topic: [PATCH v2 2/2] mtd: spi-nor: unlock global block protection on
 sst26vf064b
Thread-Index: AQHVWndCob70Y7dOBE2305x27zvpVw==
Date: Sat, 24 Aug 2019 12:27:14 +0000
Message-ID: <20190824122700.23558-3-tudor.ambarus@microchip.com>
References: <20190824122700.23558-1-tudor.ambarus@microchip.com>
In-Reply-To: <20190824122700.23558-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR04CA0129.eurprd04.prod.outlook.com
 (2603:10a6:803:f0::27) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [86.127.53.184]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d1df6b0c-f573-458b-ed31-08d7288e64e8
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MN2PR11MB3854; 
x-ms-traffictypediagnostic: MN2PR11MB3854:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB38545D97D2F2606C80B097EAF0A70@MN2PR11MB3854.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 0139052FDB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(136003)(366004)(39860400002)(396003)(199004)(189003)(256004)(66946007)(81156014)(81166006)(186003)(2201001)(64756008)(66446008)(66556008)(26005)(478600001)(486006)(50226002)(2616005)(6512007)(386003)(102836004)(8676002)(86362001)(2501003)(6506007)(1076003)(14454004)(316002)(476003)(11346002)(6116002)(66476007)(99286004)(110136005)(6486002)(305945005)(6436002)(7736002)(71200400001)(76176011)(2906002)(8936002)(446003)(25786009)(53936002)(66066001)(107886003)(3846002)(71190400001)(4326008)(5660300002)(52116002)(36756003)(14444005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3854;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: hcelZI6jrX8xmBHfAhEvrisYoubF2byDeZXQbfMNG9IL3vmkYHjR0hV+xBblMEAOK09lg0Uocyt9Cyh83mn+ffrgc+5f7iqIUjft4XEwhp3zGWTRwSpq3boXK+HMReFUhJbHgann3oVn98J1w53trrjIfNNgYRIpK8tllVIE6Lq9L0AvOKQvRl59Lt+pYOToAYTYAHo9Bfen+mFfiTxiZ89d0vEIl1ALBf/06pn65cYm2tTwUx6gHpXo/e9k8JzTCSx6nK6YxWBhRrpaJ0r3PoSqRa87upomwefVtxTqu1i7dgMGnlXdHR3azE6ywTfQak3v4GHFP4KJAuoBZVZtjIhgG5d3PIjhZNMzqPDOLg5oFTq7TivphXDe6LzbkIRWs1bykJpwxj+iyBNsdt+bLuIA2Y7mHIAtk0VsGBv4da0=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d1df6b0c-f573-458b-ed31-08d7288e64e8
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2019 12:27:14.2426 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qnManokmt0FscRChFWyMNNrslQPeRxXtWibrb5AND2VlK3SM2kTNSiCyBiJXtXWdwwSbztKTcNgCwwLFrb++6Qke0JQB5ygLGJkp+9lCPTQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3854
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_052716_927393_EA7B8320 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
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

To avoid inadvertent writes during power-up, sst26vf064b is
write-protected by default after a power-on reset cycle.
Unlock the serial flash memory by using the Global Block Protection
Unlock command - it offers a single command cycle that unlocks
the entire memory array.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index c0ba6fe62461..f92202fa094d 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -2419,7 +2419,9 @@ static const struct flash_info spi_nor_ids[] = {
 	{ "sst25wf080",  INFO(0xbf2505, 0, 64 * 1024, 16, SECT_4K | SST_WRITE) },
 	{ "sst26wf016b", INFO(0xbf2651, 0, 64 * 1024, 32, SECT_4K |
 			      SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
-	{ "sst26vf064b", INFO(0xbf2643, 0, 64 * 1024, 128, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
+	{ "sst26vf064b", INFO(0xbf2643, 0, 64 * 1024, 128,
+			      SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			      UNLOCK_GLOBAL_BLOCK) },
 
 	/* ST Microelectronics -- newer production may have feature updates */
 	{ "m25p05",  INFO(0x202010,  0,  32 * 1024,   2, 0) },
-- 
2.9.5


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
