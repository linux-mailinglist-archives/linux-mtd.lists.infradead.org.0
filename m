Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3963146406
	for <lists+linux-mtd@lfdr.de>; Thu, 23 Jan 2020 10:02:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k7LB8G2aznV7MdbYW7dwidpZRi7XU0Q9yfTwAz+J53w=; b=bKWA+Y9Mg1X9v/
	25XHAPotG2C9I+UwaqV/MpXD3/H/ILXJABUlXE8ljD8ddX876moSGcNSXX8NBi/hL9PsZ8DgSguG8
	AhdDWf+4OuNU+8Vl2gnY+ZhOJo1RD0aNgzJeojQ4DX3IbeIxinhU+xDRYrtgW3XMBKHqK625wq1Zf
	USwNZsM2sR5bhvuBPiXlotrGu4JzC4+/FjCRUFd8eB/BXCJ1Wd9xfxgy8qG87yLVNpNyPz2KGLfl8
	UpevBeK1MGcDw5Zuw5dofBi3SRaDLLi6V31v+QYQKsRHf6ZRXIQIOC5WNxJfifXLLvvEobZ2DnAD8
	fBCU0RdGhlmtyQr+BFdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuYNE-0006vS-T9; Thu, 23 Jan 2020 09:02:00 +0000
Received: from mail-eopbgr760050.outbound.protection.outlook.com
 ([40.107.76.50] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuYN8-0006v3-6o
 for linux-mtd@lists.infradead.org; Thu, 23 Jan 2020 09:01:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UzEZEo1b0KpcsZp0MWLBnEDO959gIrv+CwzpxWaGngTvuHaWVG0Swe8+p3fZO4+jrdL0NzSi0LKDSXcz/1VmlbaHGPcrtLCgB38SI9pFF7PkwW/Dn6MQAA/1/DNaDQ59eAzM+oy85PEydvgjRDGFsfYewX2+FRCVxlKBtUr1GqopJrw98dj0bDci1TWWvZFiFtNCJQQwNXDTZKpktM1JpnImolxdidqOLkM2lBuY/UuTU/c2fo3MClnmNbVn8LUe0A4kXPNk/0WcmrU0UsWY0NL/nKTe/TjqotpNEMAYQtLWL49j4pqLd2UmSI/ugG+f4NffmXW13gJxQwQrcm/Ikw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rBHDqJnqduusLaOfa3MSOU9DITe8g6HUxEvI+Ke4HNE=;
 b=csCIs6AhfWhtSkfUGwuLST+vB3xd40HijnY+mgoZw24xoA0zYOopLOc6Y3AoMo1+vPn+0ruVIILNTH+PaAmhp8z4l7PTe9aONVQGLKsitVyWLKAbrCC9ezF22UpDUneJz+oXi6HMbxxD1qHuaThiJ3gaP67CwHuwj3oMDz9EhkuW6aIIqH2k7juxpP1gXOG+6YU1f9Bt13fAjl5GWXjmz2HEpbW3F2lDQ8obekqeDVV5LrHSxW+0AtxcAzKVXhgx4wyAvxs1OMIHTmXZ3bOu1L7VXRgCiN+twqQr4Yxr4TVhQNsYDSenNnHvqEKBryMHxLz2zfsi3DnjEIGCupuo3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=micron.com; dmarc=pass action=none header.from=micron.com;
 dkim=pass header.d=micron.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=micron.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rBHDqJnqduusLaOfa3MSOU9DITe8g6HUxEvI+Ke4HNE=;
 b=CV9QwoAnRF6jyev5ZglTmh5Q5XOT9yf12GWMAJ61849zUeV690u0HobhgdV6ZZ9zdxaqbDtAqrH9TwQUj8fOanJJeqo0j/S3yWxuH3wZtC+mLw1RVl1eS/H3sZQcjCTD//wy1E6ghZUlE0qdSnyrutXUPFpBb5le3QgMuLExi/E=
Received: from DM6PR08MB6396.namprd08.prod.outlook.com (10.141.162.200) by
 DM6PR08MB6265.namprd08.prod.outlook.com (10.141.162.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.19; Thu, 23 Jan 2020 09:01:51 +0000
Received: from DM6PR08MB6396.namprd08.prod.outlook.com
 ([fe80::16f:afdc:fc40:6c1c]) by DM6PR08MB6396.namprd08.prod.outlook.com
 ([fe80::16f:afdc:fc40:6c1c%3]) with mapi id 15.20.2644.028; Thu, 23 Jan 2020
 09:01:51 +0000
From: "Shivamurthy Shastri (sshivamurthy)" <sshivamurthy@micron.com>
To: 'Miquel Raynal' <miquel.raynal@bootlin.com>
Subject: RE: [EXT] Re: [PATCH 3/4] mtd: spinand: Add M70A series Micron SPI
 NAND devices
Thread-Topic: [EXT] Re: [PATCH 3/4] mtd: spinand: Add M70A series Micron SPI
 NAND devices
Thread-Index: AQHVz3qxhHT4F5gqHEqpiIf5nVR3gqfzXyrAgAHClgCAAAH50IAAG+wAgAEtuLA=
Date: Thu, 23 Jan 2020 09:01:50 +0000
Message-ID: <DM6PR08MB63964244F066A3BC2220AD1EB80F0@DM6PR08MB6396.namprd08.prod.outlook.com>
References: <20200119145432.10405-1-sshivamurthy@micron.com>
 <20200119145432.10405-4-sshivamurthy@micron.com>
 <20200120111626.7cb2f6c5@xps13>
 <MN2PR08MB6397062A37D39287E820A0D8B80D0@MN2PR08MB6397.namprd08.prod.outlook.com>
 <20200121144034.05a8f49d@xps13>
 <MN2PR08MB6397EE91C508B6DA2263F3D6B80D0@MN2PR08MB6397.namprd08.prod.outlook.com>
 <20200121162734.464123fd@xps13>
In-Reply-To: <20200121162734.464123fd@xps13>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-rorf: true
x-dg-ref: PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNcc3NoaXZhbXVydGh5XGFwcGRhdGFccm9hbWluZ1wwOWQ4NDliNi0zMmQzLTRhNDAtODVlZS02Yjg0YmEyOWUzNWJcbXNnc1xtc2ctZmJkODI3YWQtM2RiZS0xMWVhLWIxZTMtOTgzYjhmNzQ1MjUxXGFtZS10ZXN0XGZiZDgyN2FmLTNkYmUtMTFlYS1iMWUzLTk4M2I4Zjc0NTI1MWJvZHkudHh0IiBzej0iMzU4NCIgdD0iMTMyMjQyNDM3MDc2NzcxNDc4IiBoPSJRWHVtOWVxbHJLZXMyYlgyRm5tYWxNakNnOEE9IiBpZD0iIiBibD0iMCIgYm89IjEiIGNpPSJjQUFBQUVSSFUxUlNSVUZOQ2dVQUFIQUFBQUNXWWpHK3k5SFZBUk82WEp5MjVTQXhFN3BjbkxibElERUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUJBQUFCQUFBQTk2QS9wQUFBQUFBQUFBQUFBQUFBQUE9PSIvPjwvbWV0YT4=
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=sshivamurthy@micron.com; 
x-originating-ip: [165.225.80.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f4671bdb-ed23-4e60-fc21-08d79fe2e2a4
x-ms-traffictypediagnostic: DM6PR08MB6265:|DM6PR08MB6265:|DM6PR08MB6265:
x-microsoft-antispam-prvs: <DM6PR08MB6265D444EE8CD3A157F74EF1B80F0@DM6PR08MB6265.namprd08.prod.outlook.com>
x-ms-exchange-transport-forked: True
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 029174C036
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(366004)(39860400002)(136003)(396003)(199004)(189003)(71200400001)(52536014)(478600001)(5660300002)(86362001)(81156014)(81166006)(2906002)(6506007)(54906003)(8936002)(76116006)(316002)(6916009)(66574012)(55016002)(7696005)(186003)(55236004)(8676002)(64756008)(66556008)(33656002)(66446008)(66946007)(66476007)(9686003)(4326008)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR08MB6265;
 H:DM6PR08MB6396.namprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: micron.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9+MChVwQuLDeVnVdeoK6N2Dio7Qbc9gYKdznyXcUB/x+23iZqyZ+bI1rGpPN1vk3AdH4xhiRkaPzkqTawKjDt3IY+0SbbWKWJhZAH+I39fyHCQ3+NKeBVm2GQJWxZPuoH9FytaHT+HpOgyFeP6GPXDkhowH6SS2qbn5JrHnfCCVBTn6BGoCYaZMp3+KmjDAXOwVbS3p9MNvgT+Vb1eU43TjXk7L468Qmr1JSpsFfzp4F2keRnUg/Q9djKb/ONz/XnrQ8UUsaLX2C0ln/RBEijOxHcEqszQa4yc3dpmIVEsIcWw2UIMFecQtNZMwxHGjRH/yK9GRDvycEz/lF4HHlfFaWqIHlMfyvw7jZKGgvAqBSopY5vt6sVNLWrBmbs/5i2mnZnrveu6uTkeMpCwu8QzVLlfRUgx6Djbm1YyOAtMkI2Pk1McrCapZwsZpMJUj8
MIME-Version: 1.0
X-OriginatorOrg: micron.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f4671bdb-ed23-4e60-fc21-08d79fe2e2a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2020 09:01:50.9157 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f38a5ecd-2813-4862-b11b-ac1d563c806f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ADapuLkBw7xXZkFfvMXLa/ppXWqhrsrCeh6C6j3mWxmAWsYuRjQ2VHF0aq0itCHh8LGKQ1ztKxEalBgKPc2Gfg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR08MB6265
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_010154_319251_15E504B4 
X-CRM114-Status: GOOD (  23.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.76.50 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>,
 Shivamurthy Shastri <shiva.linuxworks@gmail.com>,
 Richard Weinberger <richard@nod.at>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgTWlxdWVsLA0KDQo+IA0KPiBIaSBTaGl2YW11cnRoeSwNCj4gDQo+ICJTaGl2YW11cnRoeSBT
aGFzdHJpIChzc2hpdmFtdXJ0aHkpIiA8c3NoaXZhbXVydGh5QG1pY3Jvbi5jb20+IHdyb3RlDQo+
IG9uDQo+IFR1ZSwgMjEgSmFuIDIwMjAgMTQ6NTk6MTEgKzAwMDA6DQo+IA0KPiA+IEhpIE1pcXVl
bCwNCj4gPg0KPiA+ID4NCj4gPiA+IEhpIFNoaXZhbXVydGh5LA0KPiA+ID4NCj4gPiA+ICJTaGl2
YW11cnRoeSBTaGFzdHJpIChzc2hpdmFtdXJ0aHkpIiA8c3NoaXZhbXVydGh5QG1pY3Jvbi5jb20+
DQo+IHdyb3RlDQo+ID4gPiBvbg0KPiA+ID4gVHVlLCAyMSBKYW4gMjAyMCAxMjoyMzoyMCArMDAw
MDoNCj4gPiA+DQo+ID4gPiA+IEhpIE1pcXVlbCwNCj4gPiA+ID4NCj4gPiA+ID4gPg0KPiA+ID4g
PiA+IEhpIFNoaXZhLA0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gVGhpcyBpcyByZW1hcmsgY29tbW9u
IHRvIHRoZSBmb3VyIHBhdGNoZXM6IHlvdSBtaXNzIHRoZSAndjInIHByZWZpeCBpbg0KPiA+ID4g
PiA+IHRoZSBvYmplY3QuDQo+ID4gPiA+ID4NCj4gPiA+ID4NCj4gPiA+ID4gU29ycnkgZm9yIHRo
aXMgbWlzdGFrZS4NCj4gPiA+ID4gSSByZWNvZ25pemVkIHRoaXMgYWZ0ZXIgc2VuZGluZyBvdXQg
dGhlIHBhdGNoZXMuDQo+ID4gPiA+DQo+ID4gPiA+ID4gc2hpdmEubGludXh3b3Jrc0BnbWFpbC5j
b20gd3JvdGUgb24gU3VuLCAxOSBKYW4gMjAyMCAxNTo1NDozMQ0KPiArMDEwMDoNCj4gPiA+ID4g
Pg0KPiA+ID4gPiA+ID4gRnJvbTogU2hpdmFtdXJ0aHkgU2hhc3RyaSA8c3NoaXZhbXVydGh5QG1p
Y3Jvbi5jb20+DQo+ID4gPiA+ID4gPg0KPiA+ID4gPiA+ID4gQWRkIGRldmljZSB0YWJsZSBmb3Ig
TTcwQSBzZXJpZXMgTWljcm9uIFNQSSBOQU5EIGRldmljZXMuDQo+ID4gPiA+ID4gPg0KPiA+ID4g
PiA+ID4gV2hpbGUgYXQgaXQsIGRpc2FibGUgdGhlIENvbnRpbnVvdXMgUmVhZCBmZWF0dXJlIHdo
aWNoIGlzIGVuYWJsZWQgYnkNCj4gPiA+ID4gPiA+IGRlZmF1bHQuDQo+ID4gPiA+ID4NCj4gPiA+
ID4gPiBDYW4geW91IHBsZWFzZSBnaXZlIHVzIG1vcmUgZGV0YWlsIG9uIHdoeSB0aGlzIGlzIGFu
IGlzc3VlPw0KPiA+ID4gPg0KPiA+ID4gPiAiQ29udGludW91cyBSZWFkIiBpcyB0aGUgbmV3IGZl
YXR1cmUgYWRkZWQgYnkgdGhlIE1pY3JvbiBmb3INCj4gPiA+ID4gTTcwQSBzZXJpZXMgZGV2aWNl
cy4gSWYgdGhpcyBmZWF0dXJlIGlzIGVuYWJsZWQsIHRoZSBSRUFEIGNvbW1hbmQNCj4gPiA+ID4g
ZG9lc24ndCBvdXRwdXQgdGhlIE9PQiBhcmVhLiBUaGUgZm9sbG93aW5nIHNob3J0IGRlc2NyaXB0
aW9uDQo+ID4gPiA+IGRlc2NyaWJlcyB0aGlzIGZlYXR1cmUuDQo+ID4gPiA+DQo+ID4gPiA+IERl
c2NyaXB0aW9uOg0KPiA+ID4gPiBJZiB0aGUgQ29udGludW91cyBSZWFkIGZlYXR1cmUgaXMgZW5h
YmxlZCwgdGhlIGRldmljZSBwcm92aWRlcw0KPiA+ID4gPiB0aGUgY2FwYWJpbGl0eSB0byByZWFk
IHRoZSB3aG9sZSBibG9jayB3aXRoIGEgc2luZ2xlIGNvbW1hbmQuDQo+ID4gPiA+IEhvd2V2ZXIs
IHRoZSByZWFkIGNvbW1hbmQgZG9lc24ndCBvdXRwdXQgdGhlIE9PQiBhcmVhLg0KPiA+ID4gPg0K
PiA+ID4gPiBSZWFkIGNvbW1hbmQgYmVoYXZpb3IgKGlmIENvbnRpbnVvdXMgUmVhZCBlbmFibGVk
KToNCj4gPiA+ID4gVGhlIFJFQUQgQ0FDSEUgY29tbWFuZCBkb2Vzbid0IHJlcXVpcmUgdGhlIHN0
YXJ0aW5nIGNvbHVtbg0KPiBhZGRyZXNzLg0KPiA+ID4gPiBUaGUgZGV2aWNlIGFsd2F5cyBvdXRw
dXQgdGhlIGRhdGEgc3RhcnRpbmcgZnJvbSB0aGUgZmlyc3QgY29sdW1uIG9mIHRoZQ0KPiA+ID4g
PiBjYWNoZSByZWdpc3RlciwgYW5kIG9uY2UgdGhlIGVuZCBvZiB0aGUgY2FjaGUgcmVnaXN0ZXIg
cmVhY2hlZCwgdGhlDQo+IGRhdGENCj4gPiA+ID4gb3V0cHV0IGNvbnRpbnVlcyB0aHJvdWdoIHRo
ZSBuZXh0IHBhZ2UuIFdpdGggdGhlIGNvbnRpbnVvdXMgcmVhZA0KPiBtb2RlLA0KPiA+ID4gPiBp
dCBpcyBwb3NzaWJsZSB0byByZWFkIG91dCB0aGUgZW50aXJlIGJsb2NrIHVzaW5nIGEgc2luZ2xl
IFJFQUQgY29tbWFuZCwNCj4gYW5kDQo+ID4gPiA+IG9uY2UgdGhlIGVuZCBvZiB0aGUgYmxvY2sg
cmVhY2hlZCwgdGhlIG91dHB1dCBwaW5zIGJlY29tZSBIaWdoLVoNCj4gc3RhdGUuDQo+ID4gPg0K
PiA+ID4gT2sgSSB1bmRlcnN0YW5kIGJldHRlci4gSW4gdGhpcyBjYXNlIHRoZXJlIGlzIG5vIG5l
ZWQgdG8gc3BsaXQgdGhpcw0KPiA+ID4gY29tbWl0LCBpbnN0ZWFkIGp1c3QgcmV3b3JkIHRoZSBj
b21taXQgbG9nIHRvIHNvbWV0aGluZyBsaWtlOg0KPiA+ID4NCj4gPiA+IC0tLT44LS0tDQo+ID4g
PiBBZGQgZGV2aWNlIHRhYmxlIGZvciBNNzBBIHNlcmllcyBNaWNyb24gU1BJLU5BTkQgZGV2aWNl
cy4NCj4gPiA+DQo+ID4gPiBBcyBvcHBvc2VkIHRvIHRoZSBNNjBBIHNlcmllcyBhbHJlYWR5IHN1
cHBvcnRlZCwgTTcwQSBwYXJ0cyBoYXZlIHRoZQ0KPiA+ID4gIkNvbnRpbnVvdXMgUmVhZCIgZmVh
dHVyZSBlbmFibGVkIGJ5IGRlZmF1bHQgd2hpY2ggZG9lcyBub3QgZml0IHRoZQ0KPiA+ID4gc3Vi
c3lzdGVtIG5lZWRzLg0KPiA+ID4NCj4gPiA+IDxoZXJlIGV4cGxhaW4gdGhlIGZlYXR1cmU+Lg0K
PiA+ID4NCj4gPiA+IEhlbmNlLCB3ZSBkaXNhYmxlIHRoZSBmZWF0dXJlIGF0IHByb2JlIHRpbWUu
DQo+ID4gPiAtLS04PC0tLQ0KPiA+ID4NCj4gPg0KPiA+IFN1cmUsIEkgd2lsbCBjaGFuZ2UgYXMg
cGVyIHlvdXIgc3VnZ2VzdGlvbi4NCj4gPg0KPiA+ID4gSG93ZXZlciwgYmVsb3csIHlvdSBkaXNh
YmxlIHRoaXMgYml0IGZvciBhbGwgdGhlIHBhcnRzLiBJcyB0aGlzIHJlYWxseQ0KPiA+ID4gb2s/
IFNvdWxkbid0IHdlIG1ha2UgaXQgbW9yZSBzcGVjaWZpYyB0byB0aGlzIHNlcmllcz8NCj4gPg0K
PiA+IEl0IGlzIG9rIGJlY2F1c2UgdGhpcyBiaXQgaXMgdW51c2VkIGluIG90aGVyIHNlcmllcy4N
Cj4gDQo+IEkgd291bGQgcmF0aGVyIHByZWZlciB0byBhdm9pZCB0aGlzIGtpbmQgb2YgYXJyYW5n
ZW1lbnQuIFBsZWFzZSBjaGFuZ2UNCj4gdGhpcyBiaXQgb25seSBmb3IgdGhlIHNlcmllcyB3aGlj
aCBoYXMgaXQuDQoNClRoZXJlIGlzIG5vIG90aGVyIHdheSB0byBpZGVudGlmeSB0aGUgc2VyaWVz
IG9mIHRoZSBkZXZpY2UgZXhjZXB0IGJ5IHVzaW5nIHRoZQ0KImZsYWdzIiBmcm9tIHRoZSBzdHJ1
Y3R1cmUgc3BpbmFuZF9pbmZvLiBTbyBJIHdpbGwgcHJvY2VlZCB3aXRoIHRoaXMgYXBwcm9hY2gu
DQoNCjEuIEluIHNwaW5hbmQuaCAtLT4gSSB3aWxsIGNyZWF0ZSBtYWNybw0KDQojZGVmaW5lIFNQ
SU5BTkRfSEFTX0NSX0ZFQVRfQklUICAgICAgICAgQklUKDEpDQoNCjIuIFVzZSB0aGlzIGZsYWcg
aW5zaWRlIG1pY3Jvbl9zcGluYW5kX2luaXQgZnVuY3Rpb24gdG8gaWRlbnRpZnkgdGhlIGRldmlj
ZS4NCg0KDQo+IA0KPiANCj4gVGhhbmtzLA0KPiBNaXF1w6hsDQoNClRoYW5rcywNClNoaXZhDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
