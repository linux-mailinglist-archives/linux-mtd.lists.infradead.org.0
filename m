Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6E64BF9B
	for <lists+linux-mtd@lfdr.de>; Wed, 19 Jun 2019 19:26:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tzj07kJv3w4UBWIoCq1vJ3YpMSusGooqLLb1FvDRg4A=; b=VTEmDwv61HOqXv
	LErrcv5xABSKlbSgEUp4tqaM9c8+W55rLFz6FDfnYp5Brt51sFUQZ/xNpe2HgJIq0iW7KB5ciVnCN
	bzb7iq2TSt30frdQXxxHGp7HTCZ4GDI4nOK875Hmm5gC3VUROhl6IGl37p+D24/2WGf8oDMhhbJd9
	eo6ftwPzMH0BlReF7A9r68ItBOl8qGYxxjNUCjfk14dMI9NRuIiBt+ayOM5oA42jiGbSvBiYBObjI
	sa+2LgIV6Qdt99RKWu2PEbACTROAgkFOygIT78UTzEf/KYEDAKOEISRORS+9B2kzKB4Wz2jDzR4RM
	p1Van4DIEAgCsWLfzvVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdeLz-0006VI-Cw; Wed, 19 Jun 2019 17:26:35 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdeLW-0006Ig-AC
 for linux-mtd@lists.infradead.org; Wed, 19 Jun 2019 17:26:10 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.63,393,1557212400"; d="scan'208";a="38251436"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 19 Jun 2019 10:26:03 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.87.71) by
 chn-vm-ex03.mchp-main.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 19 Jun 2019 10:26:02 -0700
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 19 Jun 2019 10:26:01 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SkbQhu91XhvVxZZPEbwR6YZ67Fa97auc3utbb0msb/Y=;
 b=WFPSccLNZApMA2mnPBTeRWHsl75WOp97zrgJyjdLYkt0eXSzq4SEBDemLBXnL4UFANxXNVuJI0d8VcWAolst0OqpxZC/pGnnjQwxxdAp1NqGq8fAmzr0Fy+57embYXwtPS4VJTdViRkUEcht0W+5t5mA3BNZFjdutpUIJ7vTrsI=
Received: from BN6PR11MB1842.namprd11.prod.outlook.com (10.175.98.146) by
 BN6PR11MB2049.namprd11.prod.outlook.com (10.173.31.9) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.12; Wed, 19 Jun 2019 17:26:01 +0000
Received: from BN6PR11MB1842.namprd11.prod.outlook.com
 ([fe80::e581:f807:acdc:cb36]) by BN6PR11MB1842.namprd11.prod.outlook.com
 ([fe80::e581:f807:acdc:cb36%9]) with mapi id 15.20.1987.014; Wed, 19 Jun 2019
 17:26:01 +0000
From: <Tudor.Ambarus@microchip.com>
To: <geert@linux-m68k.org>, <marek.vasut+renesas@gmail.com>,
 <marek.vasut@gmail.com>, <vigneshr@ti.com>, <jonas@norrbonn.se>,
 <miquel.raynal@bootlin.com>
Subject: [PATCH v2 1/2] mtd: spi-nor: use 16-bit WRR command when QE is set on
 spansion flashes
Thread-Topic: [PATCH v2 1/2] mtd: spi-nor: use 16-bit WRR command when QE is
 set on spansion flashes
