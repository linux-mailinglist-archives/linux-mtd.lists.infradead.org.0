Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF0E4373E
	for <lists+linux-mtd@lfdr.de>; Thu, 13 Jun 2019 16:33:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OX+SsYUjt7Hk2v1iXEj6xlo/gXp3yfdHF79IRvzGLUw=; b=bY8OOBEsSMvMt5
	QQZCXQQDO9TEEnvPTvUDuEw8v0o1SFPTVVC3X4TGag/DQ8kDCnmc4HJxv+Pwfp+K51wUeC7zsk0Ku
	QTKC9zHNXd6vQuZ2b9MVdA9z/FQNgL6dZcW4n8Sftt+qDwE4Kipn2LibeW5xypJs5cdmwUVC6YOXW
	w6DSktCTFcpCKBFl8XeNt9g/wkzrmZO2bgtg9VQeFXa/vX+5QHzBTdjnocj25x7foNkTLrU3GTqDH
	xz2MTee5UeskHboVESIxoDk1xb0B6WCdtm4/sBxvRZEWZz/4LBfOAPBfmkwACFPXa9kUw2QNHyR+j
	Slx99uekyZaPtkHDGHEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbQnD-0005tB-IK; Thu, 13 Jun 2019 14:33:31 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbQmx-0005se-Gc
 for linux-mtd@lists.infradead.org; Thu, 13 Jun 2019 14:33:17 +0000
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
X-IronPort-AV: E=Sophos;i="5.63,369,1557212400"; d="scan'208";a="35701288"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Jun 2019 07:33:10 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.87.152) by
 chn-vm-ex04.mchp-main.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 13 Jun 2019 07:33:08 -0700
Received: from NAM05-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 13 Jun 2019 07:33:07 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RpMElIIPeAmVZNSUsuGG2pRHWS3F1XUZRafJUVk6erE=;
 b=etfGOLWVVsZ3MpwS3nBPn1jNeJJxmOhbKxCCVoXDpKH298KilQDH3Fn8ISuyACHakZvI9VVt+bo9DL4ViSxhfMPXzhHfXkPhAlEG0JfzdoV39yZdU8lpXPykYwZBKcOriO7THJXML/qGSxDzBVgQnxYLazVfwBSc1QvmuMojRRw=
