Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B9A1BE3CF
	for <lists+linux-mtd@lfdr.de>; Wed, 29 Apr 2020 18:27:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MSw19kaFVBqyQeSjEvTQcSRBTVivLzf5NCVYKMfw3vc=; b=iH/BBUfn3qs5nA
	d8R67d+d+QxvEpJ9ONWUZ814cZVHc/MJP57pafG6Al+dB/jxaokaHZZO3QBmRNzzXgjzGqrsvOwIP
	9nCaJ/uaAc9cXhCnXoJPcisGLebtsgWes4KU2myDK61/sjb3cLeuB0wz+f2acaISqubbmn92yXN3W
	icdcloHTTBT7wXPWr6hFf0ppZ0nkbm0sA4aoyltwpLAg6dc2wHYahoTs7gYTpel2nIEFdsBm/vy3w
	vA/D0THYbSSS5xP2snGwOeHrKwpqRUwScyUFRxM06B8Wi8zv8EAmiENxKrFhmGbdl5f8k1b90jefM
	LIUukJy4RXQttuccyOVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTpY7-00062g-Ud; Wed, 29 Apr 2020 16:27:03 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTpXg-0005pR-07
 for linux-mtd@lists.infradead.org; Wed, 29 Apr 2020 16:26:39 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 8A29820013;
 Wed, 29 Apr 2020 16:26:32 +0000 (UTC)
Date: Wed, 29 Apr 2020 18:26:31 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v2 09/11] mtd: rawnand: Expose monolithic
 read/write_page_raw() helpers
Message-ID: <20200429182631.71cafee4@xps13>
In-Reply-To: <20200429181509.657aa2e5@collabora.com>
References: <20200429155540.22048-1-miquel.raynal@bootlin.com>
 <20200429155540.22048-10-miquel.raynal@bootlin.com>
 <20200429181509.657aa2e5@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_092636_364427_2B9A7F8A 
