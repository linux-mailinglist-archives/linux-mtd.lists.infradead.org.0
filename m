Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55AE62335A
	for <lists+linux-mtd@lfdr.de>; Mon, 20 May 2019 14:16:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ecd8GVE5bwuQ7bObHGgEbDnSvJ7oj3uIf0ycQXz348=; b=rXEFHJgGU7Usud
	y//mlqyYN+y+w57eqfkviOqjzJmZhoMbGN12GVuxQN9hlUH56U2dU5SJOr2bqw8XYUCPKFC0G5q29
	jaRu3AFePSDtnzWrtVBBKz/RB1hgqCa8n742q3cx3wbcDECULQcT2c0Qf+PmnbB2JwioPmMNhBHal
	DKFtwpjL4/GSPodW5qgRH03YWcQmKCRfCy5x+UZOWRXotfHpcdSphzHYhPDnn8JlLZ1xaVQyo7sTA
	4XzVK1Ww/boxaQghcSHgkDilT0D0oNvWZvHQOVubj2T2DsBac2iQL5L3Gf7RvK+bOlUkK3to9d/4d
	uNSR9aufwuDSaR/soo3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hShDf-00018C-Rw; Mon, 20 May 2019 12:16:43 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hShDY-00016T-8B
 for linux-mtd@lists.infradead.org; Mon, 20 May 2019 12:16:38 +0000
