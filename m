Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 073E81CEE3F
	for <lists+linux-mtd@lfdr.de>; Tue, 12 May 2020 09:36:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jpS4qF4ODjjSENXxLpj1ZCHfckkFPZJLsKc4nQiAdmw=; b=j64OPUjJq8RmH9
	nfy+XueGAaHGtHKpp0iUnuqggMCq4rVyb2faPUD1HQlOHd0tEel3cHggwW1iBKT6HHxBX94cyTpid
	fltlK58PXsLtJEEnri9iGppGbqF1I8hekatTGx0nSRMy9yrvRxTd7CfP4CENlHhRVQDODUtqJtRFm
	b5VTTJWNugyf7L451XeSJAfLFdG9PYPyGhSrYpliso8ScRHSFUiXWI58m7sMuubCUgIJfOxQS0cCh
	TPTr/cO+71cz7+apM7brIWMIdatv9Kjm7udQU859X5qU8bM7r+8Q5gN9/DWmtZsHMKGLu4Sd6QiK7
	CxxUa7NC6j3D7VicpS/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYPT5-0001Uk-FL; Tue, 12 May 2020 07:36:47 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYPRL-000689-VE
 for linux-mtd@lists.infradead.org; Tue, 12 May 2020 07:35:04 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 89D90240013;
 Tue, 12 May 2020 07:34:52 +0000 (UTC)
Date: Tue, 12 May 2020 09:34:51 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: =?UTF-8?B?w4FsdmFybyBGZXJuw6FuZGV6?= Rojas <noltari@gmail.com>
Subject: Re: [PATCH v3] mtd: rawnand: brcmnand: correctly verify erased pages
Message-ID: <20200512093451.4cde5384@xps13>
In-Reply-To: <50E32C0E-7485-4180-A072-F7F1CFB45B06@gmail.com>
References: <20200505082055.2843847-1-noltari@gmail.com>
 <20200512065111.716801-1-noltari@gmail.com>
 <20200512091637.198dd0c2@xps13>
 <50E32C0E-7485-4180-A072-F7F1CFB45B06@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_003500_439215_2233E1B9 
