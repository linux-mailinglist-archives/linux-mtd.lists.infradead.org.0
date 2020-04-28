Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 054FE1BB7E5
	for <lists+linux-mtd@lfdr.de>; Tue, 28 Apr 2020 09:44:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jTHBVGG1WbYwiRR2eA9op2aAmiNxm0wg3iLddyGF5+w=; b=XScDsvHJS+0ywn
	Y74tkW4YmX7USTcLZZ9tXZ9mvGJmtqbgXHd+nHJP4NMHOlNAIHf3gwUWWHxSSNG+EDHPWYVfEU/U1
	tWLiOkLLF+J6g52H/tu7smsEnH+dXBItPwq4doePF5FYF5HmCPgyFVLOQSStOzU/jSKrONfa+GeCX
	Qs2gyQ+9Ob533Di5zHUiF27S44dK6yH2Hqza0lU9sqvmP+p0LRImMNXu+0iNhu7wj5L7NwzI9wSVp
	/tQInKC9SDUib5sshcfCX+twshpfF2/Ql9f5cbKqyGzl1hZyOHw+qvMt8XNA4eOgb2sbmb5bmQsxb
	Hk7zfTw/DpOXLfWBa7mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTKug-0008SI-KP; Tue, 28 Apr 2020 07:44:18 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTKuX-0008RK-3O
 for linux-mtd@lists.infradead.org; Tue, 28 Apr 2020 07:44:10 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id EB1F1200004;
 Tue, 28 Apr 2020 07:44:04 +0000 (UTC)
Date: Tue, 28 Apr 2020 09:44:03 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH 12/17] mtd: rawnand: cafe: Don't split things when
 reading/writing a page
Message-ID: <20200428094403.0250ae63@xps13>
In-Reply-To: <20200428082024.5e0ce40b@collabora.com>
References: <20200427082028.394719-1-boris.brezillon@collabora.com>
 <20200427082028.394719-13-boris.brezillon@collabora.com>
 <20200427215353.3ced34d3@xps13>
 <20200428082024.5e0ce40b@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_004409_415971_7C7FB4B8 