Received: from xps13 (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr
 [90.88.22.185]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 42E9E100003;
 Mon, 20 May 2019 12:16:20 +0000 (UTC)
Date: Mon, 20 May 2019 14:16:20 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Jeff Kletsky <lede@allycomm.com>
Subject: Re: [PATCH v2 1/3] mtd: spinand: Add #define-s for page-read ops
 with three-byte addresses
Message-ID: <20190520141620.52bb06d9@xps13>
In-Reply-To: <d62d64a9-c7c3-3b0b-a3ba-71ab2a4f61e4@allycomm.com>
References: <20190514215315.19228-1-lede@allycomm.com>
 <20190514215315.19228-2-lede@allycomm.com>
 <355bcf8d-bce6-1b82-0f57-539c8d9b6cac@gmail.com>
 <efcbdd61-d60e-a5d1-9f91-f8f747fadecf@kontron.de>
 <d62d64a9-c7c3-3b0b-a3ba-71ab2a4f61e4@allycomm.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_051636_591910_F3D3C46E 
X-CRM114-Status: GOOD (  25.91  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Boris Brezillon <bbrezillon@kernel.org>,
 Richard Weinberger <richard@nod.at>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 Marek Vasut <marek.vasut@gmail.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgSmVmZiwKCkplZmYgS2xldHNreSA8bGVkZUBhbGx5Y29tbS5jb20+IHdyb3RlIG9uIFN1biwg
MTkgTWF5IDIwMTkgMTM6Mjc6NTgKLTA3MDA6Cgo+IE9uIDUvMTQvMTkgMTE6NDkgUE0sIFNjaHJl
bXBmIEZyaWVkZXIgd3JvdGU6Cj4gCj4gPiBPbiAxNS4wNS4xOSAwODoxNywgTWFyZWsgVmFzdXQg
d3JvdGU6ICAKPiA+PiBPbiA1LzE0LzE5IDExOjUzIFBNLCBKZWZmIEtsZXRza3kgd3JvdGU6ICAK
PiA+Pj4gRnJvbTogSmVmZiBLbGV0c2t5IDxnaXQtY29tbWl0c0BhbGx5Y29tbS5jb20+ICAKPiA+
PiBUaGF0ICNkZWZpbmUgaW4gJHN1YmplY3QgaXMgY2FsbGVkIGEgbWFjcm8uCj4gPj4KPiA+PiBT
ZWVtcyB0aGlzIHBhdGNoIGFkZHMgYSBsb3Qgb2YgYWxtb3N0IGR1cGxpY2F0ZSBjb2RlLCBjYW4g
aXQgYmUgc29tZWhvdwo+ID4+IGRlLWR1cGxpY2F0ZWQgPyAgCj4gPiBXZSBjb3VsZCBhZGQgYW5v
dGhlciBwYXJhbWV0ZXIgbmFkZHIgb3IgYWRkcmxlbiB0byB0aGUKPiA+IFNQSU5BTkRfUEFHRV9S
RUFEX0ZST01fQ0FDSEVfWFhfT1BzIGFuZCBwYXNzIHRoZSB2YWx1ZSAyIGZvciBhbGwKPiA+IGV4
aXN0aW5nIGNoaXBzIGV4Y2VwdCBmb3IgR0Q1RjFHUTRVRnh4RyB3aGljaCBuZWVkcyAzIGJ5dGVz
IGFkZHJlc3MgbGVuZ3RoLgo+ID4KPiA+IFRoaXMgd291bGQgY2F1c2Ugb25lIG1vcmUgYXJndW1l
bnQgdG8gZWFjaCBvZiB0aGUgbWFjcm8gY2FsbHMgaW4gYWxsCj4gPiBjaGlwIGRyaXZlcnMuIEFz
IGxvbmcgYXMgdGhlcmUgYXJlIG9ubHkgdHdvIGZsYXZvcnMgKDIgYW5kIDMgYnl0ZXMpIEknbQo+
ID4gbm90IHN1cmUgaWYgdGhpcyByZWFsbHkgd291bGQgbWFrZSB0aGluZ3MgZWFzaWVyIGFuZCBh
bHNvIHRoaXMgaXMgIm9ubHkiCj4gPiBwcmVwcm9jZXNzb3IgY29kZS4KPiA+Cj4gPiBTbyBhbnl3
YXlzLCBJIHdvdWxkIGJlIGZpbmUgd2l0aCBib3RoIGFwcHJvYWNoZXMsIEplZmYncyBjdXJyZW50
IG9uZSBvcgo+ID4gb25lIHdpdGggYW5vdGhlciBwYXJhbWV0ZXIgZm9yIHRoZSBhZGRyZXNzIGxl
bmd0aC4KPiA+Cj4gPiBCeSB0aGUgd2F5OiBKZWZmLCB5b3UgZGlkbid0IGNhcnJ5IG15IFJldmll
d2VkLWJ5IHRhZyB0byB2Mi4gU28gSSB3aWxsCj4gPiBqdXN0IHJlcGx5IGFnYWluIHRvIGFkZCB0
aGUgdGFncy4KPiA+ICAKPiA+Pj4gVGhlIEdpZ2FEZXZpY2UgR0Q1RjFHUTRVRnh4RyBTUEkgTkFO
RCB1dGlsaXplcyB0aHJlZS1ieXRlIGFkZHJlc3Nlcwo+ID4+PiBmb3IgaXRzIHBhZ2UtcmVhZCBv
cHMuCj4gPj4+Cj4gPj4+IGh0dHA6Ly93d3cuZ2lnYWRldmljZS5jb20vZGF0YXNoZWV0L2dkNWYx
Z3E0eGZ4eGcvCj4gPj4+Cj4gPj4+IFNpZ25lZC1vZmYtYnk6IEplZmYgS2xldHNreSA8Z2l0LWNv
bW1pdHNAYWxseWNvbW0uY29tPgo+ID4+PiAtLS0KPiA+Pj4gICAgaW5jbHVkZS9saW51eC9tdGQv
c3BpbmFuZC5oIHwgMzAgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gPj4+ICAgIDEg
ZmlsZSBjaGFuZ2VkLCAzMCBpbnNlcnRpb25zKCspCj4gPj4+Cj4gPj4+IGRpZmYgLS1naXQgYS9p
bmNsdWRlL2xpbnV4L210ZC9zcGluYW5kLmggYi9pbmNsdWRlL2xpbnV4L210ZC9zcGluYW5kLmgK
PiA+Pj4gaW5kZXggYjkyZTJhYTk1NWI2Li4wNWZlOThlZWJlMjcgMTAwNjQ0Cj4gPj4+IC0tLSBh
L2luY2x1ZGUvbGludXgvbXRkL3NwaW5hbmQuaAo+ID4+PiArKysgYi9pbmNsdWRlL2xpbnV4L210
ZC9zcGluYW5kLmgKPiA+Pj4gQEAgLTY4LDMwICs2OCw2MCBAQAo+ID4+PiAgICAJCSAgIFNQSV9N
RU1fT1BfRFVNTVkobmR1bW15LCAxKSwJCQkJXAo+ID4+PiAgICAJCSAgIFNQSV9NRU1fT1BfREFU
QV9JTihsZW4sIGJ1ZiwgMSkpICAKPiA+Pj4gICAgPj4+ICsjZGVmaW5lIFNQSU5BTkRfUEFHRV9S
RUFEX0ZST01fQ0FDSEVfT1BfM0EoZmFzdCwgYWRkciwgbmR1bW15LCBidWYsIGxlbikgXCAgCj4g
Pj4+ICsJU1BJX01FTV9PUChTUElfTUVNX09QX0NNRChmYXN0ID8gMHgwYiA6IDB4MDMsIDEpLAkJ
XAo+ID4+PiArCQkgICBTUElfTUVNX09QX0FERFIoMywgYWRkciwgMSksCQkJCVwKPiA+Pj4gKwkJ
ICAgU1BJX01FTV9PUF9EVU1NWShuZHVtbXksIDEpLAkJCQlcCj4gPj4+ICsJCSAgIFNQSV9NRU1f
T1BfREFUQV9JTihsZW4sIGJ1ZiwgMSkpCj4gPj4+ICsKPiA+Pj4gICAgI2RlZmluZSBTUElOQU5E
X1BBR0VfUkVBRF9GUk9NX0NBQ0hFX1gyX09QKGFkZHIsIG5kdW1teSwgYnVmLCBsZW4pCVwKPiA+
Pj4gICAgCVNQSV9NRU1fT1AoU1BJX01FTV9PUF9DTUQoMHgzYiwgMSksCQkJCVwKPiA+Pj4gICAg
CQkgICBTUElfTUVNX09QX0FERFIoMiwgYWRkciwgMSksCQkJCVwKPiA+Pj4gICAgCQkgICBTUElf
TUVNX09QX0RVTU1ZKG5kdW1teSwgMSksCQkJCVwKPiA+Pj4gICAgCQkgICBTUElfTUVNX09QX0RB
VEFfSU4obGVuLCBidWYsIDIpKSAgCj4gPj4+ICAgID4+PiBbIF8zQSBhZGRpdGlvbiByZXBlYXRl
ZCB0aHJlZSBtb3JlIHRpbWVzIGZvciBzaW1pbGFyIG9wcyAuLi4gXSAgCj4gCj4gSXQncyBlYXN5
IGVub3VnaCB0byBjaGFuZ2UgdGhlIHdvcmRpbmcsIGFuZCB3aWxsIGRvIHNvIG9uIHRoZSBuZXh0
IHJldmlzaW9uLgo+IAo+IEhvd2V2ZXIsIGl0J3Mgbm90IGNsZWFyIHRvIG1lIHRoYXQgdGhlcmUg
aXMgY29uc2Vuc3VzIG9uIGlmIHRoZSBwcmVzZW50Cj4gc2V0IG9mIG1hY3JvcyBpcyBhY2NlcHRh
YmxlL3ByZWZlcnJlZCBvdmVyIGRlZmluaXRpb24gb2YgYSBzZXQgb2Ygb25lcwo+IHRoYXQgYWNj
ZXB0IGFuIGFkZGl0aW9uYWwgcGFyYW1ldGVyLgo+IAo+IEF0IGxlYXN0IGZyb20gbXkgcGVyc3Bl
Y3RpdmUgYW5kIGFzIFNjaHJlbXBmIEZyaWVkZXIgaGFzIGhpbnRlZCBhdCwKPiB0aGVzZSBtYWNy
b3MgYXJlIHN5bnRhY3RpYyBzdWdhciBhbmQgYWxsIHJlc3VsdCBpbiBlcXVpdmFsZW50IEMgY29k
ZS4KPiAKPiBFaXRoZXIgc2hvdWxkIGNvbXBpbGUgdG8gdGhlIHNhbWUgcnVuLXRpbWUgc2l6ZSBh
bmQgcGVyZm9ybWFuY2UgKGFzc3VtaW5nCj4gcmVhc29uYWJseSB0aGF0IGEgY29uc3RydWN0IGxp
a2UgYHRydWUgPyAweDBiIDogMHgwM2AgaXMgb3B0aW1pemVkIG91dCkuCj4gCj4gQWRkaW5nIGFu
IGFkZGl0aW9uYWwgcGFyYW1ldGVyLCBhdCBsZWFzdCBmb3IgbWUsIHdvdWxkbid0IGltcHJvdmUg
cmVhZGFiaWxpdHkKPiBvZiB0aGUgY29kZSBhbmQgaXMgb2Zmc2V0IGJ5IHRoZSBuZWVkIHRvIHJl
ZmFjdG9yIGZvdXIgb3RoZXIgZmlsZXMuIEV2ZW4KPiB0aG91Z2ggaXQgc2hvdWxkIGJlIGEgc2lt
cGxlL3RyaXZpYWwgcmVmYWN0b3IsIEkgZG8gbm90IGhhdmUgYW55IGV4YW1wbGVzCj4gb2YgdGhl
IGZvdXIgb3RoZXIgbWFudWZhY3R1cmVycycgY2hpcHMgdG8gYmUgYWJsZSB0byBjb25maXJtIHBy
b3BlciBvcGVyYXRpb24uCj4gCj4gSSdsbCBwcmVwYXJlIGEgcmV3b3JkZWQgc2V0IG9mIHBhdGNo
ZXMgd2l0aCB0aGUgcHJlc2VudCBtYWNybyBzdHJ1Y3R1cmUuCj4gCj4gSWYgdGhlcmUgaXMgc3Ry
b25nIGZlZWxpbmcgZm9yIHJlZmFjdG9yaW5nIHRoZSBtYWNybyBzZXQsIHBsZWFzZSBsZXQgbWUg
a25vdy4KCk9uIG15IHNpZGUgSSB3b3VsZCByYXRoZXIgbm90IGFkZCB0aGlzIGV4dHJhIGFyZ3Vt
ZW50LCBJIGtub3cgaXQgaXMgbm90CnZlcnkgY29udmVudGlvbmFsIHRvIGFkZCBzbyBtdWNoIG1h
Y3JvcyBidXQgb25jZSB5b3UndmUgcmVhZCBvbmUgeW91CnJlYWQgYWxsIG9mIHRoZW0gYW5kIEkg
dGhpbmsgaXQgaW1wcm92ZXMgdGhlIHJlYWRhYmlsaXR5IG9mIHRoZSBjb2RlCnVzaW5nIGl0LgoK
ClRoYW5rcywKTWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