Thread-Index: AQHVJsQQBHmc1VGhQ0K5RNzllIyxuA==
Date: Wed, 19 Jun 2019 17:26:01 +0000
Message-ID: <20190619172530.27159-1-tudor.ambarus@microchip.com>
References: <02babf5a-2a50-848c-27d9-9f810078cbcf@microchip.com>
In-Reply-To: <02babf5a-2a50-848c-27d9-9f810078cbcf@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1P195CA0049.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:802:5a::38) To BN6PR11MB1842.namprd11.prod.outlook.com
 (2603:10b6:404:101::18)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e1ac724b-ff61-445d-4166-08d6f4db32a8
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN6PR11MB2049; 
x-ms-traffictypediagnostic: BN6PR11MB2049:
x-microsoft-antispam-prvs: <BN6PR11MB2049033FBB7D67F0CDEFDCD6F0E50@BN6PR11MB2049.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0073BFEF03
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(136003)(366004)(396003)(39860400002)(376002)(346002)(189003)(199004)(72206003)(71190400001)(66066001)(76176011)(486006)(6512007)(66556008)(66476007)(66946007)(36756003)(5660300002)(64756008)(99286004)(446003)(26005)(73956011)(386003)(2616005)(476003)(11346002)(6506007)(102836004)(71200400001)(66446008)(50226002)(81166006)(6116002)(25786009)(7416002)(54906003)(478600001)(305945005)(1076003)(52116002)(14454004)(8676002)(7736002)(4326008)(107886003)(256004)(2906002)(81156014)(8936002)(14444005)(53936002)(68736007)(86362001)(6486002)(2201001)(2501003)(316002)(6436002)(186003)(110136005)(3846002)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB2049;
 H:BN6PR11MB1842.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Cwzo6VYTSQuOcGtCO0Qqm5160x7zDO/LScgQgdCfhVYyzODyam3GkAyOnX6tvlXSRPvVNk4auCQqNvMQeoWjqaLhtwKL+Cq+gFbY0reNDeRNDGxsKwGH4LnYLpM+XNSMwtgiyuTzdUQvtcKv3WwLFPcKaPcaLTim/0CSPCBxBuNOdPI+4jOhfZu7w7m+85ySVcikS7ji2v8J1wAr6iv81I6Fvjm1MQRIIp8zeXjfF4DPQ6lHapZIKnvI93KziAc5lO6LVrnujF/VEiQahnhrMQAirrfAz9SwdS2K2qumrNSAs+Dn5emNgzVzb1Q40mEIE4JfTko3W77hsYAK5KRh9PyUhq80Lzur/nHLZeac1aIjAhAcQeH75YhqNkhpy2lGxisRupl9CwFRzBFy9Jdj1q1KyUQKBcuvoVMP4YhERUk=
