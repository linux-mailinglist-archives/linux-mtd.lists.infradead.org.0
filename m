Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E4137BCA9
	for <lists+linux-mtd@lfdr.de>; Wed, 31 Jul 2019 11:12:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5iIv9VzFGMtuud5NA12klyz6Y/PKa5M0SwbNkNMqssc=; b=F2CTZVOrFyZLG3
	bHx6hKsSXKMJShDdrCWNFZykpjpkXfS5JT6gMd3Eu00Kuu+xpskD0Fo+Sh49I2OViCWM6ujWnlHHf
	O7jpsIgfG36xCHfzg8U8RbYaYEmrGFiNU5ANQVI4mXCRXrAcYnPfS42TFg9Bz7kcTkxuqM7kSvjGR
	gorvN27qsl0/1puaAePq91jPuAPS8YSg5Ihwzbn4C3vTpbP6CZz5spqPl4SXHGqaVA3AyjLYVqABF
	Ktlz4zthcmnBzwcLTibKbbbIawEs0G0pbXu8FGfJ5qNLkmAFGsySF1NRJLYsVV3WVBz4Nsa6KTQIF
	mJR55mXKh521w4Sz/VXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hskei-0003kr-OG; Wed, 31 Jul 2019 09:12:20 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hskeZ-0003kM-2J
 for linux-mtd@lists.infradead.org; Wed, 31 Jul 2019 09:12:12 +0000
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
IronPort-SDR: UYgahY1/lR1SXQQtxox3GBu3VSj/KoW47BJ+TJdDBHD4AYOWqapl3I+EX2kEqt+rvQbzwaoeMn
 7IOMyeHCEccWKjSPJmzhlgBYzbyJp0oiJYID4qJYMAyvUwZYNtO1Nvxd0lcXUaVyukLYZBmlsf
 lpU5/WZ+Hdlcx4RYogf6mxX9YDEYWY5qn+RzAah9zCMtVgRQj1Loan8BT8C6wodqVU+WJyK3pb
 zHyNBe+sn41vX3lINqB86zTrAqcw8rn0PeqfWUexJ0as5cPFu2lC8Z68F87nYX91PP24cGjSbp
 lRU=
X-IronPort-AV: E=Sophos;i="5.64,329,1559545200"; d="scan'208";a="41824393"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 31 Jul 2019 02:12:10 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 31 Jul 2019 02:12:09 -0700
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 31 Jul 2019 02:12:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iRVQW0+Tiz5HH0vUNr7MEFYxAuDkpKD0NhwmWjpfoMdncStkDdiJ7pvoCM1g43ZAz2gFd1tpU/QqNRrJ2/KA3GWBVa0qWKNyfrcUVA8z4B8RfnUCypp0w3KHvHZ+JjFB0HzNaftWdFE8IctIEWhcvKaGqfqb0u6HfLWWS6D2k+syR5EpNR1WFiljEugzYIYDTLnVrQHfl3HSPi1Wuw1bZzpIhXN+3kPEphCV7MLoWNZPzNCv68WdAIZ6FyRxAiaJhoM0gX5nQHuZ570au0HNX+XaT3E19Pvb++qdTdv0Ku9ISvMTYzQI+FTxIZ2MDKVgIT5sIijIDip3Fql16Oa0zA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O20gv4qZtrIvzsmzkb69t+9+nhUyaTwXf0ZAqbZ8q7I=;
 b=JBhVZUZ9vL6KI/lVs0xpPwQUcr+RAkjYtCkF/GQhmkxxnOvXYCNPlPkSxoXe7xn10ccZ9DrqIn53PJFsiGZjgJNwbPgY93y8Sjnhor1tr4OMMKBefb6KdnH9L4DD8KpUQmTH1+2+92ieyix0PMEgL/KFtoMEg/RllfOOnVjIQvOvqRQDKV1um/mOHR8jqRcwZX5aF7/GVDSFvw17qimVocWQ9mM6ZWGl0xwKn62lFOU8A9/+xZfeK3moKMWsOc6wwyCdSAUua+nDhWv7Ai+0l9XzdjkYcO3t51weTFd673o/AqxiC7Eb6zRPQ+khQSqxmg76qDjzrWVNnJY71awDqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=microchip.com;dmarc=pass action=none
 header.from=microchip.com;dkim=pass header.d=microchip.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O20gv4qZtrIvzsmzkb69t+9+nhUyaTwXf0ZAqbZ8q7I=;
 b=bjH8OpQeL2rX/KTtdxg2tyHT8vaMyEycctXUernoTnkswc2seMC8KNllArDFvtAEaSUuZZGAoRiKkaq8kuc0D2PZPcha+9zjrl1KIRazOZHG4L+YDdy1qaaMDANXeomUilR3iO1lgIuqhmsIP3p37wE6/quTpOEH7kNT2YIbw68=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB4414.namprd11.prod.outlook.com (52.135.36.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.16; Wed, 31 Jul 2019 09:12:06 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::61d1:6408:89a2:8de5]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::61d1:6408:89a2:8de5%2]) with mapi id 15.20.2115.005; Wed, 31 Jul 2019
 09:12:06 +0000
