Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96FD11BADDD
	for <lists+linux-mtd@lfdr.de>; Mon, 27 Apr 2020 21:27:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OjeWdijKIzxxy2hKs+/hMIE1J26Hwfk+PKKAL5kSv+g=; b=X5VqKz6X6Ym3C6
	83PTte0YfIQqB4k5vYTQgTD6OSI+mnnPGMR+lUVxIRWCoCKhDFVw78RILI3qhfPWH1JZN1L91ATts
	qG07Zb8m3X14yWKfcYkOfRC7AEKNF0DHaaz9NVkpYm2BiVOivUS3LYCZpPcwviDPS0mMyGEMbG0/w
	2wudhZRwc4CFyw3/GjLfOGE0EypgwtSNa6XNeM/54m99bdHw+mVZAC0pYOktqQi9AoazFjnD+Gkvn
	7NG5SpJqOE98yMsTqIRMsPAQMxLMZ3LbxLnfIkWDE/Wzsni6BP9phyHlVVOKeiAoqOxco2ak3UfYC
	EpUuCEp2bWHqisYjMSIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT9PA-0006k2-JT; Mon, 27 Apr 2020 19:27:00 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT9P1-0006ir-D5
 for linux-mtd@lists.infradead.org; Mon, 27 Apr 2020 19:26:52 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 9AB6EC0003;
 Mon, 27 Apr 2020 19:26:48 +0000 (UTC)
