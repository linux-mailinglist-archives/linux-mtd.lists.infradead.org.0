Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D90291F61
	for <lists+linux-mtd@lfdr.de>; Mon, 19 Aug 2019 10:52:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DgVllNWutYRoSVv6qJcGPTLae7541XjUfAnZSXTUlcE=; b=daUaxe1etjKTSs
	aayaHZQxO0cTiR3X7lZWTz/v9sT9ve6u5w9PUy79cT8nw9vj12Fb6eQJfnhTalJw8RuVJvW4MSAJe
	FzdCsGJTz+UjHaBgw/usBcnc3dBto4YT4yiY2M0PFBkFuRAL/6HzIq+/1zIvE6BZDZhedBlfbqi60
	ttiphsf6SNVxopIr5R0/KAdUvwSJgLELSONw4F9h9u1uvs1QFAZMQpsESTYA7zib9+okHqHi1SHq1
	Vg6+jzFcq4NPjQqXb7PvtF2IswZ2uWxlBnjYlAEdhWpsDB32t2APhOx68FvgW760eGcUFe5Hn6VJI
	aGJy8J3cx+JQAhr9m92Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzdOY-0000h2-2B; Mon, 19 Aug 2019 08:52:06 +0000
Received: from mail-by2nam03on0612.outbound.protection.outlook.com
 ([2a01:111:f400:fe4a::612]
 helo=NAM03-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzdON-0000gc-AC
 for linux-mtd@lists.infradead.org; Mon, 19 Aug 2019 08:51:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ks1arSnVhLsvxvVDHTNSaWrMzG1/WfRejqd9UzJDycn503aRC3H0cYyInJf4yvbmR9OCB/XLokH7s4viEfw4ko3aVQ76s0BX29HkRpG35Q4HOQENg5LWmsuf7RPmCArUQ01e3QNpTFmw+A/KMp7LKCzvtjWGG0IWh/cLDH0QUc6Jmz4X38R3fFkpxxQccOyz/ft9axnqSWT77bnviQNRJRTz2fEUvZa5BBE7IRIyPcxej/snd8lvfEccL7WQc2+lo38h7jm0fLk+WIfrQZVEfalyw3kzbiMhJgBDqOv3I6fMWEfL60b+bXcA+UAe7KTp4/Ksqj/Dg7hj4TWGaNq5UA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=klnwvK2FaOJJReVyIZXSEtymwO2lDIUA9a328K066q0=;
 b=CXJnZzzxppFke9GaYvN98OO4zBGFklbb78Y+jRT9QUwPQzT+1yeTVH6CvhMSkSlrTZXAJJRfGLrVP1f9M4J5C39HIBptdXxhDgusK1P5aShmBPgmi0FQ3fy45mtlaN4RrZ3ZcQM3lbx8PHHedBCLs1z1UO9FIPKjzm9HzbkfEqtjkoPa9V9Q8+4jNEn3z1/8T5WeBeL1DwKrKZyYKTMnVqZSt6Q+vMTq1O0IfG37OG9j8oQSFPlGRk7yvYiM6DihlOGsBT4mr5cGkc9UN+xXA1FGNmTt0tSDoigeLfseA6EXJTkbZ/Kvu7OpdVb78iBVoO2wj8sp/pnDqfLeyKzLOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=micron.com; dmarc=pass action=none header.from=micron.com;
 dkim=pass header.d=micron.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=micron.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=klnwvK2FaOJJReVyIZXSEtymwO2lDIUA9a328K066q0=;
 b=MBg1KT73SErtS39iGNRSUEuPaHIWxZBDoXC8Ces5ogQdWunDRUbd2ZiLOSv1K/XAal6afjknHe2n2XWSKeFwgfHmfUnd/BJgWuJH/Z/FmHU0oyW90b2eahDa2DaByabOKv/ncT753E1gV6UeSD2M3SyNUD8bSxfy5GTzxqKTlUE=
Received: from MN2PR08MB5951.namprd08.prod.outlook.com (20.179.85.220) by
 MN2PR08MB5917.namprd08.prod.outlook.com (20.179.98.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Mon, 19 Aug 2019 08:51:52 +0000
Received: from MN2PR08MB5951.namprd08.prod.outlook.com
 ([fe80::7548:c632:9c57:9252]) by MN2PR08MB5951.namprd08.prod.outlook.com
 ([fe80::7548:c632:9c57:9252%6]) with mapi id 15.20.2178.016; Mon, 19 Aug 2019
 08:51:52 +0000
From: "Shivamurthy Shastri (sshivamurthy)" <sshivamurthy@micron.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: RE: [EXT] Re: [PATCH 4/8] mtd: spinand: enabled parameter page support
Thread-Topic: [EXT] Re: [PATCH 4/8] mtd: spinand: enabled parameter page
 support
Thread-Index: AQHVTQVYHbcWWzA3wEWlNijlLbbUXqcCOMrw
Date: Mon, 19 Aug 2019 08:51:52 +0000
Message-ID: <MN2PR08MB59511E352AE382D103DA56CBB8A80@MN2PR08MB5951.namprd08.prod.outlook.com>
References: <20190722055621.23526-1-sshivamurthy@micron.com>
 <20190722055621.23526-5-sshivamurthy@micron.com>
 <20190807114855.35f26229@xps13>
In-Reply-To: <20190807114855.35f26229@xps13>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=sshivamurthy@micron.com; 
x-originating-ip: [165.225.80.136]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ab09c14f-75d2-4f55-1c9d-08d724827afb
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR08MB5917; 
x-ms-traffictypediagnostic: MN2PR08MB5917:|MN2PR08MB5917:|MN2PR08MB5917:
x-microsoft-antispam-prvs: <MN2PR08MB5917F1D8784323400AFCC801B8A80@MN2PR08MB5917.namprd08.prod.outlook.com>
x-ms-exchange-transport-forked: True
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0134AD334F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(39860400002)(346002)(376002)(366004)(189003)(199004)(43544003)(186003)(6436002)(66066001)(7696005)(26005)(86362001)(76176011)(3846002)(14444005)(256004)(11346002)(229853002)(305945005)(486006)(66476007)(2906002)(66446008)(476003)(64756008)(446003)(76116006)(6506007)(6116002)(55236004)(66946007)(66556008)(99286004)(102836004)(7416002)(6246003)(66574012)(55016002)(71200400001)(71190400001)(9686003)(14454004)(316002)(6916009)(54906003)(74316002)(81156014)(8676002)(478600001)(8936002)(25786009)(81166006)(4326008)(7736002)(53936002)(33656002)(5660300002)(52536014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR08MB5917;
 H:MN2PR08MB5951.namprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: micron.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: fQoSR4gk5tqAcvj1kC1roFSnPI8I3MVxg4tmPZdwfRMzb+ojeXjoVz9nxuKU+waRnXO0K9pd5UJylAqmMRF6FWQgFUrSRaNx2CSSoIzeah7hsccLbK5SOFCYcEwXxN95dDrJef8jO+ISQeinmrpoGKFgJkF0FxlKDkJ+DeaJNclS6Dm4ssM5ycJJp4c8rfo2hEMILagQk3u+6s4NgH2Owfl6OmX8CVd9wtA/jqW8Twsjcc/FwZVyAaBMRiEvl7GLA0YsQCEdSED6RdjfobNTk5fSsER3hCVY25nFzT6N1h5jsi2CHoVDWJcX5Nu3zqIlL6NfwFQfrUPmPnffBmwnHJaTeV4xiS5yfP0IXpAr+VgyfjP55Wx+4gb6/k1S5Yt27i1eMwJ/UIjiD1IBfVsBcG4r67HEs7lQDuLE+sTWsR8=
MIME-Version: 1.0
X-OriginatorOrg: micron.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab09c14f-75d2-4f55-1c9d-08d724827afb
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2019 08:51:52.1531 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f38a5ecd-2813-4862-b11b-ac1d563c806f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UPfN0GHjIqKzU0g92OCa6xsOb8y0Ph3sG48qmbed8zxnil1wR7vFDARst4iIdyRKUx95MF/CdWnP5tqk4DsEOQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR08MB5917
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_015155_363503_742147A8 
X-CRM114-Status: GOOD (  34.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe4a:0:0:0:612 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Chuanhong Guo <gch981213@gmail.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Richard Weinberger <richard@nod.at>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 liaoweixiong <liaoweixiong@allwinnertech.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Jeff Kletsky <git-commits@allycomm.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgTWlxdWVsLA0KDQo+IA0KPiBIaSBTaGl2YSwNCj4gDQo+IHNoaXZhLmxpbnV4d29ya3NAZ21h
aWwuY29tIHdyb3RlIG9uIE1vbiwgMjIgSnVsIDIwMTkgMDc6NTY6MTcgKzAyMDA6DQo+IA0KPiAi
bXRkOiBzcGluYW5kOiBlbmFibGUgcGFyYW1ldGVyIHBhZ2Ugc3VwcG9ydCINCj4gDQo+ID4gRnJv
bTogU2hpdmFtdXJ0aHkgU2hhc3RyaSA8c3NoaXZhbXVydGh5QG1pY3Jvbi5jb20+DQo+ID4NCj4g
PiBTb21lIG9mIHRoZSBTUEkgTkFORCBkZXZpY2VzIGhhcyBwYXJhbWV0ZXIgcGFnZSwgd2hpY2gg
aXMgc2ltaWxhciB0bw0KPiAgICAgICAgICAgICAgICAgIC0gICAgICAgICAgICAgaGF2ZSBhDQo+
ID4gT05GSSB0YWJsZS4NCj4gICByZWd1bGFyIHJhdyBOQU5EIE9ORkkgdGFibGVzLg0KPiANCj4g
Pg0KPiA+IEJ1dCwgaXQgbWF5IG5vdCBiZSBzZWxmIHN1ZmZpY2llbnQgdG8gcHJvcGFnYXRlIGFs
bCB0aGUgcmVxdWlyZWQNCj4gICBBcyBpdCBtYXkgbm90IGJlDQo+ID4gcGFyYW1ldGVycy4gRml4
dXAgZnVuY3Rpb24gaGFzIGJlZW4gYWRkZWQgaW4gc3RydWN0IG1hbnVmYWN0dXJlciB0bw0KPiAg
ICAgICAgICAgICAsIGEgZml4dXAgICAgICAgIGlzIGJlaW5nIGFkZGVkIGluIHRoZSBtYW51ZmFj
dHVyZXIgc3RydWN0dXJlDQo+ID4gYWNjb21tb2RhdGUgdGhpcy4NCj4gDQo+IFRoZSBmaXh1cCBm
dW5jdGlvbiBzZW50ZW5jZSBzaG91bGQgYmUgZHJvcHBlZCBmcm9tIHRoZSBjb21taXQgbWVzc2Fn
ZSwNCj4gc2VlIGJlbG93Lg0KDQpPa2F5LCBJIHdpbGwgY3JlYXRlIHNlcGFyYXRlIHBhdGNoIGZv
ciBmaXh1cCBmdW5jdGlvbi4NCg0KPiANCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IFNoaXZhbXVy
dGh5IFNoYXN0cmkgPHNzaGl2YW11cnRoeUBtaWNyb24uY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2
ZXJzL210ZC9uYW5kL3NwaS9jb3JlLmMgfCAxMzQNCj4gKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrDQo+ID4gIGluY2x1ZGUvbGludXgvbXRkL3NwaW5hbmQuaCB8ICAgMyArDQo+
ID4gIDIgZmlsZXMgY2hhbmdlZCwgMTM3IGluc2VydGlvbnMoKykNCj4gPg0KPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL210ZC9uYW5kL3NwaS9jb3JlLmMgYi9kcml2ZXJzL210ZC9uYW5kL3NwaS9j
b3JlLmMNCj4gPiBpbmRleCA4OWY2YmVlZmIwMWMuLjdhZTc2ZGFiOTE0MSAxMDA2NDQNCj4gPiAt
LS0gYS9kcml2ZXJzL210ZC9uYW5kL3NwaS9jb3JlLmMNCj4gPiArKysgYi9kcml2ZXJzL210ZC9u
YW5kL3NwaS9jb3JlLmMNCj4gPiBAQCAtNDAwLDYgKzQwMCwxMzEgQEAgc3RhdGljIGludCBzcGlu
YW5kX2xvY2tfYmxvY2soc3RydWN0DQo+IHNwaW5hbmRfZGV2aWNlICpzcGluYW5kLCB1OCBsb2Nr
KQ0KPiA+ICAJcmV0dXJuIHNwaW5hbmRfd3JpdGVfcmVnX29wKHNwaW5hbmQsIFJFR19CTE9DS19M
T0NLLCBsb2NrKTsNCj4gPiAgfQ0KPiA+DQo+ID4gKy8qKg0KPiA+ICsgKiBzcGluYW5kX3JlYWRf
cGFyYW1fcGFnZV9vcCAtIFJlYWQgcGFyYW1ldGVyIHBhZ2Ugb3BlcmF0aW9uDQo+IA0KPiBBZ2Fp
biwgdGhlIG5hbWUgaW4gdGhlIGRvYyBkb2VzIG5vdCBmaXQgdGhlIGZ1bmN0aW9uIHlvdSBkZXNj
cmliZQ0KPiANCj4gPiArICogQHNwaW5hbmQ6IHRoZSBzcGluYW5kDQo+ICAgICAgICAgICAgICAg
ICAgICAgU1BJLU5BTkQgY2hpcA0KPiANCj4gU2hpdmEsIHRoZXJlIGFyZSB3YXkgdG9vIG11Y2gg
dHlwb3MgYW5kIHNob3J0Y3V0cyBpbiB5b3VyIHNlcmllcy4NCj4gUGxlYXNlIGJlIG1vcmUgY2Fy
ZWZ1bCBvdGhlcndpc2Ugd2UgY2FuJ3QgZm9jdXMgb24gdGhlIHRlY2huaWNhbA0KPiBhc3BlY3Rz
LiBJIGFtIG5vdCBhIG5hdGl2ZSBFbmdsaXNoIHNwZWFrZXIgYXQgYWxsIGJ1dCBwbGVhc2UsIHBs
YWluDQo+IEVuZ2xpc2ggaXMgbm90IEMgY29kZS4gV2UgdGFsayBTUEktTkFORCBhbmQgbm90IHNw
aW5hbmQsIHdlIHNheQ0KPiBzdHJ1Y3R1cmUgYW5kIG5vdCBzdHJ1Y3QsIGFjcm9ueW1zIGFyZSB1
cHBlcmNhc2UsIGV0Yy4NCj4gDQoNClNvcnJ5IGZvciB0aGUgaW5jb252ZW5pZW5jZSBjYXVzZWQs
IEkgd2lsbCB0YWtlIGNhcmUgZnJvbSBuZXh0IHRpbWUuDQoNCj4gPiArICogQHBhZ2U6IHBhZ2Ug
bnVtYmVyIHdoZXJlIHBhcmFtZXRlciBwYWdlIHRhYmxlcyBjYW4gYmUgZm91bmQNCj4gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgXiB0aGUNCj4gPiArICogQGJ1ZjogYnVmZmVyIHVzZWQg
dG8gc3RvcmUgdGhlIHBhcmFtZXRlciBwYWdlDQo+ID4gKyAqIEBsZW46IGxlbmd0aCBvZiB0aGUg
YnVmZmVyDQo+ID4gKyAqDQo+ID4gKyAqIFJlYWQgcGFyYW1ldGVyIHBhZ2UNCj4gICAgICAgICAg
IHRoZQ0KPiA+ICsgKg0KPiA+ICsgKiBSZXR1cm5zIDAgb24gc3VjY2VzcywgYSBuZWdhdGl2ZSBl
cnJvciBjb2RlIG90aGVyd2lzZS4NCj4gPiArICovDQo+ID4gK3N0YXRpYyBpbnQgc3BpbmFuZF9w
YXJhbWV0ZXJfcGFnZV9yZWFkKHN0cnVjdCBzcGluYW5kX2RldmljZSAqc3BpbmFuZCwNCj4gPiAr
CQkJCSAgICAgICB1OCBwYWdlLCB2b2lkICpidWYsIHVuc2lnbmVkIGludCBsZW4pDQo+ID4gK3sN
Cj4gPiArCXN0cnVjdCBzcGlfbWVtX29wIHByZWFkX29wID0gU1BJTkFORF9QQUdFX1JFQURfT1Ao
cGFnZSk7DQo+ID4gKwlzdHJ1Y3Qgc3BpX21lbV9vcCBwcmVhZF9jYWNoZV9vcCA9DQo+ID4gKw0K
PiAJU1BJTkFORF9QQUdFX1JFQURfRlJPTV9DQUNIRV9PUChmYWxzZSwNCj4gPiArCQkJCQkJCQkw
LA0KPiA+ICsJCQkJCQkJCTEsDQo+ID4gKwkJCQkJCQkJYnVmLA0KPiA+ICsJCQkJCQkJCWxlbik7
DQo+IA0KPiBUaGF0J3Mgb2sgaWYgeW91IGNyb3NzIHRoZSA4MCBjaGFyYWN0ZXJzIGJvdW5kYXJ5
IGhlcmUuIFlvdSBtYXkgcHV0ICIwLA0KPiAxLCIgb24gdGhlIGZpcnN0IGxpbmUgYW5kICJidWYs
IGxlbik7IiBvbiB0aGUgc2Vjb25kLg0KPiANCj4gPiArCXU4IGZlYXR1cmU7DQo+ID4gKwl1OCBz
dGF0dXM7DQo+ID4gKwlpbnQgcmV0Ow0KPiA+ICsNCj4gPiArCWlmIChsZW4gJiYgIWJ1ZikNCj4g
PiArCQlyZXR1cm4gLUVJTlZBTDsNCj4gPiArDQo+ID4gKwlyZXQgPSBzcGluYW5kX3JlYWRfcmVn
X29wKHNwaW5hbmQsIFJFR19DRkcsDQo+ID4gKwkJCQkgICZmZWF0dXJlKTsNCj4gPiArCWlmIChy
ZXQpDQo+ID4gKwkJcmV0dXJuIHJldDsNCj4gPiArDQo+ID4gKwkvKiBDRkdfT1RQX0VOQUJMRSBp
cyB1c2VkIHRvIGVuYWJsZSBwYXJhbWV0ZXIgcGFnZSBhY2Nlc3MgKi8NCj4gPiArCWZlYXR1cmUg
fD0gQ0ZHX09UUF9FTkFCTEU7DQo+ID4gKw0KPiA+ICsJc3BpbmFuZF93cml0ZV9yZWdfb3Aoc3Bp
bmFuZCwgUkVHX0NGRywgZmVhdHVyZSk7DQo+ID4gKw0KPiA+ICsJcmV0ID0gc3BpX21lbV9leGVj
X29wKHNwaW5hbmQtPnNwaW1lbSwgJnByZWFkX29wKTsNCj4gPiArCWlmIChyZXQpDQo+ID4gKwkJ
cmV0dXJuIHJldDsNCj4gPiArDQo+ID4gKwlyZXQgPSBzcGluYW5kX3dhaXQoc3BpbmFuZCwgJnN0
YXR1cyk7DQo+ID4gKwlpZiAocmV0IDwgMCkNCj4gPiArCQlyZXR1cm4gcmV0Ow0KPiA+ICsNCj4g
PiArCXJldCA9IHNwaV9tZW1fZXhlY19vcChzcGluYW5kLT5zcGltZW0sICZwcmVhZF9jYWNoZV9v
cCk7DQo+ID4gKwlpZiAocmV0KQ0KPiA+ICsJCXJldHVybiByZXQ7DQo+ID4gKw0KPiA+ICsJcmV0
ID0gc3BpbmFuZF9yZWFkX3JlZ19vcChzcGluYW5kLCBSRUdfQ0ZHLA0KPiA+ICsJCQkJICAmZmVh
dHVyZSk7DQo+ID4gKwlpZiAocmV0KQ0KPiA+ICsJCXJldHVybiByZXQ7DQo+ID4gKw0KPiA+ICsJ
ZmVhdHVyZSAmPSB+Q0ZHX09UUF9FTkFCTEU7DQo+ID4gKw0KPiA+ICsJc3BpbmFuZF93cml0ZV9y
ZWdfb3Aoc3BpbmFuZCwgUkVHX0NGRywgZmVhdHVyZSk7DQo+ID4gKw0KPiA+ICsJcmV0dXJuIDA7
DQo+ID4gK30NCj4gPiArDQo+IEFkZCB0aGUga2VybmVsIGRvYyBwbGVhc2UNCj4gDQo+IENoYW5n
ZSB0aGUgYmVsb3cgZnVuY3Rpb24gc28gdGhhdCBpdCByZXR1cm5zIDEgaWYgdGhlIHBhZ2Ugd2Fz
DQo+IGRldGVjdGVkLCAwIGlmIGl0IGRpZCBub3QsIGFuIG5lZ2F0aXZlIGVycm9yIGNvZGUgb3Ro
ZXJ3aXNlLg0KPiANCj4gPiArc3RhdGljIGludCBzcGluYW5kX3BhcmFtX3BhZ2VfZGV0ZWN0KHN0
cnVjdCBzcGluYW5kX2RldmljZSAqc3BpbmFuZCkNCj4gPiArew0KPiA+ICsJc3RydWN0IG10ZF9p
bmZvICptdGQgPSBzcGluYW5kX3RvX210ZChzcGluYW5kKTsNCj4gPiArCXN0cnVjdCBuYW5kX21l
bW9yeV9vcmdhbml6YXRpb24gKm1lbW9yZzsNCj4gPiArCXN0cnVjdCBuYW5kX29uZmlfcGFyYW1z
ICpwOw0KPiA+ICsJc3RydWN0IG5hbmRfZGV2aWNlICpiYXNlID0gc3BpbmFuZF90b19uYW5kKHNw
aW5hbmQpOw0KPiA+ICsJaW50IGksIHJldDsNCj4gPiArDQo+ID4gKwltZW1vcmcgPSBuYW5kZGV2
X2dldF9tZW1vcmcoYmFzZSk7DQo+ID4gKw0KPiA+ICsJLyogQWxsb2NhdGUgYnVmZmVyIHRvIGhv
bGQgcGFyYW1ldGVyIHBhZ2UgKi8NCj4gPiArCXAgPSBremFsbG9jKChzaXplb2YoKnApICogMyks
IEdGUF9LRVJORUwpOw0KPiA+ICsJaWYgKCFwKQ0KPiA+ICsJCXJldHVybiAtRU5PTUVNOw0KPiA+
ICsNCj4gPiArCXJldCA9IHNwaW5hbmRfcGFyYW1ldGVyX3BhZ2VfcmVhZChzcGluYW5kLCAweDAx
LCBwLCBzaXplb2YoKnApICoNCj4gMyk7DQo+ID4gKwlpZiAocmV0KSB7DQo+ID4gKwkJcmV0ID0g
MDsNCj4gDQo+IE5vLCB5b3Ugc2hvdWxkIHJldHVybiB0aGUgZXJyb3IgaW4gY2FzZSBvZiBlcnJv
ci4gWW91IHdpbGwgbGF0ZXIgaGFuZGxlDQo+IHRoZSBmYWN0IHRoYXQgdGhlcmUgaXMgbm8gcGFy
YW1ldGVyIHBhZ2UuDQoNCm9rYXkuDQoNCj4gDQo+ID4gKwkJZ290byBmcmVlX3BhcmFtX3BhZ2U7
DQo+ID4gKwl9DQo+ID4gKw0KPiA+ICsJZm9yIChpID0gMDsgaSA8IDM7IGkrKykgew0KPiA+ICsJ
CWlmIChvbmZpX2NyYzE2KE9ORklfQ1JDX0JBU0UsICh1OCAqKSZwW2ldLCAyNTQpID09DQo+ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
Xg0KPiBJZiB5b3UgZm9yY2UgdGhlIHBhcmFtZXRlciBwYWdlIHRvIGJlIDI1NCBieXRlcyBsb25n
IGl0IG1lYW5zIHlvdSBsaW1pdA0KPiB5b3Vyc2VsZiB0byBPTkZJIHN0YW5kYXJkLiBUaGF0J3Mg
bm90IGEgcHJvYmxlbSwgYnV0IHRoZW4geW91IHNob3VsZA0KPiBtZW50aW9uIGl0IGluIHRoZSBm
dW5jdGlvbiBuYW1lLg0KDQpva2F5LCBJIHdpbGwgbWVudGlvbiBpbiBrZXJuZWwgZG9jLg0KDQo+
IA0KPiA+ICsJCQkJbGUxNl90b19jcHUocC0+Y3JjKSkgew0KPiA+ICsJCQlpZiAoaSkNCj4gPiAr
CQkJCW1lbWNweShwLCAmcFtpXSwgc2l6ZW9mKCpwKSk7DQo+ID4gKwkJCWJyZWFrOw0KPiA+ICsJ
CX0NCj4gPiArCX0NCj4gPiArDQo+ID4gKwlpZiAoaSA9PSAzKSB7DQo+ID4gKwkJY29uc3Qgdm9p
ZCAqc3JjYnVmc1szXSA9IHtwLCBwICsgMSwgcCArIDJ9Ow0KPiA+ICsNCj4gPiArCQlwcl93YXJu
KCJDb3VsZCBub3QgZmluZCBhIHZhbGlkIE9ORkkgcGFyYW1ldGVyIHBhZ2UsIHRyeWluZw0KPiBi
aXQtd2lzZSBtYWpvcml0eSB0byByZWNvdmVyIGl0XG4iKTsNCj4gPiArCQluYW5kX2JpdF93aXNl
X21ham9yaXR5KHNyY2J1ZnMsIEFSUkFZX1NJWkUoc3JjYnVmcyksIHAsDQo+ID4gKwkJCQkgICAg
ICAgc2l6ZW9mKCpwKSk7DQo+ID4gKw0KPiA+ICsJCWlmIChvbmZpX2NyYzE2KE9ORklfQ1JDX0JB
U0UsICh1OCAqKXAsIDI1NCkgIT0NCj4gPiArCQkJCWxlMTZfdG9fY3B1KHAtPmNyYykpIHsNCj4g
PiArCQkJcHJfZXJyKCJPTkZJIHBhcmFtZXRlciByZWNvdmVyeSBmYWlsZWQsDQo+IGFib3J0aW5n
XG4iKTsNCj4gPiArCQkJZ290byBmcmVlX3BhcmFtX3BhZ2U7DQo+ID4gKwkJfQ0KPiA+ICsJfQ0K
PiANCj4gVGhlIHdob2xlIGZvci1sb29wIGFuZCB0aGUgaWYgKGk9PTMpIGNvbmRpdGlvbiBpcyBl
eGFjdGx5IHRoZSBzYW1lIGFzDQo+IGZvciByYXcgTkFORHMgYW5kIG11c3QgYmUgZXh0cmFjdGVk
IGluIGEgZ2VuZXJpYyBmdW5jdGlvbjoNCj4gMS8gZXh0cmFjdCB0aGUgZnVuY3Rpb24gZnJvbSBu
YW5kL3Jhdy9uYW5kX29uZmkuYyBhbmQgcHV0IGl0IGluDQo+IG5hbmQvb25maS5jLg0KPiAyLyB0
aGVuIHVzZSBpdCBpbiB0aGlzIHBhdGNoLg0KDQpJIGhhdmUgZG9uZSB0aGlzIGludGVudGlvbmFs
bHksIGJlY2F1c2UgaW4gcmF3IE5BTkQgY2FzZSB0aGVyZSBpcyBmdW5jdGlvbg0KIm5hbmRfcmVh
ZF9kYXRhX29wIiBjYWxsZWQgaW5zaWRlIGZvci1sb29wLiBJIGRvbid0IHRoaW5rIGp1c3QgZm9y
IGlmIChpID09IDMpIA0KaXQgaXMgbmVjZXNzYXJ5IHRvIGNyZWF0ZSBuZXcgZnVuY3Rpb24uDQoN
CkxldCBtZSBrbm93IGlmIHlvdSBoYXZlIGRpZmZlcmVudCBvcGluaW9uLg0KDQo+IA0KPiA+ICsN
Cj4gPiArCXBhcnNlX29uZmlfcGFyYW1zKG1lbW9yZywgcCk7DQo+ID4gKw0KPiA+ICsJbXRkLT53
cml0ZXNpemUgPSBtZW1vcmctPnBhZ2VzaXplOw0KPiA+ICsJbXRkLT5lcmFzZXNpemUgPSBtZW1v
cmctPnBhZ2VzX3Blcl9lcmFzZWJsb2NrICogbWVtb3JnLQ0KPiA+cGFnZXNpemU7DQo+ID4gKwlt
dGQtPm9vYnNpemUgPSBtZW1vcmctPm9vYnNpemU7DQo+IA0KPiBUaGlzIHdpbGwgYmUgaGFuZGxl
ZCBieSBuYW5kZGV2X2luaXQsIHNob3VsZCBiZSByZW1vdmVkLg0KPiANCj4gPiArDQo+ID4gKwkv
KiBNYW51ZmFjdHVyZXJzIG1heSBpbnRlcnByZXQgdGhlIHBhcmFtZXRlciBwYWdlIGRpZmZlcmVu
dGx5ICovDQo+ID4gKwlpZiAoc3BpbmFuZC0+bWFudWZhY3R1cmVyLT5vcHMtPmZpeHVwX3BhcmFt
X3BhZ2UpDQo+ID4gKwkJc3BpbmFuZC0+bWFudWZhY3R1cmVyLT5vcHMtPmZpeHVwX3BhcmFtX3Bh
Z2Uoc3BpbmFuZCwNCj4gcCk7DQo+IA0KPiBUaGUgd2hvbGUgIm1hbnVmYWN0dXJlciBmaXh1cCIg
c2hvdWxkIGJlIGRvbmUgc2VwYXJhdGVseS4NCj4gDQo+ID4gKw0KPiA+ICsJLyogSWRlbnRpZmlj
YXRpb24gZG9uZSwgZnJlZSB0aGUgZnVsbCBwYXJhbWV0ZXIgcGFnZSBhbmQgZXhpdCAqLw0KPiA+
ICsJcmV0ID0gMTsNCj4gPiArDQo+ID4gK2ZyZWVfcGFyYW1fcGFnZToNCj4gPiArCWtmcmVlKHAp
Ow0KPiA+ICsNCj4gPiArCXJldHVybiByZXQ7DQo+ID4gK30NCj4gPiArDQo+ID4gIHN0YXRpYyBp
bnQgc3BpbmFuZF9jaGVja19lY2Nfc3RhdHVzKHN0cnVjdCBzcGluYW5kX2RldmljZSAqc3BpbmFu
ZCwgdTgNCj4gc3RhdHVzKQ0KPiA+ICB7DQo+ID4gIAlzdHJ1Y3QgbmFuZF9kZXZpY2UgKm5hbmQg
PSBzcGluYW5kX3RvX25hbmQoc3BpbmFuZCk7DQo+ID4gQEAgLTkxMSw2ICsxMDM2LDE1IEBAIHN0
YXRpYyBpbnQgc3BpbmFuZF9kZXRlY3Qoc3RydWN0IHNwaW5hbmRfZGV2aWNlDQo+ICpzcGluYW5k
KQ0KPiA+ICAJCXJldHVybiByZXQ7DQo+ID4gIAl9DQo+ID4NCj4gPiArCWlmICghc3BpbmFuZC0+
YmFzZS5tZW1vcmcucGFnZXNpemUpIHsNCj4gPiArCQlyZXQgPSBzcGluYW5kX3BhcmFtX3BhZ2Vf
ZGV0ZWN0KHNwaW5hbmQpOw0KPiA+ICsJCWlmIChyZXQgPD0gMCkgew0KPiA+ICsJCQlkZXZfZXJy
KGRldiwgIm5vIHBhcmFtZXRlciBwYWdlIGZvciAlKnBoTlxuIiwNCj4gDQo+IE5vdCBzdXJlIGF0
IHRoaXMgc3RhZ2UgZGV2IHdpbGwgZ2l2ZSBzb21ldGhpbmcgbWVhbmluZ2Z1bC4gQW55d2F5IEkN
Cj4gZG9uJ3QgdGhpbmsgd2Ugc2hvdWxkIHNjcmVhbSBhdCB0aGUgdXNlciBpZiBoaXMgTkFORCBp
cyBub3QgYW4gT05GSSBvbmUNCj4gc28gcGxlYXNlIHJldHVybiBhbiBlcnJvciBvbmx5IGlmIHJl
dCA8IDAuIElmIHJldCA9PSAwIG9yIHJldCA9PSAxLA0KPiBkb24ndCB3YXJuIHRoZSB1c2VyLg0K
DQpJIHdpbGwgZG8gaXQgYXMgcGVyIHlvdXIgc3VnZ2VzdGlvbi4NCg0KPiANCj4gPiArCQkJCVNQ
SU5BTkRfTUFYX0lEX0xFTiwgc3BpbmFuZC0+aWQuZGF0YSk7DQo+ID4gKwkJCXJldHVybiAtRU5P
REVWOw0KPiA+ICsJCX0NCj4gPiArCX0NCj4gPiArDQo+ID4gIAlpZiAobmFuZC0+bWVtb3JnLm50
YXJnZXRzID4gMSAmJiAhc3BpbmFuZC0+c2VsZWN0X3RhcmdldCkgew0KPiA+ICAJCWRldl9lcnIo
ZGV2LA0KPiA+ICAJCQkiU1BJIE5BTkRzIHdpdGggbW9yZSB0aGFuIG9uZSBkaWUgbXVzdCBpbXBs
ZW1lbnQNCj4gLT5zZWxlY3RfdGFyZ2V0KClcbiIpOw0KPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRl
L2xpbnV4L210ZC9zcGluYW5kLmggYi9pbmNsdWRlL2xpbnV4L210ZC9zcGluYW5kLmgNCj4gPiBp
bmRleCA0ZWE1NThiZDNjNDYuLmZlYTgyMGEyMGJjOSAxMDA2NDQNCj4gPiAtLS0gYS9pbmNsdWRl
L2xpbnV4L210ZC9zcGluYW5kLmgNCj4gPiArKysgYi9pbmNsdWRlL2xpbnV4L210ZC9zcGluYW5k
LmgNCj4gPiBAQCAtMTUsNiArMTUsNyBAQA0KPiA+ICAjaW5jbHVkZSA8bGludXgvbXRkL25hbmQu
aD4NCj4gPiAgI2luY2x1ZGUgPGxpbnV4L3NwaS9zcGkuaD4NCj4gPiAgI2luY2x1ZGUgPGxpbnV4
L3NwaS9zcGktbWVtLmg+DQo+ID4gKyNpbmNsdWRlIDxsaW51eC9tdGQvb25maS5oPg0KPiA+DQo+
ID4gIC8qKg0KPiA+ICAgKiBTdGFuZGFyZCBTUEkgTkFORCBmbGFzaCBvcGVyYXRpb25zDQo+ID4g
QEAgLTIwOSw2ICsyMTAsOCBAQCBzdHJ1Y3Qgc3BpbmFuZF9tYW51ZmFjdHVyZXJfb3BzIHsNCj4g
PiAgCWludCAoKmRldGVjdCkoc3RydWN0IHNwaW5hbmRfZGV2aWNlICpzcGluYW5kKTsNCj4gPiAg
CWludCAoKmluaXQpKHN0cnVjdCBzcGluYW5kX2RldmljZSAqc3BpbmFuZCk7DQo+ID4gIAl2b2lk
ICgqY2xlYW51cCkoc3RydWN0IHNwaW5hbmRfZGV2aWNlICpzcGluYW5kKTsNCj4gPiArCXZvaWQg
KCpmaXh1cF9wYXJhbV9wYWdlKShzdHJ1Y3Qgc3BpbmFuZF9kZXZpY2UgKnNwaW5hbmQsDQo+ID4g
KwkJCQkgc3RydWN0IG5hbmRfb25maV9wYXJhbXMgKnApOw0KPiANCj4gUGxlYXNlIGRvIHRoaXMg
aW4gYSBzZXBhcmF0ZSBwYXRjaC4NCj4gDQo+ID4gIH07DQo+ID4NCj4gPiAgLyoqDQo+IA0KPiBU
aGFua3MsDQo+IE1pcXXDqGwNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
