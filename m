Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE3079F815
	for <lists+linux-mtd@lfdr.de>; Wed, 28 Aug 2019 04:00:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xfbOXXQODj4rpxfOYV5mQrZNc5zGuk5T3LSdUcbrAes=; b=YZNseuy9kfrcbT
	LBcOkCw9+aa6qGgjHWah3GCjGdC/A2fOCPtHJiSjcQAdfOHeXB8cYLG+hSUqbByKVFMrmngzZl8yw
	CzJS6vcXfZMVh/zpm42HxfVPMT0xqg7sx80Injm9wZZaTt/7NP/X7iF43r1ShRgApN754Zk3E59Dc
	yykaRSbspP2OkpFKXXluZ6OKNPgoulkzR2fJ2KM/8v5QVaxttXV4KRCp0enmq9kK83KD1aO5jAbcG
	GNepH7ytx8PvM+AGsnZuRbcD1ggmUQqxgNMKbU8/4noV+PsJoxJew1RSgNsXohJAC4KHF57JVTIdU
	WRV7dMXyaaAh6Nk8zFfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2nFy-0000Un-4F; Wed, 28 Aug 2019 02:00:18 +0000
Received: from szxga02-in.huawei.com ([45.249.212.188] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2nFc-0000UF-Nl
 for linux-mtd@lists.infradead.org; Wed, 28 Aug 2019 01:59:58 +0000
Received: from dggemi404-hub.china.huawei.com (unknown [172.30.72.56])
 by Forcepoint Email with ESMTP id C5486602C5D1A1E04F6C;
 Wed, 28 Aug 2019 09:59:45 +0800 (CST)
Received: from DGGEMI423-HUB.china.huawei.com (10.1.199.152) by
 dggemi404-hub.china.huawei.com (10.3.17.142) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 28 Aug 2019 09:59:45 +0800
Received: from DGGEMI524-MBX.china.huawei.com ([169.254.7.30]) by
 dggemi423-hub.china.huawei.com ([10.1.199.152]) with mapi id 14.03.0439.000;
 Wed, 28 Aug 2019 09:59:38 +0800
From: chengzhihao <chengzhihao1@huawei.com>
To: Richard Weinberger <richard.weinberger@gmail.com>
Subject: =?utf-8?B?562U5aSNOiBbUEFUQ0ggUkZDIHYyXSB1Ymk6IHViaV93bF9nZXRfcGViOiBJ?=
 =?utf-8?B?bmNyZWFzZSB0aGUgbnVtYmVyIG9mIGF0dGVtcHRzIHdoaWxlIGdldHRpbmcg?=
 =?utf-8?Q?PEB?=
Thread-Topic: [PATCH RFC v2] ubi: ubi_wl_get_peb: Increase the number of
 attempts while getting PEB
Thread-Index: AQHVT2EsTJNmHoCNk0y5Wp2VB7/tCKb5GeuAgBbPnRA=
Date: Wed, 28 Aug 2019 01:59:37 +0000
Message-ID: <0B80F9D4116B2F4484E7279D5A66984F7D875E@dggemi524-mbx.china.huawei.com>
References: <1565431061-145460-1-git-send-email-chengzhihao1@huawei.com>
 <CAFLxGvzOMfqJJ+ZKTUavxEx+0_OJO_VcrNu1nn2rrvcypAxAAA@mail.gmail.com>
In-Reply-To: <CAFLxGvzOMfqJJ+ZKTUavxEx+0_OJO_VcrNu1nn2rrvcypAxAAA@mail.gmail.com>
Accept-Language: en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.177.224.82]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_185956_941350_881B8907 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.188 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Richard Weinberger <richard@nod.at>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, "zhangyi \(F\)" <yi.zhang@huawei.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

