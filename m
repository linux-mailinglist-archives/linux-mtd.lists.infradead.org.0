Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA88F9BD80
	for <lists+linux-mtd@lfdr.de>; Sat, 24 Aug 2019 14:07:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4o4f8GgaMv7ITH2YMxKlAczDxM1VTeE9DkFjptAQSaA=; b=OBylxDA9aq7ZVG
	VKdyc7U9LM0bLXWx3ITwMV5IAVVH9QBe3KGNV4QQMwBhmvHidDDjxg1yBff4Vxz32wxWQfWc2Bnug
	14PDHr9zJ7ijeaTwd1WgsgNdLG13t8IrZBzdEkj3PavTs9K9IMIMYEvjcUW28bmjHa0NbkefQTjT+
	8WB3VmC4bnMKTmAbrd6BU7lCTfcoQjSHHrdcCP9m/UyyeLRaJInWBH6UkU0rQNL2ClpEMARtnwhjO
	ifiBp17uleG1CctLyidXMtv5CqeiSYJjgRnUcsbN1Fvidqe844So+L/CXqsyHefPc7wbo2S5UHnh9
	zgwrg1AU/Ky2gtucQ1FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Uph-0004mi-Rq; Sat, 24 Aug 2019 12:07:49 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1UpF-0004I0-BU
 for linux-mtd@lists.infradead.org; Sat, 24 Aug 2019 12:07:22 +0000
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
IronPort-SDR: tJaXr/c1rt+bh6Zpz+KlgEhr7IFhCEBbWvIvmujOYyoIhCDnybD1o1bhB2QtlbP3GcJCWeiK2W
 ulUQxdqlf4R9q6oZiIVPqFyXLUg/sqRDGAHXTsGEzzRckUKPhu415l3IgC1xp3uMCjqoqRcN02
 +L2vki2bRDRNrDAm1je9LjddxySPFLRE5ywbv9JNhREz6NFlK9Brz411yDJiIS5PeIVpKv8+sw
 MoS3fN2y7UGJSqLYV1nnXv9Y1sf0elexKBt4dRLCvFJAiugYRuAJ5YvTEzH4l7+Gi/BliJ1VZv
 XJA=
X-IronPort-AV: E=Sophos;i="5.64,425,1559545200"; d="scan'208";a="43548184"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 24 Aug 2019 05:07:13 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sat, 24 Aug 2019 05:07:12 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Sat, 24 Aug 2019 05:07:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vmnsuzr1BZPcAoLzRjX1YLMB3Kp0Mx01SSQoBHmBL3DIwkFF7gK5G9copGUyaWWHqW4uinvus4hRUPXru04O472e9XONJ2mQdvrl+foAShv4hasEK1HY186xbbBhM0OCaqN6msiAMWg2DER/uD/M1PkdlHbrxt8OlsYvLbjDBDPWsX4zuh7S3CLIhjmkaV8SBEemTwm7tW9a1Pfy2OfIsKl/DWJNyH/bmEvXS5Y4wT3OFOYNGir7H6/uOQ0r3edWHNC9EU6NES9pC6OKg7s74Cjatv2RXkkjKGUDhlRg9+iN2hEYKCeUWoL0noV/9uAvuLQjKOlE9eiQhIYqBtsxeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xUm32R+0/ODCel6JdPM6N+v3FJlIg6QoJBsZlSKOKtc=;
 b=Kghb+WrUkash4R+Z7NGs+G20pBtnTahXXynyYKUG2hJ+JD32TBWn80vh9R2kQtp0blo4vIucLe2iPe4498cKS/zY4UJVtvexaBjNkpw2imVHoF8WrA6/ndK5QTxf0ZHNhIUeF/3OAu3FWrRV74N8XYJkwM8EEW3fNNZ3k1rTiG5wNcdxxKoMi35CECKgzaY4S1H0VEc82j9VOmkhST8wB/OA+SypIbECcwWqZCYTJsJFYoZQwZJvVUkojh6kQz/J9SP9W6TP5ZiKYMrbFJlVz3Fz0ZUmaAW42vARkccAk4OgxaL2Dq2BxAUacT83GIo3Qc67Lyg6avkWCoMhIZ7naw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xUm32R+0/ODCel6JdPM6N+v3FJlIg6QoJBsZlSKOKtc=;
 b=Uh3IvHFvS5O6MTL6Gn066vqhLj4pO1UxasmcYqiRHzg8CM4DXeoCoEF6VRWQn5HAnRqH7fb/7NjtOXZJO/olHHjuRVMR7wU3drPMF+EV+uOG3zXRUG5qChdx9KAkGlACKjQYVm6Lb2YnWfM9AaGpn18FpCr1B02myCFjxuD51JU=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB4301.namprd11.prod.outlook.com (52.135.36.222) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Sat, 24 Aug 2019 12:07:07 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5%7]) with mapi id 15.20.2178.020; Sat, 24 Aug 2019
 12:07:07 +0000
From: <Tudor.Ambarus@microchip.com>
To: <boris.brezillon@collabora.com>, <marek.vasut@gmail.com>,
 <vigneshr@ti.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <linux-mtd@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 0/6] mtd: spi-nor: move manuf out of the core - batch 2
