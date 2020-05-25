Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 131AE1E1321
	for <lists+linux-mtd@lfdr.de>; Mon, 25 May 2020 19:02:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iCY00eEgE4D3R2GIuRftbYFiwOefJsysyNiXjagt5K4=; b=aRZ51rRkTzL8YD
	/Q24MnxQoj3gSI61XXPReL0MvZqy9wsbEXs8/+ATcX9l0NUr9Xng9Mj00+iKTGKPDMWFeladFNTTz
	xEtEm0xbaHzYwZUBkty9ptU/JyBAjs1b5xzSBNUs0ca18byuEKNoHG6ZPXkKO6JSY6+P+7Gnr2+Od
	ltYBcRmlw/pkVT6uBfvh3sc+whg0OdIlXnPjL6r+QjgBl3qUxH3sYppBhEI/XvpJ8BLzv6EhA3avh
	9Xe+1xUB6XwxW+CgWDiCRX73VEMzFicKfnfrTTamvePStggI0Wm+uX6NdjwG6A7jZ9VQmA3vacggJ
	onTIJVI0TlTX4jMx+qaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdGUz-0005C6-Di; Mon, 25 May 2020 17:02:49 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdGUs-0005BX-95
 for linux-mtd@lists.infradead.org; Mon, 25 May 2020 17:02:44 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 0222C2000D;
 Mon, 25 May 2020 17:02:36 +0000 (UTC)
Date: Mon, 25 May 2020 19:02:35 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rickard Andersson <rickaran@axis.com>
Subject: Re: [PATCH v3 1/2] mtd: rawnand: Add and use helper for testing
 data interface
