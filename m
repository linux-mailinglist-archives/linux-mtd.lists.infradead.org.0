Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEFE61183E
	for <lists+linux-mtd@lfdr.de>; Thu,  2 May 2019 13:37:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d74Rpc1Fg8KHckSrijzpJzGBC5SbPzxEWsEkyKCPAcY=; b=aAaUuw/irxK/iF
	COT3p2v11/1HhlghJMKgn99P6vcYj2+SBTdVXGPQ907WzXjODmZTQihlO/I/l7yWwfwLlAnrvVVvv
	WNIc5jgkqWy84na2Fiqc+NR+OsvxUEX0MjMbg5LjoC9tr7KaOvVrjHwAvCrjKqGkk0WQOH5MBFHjY
	b7o/Yq3iY7fddrHRwSIBFaaSDXRbCi+P+NQdWeJpjYKeXtk+90tYqdFiIuREmmIAIH6TCoApwbbsj
	deMLK7kkwsF9NR/tRk3FfG/RTBbuBzx9c/AX+bDurEZ/9yILg76BuLpu8Y9CDzmP1ImagLBGjfdva
	H0CC6oFQdAjCRRdw3L5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMA1i-00058l-27; Thu, 02 May 2019 11:37:22 +0000
Received: from mail-eopbgr820050.outbound.protection.outlook.com
 ([40.107.82.50] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMA1Z-00058M-QI
 for linux-mtd@lists.infradead.org; Thu, 02 May 2019 11:37:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=micron.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DdVVk6cNJluLFkPV4mJ6NFeJY8gSs3wk2l8lMjgoaMo=;
 b=XzJrKiNHcpGEG/InzhVBJSXNkZiticeQAR9ZGrXEB3SPne7cIdSHjjuEU9Yfeu1oiMvKt5NtUXSQH6878z6jwL/lCSn08bHMQLFDXXgWPwk9dK+ZR9OvbTDkWkrXlnhQRsgpAsYCwEbxtchn4Pq+Ogohz7Rs7NN6RyCWwLDBHns=
Received: from MN2PR08MB5951.namprd08.prod.outlook.com (20.179.85.220) by
 MN2PR08MB5886.namprd08.prod.outlook.com (20.179.99.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.13; Thu, 2 May 2019 11:37:10 +0000
Received: from MN2PR08MB5951.namprd08.prod.outlook.com
 ([fe80::b45d:52ac:9ad5:9549]) by MN2PR08MB5951.namprd08.prod.outlook.com
 ([fe80::b45d:52ac:9ad5:9549%4]) with mapi id 15.20.1835.018; Thu, 2 May 2019
 11:37:10 +0000
From: "Shivamurthy Shastri (sshivamurthy)" <sshivamurthy@micron.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: RE: [EXT] Re: [PATCH 3/4] mtd: spinand: Enabled support to detect
 parameter page
Thread-Topic: [EXT] Re: [PATCH 3/4] mtd: spinand: Enabled support to detect
 parameter page
Thread-Index: AdTjwSAFDW7WB7gARZuMWrsA2XWYYgbaOd4AAGX3qdA=
Date: Thu, 2 May 2019 11:37:10 +0000
Message-ID: <MN2PR08MB5951A622B36705BC26CE36E2B8340@MN2PR08MB5951.namprd08.prod.outlook.com>
References: <MN2PR08MB5951E8D99AA1FBD972131388B85F0@MN2PR08MB5951.namprd08.prod.outlook.com>
 <20190430095508.706fa125@xps13>
In-Reply-To: <20190430095508.706fa125@xps13>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=sshivamurthy@micron.com; 
x-originating-ip: [165.225.81.56]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1aa809f5-52b3-456f-1bbc-08d6cef283a4
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:MN2PR08MB5886; 
x-ms-traffictypediagnostic: MN2PR08MB5886:|MN2PR08MB5886:
x-microsoft-antispam-prvs: <MN2PR08MB58863920867FC9A81D336510B8340@MN2PR08MB5886.namprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0025434D2D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(136003)(366004)(39860400002)(396003)(376002)(199004)(189003)(66066001)(11346002)(76176011)(66446008)(64756008)(71190400001)(66476007)(71200400001)(486006)(102836004)(6916009)(66946007)(446003)(476003)(55016002)(186003)(6436002)(66556008)(6506007)(53936002)(14454004)(81166006)(229853002)(9686003)(52536014)(76116006)(6246003)(4326008)(55236004)(8676002)(478600001)(86362001)(8936002)(81156014)(25786009)(7696005)(2906002)(316002)(68736007)(73956011)(26005)(33656002)(3846002)(6116002)(305945005)(74316002)(7736002)(256004)(54906003)(99286004)(5660300002)(14444005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR08MB5886;
 H:MN2PR08MB5951.namprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: micron.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: bj4afeQZXVaGjB+AeLGhp+czK69A0PwzZaDeD3LvKLyfKu9kHuR94yCMg8OfY59dy4ecD9JPQZYv8dye+N6DnK5N6CIQKKIZ3/VZfZ8clB2pnqu2G40gCkKMxPS6D+aXAnerdsOBNnkBR+aHCKDjDz5XmlL1KuvWngfCQZ1sUnpu1DJR1aXv4710NWWuKSWqEGLySIMiCmNd+Dtgf9DBLkT4JcM36E1g1ookcrl1lqhv9z3GoR15B/q4aIjEcBB2UH1wqyDg3OGs+7p79/nbuELoU00m35jlwOh0RsiEwiUQqOPpsBZd9zxa1tvRox7/nyMBTPW0Q2cVM7plO4nd1BXfrmH+WjKKeNT9VZE7zEjuUAdKNWwTqk0vd0SeecHM7k+GOugGXv66JyVA41/QarjiFPpq3XlADdNm23/H7Es=
MIME-Version: 1.0
X-OriginatorOrg: micron.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1aa809f5-52b3-456f-1bbc-08d6cef283a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2019 11:37:10.3580 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f38a5ecd-2813-4862-b11b-ac1d563c806f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR08MB5886
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_043713_968117_64C80546 
X-CRM114-Status: GOOD (  30.33  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.82.50 listed in list.dnswl.org]
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
 Marek Vasut <marek.vasut@gmail.com>,
 Frieder Schrempf <frieder.schrempf@exceet.de>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgTWlxdWVsLA0KDQo+IA0KPiBIaSBTaGl2YW11cnRoeSwNCj4gDQo+ICJTaGl2YW11cnRoeSBT
aGFzdHJpIChzc2hpdmFtdXJ0aHkpIiA8c3NoaXZhbXVydGh5QG1pY3Jvbi5jb20+IHdyb3RlDQo+
IG9uDQo+IFR1ZSwgMjYgTWFyIDIwMTkgMTA6NTI6MDAgKzAwMDA6DQo+IA0KPiA+IFNvbWUgb2Yg
dGhlIFNQSSBOQU5EIGRldmljZXMgaGFzIHBhcmFtZXRlciBwYWdlIHdoaWNoIGlzIHNpbWlsYXIg
dG8gT05GSQ0KPiA+IHRhYmxlLg0KPiA+DQo+ID4gQnV0LCBpdCBtYXkgbm90IGJlIHNlbGYgc3Vm
ZmljaWVudCB0byBwcm9wYWdhdGUgYWxsIHRoZSByZXF1aXJlZA0KPiA+IHBhcmFtZXRlcnMuIEZp
eHVwIGZ1bmN0aW9uIGhhcyBiZWVuIGFkZGVkIGluIHN0cnVjdCBtYW51ZmFjdHVyZXIgdG8NCj4g
PiBhY2NvbW1vZGF0ZSB0aGlzLg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogU2hpdmFtdXJ0aHkg
U2hhc3RyaSA8c3NoaXZhbXVydGh5QG1pY3Jvbi5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMv
bXRkL25hbmQvc3BpL2NvcmUuYyB8IDExMw0KPiArKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKy0NCj4gPiAgaW5jbHVkZS9saW51eC9tdGQvc3BpbmFuZC5oIHwgICA1ICsrDQo+ID4g
IDIgZmlsZXMgY2hhbmdlZCwgMTE3IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gPg0K
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL210ZC9uYW5kL3NwaS9jb3JlLmMgYi9kcml2ZXJzL210
ZC9uYW5kL3NwaS9jb3JlLmMNCj4gPiBpbmRleCA5ODVhZDUyY2RhYTcuLjQwODgyYTFkMmJjMSAx
MDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL210ZC9uYW5kL3NwaS9jb3JlLmMNCj4gPiArKysgYi9k
cml2ZXJzL210ZC9uYW5kL3NwaS9jb3JlLmMNCj4gPiBAQCAtNTc0LDYgKzU3NCwxMDggQEAgc3Rh
dGljIGludCBzcGluYW5kX2xvY2tfYmxvY2soc3RydWN0DQo+IHNwaW5hbmRfZGV2aWNlICpzcGlu
YW5kLCB1OCBsb2NrKQ0KPiA+ICAJcmV0dXJuIHNwaW5hbmRfd3JpdGVfcmVnX29wKHNwaW5hbmQs
IFJFR19CTE9DS19MT0NLLCBsb2NrKTsNCj4gPiAgfQ0KPiA+DQo+ID4gKy8qKg0KPiA+ICsgKiBz
cGluYW5kX3JlYWRfcGFyYW1fcGFnZV9vcCAtIFJlYWQgcGFyYW1ldGVyIHBhZ2Ugb3BlcmF0aW9u
DQo+ID4gKyAqIEBzcGluYW5kOiB0aGUgc3BpbmFuZCBkZXZpY2UNCj4gPiArICogQHBhZ2U6IHBh
Z2UgbnVtYmVyIHdoZXJlIHBhcmFtZXRlciBwYWdlIHRhYmxlcyBjYW4gYmUgZm91bmQNCj4gPiAr
ICogQHBhcmFtZXRlcnM6IGJ1ZmZlciB1c2VkIHRvIHN0b3JlIHRoZSBwYXJhbWV0ZXIgcGFnZQ0K
PiANCj4gRG9lcyBub3QgbWF0Y2ggdGhlIHByb3RvdHlwZQ0KDQpJIHdpbGwgZml4IHRoaXMgaW4g
bmV4dCB2ZXJzaW9uLg0KDQo+IA0KPiA+ICsgKiBAbGVuOiBsZW5ndGggb2YgdGhlIGJ1ZmZlcg0K
PiA+ICsgKg0KPiA+ICsgKiBSZWFkIHBhcmFtZXRlciBwYWdlDQo+ID4gKyAqDQo+ID4gKyAqIFJl
dHVybnMgMCBvbiBzdWNjZXNzLCBhIG5lZ2F0aXZlIGVycm9yIGNvZGUgb3RoZXJ3aXNlLg0KPiA+
ICsgKi8NCj4gPiArc3RhdGljIGludCBzcGluYW5kX3BhcmFtZXRlcl9wYWdlX3JlYWQoc3RydWN0
IG5hbmRfZGV2aWNlICpiYXNlLA0KPiANCj4gUGxlYXNlIHVzZSBhIHNwaW5hbmQgc3RydWN0dXJl
IGFzIHBhcmFtZXRlciwgeW91IGRvbid0IG5lZWQgYQ0KPiBuYW5kX2RldmljZSBoZXJlIChzYW1l
IGZvciBvdGhlciBzcGluYW5kIGZ1bmN0aW9ucykuDQoNClRoaXMgZnVuY3Rpb24gaXMgaGVscGVy
IGZ1bmN0aW9uIGZvciBnZW5lcmljIE9ORkkgbGF5ZXIuDQpGcm9tIGdlbmVyaWMgT05GSSBsYXll
ciwgSSBjYW4gZ2V0IG9ubHkgbmFuZF9kZXZpY2UuDQoNCj4gDQo+ID4gKwkJCQkgICAgICAgdTgg
cGFnZSwgdm9pZCAqYnVmLCB1bnNpZ25lZCBpbnQgbGVuKQ0KPiA+ICt7DQo+ID4gKwlzdHJ1Y3Qg
c3BpbmFuZF9kZXZpY2UgKnNwaW5hbmQgPSBuYW5kX3RvX3NwaW5hbmQoYmFzZSk7DQo+ID4gKwlz
dHJ1Y3Qgc3BpX21lbV9vcCBwcmVhZF9vcCA9IFNQSU5BTkRfUEFHRV9SRUFEX09QKHBhZ2UpOw0K
PiA+ICsJc3RydWN0IHNwaV9tZW1fb3AgcHJlYWRfY2FjaGVfb3AgPQ0KPiA+ICsNCj4gCVNQSU5B
TkRfUEFHRV9SRUFEX0ZST01fQ0FDSEVfT1AoZmFsc2UsDQo+ID4gKwkJCQkJCQkJMCwNCj4gPiAr
CQkJCQkJCQkxLA0KPiA+ICsJCQkJCQkJCWJ1ZiwNCj4gPiArCQkJCQkJCQlsZW4pOw0KPiA+ICsJ
dTggZmVhdHVyZTsNCj4gPiArCXU4IHN0YXR1czsNCj4gPiArCWludCByZXQ7DQo+ID4gKw0KPiA+
ICsJaWYgKGxlbiAmJiAhYnVmKQ0KPiA+ICsJCXJldHVybiAtRUlOVkFMOw0KPiA+ICsNCj4gPiAr
CXJldCA9IHNwaW5hbmRfcmVhZF9yZWdfb3Aoc3BpbmFuZCwgUkVHX0NGRywNCj4gPiArCQkJCSAg
JmZlYXR1cmUpOw0KPiA+ICsJaWYgKHJldCkNCj4gPiArCQlyZXR1cm4gcmV0Ow0KPiA+ICsNCj4g
PiArCS8qIENGR19PVFBfRU5BQkxFIGlzIHVzZWQgdG8gZW5hYmxlIHBhcmFtZXRlciBwYWdlIGFj
Y2VzcyAqLw0KPiA+ICsJZmVhdHVyZSB8PSBDRkdfT1RQX0VOQUJMRTsNCj4gPiArDQo+ID4gKwlz
cGluYW5kX3dyaXRlX3JlZ19vcChzcGluYW5kLCBSRUdfQ0ZHLCBmZWF0dXJlKTsNCj4gPiArDQo+
ID4gKwlyZXQgPSBzcGlfbWVtX2V4ZWNfb3Aoc3BpbmFuZC0+c3BpbWVtLCAmcHJlYWRfb3ApOw0K
PiA+ICsJaWYgKHJldCkNCj4gPiArCQlyZXR1cm4gcmV0Ow0KPiA+ICsNCj4gPiArCXJldCA9IHNw
aW5hbmRfd2FpdChzcGluYW5kLCAmc3RhdHVzKTsNCj4gPiArCWlmIChyZXQgPCAwKQ0KPiA+ICsJ
CXJldHVybiByZXQ7DQo+ID4gKw0KPiA+ICsJcmV0ID0gc3BpX21lbV9leGVjX29wKHNwaW5hbmQt
PnNwaW1lbSwgJnByZWFkX2NhY2hlX29wKTsNCj4gPiArCWlmIChyZXQpDQo+ID4gKwkJcmV0dXJu
IHJldDsNCj4gPiArDQo+ID4gKwlyZXQgPSBzcGluYW5kX3JlYWRfcmVnX29wKHNwaW5hbmQsIFJF
R19DRkcsDQo+ID4gKwkJCQkgICZmZWF0dXJlKTsNCj4gPiArCWlmIChyZXQpDQo+ID4gKwkJcmV0
dXJuIHJldDsNCj4gPiArDQo+ID4gKwlmZWF0dXJlICY9IH5DRkdfT1RQX0VOQUJMRTsNCj4gPiAr
DQo+ID4gKwlzcGluYW5kX3dyaXRlX3JlZ19vcChzcGluYW5kLCBSRUdfQ0ZHLCBmZWF0dXJlKTsN
Cj4gPiArDQo+ID4gKwlyZXR1cm4gMTsNCj4gDQo+IFNob3VsZCByZXR1cm4gMA0KDQpJIHdpbGwg
Zml4IHRoaXMgaW4gbmV4dCB2ZXJzaW9uLg0KDQo+IA0KPiA+ICt9DQo+ID4gKw0KPiA+ICtzdGF0
aWMgaW50IGNoZWNrX3ZlcnNpb24oc3RydWN0IG5hbmRfZGV2aWNlICpiYXNlLA0KPiA+ICsJCQkg
c3RydWN0IG5hbmRfb25maV9wYXJhbXMgKnAsIGludCAqb25maV92ZXJzaW9uKQ0KPiA+ICt7DQo+
ID4gKwkvKioNCj4gDQo+IEkgZG9uJ3QgdGhpbmsgeW91IG5lZWQgdGhlc2UgLyoqIGhlcmUsIGp1
c3QgdXNlIC8qDQoNCkkgd2lsbCBmaXggdGhpcyBpbiBuZXh0IHZlcnNpb24uDQoNCj4gDQo+ID4g
KwkgKiBTUEkgTkFORCBkbyBub3Qgc3VwcG9ydCBPTkZJIHN0YW5kYXJkDQo+IA0KPiBXaGF0IGFi
b3V0Og0KPiANCj4gICAgICAgICAvKg0KPiAgICAgICAgICAqIFNQSSBOQU5EcyBkbyBub3QgbmVj
ZXNzYXJpbHkgc3VwcG9ydCBPTkZJIHN0YW5kYXJkLCBidXQNCj4gICAgICAgICAgKiBwYXJhbWV0
ZXIgcGFnZSBsb29rcyB0aGUgc2FtZSBhcyBhbiBPTkZJIHRhYmxlLg0KPiAgICAgICAgICAqLw0K
PiANCg0KVGhpcyBsb29rcyBiZXR0ZXIsIEkgd2lsbCB1c2UgdGhpcy4NCg0KPiA+ICsJICogQnV0
LCBwYXJhbWV0ZXIgcGFnZSBsb29rcyBzYW1lIGFzIE9ORkkgdGFibGUNCj4gPiArCSAqLw0KPiA+
ICsJaWYgKCFsZTE2X3RvX2NwdShwLT5yZXZpc2lvbikpDQo+ID4gKwkJKm9uZmlfdmVyc2lvbiA9
IDA7DQo+ID4gKw0KPiA+ICsJcmV0dXJuIDE7DQo+IA0KPiBGdW5jdGlvbnMgc2hvdWxkIHJldHVy
biAwIGluIG5vcm1hbCBzdGF0ZSwgbm90IDEuDQo+IA0KDQpJIHdpbGwgZml4IHRoaXMgaW4gbmV4
dCB2ZXJzaW9uLg0KDQo+ID4gK30NCj4gPiArDQo+ID4gK3N0YXRpYyBpbnQgc3BpbmFuZF9pbnRm
X2RhdGEoc3RydWN0IG5hbmRfZGV2aWNlICpiYXNlLA0KPiA+ICsJCQkgICAgIHN0cnVjdCBuYW5k
X29uZmlfcGFyYW1zICpwKQ0KPiA+ICt7DQo+ID4gKwlzdHJ1Y3Qgc3BpbmFuZF9kZXZpY2UgKnNw
aW5hbmQgPSBuYW5kX3RvX3NwaW5hbmQoYmFzZSk7DQo+ID4gKw0KPiA+ICsJLyoqDQo+ID4gKwkg
KglNYW51ZmFjdHVyZXJzIG1heSBpbnRlcnByZXQgdGhlIHBhcmFtZXRlciBwYWdlIGRpZmZlcmVu
dGx5DQo+IA0KPiAgICAgICAgICAgIF5eXl5eIGV4dHJhIHNwYWNlcw0KPiANCg0KSSB3aWxsIGZp
eCB0aGlzIGluIG5leHQgdmVyc2lvbi4NCg0KPiA+ICsJICovDQo+IA0KPiBPbmUtbGluZSBjb21t
ZW50IHNob3VsZCBiZSBpbiB0aGUgZm9ybSAvKiA8Y29tbWVudD4gKi8NCj4gDQo+ID4gKwlpZiAo
c3BpbmFuZC0+bWFudWZhY3R1cmVyLT5vcHMtPmZpeHVwX3BhcmFtX3BhZ2UpDQo+ID4gKwkJc3Bp
bmFuZC0+bWFudWZhY3R1cmVyLT5vcHMtPmZpeHVwX3BhcmFtX3BhZ2Uoc3BpbmFuZCwNCj4gcCk7
DQo+ID4gKw0KPiA+ICsJcmV0dXJuIDE7DQo+IA0KPiAgICAgICAgIHJldHVybiAwOw0KDQpJIHdp
bGwgZml4IHRoaXMgaW4gbmV4dCB2ZXJzaW9uLg0KDQo+IA0KPiA+ICt9DQo+ID4gKw0KPiA+ICtz
dGF0aWMgaW50IHNwaW5hbmRfcGFyYW1fcGFnZV9kZXRlY3Qoc3RydWN0IHNwaW5hbmRfZGV2aWNl
ICpzcGluYW5kKQ0KPiA+ICt7DQo+ID4gKwlzdHJ1Y3QgbmFuZF9kZXZpY2UgKmJhc2UgPSBzcGlu
YW5kX3RvX25hbmQoc3BpbmFuZCk7DQo+ID4gKw0KPiA+ICsJYmFzZS0+aGVscGVyLnBhZ2UgPSAw
eDAxOw0KPiA+ICsJYmFzZS0+aGVscGVyLmNoZWNrX3JldmlzaW9uID0gY2hlY2tfdmVyc2lvbjsN
Cj4gPiArCWJhc2UtPmhlbHBlci5wYXJhbWV0ZXJfcGFnZV9yZWFkID0NCj4gc3BpbmFuZF9wYXJh
bWV0ZXJfcGFnZV9yZWFkOw0KPiA+ICsJYmFzZS0+aGVscGVyLmluaXRfaW50Zl9kYXRhID0gc3Bp
bmFuZF9pbnRmX2RhdGE7DQo+ID4gKw0KPiA+ICsJcmV0dXJuIG5hbmRfb25maV9kZXRlY3QoYmFz
ZSk7DQo+ID4gK30NCj4gPiArDQo+ID4gIHN0YXRpYyBpbnQgc3BpbmFuZF9yZWFkX3BhZ2Uoc3Ry
dWN0IHNwaW5hbmRfZGV2aWNlICpzcGluYW5kLA0KPiA+ICAJCQkgICAgIGNvbnN0IHN0cnVjdCBu
YW5kX3BhZ2VfaW9fcmVxICpyZXEpDQo+ID4gIHsNCj4gPiBAQCAtODk2LDcgKzk5OCw3IEBAIHN0
YXRpYyB2b2lkIHNwaW5hbmRfbWFudWZhY3R1cmVyX2NsZWFudXAoc3RydWN0DQo+IHNwaW5hbmRf
ZGV2aWNlICpzcGluYW5kKQ0KPiA+ICAJCXJldHVybiBzcGluYW5kLT5tYW51ZmFjdHVyZXItPm9w
cy0+Y2xlYW51cChzcGluYW5kKTsNCj4gPiAgfQ0KPiA+DQo+ID4gLXN0YXRpYyBjb25zdCBzdHJ1
Y3Qgc3BpX21lbV9vcCAqDQo+ID4gK2NvbnN0IHN0cnVjdCBzcGlfbWVtX29wICoNCj4gPiAgc3Bp
bmFuZF9zZWxlY3Rfb3BfdmFyaWFudChzdHJ1Y3Qgc3BpbmFuZF9kZXZpY2UgKnNwaW5hbmQsDQo+
ID4gIAkJCSAgY29uc3Qgc3RydWN0IHNwaW5hbmRfb3BfdmFyaWFudHMgKnZhcmlhbnRzKQ0KPiA+
ICB7DQo+ID4gQEAgLTEwMTIsNiArMTExNCwxNSBAQCBzdGF0aWMgaW50IHNwaW5hbmRfZGV0ZWN0
KHN0cnVjdCBzcGluYW5kX2RldmljZQ0KPiAqc3BpbmFuZCkNCj4gPiAgCQlyZXR1cm4gcmV0Ow0K
PiA+ICAJfQ0KPiA+DQo+ID4gKwlpZiAoIXNwaW5hbmQtPmJhc2UubWVtb3JnLnBhZ2VzaXplKSB7
DQo+ID4gKwkJcmV0ID0gc3BpbmFuZF9wYXJhbV9wYWdlX2RldGVjdChzcGluYW5kKTsNCj4gPiAr
CQlpZiAocmV0IDwgMCkgew0KPiA+ICsJCQlkZXZfZXJyKGRldiwgIm5vIHBhcmFtZXRlciBwYWdl
IGZvciAlKnBoTlxuIiwNCj4gPiArCQkJCVNQSU5BTkRfTUFYX0lEX0xFTiwgc3BpbmFuZC0+aWQu
ZGF0YSk7DQo+ID4gKwkJCXJldHVybiByZXQ7DQo+ID4gKwkJfQ0KPiA+ICsJfQ0KPiA+ICsNCj4g
DQo+IEkgdGhpbmsgdGhpcyBjb3VsZCBiZSBhZGRlZCBpbiBhIHNlcGFyYXRlIHBhdGNoLiBJcyB0
aGlzIHRoZSBvbmx5DQo+IGNvbmRpdGlvbiB3aGVyZSB3ZSB3YW50IHRvIHJlYWQgdGhlIHBhcmFt
IHBhZ2UgPw0KPiANCg0KSSB3aWxsIG1ha2Ugc2VwYXJhdGUgcGF0Y2ggaWYgcG9zc2libGUuDQpz
cGluYW5kX21hbnVmYWN0dXJlcl9kZXRlY3Qgd2lsbCBub3QgaW5pdGlhbGl6ZSBtZW1vcmcsIEkg
dGhpbmsgaXQgaXMgDQplbm91Z2ggdG8gY2hlY2sgbWVtb3JnLnBhZ2VzaXplIGlzIGluaXRpYWxp
emVkIG9yIG5vdC4NClN1Z2dlc3QgbWUgaWYgeW91IGhhdmUgYW55IG90aGVyIHRob3VnaHRzLg0K
DQo+ID4gIAlpZiAobmFuZC0+bWVtb3JnLm50YXJnZXRzID4gMSAmJiAhc3BpbmFuZC0+c2VsZWN0
X3RhcmdldCkgew0KPiA+ICAJCWRldl9lcnIoZGV2LA0KPiA+ICAJCQkiU1BJIE5BTkRzIHdpdGgg
bW9yZSB0aGFuIG9uZSBkaWUgbXVzdCBpbXBsZW1lbnQNCj4gLT5zZWxlY3RfdGFyZ2V0KClcbiIp
Ow0KPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L210ZC9zcGluYW5kLmggYi9pbmNsdWRl
L2xpbnV4L210ZC9zcGluYW5kLmgNCj4gPiBpbmRleCBkMDkzZDIzN2ZiYTguLjU3YjNiNWIwNzVm
MiAxMDA2NDQNCj4gPiAtLS0gYS9pbmNsdWRlL2xpbnV4L210ZC9zcGluYW5kLmgNCj4gPiArKysg
Yi9pbmNsdWRlL2xpbnV4L210ZC9zcGluYW5kLmgNCj4gPiBAQCAtMTc5LDYgKzE3OSw4IEBAIHN0
cnVjdCBzcGluYW5kX21hbnVmYWN0dXJlcl9vcHMgew0KPiA+ICAJaW50ICgqZGV0ZWN0KShzdHJ1
Y3Qgc3BpbmFuZF9kZXZpY2UgKnNwaW5hbmQpOw0KPiA+ICAJaW50ICgqaW5pdCkoc3RydWN0IHNw
aW5hbmRfZGV2aWNlICpzcGluYW5kKTsNCj4gPiAgCXZvaWQgKCpjbGVhbnVwKShzdHJ1Y3Qgc3Bp
bmFuZF9kZXZpY2UgKnNwaW5hbmQpOw0KPiA+ICsJdm9pZCAoKmZpeHVwX3BhcmFtX3BhZ2UpKHN0
cnVjdCBzcGluYW5kX2RldmljZSAqc3BpbmFuZCwNCj4gPiArCQkJCSBzdHJ1Y3QgbmFuZF9vbmZp
X3BhcmFtcyAqcCk7DQo+IA0KPiBZb3UgY291bGQgcHJvYmFibHkgYWRkIHRoaXMgaG9vayBpbiBh
IHNlcGFyYXRlIHBhdGNoLg0KDQpJIHdpbGwgZml4IHRoaXMgaW4gbmV3IHZlcnNpb24uDQoNCj4g
DQo+ID4gIH07DQo+ID4NCj4gPiAgLyoqDQo+ID4gQEAgLTQyOSw0ICs0MzEsNyBAQCBpbnQgc3Bp
bmFuZF9tYXRjaF9hbmRfaW5pdChzdHJ1Y3Qgc3BpbmFuZF9kZXZpY2UNCj4gKmRldiwNCj4gPiAg
aW50IHNwaW5hbmRfdXBkX2NmZyhzdHJ1Y3Qgc3BpbmFuZF9kZXZpY2UgKnNwaW5hbmQsIHU4IG1h
c2ssIHU4IHZhbCk7DQo+ID4gIGludCBzcGluYW5kX3NlbGVjdF90YXJnZXQoc3RydWN0IHNwaW5h
bmRfZGV2aWNlICpzcGluYW5kLCB1bnNpZ25lZCBpbnQNCj4gdGFyZ2V0KTsNCj4gPg0KPiA+ICtj
b25zdCBzdHJ1Y3Qgc3BpX21lbV9vcCAqc3BpbmFuZF9zZWxlY3Rfb3BfdmFyaWFudChzdHJ1Y3QN
Cj4gc3BpbmFuZF9kZXZpY2UgKnNwaW5hbmQsDQo+ID4gKwkgICBjb25zdCBzdHJ1Y3Qgc3BpbmFu
ZF9vcF92YXJpYW50cyAqdmFyaWFudHMpOw0KPiANCj4gV2hhdCBpcyBpdCBmb3I/DQoNCkFoLCBp
dCBzaG91bGQgYmUgaW4gbmV4dCBwYXRjaCBubyBoZXJlLg0KIA0KPiANCj4gPiArDQo+ID4gICNl
bmRpZiAvKiBfX0xJTlVYX01URF9TUElOQU5EX0ggKi8NCj4gDQo+IA0KPiANCj4gDQo+IFRoYW5r
cywNCj4gTWlxdcOobA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
