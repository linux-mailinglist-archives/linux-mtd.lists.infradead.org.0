Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB59B1CC20C
	for <lists+linux-mtd@lfdr.de>; Sat,  9 May 2020 16:13:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Qj7Md0NziWO1b9d2LEWc7SDg9ZqzIt2s3bPx7/+fHA=; b=BM9GH+/sM4Ndrp
	wk1VbIOFYIGxngBdUtbGCT8kTLxyaPC99oICWSSUfQGRPCDq2oxc8NswnXC7D2liLUkkfyZPVkMfC
	VlGtpn8YxEDRkwJ2JO+GwcGABk2lgzOgY9Nlzwt0R2nnF793/Iy5FjnbXVeuIHGuqevZjGiRBsaBy
	dFJ4jRTkq93WvpQtE9GpGx3pRJK9aqWvpr5k7zXwFLj88p1OutIhQX2LjAgN+DtzsLI0ESAtDbLxo
	LUdsR7aIloOuXBgtaDpl/lQX+6mf3yiQ2DsdlQn3qcyAyFm/nT4vELVHlVTiKMVKgVpw3bJ4hvAoI
	RqbmTbCLe0BGS90PKoCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXQEV-0007CO-U0; Sat, 09 May 2020 14:13:39 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXQEO-0007BZ-EF
 for linux-mtd@lists.infradead.org; Sat, 09 May 2020 14:13:34 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 197192A196D;
 Sat,  9 May 2020 15:13:29 +0100 (BST)
Date: Sat, 9 May 2020 16:13:25 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: Re: [PATCH 0/5] mtd: rawnand: davinci: Convert to exec_op()
Message-ID: <20200509161325.46dcb266@collabora.com>
In-Reply-To: <CAMpxmJXmPcwo6uomrrwbcFe9gkhxvYVw0Y6o1n5uSGBwPKd5_A@mail.gmail.com>
References: <20200501100729.1237040-1-boris.brezillon@collabora.com>
 <CAMpxmJXmPcwo6uomrrwbcFe9gkhxvYVw0Y6o1n5uSGBwPKd5_A@mail.gmail.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_071332_738301_3FBC04B2 