Message-ID: <20200525190235.785cee08@xps13>
In-Reply-To: <20200525145133.8298-1-rickaran@axis.com>
References: <20200525145133.8298-1-rickaran@axis.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_100242_584188_6802304E 
X-CRM114-Status: GOOD (  22.64  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.200 listed in wl.mailspike.net]
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
Cc: boris.brezillon@collabora.com, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgUmlja2FyZCwKClJpY2thcmQgQW5kZXJzc29uIDxyaWNrYXJhbkBheGlzLmNvbT4gd3JvdGUg
b24gTW9uLCAyNSBNYXkgMjAyMAoxNjo1MTozMiArMDIwMDoKCj4gRnJvbTogUmlja2FyZCB4IEFu
ZGVyc3NvbiA8cmlja2FyYW5AYXhpcy5jb20+Cj4gCj4gVGhpcyBoZWxwZXIgY2hlY2tzIGlmIHRo
ZSBjb250cm9sbGVyIHN1cHBvcnRzIHRoZSBjdXJyZW50Cj4gZGF0YSBpbnRlcmZhY2UgdGltaW5n
cy4gSWYgdGhlIHRpbWluZ3MgYXJlIG5vdCBzdXBwb3J0ZWQKPiB0aGUgdmVuZG9yIHByb3ZpZGVk
IGNvcnJlc3BvbmRpbmcgb25maSBtb2RlIHdpbGwgYmUgdHJpZWQsCj4gYW5kIGlmIHRoYXQgZmFp
bHMgd2Ugd2lsbCBmYWxsIGJhY2sgdG8gb25maSBtb2RlIDAuCj4gCj4gVGhlIGhlbHBlciBjYW4g
YWxzbyBiZSB1c2VkIGJ5IE5BTkQgdmVuZG9yIGRyaXZlciBmb3IKPiB0ZXN0aW5nIGRpZmZlcmVu
dCB0aW1pbmdzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFJpY2thcmQgeCBBbmRlcnNzb24gPHJpY2th
cmFuQGF4aXMuY29tPgo+IC0tLQo+ICBkcml2ZXJzL210ZC9uYW5kL3Jhdy9pbnRlcm5hbHMuaCB8
IDI0ICsrKysrKysrKysrKysrKysrKysrKysrKwo+ICBkcml2ZXJzL210ZC9uYW5kL3Jhdy9uYW5k
X2Jhc2UuYyB8IDI4ICsrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0KPiAgMiBmaWxlcyBjaGFu
Z2VkLCA0MiBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9tdGQvbmFuZC9yYXcvaW50ZXJuYWxzLmggYi9kcml2ZXJzL210ZC9uYW5kL3Jhdy9p
bnRlcm5hbHMuaAo+IGluZGV4IDYxNTY3NzgyMDMzOC4uNmRhY2YxMTBiNTU5IDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvbXRkL25hbmQvcmF3L2ludGVybmFscy5oCj4gKysrIGIvZHJpdmVycy9tdGQv
bmFuZC9yYXcvaW50ZXJuYWxzLmgKPiBAQCAtMTQ4LDYgKzE0OCwzMCBAQCBzdGF0aWMgaW5saW5l
IGJvb2wgbmFuZF9jYW5fY2hvb3NlX2RhdGFfaW50ZXJmYWNlKHN0cnVjdCBuYW5kX2NoaXAgKmNo
aXApCj4gIAlyZXR1cm4gY2hpcC0+b3BzLmNob29zZV9kYXRhX2ludGVyZmFjZTsKPiAgfQo+ICAK
PiArLyoqCj4gKyAqIG5hbmRfY29udHJvbGxlcl9zdXBwb3J0c19kYXRhX2ludGVyZmFjZSAtIENo
ZWNrIGlmIGNvbnRyb2xsZXIgY2FuIGhhbmRsZQo+ICsgKiB0aGUgY3VycmVudCB0aW1pbmdzLgo+
ICsgKgo+ICsgKiBAY2hpcDogVGhlIE5BTkQgY2hpcAo+ICsgKi8KPiArc3RhdGljIGlubGluZSBp
bnQKPiArbmFuZF9jb250cm9sbGVyX3N1cHBvcnRzX2RhdGFfaW50ZXJmYWNlKHN0cnVjdCBuYW5k
X2NoaXAgKmNoaXApCj4gK3sKPiArCWludCByZXQ7Cj4gKwljb25zdCBzdHJ1Y3QgbmFuZF9jb250
cm9sbGVyX29wcyAqb3BzID0gY2hpcC0+Y29udHJvbGxlci0+b3BzOwo+ICsKPiArCS8qCj4gKwkg
KiBQYXNzIE5BTkRfREFUQV9JRkFDRV9DSEVDS19PTkxZIHRvIG9ubHkgY2hlY2sgaWYgdGhlCj4g
KwkgKiBjb250cm9sbGVyIHN1cHBvcnRzIHRoZSByZXF1ZXN0ZWQgdGltaW5ncy4KPiArCSAqLwo+
ICsJcmV0ID0gb3BzLT5zZXR1cF9kYXRhX2ludGVyZmFjZShjaGlwLAo+ICsJCQkJCU5BTkRfREFU
QV9JRkFDRV9DSEVDS19PTkxZLAo+ICsJCQkJCSZjaGlwLT5kYXRhX2ludGVyZmFjZSk7Cj4gKwo+
ICsJcmV0dXJuIHJldDsKPiArfQo+ICsKPiArCj4gIC8qIEJCVCBmdW5jdGlvbnMgKi8KPiAgaW50
IG5hbmRfbWFya2JhZF9iYnQoc3RydWN0IG5hbmRfY2hpcCAqY2hpcCwgbG9mZl90IG9mZnMpOwo+
ICBpbnQgbmFuZF9pc3Jlc2VydmVkX2JidChzdHJ1Y3QgbmFuZF9jaGlwICpjaGlwLCBsb2ZmX3Qg
b2Zmcyk7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbXRkL25hbmQvcmF3L25hbmRfYmFzZS5jIGIv
ZHJpdmVycy9tdGQvbmFuZC9yYXcvbmFuZF9iYXNlLmMKPiBpbmRleCBjNDJjYmViN2U0NDYuLmUz
YzU3NjQ5MzgwYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL210ZC9uYW5kL3Jhdy9uYW5kX2Jhc2Uu
Ywo+ICsrKyBiL2RyaXZlcnMvbXRkL25hbmQvcmF3L25hbmRfYmFzZS5jCj4gQEAgLTk4Miw4ICs5
ODIsMjQgQEAgc3RhdGljIGludCBuYW5kX2Nob29zZV9kYXRhX2ludGVyZmFjZShzdHJ1Y3QgbmFu
ZF9jaGlwICpjaGlwKQo+ICAJICovCj4gIAlpZiAobmFuZF9jYW5fY2hvb3NlX2RhdGFfaW50ZXJm
YWNlKGNoaXApKSB7Cj4gIAkJcmV0ID0gY2hpcC0+b3BzLmNob29zZV9kYXRhX2ludGVyZmFjZShj
aGlwKTsKPiArCQlpZiAocmV0KQo+ICsJCQlyZXR1cm4gcmV0Owo+ICsKPiArCQkvKgo+ICsJCSAq
IENoZWNrIGlmIHRoZSBjb250cm9sbGVyIGNhbiBoYW5kbGUgdGhlIE5BTkQgdmVuZG9yIHNwZWNp
ZmljCj4gKwkJICogYmVzdCB0aW1pbmdzLgo+ICsJCSAqLwo+ICsJCXJldCA9IG5hbmRfY29udHJv
bGxlcl9zdXBwb3J0c19kYXRhX2ludGVyZmFjZShjaGlwKTsKPiAgCQlpZiAoIXJldCkKPiAgCQkJ
cmV0dXJuIHJldDsKPiArCj4gKwkJLyoKPiArCQkgKiBTcGVjaWZpYyB0aW1pbmdzIGRpZCBub3Qg
d29yaywgdHJ5IHVzaW5nIGNvcnJlc3BvbmRpbmcKPiArCQkgKiBvbmZpIG1vZGUgcHJvdmlkZWQg
YnkgdmVuZG9yLgo+ICsJCSAqLwo+ICsJCWlmIChjaGlwLT5kYXRhX2ludGVyZmFjZS50aW1pbmdz
Lm1vZGUpCj4gKwkJCWNoaXAtPmRlZmF1bHRfdGltaW5nX21vZGUgPQo+ICsJCQkJY2hpcC0+ZGF0
YV9pbnRlcmZhY2UudGltaW5ncy5tb2RlOwo+ICAJfQo+ICAKPiAgCS8qCj4gQEAgLTk5NCw5ICsx
MDEwLDYgQEAgc3RhdGljIGludCBuYW5kX2Nob29zZV9kYXRhX2ludGVyZmFjZShzdHJ1Y3QgbmFu
ZF9jaGlwICpjaGlwKQo+ICAJaWYgKGNoaXAtPnBhcmFtZXRlcnMub25maSkgewo+ICAJCW1vZGVz
ID0gY2hpcC0+cGFyYW1ldGVycy5vbmZpLT5hc3luY190aW1pbmdfbW9kZTsKPiAgCX0gZWxzZSB7
Cj4gLQkJaWYgKCFjaGlwLT5kZWZhdWx0X3RpbWluZ19tb2RlKQo+IC0JCQlyZXR1cm4gMDsKPiAt
Cj4gIAkJbW9kZXMgPSBHRU5NQVNLKGNoaXAtPmRlZmF1bHRfdGltaW5nX21vZGUsIDApOwo+ICAJ
fQo+ICAKPiBAQCAtMTAwNSwxMyArMTAxOCw4IEBAIHN0YXRpYyBpbnQgbmFuZF9jaG9vc2VfZGF0
YV9pbnRlcmZhY2Uoc3RydWN0IG5hbmRfY2hpcCAqY2hpcCkKPiAgCQlpZiAocmV0KQo+ICAJCQlj
b250aW51ZTsKPiAgCj4gLQkJLyoKPiAtCQkgKiBQYXNzIE5BTkRfREFUQV9JRkFDRV9DSEVDS19P
TkxZIHRvIG9ubHkgY2hlY2sgaWYgdGhlCj4gLQkJICogY29udHJvbGxlciBzdXBwb3J0cyB0aGUg
cmVxdWVzdGVkIHRpbWluZ3MuCj4gLQkJICovCj4gLQkJcmV0ID0gY2hpcC0+Y29udHJvbGxlci0+
b3BzLT5zZXR1cF9kYXRhX2ludGVyZmFjZShjaGlwLAo+IC0JCQkJCQkgTkFORF9EQVRBX0lGQUNF
X0NIRUNLX09OTFksCj4gLQkJCQkJCSAmY2hpcC0+ZGF0YV9pbnRlcmZhY2UpOwo+ICsJCS8qIENo
ZWNrIGlmIHRoZSBjb250cm9sbGVyIHN1cHBvcnRzIHRoZSByZXF1ZXN0ZWQgdGltaW5ncy4gKi8K
PiArCQlyZXQgPSBuYW5kX2NvbnRyb2xsZXJfc3VwcG9ydHNfZGF0YV9pbnRlcmZhY2UoY2hpcCk7
Cj4gIAkJaWYgKCFyZXQpIHsKPiAgCQkJY2hpcC0+ZGVmYXVsdF90aW1pbmdfbW9kZSA9IG1vZGU7
Cj4gIAkJCWJyZWFrOwoKQWN0dWFsbHkgSSB0aGluayB3aGF0IEJvcmlzIGhhZCBpbiBtaW5kIHdh
cyBhIGxpdHRsZSBiaXQgZGlmZmVyZW50LiBBcwp0aGUgInByZXBhcmF0aW9uIHNlcmllcyIgaGFz
IG5vdCBiZWVuIHNlbnQgb3ZlciB0aGUgbWFpbGluZyBsaXN0IHlldCwKaWYgeW91IGRvbid0IG1p
bmQsIEkgd2lsbCBkcm9wIHBhdGNoIDEvMiB3aGljaCBpcyBub3QgbmVlZGVkIGFmdGVyIG15Cmxh
dGVzdCBjaGFuZ2VzIGFuZCB0YWtlIHlvdXIgc2Vjb25kIHBhdGNoLCBhZGFwdGVkIHRvIHRoZSBs
YXRlc3QKY2hhbmdlcyB0b28uIEkgYW0gbm90IHRha2luZyB0aGUgb3duZXJzaGlwIG9mIHlvdXIg
c2VyaWVzLCBqdXN0CnByb3Bvc2luZyB0aGUgYmlnIHBpY3R1cmUgYW5kIHByb3ZpZGUgYSBtb3Jl
IHVzdWFsIHdheSB0byByZXZpZXcgdGhlCnBhdGNoZXMgdGhhbiBhIEdpdGh1YiBicmFuY2guIFRo
ZW4sIEknbGwgbWlnaHQgYXNrIHlvdSB0byByZXNwaW4gdGhlCmVudGlyZSBzZXJpZXMgYXMgd2Vs
bCBpZiBuZWVkZWQuCgoKVGhhbmtzLApNaXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGlu
ZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
bXRkLwo=
