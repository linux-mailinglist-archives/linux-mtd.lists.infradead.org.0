Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC5D0F87C
	for <lists+linux-mtd@lfdr.de>; Tue, 30 Apr 2019 14:12:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1dnH7Y+viNNQn3/AnIhaCwXNwrLTd/wNT/eFa5qPcJQ=; b=qjAwk8zzvBKzl+
	4Wkmzp8XuloywA30cUQqovjDrPJr2UtBL1fW9pGHO7lFyKQBQJ0qD6Whqr3qZmPmnUzusKvG0eqkB
	WpAjsRD4fd6JokGnXG4pROY2QgMtTQ7RUc/qI28uRPe7Y3kcxeL9AtnK7tFzagcll52KZLUbgv+gs
	yUFpsj4WtkePT+Qb+uM9ISpSA87HZQ25DirXnOyy/LzdAKIpFNEPZV86tp0Ed9Ed1zcxGchdk2szh
	lmGhHW0MiSOmuv6Nee1Nn83i4JPnHD1aV7IHOOJ7s5e4zA11688/CiS+/ItDXyvKzIiy8vgl+MXoV
	381SBf1WwIxMvMdXi+qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLRcE-000733-FV; Tue, 30 Apr 2019 12:12:06 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLRc4-00071l-JN; Tue, 30 Apr 2019 12:11:58 +0000
