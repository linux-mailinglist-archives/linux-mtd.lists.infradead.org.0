Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 660D510FD48
	for <lists+linux-mtd@lfdr.de>; Tue,  3 Dec 2019 13:08:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IENZO6RnLTrlgqQJcvoE/ircH6E3p18NsRcMHHVA/q8=; b=qfWc4TdCTrAQqK
	XCaZ/CQ2Xk50Vjcz92DTVKab4vVFFsw97WIbRvCBbRvVTPT5N99eeknXynIuPVgF2MOewpc8lJw3k
	rtshKlii4PdUDdk7jHCM4OqAgWy7CY0sNMMWf57Rk9D0MJyJpaS9rOiH9qQwABQlsOhSFDMi3bUg+
	TyHs2fIn8fONmflk4W2sp6y7a633Ae7YeFVMLj0mBndulj6GOtw9gWztQ1HxciF5CxeCAUhKgm2FP
	SgcCYwh5FoZTpmAhz57c8sTZff6bWyuHyFn9dMtnfuXlDo85A+gWniGf7wnEc3iJ/tJzI9q9oZ8F1
	q/SZtZcYsP9ytq8kQuZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic6yR-0006Nu-CU; Tue, 03 Dec 2019 12:08:11 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic6vp-0004Bf-6I
 for linux-mtd@lists.infradead.org; Tue, 03 Dec 2019 12:05:32 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
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
IronPort-SDR: csVUDdA+9MrC8jHVoWhKi78cBTPYEsup3DxHcPxY22JOgEII2MqdGgqc6hfQ516743LBTnOuXi
 b6oxrAQrBddLoxzGEMV+H3s2w/OkuCi8TQhohQmBEAeBktqvwot1E1xCpT+rF+RL+25VYYrPSN
 zVsxmQzQc1CLxDjv1zMMd/bJXRkKflgHjGROwRx7VuI970LaWWT6vRepd41b3mCD1tbiuGKYwn
 kP/5rjgJbQL12JR3HitqVUmxIIlAPMQ2UVfMDoVCe+sZS1CEeBoI2ntYGf55e7uZ9LySiikd3b
 HGc=
X-IronPort-AV: E=Sophos;i="5.69,273,1571727600"; d="scan'208";a="56416094"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 03 Dec 2019 05:05:10 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 3 Dec 2019 05:05:10 -0700
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 3 Dec 2019 05:05:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fe4lFrCSjCqOKD/6u6O8LrJ6hljQAMU2XP6RjlDo26mZsIR6xU5y9RBOqgCdDXALX7tMfxfYIr/0TnoM94e+f2WUw5ADqD6Mos4BwIYDMH4z3+cNjdLBjQDeoXq2mISMU728ghFVNy/337JoUDiidPRwTx4dUK89xHCc0LEzWtMRrOmJMoiJvvxYIGN1cDrHPOZW9powInTKKQgRW2BLWu7J6lsKdMCzLaKepVM3PntozNX7ruQt68HPNxImQFXSirp1sAZBMkaQIwugelUeKY4UV7sjIeKRBU6BeGjvrgWJ0T8/COJ/76E/hOSBCHOwOU1uzBQxbRghLMpAT8Wb7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Rnjcmnl9NII5gdi/ft3GKHgn91JbHyBCtZ10LPyiJDY=;
 b=O1szBtC/Oi/HUb3oBYF82+eDc+Xd4comYJy+A98JYXQlWoGYonaAzqPpP0+m6H1mMiLX1eZqpVj67m82WxLQ71bjF8HfqPJA/rlSyG0I9OCY6AXePrMcnjUN7hkGMpcSVh1SCohcV46HDFqjRNmuCrGPbcrTDaYoDFKxZ5w3ma3La9Cqcs09wclirNOxPH/7PNla8kk0rvqDsZG1dyw+KpUtxfIQDSo6mtDEtzaEkF8RKOgVBjpwLdhG0Z8bICSfZ++U0xJ205tbRiuosMm6P65oL6dqt83vf3lG0DcmgxhSpdkKUf5zh+8tnYtqqILxx8uGAk0gSS5uAQIyoS77Uw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Rnjcmnl9NII5gdi/ft3GKHgn91JbHyBCtZ10LPyiJDY=;
 b=ovbNCRQl3HSrBQxFJmtX71/8KCpu99UDuTadNbHyqs72qdm5kU7ZBQmuwjWUw12MtPp53Kpy55YX5m8JpOfywH2ZLmTFcoZykd6i3u1Cj/3xhmT+E5By6GObs6p0F1bzs2M1iPiFUjDT/5A+Yc/vUcVE9S6GfmErqT0S359pH7s=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3664.namprd11.prod.outlook.com (20.178.252.76) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.22; Tue, 3 Dec 2019 12:05:07 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::84c:6e75:22df:cbc9]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::84c:6e75:22df:cbc9%5]) with mapi id 15.20.2495.014; Tue, 3 Dec 2019
 12:05:07 +0000
