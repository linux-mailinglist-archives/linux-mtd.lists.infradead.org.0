Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D881D9DF5
	for <lists+linux-mtd@lfdr.de>; Tue, 19 May 2020 19:36:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rnRzas52jWpQu+QeJxvnrl0uFwIBfhkWir1IAymyrlI=; b=BsDRvbvhJ2x0cF
	k01cQrnAcY0a743aJGUWjb46bQzY1wKZn8yxzmaUsBCDIISBqejFsQQzU8uYengVNfzBKQujPXOct
	Fp8vs7ZgAiorfjVYRanBHzxr3tv7b5nybtplb7BoDsk2OlEYLrAZidELLQq/bfooGjCmsrSeEcH5D
	yLRPNpO8Xg70vlTssaPkLNWfvGy6Ove/GPSzg1hRKOD897rs5aoIIRHuSsyiNeWih4Mx1KyrnBERE
	aHan+ZTVBRLPpFdhrGRecaEf4cBMDWVRA3+HuU12uE7vy1yMXa8LHW33EgT1SU18TXTJV+l0nz2PU
	c22tn1Hqgktv01xvvi7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb69z-0002Ub-Ap; Tue, 19 May 2020 17:36:11 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb69q-0002TE-N0
 for linux-mtd@lists.infradead.org; Tue, 19 May 2020 17:36:04 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 5C0B22A07A3;
 Tue, 19 May 2020 18:36:01 +0100 (BST)
Date: Tue, 19 May 2020 19:35:58 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH] mtd: rawnand: ingenic: Convert the driver to exec_op()
Message-ID: <20200519193558.77f4c3d7@collabora.com>
In-Reply-To: <0H3LAQ.G5DAMEP9GDQC2@crapouillou.net>
References: <20200518165640.312220-1-boris.brezillon@collabora.com>
 <G7GJAQ.0VIFSQUDMC9H2@crapouillou.net>
 <20200518212422.23316760@collabora.com>
 <FN2LAQ.2U7L7XR4D02L@crapouillou.net>
 <20200519170130.77543c8e@collabora.com>
 <0H3LAQ.G5DAMEP9GDQC2@crapouillou.net>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_103603_015810_C4C3CB8F 
