Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6839B432
	for <lists+linux-mtd@lfdr.de>; Fri, 23 Aug 2019 18:05:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4pV9Ym28VS1PqKpIuabXp0IFB79f5Z1++0a1UkN0qWc=; b=MtwyA0klIaGLxq
	G2N/3ZC86vcAh9WCUKFr7qWtsIeWI39G60i+/udrUCfZTJukQToak+TxjbBqUADpyLA7TkCJ0FIla
	LwbISQIPLt0qqnd1qBIZEijQU2tH6ndDPztAr45/+5YL0Frie+Z9Z0pU3ZBZjITJmwQwsrcjaUjkv
	waadY57DTTx6cOPSTOy2B3HU83eQljXtI9OaGBVl9RHNiC57RSEtvXe3zywjWIt/sHs3HHAUJXTVX
	J1zaO2lbHerYp2eplAHi5/rIz18Nfr4GN5xMDa33cdda84jNwfOf6y8jokyXbJZO0WcMo0hmTfavp
	piaLfNUeY3s/QwKaP1rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1C3s-0007j1-C2; Fri, 23 Aug 2019 16:05:12 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1C3k-0007Ia-Ew
 for linux-mtd@lists.infradead.org; Fri, 23 Aug 2019 16:05:05 +0000
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
IronPort-SDR: AOEeYW55a2GaRVQroxadH3XXpr51c7zu6ooHxPbWs0wJlTHr7tmJ+6chb1+ie/GeT3jBWoFrBa
 Ak51aOSe3Yi37CGO5a4S1Y3QGIGlEuSJD+S8+PBXrvV2UVEj70kmfZHqxpFJNnmZMw1WHGExGj
 J1uV6j1TC/EnOYgaLcDlPxV9OpRpoo2b82OAl72Z4B3F7+7JbfQWUpOLqDEnNCs69M4PPO2SU4
 REaOBHqPdh83RIndZyndxwiurP5b2EOQyMFyzz7yPTd3tBAk777SdzGuIiUZV+opCzJE4D/Ldy
 OCk=
X-IronPort-AV: E=Sophos;i="5.64,421,1559545200"; d="scan'208";a="43471239"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Aug 2019 09:05:03 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 23 Aug 2019 09:05:02 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 23 Aug 2019 09:05:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PA3Aps0HEFPZl7GZWjyU11nQhbu/TiYiYsOoZ32PKzLX9P5Vrix60rdVfs1CgvQR2snSVSmKkBcAy9iMC7ReDF1eysqmLy+hC/sVRLhRibnZIFo2Pg6NR+5mmUZMKsxk1mV75SLtHdsaReQ8F3xos1fY/IUm4JOpRW626mj3ZpmUx0wgWs7rti1fRl41wXdfmpx00Ta3I3mEtCYRNGJ0JLLsL8BfUcMH1NLvxQsWMDEBAp8w5l6ZmOARYWcaMI03KMkFfndU3YznR7xXW2+CaGzH1nse8UD5Grc3ujG0/cu/MjEYTbnXhO+jWPVg5scmEt026P5B7JZ2O4YDgtxoOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BnvF8sxlzkDGDS7sOO7N36xZzLqmveyiO6eSi2SlORc=;
 b=eIVOtgYjLVSQPiQNAIQtnoJ3v5MGOxrZ0Y1GK2uuan+O8vj0S9ee26i9G46/VIBYOYNLpE7UFude8jUUnwdfojZhJoAUYPGPkXgl2I8Yd3YpoTLIwMGNsSCWHUvQCEL9j1b9jKBB1d0DwCZmeeuiQNFi4UARzrApID5lANweN6S0wo52i7bIRhSLZRGYSysd1m4BN3yst7E+JtS5HfezZ1HSJPb1HxQkLZ2xxGyFaAQytg7JWiqJqSVXGnnkKWlv9ULBdxoqS4rTwP6vJMqEkswHqHJ6fGjKlEp1C4ktku+K4hK9uNUKxJMXrhLocfInw7EpG17cymzOucHQFuDWIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BnvF8sxlzkDGDS7sOO7N36xZzLqmveyiO6eSi2SlORc=;
 b=VOEVYsM3i8HQTzRTc3OoG0lzpL1kpzZx6079LHfjMb229z8MhCeTfv+d5ePseJbCeABHwE1UQ7ukyPtK1/Qfjcecnjjj/cuyF9X9a58rQgCwounX2kfarosDedc8zsmxkeRH1jk7HBvB4KsSFT4GRHLmwQggz2NwGuPOivzEmLw=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3789.namprd11.prod.outlook.com (20.178.252.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.19; Fri, 23 Aug 2019 16:05:01 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5%7]) with mapi id 15.20.2178.020; Fri, 23 Aug 2019
 16:05:01 +0000
