Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5DEB7A44
	for <lists+linux-mtd@lfdr.de>; Thu, 19 Sep 2019 15:15:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HOY9caXFZhWnQozVxFvh+0umPJGxAgSpkGtJv0mgGb4=; b=NBk46u3SysXZLW
	7XLP2ZsBmvnQztjuXHaCzKhaLoo/MqKQrMenBbeiBU4hRzA/feiXCGvrWbb7028W1ABVVVhCHr8wp
	PnBBKM2XUtNOhj34widWlvGVeZXjB1JWXHv8jpN/k1lTvCoHYzlWnrr+SKMydBoIWJjFVtXWDCGjd
	q0uKtZITJnSuGluPk6FQu8C/Xo8gry6G1CwRFyaTCdk46SeR670Dp0/PXhe2ruh4e7vVKayC8U/Vi
	1Pd8BCxFCL1JsoEpwnHYHrAl/uoZYpWiZMkNLwob86xCeFFbufII9LOnUG/8+PkNJTj5I5hhUSIvZ
	9zUxpNX3oa1RCYNQpLfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAwHU-0002iV-0C; Thu, 19 Sep 2019 13:15:32 +0000
Received: from skedge04.snt-world.com ([91.208.41.69])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAwHG-0002h9-8h
 for linux-mtd@lists.infradead.org; Thu, 19 Sep 2019 13:15:20 +0000
Received: from sntmail10s.snt-is.com (unknown [10.203.32.183])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge04.snt-world.com (Postfix) with ESMTPS id 7C16867A7D5;
 Thu, 19 Sep 2019 15:15:09 +0200 (CEST)
Received: from sntmail14r.snt-is.com (10.203.32.184) by sntmail10s.snt-is.com
 (10.203.32.183) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Thu, 19 Sep
 2019 15:15:09 +0200
Received: from sntmail14r.snt-is.com ([fe80::c8f3:eae9:52c2:11a8]) by
 sntmail14r.snt-is.com ([fe80::c8f3:eae9:52c2:11a8%3]) with mapi id
 15.01.1713.004; Thu, 19 Sep 2019 15:15:09 +0200
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Miquel Raynal <miquel.raynal@bootlin.com>, Piotr Sroka <piotrs@cadence.com>
Subject: Re: [PATCH] - change calculating of position page containing BBM
Thread-Topic: [PATCH] - change calculating of position page containing BBM
Thread-Index: AQHVbufQ3Mlqal1wVUGzYKwyTjL7Iacy1HqAgAAEsIA=
Date: Thu, 19 Sep 2019 13:15:08 +0000
Message-ID: <f03d93a5-4393-2405-b597-80b762059f01@kontron.de>
References: <20190919124139.10856-1-piotrs@cadence.com>
 <20190919145819.66e74aef@xps13>