From: <Tudor.Ambarus@microchip.com>
To: <john.garry@huawei.com>, <linux-mtd@lists.infradead.org>
Subject: Re: flash_lock issue for n25q 128mb spi nor part
Thread-Topic: flash_lock issue for n25q 128mb spi nor part
Thread-Index: AQHVqTXrLRyxgk/NSUmXYMf/6XpoyKeoKnuAgAAMpoCAAAo/gIAACjsAgAAFwIA=
Date: Tue, 3 Dec 2019 12:05:06 +0000
Message-ID: <f60b2b0a-f3c4-e55c-2087-30b17e81c40a@microchip.com>
References: <bbebfe85-73dd-3bc2-01e1-a7493ffad5ef@huawei.com>
 <42e10e49-5ec0-e4a3-bd11-e9fa0cc0d9b1@microchip.com>
 <6ade1621-2d3f-6ddd-64a3-6405b07802c6@huawei.com>
 <a5a59108-bec3-40b4-bd37-76b060fffa93@microchip.com>
 <36c733b3-acac-4779-480d-7f0ae1db710e@huawei.com>
In-Reply-To: <36c733b3-acac-4779-480d-7f0ae1db710e@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR01CA0106.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:10e::47) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20191203140500927
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e1a61ced-5f11-4d96-45c0-08d777e9097f
x-ms-traffictypediagnostic: MN2PR11MB3664:
x-microsoft-antispam-prvs: <MN2PR11MB3664AC22099D6F462BB0C986F0420@MN2PR11MB3664.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02408926C4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(39860400002)(366004)(346002)(396003)(199004)(189003)(55674003)(6512007)(6246003)(2906002)(446003)(11346002)(2616005)(36756003)(316002)(66556008)(54906003)(6116002)(31686004)(99286004)(5660300002)(66476007)(66946007)(66446008)(3846002)(2501003)(110136005)(64756008)(26005)(6506007)(81166006)(256004)(86362001)(14444005)(5024004)(8676002)(386003)(31696002)(81156014)(53546011)(186003)(102836004)(52116002)(4326008)(76176011)(6486002)(229853002)(478600001)(14454004)(25786009)(6436002)(305945005)(71190400001)(7736002)(71200400001)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3664;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZeiGHS/V/cRty+hEaIYk7u+C18/IxoLlHXvlOaxopAwN44QmhOdltAoBAcDzj2ocW2C36xTwUEDDpf77WGfI2x5t71CnTj4xRF4CnoauvmEyDZRZUqP+IgQKt1ODWwrU7m89g+R3gsyDgdOkn3HYB1BA3pyJ8fT2W6rgFAeeDqDRzimamKMDUkTHQIuCLFwJbt2g+ECBdJJtP9Hi1F+105FPM02NXBUmkhusHKbM3rhlBcNViXQzKH7Z34Ybkud9VsmfljwBBFsLiYliSXQ+m/+Puo7kEhiDjRqBQlxuFxx9p3nAQaNM7YGaHFlLSvY6vIX+P288gQQHlgCFplxqTOzuUsM1+9pwE5L+mMV0ZX0dAeAyGplad9gPsC9jqd/E1NWPWuyF4naLgGpDbobeIha9Ib/mZLKPyI+xQrsJFOjXbg2pKY8/6x6CJ7uVcZap
x-ms-exchange-transport-forked: True
Content-ID: <1D976E84BA2DBE449D8A6782FB25F21A@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e1a61ced-5f11-4d96-45c0-08d777e9097f
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2019 12:05:06.8624 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5V0O3slwobeeGPtTckRhqBMCtI65dzgqNoFxixq0kAVswCQBrayq9LgV1DmwtbMP9knzdg3l7s7VMjTocqqJMLngZ5LUEzLxCR9qS9cUzgw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3664
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_040529_310826_EC045821 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
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
Cc: broonie@kernel.org, chenxiang66@hisilicon.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

