Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C65BD51871
	for <lists+linux-mtd@lfdr.de>; Mon, 24 Jun 2019 18:23:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+T66U2IqA1VHvo4JecFU7YvmO9VhI1sl2+RKJVOvwnU=; b=ulx7CEE09V6Nxk
	giIXXj3vZ2AuNr9sKu81E6qvI9doDm0e7dJs3gR0CZjcz+XYIOrPF26UW838PJcgxKr5ZJMdwOUoF
	NA5X+LIzYAPN5Rn5lp78mVcECXAzsbINZsImDMbx3oOZZT72ssuW+6KQ5IQsYwPodUns7cSNc6l2o
	0c6BapBWOs2bUFaF5a6ahn6hu9leNmAQQxq5anOPyaNq+4UIlRnarbN33sC5kz80YRkb9bWH56sZL
	cdkDW0xwE15LTW3qxUqKFGCJtTGUU8+zzMyXy5Mae1mUMLnFxb74CkXD7bGXIKLk42RVp47HuFHyW
	YYJ1OSCpta87HUw3IZ/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfRkU-00030O-Mp; Mon, 24 Jun 2019 16:23:18 +0000
Received: from smtp.asem.it ([151.1.184.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfRj1-0002HL-6C
 for linux-mtd@lists.infradead.org; Mon, 24 Jun 2019 16:21:50 +0000
Received: from webmail.asem.it by asem.it (smtp.asem.it)
 (SecurityGateway 5.5.0) with ESMTP id SG003966527.MSG 
 for <linux-mtd@lists.infradead.org>; Mon, 24 Jun 2019 18:21:42 +0200S
Received: from ASAS044.asem.intra (172.16.16.44) by ASAS044.asem.intra
 (172.16.16.44) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1261.35; Mon, 24
 Jun 2019 18:21:42 +0200
Received: from ASAS044.asem.intra ([::1]) by ASAS044.asem.intra ([::1]) with
 mapi id 15.01.1261.035; Mon, 24 Jun 2019 18:21:42 +0200
From: Flavio Suligoi <f.suligoi@asem.it>
To: Vignesh Raghavendra <vigneshr@ti.com>, "Tudor.Ambarus@microchip.com"
 <Tudor.Ambarus@microchip.com>
Subject: RE: [PATCH 1/1] mtd: spi-nor: add a presence check for non-JEDEC spi
 nor
Thread-Topic: [PATCH 1/1] mtd: spi-nor: add a presence check for non-JEDEC spi
 nor
Thread-Index: AQHU3+V6wpgiM/sAo06qkyb8EDJ5fKapDvWAgAHkbDD///bDAIAAUVwAgABSbEA=
Date: Mon, 24 Jun 2019 16:21:42 +0000
Message-ID: <6f718f1fb95e4910b9f0e3b7ea42aa61@asem.it>
References: <1553172946-2251-1-git-send-email-f.suligoi@asem.it>
 <55f74662-c5f6-2cdf-f1a0-c685f7ff1913@microchip.com>
 <c7ce7a2966a4414a90e84f30929cede1@asem.it>
 <7fcfd18c-45c9-37a7-270e-cd8b95796903@microchip.com>
 <9412e6bf-e984-fd06-bc53-dd8e8198c4f6@ti.com>
In-Reply-To: <9412e6bf-e984-fd06-bc53-dd8e8198c4f6@ti.com>
Accept-Language: it-IT, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.17.208]
MIME-Version: 1.0
X-SGHeloLookup-Result: pass smtp.helo=webmail.asem.it (ip=172.16.16.44)
X-SGSPF-Result: none (smtp.asem.it)
X-SGOP-RefID: str=0001.0A090209.5D10F897.0047, ss=1, re=0.000, recu=0.000,
 reip=0.000, cl=1, cld=1, fgs=0 (_st=1 _vt=0 _iwf=0)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_092147_804594_AD753FA5 
X-CRM114-Status: GOOD (  35.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [151.1.184.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
 "linux-kernel@vger.kernel.or" <linux-kernel@vger.kernel.or>,
 "marek.vasut@gmail.com" <marek.vasut@gmail.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "richard@nod.at" <richard@nod.at>,
 "computersforpeace@gmail.com" <computersforpeace@gmail.com>,
 "dwmw2@infradead.org" <dwmw2@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgVmlnbmVzaCBhbmQgVHVkb3IsDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4g
RnJvbTogVmlnbmVzaCBSYWdoYXZlbmRyYSA8dmlnbmVzaHJAdGkuY29tPg0KPiBTZW50OiBsdW5l
ZMOsIDI0IGdpdWdubyAyMDE5IDE1OjEyDQo+IFRvOiBUdWRvci5BbWJhcnVzQG1pY3JvY2hpcC5j
b207IEZsYXZpbyBTdWxpZ29pIDxmLnN1bGlnb2lAYXNlbS5pdD4NCj4gQ2M6IGxpbnV4LW10ZEBs
aXN0cy5pbmZyYWRlYWQub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3I7DQo+IHJpY2hh
cmRAbm9kLmF0OyBiYnJlemlsbG9uQGtlcm5lbC5vcmc7IGNvbXB1dGVyc2ZvcnBlYWNlQGdtYWls
LmNvbTsNCj4gZHdtdzJAaW5mcmFkZWFkLm9yZzsgbWFyZWsudmFzdXRAZ21haWwuY29tDQo+IFN1
YmplY3Q6IFJlOiBbUEFUQ0ggMS8xXSBtdGQ6IHNwaS1ub3I6IGFkZCBhIHByZXNlbmNlIGNoZWNr
IGZvciBub24tSkVERUMNCj4gc3BpIG5vcg0KPiANCj4gDQo+IA0KPiBPbiAyNC8wNi8xOSAxOjUw
IFBNLCBUdWRvci5BbWJhcnVzQG1pY3JvY2hpcC5jb20gd3JvdGU6DQo+ID4gSGksIEZsYXZpbywg
TWFyZWssIFZpZ25lc2gsDQo+ID4NCj4gPiBPbiAwNi8yNC8yMDE5IDEwOjA3IEFNLCBGbGF2aW8g
U3VsaWdvaSB3cm90ZToNCj4gPj4gRXh0ZXJuYWwgRS1NYWlsDQo+ID4+DQo+ID4+DQo+ID4+IEhp
IFR1ZG9yLA0KPiA+Pg0KPiA+Pj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPj4+IEZy
b206IFR1ZG9yLkFtYmFydXNAbWljcm9jaGlwLmNvbSA8VHVkb3IuQW1iYXJ1c0BtaWNyb2NoaXAu
Y29tPg0KPiA+Pj4gU2VudDogZG9tZW5pY2EgMjMgZ2l1Z25vIDIwMTkgMDY6MDANCj4gPj4+IFRv
OiBGbGF2aW8gU3VsaWdvaSA8Zi5zdWxpZ29pQGFzZW0uaXQ+OyBtYXJlay52YXN1dEBnbWFpbC5j
b207DQo+ID4+PiBkd213MkBpbmZyYWRlYWQub3JnOyBjb21wdXRlcnNmb3JwZWFjZUBnbWFpbC5j
b207DQo+IGJicmV6aWxsb25Aa2VybmVsLm9yZzsNCj4gPj4+IHJpY2hhcmRAbm9kLmF0DQo+ID4+
PiBDYzogbGludXgtbXRkQGxpc3RzLmluZnJhZGVhZC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtl
cm5lbC5vcg0KPiA+Pj4gU3ViamVjdDogUmU6IFtQQVRDSCAxLzFdIG10ZDogc3BpLW5vcjogYWRk
IGEgcHJlc2VuY2UgY2hlY2sgZm9yIG5vbi0NCj4gSkVERUMNCj4gPj4+IHNwaSBub3INCj4gPj4+
DQo+ID4+PiBIaSwgRmxhdmlvLA0KPiA+Pj4NCj4gPj4+IE9uIDAzLzIxLzIwMTkgMDI6NTUgUE0s
IEZsYXZpbyBTdWxpZ29pIHdyb3RlOg0KPiA+Pj4+IEV4dGVybmFsIEUtTWFpbA0KPiA+Pj4+DQo+
ID4+Pj4NCj4gPj4+PiBUaGlzIHBhdGNoIGZpeGVzIHRoZSBmb2xsb3dpbmcga2VybmVsIGVycm9y
IG1lc3NhZ2U6DQo+ID4+Pj4NCj4gPj4+PiAiZmxhc2ggb3BlcmF0aW9uIHRpbWVkIG91dCINCj4g
Pj4+Pg0KPiA+Pj4+IHRoYXQgb2NjdXJzIHdoZW4gYSBub24tSkVERUMgc3BpLW5vciwgZGVjbGFy
ZWQgaW4gYSBEZXZpY2UgVHJlZSwgYnV0DQo+IG5vdA0KPiA+Pj4+IHBoeXNpY2FsbHkgcHJlc2Vu
dCBvbiB0aGUgYm9hcmQsIGlzIGludm9sdmVkIGluIGEgd3JpdGUgb3BlcmF0aW9uLA0KPiBhczoN
Cj4gPj4+Pg0KPiANCj4gRFQgbm9kZSBzaG91bGQgaGF2ZSBzdGF0dXMgPSAiZGlzYWJsZWQiIGlm
IGZsYXNoIGlzIG5vdCBwaHlzaWNhbGx5DQo+IHByZXNlbnQgb24gdGhlIGJvYXJkLg0KPiANCj4g
Pj4+PiBjYXQgZGF0YWZpbGUgPiAvZGV2L210ZDANCj4gPj4+Pg0KPiA+Pj4+IEluIHNvbWUgY2Fz
ZXMsIHdpdGggZW5vdWdoIHF1YW50aXR5IG9mIGRhdGEsIHRoZSB3cml0aW5nIGhhbmdzIGZvcg0K
PiA+Pj4gbWludXRlcy4NCj4gPj4+Pg0KPiA+Pj4+IFRoaXMgc2l0dWF0aW9uIGNhbiBoYXBwZW4s
IGZvciBleGFtcGxlLCBpbiBzb21lIGVtYmVkZGVkIHN5c3RlbXMsDQo+IHdoZW4NCj4gPj4+PiBh
IG5vbi1KRURFQyBzcGktbm9yIGlzIG1vdW50ZWQgdXNpbmcgYSByZW1vdmFibGUgYWRkLW9uIGJv
YXJkLiBTbyBpcw0KPiA+Pj4+IGltcG9ydGFudCB0byBmaW5kIGEgbWV0aG9kIHRvIGNoZWNrIGEg
bm9uLUpFREVDIGRldmljZSBwcmVzZW5jZQ0KPiBiZWZvcmUNCj4gPj4+PiB1c2luZyBpdC4NCj4g
Pj4+Pg0KPiANCj4gQ2FuJ3QgYm9vdGxvYWRlciBkZXRlY3QgcHJlc2VuY2Ugb24gcmVtb3ZhYmxl
IGJvYXJkIHVzaW5nIHNvbWUgbWVhbnMNCj4gbGlrZSBHUElPIGFuZCB0aGVuIGZpeHVwIERUIHRv
IGVuYWJsZS9kaXNhYmxlIGZsYXNoIG5vZGU/DQo+IA0KPiA+Pj4+IFRoZSBwcmVzZW5jZSBvZiBh
IEpFREVDIGNvbXBsaWFudCBkZXZpY2UgaXMgaW1wbGljaXRseSB2ZXJpZmllZA0KPiBkdXJpbmcN
Cj4gPj4+IHRoZQ0KPiA+Pj4+IEpFREVDIGF1dG8tZGV0ZWN0IHByb2NlZHVyZS4NCj4gPj4+PiBC
dXQgZm9yIGEgbm9uLUpFREVDIGRldmljZSwgdGhlIHByZXNlbmNlIG11c3QgYmUgZXhwbGljaXRs
eSBjaGVja2VkLA0KPiA+Pj4+IHJlYWRpbmcgb25lIG9yIG1vcmUga25vd24gcmVnaXN0ZXJzLCBh
Y2NvcmRpbmcgdG8gdGhlIGNoaXAgZmVhdHVyZXMuDQo+ID4+Pj4NCj4gPj4+PiBXaXRob3V0IGFu
eSBjaGVjaywgaWYgdGhlIHNwaS1ub3IgaXMgZGVjbGFyZWQgaW4gYSBEZXZpY2UgVHJlZSBidXQN
Cj4gbm90DQo+ID4+Pj4gcGh5c2ljYWxseSBwcmVzZW50IG9uIHRoZSBib2FyZCwgdGhlIGRyaXZl
ciAoaS5lLiBtMjVwODApIGlzIGxvYWRlZA0KPiA+Pj4gYW55d2F5DQo+ID4+Pj4gYW5kIHRoZSBj
b3JyZXNwb25kZW50IG10ZCBkZXZpY2UgaXMgYWxzbyBjcmVhdGVkLg0KPiA+Pj4+IEluIHRoaXMg
d2F5IGFueSByZWFkIG9wZXJhdGlvbiBvbiB0aGlzIGRldmljZSByZXR1cm5zIDB4ZmYgKG9yIDB4
MDAsDQo+ID4+Pj4gZGVwZW5kaW5nIG9uIHRoZSBkcml2ZXIgYW5kIHRoZSBoYXJkd2FyZSB1c2Vk
KSBhbmQgYW55IHdyaXRlDQo+IG9wZXJhdGlvbg0KPiA+Pj4+IGhhbmdzIHVudGlsIHRoZSBmbGFz
aCBvcGVyYXRpb24gdGltZW91dCBvY2N1cnMsIHdpdGggdGhlICJmbGFzaA0KPiA+Pj4gb3BlcmF0
aW9uDQo+ID4+Pj4gdGltZWQgb3V0IiBlcnJvciBtZXNzYWdlLg0KPiA+Pj4+DQo+ID4+Pj4gVGhp
cyBwYXRjaCBhZGRzIHRoZSBub24tSkVERUMgc3BpLW5vciBwcmVzZW5jZSBjaGVjayBiZWZvcmUN
Cj4gaW5pdGlhbGl6aW5nDQo+ID4+Pj4gdGhlIGRldmljZS4NCj4gPj4+Pg0KPiA+Pj4+IE5vdGU6
IGN1cnJlbnRseSB0aGlzIHByZXNlbmNlIGNoZWNrIHN1cHBvcnRzIG9ubHkgdGhlIEV2ZXJzcGlu
DQo+IG1yMjVoNDAsDQo+ID4+Pj4gICAgICAgcmVhZGluZyBpdHMgc3RhdHVzIHJlZ2lzdGVyLg0K
PiA+Pj4+DQo+ID4+Pj4gICAgICAgVGhlIHN1cHBvcnQgZm9yIG90aGVyIG5vbi1KRURFQyBkZXZp
Y2VzIGhhcyB0byBiZSBhZGRlZC4NCj4gPj4+Pg0KPiA+Pj4+IFNpZ25lZC1vZmYtYnk6IEZsYXZp
byBTdWxpZ29pIDxmLnN1bGlnb2lAYXNlbS5pdD4NCj4gPj4+PiAtLS0NCj4gPj4+PiAgZHJpdmVy
cy9tdGQvc3BpLW5vci9zcGktbm9yLmMgfCA0Mw0KPiA+Pj4gKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKw0KPiA+Pj4+ICAxIGZpbGUgY2hhbmdlZCwgNDMgaW5zZXJ0
aW9ucygrKQ0KPiA+Pj4+DQo+ID4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbXRkL3NwaS1ub3Iv
c3BpLW5vci5jIGIvZHJpdmVycy9tdGQvc3BpLW5vci9zcGktDQo+ID4+PiBub3IuYw0KPiA+Pj4+
IGluZGV4IGZhZTE0NzQuLmQyY2I3MTAgMTAwNjQ0DQo+ID4+Pj4gLS0tIGEvZHJpdmVycy9tdGQv
c3BpLW5vci9zcGktbm9yLmMNCj4gPj4+PiArKysgYi9kcml2ZXJzL210ZC9zcGktbm9yL3NwaS1u
b3IuYw0KPiA+Pj4+IEBAIC0zOTgxLDYgKzM5ODEsNDIgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBm
bGFzaF9pbmZvDQo+ID4+PiAqc3BpX25vcl9tYXRjaF9pZChjb25zdCBjaGFyICpuYW1lKQ0KPiA+
Pj4+ICAJcmV0dXJuIE5VTEw7DQo+ID4+Pj4gIH0NCj4gPj4+Pg0KPiBbLi4uXQ0KPiA+Pj4NCj4g
Pj4+PiArCXU4IHZhbDsNCj4gPj4+PiArDQo+ID4+Pj4gKwkvKiBDaGVjayBwcmVzZW5jZSBmb3Ig
RXZlcnNwaW4gbXIyNWg0MCBNUkFNICovDQo+ID4+Pj4gKwlpZiAoIXN0cmNtcChpbmZvLT5uYW1l
LCAibXIyNWg0MCIpKSB7DQo+ID4+Pg0KPiA+Pj4gQ291bGRuJ3Qgd2UgbWFrZSB0aGlzIGNoZWNr
IGZvciBhbGwgbm9uLWplZGVjIGZsYXNoZXM/IEFyZW4ndCB3ZSBzYWZlDQo+IHRvDQo+ID4+PiBh
c3N1bWUNCj4gPj4+IHRoYXQgYWxsIHRoZSBmbGFzaGVzIGhhdmUgYSBTdGF0dXMgUmVnaXN0ZXIg
dGhhdCBjb250YWlucyBhIFdFTCBiaXQNCj4gd2hpY2gNCj4gPj4+IGNvbWUNCj4gPj4+IHdpdGgg
dmFsdWUgemVybyBieSBkZWZhdWx0Pw0KPiA+DQo+ID4gTWFyZWssIFZpZ25lc2gsIGRvIHlvdSBr
bm93IGlmIHRoaXMgYXNzdW1wdGlvbiBpcyBjb3JyZWN0Pw0KPiA+DQo+IA0KPiBTZWVtcyB0byBi
ZSBmYWlyIGFzc3VtcHRpb24gSU1PLCBvdGhlcndpc2Ugd3JpdGUgb3BlcmF0aW9uIHRvIHN1Y2gN
Cj4gbm9uLWplZGVjIGZsYXNoZXMgaXMgYnJva2VuIHdpdGggY3VycmVudCBTUEkgTk9SL20yNXA4
MCBkcml2ZXIuIEJ1dCwgSQ0KPiBoYXZlIGEgZGlmZmVyZW50IGNvbmNlcm4gZXZlbiBpZiBhYm92
ZSBhc3N1bXB0aW9uIGlzIHRydWUuIFNlZSBiZWxvdy4uLg0KPiANCj4gPj4NCj4gPj4gSSBkb24n
dCBrbm93IGlmIGFsbCB0aGUgbm9uLUpFREVDIGZsYXNoZXMgaGF2ZSBhIFN0YXR1cyBSZWdpc3Rl
ciB3aXRoDQo+ID4+IHRoZSBzYW1lIGNvbmZpZ3VyYXRpb24gYW5kIHdpdGggdGhlIHNhbWUgZGVm
YXVsdCB2YWx1ZXMuIFNvIGZvciB0aGlzDQo+ID4+IHJlYXNvbiBJIHRob3VnaHQgdG8gYWRkIGEg
c3BlY2lmaWMgdGVzdCBmb3IgZWFjaCBzaW5nbGUgZmxhc2guDQo+ID4+IEluIHRoaXMgd2F5LCBl
dmVyeSBwZXJzb24gd2hvIHdvcmsgd2l0aCBhIHNwZWNpZmljIGZsYXNoIGNhbiBhZGQNCj4gPj4g
YSBwcm9wZXIgZmxhc2ggcHJlc2VuY2UgdGVzdC4NCj4gPj4gV2hhdCBkbyB5b3UgdGhpbmsgYWJv
dXQgdGhpcz8NCj4gPg0KPiA+IEknbSBub3QgdmVyeSBoYXBweSB3aXRoIGhhdmluZyBhIGNoZWNr
IGZvciBlYWNoIHNwZWNpZmljIGZsYXNoLCB0aGUgY29kZQ0KPiB3aWxsIGdvDQo+ID4gbnV0cyBp
biBzaXplLiBMZXQncyBkbyBhIGdlbmVyaWMgbWV0aG9kLCBsaWtlIHRoZSBvbmUgSSBwcm9wb3Nl
ZCBhYm92ZS4NCj4gSWYgTWFyZWsNCj4gPiBvciBWaWduZXNoIGNhbiBub3QgY29uZmlybSBpZiB0
aGUgYXNzdW1wdGlvbiBpcyBjb3JyZWN0LCB0aGVuIHdlIHdpbGwNCj4gaGF2ZSB0bw0KPiA+IGNo
ZWNrIHRoZSBkYXRhc2hlZXRzIGZvciBlYWNoIG5vbi1qZWRlYyBmbGFzaCBkZWNsYXJlZCBpbiBz
cGktbm9yIHRvDQo+IHZhbGlkYXRlDQo+ID4gdGhlIGFzc3VtcHRpb24gOiguDQo+ID4NCj4gPiB0
YQ0KPiA+DQo+ID4+DQo+ID4+Pg0KPiA+Pj4+ICsJCS8qIFJlYWQgdGhlIHN0YXR1cyByZWdpc3Rl
ciAqLw0KPiA+Pj4+ICsJCXJldCA9IG5vci0+cmVhZF9yZWcobm9yLCBTUElOT1JfT1BfUkRTUiwg
JnZhbCwgMSk7DQo+ID4+Pj4gKwkJaWYgKHJldCkNCj4gPj4+PiArCQkJcmV0dXJuIHJldDsNCj4g
Pj4+PiArDQo+ID4+Pj4gKwkJZGV2X2RiZyhkZXYsICIlcyAtIHN0YXR1cyByZWdpc3RlciA9IDB4
JTIuMnhcbiIsDQo+ID4+Pg0KPiA+Pj4gJWhoeD8NCj4gPj4+DQo+ID4+Pj4gKwkJCWluZm8tPm5h
bWUsIHZhbCk7DQo+ID4+Pj4gKw0KPiA+Pj4+ICsJCS8qIFRoZSBmYWN0b3J5IHByZXNldCBvZiB0
aGUgc3RhdHVzIHJlZ2lzdGVyIGlzIDB4MDAgKi8NCj4gPj4+DQo+ID4+PiBpZiB3ZSBnZW5lcmFs
aXplIHRoaXMsIHRoZSBjb21tZW50IHdpbGwgYmVjb21lIGlycmVsZXZhbnQuIEhvdyBhYm91dA0K
PiA+Pj4gc29tZXRoaW5nDQo+ID4+PiBsaWtlOiAiQ2hlY2sgaWYgZmxhc2ggaXMgY29ubmVjdGVk
LiINCj4gPj4+DQo+ID4+Pj4gKwkJaWYgKHZhbCA9PSAweGZmKQ0KPiA+Pj4+ICsJCQlyZXR1cm4g
LUVOT0RFVjsNCj4gDQo+IEhtbSwgVGhpcyBkZXBlbmRzIG9uIGhvdyBib2FyZCBpcyB3aXJlZCBy
aWdodD8gSWYgTUlTTyBsaW5lIGlzIHB1bGxlZCB1cA0KPiB0byBsb2dpYyAxIHdoZW4gdGhlcmUg
aXMgbm8gZmxhc2ggY29ubmVjdGVkIHRoZW4gcmVhZCB3b3VsZCByZXN1bHQgaW4NCj4gMHhmZi4g
QnV0IGlmIHRoZSBwaW4gaXMgZmxvYXRpbmcgcmVhZCB3b3VsZCByZXR1cm4gdW5kZWZpbmVkIHZh
bHVlDQo+IChtYXliZSAweDApIGFuZCBjb2RlIHdvdWxkIHdyb25nbHkgYXNzdW1lICJmbGFzaCBp
cyBjb25uZWN0ZWQiPw0KDQpZZXMsIHlvdSBhcmUgcmlnaHQgVmlnbmVzaCENCkkgYXNzdW1lZCB0
aGF0IHRoZSBNSVNPIGlzIGFsd2F5cyBpbnRlcm5hbGx5IHB1bGxlZC11cCBpbiB0aGUgbWFzdGVy
DQpTUEkgY29udHJvbGxlciAoYXMgaW4gbXkgY2FzZSksIGJ1dCBpdCBtYXkgbm90IGFsd2F5cyBi
ZSB0cnVlIQ0KVGhlIE1JU08gaXMgbm9ybWFsbHkgZHJpdmVuIGJ5IHRoZSBzbGF2ZSwgc28gaW4g
c29tZSBTUEkgY29udHJvbGxlcnMgDQp0aGlzIHNpZ25hbCBjb3VsZCBiZSBsZWF2ZSBmbG9hdGlu
Zy4NCk9rLCBJIGhhdmUgdG8gdGhpbmsgYW5vdGhlciB3YXkgdG8gY2hlY2sgdGhlIFNQSSBOT1Ig
cHJlc2VuY2UsDQpJIGFncmVlIHRoYXQgdGhpcyBtZXRob2QgaXMgbm90IGZvb2xwcm9vZi4NCg0K
PiANCj4gQWxzbywgd2hhdCBpZiB0aGVyZSBpcyBhIGRpZmZlcmVudCBTUEkgc2xhdmUgY29ubmVj
dGVkIHRvIHRoYXQgQ1Mgb24NCj4gcmVtb3ZhYmxlIGJvYXJkIHRoYXQgcmVzcG9uZHMgdG8gU1BJ
Tk9SX09QX1JEU1IgY29tbWFuZD8NCj4gDQo+IFNvLCBJIGFtIG5vdCBmdWxseSBjb252aW5jZWQg
dGhhdCB0aGlzIHByZXNlbmNlIGNoZWNrIGxvZ2ljIGlzIGZvb2xwcm9vZg0KPiANCj4gUmVnYXJk
cw0KPiBWaWduZXNoDQo+IA0KPiA+Pj4+ICsJfQ0KPiA+Pj4+ICsNCj4gPj4+PiArCXJldHVybiAw
Ow0KPiA+Pj4+ICt9DQo+ID4+Pj4gKw0KPiA+Pj4+ICBpbnQgc3BpX25vcl9zY2FuKHN0cnVjdCBz
cGlfbm9yICpub3IsIGNvbnN0IGNoYXIgKm5hbWUsDQo+ID4+Pj4gIAkJIGNvbnN0IHN0cnVjdCBz
cGlfbm9yX2h3Y2FwcyAqaHdjYXBzKQ0KPiA+Pj4+ICB7DQo+ID4+Pj4gQEAgLTQxNTgsNiArNDE5
NCwxMyBAQCBpbnQgc3BpX25vcl9zY2FuKHN0cnVjdCBzcGlfbm9yICpub3IsIGNvbnN0DQo+IGNo
YXINCj4gPj4+ICpuYW1lLA0KPiA+Pj4+ICAJCQlyZXR1cm4gcmV0Ow0KPiA+Pj4+ICAJfQ0KPiA+
Pj4+DQo+ID4+Pj4gKwkvKiBDaGVjayBub24tSkVERUMgbm9yIHByZXNlbmNlICovDQo+ID4+Pj4g
KwlpZiAoIWluZm8tPmlkX2xlbikgew0KPiA+Pj4NCj4gPj4+IGlmIChuYW1lICYmICFpbmZvLT5p
ZF9sZW4pPw0KPiA+Pj4NCj4gPj4+IEhvdyBhYm91dCBtb3ZpbmcgdGhlIGVudGlyZSBpZiBibG9j
ayB0bw0KPiA+Pj4gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjUuMi1yYzYvc291
cmNlL2RyaXZlcnMvbXRkL3NwaS0NCj4gbm9yL3NwaS0NCj4gPj4+IG5vci5jI0w0MDM3Pw0KPiA+
Pj4NCj4gPj4+IENoZWVycywNCj4gPj4+IHRhDQo+ID4+Pg0KPiA+Pj4+ICsJCXJldCA9IGNoZWNr
X25vamVkZWNfbm9yX3ByZXNlbmNlKG5vcik7DQo+ID4+Pj4gKwkJaWYgKHJldCkNCj4gPj4+PiAr
CQkJcmV0dXJuIHJldDsNCj4gPj4+PiArCX0NCj4gPj4+PiArDQo+ID4+Pj4gIAkvKiBTZW5kIGFs
bCB0aGUgcmVxdWlyZWQgU1BJIGZsYXNoIGNvbW1hbmRzIHRvIGluaXRpYWxpemUNCj4gZGV2aWNl
ICovDQo+ID4+Pj4gIAlyZXQgPSBzcGlfbm9yX2luaXQobm9yKTsNCj4gPj4+PiAgCWlmIChyZXQp
DQo+ID4+Pj4NCj4gPj4NCj4gPj4gVGhhbmtzLA0KPiA+PiBGbGF2aW8NCj4gPj4NCj4gDQo+IC0t
DQo+IFJlZ2FyZHMNCj4gVmlnbmVzaA0KDQpUaGFua3MgdG8gYWxsIG9mIHlvdSwNCkZsYXZpbw0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