X-CRM114-Status: GOOD (  20.72  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: vigneshr@ti.com, kdasu.kdev@gmail.com, richard@nod.at,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-mtd@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com, computersforpeace@gmail.com,
 sumit.semwal@linaro.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgw4FsdmFybywKCsOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+
IHdyb3RlIG9uIFR1ZSwgMTIgTWF5IDIwMjAKMDk6MjQ6MzIgKzAyMDA6Cgo+IEhpIE1pcXXDqGwK
PiAKPiA+IEVsIDEyIG1heSAyMDIwLCBhIGxhcyA5OjE2LCBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwu
cmF5bmFsQGJvb3RsaW4uY29tPiBlc2NyaWJpw7M6Cj4gPiAKPiA+IEhpIMOBbHZhcm8sCj4gPiAK
PiA+IMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+IHdyb3RlIG9u
IFR1ZSwgMTIgTWF5IDIwMjAKPiA+IDA4OjUxOjExICswMjAwOgo+ID4gICAKPiA+PiBUaGUgY3Vy
cmVudCBjb2RlIGNoZWNrcyB0aGF0IHRoZSB3aG9sZSBPT0IgYXJlYSBpcyBlcmFzZWQuCj4gPj4g
VGhpcyBpcyBhIHByb2JsZW0gd2hlbiBKRkZTMiBjbGVhbm1hcmtlcnMgYXJlIGFkZGVkIHRvIHRo
ZSBPT0IsIHNpbmNlIGl0IHdpbGwKPiA+PiBmYWlsIGR1ZSB0byB0aGUgdXNhYmxlIE9PQiBieXRl
cyBub3QgYmVpbmcgMHhmZi4KPiA+PiBDb3JyZWN0IHRoaXMgYnkgb25seSBjaGVja2luZyB0aGF0
IGRhdGEgYW5kIEVDQyBieXRlcyBhcmVuJ3QgMHhmZi4KPiA+PiAKPiA+PiBGaXhlczogMDJiODhl
ZWE5ZjljICgibXRkOiBicmNtbmFuZDogQWRkIGNoZWNrIGZvciBlcmFzZWQgcGFnZSBiaXRmbGlw
cyIpCj4gPj4gU2lnbmVkLW9mZi1ieTogw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIDxub2x0YXJp
QGdtYWlsLmNvbT4KPiA+PiAtLS0KPiA+PiB2MzogRml4IGNvbW1pdCBsb2cgYW5kIG1lcmdlIG5h
bmRfY2hlY2tfZXJhc2VkX2VjY19jaHVuayBjYWxscy4KPiA+PiB2MjogQWRkIEZpeGVzIHRhZwo+
ID4+IAo+ID4+IGRyaXZlcnMvbXRkL25hbmQvcmF3L2JyY21uYW5kL2JyY21uYW5kLmMgfCAxOSAr
KysrKysrKysrKysrKy0tLS0tCj4gPj4gMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyks
IDUgZGVsZXRpb25zKC0pCj4gPj4gCj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbXRkL25hbmQv
cmF3L2JyY21uYW5kL2JyY21uYW5kLmMgYi9kcml2ZXJzL210ZC9uYW5kL3Jhdy9icmNtbmFuZC9i
cmNtbmFuZC5jCj4gPj4gaW5kZXggZTRlM2NlZWFjMzhmLi44MGZlMDFmMDM1MTYgMTAwNjQ0Cj4g
Pj4gLS0tIGEvZHJpdmVycy9tdGQvbmFuZC9yYXcvYnJjbW5hbmQvYnJjbW5hbmQuYwo+ID4+ICsr
KyBiL2RyaXZlcnMvbXRkL25hbmQvcmF3L2JyY21uYW5kL2JyY21uYW5kLmMKPiA+PiBAQCAtMjAx
OCw4ICsyMDE4LDkgQEAgc3RhdGljIGludCBicmNtbmFuZF9yZWFkX2J5X3BpbyhzdHJ1Y3QgbXRk
X2luZm8gKm10ZCwgc3RydWN0IG5hbmRfY2hpcCAqY2hpcCwKPiA+PiBzdGF0aWMgaW50IGJyY21z
dGJfbmFuZF92ZXJpZnlfZXJhc2VkX3BhZ2Uoc3RydWN0IG10ZF9pbmZvICptdGQsCj4gPj4gCQkg
IHN0cnVjdCBuYW5kX2NoaXAgKmNoaXAsIHZvaWQgKmJ1ZiwgdTY0IGFkZHIpCj4gPj4gewo+ID4+
ICsJc3RydWN0IG10ZF9vb2JfcmVnaW9uIG9vYmVjYzsKPiA+PiAJaW50IGksIHNhczsKPiA+PiAt
CXZvaWQgKm9vYiA9IGNoaXAtPm9vYl9wb2k7Cj4gPj4gKwl2b2lkICpvb2I7Cj4gPj4gCWludCBi
aXRmbGlwcyA9IDA7Cj4gPj4gCWludCBwYWdlID0gYWRkciA+PiBjaGlwLT5wYWdlX3NoaWZ0Owo+
ID4+IAlpbnQgcmV0Owo+ID4+IEBAIC0yMDM1LDExICsyMDM2LDE5IEBAIHN0YXRpYyBpbnQgYnJj
bXN0Yl9uYW5kX3ZlcmlmeV9lcmFzZWRfcGFnZShzdHJ1Y3QgbXRkX2luZm8gKm10ZCwKPiA+PiAJ
aWYgKHJldCkKPiA+PiAJCXJldHVybiByZXQ7Cj4gPj4gCj4gPj4gLQlmb3IgKGkgPSAwOyBpIDwg
Y2hpcC0+ZWNjLnN0ZXBzOyBpKyssIG9vYiArPSBzYXMpIHsKPiA+PiArCWZvciAoaSA9IDA7IGkg
PCBjaGlwLT5lY2Muc3RlcHM7IGkrKykgewo+ID4+IAkJZWNjX2NodW5rID0gYnVmICsgY2hpcC0+
ZWNjLnNpemUgKiBpOwo+ID4+IC0JCXJldCA9IG5hbmRfY2hlY2tfZXJhc2VkX2VjY19jaHVuayhl
Y2NfY2h1bmssCj4gPj4gLQkJCQkJCSAgY2hpcC0+ZWNjLnNpemUsCj4gPj4gLQkJCQkJCSAgb29i
LCBzYXMsIE5VTEwsIDAsCj4gPj4gKwo+ID4+ICsJCWlmIChtdGQtPm9vYmxheW91dC0+ZWNjKG10
ZCwgaSwgJm9vYmVjYykpIHsgIAo+ID4gCj4gPiBQbGVhc2UgdXNlIHRoZSBtdGRjb3JlLmMncyBo
ZWxwZXJzCj4gPiAobXRkX29vYmxheW91dF9zZXQvZ2V0X2RhdGEvZnJlZS9lY2MvYnl0ZXMpLgo+
ID4gCj4gPiBBbHNvLCB3aGF0IGFyZSB5b3UgdHJ5aW5nIHRvIGRpc2NyaW1pbmF0ZSB3aXRoIHRo
ZSByZXR1cm4gY29kZSBvZiB0aGUKPiA+IGZ1bmN0aW9uPyBTaG91bGRuJ3QgdGhpcyBmdW5jdGlv
biAiYWx3YXlzIiB3b3JrPyAgCj4gCj4gSnVzdCBtYWtpbmcgc3VyZSBpdCBkb2VzbuKAmXQgcmV0
dXJuIGFuIEVSQU5HRSBpbiBjYXNlIGNoaXAtPmVjYy5zaXplIGRvZXNu4oCZdCBtYXRjaCB0aGUg
c2VjdGlvbnMgZnJvbSBtdGQtPm9vYmxheW91dC0+ZWNjLCB3aGljaCBzaG91bGRu4oCZdCBoYXBw
ZW4sIHNvIEkgdGhpbmsgd2UgY2FuIHJlbW92ZSB0aGF0Li4uCgpUaGUgc3R5bGUgd2UgcHJlZmVy
IGZvciBlcnJvciBjaGVja2luZyBpczoKCglyZXQgPSBmdW5jdGlvbigpOwoJaWYgKHJldCkKCQlk
byBzb21ldGluZzsKCmluc3RlYWQgb2Y6CgoJaWYgKGZ1bmN0aW9uKCkpCgpBbnl3YXksIEkgcmVh
bGx5IGRvbid0IGtub3cgaWYgaXQgY2FuIGhhcHBlbiBvciBub3QuIEkgc3VwcG9zZSBpdCBkb2Vz
LgpXaGF0IEkgZG9uJ3QgdW5kZXJzdGFuZCBpcyB5b3VyICJvb2IgPSBjaGlwLT5vb2JfcG9pICsg
b29iZWNjLm9mZnNldCIuCklmIHlvdSBleHBlY3QgYW4gZXJyb3IsIHRoZW4geW91IHNob3VsZCBu
b3QgdXBkYXRlIHRoaXMgcG9pbnRlciwgcmlnaHQ/CgpEb24ndCB5b3UgbmVlZCB0byB1c2UgMiAq
IGkgaW5zdGVhZCBvZiBpIGhlcmU/IEZvbGxvd2luZyB5b3VyIG90aGVyCmNvbnRyaWJ1dGlvbiwg
c2VjdGlvbnMgYXJlIGRpc3RyaWJ1dGVkIGxpa2UgImRhdGEvZWNjL2RhdGEvZWNjL2V0YyIuCgo+
IAo+ID4gICAKPiA+PiArCQkJb29iID0gTlVMTDsKPiA+PiArCQkJb29iZWNjLmxlbmd0aCA9IDA7
Cj4gPj4gKwkJfSBlbHNlIHsKPiA+PiArCQkJb29iID0gY2hpcC0+b29iX3BvaSArIG9vYmVjYy5v
ZmZzZXQ7Cj4gPj4gKwkJfQo+ID4+ICsKPiA+PiArCQlyZXQgPSBuYW5kX2NoZWNrX2VyYXNlZF9l
Y2NfY2h1bmsoZWNjX2NodW5rLCBjaGlwLT5lY2Muc2l6ZSwKPiA+PiArCQkJCQkJICBvb2IsIG9v
YmVjYy5sZW5ndGgsCj4gPj4gKwkJCQkJCSAgTlVMTCwgMCwKPiA+PiAJCQkJCQkgIGNoaXAtPmVj
Yy5zdHJlbmd0aCk7ICAKPiA+IAo+ID4gQXMgSSB0b2xkIHlvdSwgdGhpcyBoZWxwZXIgdGFrZXMg
Im1haWQgZGF0YSIgdGhlbiAic3BhcmUgYXJlYSIgdGhlbgo+ID4gImVjYyBieXRlcyIuIFRoZSBu
YW1lcyBhcmUgcHJldHR5IGltcG9ydGFudCBoZXJlIGFzIHlvdSB3YW50IHRvIGF2b2lkCj4gPiBj
aGVja2luZyB0aGUgc3BhcmUgT09CIGJ5dGVzIG9uIHB1cnBvc2UsIHNvIG1heWJlIHlvdSBjb3Vs
ZCBoYXZlIG1vcmUKPiA+IG1lYW5pbmdmdWwgbmFtZXMgYW5kIGNhbGwgImVjYyIgaW5zdGVhZCBv
ZiAib29iIiB0aGUgZWNjIHJlZ2lvbj8gIAo+IAo+IEFjdHVhbGx5IEkgdGhvdWdodCB5b3UgbWVh
bnQgdGhlIGNvbW1pdCBsb2csIG5vdCB0aGUgY29kZSBpdHNlbGYuLi4KCk5vIHByb2JsZW0gOykg
SSBtZWFudCBib3RoIGFjdHVhbGx5LCBBbmQgSSB0aGluayB5b3Ugc2hvdWxkIG5hbWUgdGhlCm9v
YiBwb2ludGVyIGVjY19ieXRlcy4KCj4gCj4gPiAgIAo+ID4+IAkJaWYgKHJldCA8IDApCj4gPj4g
CQkJcmV0dXJuIHJldDsgIAo+ID4gCj4gPiAKPiA+IFRoYW5rcywKPiA+IE1pcXXDqGwgIAo+IAo+
IFJlZ2FyZHMsCj4gw4FsdmFyby4KPiAKCgoKClRoYW5rcywKTWlxdcOobAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNj
dXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LW10ZC8K
