Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C28B7A50
	for <lists+linux-mtd@lfdr.de>; Thu, 19 Sep 2019 15:19:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rPIuURj5N+4WWjvGdFfCap7b6RJRaEYC5adUZu4f0ik=; b=om/rgaMFljyHrj
	KKFHrmvXQ/lMawY5G/55vMoQ85GathLy4Xdr8F3wAlRAov2wub4fc2d2qUrPQ3/P7QILmBfR8h7Xh
	J57U229MyQF+EU+6KpFxzP7KNPthKdF5UlS/DqNAAioj0KDu41TaGsBnXalb9mtFG11mfBhCApjxT
	F2IXzHD3TPR9DVFH8/7jQTIZXygSnUB83PMnJK9SADwJl6WNOp5hoVbFgiZipvzlovIZh/d+kS2fh
	Q0F6+x0Z5yO/2K+S+4XH63hKCA3d5l24x4Nl2xHj2DX9kFC7pJRQspoUc2JNsTNsO7nMl8ID6pUlQ
	oAkrD7E540S76OAXIDtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAwKz-0003FJ-6Z; Thu, 19 Sep 2019 13:19:09 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAwKK-0003De-RQ
 for linux-mtd@lists.infradead.org; Thu, 19 Sep 2019 13:18:31 +0000