From: <Tudor.Ambarus@microchip.com>
To: <boris.brezillon@collabora.com>, <marek.vasut@gmail.com>, <vigneshr@ti.com>
Subject: [PATCH 0/6] mtd: spi-nor: move manuf out of the core - batch 2
Thread-Topic: [PATCH 0/6] mtd: spi-nor: move manuf out of the core - batch 2
Thread-Index: AQHVR4AGkgpKbjD8rkCgvILRqzwWug==
Date: Wed, 31 Jul 2019 09:12:06 +0000
Message-ID: <20190731091145.27374-1-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: 17e73194-4ae8-41d4-1a56-08d715972887
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR11MB4414; 
x-ms-traffictypediagnostic: MN2PR11MB4414:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <MN2PR11MB441414A2546CC4ADEE997AAFF0DF0@MN2PR11MB4414.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(396003)(39860400002)(376002)(346002)(199004)(189003)(966005)(14454004)(26005)(81166006)(6116002)(50226002)(5660300002)(66066001)(2501003)(6512007)(25786009)(486006)(102836004)(107886003)(2201001)(110136005)(305945005)(3846002)(7736002)(68736007)(53936002)(6486002)(478600001)(86362001)(71200400001)(71190400001)(186003)(476003)(256004)(8936002)(6436002)(386003)(52116002)(54906003)(316002)(66946007)(81156014)(6306002)(2616005)(2906002)(64756008)(4326008)(99286004)(36756003)(66556008)(8676002)(66476007)(66446008)(1076003)(6506007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4414;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: rTkecR/SII7FLl7OG6Fxd6TrspA8pykSJ4r9Nni7SL8U+i9ZLIeXeKDOLj0LDsYnZ5XUPGs+26B/orCkbC6bKxtYe7grlxRPVt0ypgVZP0RLYvus839MfEGyfpXbWWtaLzy4qm2XoDHCyuu6UeMHnAkEFppRLIwDtBBlEiwc3ahkjv3TWAylcA9VrKBayDoloSuxcjzqtu7MyNoaZ/Ij5UXPO17wJ/Pu0RqViRiCycvMMDfQmBwJENQvCs07wDzLpVlzXMoSRF/48qQx1ntgYe35W0Fwwt3qa+L8Gnki85wwa34uwn9Z5SDi8ce8VgnDZlvPj5Howxh+gBCt58OetfnmCYIQU5VvQMN2UCvNiNd+nZxXDMUx3pIcZwLWKmXf4ftn+ljZxAzdJcQaReCCi9zUr4fR5fk/9uF+oX51Q2I=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 17e73194-4ae8-41d4-1a56-08d715972887
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 09:12:06.1513 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tudor.ambarus@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4414
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_021211_225693_F39DA983 
X-CRM114-Status: UNSURE (   5.38  )
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

Add post_sfdp() hook to tweak flash config.

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

This series opens doors for 5/.

Tested on sst26vf064b with atmel-quadspi SPIMEM driver.

Depends on:
https://patchwork.ozlabs.org/project/linux-mtd/list/?series=122420

Boris Brezillon (4):
  mtd: spi-nor: Add post_sfdp() hook to tweak flash config
  mtd: spi-nor: Add spansion_post_sfdp_fixups()
  mtd: spi-nor: Add a ->convert_addr() method
  mtd: spi-nor: Add the SPI_NOR_XSR_RDY flag

Tudor Ambarus (2):
  mtd: spi_nor: Add nor->setup() method
  mtd: spi-nor: Add s3an_post_sfdp_fixups()

 drivers/mtd/spi-nor/spi-nor.c | 192 +++++++++++++++++-----------------
 include/linux/mtd/spi-nor.h   | 232 +++++++++++++++++++++++++++---------------
 2 files changed, 245 insertions(+), 179 deletions(-)

-- 
2.9.5


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
