Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D57DFF89F
	for <lists+linux-mtd@lfdr.de>; Tue, 30 Apr 2019 14:17:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VyX7pl4h/f0oINx22WrCPZ6bu05gYskVqsVJRbfoPaY=; b=AbGT4pyXerIJSP
	YPKpevN7YLYX+swn9XNqr9LGR2oEgfxek7HCpoidJGZ/EeC182R74y92vt4twhxSWOUDijIIxjo7Q
	EgOfBIfX7Eu90M3q/pQdmtwK2YGazwNlsUNM/897oHZzjama/mxjzhj5VC43wgu8cFhOtwGbGqiwW
	lkoJOvC1/SN5PAVaqM2usdTsTfUZqCpxbhFN3cETcncPRUuHRTPmkZOgfu9fO3SgJ2shn2TSe8rtj
	E/b9R19ub28Wp0HY8UkUXkM0TJtAFgASiEKZ9dcI2HiLt27FSj0BZJBPF0I/BNchOi10otxeGxgKp
	zd0qTZ8nh5ewC62YoOvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLRhX-0000bD-D2; Tue, 30 Apr 2019 12:17:35 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLRhO-0000a1-Ph; Tue, 30 Apr 2019 12:17:28 +0000
X-Originating-IP: 90.88.147.33
Received: from xps13 (aaubervilliers-681-1-27-33.w90-88.abo.wanadoo.fr
 [90.88.147.33]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id DE327240015;
 Tue, 30 Apr 2019 12:17:23 +0000 (UTC)
Date: Tue, 30 Apr 2019 14:17:23 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Xiaolei Li <xiaolei.li@mediatek.com>
Subject: Re: [PATCH v2 5/5] mtd: rawnand: mtk: Setup empty page threshold
 correctly
Message-ID: <20190430141723.3b775a53@xps13>
In-Reply-To: <20190430100250.28083-6-xiaolei.li@mediatek.com>
References: <20190430100250.28083-1-xiaolei.li@mediatek.com>
 <20190430100250.28083-6-xiaolei.li@mediatek.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_051726_981305_413DC2CD 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
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
biBUdWUsIDMwIEFwciAyMDE5IDE4OjAyOjUwCiswODAwOgoKPiBNVEsgTkFORCBDb250cm9sbGVy
IGhhcyB0aGUgYWJpbGl0eSB0byBjaGVjayB3aGV0aGVyIHJlYWQgZGF0YSBhcmUKPiBtb3N0bHkg
MHhmZiBieSBjb21wYXJpbmcgemVybyBiaXQgY291bnQgb2YgcmVhZCBkYXRhIHdpdGggZW1wdHkK
PiB0aHJlc2hvbGQgYXV0b21hdGljYWxseS4KPiAKPiBCdXQgbm93IHdlIG5ldmVyIHNldCB0aGlz
IHRocmVzaG9sZCBhbmQgYWx3YXlzIG1ha2UgaXQgYmUgZGVmYXVsdCB2YWx1ZQo+IHdoaWNoIGlz
IDEwLgo+IAo+IFRoaXMgcGF0Y2ggZml4ZXMgdGhpcyBwcm9ibGVtIGJ5IHNldHRpbmcgZW1wdHkg
dGhyZXNob2xkIGFzIHRoZSBwcm9kdWN0Cj4gb2YgcmVhZCBzZWN0b3IgY291bnQgYW5kIEVDQyBz
dHJlbmd0aC4KCkFyZSB5b3Ugc3VyZSBpdCBpcyBub3QgYSBwZXItc2VjdG9yIHZhbHVlPwoKRGlk
IHlvdSB1c2UgbmFuZGJpdGVycnMgdG8gdmFsaWRhdGU/Cgo+IAo+IEZpeGVzOiAxZDZiMWU0NjQ5
NTAgKCJtdGQ6IG1lZGlhdGVrOiBkcml2ZXIgZm9yIE1USyBTbWFydCBEZXZpY2UiKQo+IFNpZ25l
ZC1vZmYtYnk6IFhpYW9sZWkgTGkgPHhpYW9sZWkubGlAbWVkaWF0ZWsuY29tPgo+IC0tLQo+ICBk
cml2ZXJzL210ZC9uYW5kL3Jhdy9tdGtfbmFuZC5jIHwgOSArKysrKysrKysKPiAgMSBmaWxlIGNo
YW5nZWQsIDkgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL210ZC9uYW5k
L3Jhdy9tdGtfbmFuZC5jIGIvZHJpdmVycy9tdGQvbmFuZC9yYXcvbXRrX25hbmQuYwo+IGluZGV4
IDQ4NzU5YWY1YzA1OC4uYjU2OTY1MzI4NzcxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbXRkL25h
bmQvcmF3L210a19uYW5kLmMKPiArKysgYi9kcml2ZXJzL210ZC9uYW5kL3Jhdy9tdGtfbmFuZC5j
Cj4gQEAgLTk0LDYgKzk0LDcgQEAKPiAgI2RlZmluZSBORklfTUFTVEVSX1NUQQkJKDB4MjI0KQo+
ICAjZGVmaW5lCQlNQVNURVJfU1RBX01BU0sJCSgweDBGRkYpCj4gICNkZWZpbmUgTkZJX0VNUFRZ
X1RIUkVTSAkoMHgyM0MpCj4gKyNkZWZpbmUJCUVNUFRZX1RIUkVTSF9NQVNLCUdFTk1BU0soNywg
MCkKPiAgCj4gICNkZWZpbmUgTVRLX05BTUUJCSJtdGstbmFuZCIKPiAgI2RlZmluZSBLQih4KQkJ
CSgoeCkgKiAxMDI0VUwpCj4gQEAgLTk0Nyw2ICs5NDgsMTQgQEAgc3RhdGljIGludCBtdGtfbmZj
X3JlYWRfc3VicGFnZShzdHJ1Y3QgbXRkX2luZm8gKm10ZCwgc3RydWN0IG5hbmRfY2hpcCAqY2hp
cCwKPiAgCQlyZXR1cm4gLUVJTlZBTDsKPiAgCX0KPiAgCj4gKwkvKioKCiAgICAgICAgLyoKCj4g
KwkgKiBTZXR1cCBlbXB0eSB0aHJlc2hvbGQgYXMgdGhlIHByb2R1Y3Qgb2Ygc2VjdG9yIGNvdW50
Cj4gKwkgKiBhbmQgRUNDIHN0cmVuZ3RoCj4gKwkgKi8KPiArCXJlZyA9IHNlY3RvcnMgKiBjaGlw
LT5lY2Muc3RyZW5ndGg7Cj4gKwlyZWcgPSBtaW5fdCh1bnNpZ25lZCBpbnQsIHJlZywgRU1QVFlf
VEhSRVNIX01BU0spOwo+ICsJbmZpX3dyaXRlbChuZmMsIHJlZywgTkZJX0VNUFRZX1RIUkVTSCk7
Cj4gKwo+ICAJcmVnID0gbmZpX3JlYWR3KG5mYywgTkZJX0NORkcpOwo+ICAJcmVnIHw9IENORkdf
UkVBRF9FTiB8IENORkdfRE1BX0JVUlNUX0VOIHwgQ05GR19BSEI7Cj4gIAlpZiAoIXJhdykgewoK
ClRoYW5rcywKTWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