X-CRM114-Status: GOOD (  19.70  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Cc: Michal Simek <monstr@monstr.eu>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgQm9yaXMsCgpCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29t
PiB3cm90ZSBvbiBXZWQsIDI5IEFwcgoyMDIwIDE4OjE1OjA5ICswMjAwOgoKPiBPbiBXZWQsIDI5
IEFwciAyMDIwIDE3OjU1OjM4ICswMjAwCj4gTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBi
b290bGluLmNvbT4gd3JvdGU6Cj4gCj4gPiBUaGUgY3VycmVudCBuYW5kX3JlYWQvd3JpdGVfcGFn
ZV9yYXcoKSBoZWxwZXJzIGFyZSBhbHJlYWR5IHdpZGVseSB1c2VkCj4gPiBidXQgZG8gbm90IGZp
dCB0aGUgcHVycG9zZSBvZiAiY29uc3RyYWluZWQiIGNvbnRyb2xsZXJzIHdoaWNoIGNhbm5vdCwK
PiA+IGZvciBpbnN0YW5jZSwgc2VwYXJhdGUgY29tbWFuZC9hZGRyZXNzIGN5Y2xlcyB3aXRoIGRh
dGEgY3ljbGVzLgo+ID4gCj4gPiBXb3JrYXJvdW5kIHRoaXMgaXNzdWUgYnkgcHJvcG9zaW5nIGFs
dGVybmF0aXZlIGhlbHBlcnMgdGhhdCBjYW5ub3QgYmUKPiA+IHVzZWQgYnkgY29udHJvbGxlciBk
cml2ZXJzIGluc3RlYWQuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IE1pcXVlbCBSYXluYWwgPG1p
cXVlbC5yYXluYWxAYm9vdGxpbi5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL210ZC9uYW5kL3Jh
dy9uYW5kX2Jhc2UuYyB8IDYwICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gPiAg
aW5jbHVkZS9saW51eC9tdGQvcmF3bmFuZC5oICAgICAgfCAgOCArKystLQo+ID4gIDIgZmlsZXMg
Y2hhbmdlZCwgNjYgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvbXRkL25hbmQvcmF3L25hbmRfYmFzZS5jIGIvZHJpdmVycy9tdGQvbmFu
ZC9yYXcvbmFuZF9iYXNlLmMKPiA+IGluZGV4IDE1YTkxODliMjMwNy4uMmU1MjVjYjVhNGU0IDEw
MDY0NAo+ID4gLS0tIGEvZHJpdmVycy9tdGQvbmFuZC9yYXcvbmFuZF9iYXNlLmMKPiA+ICsrKyBi
L2RyaXZlcnMvbXRkL25hbmQvcmF3L25hbmRfYmFzZS5jCj4gPiBAQCAtMjYyOSw2ICsyNjI5LDM5
IEBAIGludCBuYW5kX3JlYWRfcGFnZV9yYXcoc3RydWN0IG5hbmRfY2hpcCAqY2hpcCwgdWludDhf
dCAqYnVmLCBpbnQgb29iX3JlcXVpcmVkLAo+ID4gIH0KPiA+ICBFWFBPUlRfU1lNQk9MKG5hbmRf
cmVhZF9wYWdlX3Jhdyk7Cj4gPiAgCj4gPiArLyoqCj4gPiArICogbmFuZF9tb25vbGl0aGljX3Jl
YWRfcGFnZV9yYXcgLSBSZWFkIHJhdyBwYWdlIGRhdGEgd2l0aG91dCBFQ0MgaW4gb25lIGdvICAK
PiAKPiBNYXliZQo+IAo+ICJSZWFkIHRoZSBmdWxsIHBhZ2UgKGRhdGEgKyBPT0IpIHdpdGggRUND
IGVuZ2luZSBkaXNhYmxlZCIKPiAKPiA/CgpUaGlzIGlzIG5vdCBhY2N1cmF0ZSBhcyB3ZSBkb24n
dCBlbmZvcmNlIE9PQiByZWFkLgoKRG9uJ3QgeW91IGZpbmQgImluIG9uZSBnbyIgZXhwbGljaXQg
ZW5vdWdoPwoKPiAKPiA+ICsgKiBAY2hpcDogbmFuZCBjaGlwIGluZm8gc3RydWN0dXJlCj4gPiAr
ICogQGJ1ZjogYnVmZmVyIHRvIHN0b3JlIHJlYWQgZGF0YQo+ID4gKyAqIEBvb2JfcmVxdWlyZWQ6
IGNhbGxlciByZXF1aXJlcyBPT0IgZGF0YSByZWFkIHRvIGNoaXAtPm9vYl9wb2kKPiA+ICsgKiBA
cGFnZTogcGFnZSBudW1iZXIgdG8gcmVhZAo+ID4gKyAqLwo+ID4gK2ludCBuYW5kX21vbm9saXRo
aWNfcmVhZF9wYWdlX3JhdyhzdHJ1Y3QgbmFuZF9jaGlwICpjaGlwLCB1OCAqYnVmLAo+ID4gKwkJ
CQkgIGludCBvb2JfcmVxdWlyZWQsIGludCBwYWdlKQo+ID4gK3sKPiA+ICsJc3RydWN0IG10ZF9p
bmZvICptdGQgPSBuYW5kX3RvX210ZChjaGlwKTsKPiA+ICsJdW5zaWduZWQgaW50IHNpemUgPSBt
dGQtPndyaXRlc2l6ZTsKPiA+ICsJdTggKnJlYWRfYnVmID0gYnVmOwo+ID4gKwlpbnQgcmV0Owo+
ID4gKwo+ID4gKwlpZiAob29iX3JlcXVpcmVkKSB7Cj4gPiArCQlzaXplICs9IG10ZC0+b29ic2l6
ZTsKPiA+ICsKPiA+ICsJCWlmIChidWYgIT0gY2hpcC0+ZGF0YV9idWYpCj4gPiArCQkJcmVhZF9i
dWYgPSBuYW5kX2dldF9kYXRhX2J1ZihjaGlwKTsKPiA+ICsJfQo+ID4gKwo+ID4gKwlyZXQgPSBu
YW5kX3JlYWRfcGFnZV9vcChjaGlwLCBwYWdlLCAwLCByZWFkX2J1Ziwgc2l6ZSk7Cj4gPiArCWlm
IChyZXQpCj4gPiArCQlyZXR1cm4gcmV0Owo+ID4gKwo+ID4gKwlpZiAoYnVmICE9IGNoaXAtPmRh
dGFfYnVmKQo+ID4gKwkJbWVtY3B5KGJ1ZiwgcmVhZF9idWYsIG10ZC0+d3JpdGVzaXplKTsKPiA+
ICsKPiA+ICsJcmV0dXJuIDA7Cj4gPiArfQo+ID4gK0VYUE9SVF9TWU1CT0wobmFuZF9tb25vbGl0
aGljX3JlYWRfcGFnZV9yYXcpOwo+ID4gKwo+ID4gIC8qKgo+ID4gICAqIG5hbmRfcmVhZF9wYWdl
X3Jhd19zeW5kcm9tZSAtIFtJTlRFUk5dIHJlYWQgcmF3IHBhZ2UgZGF0YSB3aXRob3V0IGVjYwo+
ID4gICAqIEBjaGlwOiBuYW5kIGNoaXAgaW5mbyBzdHJ1Y3R1cmUKPiA+IEBAIC0zNjM2LDYgKzM2
NjksMzMgQEAgaW50IG5hbmRfd3JpdGVfcGFnZV9yYXcoc3RydWN0IG5hbmRfY2hpcCAqY2hpcCwg
Y29uc3QgdWludDhfdCAqYnVmLAo+ID4gIH0KPiA+ICBFWFBPUlRfU1lNQk9MKG5hbmRfd3JpdGVf
cGFnZV9yYXcpOwo+ID4gIAo+ID4gKy8qKgo+ID4gKyAqIG5hbmRfbW9ub2xpdGhpY193cml0ZV9w
YWdlX3JhdyAtIFJhdyBwYWdlIHdyaXRlIGluIG9uZSBnbyAgCj4gCj4gTWF5YmUgd2Ugc2hvdWxk
IGhhdmUgYSBjb25zaXN0ZW50IGRlc2NyaXB0aW9uIGZvciB0aG9zZSBoZWxwZXJzOgo+IAo+ICJX
cml0ZSB0aGUgZnVsbCBwYWdlIChkYXRhICsgT09CKSB3aXRoIEVDQyBlbmdpbmUgZGlzYWJsZWQi
Cj4gCj4gPyoKPiAKPiA+ICsgKiBAY2hpcDogTkFORCBjaGlwIGluZm8gc3RydWN0dXJlCj4gPiAr
ICogQGJ1ZjogZGF0YSBidWZmZXIKPiA+ICsgKiBAb29iX3JlcXVpcmVkOiBtdXN0IHdyaXRlIGNo
aXAtPm9vYl9wb2kgdG8gT09CCj4gPiArICogQHBhZ2U6IHBhZ2UgbnVtYmVyIHRvIHdyaXRlCj4g
PiArICovCj4gPiAraW50IG5hbmRfbW9ub2xpdGhpY193cml0ZV9wYWdlX3JhdyhzdHJ1Y3QgbmFu
ZF9jaGlwICpjaGlwLCBjb25zdCB1OCAqYnVmLAo+ID4gKwkJCQkgICBpbnQgb29iX3JlcXVpcmVk
LCBpbnQgcGFnZSkKPiA+ICt7Cj4gPiArCXN0cnVjdCBtdGRfaW5mbyAqbXRkID0gbmFuZF90b19t
dGQoY2hpcCk7Cj4gPiArCXVuc2lnbmVkIGludCBzaXplID0gbXRkLT53cml0ZXNpemU7Cj4gPiAr
CXU4ICp3cml0ZV9idWYgPSAodTggKilidWY7Cj4gPiArCj4gPiArCWlmIChvb2JfcmVxdWlyZWQp
IHsKPiA+ICsJCXNpemUgKz0gbXRkLT5vb2JzaXplOwo+ID4gKwo+ID4gKwkJaWYgKGJ1ZiAhPSBj
aGlwLT5kYXRhX2J1Zikgewo+ID4gKwkJCXdyaXRlX2J1ZiA9IG5hbmRfZ2V0X2RhdGFfYnVmKGNo
aXApOwo+ID4gKwkJCW1lbWNweSh3cml0ZV9idWYsIGJ1ZiwgbXRkLT53cml0ZXNpemUpOwo+ID4g
KwkJfQo+ID4gKwl9Cj4gPiArCj4gPiArCXJldHVybiBuYW5kX3Byb2dfcGFnZV9vcChjaGlwLCBw
YWdlLCAwLCB3cml0ZV9idWYsIHNpemUpOwo+ID4gK30KPiA+ICtFWFBPUlRfU1lNQk9MKG5hbmRf
bW9ub2xpdGhpY193cml0ZV9wYWdlX3Jhdyk7Cj4gPiArCj4gPiAgLyoqCj4gPiAgICogbmFuZF93
cml0ZV9wYWdlX3Jhd19zeW5kcm9tZSAtIFtJTlRFUk5dIHJhdyBwYWdlIHdyaXRlIGZ1bmN0aW9u
Cj4gPiAgICogQGNoaXA6IG5hbmQgY2hpcCBpbmZvIHN0cnVjdHVyZQo+ID4gZGlmZiAtLWdpdCBh
L2luY2x1ZGUvbGludXgvbXRkL3Jhd25hbmQuaCBiL2luY2x1ZGUvbGludXgvbXRkL3Jhd25hbmQu
aAo+ID4gaW5kZXggZDQwYWQxOWJhMGY2Li4wZGExMGU5OWNmMzkgMTAwNjQ0Cj4gPiAtLS0gYS9p
bmNsdWRlL2xpbnV4L210ZC9yYXduYW5kLmgKPiA+ICsrKyBiL2luY2x1ZGUvbGludXgvbXRkL3Jh
d25hbmQuaAo+ID4gQEAgLTEzMjgsMTMgKzEzMjgsMTcgQEAgaW50IG5hbmRfcmVhZF9vb2Jfc3Rk
KHN0cnVjdCBuYW5kX2NoaXAgKmNoaXAsIGludCBwYWdlKTsKPiA+ICBpbnQgbmFuZF9nZXRfc2V0
X2ZlYXR1cmVzX25vdHN1cHAoc3RydWN0IG5hbmRfY2hpcCAqY2hpcCwgaW50IGFkZHIsCj4gPiAg
CQkJCSAgdTggKnN1YmZlYXR1cmVfcGFyYW0pOwo+ID4gIAo+ID4gLS8qIERlZmF1bHQgcmVhZF9w
YWdlX3JhdyBpbXBsZW1lbnRhdGlvbiAqLwo+ID4gKy8qIERlZmF1bHQgcmVhZF9wYWdlX3JhdyBp
bXBsZW1lbnRhdGlvbnMgKi8gIAo+IAo+IFdlbGwsIG5hbmRfbW9ub2xpdGhpY19yZWFkX3BhZ2Vf
cmF3KCkgaXMgbm90IHRoZSBkZWZhdWx0IDpwLiBKdXN0IGRyb3AKPiB0aGUgIkRlZmF1bHQgIiBh
bmQgaXQgc2hvdWxkIGJlIGdvb2QuCgpGYWlyIGVub3VnaCA6KQoKPiAKPiA+ICBpbnQgbmFuZF9y
ZWFkX3BhZ2VfcmF3KHN0cnVjdCBuYW5kX2NoaXAgKmNoaXAsIHVpbnQ4X3QgKmJ1ZiwgaW50IG9v
Yl9yZXF1aXJlZCwKPiA+ICAJCSAgICAgICBpbnQgcGFnZSk7Cj4gPiAraW50IG5hbmRfbW9ub2xp
dGhpY19yZWFkX3BhZ2VfcmF3KHN0cnVjdCBuYW5kX2NoaXAgKmNoaXAsIHVpbnQ4X3QgKmJ1ZiwK
PiA+ICsJCQkJICBpbnQgb29iX3JlcXVpcmVkLCBpbnQgcGFnZSk7Cj4gPiAgCj4gPiAtLyogRGVm
YXVsdCB3cml0ZV9wYWdlX3JhdyBpbXBsZW1lbnRhdGlvbiAqLwo+ID4gKy8qIERlZmF1bHQgd3Jp
dGVfcGFnZV9yYXcgaW1wbGVtZW50YXRpb25zICovICAKPiAKPiBEaXR0by4KPiAKPiA+ICBpbnQg
bmFuZF93cml0ZV9wYWdlX3JhdyhzdHJ1Y3QgbmFuZF9jaGlwICpjaGlwLCBjb25zdCB1aW50OF90
ICpidWYsCj4gPiAgCQkJaW50IG9vYl9yZXF1aXJlZCwgaW50IHBhZ2UpOwo+ID4gK2ludCBuYW5k
X21vbm9saXRoaWNfd3JpdGVfcGFnZV9yYXcoc3RydWN0IG5hbmRfY2hpcCAqY2hpcCwgY29uc3Qg
dWludDhfdCAqYnVmLAo+ID4gKwkJCQkgICBpbnQgb29iX3JlcXVpcmVkLCBpbnQgcGFnZSk7Cj4g
PiAgCj4gPiAgLyogUmVzZXQgYW5kIGluaXRpYWxpemUgYSBOQU5EIGRldmljZSAqLwo+ID4gIGlu
dCBuYW5kX3Jlc2V0KHN0cnVjdCBuYW5kX2NoaXAgKmNoaXAsIGludCBjaGlwbnIpOyAgCj4gCgoK
CgpUaGFua3MsCk1pcXXDqGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