X-CRM114-Status: GOOD (  21.92  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Cc: linux-mtd@lists.infradead.org, Tudor Ambarus <tudor.ambarus@microchip.com>,
 David Woodhouse <dwmw2@infradead.org>, Vignesh Raghavendra <vigneshr@ti.com>,
 Richard Weinberger <richard@nod.at>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgQm9yaXMsCgpCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29t
PiB3cm90ZSBvbiBUdWUsIDI4IEFwcgoyMDIwIDA4OjIwOjI0ICswMjAwOgoKPiBPbiBNb24sIDI3
IEFwciAyMDIwIDIxOjUzOjUzICswMjAwCj4gTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBi
b290bGluLmNvbT4gd3JvdGU6Cj4gCj4gPiBIaSBCb3JpcywKPiA+IAo+ID4gQm9yaXMgQnJlemls
bG9uIDxib3Jpcy5icmV6aWxsb25AY29sbGFib3JhLmNvbT4gd3JvdGUgb24gTW9uLCAyNyBBcHIK
PiA+IDIwMjAgMTA6MjA6MjIgKzAyMDA6Cj4gPiAgIAo+ID4gPiBDYWxsaW5nIG5hbmRfcmVhZF9w
YWdlX29wKHBhZ2VzaXplKS9uYW5kX3Byb2dfcGFnZV9iZWdpbl9vcChwYWdlc2l6ZSkKPiA+ID4g
YW5kIGV4cGVjdGluZyB0byBnZXQgYSBwYWdlc2l6ZStvb2JzaXplIHJlYWQgZnJvbS93cml0dGVu
IHRvIHRoZQo+ID4gPiByZWFkL3dyaXRlIGJ1ZmZlciBpcyBmcmFnaWxlIGFuZCBvbmx5IHdvcmtz
IGJlY2F1c2Ugb2YgaGFja3MgZG9uZQo+ID4gPiBpbiBjbWRmdW5jKCkuIExldCdzIHJlYWQvd3Jp
dGUgdGhlIHBhZ2UgaW4gb25lIGdvLCB1c2luZyB0aGUgcGFnZQo+ID4gPiBjYWNoZSBidWZmZXIg
YXMgYSBib3VuY2UgYnVmZmVyLgo+ID4gPiAKPiA+ID4gU2lnbmVkLW9mZi1ieTogQm9yaXMgQnJl
emlsbG9uIDxib3Jpcy5icmV6aWxsb25AY29sbGFib3JhLmNvbT4KPiA+ID4gLS0tCj4gPiA+ICBk
cml2ZXJzL210ZC9uYW5kL3Jhdy9jYWZlX25hbmQuYyB8IDE2ICsrKysrKysrKysrLS0tLS0KPiA+
ID4gIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+ID4g
PiAKPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbXRkL25hbmQvcmF3L2NhZmVfbmFuZC5jIGIv
ZHJpdmVycy9tdGQvbmFuZC9yYXcvY2FmZV9uYW5kLmMKPiA+ID4gaW5kZXggMzE0OTNhMjAxYTAy
Li5lZGY2NTE5NzYwNGIgMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvbXRkL25hbmQvcmF3L2Nh
ZmVfbmFuZC5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvbXRkL25hbmQvcmF3L2NhZmVfbmFuZC5jCj4g
PiA+IEBAIC00NzIsNiArNDcyLDcgQEAgc3RhdGljIGludCBjYWZlX25hbmRfcmVhZF9wYWdlKHN0
cnVjdCBuYW5kX2NoaXAgKmNoaXAsIHVpbnQ4X3QgKmJ1ZiwKPiA+ID4gIHsKPiA+ID4gIAlzdHJ1
Y3QgbXRkX2luZm8gKm10ZCA9IG5hbmRfdG9fbXRkKGNoaXApOwo+ID4gPiAgCXN0cnVjdCBjYWZl
X3ByaXYgKmNhZmUgPSBuYW5kX2dldF9jb250cm9sbGVyX2RhdGEoY2hpcCk7Cj4gPiA+ICsJdm9p
ZCAqcGFnZWJ1ZiA9IG5hbmRfZ2V0X2RhdGFfYnVmKGNoaXApOwo+ID4gPiAgCXVuc2lnbmVkIGlu
dCBtYXhfYml0ZmxpcHMgPSAwOwo+ID4gPiAgCXUzMiBlY2NfcmVzdWx0LCBzdGF0dXM7Cj4gPiA+
ICAKPiA+ID4gQEAgLTQ3OSw4ICs0ODAsMTEgQEAgc3RhdGljIGludCBjYWZlX25hbmRfcmVhZF9w
YWdlKHN0cnVjdCBuYW5kX2NoaXAgKmNoaXAsIHVpbnQ4X3QgKmJ1ZiwKPiA+ID4gIAkJY2FmZV9y
ZWFkbChjYWZlLCBOQU5EX0VDQ19SRVNVTFQpLAo+ID4gPiAgCQljYWZlX3JlYWRsKGNhZmUsIE5B
TkRfRUNDX1NZTl9SRUcoMCkpKTsKPiA+ID4gIAo+ID4gPiAtCW5hbmRfcmVhZF9wYWdlX29wKGNo
aXAsIHBhZ2UsIDAsIGJ1ZiwgbXRkLT53cml0ZXNpemUpOwo+ID4gPiAtCWNoaXAtPmxlZ2FjeS5y
ZWFkX2J1ZihjaGlwLCBjaGlwLT5vb2JfcG9pLCBtdGQtPm9vYnNpemUpOwo+ID4gPiArCW5hbmRf
cmVhZF9wYWdlX29wKGNoaXAsIHBhZ2UsIDAsIHBhZ2VidWYsCj4gPiA+ICsJCQkgIG10ZC0+d3Jp
dGVzaXplICsgbXRkLT5vb2JzaXplKTsKPiA+ID4gKwo+ID4gPiArCWlmIChidWYgIT0gcGFnZWJ1
ZikKPiA+ID4gKwkJbWVtY3B5KGJ1ZiwgcGFnZWJ1ZiwgbXRkLT53cml0ZXNpemUpOwo+ID4gPiAg
Cj4gPiA+ICAJZWNjX3Jlc3VsdCA9IGNhZmVfcmVhZGwoY2FmZSwgTkFORF9FQ0NfUkVTVUxUKTsK
PiA+ID4gIAlzdGF0dXMgPSBDQUZFX0ZJRUxEX0dFVChOQU5EX0VDQ19SRVNVTFQsIFNUQVRVUywg
ZWNjX3Jlc3VsdCk7Cj4gPiA+IEBAIC02NDIsMTUgKzY0NiwxNyBAQCBzdGF0aWMgaW50IGNhZmVf
bmFuZF93cml0ZV9wYWdlKHN0cnVjdCBuYW5kX2NoaXAgKmNoaXAsCj4gPiA+ICB7Cj4gPiA+ICAJ
c3RydWN0IG10ZF9pbmZvICptdGQgPSBuYW5kX3RvX210ZChjaGlwKTsKPiA+ID4gIAlzdHJ1Y3Qg
Y2FmZV9wcml2ICpjYWZlID0gbmFuZF9nZXRfY29udHJvbGxlcl9kYXRhKGNoaXApOwo+ID4gPiAr
CXZvaWQgKnBhZ2VidWYgPSBuYW5kX2dldF9kYXRhX2J1ZihjaGlwKTsKPiA+ID4gIAlpbnQgcmV0
Owo+ID4gPiAgCj4gPiA+IC0JbmFuZF9wcm9nX3BhZ2VfYmVnaW5fb3AoY2hpcCwgcGFnZSwgMCwg
YnVmLCBtdGQtPndyaXRlc2l6ZSk7Cj4gPiA+IC0JY2hpcC0+bGVnYWN5LndyaXRlX2J1ZihjaGlw
LCBjaGlwLT5vb2JfcG9pLCBtdGQtPm9vYnNpemUpOwo+ID4gPiArCWlmIChwYWdlYnVmICE9IGJ1
ZikKPiA+ID4gKwkJbWVtY3B5KHBhZ2VidWYsIGJ1ZiwgbXRkLT53cml0ZXNpemUpOwo+ID4gPiAg
Cj4gPiA+ICAJLyogU2V0IHVwIEVDQyBhdXRvZ2VuZXJhdGlvbiAqLwo+ID4gPiAgCWNhZmUtPmN0
bDIgfD0gQ0FGRV9OQU5EX0NUUkwyX0FVVE9fV1JJVEVfRUNDOwo+ID4gPiAgCj4gPiA+IC0JcmV0
ID0gbmFuZF9wcm9nX3BhZ2VfZW5kX29wKGNoaXApOwo+ID4gPiArCXJldCA9IG5hbmRfcHJvZ19w
YWdlX29wKGNoaXAsIHBhZ2UsIDAsIHBhZ2VidWYsCj4gPiA+ICsJCQkJbXRkLT53cml0ZXNpemUg
KyBtdGQtPm9vYnNpemUpOwo+ID4gPiAgCj4gPiA+ICAJLyoKPiA+ID4gIAkgKiBBbmQgY2xlYXIg
aXQgYmVmb3JlIHJldHVybmluZyBzbyB0aGF0IGZvbGxvd2luZyB3cml0ZSBvcGVyYXRpb25zICAg
IAo+ID4gCj4gPiAKPiA+IFlvdSBhcmUgcmVwbGFjaW5nIC0+cmVhZC93cml0ZV9idWYoKSBjYWxs
cyBpbnRvIG1lbWNweSgpIGNhbGxzLAo+ID4gc2hvdWxkbid0IHRoaXMgYmUgY2xlYW5lZCBiZWZv
cmU/IG9yIGF0IGxlYXN0IG1lbnRpb25lZD8gIAo+IAo+IEFjdHVhbGx5LCB0aG9zZSByZWFkL3dy
aXRlX2J1ZiBhcmUgc3RpbGwgdGhlcmUsIHRoZXkncmUganVzdCBoaWRkZW4gaW4KPiB0aGUgbmFu
ZF97cHJvZyxyZWFkfV9wYWdlX29wKCkgY2FsbCBub3cgKHRvIGJlIGFjY3VyYXRlLCB0aGUgcmVh
ZC93cml0ZQo+IGJ1ZiBpbiB0aGVyZSBub3cgY292ZXJzIHRoZSBkYXRhIGFuZCBvb2IgcG9ydGlv
bnMpLiBJdCdzIHJlYWxseSB3aGF0Cj4gc2hvdWxkIGJlIGRvbmUsIHRoZSByZWFzb24gdGhpcyB3
b3JrZWQgc28gZmFyIGlzIGJlY2F1c2UgY21kZnVuYygpCj4gZ3Vlc3NlcyB0aGF0IHRoZSBmdWxs
IHBhZ2Ugd2lsbCBiZSByZWFkL3dyaXR0ZW4gYW5kIGlzc3VlcyBhIHJlYWQvd3JpdGUKPiBvZiB0
aGUgZGF0YStvb2IgcG9ydGlvbi4gVGhlIGV4dHJhIG1lbWNweSB0aGF0J3MgYWRkZWQgaGVyZSBp
cyBkb25lIHRvCj4gYWNjb3VudCBmb3IgdGhlIGZhY3QgdGhhdCB0aGUgY29yZSBtaWdodCBwYXNz
IDIgZGlmZmVyZW50IGJ1ZmZlcnMgZm9yCj4gT09CIGFuZCBkYXRhLCBidXQgd2Ugd2FudCB0aGlu
Z3MgdG8gYmUgZG9uZSBpbiBvbmUgc3RlcCwgc28gd2UncmUgdXNpbmcKPiB0aGUgYm91bmNlIGJ1
ZmZlciB0byBkbyB0aGUgdHJhbnNmZXIuCgpOb3cgdGhhdCB5b3UgbWVudGlvbiBpdCBJIGZ1bGx5
IHVuZGVyc3RhbmQuCgpUaGFua3MgZm9yIHRoZSBjbGFyaWZpY2F0aW9uLCBtYXliZSB5b3UgY2Fu
IGFkZCB0aGVzZSBkZXRhaWxzIHRvIHRoZQpjb21taXQgbG9nLgoKClRoYW5rcywKTWlxdcOobAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