In-Reply-To: <20190919145819.66e74aef@xps13>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <8DAB28686304E940B71E62AFB0404D64@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: 7C16867A7D5.A24C5
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: bbrezillon@kernel.org, computersforpeace@gmail.com,
 dwmw2@infradead.org, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, marek.vasut@gmail.com,
 miquel.raynal@bootlin.com, piotrs@cadence.com, richard@nod.at,
 vigneshr@ti.com
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_061518_638225_342EE6CB 
X-CRM114-Status: GOOD (  18.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [91.208.41.69 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Boris
 Brezillon <bbrezillon@kernel.org>, Richard Weinberger <richard@nod.at>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Marek
 Vasut <marek.vasut@gmail.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T24gMTkuMDkuMTkgMTQ6NTgsIE1pcXVlbCBSYXluYWwgd3JvdGU6DQo+IEhpIFBpb3RyLA0KPiAN
Cj4gUGlvdHIgU3Jva2EgPHBpb3Ryc0BjYWRlbmNlLmNvbT4gd3JvdGUgb24gVGh1LCAxOSBTZXAg
MjAxOSAxMzo0MTozNQ0KPiArMDEwMDoNCj4gDQo+PiBDaGFuZ2UgY2FsY3VsYXRpbmcgb2YgcG9z
aXRpb24gcGFnZSBjb250YWluaW5nIEJCTQ0KPj4NCj4+IElmIG5vbmUgb2YgQkJNIGZsYWdzIGlz
IHNldCB0aGVuIGZ1bmN0aW9uIG5hbmRfYmJtX2dldF9uZXh0X3BhZ2UNCj4+IHJlcG9ydHMgRUlO
VkFMLiBJdCBjYXVzZXMgdGhhdCBCQk0gaXMgbm90IHJlYWQgYXQgYWxsIGR1cmluZyBzY2Fubmlu
Zw0KPj4gZmFjdG9yeSBiYWQgYmxvY2tzLiBUaGUgcmVzdWx0IGlzIHRoYXQgdGhlIEJCVCB0YWJs
ZSBpcyBidWlsZCB3aXRob3V0DQo+PiBjaGVja2luZyBmYWN0b3J5IEJCTSBhdCBhbGwuIEZvciBN
aWNyb24gZmxhc2ggbWVtb3JpZXMgbm9uZSBvZiB0aGlzDQo+PiBmbGFnIGlzIHNldCBpZiBwYWdl
IHNpemUgaXMgZGlmZmVyZW50IHRoYW4gMjA0OCBieXRlcy4NCg0KSSB3b25kZXIgaWYgaXQgd291
bGRuJ3QgYmUgYmV0dGVyIHRvIGZpeCB0aGUgTWljcm9uIGRyaXZlciBpbnN0ZWFkOg0KDQotLS0g
YS9kcml2ZXJzL210ZC9uYW5kL3Jhdy9uYW5kX21pY3Jvbi5jDQorKysgYi9kcml2ZXJzL210ZC9u
YW5kL3Jhdy9uYW5kX21pY3Jvbi5jDQpAQCAtNDQ4LDYgKzQ0OCw4IEBAIHN0YXRpYyBpbnQgbWlj
cm9uX25hbmRfaW5pdChzdHJ1Y3QgbmFuZF9jaGlwICpjaGlwKQ0KDQogICAgICAgICBpZiAobXRk
LT53cml0ZXNpemUgPT0gMjA0OCkNCiAgICAgICAgICAgICAgICAgY2hpcC0+b3B0aW9ucyB8PSBO
QU5EX0JCTV9GSVJTVFBBR0UgfA0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIE5B
TkRfQkJNX1NFQ09ORFBBR0U7DQorICAgICAgIGVsc2UNCisgICAgICAgICAgICAgICBjaGlwLT5v
cHRpb25zIHw9IE5BTkRfQkJNX0ZJUlNUUEFHRTsNCg0KICAgICAgICAgb25kaWUgPSBtaWNyb25f
c3VwcG9ydHNfb25fZGllX2VjYyhjaGlwKTsNCg0KDQo+IA0KPiAibm9uZSBvZiB0aGVzZSBmbGFn
cyBhcmUgc2V0Ig0KPiANCj4+DQo+PiBUaGlzIHBhdGNoIGNoYW5nZXMgdGhlIG5hbmRfYmJtX2dl
dF9uZXh0X3BhZ2UgZnVuY3Rpb24uDQo+IA0KPiAiQWRkcmVzcyB0aGlzIHJlZ3Jlc3Npb24gYnkg
Y2hhbmdpbmcgdGhlDQo+IG5hbmRfYmJtX2dldF9uZXh0X3BhZ2VfZnVuY3Rpb24uIg0KPiANCj4+
IEl0IHdpbGwgcmV0dXJuIDAgaWYgbm9uZSBvZiBCQk0gZmxhZyBpcyBzZXQgYW5kIHBhZ2UgcGFy
YW1ldGVyIGlzIDAuDQo+IA0KPiAgICAgICAgICAgICAgICAgICAgICAgIG5vIEJCTSBmbGFnIGlz
IHNldA0KPiANCj4+IEFmdGVyIHRoYXQgbW9kaWZpY2F0aW9uIHdheSBvZiBkaXNjb3ZlcmluZyBm
YWN0b3J5IGJhZCBibG9ja3Mgd2lsbCB3b3JrDQo+PiBzaW1pbGFyIGFzIGluIGtlcm5lbCB2ZXJz
aW9uIDUuMS4NCj4+DQo+IA0KPiBGaXhlcyArIHN0YWJsZSB0YWdzIHdvdWxkIGJlIGdyZWF0IQ0K
PiANCj4+IFNpZ25lZC1vZmYtYnk6IFBpb3RyIFNyb2thIDxwaW90cnNAY2FkZW5jZS5jb20+DQo+
PiAtLS0NCj4+ICAgZHJpdmVycy9tdGQvbmFuZC9yYXcvbmFuZF9iYXNlLmMgfCA4ICsrKysrKy0t
DQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+
Pg0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbXRkL25hbmQvcmF3L25hbmRfYmFzZS5jIGIvZHJp
dmVycy9tdGQvbmFuZC9yYXcvbmFuZF9iYXNlLmMNCj4+IGluZGV4IDVjMmMzMGE3ZGZmYS4uZjY0
ZTNiNjYwNWM2IDEwMDY0NA0KPj4gLS0tIGEvZHJpdmVycy9tdGQvbmFuZC9yYXcvbmFuZF9iYXNl
LmMNCj4+ICsrKyBiL2RyaXZlcnMvbXRkL25hbmQvcmF3L25hbmRfYmFzZS5jDQo+PiBAQCAtMjky
LDEyICsyOTIsMTYgQEAgaW50IG5hbmRfYmJtX2dldF9uZXh0X3BhZ2Uoc3RydWN0IG5hbmRfY2hp
cCAqY2hpcCwgaW50IHBhZ2UpDQo+PiAgIAlzdHJ1Y3QgbXRkX2luZm8gKm10ZCA9IG5hbmRfdG9f
bXRkKGNoaXApOw0KPj4gICAJaW50IGxhc3RfcGFnZSA9ICgobXRkLT5lcmFzZXNpemUgLSBtdGQt
PndyaXRlc2l6ZSkgPj4NCj4+ICAgCQkJIGNoaXAtPnBhZ2Vfc2hpZnQpICYgY2hpcC0+cGFnZW1h
c2s7DQo+PiArCXVuc2lnbmVkIGludCBiYm1fZmxhZ3MgPSBOQU5EX0JCTV9GSVJTVFBBR0UgfCBO
QU5EX0JCTV9TRUNPTkRQQUdFDQo+PiArCQl8IE5BTkRfQkJNX0xBU1RQQUdFOw0KPj4gICANCj4+
ICsJaWYgKHBhZ2UgPT0gMCAmJiAhKGNoaXAtPm9wdGlvbnMgJiBiYm1fZmxhZ3MpKQ0KPj4gKwkJ
cmV0dXJuIDA7DQo+PiAgIAlpZiAocGFnZSA9PSAwICYmIGNoaXAtPm9wdGlvbnMgJiBOQU5EX0JC
TV9GSVJTVFBBR0UpDQo+PiAgIAkJcmV0dXJuIDA7DQo+PiAtCWVsc2UgaWYgKHBhZ2UgPD0gMSAm
JiBjaGlwLT5vcHRpb25zICYgTkFORF9CQk1fU0VDT05EUEFHRSkNCj4+ICsJaWYgKHBhZ2UgPD0g
MSAmJiBjaGlwLT5vcHRpb25zICYgTkFORF9CQk1fU0VDT05EUEFHRSkNCj4+ICAgCQlyZXR1cm4g
MTsNCj4+IC0JZWxzZSBpZiAocGFnZSA8PSBsYXN0X3BhZ2UgJiYgY2hpcC0+b3B0aW9ucyAmIE5B
TkRfQkJNX0xBU1RQQUdFKQ0KPj4gKwlpZiAocGFnZSA8PSBsYXN0X3BhZ2UgJiYgY2hpcC0+b3B0
aW9ucyAmIE5BTkRfQkJNX0xBU1RQQUdFKQ0KPj4gICAJCXJldHVybiBsYXN0X3BhZ2U7DQo+PiAg
IA0KPj4gICAJcmV0dXJuIC1FSU5WQUw7DQo+IA0KPiBMb29rZ3MgZ29vZCBvdGhlcndpc2UuDQo+
IA0KPiBUaGFua3MsDQo+IE1pcXXDqGwNCj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxp
c3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQv
Cg==
