Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ED285928D
	for <lists+linux-mtd@lfdr.de>; Fri, 28 Jun 2019 06:21:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yK2RBC2TOheTNYVY/M8cjY2wZMLGdsqUSpwyGC3/v9k=; b=UB19eDq+rjIO1m
	P3EdZ2+Zv2Yx0qW+CnHLADjPficAWAlXjqPA4GaPTyLhnb6bb0bh7n8TRobjtYYoVQJWNlOY/2Fbp
	smH7oFrXURyHTBRmALuBrnvZtWdIpcb99AsAPjWeQxBxvK0Ccip0DzWPWbkOfEZ4RldyFa7Nrddos
	lKVWg3/8X7w2BifcbfId+miX+7F4nxxQjgvrjI3CD3mnTU2On4xiE5lgumHlmqFp5B2qVU8Hh+mkp
	odZWLia6SQc6XWujcXvxXS7qRPenrrg+nNzZjr+pF2PnzVhttbLYJIsKMEDhGTH7wtrULNnv8jynI
	KFJJ/pKdrKctOcbkSotw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgiNw-0002dY-2g; Fri, 28 Jun 2019 04:21:16 +0000
Received: from mail-eopbgr800052.outbound.protection.outlook.com
 ([40.107.80.52] helo=NAM03-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgiNf-0002b9-OY
 for linux-mtd@lists.infradead.org; Fri, 28 Jun 2019 04:21:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DsvWNfOxi2Ue0lJ40xxSADLSnceUh6GCKhjptto6I44=;
 b=Q7WQVF5ddwt2Bx/4xfG5KQhD4bWR6O9w2j/3QtakLQtZSXW6yyj6PkGVkUgUCcJlfD4anTibiYML3baYlSWaWMV5ThO6FywpabmnySR28SPRoCFEFIA5lGP2rulBTvgQhwsWd7OO1eLlf1cv+lpb3scBVoJmy7ARVoe0iqSvTMY=
Received: from DM6PR02MB4779.namprd02.prod.outlook.com (20.176.109.16) by
 DM6PR02MB3946.namprd02.prod.outlook.com (20.176.74.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.17; Fri, 28 Jun 2019 04:20:54 +0000
Received: from DM6PR02MB4779.namprd02.prod.outlook.com
 ([fe80::936:90c8:a385:1513]) by DM6PR02MB4779.namprd02.prod.outlook.com
 ([fe80::936:90c8:a385:1513%4]) with mapi id 15.20.2008.017; Fri, 28 Jun 2019
 04:20:54 +0000
From: Naga Sureshkumar Relli <nagasure@xilinx.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, Naga Sureshkumar Relli
 <nagasureshkumarrelli@gmail.com>
Subject: RE: [LINUX PATCH v12 3/3] mtd: rawnand: arasan: Add support for
 Arasan NAND Flash Controller
Thread-Topic: [LINUX PATCH v12 3/3] mtd: rawnand: arasan: Add support for
 Arasan NAND Flash Controller
Thread-Index: AQHVJlmqVOb6xhW5BUqvdsCoslaAraavvckAgADG9PA=
Date: Fri, 28 Jun 2019 04:20:53 +0000
Message-ID: <DM6PR02MB4779965BBC6278653DAD62FFAFFC0@DM6PR02MB4779.namprd02.prod.outlook.com>
References: <20181212100931.149b0cac@xps13>
 <MWHPR02MB2623EDA15BE59304795F3034AFA70@MWHPR02MB2623.namprd02.prod.outlook.com>
 <20181212141825.69711c57@xps13>
 <MWHPR02MB26235AE6567A06EF4C6362E6AFBC0@MWHPR02MB2623.namprd02.prod.outlook.com>
 <20181217174114.24196d17@xps13>
 <MWHPR02MB26237B932D7F3CCEE0476FE0AFBD0@MWHPR02MB2623.namprd02.prod.outlook.com>
 <20181219152647.76f77711@xps13>
 <MWHPR02MB262396FFF946A95D7821D61BAFB80@MWHPR02MB2623.namprd02.prod.outlook.com>
 <MWHPR02MB262328DF62906C01DCDF18E5AF960@MWHPR02MB2623.namprd02.prod.outlook.com>
 <20190128102720.70a52da7@xps13>
 <20190619044424.GB28766@xhdnagasure40.xilinx.com>
 <20190627182742.6389d772@xps13>
In-Reply-To: <20190627182742.6389d772@xps13>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=nagasure@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8087f9c6-b585-4256-42ae-08d6fb8002d3
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DM6PR02MB3946; 
x-ms-traffictypediagnostic: DM6PR02MB3946:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <DM6PR02MB3946EBC203E23A14FE4C3C4CAFFC0@DM6PR02MB3946.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 00826B6158
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(376002)(39860400002)(396003)(346002)(189003)(199004)(13464003)(102836004)(81156014)(76116006)(81166006)(4326008)(305945005)(74316002)(229853002)(11346002)(64756008)(476003)(446003)(486006)(68736007)(66446008)(8936002)(66476007)(76176011)(66556008)(7696005)(3846002)(6116002)(66946007)(7736002)(99286004)(73956011)(256004)(14444005)(7416002)(9686003)(6246003)(6306002)(33656002)(55016002)(53936002)(14454004)(52536014)(26005)(5660300002)(8676002)(6436002)(966005)(71200400001)(316002)(86362001)(25786009)(54906003)(66066001)(66574012)(478600001)(110136005)(53546011)(6506007)(186003)(71190400001)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB3946;
 H:DM6PR02MB4779.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ZRmhSrepcqhfmKo1bLFD54ryjsMU2JQu6jw2tWBUEHru1ajOI2gb0n8Ugm6skcvQk2M7M1knsKDUbSxzRCGjzneLw57LqcuUSvZhBPLCyLf5bsiECs4ZGzWSc8ajhPv2oxWVwfwd11OghzUJpfMZKQWStSEuhMrDb1Bg6s/s0l6QnSTmCzwrtDpj/ZldVovLovyqG0oH2iL1EhlIJ60rjGnDH8cUD9ZrCeobMFcdOuCLy7ZodlhphyL5n6PdBF+Rhp5M5lMkou9/wxRZOWCX8LIpLAynsE1HYBYoHUVBjXiHlQ0IKmOJt1z+hY+mEpNUUkjDLh28yEr+5EPhe28iiz0eM3AO44CnFNS6NDu3kHF4Qg6+myNeRa/D7DMUKQ1rJ+akVD0OCfUUMAb6HbyzpA3fZE2wzzWWs5/AEpk6mog=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8087f9c6-b585-4256-42ae-08d6fb8002d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jun 2019 04:20:54.0059 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nagasure@xilinx.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB3946
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_212059_806200_EB289B28 
X-CRM114-Status: GOOD (  18.47  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.80.52 listed in list.dnswl.org]
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
Cc: "robh@kernel.org" <robh@kernel.org>,
 "martin.lund@keep-it-simple.com" <martin.lund@keep-it-simple.com>,
 "richard@nod.at" <richard@nod.at>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Boris Brezillon <boris.brezillon@bootlin.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "nagasuresh12@gmail.com" <nagasuresh12@gmail.com>,
 Michal Simek <michals@xilinx.com>,
 "computersforpeace@gmail.com" <computersforpeace@gmail.com>,
 "dwmw2@infradead.org" <dwmw2@infradead.org>,
 "marek.vasut@gmail.com" <marek.vasut@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgTWlxdWVsLA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IE1pcXVl
bCBSYXluYWwgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBK
dW5lIDI3LCAyMDE5IDk6NTggUE0NCj4gVG86IE5hZ2EgU3VyZXNoa3VtYXIgUmVsbGkgPG5hZ2Fz
dXJlc2hrdW1hcnJlbGxpQGdtYWlsLmNvbT4NCj4gQ2M6IE5hZ2EgU3VyZXNoa3VtYXIgUmVsbGkg
PG5hZ2FzdXJlQHhpbGlueC5jb20+OyByb2JoQGtlcm5lbC5vcmc7IG1hcnRpbi5sdW5kQGtlZXAt
aXQtDQo+IHNpbXBsZS5jb207IHJpY2hhcmRAbm9kLmF0OyBsaW51eC1rZXJuZWxAdmdlci5rZXJu
ZWwub3JnOyBCb3JpcyBCcmV6aWxsb24NCj4gPGJvcmlzLmJyZXppbGxvbkBib290bGluLmNvbT47
IGxpbnV4LW10ZEBsaXN0cy5pbmZyYWRlYWQub3JnOyBuYWdhc3VyZXNoMTJAZ21haWwuY29tOw0K
PiBNaWNoYWwgU2ltZWsgPG1pY2hhbHNAeGlsaW54LmNvbT47IGNvbXB1dGVyc2ZvcnBlYWNlQGdt
YWlsLmNvbTsgZHdtdzJAaW5mcmFkZWFkLm9yZzsNCj4gbWFyZWsudmFzdXRAZ21haWwuY29tDQo+
IFN1YmplY3Q6IFJlOiBbTElOVVggUEFUQ0ggdjEyIDMvM10gbXRkOiByYXduYW5kOiBhcmFzYW46
IEFkZCBzdXBwb3J0IGZvciBBcmFzYW4gTkFORA0KPiBGbGFzaCBDb250cm9sbGVyDQo+IA0KPiBI
aSBOYWdhLA0KPiANCj4gTmFnYSBTdXJlc2hrdW1hciBSZWxsaSA8bmFnYXN1cmVzaGt1bWFycmVs
bGlAZ21haWwuY29tPiB3cm90ZSBvbiBUdWUsDQo+IDE4IEp1biAyMDE5IDIyOjQ0OjI0IC0wNjAw
Og0KPiANCj4gPiBPbiBNb24sIEphbiAyOCwgMjAxOSBhdCAxMDoyNzozOUFNICswMTAwLCBNaXF1
ZWwgUmF5bmFsIHdyb3RlOg0KPiA+IEhpIE1pcXVlbCwNCj4gPg0KPiA+ID4gSGkgTmFnYSwNCj4g
PiA+DQo+ID4gPiBOYWdhIFN1cmVzaGt1bWFyIFJlbGxpIDxuYWdhc3VyZUB4aWxpbnguY29tPiB3
cm90ZSBvbiBNb24sIDI4IEphbg0KPiA+ID4gMjAxOQ0KPiA+ID4gMDY6MDQ6NTMgKzAwMDA6DQo+
ID4gPg0KPiA+ID4gPiBIaSBCb3JpcyAmIE1pcXVlbCwNCj4gPiA+ID4NCj4gPiA+ID4gQ291bGQg
eW91IHBsZWFzZSBwcm92aWRlIHlvdXIgdGhvdWdodHMgb24gdGhpcyBkcml2ZXIgdG8gc3VwcG9y
dCBIVy1FQ0M/DQo+ID4gPiA+IEFzIEkgc2FpZCBwcmV2aW91c2x5LCB0aGVyZSBpcyBubyB3YXkg
dG8gZGV0ZWN0IGVycm9ycyBiZXlvbmQgTiBiaXQuDQo+ID4gPiA+IEkgYW0gb2sgdG8gdXBkYXRl
IHRoZSBkcml2ZXIgYmFzZWQgb24geW91ciBpbnB1dHMuDQo+ID4gPg0KPiA+ID4gV2Ugd29uJ3Qg
c3VwcG9ydCB0aGUgRUNDIGVuZ2luZS4gSXQgc2ltcGx5IGNhbm5vdCBiZSB1c2VkIHJlbGlhYmx5
Lg0KPiA+ID4NCj4gPiA+IEkgYW0gd29ya2luZyBvbiBhIGdlbmVyaWMgRUNDIGVuZ2luZSBvYmpl
Y3QuIEl0J3MgZ29ubmEgdGFrZSBhIGZldw0KPiA+ID4gbW9udGhzIHVudGlsIGl0IGdldHMgbWVy
Z2VkIGJ1dCBhZnRlciB0aGF0IHlvdSBjb3VsZCB1cGRhdGUgdGhlDQo+ID4gPiBjb250cm9sbGVy
IGRyaXZlciB0byBkcm9wIGFueSBFQ0MtcmVsYXRlZCBmdW5jdGlvbi4gQWx0aG91Z2ggdGhlIEVD
Qw0KPiA+DQo+ID4gQ291bGQgeW91IHBsZWFzZSBsZXQgbWUga25vdyB0aGF0LCB3aGVuIGNhbiB3
ZSBleHBlY3QgZ2VuZXJpYyBFQ0MNCj4gPiBlbmdpbmUgdXBkYXRlIGluIG10ZCBOQU5EPw0KPiA+
IEJhc2VkIG9uIHRoYXQsIGkgd2lsbCBwbGFuIHRvIHVwZGF0ZSB0aGUgQVJBU0FOIE5BTkQgZHJp
dmVyIGFsb25nIHdpdGgNCj4gPiB5b3VyIGNvbW1lbnRzIG1lbnRpb25lZCBhYm92ZSB1bmRlciB0
aGlzIHVwZGF0ZSwgYXMgeW91IGtub3cgdGhlcmUgaXMNCj4gPiBhIGxpbWlhdGlvbiBpbiBBUkFT
QU4gTkFORCBjb250cm9sbGVyIHRvIGRldGVjdCBFQ0MgZXJyb3JzLg0KPiA+IGkgYW0gZm9sbG93
aW5nIHRoaXMgc2VyaWVzDQo+ID4gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC8x
MDgzODcwNS8NCj4gDQo+IEl0IGlzIGdvbm5hIHRha2UgbW9yZSB0aW1lIHRoYW4gZXhwZWN0ZWQu
IFlvdSBjYW4gc3RpY2sgdG8gdGhlIHNvZnR3YXJlIGVuZ2luZXMgZm9yIG5vdy4NCk9rLiBJIHdp
bGwgdXBkYXRlIHRoZSBkcml2ZXIgYWNjb3JkaW5nbHkuDQoNClRoYW5rcywNCk5hZ2EgU3VyZXNo
a3VtYXIgUmVsbGkNCg0KPg0KIA0KPiBUaGFua3MsDQo+IE1pcXXDqGwNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vz
c2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1tdGQvCg==
