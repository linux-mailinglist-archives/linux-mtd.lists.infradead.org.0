Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F7C7A7809
	for <lists+linux-mtd@lfdr.de>; Wed,  4 Sep 2019 03:15:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+1gHTM0+N8Lqy3nBTmFh8gGGVViYE2r55mPVG157Rdc=; b=UTQqW8M+hjsvEq
	IFvl2kj1tCvhqi80dkbZgOu8JiHcL3/UtAjXc1iGRTGLK8aDzzEw0jgrnYMHO1zFXg5r8k21W8cLP
	uj2kb+ijC3lw8Uso7WBU7H/X2X3GwxYamdiLN4XFRq9LGi99hwbXnvrw4PLZRHbYzs/GfyJlEWkdf
	3ZENfE4y5ZE9rwjKRkhfJGPWBC0QpDtmh65plgF5dRAeDvmIJjlRdZZImDQSFDFioHkc1rI4bT+i4
	eYr+cVYnNv8xVevZ0uH53KGZavnkwjlG+lbcmBEWnHGgm4xjF5kC7A4/0l3fuD6ZBiohQMhp7Kxs6
	NIqA1Z9BSb1VAelXVt+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5JtH-0005Ut-MR; Wed, 04 Sep 2019 01:15:19 +0000
Received: from mail-eopbgr730090.outbound.protection.outlook.com
 ([40.107.73.90] helo=NAM05-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Jt0-0004on-SM
 for linux-mtd@lists.infradead.org; Wed, 04 Sep 2019 01:15:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k8UbiOpQPEUzxE/Z4Z9pfQcqKqBOhrMITP3kleCAti7rTcl/hDpNScfRh9LktNID6Mq49oFb7DxXIp+se0dWo0AShiGm66yITrbsfC3IBbm3BV8kbzmyvWyB9W5hyTdwF3Cm5oEID4B3b2u3XFTmukOUvOiJxei5djpHh21XgpwO3o8L7t6FXwK2VAyDZC/iOUSUy1DB4vgr1+x0AzzO1JkZScB/SDXTadLM69LmI/BZguV5JzorTc2awMevl4txZS491yv7Zktyl22vrBz4RYJsQtO6Kc8xUhkuSaTdbwvOE4ltWXNsnf4KbhxR8vz+BH6D+ACtPxbolB7mCQnsqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zEELJB33e/WXAxh+I3Iqmn3NMzIRTdgNeca92LdhzJU=;
 b=cC7VLMZKaQHqtMrQF5y7S5tDJU3oAbdFHuOYF7CtF4iqEGE9H/t20Z4gfylXkLNUmkKOPvC5D1nSCropL9btSayGzl5/u01hx+S6t8THp/fUvxxlIpkFuf1aTzm28WIbDwpPZQxg25Dm1PNOhOQIxi6o07o1x1PmYY3VWBdzqEZKmLxSS9p6kuPmKkVdLx6xF4vtHN4b5NI3CzmwQkZKBIW+UgYNcm/8NQGgg8vab8FV/m2E4YTfMxlQwbgw8HrnvmPEtqKrKr+djfddIPlVFnlVQhT9/9m1DWRTgOAfDOi8H/uDaw9IqZguyBLNzGHK/k4arSpFjvVzNXLyuZsFoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fortanix.com; dmarc=pass action=none header.from=fortanix.com;
 dkim=pass header.d=fortanix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fortanix.onmicrosoft.com; s=selector2-fortanix-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zEELJB33e/WXAxh+I3Iqmn3NMzIRTdgNeca92LdhzJU=;
 b=Zk/4EwZhF9YMwPZZyr9XUAWGPHT+sG13UidmEaoZeI7ltszHxN4gXMDqyxvVn/SI06PrCwK9U+yz5xlIltgyZ1zEpWYJ64395A3NuADZiU4apr9pZkUMo1XNsR2hGn/Im96M4G6c7O9A/7/PdoTEYx4zPjbc0cPN94utvM3cVUw=
Received: from DM5PR1101MB2348.namprd11.prod.outlook.com (10.173.174.144) by
 DM5PR1101MB2089.namprd11.prod.outlook.com (10.174.106.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.18; Wed, 4 Sep 2019 01:14:57 +0000
Received: from DM5PR1101MB2348.namprd11.prod.outlook.com
 ([fe80::798a:dabe:a59f:bb42]) by DM5PR1101MB2348.namprd11.prod.outlook.com
 ([fe80::798a:dabe:a59f:bb42%6]) with mapi id 15.20.2220.022; Wed, 4 Sep 2019
 01:14:57 +0000
From: Jethro Beekman <jethro@fortanix.com>
To: Marek Vasut <marek.vasut@gmail.com>, Tudor Ambarus
 <tudor.ambarus@microchip.com>, David Woodhouse <dwmw2@infradead.org>, Brian
 Norris <computersforpeace@gmail.com>, Miquel Raynal
 <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, Vignesh
 Raghavendra <vigneshr@ti.com>, Allison Randal <allison@lohutok.net>, Thomas
 Gleixner <tglx@linutronix.de>, Jethro Beekman <jethro@fortanix.com>, Enrico
 Weigelt <info@metux.net>, Mika Westerberg <mika.westerberg@linux.intel.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 0/2] Support for Intel Cannon Lake SPI flash
Thread-Topic: [PATCH v2 0/2] Support for Intel Cannon Lake SPI flash
Thread-Index: AQHVYr4q8mwj1J9/J0yJS2ASf5BlBw==
Date: Wed, 4 Sep 2019 01:14:56 +0000
Message-ID: <86b51358-8f54-ecee-3dab-f44db143a37a@fortanix.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BY5PR13CA0005.namprd13.prod.outlook.com
 (2603:10b6:a03:180::18) To DM5PR1101MB2348.namprd11.prod.outlook.com
 (2603:10b6:3:a8::16)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jethro@fortanix.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [67.207.107.146]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 79a3b0f3-4fbb-4550-10cb-08d730d54ca6
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM5PR1101MB2089; 
x-ms-traffictypediagnostic: DM5PR1101MB2089:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR1101MB208946EFCA46BF5A347F132EAAB80@DM5PR1101MB2089.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-forefront-prvs: 0150F3F97D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(376002)(396003)(346002)(39840400004)(136003)(189003)(199004)(7736002)(25786009)(3846002)(14454004)(2906002)(6486002)(52116002)(5660300002)(6116002)(81166006)(81156014)(31696002)(8676002)(2201001)(508600001)(99286004)(86362001)(6436002)(8936002)(305945005)(4744005)(316002)(66066001)(36756003)(31686004)(110136005)(386003)(71190400001)(1250700005)(6506007)(71200400001)(6512007)(66476007)(66556008)(64756008)(66446008)(102836004)(7416002)(66946007)(53936002)(476003)(2616005)(486006)(256004)(2501003)(186003)(26005)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM5PR1101MB2089;
 H:DM5PR1101MB2348.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: fortanix.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: P6kovEDCP3rP8G5FRaDLQm9ELk9cGpuNJZ/yvfPAgVhCnGb1li2lHamxNyCtGoMrqqZ4yZBAJ+xPYxnn3xarD5dB6ZK2bwFnn1VJDBFQnyPvEY2mVCZvLJRj/zqcDgY1XslPjxwqBFT38RdF0aKBuPf2OTns3DywmfwENYcyzHtSKg9PHEq4I/7U5ZmlTCcHoeRX+x9d/Agruj/veyQ4Too49CEkPZwvCqBeGWnNSYOiO7NJT1Wx+qt178Dfl9QQ6TLH6V5BqC1tNR6xt7aI5/2cav5C39ZscOsvk8KLXQWVjUpz0hE4NhTZ53+HzBDaaQqYYT/+CUcfXy8vi5ca7ilSeeykI9O3bqgMnpyPiftL9TiQI4Q5TFt9qD//v6k4cDz9nCYQcgYpvn8h1EL0uAxyDu7iH1M9x9ENTPJZ71U=
Content-ID: <E6083003C27C3E40897DFAFFDB751ACD@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: fortanix.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79a3b0f3-4fbb-4550-10cb-08d730d54ca6
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2019 01:14:56.9453 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: de7becae-4883-43e8-82c7-7dbdbb988ae6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FUmhcMEZT01SninAi2s+spkAzEo3eQ6WMUlm1sK0I2Ljcf20ZXR+v+QbxZj9m+oQhI4pr6Km6lHMpjtvUspS/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_181503_004733_4676BDF8 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.73.90 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

v2 changes:
* Fix whitespace.
* Link to datasheet.

Jethro Beekman (2):
  mtd: spi-nor: intel-spi: support chips without software sequencer
  mtd: spi-nor: intel-spi: add support for Intel Cannon Lake SPI flash

 drivers/mtd/spi-nor/intel-spi-pci.c     |  5 +++++
 drivers/mtd/spi-nor/intel-spi.c         | 34 ++++++++++++++++++++++++++-------
 include/linux/platform_data/intel-spi.h |  1 +
 3 files changed, 33 insertions(+), 7 deletions(-)

-- 
2.7.4

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