Date: Mon, 27 Apr 2020 21:26:47 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH 1/3] mtd: rawnand: Add a NAND_NO_BBM_QUIRK flag
Message-ID: <20200427212647.7a72910e@xps13>
In-Reply-To: <20200427072453.375642-1-boris.brezillon@collabora.com>
References: <20200427072453.375642-1-boris.brezillon@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_122651_577084_D2A14DB3 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
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
Cc: Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgQm9yaXMsCgpCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29t
PiB3cm90ZSBvbiBNb24sIDI3IEFwcgoyMDIwIDA5OjI0OjUxICswMjAwOgoKPiBTb21lIGNvbnRy
b2xsZXJzIHdpdGggZW1iZWRkZWQgRUNDIGVuZ2luZXMgb3ZlcnJpZGUgdGhlIEJCTSBtYXJrZXIg
d2l0aAo+IGRhdGEgb3IgRUNDIGJ5dGVzLCB0aHVzIG1ha2luZyBiYWQgYmxvY2sgZGV0ZWN0aW9u
IHRocm91Z2ggYmFkIGJsb2NrCj4gbWFya2VyIGltcG9zc2libGUuIExldCdzIGZsYWcgdGhvc2Ug
Y2hpcHMgc28gdGhlIGNvcmUga25vd3MgaXQgc2hvdWxkbid0Cj4gY2hlY2sgdGhlIEJCTSBhbmQg
Y29uc2lkZXIgYWxsIGJsb2NrcyBnb29kLgo+IAo+IFRoaXMgc2hvdWxkIGFsbG93IHVzIHRvIGdl
dCByaWQgb2YgdHdvIGltcGxlbWVudGVycyBvZiB0aGUKPiBsZWdhY3kuYmxvY2tfYmFkKCkgaG9v
ay4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBj
b2xsYWJvcmEuY29tPgo+IC0tLQo+ICBkcml2ZXJzL210ZC9uYW5kL3Jhdy9uYW5kX2Jhc2UuYyB8
IDMgKysrCj4gIGluY2x1ZGUvbGludXgvbXRkL3Jhd25hbmQuaCAgICAgIHwgOCArKysrKysrKwo+
ICAyIGZpbGVzIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9tdGQvbmFuZC9yYXcvbmFuZF9iYXNlLmMgYi9kcml2ZXJzL210ZC9uYW5kL3Jhdy9uYW5k
X2Jhc2UuYwo+IGluZGV4IGY4MWI1NDYzNDA2MS4uNzQ5ZWYwYjQwNjg0IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvbXRkL25hbmQvcmF3L25hbmRfYmFzZS5jCj4gKysrIGIvZHJpdmVycy9tdGQvbmFu
ZC9yYXcvbmFuZF9iYXNlLmMKPiBAQCAtMzQ1LDYgKzM0NSw5IEBAIHN0YXRpYyBpbnQgbmFuZF9i
bG9ja19iYWQoc3RydWN0IG5hbmRfY2hpcCAqY2hpcCwgbG9mZl90IG9mcykKPiAgCj4gIHN0YXRp
YyBpbnQgbmFuZF9pc2JhZF9iYm0oc3RydWN0IG5hbmRfY2hpcCAqY2hpcCwgbG9mZl90IG9mcykK
PiAgewo+ICsJaWYgKGNoaXAtPm9wdGlvbnMgJiBOQU5EX05PX0JCTV9RVUlSSykKPiArCQlyZXR1
cm4gMDsKPiArCj4gIAlpZiAoY2hpcC0+bGVnYWN5LmJsb2NrX2JhZCkKPiAgCQlyZXR1cm4gY2hp
cC0+bGVnYWN5LmJsb2NrX2JhZChjaGlwLCBvZnMpOwo+ICAKPiBkaWZmIC0tZ2l0IGEvaW5jbHVk
ZS9saW51eC9tdGQvcmF3bmFuZC5oIGIvaW5jbHVkZS9saW51eC9tdGQvcmF3bmFuZC5oCj4gaW5k
ZXggOTlmNGFjNDdjOGQzLi4zNzYxM2RkOWUwNGIgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9saW51
eC9tdGQvcmF3bmFuZC5oCj4gKysrIGIvaW5jbHVkZS9saW51eC9tdGQvcmF3bmFuZC5oCj4gQEAg
LTIyMiw2ICsyMjIsMTQgQEAgZW51bSBuYW5kX2VjY19hbGdvIHsKPiAgICovCj4gICNkZWZpbmUg
TkFORF9LRUVQX1RJTUlOR1MJMHgwMDgwMDAwMAo+ICAKPiArLyoKPiArICogU29tZSBjb250cm9s
bGVycyB3aXRoIHBpcGVsaW5lZCBFQ0MgZW5naW5lcyBvdmVycmlkZSB0aGUgQkJNIG1hcmtlciB3
aXRoCj4gKyAqIGRhdGEgb3IgRUNDIGJ5dGVzLCB0aHVzIG1ha2luZyBiYWQgYmxvY2sgZGV0ZWN0
aW9uIHRocm91Z2ggYmFkIGJsb2NrIG1hcmtlcgo+ICsgKiBpbXBvc3NpYmxlLiBMZXQncyBmbGFn
IHRob3NlIGNoaXBzIHNvIHRoZSBjb3JlIGtub3dzIGl0IHNob3VsZG4ndCBjaGVjayB0aGUKPiAr
ICogQkJNIGFuZCBjb25zaWRlciBhbGwgYmxvY2tzIGdvb2QuCj4gKyAqLwo+ICsjZGVmaW5lIE5B
TkRfTk9fQkJNX1FVSVJLCTAKClplcm8/IDopCgpNYXliZSB3ZSdsbCBoYXZlIHRvIHJlYmFzZSB0
aGlzIHBhdGNoIG9uIHRvcCBvZiB0aGUgcmVjZW50IGNsZWFudXAgb2YKdGhpcyBwb3J0aW9uLCBz
byB0aGF0IHdlIGRlZmluZSBhIG5hbmRfY29udHJvbGxlciBmbGFnIGRpcmVjdGx5LgoKV2UnbGwg
c2VlIGhvdyBpdCBnb2VzIGZvciB0aGUgb3RoZXIgc2VyaWVzLCBJJ2xsIGtlZXAgdGhpcyBjaGFu
Z2UgaW4KbWluZC4KCj4gKwo+ICAvKiBDZWxsIGluZm8gY29uc3RhbnRzICovCj4gICNkZWZpbmUg
TkFORF9DSV9DSElQTlJfTVNLCTB4MDMKPiAgI2RlZmluZSBOQU5EX0NJX0NFTExUWVBFX01TSwkw
eDBDCgoKVGhhbmtzLApNaXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