From: <Tudor.Ambarus@microchip.com>
To: <marek.vasut@gmail.com>, <vigneshr@ti.com>,
 <boris.brezillon@collabora.com>, <miquel.raynal@bootlin.com>,
 <richard@nod.at>, <linux-mtd@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH 0/2] mtd: spi-nor: add Global Block Unlock support
Thread-Topic: [PATCH 0/2] mtd: spi-nor: add Global Block Unlock support
Thread-Index: AQHVWcyE8k/5ko42FESjGCuiD3PSZw==
Date: Fri, 23 Aug 2019 16:05:01 +0000
Message-ID: <20190823160452.14905-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1P195CA0077.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:802:59::30) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c4a4b1e7-ae78-40d0-9c40-08d727e3a6f7
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR11MB3789; 
x-ms-traffictypediagnostic: MN2PR11MB3789:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3789267AD0DB93256FC9A803F0A40@MN2PR11MB3789.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0138CD935C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(366004)(376002)(346002)(396003)(136003)(39860400002)(199004)(189003)(52116002)(110136005)(66066001)(316002)(2906002)(8676002)(81166006)(81156014)(5660300002)(25786009)(102836004)(2501003)(6436002)(6512007)(14454004)(50226002)(8936002)(6506007)(386003)(478600001)(99286004)(4326008)(36756003)(486006)(66446008)(64756008)(66556008)(107886003)(186003)(305945005)(66476007)(26005)(66946007)(53936002)(6486002)(7736002)(3846002)(86362001)(6116002)(2201001)(2616005)(4744005)(476003)(71200400001)(1076003)(256004)(71190400001)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3789;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: suHDTK4jgQqzHJhqMk+bcOyRx+eNS1q3T1wy9rsU4K1UddyUO7gjqNAG0wHkhpBiFt7PXbaJyUOoS6xDdIZ+AgcWY7K0Gu2B1MWN62U2hY491Tjg+bBlpQfM2ZC47ahW+qA9rXjbTPuhi+qfU0FCSvkDV/PCU7iI7MKeHKR7C5bDBNuLoIVBG9462fJ7jG9ZILMRm56dEjIK6ehS682EBPCxOkejOOttU3me/TKkOARziEtAdGSiT/gL1mnVN+XKMhUCM+5DHF1MHYNGL7sCwKxULQicfJPhSqgml9ioSTaZ/RQVOOtEgtaM4z0Q7+lepxyFGg9owCACk7cGh43Woa61XaQxgHvB4Txbs4O2HrChUxWg/+eZr2T2uaaexujh7D7dZ7XdJERUiTUZJjKmOBpCrXf9xIdI9xkq0QeZ/Z8=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c4a4b1e7-ae78-40d0-9c40-08d727e3a6f7
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Aug 2019 16:05:01.2506 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: joRRBRlJ40W9HuLyc7VthOcwfQcXTLDc2lhmRLoqu21Bcjp87Ij9YgtcXcN9IY0qT8AfchTmQLX6ebqZuwCZdHFwE34JtWuqgH2wJ/vv6fc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3789
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_090504_547213_08F8E2A3 
X-CRM114-Status: UNSURE (   5.51  )
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

This is similar with what other nor flashes are doing by clearing the
block protection bits from the status register: disable the write
protection after a power-on reset cycle.

The Global Block-Protection Unlock command offers a single command cycle
that unlocks the entire memory array. Prefer this method for higher
throughput.

Tested on the sst26vf064b flash using the atmel-quadspi driver.

Tudor Ambarus (2):
  mtd: spi-nor: add Global Block Unlock support
  mtd: spi-nor: unlock global block protection on sst26vf064b

 drivers/mtd/spi-nor/spi-nor.c | 51 +++++++++++++++++++++++++++++++++++++++++--
 include/linux/mtd/spi-nor.h   |  1 +
 2 files changed, 50 insertions(+), 2 deletions(-)

-- 
2.9.5


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