Content-ID: <444099ED08B0004DBDC98504A3FA04AE@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e1ac724b-ff61-445d-4166-08d6f4db32a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2019 17:26:01.1562 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tudor.ambarus@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB2049
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_102606_593927_45A28B43 
X-CRM114-Status: GOOD (  19.91  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
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
Cc: Tudor.Ambarus@microchip.com, richard@nod.at, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-mtd@lists.infradead.org,
 computersforpeace@gmail.com, dwmw2@infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

RnJvbTogVHVkb3IgQW1iYXJ1cyA8dHVkb3IuYW1iYXJ1c0BtaWNyb2NoaXAuY29tPg0KDQpTUEkg
bWVtb3J5IGRldmljZXMgZnJvbSBkaWZmZXJlbnQgbWFudWZhY3R1cmVycyBoYXZlIHdpZGVseQ0K
ZGlmZmVyZW50IGNvbmZpZ3VyYXRpb25zIGZvciBTdGF0dXMsIENvbnRyb2wgYW5kIENvbmZpZ3Vy
YXRpb24NCnJlZ2lzdGVycy4gSkVERUMgMjE2QyBkZWZpbmVzIGEgbmV3IG1hcCBmb3IgdGhlc2Ug
Y29tbW9uIHJlZ2lzdGVyDQpiaXRzIGFuZCB0aGVpciBmdW5jdGlvbnMsIGFuZCBkZXNjcmliZXMg
aG93IHRoZSBpbmRpdmlkdWFsIGJpdHMgbWF5DQpiZSBhY2Nlc3NlZCBmb3IgYSBzcGVjaWZpYyBk
ZXZpY2UuIEZvciB0aGUgSkVERUMgMjE2QiBjb21wbGlhbnQNCmZsYXNoZXMsIHdlIGNhbiBwYXJ0
aWFsbHkgZGVkdWNlIFN0YXR1cyBhbmQgQ29uZmlndXJhdGlvbiByZWdpc3RlcnMNCmZ1bmN0aW9u
cyBieSBpbnNwZWN0aW5nIHRoZSAxNnRoIERXT1JEIG9mIEJGUFQuIE9sZGVyIGZsYXNoZXMgdGhh
dA0KZG9uJ3QgZGVjbGFyZSB0aGUgU0ZEUCB0YWJsZXMgKFNQQU5TSU9OIEZMNTEyU0FJRkcxIDMx
MVFRMDYzIEEgwqkxMQ0KU1BBTlNJT04pIGxldCB0aGUgc29mdHdhcmUgZGVjaWRlIGhvdyB0byBp
bnRlcmFjdCB3aXRoIHRoZXNlIHJlZ2lzdGVycy4NCg0KVGhlIGNvbW1pdCBkY2I0YjIyZWVhZjQg
KCJzcGktbm9yOiBzMjVmbDUxMnMgc3VwcG9ydHMgcmVnaW9uIGxvY2tpbmciKQ0KdW5jb3ZlcmVk
IGEgcHJvYmUgZXJyb3IgZm9yIHMyNWZsNTEycywgd2hlbiB0aGUgUXVhZCBFbmFibGUgYml0IENS
WzFdDQp3YXMgc2V0IHRvIG9uZSBpbiB0aGUgYm9vdGxvYWRlci4gV2hlbiB0aGlzIGJpdCBpcyBv
bmUsIG9ubHkgdGhlIFdyaXRlDQpTdGF0dXMgKDAxaCkgY29tbWFuZCB3aXRoIHR3byBkYXRhIGJ5
dHMgbWF5IGJlIHVzZWQsIHRoZSAwMWggY29tbWFuZCB3aXRoDQpvbmUgZGF0YSBieXRlIGlzIG5v
dCByZWNvZ25pemVkIGFuZCBoZW5jZSB0aGUgZXJyb3Igd2hlbiB0cnlpbmcgdG8gY2xlYXINCnRo
ZSBibG9jayBwcm90ZWN0aW9uIGJpdHMuDQoNCkZpeCB0aGUgYWJvdmUgYnkgdXNpbmcgdGhlIFdy
aXRlIFN0YXR1cyAoMDFoKSBjb21tYW5kIHdpdGggdHdvIGRhdGEgYnl0ZXMNCndoZW4gdGhlIFF1
YWQgRW5hYmxlIGJpdCBpcyBvbmUuDQoNCkJhY2t3YXJkIGNvbXBhdGliaWxpdHkgc2hvdWxkIGJl
IGZpbmUuIFRoZSBuZXdseSBpbnRyb2R1Y2VkDQpzcGlfbm9yX3NwYW5zaW9uX2NsZWFyX3NyX2Jw
KCkgaXMgdGlnaHRseSBjb3VwbGVkIHdpdGggdGhlDQpzcGFuc2lvbl9xdWFkX2VuYWJsZSgpIGZ1
bmN0aW9uLiBCb3RoIGFzc3VtZSB0aGF0IHRoZSBXcml0ZSBSZWdpc3Rlcg0Kd2l0aCAxNiBiaXRz
LCB0b2dldGhlciB3aXRoIHRoZSBSZWFkIENvbmZpZ3VyYXRpb24gUmVnaXN0ZXIgKDM1aCkNCmlu
c3RydWN0aW9ucyBhcmUgc3VwcG9ydGVkLg0KDQpGaXhlczogZGNiNGIyMmVlYWY0NGY5MSAoInNw
aS1ub3I6IHMyNWZsNTEycyBzdXBwb3J0cyByZWdpb24gbG9ja2luZyIpDQpSZXBvcnRlZC1ieTog
R2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydEBsaW51eC1tNjhrLm9yZz4NClNpZ25lZC1vZmYtYnk6
IFR1ZG9yIEFtYmFydXMgPHR1ZG9yLmFtYmFydXNAbWljcm9jaGlwLmNvbT4NClRlc3RlZC1ieTog
Sm9uYXMgQm9ubiA8am9uYXNAbm9ycmJvbm4uc2U+DQpUZXN0ZWQtYnk6IEdlZXJ0IFV5dHRlcmhv
ZXZlbiA8Z2VlcnQrcmVuZXNhc0BnbGlkZXIuYmU+DQpSZXZpZXdlZC1ieTogVmlnbmVzaCBSYWdo
YXZlbmRyYSA8dmlnbmVzaHJAdGkuY29tPg0KVGVzdGVkLWJ5OiBWaWduZXNoIFJhZ2hhdmVuZHJh
IDx2aWduZXNockB0aS5jb20+DQotLS0NCi0gYWRkIEZpeGVzIHRhZy4gQ29sbGVjdCBSLWIgYW5k
IFQtYiB0YWdzDQotIHVwZGF0ZSBjb21tZW50cyByZWdhcmRpbmcgdGhlIFdyaXRlIFJlZ2lzdGVy
IGNvbW1hbmQuIExvb2tzIGxpa2UNCiAgSkVTRDIxNkQgdXNlcyB0aGUgIldyaXRlIFN0YXR1cyAo
MDFoKSBjb21tYW5kIiB0ZXJtaW5vbG9neS4gVXNlIGl0Lg0KLSBhZGQgZGVzY3JpcHRpb24gZm9y
IGludCAoKmNsZWFyX3NyX2JwKShzdHJ1Y3Qgc3BpX25vciAqbm9yKTsNCg0KIGRyaXZlcnMvbXRk
L3NwaS1ub3Ivc3BpLW5vci5jIHwgMTE5ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrLS0tLQ0KIGluY2x1ZGUvbGludXgvbXRkL3NwaS1ub3IuaCAgIHwgICAzICsrDQogMiBm
aWxlcyBjaGFuZ2VkLCAxMTEgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pDQoNCmRpZmYg
LS1naXQgYS9kcml2ZXJzL210ZC9zcGktbm9yL3NwaS1ub3IuYyBiL2RyaXZlcnMvbXRkL3NwaS1u
b3Ivc3BpLW5vci5jDQppbmRleCA3MzE3MmQ3ZjUxMmIuLjBjMmVjMWMyMTQzNCAxMDA2NDQNCi0t
LSBhL2RyaXZlcnMvbXRkL3NwaS1ub3Ivc3BpLW5vci5jDQorKysgYi9kcml2ZXJzL210ZC9zcGkt
bm9yL3NwaS1ub3IuYw0KQEAgLTE2MzYsNiArMTYzNiw5NSBAQCBzdGF0aWMgaW50IHNyMl9iaXQ3
X3F1YWRfZW5hYmxlKHN0cnVjdCBzcGlfbm9yICpub3IpDQogCXJldHVybiAwOw0KIH0NCiANCisv
KioNCisgKiBzcGlfbm9yX2NsZWFyX3NyX2JwKCkgLSBjbGVhciB0aGUgU3RhdHVzIFJlZ2lzdGVy
IEJsb2NrIFByb3RlY3Rpb24gYml0cy4NCisgKiBAbm9yOiAgICAgICAgcG9pbnRlciB0byBhICdz
dHJ1Y3Qgc3BpX25vcicNCisgKg0KKyAqIFJlYWQtbW9kaWZ5LXdyaXRlIGZ1bmN0aW9uIHRoYXQg
Y2xlYXJzIHRoZSBCbG9jayBQcm90ZWN0aW9uIGJpdHMgZnJvbSB0aGUNCisgKiBTdGF0dXMgUmVn
aXN0ZXIgd2l0aG91dCBhZmZlY3Rpbmcgb3RoZXIgYml0cy4NCisgKg0KKyAqIFJldHVybjogMCBv
biBzdWNjZXNzLCAtZXJybm8gb3RoZXJ3aXNlLg0KKyAqLw0KK3N0YXRpYyBpbnQgc3BpX25vcl9j
bGVhcl9zcl9icChzdHJ1Y3Qgc3BpX25vciAqbm9yKQ0KK3sNCisJaW50IHJldDsNCisJdTggbWFz
ayA9IFNSX0JQMiB8IFNSX0JQMSB8IFNSX0JQMDsNCisNCisJcmV0ID0gcmVhZF9zcihub3IpOw0K
KwlpZiAocmV0IDwgMCkgew0KKwkJZGV2X2Vycihub3ItPmRldiwgImVycm9yIHdoaWxlIHJlYWRp
bmcgc3RhdHVzIHJlZ2lzdGVyXG4iKTsNCisJCXJldHVybiByZXQ7DQorCX0NCisNCisJd3JpdGVf
ZW5hYmxlKG5vcik7DQorDQorCXJldCA9IHdyaXRlX3NyKG5vciwgcmV0ICYgfm1hc2spOw0KKwlp
ZiAocmV0KSB7DQorCQlkZXZfZXJyKG5vci0+ZGV2LCAid3JpdGUgdG8gc3RhdHVzIHJlZ2lzdGVy
IGZhaWxlZFxuIik7DQorCQlyZXR1cm4gcmV0Ow0KKwl9DQorDQorCXJldCA9IHNwaV9ub3Jfd2Fp
dF90aWxsX3JlYWR5KG5vcik7DQorCWlmIChyZXQpDQorCQlkZXZfZXJyKG5vci0+ZGV2LCAidGlt
ZW91dCB3aGlsZSB3cml0aW5nIHN0YXR1cyByZWdpc3RlclxuIik7DQorCXJldHVybiByZXQ7DQor
fQ0KKw0KKy8qKg0KKyAqIHNwaV9ub3Jfc3BhbnNpb25fY2xlYXJfc3JfYnAoKSAtIGNsZWFyIHRo
ZSBTdGF0dXMgUmVnaXN0ZXIgQmxvY2sgUHJvdGVjdGlvbg0KKyAqIGJpdHMgb24gc3BhbnNpb24g
Zmxhc2hlcy4NCisgKiBAbm9yOiAgICAgICAgcG9pbnRlciB0byBhICdzdHJ1Y3Qgc3BpX25vcicN
CisgKg0KKyAqIFJlYWQtbW9kaWZ5LXdyaXRlIGZ1bmN0aW9uIHRoYXQgY2xlYXJzIHRoZSBCbG9j
ayBQcm90ZWN0aW9uIGJpdHMgZnJvbSB0aGUNCisgKiBTdGF0dXMgUmVnaXN0ZXIgd2l0aG91dCBh
ZmZlY3Rpbmcgb3RoZXIgYml0cy4gVGhlIGZ1bmN0aW9uIGlzIHRpZ2h0bHkNCisgKiBjb3VwbGVk
IHdpdGggdGhlIHNwYW5zaW9uX3F1YWRfZW5hYmxlKCkgZnVuY3Rpb24uIEJvdGggYXNzdW1lIHRo
YXQgdGhlIFdyaXRlDQorICogUmVnaXN0ZXIgd2l0aCAxNiBiaXRzLCB0b2dldGhlciB3aXRoIHRo
ZSBSZWFkIENvbmZpZ3VyYXRpb24gUmVnaXN0ZXIgKDM1aCkNCisgKiBpbnN0cnVjdGlvbnMgYXJl
IHN1cHBvcnRlZC4NCisgKg0KKyAqIFJldHVybjogMCBvbiBzdWNjZXNzLCAtZXJybm8gb3RoZXJ3
aXNlLg0KKyAqLw0KK3N0YXRpYyBpbnQgc3BpX25vcl9zcGFuc2lvbl9jbGVhcl9zcl9icChzdHJ1
Y3Qgc3BpX25vciAqbm9yKQ0KK3sNCisJaW50IHJldDsNCisJdTggbWFzayA9IFNSX0JQMiB8IFNS
X0JQMSB8IFNSX0JQMDsNCisJdTggc3JfY3JbMl0gPSB7MH07DQorDQorCS8qIENoZWNrIGN1cnJl
bnQgUXVhZCBFbmFibGUgYml0IHZhbHVlLiAqLw0KKwlyZXQgPSByZWFkX2NyKG5vcik7DQorCWlm
IChyZXQgPCAwKSB7DQorCQlkZXZfZXJyKG5vci0+ZGV2LA0KKwkJCSJlcnJvciB3aGlsZSByZWFk
aW5nIGNvbmZpZ3VyYXRpb24gcmVnaXN0ZXJcbiIpOw0KKwkJcmV0dXJuIHJldDsNCisJfQ0KKw0K
KwkvKg0KKwkgKiBXaGVuIHRoZSBjb25maWd1cmF0aW9uIHJlZ2lzdGVyIFF1YWQgRW5hYmxlIGJp
dCBpcyBvbmUsIG9ubHkgdGhlDQorCSAqIFdyaXRlIFN0YXR1cyAoMDFoKSBjb21tYW5kIHdpdGgg
dHdvIGRhdGEgYnl0ZXMgbWF5IGJlIHVzZWQuDQorCSAqLw0KKwlpZiAocmV0ICYgQ1JfUVVBRF9F
Tl9TUEFOKSB7DQorCQlzcl9jclsxXSA9IHJldDsNCisNCisJCXJldCA9IHJlYWRfc3Iobm9yKTsN
CisJCWlmIChyZXQgPCAwKSB7DQorCQkJZGV2X2Vycihub3ItPmRldiwNCisJCQkJImVycm9yIHdo
aWxlIHJlYWRpbmcgc3RhdHVzIHJlZ2lzdGVyXG4iKTsNCisJCQlyZXR1cm4gcmV0Ow0KKwkJfQ0K
KwkJc3JfY3JbMF0gPSByZXQgJiB+bWFzazsNCisNCisJCXJldCA9IHdyaXRlX3NyX2NyKG5vciwg
c3JfY3IpOw0KKwkJaWYgKHJldCkNCisJCQlkZXZfZXJyKG5vci0+ZGV2LCAiMTYtYml0IHdyaXRl
IHJlZ2lzdGVyIGZhaWxlZFxuIik7DQorCQlyZXR1cm4gcmV0Ow0KKwl9DQorDQorCS8qDQorCSAq
IElmIHRoZSBRdWFkIEVuYWJsZSBiaXQgaXMgemVybywgdXNlIHRoZSBXcml0ZSBTdGF0dXMgKDAx
aCkgY29tbWFuZA0KKwkgKiB3aXRoIG9uZSBkYXRhIGJ5dGUuDQorCSAqLw0KKwlyZXR1cm4gc3Bp
X25vcl9jbGVhcl9zcl9icChub3IpOw0KK30NCisNCiAvKiBVc2VkIHdoZW4gdGhlICJfZXh0X2lk
IiBpcyB0d28gYnl0ZXMgYXQgbW9zdCAqLw0KICNkZWZpbmUgSU5GTyhfamVkZWNfaWQsIF9leHRf
aWQsIF9zZWN0b3Jfc2l6ZSwgX25fc2VjdG9ycywgX2ZsYWdzKQlcDQogCQkuaWQgPSB7CQkJCQkJ
CVwNCkBAIC0zNjYwLDYgKzM3NDksOCBAQCBzdGF0aWMgaW50IHNwaV9ub3JfaW5pdF9wYXJhbXMo
c3RydWN0IHNwaV9ub3IgKm5vciwNCiAJCWRlZmF1bHQ6DQogCQkJLyogS2VwdCBvbmx5IGZvciBi
YWNrd2FyZCBjb21wYXRpYmlsaXR5IHB1cnBvc2UuICovDQogCQkJcGFyYW1zLT5xdWFkX2VuYWJs
ZSA9IHNwYW5zaW9uX3F1YWRfZW5hYmxlOw0KKwkJCWlmIChub3ItPmNsZWFyX3NyX2JwKQ0KKwkJ
CQlub3ItPmNsZWFyX3NyX2JwID0gc3BpX25vcl9zcGFuc2lvbl9jbGVhcl9zcl9icDsNCiAJCQli
cmVhazsNCiAJCX0NCiANCkBAIC0zOTEyLDE3ICs0MDAzLDEzIEBAIHN0YXRpYyBpbnQgc3BpX25v
cl9pbml0KHN0cnVjdCBzcGlfbm9yICpub3IpDQogew0KIAlpbnQgZXJyOw0KIA0KLQkvKg0KLQkg
KiBBdG1lbCwgU1NULCBJbnRlbC9OdW1vbnl4LCBhbmQgb3RoZXJzIHNlcmlhbCBOT1IgdGVuZCB0
byBwb3dlciB1cA0KLQkgKiB3aXRoIHRoZSBzb2Z0d2FyZSBwcm90ZWN0aW9uIGJpdHMgc2V0DQot
CSAqLw0KLQlpZiAoSkVERUNfTUZSKG5vci0+aW5mbykgPT0gU05PUl9NRlJfQVRNRUwgfHwNCi0J
ICAgIEpFREVDX01GUihub3ItPmluZm8pID09IFNOT1JfTUZSX0lOVEVMIHx8DQotCSAgICBKRURF
Q19NRlIobm9yLT5pbmZvKSA9PSBTTk9SX01GUl9TU1QgfHwNCi0JICAgIG5vci0+aW5mby0+Zmxh
Z3MgJiBTUElfTk9SX0hBU19MT0NLKSB7DQotCQl3cml0ZV9lbmFibGUobm9yKTsNCi0JCXdyaXRl
X3NyKG5vciwgMCk7DQotCQlzcGlfbm9yX3dhaXRfdGlsbF9yZWFkeShub3IpOw0KKwlpZiAobm9y
LT5jbGVhcl9zcl9icCkgew0KKwkJZXJyID0gbm9yLT5jbGVhcl9zcl9icChub3IpOw0KKwkJaWYg
KGVycikgew0KKwkJCWRldl9lcnIobm9yLT5kZXYsDQorCQkJCSJmYWlsIHRvIGNsZWFyIGJsb2Nr
IHByb3RlY3Rpb24gYml0c1xuIik7DQorCQkJcmV0dXJuIGVycjsNCisJCX0NCiAJfQ0KIA0KIAlp
ZiAobm9yLT5xdWFkX2VuYWJsZSkgew0KQEAgLTQwNDcsNiArNDEzNCwxNiBAQCBpbnQgc3BpX25v
cl9zY2FuKHN0cnVjdCBzcGlfbm9yICpub3IsIGNvbnN0IGNoYXIgKm5hbWUsDQogCWlmIChpbmZv
LT5mbGFncyAmIFNQSV9TM0FOKQ0KIAkJbm9yLT5mbGFncyB8PSAgU05PUl9GX1JFQURZX1hTUl9S
RFk7DQogDQorCS8qDQorCSAqIEF0bWVsLCBTU1QsIEludGVsL051bW9ueXgsIGFuZCBvdGhlcnMg
c2VyaWFsIE5PUiB0ZW5kIHRvIHBvd2VyIHVwDQorCSAqIHdpdGggdGhlIHNvZnR3YXJlIHByb3Rl
Y3Rpb24gYml0cyBzZXQuDQorCSAqLw0KKwlpZiAoSkVERUNfTUZSKG5vci0+aW5mbykgPT0gU05P
Ul9NRlJfQVRNRUwgfHwNCisJICAgIEpFREVDX01GUihub3ItPmluZm8pID09IFNOT1JfTUZSX0lO
VEVMIHx8DQorCSAgICBKRURFQ19NRlIobm9yLT5pbmZvKSA9PSBTTk9SX01GUl9TU1QgfHwNCisJ
ICAgIG5vci0+aW5mby0+ZmxhZ3MgJiBTUElfTk9SX0hBU19MT0NLKQ0KKwkJbm9yLT5jbGVhcl9z
cl9icCA9IHNwaV9ub3JfY2xlYXJfc3JfYnA7DQorDQogCS8qIFBhcnNlIHRoZSBTZXJpYWwgRmxh
c2ggRGlzY292ZXJhYmxlIFBhcmFtZXRlcnMgdGFibGUuICovDQogCXJldCA9IHNwaV9ub3JfaW5p
dF9wYXJhbXMobm9yLCAmcGFyYW1zKTsNCiAJaWYgKHJldCkNCmRpZmYgLS1naXQgYS9pbmNsdWRl
L2xpbnV4L210ZC9zcGktbm9yLmggYi9pbmNsdWRlL2xpbnV4L210ZC9zcGktbm9yLmgNCmluZGV4
IGIzZDM2MGIwZWUzZC4uOWY1N2NkZmNjOTNkIDEwMDY0NA0KLS0tIGEvaW5jbHVkZS9saW51eC9t
dGQvc3BpLW5vci5oDQorKysgYi9pbmNsdWRlL2xpbnV4L210ZC9zcGktbm9yLmgNCkBAIC0zNzMs
NiArMzczLDggQEAgc3RydWN0IGZsYXNoX2luZm87DQogICogQGZsYXNoX3VubG9jazoJW0ZMQVNI
LVNQRUNJRklDXSB1bmxvY2sgYSByZWdpb24gb2YgdGhlIFNQSSBOT1INCiAgKiBAZmxhc2hfaXNf
bG9ja2VkOglbRkxBU0gtU1BFQ0lGSUNdIGNoZWNrIGlmIGEgcmVnaW9uIG9mIHRoZSBTUEkgTk9S
IGlzDQogICogQHF1YWRfZW5hYmxlOglbRkxBU0gtU1BFQ0lGSUNdIGVuYWJsZXMgU1BJIE5PUiBx
dWFkIG1vZGUNCisgKiBAY2xlYXJfc3JfYnA6CVtGTEFTSC1TUEVDSUZJQ10gY2xlYXJzIHRoZSBC
bG9jayBQcm90ZWN0aW9uIEJpdHMgZnJvbQ0KKyAqCQkJdGhlIFNQSSBOT1IgU3RhdHVzIFJlZ2lz
dGVyLg0KICAqCQkJY29tcGxldGVseSBsb2NrZWQNCiAgKiBAcHJpdjoJCXRoZSBwcml2YXRlIGRh
dGENCiAgKi8NCkBAIC00MTAsNiArNDEyLDcgQEAgc3RydWN0IHNwaV9ub3Igew0KIAlpbnQgKCpm
bGFzaF91bmxvY2spKHN0cnVjdCBzcGlfbm9yICpub3IsIGxvZmZfdCBvZnMsIHVpbnQ2NF90IGxl
bik7DQogCWludCAoKmZsYXNoX2lzX2xvY2tlZCkoc3RydWN0IHNwaV9ub3IgKm5vciwgbG9mZl90
IG9mcywgdWludDY0X3QgbGVuKTsNCiAJaW50ICgqcXVhZF9lbmFibGUpKHN0cnVjdCBzcGlfbm9y
ICpub3IpOw0KKwlpbnQgKCpjbGVhcl9zcl9icCkoc3RydWN0IHNwaV9ub3IgKm5vcik7DQogDQog
CXZvaWQgKnByaXY7DQogfTsNCi0tIA0KMi45LjUNCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxp
bmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LW10ZC8K