X-CRM114-Status: GOOD (  21.91  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Sekhar Nori <nsekhar@ti.com>,
 "open list:MEMORY TECHNOLOGY..." <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T24gTW9uLCA0IE1heSAyMDIwIDE4OjM0OjU1ICswMjAwCkJhcnRvc3ogR29sYXN6ZXdza2kgPGJn
b2xhc3pld3NraUBiYXlsaWJyZS5jb20+IHdyb3RlOgoKPiBwdC4sIDEgbWFqIDIwMjAgbyAxMjow
NyBCb3JpcyBCcmV6aWxsb24KPiA8Ym9yaXMuYnJlemlsbG9uQGNvbGxhYm9yYS5jb20+IG5hcGlz
YcWCKGEpOgo+ID4KPiA+IEhlbGxvLAo+ID4KPiA+IEEgYml0IG9mIGNvbnRleHQgdG8gZXhwbGFp
biB0aGUgbW90aXZhdGlvbiBiZWhpbmQgdGhvc2UgY29udmVyc2lvbnMKPiA+IEkndmUgYmVlbiBz
ZW5kaW5nIGZvciB0aGUgbGFzdCBjb3VwbGUgb2Ygd2Vla3MuIFRoZSByYXcgTkFORCBzdWJzeXN0
ZW0KPiA+IGNhcnJpZXMgYSBsb3Qgb2YgaGlzdG9yeSB3aGljaCBtYWtlcyBhbnkgcmV3b3JrIG5v
dCBvbmx5IHBhaW5mdWwsIGJ1dAo+ID4gYWxzbyBzdWJqZWN0IHRvIHJlZ3Jlc3Npb25zIHdoaWNo
IHdlIG9ubHkgZGV0ZWN0IHdoZW4gc29tZW9uZSBkYXJlcyB0bwo+ID4gdXBkYXRlIGl0cyBrZXJu
ZWwgb24gb25lIG9mIHRob3NlIGFuY2llbnQgSFcuIFdoaWxlIGNhcnJ5aW5nIGRyaXZlcnMKPiA+
IGZvciBvbGQgSFcgaXMgbm90IGEgcHJvYmxlbSBwZXIgc2UsIGNhcnJ5aW5nIGFuY2llbnQgYW5k
IHVubWFpbnRhaW5lZAo+ID4gZHJpdmVycyB0aGF0IGFyZSBub3QgY29udmVydGVkIHRvIG5ldyBB
UElzIGlzIGEgbWFpbnRlbmFuY2UgYnVyZGVuLAo+ID4gaGVuY2UgdGhpcyBtYXNzaXZlIGNvbnZl
cnNpb24gYXR0ZW1wdCBJJ20gY29uZHVjdGluZyBoZXJlLgo+ID4KPiA+IFNvIGhlcmUgaXMgYSBz
ZXJpZXMgY29udmVydGluZyB0aGUgRGF2aW5jaSBOQU5EIGNvbnRyb2xsZXIgZHJpdmVyIHRvCj4g
PiBleGVjX29wKCksIHBsdXMgYSBidW5jaCBvZiBtaW5vciBpbXByb3ZlbWVudHMgZG9uZSBhbG9u
ZyB0aGUgd2F5Lgo+ID4KPiA+IFJlZ2FyZHMsCj4gPgo+ID4gQm9yaXMKPiA+Cj4gPiBCb3JpcyBC
cmV6aWxsb24gKDUpOgo+ID4gICBtdGQ6IHJhd25hbmQ6IGRhdmluY2k6IEluaGVyaXQgZnJvbSBu
YW5kX2NvbnRyb2xsZXIKPiA+ICAgbXRkOiByYXduYW5kOiBkYXZpbmNpOiBTdG9wIHVzaW5nIG5h
bmRfY2hpcC5sZWdhY3kuSU9fQUREUl97UixXfQo+ID4gICBtdGQ6IHJhd25hbmQ6IGRhdmluY2k6
IEltcGxlbWVudCBleGVjX29wKCkKPiA+ICAgbXRkOiByYXduYW5kOiBkYXZpbmNpOiBHZXQgcmlk
IG9mIHRoZSBsZWdhY3kgaW50ZXJmYWNlIGltcGxlbWVudGF0aW9uCj4gPiAgIG10ZDogcmF3bmFu
ZDogZGF2aW5jaTogQ2hhbmdlIHRoZSB7cmVhZCx3cml0ZX1fYnVmIHByb3RvdHlwZXMKPiA+Cj4g
PiAgZHJpdmVycy9tdGQvbmFuZC9yYXcvZGF2aW5jaV9uYW5kLmMgfCAxNjEgKysrKysrKysrKysr
KysrLS0tLS0tLS0tLS0tLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA4NSBpbnNlcnRpb25zKCspLCA3
NiBkZWxldGlvbnMoLSkKPiA+Cj4gPiAtLQo+ID4gMi4yNS4zCj4gPiAgCj4gCj4gSGkgQm9yaXMs
Cj4gCj4gVGhhbmtzIGZvciBkb2luZyB0aGlzLiBVbmZvcnR1bmF0ZWx5IHRoaXMgYnJlYWtzIE5B
TkQgb24gZGE4NTAtbGNkawo+IHdpdGggdGhlIGZvbGxvd2luZyBlcnJvciBtZXNzYWdlOgo+IAo+
ICAgICBuYW5kOiBObyBOQU5EIGRldmljZSBmb3VuZAoKSSBoYWQgYSBzZWNvbmQgbG9vayBhbmQg
dGhlIGJlbG93IGRpZmYgc2hvdWxkIGZpeCB0aGUgZGV0ZWN0aW9uICh5b3UKY2FuIGFsc28gZmlu
ZCB0aG9zZSBjaGFuZ2VzIGluIG15IGV4ZWMtb3AtY29udmVyc2lvbiBicmFuY2ggWzFdKS4KClsx
XWh0dHBzOi8vZ2l0aHViLmNvbS9iYnJlemlsbG9uL2xpbnV4L3RyZWUvbmFuZC9leGVjLW9wLWNv
bnZlcnNpb24KCi0tLT44LS0tCmRpZmYgLS1naXQgYS9kcml2ZXJzL210ZC9uYW5kL3Jhdy9kYXZp
bmNpX25hbmQuYyBiL2RyaXZlcnMvbXRkL25hbmQvcmF3L2RhdmluY2lfbmFuZC5jCmluZGV4IDI5
NjA0Nzg4NGM2YS4uMGVlYjMwYzdmYzRlIDEwMDY0NAotLS0gYS9kcml2ZXJzL210ZC9uYW5kL3Jh
dy9kYXZpbmNpX25hbmQuYworKysgYi9kcml2ZXJzL210ZC9uYW5kL3Jhdy9kYXZpbmNpX25hbmQu
YwpAQCAtNjc4LDYgKzY3OCwzMyBAQCBzdGF0aWMgaW50IGRhdmluY2lfbmFuZF9hdHRhY2hfY2hp
cChzdHJ1Y3QgbmFuZF9jaGlwICpjaGlwKQogICAgICAgIHJldHVybiByZXQ7CiB9CiAKK3N0YXRp
YyB2b2lkIG5hbmRfZGF2aW5jaV9kYXRhX2luKHN0cnVjdCBkYXZpbmNpX25hbmRfaW5mbyAqaW5m
bywgdm9pZCAqYnVmLAorICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1bnNpZ25lZCBp
bnQgbGVuLCBib29sIGZvcmNlXzhiaXQpCit7CisgICAgICAgdTMyIGFsaWdubWVudCA9ICgodWlu
dHB0cl90KWJ1ZiB8IGxlbikgJiAzOworCisgICAgICAgaWYgKGZvcmNlXzhiaXQgfHwgKGFsaWdu
bWVudCAmIDEpKQorICAgICAgICAgICAgICAgaW9yZWFkOF9yZXAoaW5mby0+Y3VycmVudF9jcywg
YnVmLCBsZW4pOworICAgICAgIGVsc2UgaWYgKGFsaWdubWVudCAmIDMpCisgICAgICAgICAgICAg
ICBpb3JlYWQxNl9yZXAoaW5mby0+Y3VycmVudF9jcywgYnVmLCBsZW4gPj4gMSk7CisgICAgICAg
ZWxzZQorICAgICAgICAgICAgICAgaW9yZWFkMzJfcmVwKGluZm8tPmN1cnJlbnRfY3MsIGJ1Ziwg
bGVuID4+IDIpOworfQorCitzdGF0aWMgdm9pZCBuYW5kX2RhdmluY2lfZGF0YV9vdXQoc3RydWN0
IGRhdmluY2lfbmFuZF9pbmZvICppbmZvLAorICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgY29uc3Qgdm9pZCAqYnVmLCB1bnNpZ25lZCBpbnQgbGVuLAorICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgYm9vbCBmb3JjZV84Yml0KQoreworICAgICAgIHUzMiBhbGlnbm1lbnQg
PSAoKHVpbnRwdHJfdClidWYgfCBsZW4pICYgMzsKKworICAgICAgIGlmIChmb3JjZV84Yml0IHx8
IChhbGlnbm1lbnQgJiAxKSkKKyAgICAgICAgICAgICAgIGlvd3JpdGU4X3JlcChpbmZvLT5jdXJy
ZW50X2NzLCBidWYsIGxlbik7CisgICAgICAgZWxzZSBpZiAoYWxpZ25tZW50ICYgMykKKyAgICAg
ICAgICAgICAgIGlvd3JpdGUxNl9yZXAoaW5mby0+Y3VycmVudF9jcywgYnVmLCBsZW4gPj4gMSk7
CisgICAgICAgZWxzZQorICAgICAgICAgICAgICAgaW93cml0ZTMyX3JlcChpbmZvLT5jdXJyZW50
X2NzLCBidWYsIGxlbiA+PiAyKTsKK30KKwogc3RhdGljIGludCBkYXZpbmNpX25hbmRfZXhlY19p
bnN0cihzdHJ1Y3QgZGF2aW5jaV9uYW5kX2luZm8gKmluZm8sCiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgY29uc3Qgc3RydWN0IG5hbmRfb3BfaW5zdHIgKmluc3RyKQogewpAQCAt
Njk5LDEzICs3MjYsMTUgQEAgc3RhdGljIGludCBkYXZpbmNpX25hbmRfZXhlY19pbnN0cihzdHJ1
Y3QgZGF2aW5jaV9uYW5kX2luZm8gKmluZm8sCiAgICAgICAgICAgICAgICBicmVhazsKIAogICAg
ICAgIGNhc2UgTkFORF9PUF9EQVRBX0lOX0lOU1RSOgotICAgICAgICAgICAgICAgbmFuZF9kYXZp
bmNpX3JlYWRfYnVmKCZpbmZvLT5jaGlwLCBpbnN0ci0+Y3R4LmRhdGEuYnVmLmluLAotICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGluc3RyLT5jdHguZGF0YS5sZW4pOworICAg
ICAgICAgICAgICAgbmFuZF9kYXZpbmNpX2RhdGFfaW4oaW5mbywgaW5zdHItPmN0eC5kYXRhLmJ1
Zi5pbiwKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGluc3RyLT5jdHguZGF0
YS5sZW4sCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbnN0ci0+Y3R4LmRh
dGEuZm9yY2VfOGJpdCk7CiAgICAgICAgICAgICAgICBicmVhazsKIAogICAgICAgIGNhc2UgTkFO
RF9PUF9EQVRBX09VVF9JTlNUUjoKLSAgICAgICAgICAgICAgIG5hbmRfZGF2aW5jaV93cml0ZV9i
dWYoJmluZm8tPmNoaXAsIGluc3RyLT5jdHguZGF0YS5idWYub3V0LAotICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBpbnN0ci0+Y3R4LmRhdGEubGVuKTsKKyAgICAgICAgICAg
ICAgIG5hbmRfZGF2aW5jaV9kYXRhX291dChpbmZvLCBpbnN0ci0+Y3R4LmRhdGEuYnVmLm91dCwK
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbnN0ci0+Y3R4LmRhdGEubGVu
LAorICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGluc3RyLT5jdHguZGF0YS5m
b3JjZV84Yml0KTsKICAgICAgICAgICAgICAgIGJyZWFrOwogCiAgICAgICAgY2FzZSBOQU5EX09Q
X1dBSVRSRFlfSU5TVFI6CkBAIC03MzEsMjAgKzc2MCwyMSBAQCBzdGF0aWMgaW50IGRhdmluY2lf
bmFuZF9leGVjX29wKHN0cnVjdCBuYW5kX2NoaXAgKmNoaXAsCiB7CiAgICAgICAgc3RydWN0IGRh
dmluY2lfbmFuZF9pbmZvICppbmZvID0gdG9fZGF2aW5jaV9uYW5kKG5hbmRfdG9fbXRkKGNoaXAp
KTsKICAgICAgICB1bnNpZ25lZCBpbnQgaTsKLSAgICAgICBpbnQgcmV0OwogCiAgICAgICAgaWYg
KGNoZWNrX29ubHkpCi0gICAgICAgICAgICAgICByZXR1cm4gdHJ1ZTsKKyAgICAgICAgICAgICAg
IHJldHVybiAwOwogCiAgICAgICAgaW5mby0+Y3VycmVudF9jcyA9IGluZm8tPnZhZGRyICsgKG9w
LT5jcyAqIGluZm8tPm1hc2tfY2hpcHNlbCk7CiAKICAgICAgICBmb3IgKGkgPSAwOyBpIDwgb3At
Pm5pbnN0cnM7IGkrKykgeworICAgICAgICAgICAgICAgaW50IHJldDsKKwogICAgICAgICAgICAg
ICAgcmV0ID0gZGF2aW5jaV9uYW5kX2V4ZWNfaW5zdHIoaW5mbywgJm9wLT5pbnN0cnNbaV0pOwog
ICAgICAgICAgICAgICAgaWYgKHJldCkKLSAgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7Cisg
ICAgICAgICAgICAgICAgICAgICAgIHJldHVybiByZXQ7CiAgICAgICAgfQogCi0gICAgICAgcmV0
dXJuIHJldDsKKyAgICAgICByZXR1cm4gMDsKIH0KIAogc3RhdGljIGNvbnN0IHN0cnVjdCBuYW5k
X2NvbnRyb2xsZXJfb3BzIGRhdmluY2lfbmFuZF9jb250cm9sbGVyX29wcyA9IHsKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVRE
IGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtbXRkLwo=