VGhpcyBwYXRjaCBtaXNzZWQgdGhlIGZpeGVzIHB1bGwgcmVxdWVzdCg1LjMtcmM2KSwgd2lsbCBp
dCBiZSBpbiB2NS4zLXJjNz8NCg0KLS0tLS3pgq7ku7bljp/ku7YtLS0tLQ0K5Y+R5Lu25Lq6OiBS
aWNoYXJkIFdlaW5iZXJnZXIgW21haWx0bzpyaWNoYXJkLndlaW5iZXJnZXJAZ21haWwuY29tXSAN
CuWPkemAgeaXtumXtDogMjAxOeW5tDjmnIgxNOaXpSA1OjM4DQrmlLbku7bkuro6IGNoZW5nemhp
aGFvIDxjaGVuZ3poaWhhbzFAaHVhd2VpLmNvbT4NCuaKhOmAgTogUmljaGFyZCBXZWluYmVyZ2Vy
IDxyaWNoYXJkQG5vZC5hdD47IHpoYW5neWkgKEYpIDx5aS56aGFuZ0BodWF3ZWkuY29tPjsgbGlu
dXgtbXRkQGxpc3RzLmluZnJhZGVhZC5vcmc7IExLTUwgPGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5l
bC5vcmc+DQrkuLvpopg6IFJlOiBbUEFUQ0ggUkZDIHYyXSB1Ymk6IHViaV93bF9nZXRfcGViOiBJ
bmNyZWFzZSB0aGUgbnVtYmVyIG9mIGF0dGVtcHRzIHdoaWxlIGdldHRpbmcgUEVCDQoNCk9uIFNh
dCwgQXVnIDEwLCAyMDE5IGF0IDExOjUxIEFNIFpoaWhhbyBDaGVuZyA8Y2hlbmd6aGloYW8xQGh1
YXdlaS5jb20+IHdyb3RlOg0KPg0KPiBSdW5uaW5nIHN0cmVzcyB0ZXN0IGlvX3BhcmFsIChBIHBy
ZXNzdXJlIHViaSB0ZXN0IGluIG10ZC11dGlscykgb24gYW4gDQo+IFVCSSBkZXZpY2Ugd2l0aCBm
ZXdlciBQRUJzIChmYXN0bWFwIGVuYWJsZWQpIG1heSBjYXVzZSBFTk9TUEMgZXJyb3JzIA0KPiBh
bmQgbWFrZSBVQkkgZGV2aWNlIHJlYWQtb25seSwgYnV0IHRoZXJlIGFyZSBzdGlsbCBmcmVlIFBF
QnMgb24gdGhlIA0KPiBVQkkgZGV2aWNlLiBUaGlzIHByb2JsZW0gY2FuIGJlIGVhc2lseSByZXBy
b2R1Y2VkIGJ5IHBlcmZvcm1pbmcgdGhlIA0KPiBmb2xsb3dpbmcgc3RlcHMgb24gYSAyLWNvcmUg
bWFjaGluZToNCj4gICAkIG1vZHByb2JlIG5hbmRzaW0gZmlyc3RfaWRfYnl0ZT0weDIwIHNlY29u
ZF9pZF9ieXRlPTB4MzMgcGFydHM9ODANCj4gICAkIG1vZHByb2JlIHViaSBtdGQ9IjAsMCIgZm1f
YXV0b2NvbnZlcnQNCj4gICAkIC4vaW9fcGFyYWwgL2Rldi91YmkwDQo+DQo+IFdlIG1heSBzZWUg
dGhlIGZvbGxvd2luZyB2ZXJib3NlOg0KPiAob3V0cHV0KQ0KPiAgIFtpb19wYXJhbF0gdXBkYXRl
X3ZvbHVtZSgpOjEwODogZmFpbGVkIHRvIHdyaXRlIDM4MCBieXRlcyBhdCBvZmZzZXQNCj4gICA5
NTkyMCBvZiB2b2x1bWUgMg0KPiAgIFtpb19wYXJhbF0gdXBkYXRlX3ZvbHVtZSgpOjEwOTogdXBk
YXRlOiA5NzA4OCBieXRlcw0KPiAgIFtpb19wYXJhbF0gd3JpdGVfdGhyZWFkKCk6MjI3OiBmdW5j
dGlvbiBwd3JpdGUoKSBmYWlsZWQgd2l0aCBlcnJvciAyOA0KPiAgIChObyBzcGFjZSBsZWZ0IG9u
IGRldmljZSkNCj4gICBbaW9fcGFyYWxdIHdyaXRlX3RocmVhZCgpOjIyOTogY2Fubm90IHdyaXRl
IDE1ODcyIGJ5dGVzIHRvIG9mZnMgMzE3NDQsDQo+ICAgd3JvdGUgLTENCj4gKGRtZXNnKQ0KPiAg
IHViaTAgZXJyb3I6IHViaV93bF9nZXRfcGViIFt1YmldOiBVbmFibGUgdG8gZ2V0IGEgZnJlZSBQ
RUIgZnJvbSB1c2VyIFdMDQo+ICAgcG9vbA0KPiAgIHViaTAgd2FybmluZzogdWJpX2ViYV93cml0
ZV9sZWIgW3ViaV06IHN3aXRjaCB0byByZWFkLW9ubHkgbW9kZQ0KPiAgIENQVTogMCBQSUQ6IDIw
MjcgQ29tbTogaW9fcGFyYWwgTm90IHRhaW50ZWQgNS4zLjAtcmMyLTAwMDAxLWc1OTg2Y2QwICM5
DQo+ICAgdWJpMCB3YXJuaW5nOiB0cnlfd3JpdGVfdmlkX2FuZF9kYXRhIFt1YmldOiBmYWlsZWQg
dG8gd3JpdGUgVklEIGhlYWRlcg0KPiAgIHRvIExFQiAyOjUsIFBFQiAxOA0KPiAgIEhhcmR3YXJl
IG5hbWU6IFFFTVUgU3RhbmRhcmQgUEMgKGk0NDBGWCArIFBJSVgsIDE5OTYpLCBCSU9TIHJlbC0x
LjEyLjANCj4gICAtMC1nYTY5OGM4OTk1Zi1wcmVidWlsdC5xZW11Lm9yZyAwNC8wMS8yMDE0DQo+
ICAgQ2FsbCBUcmFjZToNCj4gICAgIGR1bXBfc3RhY2srMHg4NS8weGJhDQo+ICAgICB1YmlfZWJh
X3dyaXRlX2xlYisweGExZS8weGE0MCBbdWJpXQ0KPiAgICAgdm9sX2NkZXZfd3JpdGUrMHgzMDcv
MHg1MjAgW3ViaV0NCj4gICAgIHZmc193cml0ZSsweGZhLzB4MjgwDQo+ICAgICBrc3lzX3B3cml0
ZTY0KzB4YzUvMHhlMA0KPiAgICAgX194NjRfc3lzX3B3cml0ZTY0KzB4MjIvMHgzMA0KPiAgICAg
ZG9fc3lzY2FsbF82NCsweGJmLzB4NDQwDQo+DQo+IEluIGZ1bmN0aW9uIHViaV93bF9nZXRfcGVi
LCB0aGUgb3BlcmF0aW9uIG9mIGZpbGxpbmcgdGhlIHBvb2wNCj4gKHViaV91cGRhdGVfZmFzdG1h
cCkgd2l0aCBmcmVlIFBFQnMgYW5kIGZldGNoaW5nIGEgZnJlZSBQRUIgZnJvbSB0aGUgDQo+IHBv
b2wgaXMgbm90IGF0b21pYy4gQWZ0ZXIgdGhyZWFkIEEgZmlsbGluZyB0aGUgcG9vbCB3aXRoIGZy
ZWUgUEVCLCANCj4gZnJlZSBQRUIgbWF5IGJlIHRha2VuIGF3YXkgYnkgdGhyZWFkIEIuIFdoZW4g
dGhyZWFkIEEgY2hlY2tzIHRoZSANCj4gZXhwcmVzc2lvbiBhZ2FpbiwgdGhlIGNvbmRpdGlvbiBp
cyBzdGlsbCB1bnNhdGlzZmFjdG9yeS4gQXQgdGhpcyB0aW1lLCANCj4gdGhlcmUgbWF5IHN0aWxs
IGJlIGZyZWUgUEVCcyBvbiBVQkkgdGhhdCBjYW4gYmUgZmlsbGVkIGludG8gdGhlIHBvb2wuDQo+
DQo+IFRoaXMgcGF0Y2ggaW5jcmVhc2VzIHRoZSBudW1iZXIgb2YgYXR0ZW1wdHMgdG8gb2J0YWlu
IFBFQi4gQW4gZXh0cmVtZSANCj4gY2FzZSAoTm8gZnJlZSBQRUJzIGxlZnQgYWZ0ZXIgY3JlYXRp
bmcgdGVzdCB2b2x1bWVzKSBoYXMgYmVlbiB0ZXN0ZWQgDQo+IG9uIGRpZmZlcmVudCB0eXBlIG9m
IG1hY2hpbmVzIGZvciAxMDAgdGltZXMuIFRoZSBiaWdnZXN0IG51bWJlciBvZiANCj4gYXR0ZW1w
dHMgYXJlIHNob3duIGJlbG93Og0KPg0KPiAgICAgICAgICAgICAgeDg2XzY0ICAgICBhcm02NA0K
PiAgIDItY29yZSAgICAgICAgNCAgICAgICAgIDQNCj4gICA0LWNvcmUgICAgICAgIDggICAgICAg
ICA0DQo+ICAgOC1jb3JlICAgICAgICA0ICAgICAgICAgNA0KPg0KPiBTaWduZWQtb2ZmLWJ5OiBa
aGloYW8gQ2hlbmcgPGNoZW5nemhpaGFvMUBodWF3ZWkuY29tPg0KDQpUaGFua3MgZm9yIGFkZHJl
c3NpbmcgdGhpcyENCkknbGwgdGFrZSB0aGlzIHZlcnNpb24uIDotKQ0KDQotLQ0KVGhhbmtzLA0K
Ly9yaWNoYXJkDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