Received: from BN6PR11MB1842.namprd11.prod.outlook.com (10.175.98.146) by
 BN6PR11MB1970.namprd11.prod.outlook.com (10.175.98.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.11; Thu, 13 Jun 2019 14:33:06 +0000
Received: from BN6PR11MB1842.namprd11.prod.outlook.com
 ([fe80::e581:f807:acdc:cb36]) by BN6PR11MB1842.namprd11.prod.outlook.com
 ([fe80::e581:f807:acdc:cb36%9]) with mapi id 15.20.1965.017; Thu, 13 Jun 2019
 14:33:06 +0000
From: <Tudor.Ambarus@microchip.com>
To: <robimarko@gmail.com>
Subject: Re: [PATCH] mtd: spi-nor: Add Winbond w25q16jv support
Thread-Topic: [PATCH] mtd: spi-nor: Add Winbond w25q16jv support
Thread-Index: AQHUxKf5P1ZBDcn1LEmHy4bSCo3uraXpLIAAgAGaqYCAr5lSgA==
Date: Thu, 13 Jun 2019 14:33:06 +0000
Message-ID: <113ffb44-b5a4-be63-d75e-0c5819f65604@microchip.com>
References: <20190214205723.9011-1-robimarko@gmail.com>
 <97e48e85-9700-53e3-0f7a-eeac6f93f721@microchip.com>
 <CAOX2RU5MsnNLseBRqcp1KqbmQ+5_KzRyTQ_rGQB2DsrW_v-3iA@mail.gmail.com>
In-Reply-To: <CAOX2RU5MsnNLseBRqcp1KqbmQ+5_KzRyTQ_rGQB2DsrW_v-3iA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR09CA0066.eurprd09.prod.outlook.com
 (2603:10a6:802:28::34) To BN6PR11MB1842.namprd11.prod.outlook.com
 (2603:10b6:404:101::18)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 18026400-8710-4c4c-b415-08d6f00c0c5b
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN6PR11MB1970; 
x-ms-traffictypediagnostic: BN6PR11MB1970:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BN6PR11MB1970AA8A67625BC596E3F6AEF0EF0@BN6PR11MB1970.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0067A8BA2A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(396003)(39860400002)(136003)(366004)(189003)(199004)(6246003)(8936002)(52116002)(76176011)(1411001)(14444005)(66066001)(54906003)(11346002)(81166006)(305945005)(446003)(256004)(316002)(81156014)(8676002)(5660300002)(99286004)(86362001)(66946007)(73956011)(2616005)(66446008)(7736002)(66476007)(476003)(71190400001)(31686004)(36756003)(71200400001)(6916009)(72206003)(31696002)(6306002)(2906002)(966005)(229853002)(64756008)(6436002)(14454004)(68736007)(6116002)(53936002)(26005)(4326008)(186003)(6486002)(25786009)(386003)(6506007)(53546011)(102836004)(3846002)(486006)(66556008)(478600001)(6512007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB1970;
 H:BN6PR11MB1842.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: pr+drSv8UncacVA4VVPmY5qs3vtwWca05DC8BCGfVSU/3Gqb1S43Un6bqvljLpjLAYquYbm50dig3LbuSJZZT1MlFKGjE5fzcqPggNyKkMS2GsOKXix6rJxikclqY2zOp2jTMedJRvd1pK45wSJGlPf4WgN6/PRqr8kvde1/RG8MxVmv7PY6lqIF5J+DB7WkPeyiGxSVF11XSVbjOPqXY24ZEqJKWU0al2s/fKwluvztsfNQlAD588XW0z8RcNIR6vYGwWWSoy8Qs++ZlmowQVkNmOIZRxxlMhsZqhbqWYyNKd7TC5uRUNgR2JUlf2TziV+b6KPkN+KunRgLTB04ygqzb/gO09gbkyfkUzx1XWJFXBSQMBpYxeiH0hfG6vFRaLIGbI84fn/MehBjGZ2pSXQ0KTU+XCbKWU/UiWhiKXU=
Content-ID: <DEE4C4B6D51A4D44B8AF53A23A4484FF@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 18026400-8710-4c4c-b415-08d6f00c0c5b
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2019 14:33:06.0957 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tudor.ambarus@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1970
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_073315_667664_03ACA113 
X-CRM114-Status: GOOD (  16.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
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
Cc: vigneshr@ti.com, bbrezillon@kernel.org, richard@nod.at,
 linux-kernel@vger.kernel.org, marek.vasut@gmail.com,
 linux-mtd@lists.infradead.org, computersforpeace@gmail.com,
 dwmw2@infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGksIFJvYmVydCwNCg0KT24gMDIvMjEvMjAxOSAxMDo1OCBQTSwgUm9iZXJ0IE1hcmtvIHdyb3Rl
Og0KPiBPbiBXZWQsIDIwIEZlYiAyMDE5IGF0IDIxOjI5LCA8VHVkb3IuQW1iYXJ1c0BtaWNyb2No
aXAuY29tPiB3cm90ZTo+Pg0KPiBIaSwgUm9iZXJ0LD4+IE9uIDAyLzE0LzIwMTkgMTA6NTcgUE0s
IFJvYmVydCBNYXJrbyB3cm90ZTo+ID4NCj4gRGF0YXNoZWV0OiBodHRwczovL3d3dy53aW5ib25k
LmNvbS9yZXNvdXJjZS1maWxlcy93MjVxMTZqdiUyMHNwaSUyMHJldmclMjAwMzIyMjAxOCUyMHBs
dXMucGRmPg0KPj4+PiBUZXN0aW5nIGRvbmUgb24gTWlrcm90aWsgUm91dGVyYm9hcmQgUkI0NTBH
eDQgYm9hcmQgdW5kZXIgNC4xOS4xOQ0KPiBrZXJuZWwuPj4gSXQgaXMgcHJlZmVyYWJsZSB0byBk
byB0aGUgdGVzdCBvbiBzcGktbm9yL25leHRVbmZvcnR1bmF0ZWx5DQo+IEkgY2FudCBkbyB0aGF0
IGFzIE9wZW5XcnQgaGFzIGEgY29uc2lkZXJhYmxlIGFtb3VudCBvZiBwYXRjaGVzIHRoYXQNCj4g
d291bGQgbmVlZCB0byBiZSBwb3J0ZWQgYW5kIHdlIGFyZSBvbmx5IG1vdmluZyBmcm9tIExUUyB0
byBMVFMgdmVyc2lvbg0KPiBhbmQgd2UgYXJlIGN1cnJlbnRseSBvbiA0LjE5Lg0KPj4+DQo+Pj4g
VGVzdCBib2FyZCBkb2VzIG5vdCBzdXBwb3J0IER1YWwgb3IgUXVhZCBtb2Rlcy4NCj4+Pg0KPj4+
IFNpZ25lZC1vZmYtYnk6IFJvYmVydCBNYXJrbyA8cm9iaW1hcmtvQGdtYWlsLmNvbT4NCj4+PiAt
LS0NCj4+PiAgZHJpdmVycy9tdGQvc3BpLW5vci9zcGktbm9yLmMgfCA1ICsrKysrDQo+Pj4gIDEg
ZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykNCj4+Pg0KPj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL210ZC9zcGktbm9yL3NwaS1ub3IuYyBiL2RyaXZlcnMvbXRkL3NwaS1ub3Ivc3BpLW5vci5j
DQo+Pj4gaW5kZXggNmUxM2JiZDFhYWE1Li4wZTk1OGY0OGRiMWIgMTAwNjQ0DQo+Pj4gLS0tIGEv
ZHJpdmVycy9tdGQvc3BpLW5vci9zcGktbm9yLmMNCj4+PiArKysgYi9kcml2ZXJzL210ZC9zcGkt
bm9yL3NwaS1ub3IuYw0KPj4+IEBAIC0xOTc1LDYgKzE5NzUsMTEgQEAgc3RhdGljIGNvbnN0IHN0
cnVjdCBmbGFzaF9pbmZvIHNwaV9ub3JfaWRzW10gPSB7DQo+Pj4gICAgICAgICAgICAgICAgICAg
ICAgIFNFQ1RfNEsgfCBTUElfTk9SX0RVQUxfUkVBRCB8IFNQSV9OT1JfUVVBRF9SRUFEIHwNCj4+
PiAgICAgICAgICAgICAgICAgICAgICAgU1BJX05PUl9IQVNfTE9DSyB8IFNQSV9OT1JfSEFTX1RC
KQ0KPj4+ICAgICAgIH0sDQo+Pj4gKyAgICAgew0KPj4+ICsgICAgICAgICAgICAgIncyNXExNmp2
IiwgSU5GTygweGVmNzAxNSwgMCwgNjQgKiAxMDI0LCAgMzIsDQo+Pj4gKyAgICAgICAgICAgICAg
ICAgICAgIFNFQ1RfNEsgfCBTUElfTk9SX0RVQUxfUkVBRCB8IFNQSV9OT1JfUVVBRF9SRUFEIHwN
Cj4+PiArICAgICAgICAgICAgICAgICAgICAgU1BJX05PUl9IQVNfTE9DSyB8IFNQSV9OT1JfSEFT
X1RCKQ0KPj4NCj4+IFlvdSdsbCBuZWVkIGEgd2F5IHRvIGRpZmZlcmVudGlhdGUgYmV0d2VlbiBX
MjVRMTZKVi1JUS9KUSBhbmQgVzI1UTE2SlYtSU0vSk0uDQo+IEhtLCBmcm9tIHdoYXQgSSB1bmRl
cnN0b29kIEpWIGlzIHRoZSBzZXJpZXMgYW5kIHN1ZmZpeCBvbmx5IGluZGljdGVzDQo+IHRoZSBw
YWNrYWdlLg0KPiBUaGV5IHNob3VsZCBhbGwgaGF2ZSB0aGUgc2FtZSBKRURFQyBJRCBhbmQgZmVh
dHVyZXMuDQo+Pg0KDQpXMjVRMTZKVi1JUS9KUSBhbmQgVzI1UTE2SlYtSU0vSk0gaGF2ZSBkaWZm
ZXJlbnQgamVkZWMgaWRzLCBzZWUgdGFibGUgIjkuMS4xDQpNYW51ZmFjdHVyZXIgYW5kIERldmlj
ZSBJZGVudGlmaWNhdGlvbiIgZnJvbSB0aGUgZGF0YXNoZWV0IHRoYXQgeW91IGluZGljYXRlZCBp
bg0KdGhlIGNvbW1pdCBtZXNzYWdlLg0KDQpMb29raW5nIGF0ICIxMi4gT1JERVJJTkcgSU5GT1JN
QVRJT04iLCBJIHNlZSB0aGF0Og0KLSBRIHZlcnNpb24gaGFzIFFFID0gMSAoZml4ZWQpIGFuZCBp
dCdzIGJhY2t3YXJkIGNvbXBhdGlibGUgdG8gRlYgZmFtaWx5DQotIE0gdmVyc2lvbiBoYXMgUUUg
PSAwIChwcm9ncmFtbWFibGUpIGFuZCBoYXMgYSBuZXcgZGV2aWNlIElEDQpUaGUgc2FtZSBpcyBk
ZXNjcmliZWQgaW4gIjguIFFVQUQgRU5BQkxFIChRRSkg4oCTIFZvbGF0aWxlL05vbi1Wb2xhdGls
ZSBXcml0YWJsZSIuDQoNCkkgd291bGQgc3VnZ2VzdCB0byBuYW1lIHRoZSBmbGFzaCAidzI1cTE2
anYtaW0vam0iLg0KDQpXaGF0IGRvIHlvdSB0aGluaz8NCnRhDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24g
bWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtbXRkLwo=
