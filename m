Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA20511843
	for <lists+linux-mtd@lfdr.de>; Thu,  2 May 2019 13:40:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UDknQbJL8/Z6op09LvrJAYMArE/uAXdnxsJfUZGuLsw=; b=KKDH4VCdpXRqVc
	HiNepQEIXHlZgAYYugeYmr20uDDwr4AbQt8MouBYWFPU1dAq3cLcsMyMcomU4LJSxgz7I7lfGnbFs
	i3xIB8RS4D7XbRKGRM2Hrf/K+nzEkwuT6+96wE+uOXEs6azYForAjslemV0xeUKBDuRB2o/Hr8TTL
	MHHdwQDWqy8rRnOjCVAj2bpvsBzhBtnQ2QRf4EKd8kI1nYljLKcHtkN93vlVbKNFkbFIlSpmfeQ4z
	88Fcp/XDZdq4IKvFjRRucCSqo8LNZFFHU/TmSswAkUM4OEL9t5xXYZ9NshLCQ1T1kpu2bvEEYk86D
	hOsf9oIA+Y0ueYWFSt6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMA51-0006eU-Qd; Thu, 02 May 2019 11:40:47 +0000
Received: from mail-eopbgr760054.outbound.protection.outlook.com
 ([40.107.76.54] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMA4t-0006dv-81
 for linux-mtd@lists.infradead.org; Thu, 02 May 2019 11:40:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=micron.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=df0YGuWOtbC5OpYIBFZfz+OcA6MnmYo0N0c4Su3GGBU=;
 b=OqqNfQBdGf5JLO5hP9HyQWbjJ5YLnRSnWQEbTfcJArK6lDrwbhJ0PMxOcgpxjOKl4Gi7Ph+HpmNlP+MVQzvqb8vn8QGKkTHspTEgqGWM4CMJuSpSWMsW6ShINYClMi/p6mb/dTOiNCjPohTd1Ke3uvvef3RCGj+oIL/08UpULuA=
Received: from MN2PR08MB5951.namprd08.prod.outlook.com (20.179.85.220) by
 MN2PR08MB5758.namprd08.prod.outlook.com (20.179.87.92) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Thu, 2 May 2019 11:40:36 +0000
Received: from MN2PR08MB5951.namprd08.prod.outlook.com
 ([fe80::b45d:52ac:9ad5:9549]) by MN2PR08MB5951.namprd08.prod.outlook.com
 ([fe80::b45d:52ac:9ad5:9549%4]) with mapi id 15.20.1835.018; Thu, 2 May 2019
 11:40:36 +0000
From: "Shivamurthy Shastri (sshivamurthy)" <sshivamurthy@micron.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: RE: [EXT] Re: [PATCH 4/4] mtd: spinand: micron: Support for new
 Micron SPI NAND flashes
Thread-Topic: [EXT] Re: [PATCH 4/4] mtd: spinand: micron: Support for new
 Micron SPI NAND flashes
Thread-Index: AdTjwXc8rC1wT/iQTKuIUBd0ae2YRgbaPYuAAGw9vlA=
Date: Thu, 2 May 2019 11:40:36 +0000
Message-ID: <MN2PR08MB59519D48DAA2238FE0F56DBFB8340@MN2PR08MB5951.namprd08.prod.outlook.com>
References: <MN2PR08MB5951DEE6417F39426483CF45B85F0@MN2PR08MB5951.namprd08.prod.outlook.com>
 <20190430095759.07a3ca6d@xps13>
In-Reply-To: <20190430095759.07a3ca6d@xps13>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=sshivamurthy@micron.com; 
x-originating-ip: [165.225.81.56]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3272d7d0-189a-442c-a0a3-08d6cef2fe6b
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:MN2PR08MB5758; 
x-ms-traffictypediagnostic: MN2PR08MB5758:|MN2PR08MB5758:
x-microsoft-antispam-prvs: <MN2PR08MB575821BF7827E7D01E199C89B8340@MN2PR08MB5758.namprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0025434D2D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(346002)(376002)(396003)(366004)(199004)(189003)(55016002)(186003)(6506007)(4326008)(26005)(55236004)(102836004)(33656002)(66574012)(74316002)(25786009)(4744005)(229853002)(316002)(6436002)(8676002)(3846002)(73956011)(64756008)(66446008)(8936002)(66946007)(66476007)(66556008)(76116006)(81156014)(81166006)(6116002)(5660300002)(6916009)(2906002)(86362001)(6246003)(486006)(9686003)(446003)(11346002)(52536014)(476003)(71190400001)(71200400001)(478600001)(76176011)(7696005)(7736002)(54906003)(256004)(14454004)(99286004)(68736007)(53936002)(66066001)(305945005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR08MB5758;
 H:MN2PR08MB5951.namprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: micron.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: WRph438bKes2ETb/dkvOje+5R1J4AWG3FfZpHobp7U/2yHXTHJ7+zgbgZStNstBKvP3YdKgbcMV9bcmIBvk4EoZqfX/8ho/eUL8n3F48/Q2jJOmiRHGm8QpxfFAdb8+5eHQb1w40vUYquM3aRTZH8K5CHgpLJC0Pm7POLVKS87T3J2s5W4M6aMkQcYDz66LIRANQuxqJ4AsWvSGEIIg6VGfLLDB5rVmqV33TT2r0H0n9cfc3XkJQgz+1FH+R2ZvqINqID/L4qX7yQtytEkhLRn0FQmH7hvmn2wCQhtDZEbZz3x1RdW6mPFOYjnX+7owik1rtGc8Rb2/vudwBM95tFpukh+d+qf7/eUF8wEW4f4wYGdVgHWyp97AWitC8ekNGEODWib33qcyG9XtxV8wkumGBv9MAJLFkGDccgZFHOQg=
MIME-Version: 1.0
X-OriginatorOrg: micron.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3272d7d0-189a-442c-a0a3-08d6cef2fe6b
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2019 11:40:36.3015 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f38a5ecd-2813-4862-b11b-ac1d563c806f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR08MB5758
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_044039_287466_B348203B 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.76.54 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [165.225.81.56 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: Boris Brezillon <bbrezillon@kernel.org>,
 Richard Weinberger <richard@nod.at>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 Marek Vasut <marek.vasut@gmail.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgTWlxdWVsLA0KDQo+IA0KPiBIaSBTaGl2YW11cnRoeSwNCj4gDQo+ICJTaGl2YW11cnRoeSBT
aGFzdHJpIChzc2hpdmFtdXJ0aHkpIiA8c3NoaXZhbXVydGh5QG1pY3Jvbi5jb20+IHdyb3RlDQo+
IG9uDQo+IFR1ZSwgMjYgTWFyIDIwMTkgMTA6NTI6MDQgKzAwMDA6DQo+IA0KPiA+IERyaXZlciBp
cyByZWRlc2lnbmVkIHVzaW5nIHBhcmFtZXRlciBwYWdlIHRvIHN1cHBvcnQgTWljcm9uIFNQSSBO
QU5EDQo+ID4gZmxhc2hlcy4NCj4gPg0KPiA+IFN1cHBvcnQgZm9yIHNlbGVjdGluZyBkaWUgaXMg
ZW5hYmxlZCBmb3IgbXVsdGktZGllIGZsYXNoZXMuDQo+ID4gVHVybiBPT0IgbGF5b3V0IGdlbmVy
aWMuDQo+ID4NCj4gPiBGaXh1cCBzb21lIG9mIHRoZSBwYXJhbWV0ZXIgcGFnZSBkYXRhIGFzIHBl
ciBNaWNyb24gZGF0YXNoZWV0Lg0KPiA+DQo+IA0KPiBTYW1lIHJlbWFyazogSSB0aGluayB0aGlz
IHBhdGNoIHdvdWxkIGJldHRlciBiZSBzcGxpdC4NCg0KSSB3aWxsIHNlbmQgdGhlIG5ldyB2ZXJz
aW9uLg0KDQo+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IFNoaXZhbXVydGh5IFNoYXN0cmkgPHNzaGl2
YW11cnRoeUBtaWNyb24uY29tPg0KPiANCj4gVGhhbmtzLA0KPiBNaXF1w6hsDQoNClRoYW5rcywN
ClNoaXZhbXVydGh5DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