X-CRM114-Status: GOOD (  25.54  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Harvey Hunt <harveyhuntnexus@gmail.com>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T24gVHVlLCAxOSBNYXkgMjAyMCAxNzoxMDoxMiArMDIwMApQYXVsIENlcmN1ZWlsIDxwYXVsQGNy
YXBvdWlsbG91Lm5ldD4gd3JvdGU6Cgo+IExlIG1hci4gMTkgbWFpIDIwMjAgw6AgMTc6MDEsIEJv
cmlzIEJyZXppbGxvbiAKPiA8Ym9yaXMuYnJlemlsbG9uQGNvbGxhYm9yYS5jb20+IGEgw6ljcml0
IDoKPiA+IE9uIFR1ZSwgMTkgTWF5IDIwMjAgMTY6NTI6MjcgKzAyMDAKPiA+IFBhdWwgQ2VyY3Vl
aWwgPHBhdWxAY3JhcG91aWxsb3UubmV0PiB3cm90ZToKPiA+ICAgCj4gPj4gIEhpIEJvcmlzLAo+
ID4+IAo+ID4+ICBMZSBsdW4uIDE4IG1haSAyMDIwIMOgIDIxOjI0LCBCb3JpcyBCcmV6aWxsb24K
PiA+PiAgPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPiBhIMOpY3JpdCA6ICAKPiA+PiAg
PiBPbiBNb24sIDE4IE1heSAyMDIwIDE5OjUwOjA0ICswMjAwCj4gPj4gID4gUGF1bCBDZXJjdWVp
bCA8cGF1bEBjcmFwb3VpbGxvdS5uZXQ+IHdyb3RlOgo+ID4+ICA+ICAKPiA+PiAgPj4gIEhpIEJv
cmlzLAo+ID4+ICA+Pgo+ID4+ICA+PiAgTGUgbHVuLiAxOCBtYWkgMjAyMCDDoCAxODo1NiwgQm9y
aXMgQnJlemlsbG9uCj4gPj4gID4+ICA8Ym9yaXMuYnJlemlsbG9uQGNvbGxhYm9yYS5jb20+IGEg
w6ljcml0IDogIAo+ID4+ICA+PiAgPiBMZXQncyBjb252ZXJ0IHRoZSBkcml2ZXIgdG8gZXhlY19v
cCgpIHRvIGhhdmUgb25lIGxlc3MgZHJpdmVyICAKPiA+PiAgPj4gcmVseWluZyAgCj4gPj4gID4+
ICA+IG9uIHRoZSBsZWdhY3kgaW50ZXJmYWNlLiAgCj4gPj4gID4+Cj4gPj4gID4+ICBHcmVhdCB3
b3JrLCB0aGFua3MgZm9yIHRoYXQuCj4gPj4gID4+Cj4gPj4gID4+ICBIb3dldmVyIGl0IGRvZXMg
bm90IHdvcmsgOiggbmFuZF9zY2FuKCkgcmV0dXJucyBlcnJvciAtMTQ1LiAgCj4gPj4gID4KPiA+
PiAgPiBMb29rcyBsaWtlIHRoZSBSL0Igc2lnbmFsIGlzIGludmVydGVkLiBDYW4geW91IHRyeSB3
aXRoIHRoZQo+ID4+ICA+IGZvbGxvd2luZyBkaWZmIGFwcGxpZWQ/ICAKPiA+PiAKPiA+PiAgU3Rp
bGwgZG9lc24ndCB3b3JrIHByb3Blcmx5LiBJIGdldCAtRU5PREVWIGluIG5hbmRfZGV0ZWN0KCks
IGF0IHRoZQo+ID4+ICAic2Vjb25kIElEIHJlYWQgZGlkIG5vdCBtYXRjaC4uLiIgcHJfaW5mbygp
Lgo+ID4+IAo+ID4+ICBUaGUgUi9CIHNpZ25hbCBkb2Vzbid0IHNlZW0gdG8gYmUgdGhlIHByaW1h
cnkgY2F1c2UsIGlmIEkgdXNlCj4gPj4gIG5hbmRfc29mdF93YWl0cmR5KCkgaXQgZG9lc24ndCB3
b3JrIGFueSBiZXR0ZXIuICAKPiA+IAo+ID4gV2VsbCwgaXQgZG9lcyBzb2x2ZSB0aGUgRVRJTUVE
T1VUIGlzc3VlLCBzbyB3ZSdyZSBvbmUgc3RlcCBmdXJ0aGVyIAo+ID4gOy0pLgo+ID4gQ2FuIHlv
dSBwcmludCB0aGUgcmV0dXJuZWQgSUQ/ICAKPiAKPiBJdCByZWFkcyAwMC8wMCwgc28gaXQgZG9l
c24ndCBzZWVtIHRvIGJlIGFibGUgdG8gcmVhZCBhbnkgZGF0YS4KPiAKPiA+PiAKPiA+PiAgT25l
IHRoaW5nIEkgbm90aWNlZCB0aGF0IGp6NDc4MF9uZW1jX2Fzc2VydCgpIGlzIGNhbGxlZCB3aXRo
Cj4gPj4gIGFzc2VydD10cnVlIHVuY29uZGl0aW9uYWxseSwgd2hpbGUgYmVmb3JlIGl0IHdhcyBj
YWxsZWQgd2l0aCAoY3RybCAmCj4gPj4gIE5BTkRfTkNFKSwgd2hhdGV2ZXIgdGhhdCBpcy4gV2hl
dGhlciBvciBub3QgdGhhdCdzIGEgcHJvYmxlbSwgSSAKPiA+PiBoYXZlIG5vCj4gPj4gIGlkZWEu
ICAKPiA+IAo+ID4gWWVzLCB3ZSByZWFsbHkgd2FudCB0byBhc3NlcnQgdGhlIENFIHNpZ25hbCB1
bmNvbmRpdGlvbmFsbHkgaGVyZSwgYnV0Cj4gPiBtYXliZSB3ZSBzaG91bGQgYWRkIGEgZGVsYXkg
YWZ0ZXIgYXNzZXJ0aW5nIGl0L2JlZm9yZSBkZS1hc3NlcnRpbmcgaXQuICAKPiAKPiBJIGFkZGVk
IHNvbWUgdWRlbGF5KCkgaGVyZSBhbmQgdGhlcmUsIHVuZm9ydHVuYXRlbHkgaXQgZGlkbid0IGNo
YW5nZSAKPiBhbnl0aGluZy4KCkNhbiB5b3UgdHJ5IHdpdGggdGhpcyBkaWZmPyBJdCdzIGJhc2lj
YWxseSB0aGUgc2FtZSBhcyBiZWZvcmUgZXhjZXB0CnRoZXJlJ3MgYW4gYWRkaXRpb25hbCBmaXgg
KHMvY21kX29mZnNldC9hZGRyX29mZnNldC8gaW4gdGhlIGFkZHJlc3MKZW1pc3Npb24gcGF0aCku
CgotLS0+OC0tLQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tdGQvbmFuZC9yYXcvaW5nZW5pYy9pbmdl
bmljX25hbmRfZHJ2LmMgYi9kcml2ZXJzL210ZC9uYW5kL3Jhdy9pbmdlbmljL2luZ2VuaWNfbmFu
ZF9kcnYuYwppbmRleCBkY2VjZDU0YWYyMGIuLjI2NjgxMzVmMmQyNiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9tdGQvbmFuZC9yYXcvaW5nZW5pYy9pbmdlbmljX25hbmRfZHJ2LmMKKysrIGIvZHJpdmVy
cy9tdGQvbmFuZC9yYXcvaW5nZW5pYy9pbmdlbmljX25hbmRfZHJ2LmMKQEAgLTI0OSw2ICsyNDks
MjYgQEAgc3RhdGljIGludCBpbmdlbmljX25hbmRfYXR0YWNoX2NoaXAoc3RydWN0IG5hbmRfY2hp
cCAqY2hpcCkKICAgICAgICByZXR1cm4gMDsKIH0KIAorc3RhdGljIGludCBpbmdlbmljX25hbmRf
Z3Bpb193YWl0cmR5KHN0cnVjdCBncGlvX2Rlc2MgKmdwaW9kLAorICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgdW5zaWduZWQgbG9uZyB0aW1lb3V0X21zKQoreworICAgICAgIC8q
CisgICAgICAgICogV2FpdCB1bnRpbCBSL0IgcGluIGluZGljYXRlcyBjaGlwIGlzIHJlYWR5IG9y
IHRpbWVvdXQgb2NjdXJzLgorICAgICAgICAqICsxIGJlbG93IGlzIG5lY2Vzc2FyeSBiZWNhdXNl
IGlmIHdlIGFyZSBub3cgaW4gdGhlIGxhc3QgZnJhY3Rpb24KKyAgICAgICAgKiBvZiBqaWZmeSBh
bmQgbXNlY3NfdG9famlmZmllcyBpcyAxIHRoZW4gd2Ugd2lsbCB3YWl0IG9ubHkgdGhhdAorICAg
ICAgICAqIHNtYWxsIGppZmZ5IGZyYWN0aW9uIC0gcG9zc2libHkgbGVhZGluZyB0byBmYWxzZSB0
aW1lb3V0LgorICAgICAgICovCisgICAgICAgdGltZW91dF9tcyA9IGppZmZpZXMgKyBtc2Vjc190
b19qaWZmaWVzKHRpbWVvdXRfbXMpICsgMTsKKyAgICAgICBkbyB7CisgICAgICAgICAgICAgICBp
ZiAoIWdwaW9kX2dldF92YWx1ZV9jYW5zbGVlcChncGlvZCkpCisgICAgICAgICAgICAgICAgICAg
ICAgIHJldHVybiAwOworCisgICAgICAgICAgICAgICBjb25kX3Jlc2NoZWQoKTsKKyAgICAgICB9
IHdoaWxlICh0aW1lX2JlZm9yZShqaWZmaWVzLCB0aW1lb3V0X21zKSk7CisKKyAgICAgICByZXR1
cm4gIWdwaW9kX2dldF92YWx1ZV9jYW5zbGVlcChncGlvZCkgPyAwIDogLUVUSU1FRE9VVDsKK307
CisKIHN0YXRpYyBpbnQgaW5nZW5pY19uYW5kX2V4ZWNfaW5zdHIoc3RydWN0IG5hbmRfY2hpcCAq
Y2hpcCwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgaW5nZW5pY19u
YW5kX2NzICpjcywKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb25zdCBzdHJ1
Y3QgbmFuZF9vcF9pbnN0ciAqaW5zdHIpCkBAIC0yNjUsNyArMjg1LDcgQEAgc3RhdGljIGludCBp
bmdlbmljX25hbmRfZXhlY19pbnN0cihzdHJ1Y3QgbmFuZF9jaGlwICpjaGlwLAogICAgICAgIGNh
c2UgTkFORF9PUF9BRERSX0lOU1RSOgogICAgICAgICAgICAgICAgZm9yIChpID0gMDsgaSA8IGlu
c3RyLT5jdHguYWRkci5uYWRkcnM7IGkrKykKICAgICAgICAgICAgICAgICAgICAgICAgd3JpdGVi
KGluc3RyLT5jdHguYWRkci5hZGRyc1tpXSwKLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IGNzLT5iYXNlICsgbmZjLT5zb2NfaW5mby0+Y21kX29mZnNldCk7CisgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBjcy0+YmFzZSArIG5mYy0+c29jX2luZm8tPmFkZHJfb2Zmc2V0KTsKICAg
ICAgICAgICAgICAgIHJldHVybiAwOwogICAgICAgIGNhc2UgTkFORF9PUF9EQVRBX0lOX0lOU1RS
OgogICAgICAgICAgICAgICAgaWYgKGluc3RyLT5jdHguZGF0YS5mb3JjZV84Yml0IHx8CkBAIC0y
OTQsOCArMzE0LDggQEAgc3RhdGljIGludCBpbmdlbmljX25hbmRfZXhlY19pbnN0cihzdHJ1Y3Qg
bmFuZF9jaGlwICpjaGlwLAogICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gbmFuZF9zb2Z0
X3dhaXRyZHkoY2hpcCwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIGluc3RyLT5jdHgud2FpdHJkeS50aW1lb3V0X21zKTsKIAotICAgICAgICAgICAgICAg
cmV0dXJuIG5hbmRfZ3Bpb193YWl0cmR5KGNoaXAsIG5hbmQtPmJ1c3lfZ3BpbywKLSAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbnN0ci0+Y3R4LndhaXRyZHkudGltZW91
dF9tcyk7CisgICAgICAgICAgICAgICByZXR1cm4gaW5nZW5pY19uYW5kX2dwaW9fd2FpdHJkeShu
YW5kLT5idXN5X2dwaW8sCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBpbnN0ci0+Y3R4LndhaXRyZHkudGltZW91dF9tcyk7CiAgICAgICAgZGVmYXVsdDoK
ICAgICAgICAgICAgICAgIGJyZWFrOwogICAgICAgIH0KQEAgLTMyMiw2ICszNDIsOSBAQCBzdGF0
aWMgaW50IGluZ2VuaWNfbmFuZF9leGVjX29wKHN0cnVjdCBuYW5kX2NoaXAgKmNoaXAsCiAgICAg
ICAgICAgICAgICByZXQgPSBpbmdlbmljX25hbmRfZXhlY19pbnN0cihjaGlwLCBjcywgJm9wLT5p
bnN0cnNbaV0pOwogICAgICAgICAgICAgICAgaWYgKHJldCkKICAgICAgICAgICAgICAgICAgICAg
ICAgYnJlYWs7CisKKyAgICAgICAgICAgICAgIGlmIChvcC0+aW5zdHJzW2ldLmRlbGF5X25zKQor
ICAgICAgICAgICAgICAgICAgICAgICBuZGVsYXkob3AtPmluc3Ryc1tpXS5kZWxheV9ucyk7CiAg
ICAgICAgfQogICAgICAgIGp6NDc4MF9uZW1jX2Fzc2VydChuZmMtPmRldiwgY3MtPmJhbmssIGZh
bHNlKTsKIAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
