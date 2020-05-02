Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB401C2897
	for <lists+linux-mtd@lfdr.de>; Sun,  3 May 2020 00:35:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vo4ji63vtKB1rZsVmuwGoXZ/gtpLsx1JXpjAxJWH+CE=; b=LAhsXIgXyKqZ5v
	WFt1RDKaIckcvu+AIHlEl+qIo2HGQpdYZ5UiBqR6QVF+Zpq+vRxb9IHHhPMB3flseeZAapxkochRe
	v209gyP9Oyub+HzMs6yYvb7rIvF+VhCERP7sEsN81XHda0h8Ls1byKLf/9tO8NnQN+PJ2MLfIEO1Y
	029gEnSEJg7dL3MoLafJTx0Y8jLx/CyPqSNi9RbbqiTmYN/KpHK/sDVC+yBVfODGWAZj6eeoqxlv/
	cOl8ALNwZ2f9oHYntQvlLONEyZ8hl8Z4VsEOkEmXXXcKZEBhNs/ff02wklmXCXrCGPX2essMPrufK
	KvXfL2Mf81FtkFTaAM7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jV0j7-0003LN-Rc; Sat, 02 May 2020 22:35:17 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jV0it-0002KW-94
 for linux-mtd@lists.infradead.org; Sat, 02 May 2020 22:35:05 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id D23F62A05BC;
 Sat,  2 May 2020 23:34:59 +0100 (BST)
Date: Sun, 3 May 2020 00:34:56 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Lubomir Rintel <lkundrak@v3.sk>
Subject: Re: [PATCH 13/17] mtd: rawnand: cafe: Add exec_op() support
Message-ID: <20200503003456.2ddf6047@collabora.com>
In-Reply-To: <20200502191843.GA363829@furthur.local>
References: <20200427082028.394719-14-boris.brezillon@collabora.com>
 <20200502111410.330584-1-lkundrak@v3.sk>
 <20200502151811.328eebb0@collabora.com>
 <20200502191843.GA363829@furthur.local>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_153503_588665_64C9534E 