DQoNCk9uIDEyLzMvMTkgMTo0NCBQTSwgSm9obiBHYXJyeSB3cm90ZToNCj4gRVhURVJOQUwgRU1B
SUw6IERvIG5vdCBjbGljayBsaW5rcyBvciBvcGVuIGF0dGFjaG1lbnRzIHVubGVzcyB5b3Uga25v
dyB0aGUgY29udGVudCBpcyBzYWZlDQo+IA0KPiBPbiAwMy8xMi8yMDE5IDExOjA3LCBUdWRvci5B
bWJhcnVzQG1pY3JvY2hpcC5jb20gd3JvdGU6DQo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGJmcHQuZHdvcmRzW0JGUFRfRFdPUkQoMTUpXSAmIEJGUFRfRFdPUkQxNV9RRVJfTUFT
Syk7DQo+Pj4+ICsNCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIC8qIFF1YWQgRW5hYmxlIFJlcXVp
cmVtZW50cy4gKi8NCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIHN3aXRjaCAoYmZwdC5kd29yZHNb
QkZQVF9EV09SRCgxNSldICYgQkZQVF9EV09SRDE1X1FFUl9NQVNLKSB7DQo+Pj4+IMKgwqDCoMKg
wqDCoMKgwqDCoCBjDQo+IA0KPiBIaSBUdWRvciwNCj4gDQo+IGFzZSBCRlBUX0RXT1JEMTVfUUVS
X05PTkU6DQo+Pj4+DQo+Pj4gam9obkB1YnVudHU6fiQgZG1lc2cgfCBncmVwIHNwaQ0KPj4+IFvC
oMKgIDE0LjkzNTc0MF0gc3BpLW5vciBzcGktUFJQMDAwMTowMDogYmZwdC5kd29yZHNbMF0gPSBm
ZmY5MjBlNQ0KPj4+IFvCoMKgIDE0Ljk0MTQ4MF0gc3BpLW5vciBzcGktUFJQMDAwMTowMDogYmZw
dC5kd29yZHNbMV0gPSAwN2ZmZmZmZg0KPj4+IFvCoMKgIDE0Ljk0NzIxNV0gc3BpLW5vciBzcGkt
UFJQMDAwMTowMDogYmZwdC5kd29yZHNbMl0gPSA2YjI3ZWIyOQ0KPj4+IFvCoMKgIDE0Ljk1Mjk0
OV0gc3BpLW5vciBzcGktUFJQMDAwMTowMDogYmZwdC5kd29yZHNbM10gPSBiYjI3M2IyNw0KPj4+
IFvCoMKgIDE0Ljk1ODY4M10gc3BpLW5vciBzcGktUFJQMDAwMTowMDogYmZwdC5kd29yZHNbNF0g
PSBmZmZmZmZmZg0KPj4+IFvCoMKgIDE0Ljk2NDQxN10gc3BpLW5vciBzcGktUFJQMDAwMTowMDog
YmZwdC5kd29yZHNbNV0gPSBiYjI3ZmZmZg0KPj4+IFvCoMKgIDE0Ljk3MDE1MF0gc3BpLW5vciBz
cGktUFJQMDAwMTowMDogYmZwdC5kd29yZHNbNl0gPSBlYjI5ZmZmZg0KPj4+IFvCoMKgIDE0Ljk3
NTg4NF0gc3BpLW5vciBzcGktUFJQMDAwMTowMDogYmZwdC5kd29yZHNbN10gPSBkODEwMjAwYw0K
Pj4+IFvCoMKgIDE0Ljk4MTYxOF0gc3BpLW5vciBzcGktUFJQMDAwMTowMDogYmZwdC5kd29yZHNb
OF0gPSAwMDAwNTIwZg0KPj4+IFvCoMKgIDE0Ljk4NzM1MV0gc3BpLW5vciBzcGktUFJQMDAwMTow
MDogYmZwdC5kd29yZHNbOV0gPSAwMDk5NGEyNA0KPj4+IFvCoMKgIDE0Ljk5MzA4NV0gc3BpLW5v
ciBzcGktUFJQMDAwMTowMDogYmZwdC5kd29yZHNbMTBdID0gYzkwMzhlOGINCj4+PiBbwqDCoCAx
NC45OTg5MDZdIHNwaS1ub3Igc3BpLVBSUDAwMDE6MDA6IGJmcHQuZHdvcmRzWzExXSA9IDM4Mjcw
MWFjDQo+Pj4gW8KgwqAgMTUuMDA0NzI2XSBzcGktbm9yIHNwaS1QUlAwMDAxOjAwOiBiZnB0LmR3
b3Jkc1sxMl0gPSA3NTdhNzU3YQ0KPj4+IFvCoMKgIDE1LjAxMDU0N10gc3BpLW5vciBzcGktUFJQ
MDAwMTowMDogYmZwdC5kd29yZHNbMTNdID0gNWNkNWJkZmINCj4+PiBbwqDCoCAxNS4wMTYzNjdd
IHNwaS1ub3Igc3BpLVBSUDAwMDE6MDA6IGJmcHQuZHdvcmRzWzE0XSA9IGZmODIwZjRhDQo+Pj4g
W8KgwqAgMTUuMDIyMTg3XSBzcGktbm9yIHNwaS1QUlAwMDAxOjAwOiBiZnB0LmR3b3Jkc1sxNV0g
PSAwMDAwM2Q4MQ0KPj4+DQo+PiBUaGlzIGZhbGxzIGludG8gdGhlIEJGUFRfRFdPUkQxNV9RRVJf
Tk9ORSBjYXNlLiBJZiB0aGVyZSdzIGEgY29ycmVzcG9uZGVuY2UNCj4+IGJldHdlZW4gdGhlIEJG
UFRfRFdPUkQxNV9RRVJfTk9ORSBhbmQgbm8gMTYtYml0IFdyaXRlIFNSIHN1cHBvcnQsIHdlIGNh
biBjbGVhcg0KPj4gdGhlIGZsYWcgdGhlcmUsIGJ1dCBKRVNEMjE2RCBkb2VzIG5vdCBzcGVjaWZ5
IHRoaXM6KC4NCj4+DQo+PiBQbGVhc2UgZW5hYmxlIENPTkZJR19ERUJVRyBvbiB0b3Agb2YgdGhl
IGZpbGUgdG8gc2VlIGRldl9kYmcgbWVzc2FnZXMuIEknbGwgdHJ5DQo+PiB0byBmaW5kIGEgbWlj
cm9uIGZsYXNoIGluIHRoZSBtZWFudGltZS4NCj4+DQo+IA0KPiBGcm9tIHdoYXQgeW91IHNheSwg
dGhlIHNwZWMgc2VlbXMgdG8gYmUgaW4gY29uZmxpY3QvdW5zcGVjaWZpZWQgd2l0aA0KPiB0aGlz
IG1pY3JvbiBwYXJ0IGluIHRlcm1zIG9mIHVzaW5nIGEgMTZiIFNSLCBzbyBJIGFtIG5vdCBzdXJl
IHdoYXQgYSBsb2cNCj4gY2FuIHJldmVhbC4NCj4gDQo+IEFueXdheSBoZXJlJ3Mgd2hhdCBJIGdv
dDoNCj4gDQo+IGpvaG5AdWJ1bnR1On4kIGRtZXNnIHwgZ3JlcCBzcGkNCj4gW8KgwqAgMTQuOTM0
MzU0XSBzcGktbm9yIHNwaS1QUlAwMDAxOjAwOiBiZnB0LmR3b3Jkc1swXSA9IGZmZjkyMGU1DQo+
IFvCoMKgIDE0Ljk0MDA5NF0gc3BpLW5vciBzcGktUFJQMDAwMTowMDogYmZwdC5kd29yZHNbMV0g
PSAwN2ZmZmZmZg0KPiBbwqDCoCAxNC45NDU4MjhdIHNwaS1ub3Igc3BpLVBSUDAwMDE6MDA6IGJm
cHQuZHdvcmRzWzJdID0gNmIyN2ViMjkNCj4gW8KgwqAgMTQuOTUxNTYzXSBzcGktbm9yIHNwaS1Q
UlAwMDAxOjAwOiBiZnB0LmR3b3Jkc1szXSA9IGJiMjczYjI3DQo+IFvCoMKgIDE0Ljk1NzI5N10g
c3BpLW5vciBzcGktUFJQMDAwMTowMDogYmZwdC5kd29yZHNbNF0gPSBmZmZmZmZmZg0KPiBbwqDC
oCAxNC45NjMwMzBdIHNwaS1ub3Igc3BpLVBSUDAwMDE6MDA6IGJmcHQuZHdvcmRzWzVdID0gYmIy
N2ZmZmYNCj4gW8KgwqAgMTQuOTY4NzY0XSBzcGktbm9yIHNwaS1QUlAwMDAxOjAwOiBiZnB0LmR3
b3Jkc1s2XSA9IGViMjlmZmZmDQo+IFvCoMKgIDE0Ljk3NDQ5OF0gc3BpLW5vciBzcGktUFJQMDAw
MTowMDogYmZwdC5kd29yZHNbN10gPSBkODEwMjAwYw0KPiBbwqDCoCAxNC45ODAyMzFdIHNwaS1u
b3Igc3BpLVBSUDAwMDE6MDA6IGJmcHQuZHdvcmRzWzhdID0gMDAwMDUyMGYNCj4gW8KgwqAgMTQu
OTg1OTY1XSBzcGktbm9yIHNwaS1QUlAwMDAxOjAwOiBiZnB0LmR3b3Jkc1s5XSA9IDAwOTk0YTI0
DQo+IFvCoMKgIDE0Ljk5MTY5OV0gc3BpLW5vciBzcGktUFJQMDAwMTowMDogYmZwdC5kd29yZHNb
MTBdID0gYzkwMzhlOGINCj4gW8KgwqAgMTQuOTk3NTIwXSBzcGktbm9yIHNwaS1QUlAwMDAxOjAw
OiBiZnB0LmR3b3Jkc1sxMV0gPSAzODI3MDFhYw0KPiBbwqDCoCAxNS4wMDMzNDBdIHNwaS1ub3Ig
c3BpLVBSUDAwMDE6MDA6IGJmcHQuZHdvcmRzWzEyXSA9IDc1N2E3NTdhDQo+IFvCoMKgIDE1LjAw
OTE2MV0gc3BpLW5vciBzcGktUFJQMDAwMTowMDogYmZwdC5kd29yZHNbMTNdID0gNWNkNWJkZmIN
Cj4gW8KgwqAgMTUuMDE0OTgxXSBzcGktbm9yIHNwaS1QUlAwMDAxOjAwOiBiZnB0LmR3b3Jkc1sx
NF0gPSBmZjgyMGY0YQ0KPiBbwqDCoCAxNS4wMjA4MDFdIHNwaS1ub3Igc3BpLVBSUDAwMDE6MDA6
IGJmcHQuZHdvcmRzWzE1XSA9IDAwMDAzZDgxDQo+IFvCoMKgIDE1LjAyNjYyNF0gc3BpLW5vciBz
cGktUFJQMDAwMTowMDogYmZwdC5kd29yZHNbQkZQVF9EV09SRCgxNSldICYNCj4gQkZQVF9EV09S
RDE1X1FFUl9NQVNLID0wMDAwMDAwMA0KPiBbwqDCoCAxNS4wMzU1MTVdIHNwaS1ub3Igc3BpLVBS
UDAwMDE6MDA6IG4yNXExMjhhMTEgKDE2Mzg0IEtieXRlcykNCj4gW8KgwqAgMTUuMDQxMjUwXSBz
cGktbm9yIHNwaS1QUlAwMDAxOjAwOiBtdGQgLm5hbWUgPSBzcGktUFJQMDAwMTowMCwgLnNpemUN
Cj4gPSAweDEwMDAwMDAgKDE2TWlCKSwgLmVyYXNlc2l6ZSA9IDB4MDAwMDEwMDAgKDRLaUIpIC5u
dW1lcmFzZXJlZ2lvbnMgPSAwDQo+IFvCoMKgIDIzLjMzODI1OV0gc3BpLW5vciBzcGktUFJQMDAw
MTowMDogZnJvbSAweDAwZmYwMDAwLCBsZW4gNTEyDQo+IFvCoMKgIDIzLjMzODM4MF0gc3BpLW5v
ciBzcGktUFJQMDAwMTowMDogZnJvbSAweDAwZmYwMjAwLCBsZW4gNTEyDQo+IFvCoMKgIDIzLjMz
ODQ5N10gc3BpLW5vciBzcGktUFJQMDAwMTowMDogZnJvbSAweDAwZmYwNDAwLCBsZW4gNTEyDQo+
IFvCoMKgIDIzLjMzODYxMl0gc3BpLW5vciBzcGktUFJQMDAwMTowMDogZnJvbSAweDAwZmYwNjAw
LCBsZW4gNTEyDQo+IFvCoMKgIDIzLjMzODcyOF0gc3BpLW5vciBzcGktUFJQMDAwMTowMDogZnJv
bSAweDAwZmYwODAwLCBsZW4gNTEyDQo+IFvCoMKgIDIzLjMzODg0NF0gc3BpLW5vciBzcGktUFJQ
MDAwMTowMDogZnJvbSAweDAwZmYwYTAwLCBsZW4gNTEyDQo+IFvCoMKgIDIzLjMzODk1OV0gc3Bp
LW5vciBzcGktUFJQMDAwMTowMDogZnJvbSAweDAwZmYwYzAwLCBsZW4gNTEyDQo+IFvCoMKgIDIz
LjMzOTA3NV0gc3BpLW5vciBzcGktUFJQMDAwMTowMDogZnJvbSAweDAwZmYwZTAwLCBsZW4gNTEy
DQo+IFvCoMKgIDIzLjMzOTIzN10gc3BpLW5vciBzcGktUFJQMDAwMTowMDogZnJvbSAweDAwZmZl
MDAwLCBsZW4gNTEyDQo+IFvCoMKgIDIzLjMzOTM1OV0gc3BpLW5vciBzcGktUFJQMDAwMTowMDog
ZnJvbSAweDAwZmZlMjAwLCBsZW4gNTEyDQo+IFvCoMKgIDIzLjMzOTQ3NF0gc3BpLW5vciBzcGkt
UFJQMDAwMTowMDogZnJvbSAweDAwZmZlNDAwLCBsZW4gNTEyDQo+IFvCoMKgIDIzLjMzOTU4OV0g
c3BpLW5vciBzcGktUFJQMDAwMTowMDogZnJvbSAweDAwZmZlNjAwLCBsZW4gNTEyDQo+IFvCoMKg
IDIzLjMzOTcwNF0gc3BpLW5vciBzcGktUFJQMDAwMTowMDogZnJvbSAweDAwZmZlODAwLCBsZW4g
NTEyDQo+IFvCoMKgIDIzLjMzOTgxOF0gc3BpLW5vciBzcGktUFJQMDAwMTowMDogZnJvbSAweDAw
ZmZlYTAwLCBsZW4gNTEyDQo+IFvCoMKgIDIzLjMzOTkzM10gc3BpLW5vciBzcGktUFJQMDAwMTow
MDogZnJvbSAweDAwZmZlYzAwLCBsZW4gNTEyDQo+IFvCoMKgIDIzLjM0MDA0N10gc3BpLW5vciBz
cGktUFJQMDAwMTowMDogZnJvbSAweDAwZmZlZTAwLCBsZW4gNTEyDQo+IFvCoMKgIDIzLjM0MDE4
OF0gc3BpLW5vciBzcGktUFJQMDAwMTowMDogZnJvbSAweDAwMDAwMDAwLCBsZW4gNTEyDQo+IFvC
oMKgIDIzLjM0MDMwNl0gc3BpLW5vciBzcGktUFJQMDAwMTowMDogZnJvbSAweDAwMDAwMjAwLCBs
ZW4gNTEyDQo+IFvCoMKgIDIzLjM0MDQyMl0gc3BpLW5vciBzcGktUFJQMDAwMTowMDogZnJvbSAw
eDAwMDAwNDAwLCBsZW4gNTEyDQo+IFvCoMKgIDIzLjM0MDUzOV0gc3BpLW5vciBzcGktUFJQMDAw
MTowMDogZnJvbSAweDAwMDAwNjAwLCBsZW4gNTEyDQo+IFvCoMKgIDIzLjM0MDE6MDA6IGZyb20g
MHgwMDAwMGMwMCwgbGVuIDUxMg0KPiBbwqDCoCAyMy4zNDA5OTldIHNwaS1ub3Igc3BpLVBSUDAw
MDE6MDA6IGZyb20gMHgwMDAwMGUwMCwgbGVuIDUxMg0KPiBbwqDCoCAyMy4zNDExMzldIHNwaS1u
b3Igc3BpLVBSUDAwMDE6MDA6IGZyb20gMHgwMDAwMTAwMCwgbGVuIDUxMg0KPiBbwqDCoCAyMy4z
NDEyNTddIHNwaS1ub3Igc3BpLVBSUDAwMDE6MDA6IGZyb20gMHgwMDAwMTIwMCwgbGVuIDUxMg0K
PiANCj4gW3NuaXBdDQo+IA0KPiBbwqDCoCAyMy40MTAyNzBdIHNwaS1ub3Igc3BpLVBSUDAwMDE6
MDA6IGZyb20gMHgwMDAzY2UwMCwgbGVuIDUxMg0KPiBbwqDCoCAyMy40MTAzODZdIHNwaS1ub3Ig
c3BpLVBSUDAwMDE6MDA6IGZyb20gMHgwMDAzZDAwMCwgbGVuIDUxMg0KPiBbwqDCoCAyMy40MTA1
MDJdIHNwaS1ub3Igc3BpLVBSUDAwMDE6MDA6IGZyb20gMHgwMDAzZDIwMCwgbGVuIDUxMg0KPiBb
wqDCoCAyMy40MTA2MTddIHNwaS1ub3Igc3BpLVBSUDAwMDE6MDA6IGZyb20gMHgwMDAzZDQwMCwg
bGVuIDUxMg0KPiBbwqDCoCAyMy40MTA3MzNdIHNwaS1ub3Igc3BpLVBSUDAwMDE6MDA6IGZyb20g
MHgwMDAzZDYwMCwgbGVuIDUxMg0KPiBbwqDCoCAyMy40MTA4NDldIHNwaS1ub3Igc3BpLVBSUDAw
MDE6MDA6IGZyb20gMHgwMDAzZDgwMCwgbGVuIDUxMg0KPiBbwqDCoCAyMy40MTA5NjRdIHNwaS1u
b3Igc3BpLVBSUDAwMDE6MDA6IGZyb20gMHgwMDAzZGEwMCwgbGVuIDUxMg0KPiBbwqDCoCAyMy40
MTEwODBdIHNwaS1ub3Igc3BpLVBSUDAwMDE6MDA6IGZyb20gMHgwMDAzZGMwMCwgbGVuIDUxMg0K
PiBbwqDCoCAyMy40MTExOTZdIHNwaS1ub3Igc3BpLVBSUDAwMDE6MDA6IGZyb20gMHgwMDAzZGUw
MCwgbGVuIDUxMg0KPiBbwqDCoCAyMy40MTEzMTJdIHNwaS1ub3Igc3BpLVBSUDAwMDE6MDA6IGZy
b20gMHgwMDAzZTAwMCwgbGVuIDUxMg0KPiBbwqDCoCAyMy40MTE0MjhdIHNwaS1ub3Igc3BpLVBS
UDAwMDE6MDA6IGZyb20gMHgwMDAzZTIwMCwgbGVuIDUxMg0KPiBbwqDCoCAyMy40MTE1NDNdIHNw
aS1ub3Igc3BpLVBSUDAwMDE6MDA6IGZyb20gMHgwMDAzZTQwMCwgbGVuIDUxMg0KPiBbwqDCoCAy
My40MTE2NTldIHNwaS1ub3Igc3BpLVBSUDAwMDE6MDA6IGZyb20gMHgwMDAzZTYwMCwgbGVuIDUx
Mg0KPiBbwqDCoCAyMy40MTE3NzVdIHNwaS1ub3Igc3BpLVBSUDAwMDE6MDA6IGZyb20gMHgwMDAz
ZTgwMCwgbGVuIDUxMg0KPiBbwqDCoCAyMy40MTE4OTFdIHNwaS1ub3Igc3BpLVBSUDAwMDE6MDA6
IGZyb20gMHgwMDAzZWEwMCwgbGVuIDUxMg0KPiBbwqDCoCAyMy40MTIwMDddIHNwaS1ub3Igc3Bp
LVBSUDAwMDE6MDA6IGZyb20gMHgwMDAzZWMwMCwgbGVuIDUxMg0KPiBbwqDCoCAyMy40MTIxMjJd
IHNwaS1ub3Igc3BpLVBSUDAwMDE6MDA6IGZyb20gMHgwMDAzZWUwMCwgbGVuIDUxMg0KPiBbwqDC
oCAyMy40MTIyMzldIHNwaS1ub3Igc3BpLVBSUDAwMDE6MDA6IGZyb20gMHgwMDAzZjAwMCwgbGVu
IDUxMg0KPiBbwqDCoCAyMy40MTIzNTRdIHNwaS1ub3Igc3BpLVBSUDAwMDE6MDA6IGZyb20gMHgw
MDAzZjIwMCwgbGVuIDUxMg0KPiBbwqDCoCAyMy40MTI0NzBdIHNwaS1ub3Igc3BpLVBSUDAwMDE6
MDA6IGZyb20gMHgwMDAzZjQwMCwgbGVuIDUxMg0KPiBbwqDCoCAyMy40MTI1ODddIHNwaS1ub3Ig
c3BpLVBSUDAwMDE6MDA6IGZyb20gMHgwMDAzZjYwMCwgbGVuIDUxMg0KPiBbwqDCoCAyMy40MTI3
MDRdIHNwaS1ub3Igc3BpLVBSUDAwMDE6MDA6IGZyb20gMHgwMDAzZjgwMCwgbGVuIDUxMg0KPiBb
wqDCoCAyMy40MTI4MTldIHNwaS1ub3Igc3BpLVBSUDAwMDE6MDA6IGZyb20gMHgwMDAzZmEwMCwg
bGVuIDUxMg0KPiBbwqDCoCAyMy40MTI5MzVdIHNwaS1ub3Igc3BpLVBSUDAwIDUxMg0KPiBbwqDC
oCAyMy40MTMyNTddIHNwaS1ub3Igc3BpLVBSUDAwMDE6MDA6IGZyb20gMHgwMDA0MDAwMCwgbGVu
IDUxMg0KPiBbwqDCoCAyMy40MTMzNzVdIHNwaS1ub3Igc3BpLVBSUDAwMDE6MDA6IGZyb20gMHgw
MDA0MDIwMCwgbGVuIDUxMg0KPiBbwqDCoCAyMy40MTM0OTBdIHNwaS1ub3Igc3BpLVBSUDAwMDE6
MDA6IGZyb20gMHgwMDA0MDQwMCwgbGVuIDUxMg0KPiBbwqDCoCAyMy40MTM2MDVdIHNwaS1ub3Ig
c3BpLVBSUDAwMDE6MDA6IGZyb20gMHgwMDA0MDYwMCwgbGVuIDUxMg0KPiBbwqDCoCAyMy40MTM3
MjBdIHNwaS1ub3Igc3BpLVBSUDAwMDE6MDA6IGZyb20gMHgwMDA0MDgwMCwgbGVuIDUxMg0KPiBb
wqDCoCAyMy40MTM4MzVdIHNwaS1ub3Igc3BpLVBSUDAwMDE6MDA6IGZyb20gMHgwMDA0MGEwMCwg
bGVuIDUxMg0KPiBbwqDCoCAyMy40MTM5NTBdIHNwaS1ub3Igc3BpLVBSUDAwMDE6MDA6IGZyb20g
MHgwMDA0MGMwMCwgbGVuIDUxMg0KPiBbwqDCoCAyMy40MTQwNjVdIHNwaS1ub3Igc3BpLVBSUDAw
MDE6MDA6IGZyb20gMHgwMDA0MGUwMCwgbGVuIDUxMg0KPiBbwqDCoCAyMy40MTQyMTBdIHNwaS1u
b3Igc3BpLVBSUDAwMDE6MDA6IGZyb20gMHgwMDIwMDAwMCwgbGVuIDUxMg0KPiBbwqDCoCAyMy40
MTQzMjhdIHNwaS1ub3Igc3BpLVBSUDAwMDE6MDA6IGZyb20gMHgwMDIwMDIwMCwgbGVuIDUxMg0K
PiBbwqDCoCAyMy40MTQ0NDRdIHNwaS1ub3Igc3BpLVBSUDAwMDE6MDA6IGZyb20gMHgwMDIwMDQw
MCwgbGVuIDUxMg0KPiBbwqDCoCAyMy40MTQ1NjBdIHNwaS1ub3Igc3BpLVBSUDAwMDE6MDA6IGZy
b20gMHgwMDIwMDYwMCwgbGVuIDUxMg0KPiBbwqDCoCAyMy40MTQ2NzZdIHNwaS1ub3Igc3BpLVBS
UDAwMDE6MDA6IGZyb20gMHgwMDIwMDgwMCwgbGVuIDUxMg0KPiBbwqDCoCAyMy40MTQ3OTJdIHNw
aS1ub3Igc3BpLVBSUDAwMDE6MDA6IGZyb20gMHgwMDIwMGEwMCwgbGVuIDUxMg0KPiBbwqDCoCAy
My40MTQ5MDhdIHNwaS1ub3Igc3BpLVBSUDAwMDE6MDA6IGZyb20gMHgwMDIwMGMwMCwgbGVuIDUx
Mg0KPiBbwqDCoCAyMy40MTUwMjRdIHNwaS1ub3Igc3BpLVBSUDAwMDE6MDA6IGZyb20gMHgwMDIw
MGUwMCwgbGVuIDUxMg0KPiBqb2huQHVidW50dTp+JA0KPiBqb2huQHVidW50dTp+JA0KPiBqb2hu
QHVidW50dTp+JA0KPiBqb2huQHVidW50dTp+JCBzdWRvIHN1DQo+IFtzdWRvXSBwYXNzd29yZCBm
b3Igam9objoNCj4gcm9vdEB1YnVudHU6L2hvbWUvam9obiMgZmxhc2hfbG9jayAtaSAvZGV2L210
ZDANCj4gRGV2aWNlOiAvZGV2L210ZDANCj4gU3RhcnQ6IDANCj4gTGVuOiAweDEwMDAwMDANCj4g
TG9jayBzdGF0dXM6IHVubG9ja2VkDQo+IFJldHVybiBjb2RlOiAwDQo+IHJvb3RAdWJ1bnR1Oi9o
b21lL2pvaG4jIGZsYXNoX2xvY2sgLWwgL2Rldi9tdGQwIDB4ODAwMDAwIDB4ODAwMDAwDQo+IHJv
b3RAdWJ1bnR1Oi9ob21lL2pvaG4jIGZsYXNoX2xvY2sgLWkgL2Rldi9tdGQwDQo+IERldmljZTog
L2Rldi9tdGQwDQo+IFN0YXJ0OiAwDQo+IExlbjogMHgxMDAwMDAwDQo+IExvY2sgc3RhdHVzOiB1
bmxvY2tlZA0KPiBSZXR1cm4gY29kZTogMA0KPiByb290QHVidW50dTovaG9tZS9qb2huIw0KPiAN
Cg0KdGhpcyBzaG91bGQgcmV2ZWFsIHdoYXQgaGFwcGVucyBhZnRlciBhIGxvY2ssIHdpdGggdGhl
IDE2IGJpdCBzdGF0dXMgcmVnIHdyaXRlOg0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tdGQvc3Bp
LW5vci9zcGktbm9yLmMgYi9kcml2ZXJzL210ZC9zcGktbm9yL3NwaS1ub3IuYw0KaW5kZXggZjRh
ZmUxMjNlOWRjLi5mMTQ5MGM3YjVjYjkgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL210ZC9zcGktbm9y
L3NwaS1ub3IuYw0KKysrIGIvZHJpdmVycy9tdGQvc3BpLW5vci9zcGktbm9yLmMNCkBAIC0xMDMz
LDEwICsxMDMzLDE5IEBAIHN0YXRpYyBpbnQgc3BpX25vcl93cml0ZV8xNmJpdF9zcl9hbmRfY2hl
Y2soc3RydWN0IHNwaV9ub3IgKm5vciwgdTggc3IxKQ0KIA0KICAgICAgICBzcl9jclswXSA9IHNy
MTsNCiANCisgICAgICAgZGV2X2Vycihub3ItPmRldiwgImJlZm9yZSB3cml0ZTogc3JfY3JbMF0g
PSAlMDJ4LCBzcl9jclsxXSA9ICUwMnhcbiIsDQorICAgICAgICAgICAgICAgc3JfY3JbMF0sIHNy
X2NyWzFdKTsNCisNCiAgICAgICAgcmV0ID0gc3BpX25vcl93cml0ZV9zcihub3IsIHNyX2NyLCAy
KTsNCiAgICAgICAgaWYgKHJldCkNCiAgICAgICAgICAgICAgICByZXR1cm4gcmV0Ow0KIA0KKyAg
ICAgICByZXQgPSBzcGlfbm9yX3JlYWRfc3Iobm9yLCAmc3JfY3JbMF0pOw0KKyAgICAgICBpZiAo
cmV0KQ0KKyAgICAgICAgICAgICAgIHJldHVybiByZXQ7DQorDQorICAgICAgIGRldl9lcnIobm9y
LT5kZXYsICJyZWFkIGJhY2sgc3IxOiBzcl9jclswXSA9ICUwMnhcbiIsIHNyX2NyWzBdKTsNCisN
CiAgICAgICAgaWYgKG5vci0+ZmxhZ3MgJiBTTk9SX0ZfTk9fUkVBRF9DUikNCiAgICAgICAgICAg
ICAgICByZXR1cm4gMDsNCiANCkBAIC0xMDQ2LDYgKzEwNTUsOCBAQCBzdGF0aWMgaW50IHNwaV9u
b3Jfd3JpdGVfMTZiaXRfc3JfYW5kX2NoZWNrKHN0cnVjdCBzcGlfbm9yICpub3IsIHU4IHNyMSkN
CiAgICAgICAgaWYgKHJldCkNCiAgICAgICAgICAgICAgICByZXR1cm4gcmV0Ow0KIA0KKyAgICAg
ICBkZXZfZXJyKG5vci0+ZGV2LCAicmVhZCBiYWNrIHNyMjogc3JfY3JbMV0gPSAlMDJ4XG4iLCBz
cl9jclsxXSk7DQorDQogICAgICAgIGlmIChjcl93cml0dGVuICE9IHNyX2NyWzFdKSB7DQogICAg
ICAgICAgICAgICAgZGV2X2RiZyhub3ItPmRldiwgIkNSOiByZWFkIGJhY2sgdGVzdCBmYWlsZWRc
biIpOw0KICAgICAgICAgICAgICAgIHJldHVybiAtRUlPOw0KDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24g
bWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtbXRkLwo=