X-Originating-IP: 90.88.147.33
Received: from xps13 (aaubervilliers-681-1-27-33.w90-88.abo.wanadoo.fr
 [90.88.147.33]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id D7279FF81E;
 Tue, 30 Apr 2019 12:11:53 +0000 (UTC)
Date: Tue, 30 Apr 2019 14:11:52 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Xiaolei Li <xiaolei.li@mediatek.com>
Subject: Re: [PATCH v2 2/5] mtd: rawnand: mtk: Improve data sampling timing
 for read cycle
Message-ID: <20190430141152.3d215b52@xps13>
In-Reply-To: <20190430100250.28083-3-xiaolei.li@mediatek.com>
References: <20190430100250.28083-1-xiaolei.li@mediatek.com>
 <20190430100250.28083-3-xiaolei.li@mediatek.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_051157_015665_860DDE33 
X-CRM114-Status: GOOD (  17.82  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: richard@nod.at, linux-mediatek@lists.infradead.org,
 linux-mtd@lists.infradead.org, srv_heupstream@mediatek.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgWGlhb2xlaSwKClhpYW9sZWkgTGkgPHhpYW9sZWkubGlAbWVkaWF0ZWsuY29tPiB3cm90ZSBv
biBUdWUsIDMwIEFwciAyMDE5IDE4OjAyOjQ3CiswODAwOgoKPiBDdXJyZW50bHksIHdlIGV4cGFu
ZCBSRSMgbG93IGxldmVsIHRpbWUgYnkgY2hvb3NpbmcgdGhlIG1heCB2YWx1ZQo+IGJldHdlZW4g
UkUjIHB1bHNlIHdpZHRoIGFuZCBSRSMgYWNjZXNzIHRpbWUsIGFuZCBzYW1wbGUgZGF0YSBhdCB0
aGUKPiByaXNpbmcgZWRnZSBvZiBSRSMuCj4gCj4gVGhlbiwgaWYgUkUjIGFjY2VzcyB0aW1lIGlz
IGJpZ2dlciB0aGFuIFJFIyBwdWxzZSB3aWR0aCwgdGhlIHJlYWwKPiByZWFkIGN5Y2xlIHRpbWUg
bWF5IGJlIG1vcmUgdGhhbiBOQU5EIFNQRUMgcmVxdWlyZWQuIFRoaXMgbWFrZXMKPiByZWFkIHBl
cmZvcm1hbmNlIGJlIHdvcnNlIHRoYW4gdGhhdCBleHBlY3RlZC4KPiAKPiBUaGlzIHBhdGNoIGlt
cHJvdmVzIGRhdGEgc2FtcGxpbmcgdGltaW5nIGJ5IGNhbGN1bGF0aW5nIFJFIyBsb3cgbGV2ZWwK
PiB0aW1lIGFjY29yZGluZyB0byBSRSMgcHVsc2Ugd2lkdGguIElmIFJFIyBhY2Nlc3MgdGltZSBp
cyBiaWdnZXIgdGhhbgo+IFJFIyBwdWxzZSB3aWR0aCwgdGhlbiBkZWxheSBzYW1wbGluZyBkYXRh
IHRpbWluZy4KPiAKPiBUaGUgcmVzdWx0IG9mIGNvbnRyYXN0IHRlc3QgYmFzZSBvbiBNVDI3MTIg
ZXZhbHVhdCBib2FyZCBpcyBhcyBmb2xsb3cuCj4gCj4gbmFuZDogTWljcm9uIE1UMjlGMTZHMDhB
REJDQUg0Cj4gbmFuZDogMjA0OCBNaUIsIFNMQywgZXJhc2Ugc2l6ZTogMjU2IEtpQiwgcGFnZSBz
aXplOiA0MDk2LCBPT0Igc2l6ZTogMjI0Cj4gTkZJIDJ4IGNsb2NrIHJhdGU6IDEyNDgwMDAwMCBI
Wi4KPiAKPiBSZWFkIHNwZWVkIHdpdGhvdXQgdGhpcyBwYXRjaDoKPiBtdGRfc3BlZWR0ZXN0OiBw
YWdlIHJlYWQgc3BlZWQgaXMgMTQwMTIgS2lCL3MKPiBtdGRfc3BlZWR0ZXN0OiAyIHBhZ2UgcmVh
ZCBzcGVlZCBpcyAxNDg2MCBLaUIvcwo+IAo+IFJlYWQgc3BlZWQgd2l0aCB0aGlzIHBhdGNoOgo+
IG10ZF9zcGVlZHRlc3Q6IHBhZ2UgcmVhZCBzcGVlZCBpcyAxODcyNCBLaUIvcwo+IG10ZF9zcGVl
ZHRlc3Q6IDIgcGFnZSByZWFkIHNwZWVkIGlzIDE4NzEzIEtpQi9zCj4gCj4gU2lnbmVkLW9mZi1i
eTogWGlhb2xlaSBMaSA8eGlhb2xlaS5saUBtZWRpYXRlay5jb20+Cj4gLS0tCj4gIGRyaXZlcnMv
bXRkL25hbmQvcmF3L210a19uYW5kLmMgfCA0NiArKysrKysrKysrKysrKysrKysrKysrKysrKy0t
LS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDM2IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygt
KQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL210ZC9uYW5kL3Jhdy9tdGtfbmFuZC5jIGIvZHJp
dmVycy9tdGQvbmFuZC9yYXcvbXRrX25hbmQuYwo+IGluZGV4IDRmYmIwYzZlY2FlMy4uZTkwYzM4
YzZmODM1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbXRkL25hbmQvcmF3L210a19uYW5kLmMKPiAr
KysgYi9kcml2ZXJzL210ZC9uYW5kL3Jhdy9tdGtfbmFuZC5jCj4gQEAgLTg3LDYgKzg3LDEwIEBA
Cj4gICNkZWZpbmUgTkZJX0ZETU0oeCkJCSgweEE0ICsgKHgpICogc2l6ZW9mKHUzMikgKiAyKQo+
ICAjZGVmaW5lIE5GSV9GRE1fTUFYX1NJWkUJKDgpCj4gICNkZWZpbmUgTkZJX0ZETV9NSU5fU0la
RQkoMSkKPiArI2RlZmluZSBORklfREVCVUdfQ09OMQkJKDB4MjIwKQo+ICsjZGVmaW5lCQlTVFJP
QkVfTUFTSwkJR0VOTUFTSyg0LCAzKQo+ICsjZGVmaW5lCQlTVFJPQkVfU0hJRlQJCSgzKQo+ICsj
ZGVmaW5lCQlNQVhfU1RST0JFX0RMWQkJKDMpCj4gICNkZWZpbmUgTkZJX01BU1RFUl9TVEEJCSgw
eDIyNCkKPiAgI2RlZmluZQkJTUFTVEVSX1NUQV9NQVNLCQkoMHgwRkZGKQo+ICAjZGVmaW5lIE5G
SV9FTVBUWV9USFJFU0gJKDB4MjNDKQo+IEBAIC01MDksNyArNTEzLDcgQEAgc3RhdGljIGludCBt
dGtfbmZjX3NldHVwX2RhdGFfaW50ZXJmYWNlKHN0cnVjdCBuYW5kX2NoaXAgKmNoaXAsIGludCBj
c2xpbmUsCj4gIAlzdHJ1Y3QgbXRrX25mYyAqbmZjID0gbmFuZF9nZXRfY29udHJvbGxlcl9kYXRh
KGNoaXApOwo+ICAJY29uc3Qgc3RydWN0IG5hbmRfc2RyX3RpbWluZ3MgKnRpbWluZ3M7Cj4gIAl1
MzIgcmF0ZSwgdHBvZWNzLCB0cHJlY3MsIHRjMnIsIHR3MnIsIHR3aCwgdHdzdCA9IDAsIHRybHQg
PSAwOwo+IC0JdTMyIHRob2xkOwo+ICsJdTMyIHRlbXAsIHRzZWwgPSAwOwo+ICAKPiAgCXRpbWlu
Z3MgPSBuYW5kX2dldF9zZHJfdGltaW5ncyhjb25mKTsKPiAgCWlmIChJU19FUlIodGltaW5ncykp
Cj4gQEAgLTU0NiwzMCArNTUwLDUyIEBAIHN0YXRpYyBpbnQgbXRrX25mY19zZXR1cF9kYXRhX2lu
dGVyZmFjZShzdHJ1Y3QgbmFuZF9jaGlwICpjaGlwLCBpbnQgY3NsaW5lLAo+ICAJdHdoICY9IDB4
ZjsKPiAgCj4gIAkvKiBDYWxjdWxhdGUgcmVhbCBXRSMvUkUjIGhvbGQgdGltZSBpbiBuYW5vc2Vj
b25kICovCj4gLQl0aG9sZCA9ICh0d2ggKyAxKSAqIDEwMDAwMDAgLyByYXRlOwo+ICsJdGVtcCA9
ICh0d2ggKyAxKSAqIDEwMDAwMDAgLyByYXRlOwo+ICAJLyogbmFub3NlY29uZCB0byBwaWNvc2Vj
b25kICovCj4gLQl0aG9sZCAqPSAxMDAwOwo+ICsJdGVtcCAqPSAxMDAwOwo+ICAKPiAgCS8qKgo+
ICAJICogV0UjIGxvdyBsZXZlbCB0aW1lIHNob3VsZCBiZSBleHBhbmVkIHRvIG1lZXQgV0UjIHB1
bHNlIHRpbWUKPiAgCSAqIGFuZCBXRSMgY3ljbGUgdGltZSBhdCB0aGUgc2FtZSB0aW1lLgo+ICAJ
ICovCj4gLQlpZiAodGhvbGQgPCB0aW1pbmdzLT50V0NfbWluKQo+IC0JCXR3c3QgPSB0aW1pbmdz
LT50V0NfbWluIC0gdGhvbGQ7Cj4gKwlpZiAodGVtcCA8IHRpbWluZ3MtPnRXQ19taW4pCj4gKwkJ
dHdzdCA9IHRpbWluZ3MtPnRXQ19taW4gLSB0ZW1wOwo+ICAJdHdzdCA9IG1heCh0aW1pbmdzLT50
V1BfbWluLCB0d3N0KSAvIDEwMDA7Cj4gIAl0d3N0ID0gRElWX1JPVU5EX1VQKHR3c3QgKiByYXRl
LCAxMDAwMDAwKSAtIDE7Cj4gIAl0d3N0ICY9IDB4ZjsKPiAgCj4gIAkvKioKPiAtCSAqIFJFIyBs
b3cgbGV2ZWwgdGltZSBzaG91bGQgYmUgZXhwYW5lZCB0byBtZWV0IFJFIyBwdWxzZSB0aW1lLAo+
IC0JICogUkUjIGFjY2VzcyB0aW1lIGFuZCBSRSMgY3ljbGUgdGltZSBhdCB0aGUgc2FtZSB0aW1l
Lgo+ICsJICogUkUjIGxvdyBsZXZlbCB0aW1lIHNob3VsZCBiZSBleHBhbmVkIHRvIG1lZXQgUkUj
IHB1bHNlIHRpbWUKPiArCSAqIGFuZCBSRSMgY3ljbGUgdGltZSBhdCB0aGUgc2FtZSB0aW1lLgo+
ICAJICovCj4gLQlpZiAodGhvbGQgPCB0aW1pbmdzLT50UkNfbWluKQo+IC0JCXRybHQgPSB0aW1p
bmdzLT50UkNfbWluIC0gdGhvbGQ7Cj4gLQl0cmx0ID0gbWF4Myh0cmx0LCB0aW1pbmdzLT50UkVB
X21heCwgdGltaW5ncy0+dFJQX21pbikgLyAxMDAwOwo+ICsJaWYgKHRlbXAgPCB0aW1pbmdzLT50
UkNfbWluKQo+ICsJCXRybHQgPSB0aW1pbmdzLT50UkNfbWluIC0gdGVtcDsKPiArCXRybHQgPSBt
YXgodHJsdCwgdGltaW5ncy0+dFJQX21pbikgLyAxMDAwOwo+ICAJdHJsdCA9IERJVl9ST1VORF9V
UCh0cmx0ICogcmF0ZSwgMTAwMDAwMCkgLSAxOwo+ICAJdHJsdCAmPSAweGY7Cj4gIAo+ICsJLyoq
CgogICAgICAgIC8qCgo+ICsJICogQ2FsY3VsYXRlIHN0cm9iZSBzZWxlY3QgdGltaW5nLgo+ICsJ
ICogSWYgUkUjIGFjY2VzcyB0aW1lIGlzIGJpZ2dlciB0aGFuIFJFIyBwdWxzZSB0aW1lLAo+ICsJ
ICogZGVsYXkgc2FtcGxpbmcgZGF0YSB0aW1pbmcuCj4gKwkgKi8KPiArCXRlbXAgPSAodHJsdCAr
IDEpICogMTAwMDAwMCAvIHJhdGU7CgpZb3UgY291bGQgcHJlY2lzZSB3aGF0IHVuaXQgY29udmVy
c2lvbiB5b3UgZG8gaGVyZS4KCj4gKwkvKiBuYW5vc2Vjb25kIHRvIHBpY29zZWNvbmQgKi8KPiAr
CXRlbXAgKj0gMTAwMDsKPiArCWlmICh0ZW1wIDwgdGltaW5ncy0+dFJFQV9tYXgpIHsKPiArCQl0
c2VsID0gdGltaW5ncy0+dFJFQV9tYXggLyAxMDAwOwo+ICsJCXRzZWwgPSBESVZfUk9VTkRfVVAo
dHNlbCAqIHJhdGUsIDEwMDAwMDApOwo+ICsJCXRzZWwgLT0gKHRybHQgKyAxKTsKPiArCQlpZiAo
dHNlbCA+IE1BWF9TVFJPQkVfRExZKSB7Cj4gKwkJCXRybHQgKz0gdHNlbCAtIE1BWF9TVFJPQkVf
RExZOwo+ICsJCQl0c2VsID0gTUFYX1NUUk9CRV9ETFk7Cj4gKwkJfQo+ICsJfQo+ICsJdGVtcCA9
IG5maV9yZWFkbChuZmMsIE5GSV9ERUJVR19DT04xKTsKPiArCXRlbXAgJj0gflNUUk9CRV9NQVNL
Owo+ICsJdGVtcCB8PSB0c2VsIDw8IFNUUk9CRV9TSElGVDsKPiArCW5maV93cml0ZWwobmZjLCB0
ZW1wLCBORklfREVCVUdfQ09OMSk7Cj4gKwo+ICAJLyoKPiAgCSAqIEFDQ09OOiBhY2Nlc3MgdGlt
aW5nIGNvbnRyb2wgcmVnaXN0ZXIKPiAgCSAqIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0KCldpdGggdGhpczoKClJldmlld2VkLWJ5OiBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwu
cmF5bmFsQGJvb3RsaW4uY29tPgoKClRoYW5rcywKTWlxdcOobAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9u
IG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LW10ZC8K