X-CRM114-Status: GOOD (  27.72  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: vigneshr@ti.com, tudor.ambarus@microchip.com, richard@nod.at,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com, dwmw2@infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T24gU2F0LCAyIE1heSAyMDIwIDIxOjE4OjQzICswMjAwCkx1Ym9taXIgUmludGVsIDxsa3VuZHJh
a0B2My5zaz4gd3JvdGU6Cgo+IE9uIFNhdCwgTWF5IDAyLCAyMDIwIGF0IDAzOjE4OjExUE0gKzAy
MDAsIEJvcmlzIEJyZXppbGxvbiB3cm90ZToKPiA+IE9uIFNhdCwgIDIgTWF5IDIwMjAgMTM6MTQ6
MTAgKzAyMDAKPiA+IEx1Ym9taXIgUmludGVsIDxsa3VuZHJha0B2My5zaz4gd3JvdGU6Cj4gPiAg
IAo+ID4gPiBCb3JpcyBCcmV6aWxsb24gd3JvdGU6ICAKPiA+ID4gPiBJbXBsZW1lbnRpbmcgZXhl
Y19vcCgpIHdpbGwgaGVscCB1cyBnZXQgcmlkIG9mIHRoZSBsZWdhY3kgaW50ZXJmYWNlIGFuZAo+
ID4gPiA+IHNob3VsZCBtYWtlIGRyaXZlcnMgbXVjaCBjbGVhbmVyIHRvby4KPiA+ID4gPiAKPiA+
ID4gPiBTaWduZWQtb2ZmLWJ5OiBCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xs
YWJvcmEuY29tPgo+ID4gPiA+IC0tLQo+ID4gPiA+ICBkcml2ZXJzL210ZC9uYW5kL3Jhdy9jYWZl
X25hbmQuYyB8IDEzNyArKysrKysrKysrKysrKysrKysrKysrKysrKysrKystCj4gPiA+ID4gIDEg
ZmlsZSBjaGFuZ2VkLCAxMzYgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+ID4gPiA+IAo+
ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL210ZC9uYW5kL3Jhdy9jYWZlX25hbmQuYyBiL2Ry
aXZlcnMvbXRkL25hbmQvcmF3L2NhZmVfbmFuZC5jCj4gPiA+ID4gaW5kZXggZWRmNjUxOTc2MDRi
Li5hZGE5YzhiMDZhNDEgMTAwNjQ0Cj4gPiA+ID4gLS0tIGEvZHJpdmVycy9tdGQvbmFuZC9yYXcv
Y2FmZV9uYW5kLmMKPiA+ID4gPiArKysgYi9kcml2ZXJzL210ZC9uYW5kL3Jhdy9jYWZlX25hbmQu
YyAgICAKPiA+ID4gLi4uCj4gPiA+ICAgCj4gPiA+ID4gKwlyZXQgPSByZWFkbF9wb2xsX3RpbWVv
dXQoY2FmZS0+bW1pbyArIENBRkVfTkFORF9JUlEsIHN0YXR1cywKPiA+ID4gPiArCQkJCSAoc3Rh
dHVzICYgd2FpdCkgPT0gd2FpdCwgMSwgVVNFQ19QRVJfU0VDKTsKPiA+ID4gPiArCWlmIChyZXQp
Cj4gPiA+ID4gKwkJcmV0dXJuIHJldDsKPiA+ID4gPiArCj4gPiA+ID4gKwlpZiAoY3RybDEgJiBD
QUZFX05BTkRfRE1BX0NUUkxfREFUQV9JTikgICAgCj4gPiA+ICAgICAgICAgICAgICAgICAgICAg
Xl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl4KPiA+ID4gcy9DQUZFX05BTkRfRE1BX0NUUkxfREFU
QV9JTi9DQUZFX05BTkRfQ1RSTDFfSEFTX0RBVEFfSU4vIGhlcmUgcGxlYXNlLgo+ID4gPiAKPiA+
ID4gICAKPiA+ID4gPiArCQljYWZlX3JlYWRfYnVmKGNoaXAsIGRhdGFfaW5zdHItPmN0eC5kYXRh
LmJ1Zi5pbiwKPiA+ID4gPiArCQkJICAgICAgZGF0YV9pbnN0ci0+Y3R4LmRhdGEubGVuKTsKPiA+
ID4gPiArCj4gPiA+ID4gKwlyZXR1cm4gMDsKPiA+ID4gPiArfSAgICAKPiA+ID4gLi4uCj4gPiA+
IAo+ID4gPiBPdGhlciB0aGFuIHRoYXQsIHdoZW4gRE1BIGlzIGluIHVzZSwgb25seSBDQUZFX05B
TkRfSVJRX0RNQV9ET05FIHNlZW0gdG8gcG9wCj4gPiA+IHVwIGluIENBRkVfTkFORF9JUlEgd2hl
biB0aGUgY29tbWFuZCBjb21wbGV0ZXMsIG5vdCBDQUZFX05BTkRfSVJRX0NNRF9ET05FLgo+ID4g
PiBJIHN1cHBvc2UgeW91IG91Z2h0IHRvIGRvIHRoaXMgb3Igc29tZXRoaW5nIGVxdWl2YWxlbnQ6
ICAKPiA+IAo+ID4gSSBzdXNwZWN0IGl0IGhhcyB0byBkbyB3aXRoIHRoZSBmYWN0IHRoYXQgeW91
IG1pZ2h0IGhhdmUgb3BlcmF0aW9ucyB3aXRoCj4gPiBEQVRBX0lOKCkgaW5zdHJ1Y3Rpb25zIG9u
bHkuIEkgcHVzaGVkIGFuIGFsdGVybmF0ZSBmaXggWzFdIHRvIG15IGJyYW5jaC4KPiA+IFdvdWxk
IHlvdSBtaW5kIHRlc3RpbmcgaXQ/ICAKPiAKPiBUaGF0IHNvdW5kZWQgcGxhdXNpYmxlLCBidXQg
aXQgZG9lc24ndCBzZWVtIHRvIGJlIHRvIGJlIHRoZSBjYXNlLiBXaXRoCj4gdGhlIHBhdGNoIHRo
ZSBvcGVyYXRpb25zIGRvaW5nIERNQSB0cmFuc2ZlcnMgc3RpbGwgc2VlbSB0byB0aW1lIG91dCAo
dGhlCj4gaWRlbnRpZmljYXRpb24gc3VjY2VlZGVkLCBiZWNhdXNlIGF0IHRoYXQgcG9pbnQgRE1B
IGlzIHR1cm5lZCBvZmYpOgo+IAo+ICAgIENBRsOJIE5BTkQgMDAwMDowMDowYy4wOiBlbmFibGlu
ZyBkZXZpY2UgKDAwMDAgLT4gMDAwMikKPiAgICBuYW5kOiBkZXZpY2UgZm91bmQsIE1hbnVmYWN0
dXJlciBJRDogMHhhZCwgQ2hpcCBJRDogMHhkYwo+ICAgIG5hbmQ6IEh5bml4IE5BTkQgNTEyTWlC
IDMsM1YgOC1iaXQKPiAgICBuYW5kOiA1MTIgTWlCLCBTTEMsIGVyYXNlIHNpemU6IDEyOCBLaUIs
IHBhZ2Ugc2l6ZTogMjA0OCwgT09CIHNpemU6IDY0Cj4gICAgbmFuZDogMiBjaGlwcyBkZXRlY3Rl
ZAo+ICAgIEJhZCBibG9jayB0YWJsZSBub3QgZm91bmQgZm9yIGNoaXAgMAo+ICAgIEJhZCBibG9j
ayB0YWJsZSBub3QgZm91bmQgZm9yIGNoaXAgMAo+ICAgIFNjYW5uaW5nIGRldmljZSBmb3IgYmFk
IGJsb2Nrcwo+ICAgIG5hbmRfYmJ0OiBlcnJvciB3aGlsZSBlcmFzaW5nIEJCVCBibG9jayAtNQo+
ICAgIG5hbmRfYmJ0OiBlcnJvciAtMzAgd2hpbGUgbWFya2luZyBibG9jayA4MTkxIGJhZAo+ICAg
IG5hbmRfYmJ0OiBlcnJvciB3aGlsZSBlcmFzaW5nIEJCVCBibG9jayAtNQo+ICAgIG5hbmRfYmJ0
OiBlcnJvciAtMzAgd2hpbGUgbWFya2luZyBibG9jayA4MTkwIGJhZAo+ICAgIG5hbmRfYmJ0OiBl
cnJvciB3aGlsZSBlcmFzaW5nIEJCVCBibG9jayAtNQo+ICAgIG5hbmRfYmJ0OiBlcnJvciAtMzAg
d2hpbGUgbWFya2luZyBibG9jayA4MTg5IGJhZAo+ICAgIG5hbmRfYmJ0OiBlcnJvciB3aGlsZSBl
cmFzaW5nIEJCVCBibG9jayAtNQo+ICAgIG5hbmRfYmJ0OiBlcnJvciAtMzAgd2hpbGUgbWFya2lu
ZyBibG9jayA4MTg4IGJhZAo+ICAgIE5vIHNwYWNlIGxlZnQgdG8gd3JpdGUgYmFkIGJsb2NrIHRh
YmxlCj4gICAgbmFuZF9iYnQ6IGVycm9yIHdoaWxlIHdyaXRpbmcgYmFkIGJsb2NrIHRhYmxlIC0y
OAo+IAo+IEkndmUgZG9uZSB0aGlzIG9uIHRvcCBvZiB5b3VyIGJyYW5jaDoKPiAKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9tdGQvbmFuZC9yYXcvY2FmZV9uYW5kLmMgYi9kcml2ZXJzL210ZC9uYW5k
L3Jhdy9jYWZlX25hbmQuYwo+IGluZGV4IDc2MWQxMDNlNDM4Zi4uMmE3NjkwMzMzOTJlIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvbXRkL25hbmQvcmF3L2NhZmVfbmFuZC5jCj4gKysrIGIvZHJpdmVy
cy9tdGQvbmFuZC9yYXcvY2FmZV9uYW5kLmMKPiBAQCAtNjQyLDYgKzY0MiwxMSBAQCBzdGF0aWMg
aW50IGNhZmVfbmFuZF9leGVjX3N1Ym9wKHN0cnVjdCBuYW5kX2NoaXAgKmNoaXAsCj4gIAo+ICAg
ICAgICAgcmV0ID0gcmVhZGxfcG9sbF90aW1lb3V0KGNhZmUtPm1taW8gKyBDQUZFX05BTkRfSVJR
LCBzdGF0dXMsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKHN0YXR1cyAmIHdh
aXQpID09IHdhaXQsIDEsIFVTRUNfUEVSX1NFQyk7Cj4gKyAgICAgICBmb3IgKGkgPSAwOyBpIDwg
c3Vib3AtPm5pbnN0cnM7IGkrKykgewo+ICsgICAgICAgICAgICAgICBjb25zdCBzdHJ1Y3QgbmFu
ZF9vcF9pbnN0ciAqaW5zdHIgPSAmc3Vib3AtPmluc3Ryc1tpXTsKPiArICAgICAgICAgICAgICAg
cHJpbnRrKCIlZDogcmV0PSVkIGluc3RyPSVkIHN0YXR1cz0lMDh4IHdhaXQ9JTA4eFxuIiwgaSwg
cmV0LCBpbnN0ci0+dHlwZSwgc3RhdHVzLCB3YWl0KTsKPiArICAgICAgIH0KPiArCj4gICAgICAg
ICBpZiAocmV0KQo+ICAgICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+IAo+IEl0IGluZGVlZCBs
b29rcyBsaWtlIENBRkVfTkFORF9JUlFfQ01EX0RPTkUgaXMgbmV2ZXIgcmFpc2VkIGlmIHRoZXJl
J3MgYQo+IGRhdGEgb3BlcmF0aW9uIGludm9sdmluZyBETUEgLS0gdGhlIHN0YXR1cyByZW1haW5z
IGF0IDB4NTAwMDAwMDAuIEZ1bGwgbG9nOgoKSSBzZWUuIFRoZSByZWFzb24gSSB3YXMgbm90IGVu
dGlyZWx5IGhhcHB5IHdpdGggdGhlICJ3YWl0IG9uIERNQV9ET05FCndoZW4gdGhlcmUncyBhIERN
QSB0cmFuc2ZlciIgaXMgYmVjYXVzZSB0aGlzIHRyYW5zZmVyIG1pZ2h0IG5vdCBiZSB0aGUKbGFz
dCBpbnN0cnVjdGlvbiBpbiBhIHN1YiBvcGVyYXRpb24sIGFuZCBJIGZlYXJlZCB3ZSB3b3VsZCBu
b3Qgd2FpdCBmb3IKdGhlIGZ1bGwgb3BlcmF0aW9uIHRvIGJlIGRvbmUgYnV0IG9ubHkgdGhlIERN
QSB0cmFuc2ZlciBpdHNlbGYuIFNvIEkKd2VudCBiYWNrIHRvIHRoZSBzcGVjIFsxXSwgYW5kIHRo
ZXJlJ3MgYW4gaW50ZXJlc3Rpbmcgbm90ZSBwYWdlIDM4OgoKIgpTb2Z0d2FyZSB3YWl0cyBmb3Ig
PGRtYV9kb25lPiBmaWVsZCBpbiB0aGUgSW50ZXJydXB0IFJlZ2lzdGVyIChUYWJsZSA5MQpwLiA5
MykgZm9yIHJlYWQgb3BlcmF0aW9uIGJlY2F1c2UgRE1BIGlzIHRoZSBsYXN0IHN0ZXAgb2YgcmVh
ZApvcGVyYXRpb24gYW5kIHdhaXRzIGZvciA8Y21kX2RvbmU+ZmllbGQgaW4gdGhlIEludGVycnVw
dCBSZWdpc3RlcgooVGFibGUgOTEgcC4gOTMpIGZvciB3cml0ZSBvcGVyYXRpb24gYmVjYXVzZSBD
b21tYW5kIGV4ZWN1dGlvbiBpcyB0aGUKbGFzdCBzdGVwIG9mIHdyaXRlIG9wZXJhdGlvbi4KIgoK
SSBqdXN0IHB1c2hlZCBhIG5ldyBmaXh1cCBjb21taXQgaW1wbGVtZW50aW5nIHRoaXMgbG9naWMu
IExldCBtZSBrbm93CmlmIHRoYXQgc29sdmVzIHRoZSBwcm9ibGVtLgoKWzFdaHR0cDovL3dpa2ku
bGFwdG9wLm9yZy9pbWFnZXMvNS81Yy84OEFMUDAxX0RhdGFzaGVldF9KdWx5XzIwMDcucGRmCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