Thread-Topic: [PATCH v2 0/6] mtd: spi-nor: move manuf out of the core - batch 2
Thread-Index: AQHVWnRzAVRVusqjXkm8/L5rtNLWgg==
Date: Sat, 24 Aug 2019 12:07:07 +0000
Message-ID: <20190824120650.14752-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1P190CA0024.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:802:2b::37) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [86.127.53.184]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e6e963d8-9cb5-4421-45c6-08d7288b95e0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR11MB4301; 
x-ms-traffictypediagnostic: MN2PR11MB4301:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB430162D93B89857C18209E07F0A70@MN2PR11MB4301.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0139052FDB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(346002)(376002)(136003)(39860400002)(199004)(189003)(305945005)(99286004)(71190400001)(1076003)(71200400001)(7736002)(3846002)(6116002)(2501003)(52116002)(4326008)(478600001)(2906002)(316002)(966005)(14454004)(53936002)(25786009)(110136005)(107886003)(5660300002)(386003)(102836004)(6506007)(6436002)(8676002)(186003)(66946007)(26005)(50226002)(6486002)(36756003)(6306002)(8936002)(66556008)(64756008)(66446008)(66476007)(486006)(476003)(2616005)(6512007)(81166006)(81156014)(2201001)(86362001)(256004)(66066001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4301;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: PsDBCTAOrwQ9r0xCWxxVDI07QM6xD/6rVK6Rt8jeQcQxnE9S78uotFs75TWPmL5C93xRIqXIPGK8I9ET4/XgW3KfUAR3TvZS8sbX4KeUsM8iBLOf7Dcmhu0XlPy7CKwWzN0bVf0QUWAyeAMRefyo3tBvtEZ028AC43LfvO4plSLeowHPjSXPZLMJuMdvfPBXQNxunXwlfdsd5I9dq1V+GsJYQPBSD+utOsSr2LrErdmeKCr1ecb+5gBo8Iw8KBrsH7bJtNC5w9CcLqcWRXdJbwnl8iHuv3jPO3nMEei8SGRCFnh/cI9wvljFUtblIjsetrdPrEJ9DKgWdAPaKclYhQV0mktS1vKIWEvh/tPTV5YUWRyLesUcVm+mvWpPDqKAvSxkO5zFA+6xx77BF9bz3rB6KZgdw5NfqUSslak2sC8=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e6e963d8-9cb5-4421-45c6-08d7288b95e0
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2019 12:07:07.8161 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xMv+uNS/w/ul3NMarh534lAE918O46f9Pbkl3obyYbvkzdeHIwazMY/xCedyyweegtJ6iOnM/2sMAdFYh6RB2TxuqNfysG596avMzwwc0r8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4301
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_050721_455872_DAA43228 
X-CRM114-Status: UNSURE (   6.86  )
X-CRM114-Notice: Please train this message.
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
Cc: Tudor.Ambarus@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

Depends on 'mtd: spi-nor: move manuf out of the core - batch 1' series:
https://patchwork.ozlabs.org/project/linux-mtd/list/?series=127121
which depends on:

Depends on 'mtd: spi-nor: move manuf out of the core - batch 0' series:
https://patchwork.ozlabs.org/project/linux-mtd/list/?series=127030

v2:
- addressed all the comments
- all flash parameters and settings are now set in 'struct
  spi_nor_flash_parameter', for a clearer separation between the SPI NOR
  layer and the flash params.

Add post_sfdp() hook to tweak flash config. This series opens doors for 5/
from below.

In the quest of moving the manufacturer code out of the spi-nor core,
we want to impose the following sequence of calls:

    1/ spi-nor core legacy flash parameters init:
            spi_nor_default_init_params()

    2/ MFR-based manufacturer flash parameters init:
            nor->manufacturer->fixups->default_init()

    3/ specific flash_info tweeks done when decisions can not be done just on
       MFR:
            nor->info->fixups->default_init()

    4/ SFDP tables flash parameters init - SFDP knows better:
            spi_nor_sfdp_init_params()

    5/ post SFDP tables flash parameters updates - in case manufacturers get
       the serial flash tables wrong or incomplete.
            nor->info->fixups->post_sfdp()
       The later can be extended to nor->manufacturer->fixups->post_sfdp() if
       needed.

Tested on sst26vf064b with atmel-quadspi SPIMEM driver.

Boris Brezillon (4):
  mtd: spi-nor: Add post_sfdp() hook to tweak flash config
  mtd: spi-nor: Add spansion_post_sfdp_fixups()
  mtd: spi-nor: Add a ->convert_addr() method
  mtd: spi-nor: Add the SPI_NOR_XSR_RDY flag

Tudor Ambarus (2):
  mtd: spi_nor: Add a ->setup() method
  mtd: spi-nor: Add s3an_post_sfdp_fixups()

 drivers/mtd/spi-nor/spi-nor.c | 549 +++++++++++++++++++++++-------------------
 include/linux/mtd/spi-nor.h   |  22 +-
 2 files changed, 322 insertions(+), 249 deletions(-)

-- 
2.9.5


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