X-Originating-IP: 86.250.200.211
Received: from xps13 (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 1B180E0015;
 Thu, 19 Sep 2019 13:18:20 +0000 (UTC)
Date: Thu, 19 Sep 2019 15:18:20 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Schrempf Frieder <frieder.schrempf@kontron.de>
Subject: Re: [PATCH] - change calculating of position page containing BBM
Message-ID: <20190919151820.2bb8313d@xps13>
In-Reply-To: <f03d93a5-4393-2405-b597-80b762059f01@kontron.de>
References: <20190919124139.10856-1-piotrs@cadence.com>
 <20190919145819.66e74aef@xps13>
 <f03d93a5-4393-2405-b597-80b762059f01@kontron.de>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_061829_434838_40E039EA 
X-CRM114-Status: GOOD (  22.08  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>, Richard Weinberger <richard@nod.at>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Marek Vasut <marek.vasut@gmail.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, Piotr Sroka <piotrs@cadence.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGVsbG8sCgpTY2hyZW1wZiBGcmllZGVyIDxmcmllZGVyLnNjaHJlbXBmQGtvbnRyb24uZGU+IHdy
b3RlIG9uIFRodSwgMTkgU2VwCjIwMTkgMTM6MTU6MDggKzAwMDA6Cgo+IE9uIDE5LjA5LjE5IDE0
OjU4LCBNaXF1ZWwgUmF5bmFsIHdyb3RlOgo+ID4gSGkgUGlvdHIsCj4gPiAKPiA+IFBpb3RyIFNy
b2thIDxwaW90cnNAY2FkZW5jZS5jb20+IHdyb3RlIG9uIFRodSwgMTkgU2VwIDIwMTkgMTM6NDE6
MzUKPiA+ICswMTAwOgo+ID4gICAKPiA+PiBDaGFuZ2UgY2FsY3VsYXRpbmcgb2YgcG9zaXRpb24g
cGFnZSBjb250YWluaW5nIEJCTQo+ID4+Cj4gPj4gSWYgbm9uZSBvZiBCQk0gZmxhZ3MgaXMgc2V0
IHRoZW4gZnVuY3Rpb24gbmFuZF9iYm1fZ2V0X25leHRfcGFnZQo+ID4+IHJlcG9ydHMgRUlOVkFM
LiBJdCBjYXVzZXMgdGhhdCBCQk0gaXMgbm90IHJlYWQgYXQgYWxsIGR1cmluZyBzY2FubmluZwo+
ID4+IGZhY3RvcnkgYmFkIGJsb2Nrcy4gVGhlIHJlc3VsdCBpcyB0aGF0IHRoZSBCQlQgdGFibGUg
aXMgYnVpbGQgd2l0aG91dAo+ID4+IGNoZWNraW5nIGZhY3RvcnkgQkJNIGF0IGFsbC4gRm9yIE1p
Y3JvbiBmbGFzaCBtZW1vcmllcyBub25lIG9mIHRoaXMKPiA+PiBmbGFnIGlzIHNldCBpZiBwYWdl
IHNpemUgaXMgZGlmZmVyZW50IHRoYW4gMjA0OCBieXRlcy4gIAo+IAo+IEkgd29uZGVyIGlmIGl0
IHdvdWxkbid0IGJlIGJldHRlciB0byBmaXggdGhlIE1pY3JvbiBkcml2ZXIgaW5zdGVhZDoKPiAK
PiAtLS0gYS9kcml2ZXJzL210ZC9uYW5kL3Jhdy9uYW5kX21pY3Jvbi5jCj4gKysrIGIvZHJpdmVy
cy9tdGQvbmFuZC9yYXcvbmFuZF9taWNyb24uYwo+IEBAIC00NDgsNiArNDQ4LDggQEAgc3RhdGlj
IGludCBtaWNyb25fbmFuZF9pbml0KHN0cnVjdCBuYW5kX2NoaXAgKmNoaXApCj4gCj4gICAgICAg
ICAgaWYgKG10ZC0+d3JpdGVzaXplID09IDIwNDgpCj4gICAgICAgICAgICAgICAgICBjaGlwLT5v
cHRpb25zIHw9IE5BTkRfQkJNX0ZJUlNUUEFHRSB8Cj4gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIE5BTkRfQkJNX1NFQ09ORFBBR0U7Cj4gKyAgICAgICBlbHNlCj4gKyAgICAgICAg
ICAgICAgIGNoaXAtPm9wdGlvbnMgfD0gTkFORF9CQk1fRklSU1RQQUdFOwoKVGhhdCdzIHdoYXQg
SSBmb3Jnb3QgaW4gbXkgbGFzdCBhbnN3ZXIgdG8gdGhpcyB0aHJlYWQsIEkgdGhpbmsgSSBvbmx5
CnRvbGQgUGlvdHIgcHJpdmF0ZWx5OiBJIHdvdWxkIGxpa2UgYm90aC4gSSB0aGluayBpdCBpcyBp
bXBvcnRhbnQgdG8gZml4CnRoZSBiYm1fZ2V0X25leHRfcGFnZSBmdW5jdGlvbiBidXQgZm9yIGNs
YXJpdHksIHNldHRpbmcgdGhlIEZJUlNUUEFHRQpmbGFnIGluIE1pY3JvbidzIGRyaXZlciBzZWVt
cyBhbHNvIHBlcnRpbmVudC4KCj4gCj4gICAgICAgICAgb25kaWUgPSBtaWNyb25fc3VwcG9ydHNf
b25fZGllX2VjYyhjaGlwKTsKPiAKPiAKPiA+IAo+ID4gIm5vbmUgb2YgdGhlc2UgZmxhZ3MgYXJl
IHNldCIKPiA+ICAgCj4gPj4KPiA+PiBUaGlzIHBhdGNoIGNoYW5nZXMgdGhlIG5hbmRfYmJtX2dl
dF9uZXh0X3BhZ2UgZnVuY3Rpb24uICAKPiA+IAo+ID4gIkFkZHJlc3MgdGhpcyByZWdyZXNzaW9u
IGJ5IGNoYW5naW5nIHRoZQo+ID4gbmFuZF9iYm1fZ2V0X25leHRfcGFnZV9mdW5jdGlvbi4iCj4g
PiAgIAo+ID4+IEl0IHdpbGwgcmV0dXJuIDAgaWYgbm9uZSBvZiBCQk0gZmxhZyBpcyBzZXQgYW5k
IHBhZ2UgcGFyYW1ldGVyIGlzIDAuICAKPiA+IAo+ID4gICAgICAgICAgICAgICAgICAgICAgICBu
byBCQk0gZmxhZyBpcyBzZXQKPiA+ICAgCj4gPj4gQWZ0ZXIgdGhhdCBtb2RpZmljYXRpb24gd2F5
IG9mIGRpc2NvdmVyaW5nIGZhY3RvcnkgYmFkIGJsb2NrcyB3aWxsIHdvcmsKPiA+PiBzaW1pbGFy
IGFzIGluIGtlcm5lbCB2ZXJzaW9uIDUuMS4KPiA+PiAgCj4gPiAKPiA+IEZpeGVzICsgc3RhYmxl
IHRhZ3Mgd291bGQgYmUgZ3JlYXQhCj4gPiAgIAo+ID4+IFNpZ25lZC1vZmYtYnk6IFBpb3RyIFNy
b2thIDxwaW90cnNAY2FkZW5jZS5jb20+Cj4gPj4gLS0tCj4gPj4gICBkcml2ZXJzL210ZC9uYW5k
L3Jhdy9uYW5kX2Jhc2UuYyB8IDggKysrKysrLS0KPiA+PiAgIDEgZmlsZSBjaGFuZ2VkLCA2IGlu
c2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPj4KPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9tdGQvbmFuZC9yYXcvbmFuZF9iYXNlLmMgYi9kcml2ZXJzL210ZC9uYW5kL3Jhdy9uYW5kX2Jh
c2UuYwo+ID4+IGluZGV4IDVjMmMzMGE3ZGZmYS4uZjY0ZTNiNjYwNWM2IDEwMDY0NAo+ID4+IC0t
LSBhL2RyaXZlcnMvbXRkL25hbmQvcmF3L25hbmRfYmFzZS5jCj4gPj4gKysrIGIvZHJpdmVycy9t
dGQvbmFuZC9yYXcvbmFuZF9iYXNlLmMKPiA+PiBAQCAtMjkyLDEyICsyOTIsMTYgQEAgaW50IG5h
bmRfYmJtX2dldF9uZXh0X3BhZ2Uoc3RydWN0IG5hbmRfY2hpcCAqY2hpcCwgaW50IHBhZ2UpCj4g
Pj4gICAJc3RydWN0IG10ZF9pbmZvICptdGQgPSBuYW5kX3RvX210ZChjaGlwKTsKPiA+PiAgIAlp
bnQgbGFzdF9wYWdlID0gKChtdGQtPmVyYXNlc2l6ZSAtIG10ZC0+d3JpdGVzaXplKSA+Pgo+ID4+
ICAgCQkJIGNoaXAtPnBhZ2Vfc2hpZnQpICYgY2hpcC0+cGFnZW1hc2s7Cj4gPj4gKwl1bnNpZ25l
ZCBpbnQgYmJtX2ZsYWdzID0gTkFORF9CQk1fRklSU1RQQUdFIHwgTkFORF9CQk1fU0VDT05EUEFH
RQo+ID4+ICsJCXwgTkFORF9CQk1fTEFTVFBBR0U7Cj4gPj4gICAKPiA+PiArCWlmIChwYWdlID09
IDAgJiYgIShjaGlwLT5vcHRpb25zICYgYmJtX2ZsYWdzKSkKPiA+PiArCQlyZXR1cm4gMDsKPiA+
PiAgIAlpZiAocGFnZSA9PSAwICYmIGNoaXAtPm9wdGlvbnMgJiBOQU5EX0JCTV9GSVJTVFBBR0Up
Cj4gPj4gICAJCXJldHVybiAwOwo+ID4+IC0JZWxzZSBpZiAocGFnZSA8PSAxICYmIGNoaXAtPm9w
dGlvbnMgJiBOQU5EX0JCTV9TRUNPTkRQQUdFKQo+ID4+ICsJaWYgKHBhZ2UgPD0gMSAmJiBjaGlw
LT5vcHRpb25zICYgTkFORF9CQk1fU0VDT05EUEFHRSkKPiA+PiAgIAkJcmV0dXJuIDE7Cj4gPj4g
LQllbHNlIGlmIChwYWdlIDw9IGxhc3RfcGFnZSAmJiBjaGlwLT5vcHRpb25zICYgTkFORF9CQk1f
TEFTVFBBR0UpCj4gPj4gKwlpZiAocGFnZSA8PSBsYXN0X3BhZ2UgJiYgY2hpcC0+b3B0aW9ucyAm
IE5BTkRfQkJNX0xBU1RQQUdFKQo+ID4+ICAgCQlyZXR1cm4gbGFzdF9wYWdlOwo+ID4+ICAgCj4g
Pj4gICAJcmV0dXJuIC1FSU5WQUw7ICAKPiA+IAo+ID4gTG9va2dzIGdvb2Qgb3RoZXJ3aXNlLgo+
ID4gCj4gPiBUaGFua3MsCj4gPiBNaXF1w6hsCj4gPiAgCgpUaGFua3MsCk1pcXXDqGwKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBN
VEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
