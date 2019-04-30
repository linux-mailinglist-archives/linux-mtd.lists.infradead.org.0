Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F5AF307
	for <lists+linux-mtd@lfdr.de>; Tue, 30 Apr 2019 11:33:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UHU9487FRDhUC3keYi1N2GUAzbdsLKi5AfeI+1P80i4=; b=TZh3hmrw1PZckQ
	PBIP6T7sv3an0iQY2pWwO3T8Uqk/c+PJRTvt4AOyuRWp+S0cGKXSOp1mbkXqQwmxc8WHcTx8/LjyA
	UCsticX3nPDPA2NhctI6FFwrnl8v0bHtDKOUwPs7f55LvL0kqmK1RgVwkNqBHL5ob9TpWjYFCjUCb
	Wi4kAlJ1hJ4zIAVmXkI/w5yrmz5G+yhS2lc8Ra8zzJ++dn5TIkK50A+qWPPgrcle+qWICNOY1tt7l
	H2JV620FzuvGGIlS6eHVr96SMNd2/te70cq6iMg0HUH0bWvRghZnITqdmQqsDnLsuIj9K7WgK++9Z
	CWObPVqvjxOiW9G1sBlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLP8b-0002Fw-Bi; Tue, 30 Apr 2019 09:33:21 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLP8D-0001to-0J
 for linux-mtd@lists.infradead.org; Tue, 30 Apr 2019 09:32:59 +0000
X-Originating-IP: 90.88.147.33
Received: from xps13 (aaubervilliers-681-1-27-33.w90-88.abo.wanadoo.fr
 [90.88.147.33]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 7AA54240015;
 Tue, 30 Apr 2019 09:32:42 +0000 (UTC)
Date: Tue, 30 Apr 2019 11:32:42 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Alexander Dahl <ada@thorsis.com>
Subject: Re: atmel nand bindings vs. actual dts files
Message-ID: <20190430113242.5cad2f16@xps13>
In-Reply-To: <1947914.CcHDgmXbBm@ada>
References: <1823900.qPX5mxbl1h@ada> <4099561.5sHrvDXGx3@ada>
 <20190429115540.7d577a50@xps13> <1947914.CcHDgmXbBm@ada>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_023257_195601_990390F4 
X-CRM114-Status: GOOD (  11.32  )
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>, linux-mtd@lists.infradead.org,
 Boris Brezillon <bbrezillon@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgQWxleGFuZGVyLAoKQWxleGFuZGVyIERhaGwgPGFkYUB0aG9yc2lzLmNvbT4gd3JvdGUgb24g
VHVlLCAzMCBBcHIgMjAxOSAxMToyNDo0NAorMDIwMDoKCj4gSGVsbG8gTWlxdcOobCwKPiAKPiBB
bSBNb250YWcsIDI5LiBBcHJpbCAyMDE5LCAxMTo1NTo0MCBDRVNUIHNjaHJpZWIgTWlxdWVsIFJh
eW5hbDoKPiA+IEFsZXhhbmRlciBEYWhsIDxhZGFAdGhvcnNpcy5jb20+IHdyb3RlIG9uIFRodSwg
MDcgTWFyIDIwMTkgMTc6MjU6MTcgIAo+ID4gPiBBbSBNaXR0d29jaCwgNi4gTcOkcnogMjAxOSwg
MTU6MDc6NTIgQ0VUIHNjaHJpZWIgQWxleGFuZGVyIERhaGw6ICAKPiA+ID4gPiBTbyBpbnN0ZWFk
IG9mICJhbHdheXMgMHg4MDAwMDAiIHRoYXQgbm9kZSBoYXMgMHgyIGFzIHRoaXJkIGVudHJ5IGZv
ciB0aGUKPiA+ID4gPiAncmVnJyBwcm9wZXJ0eS4gV2h5IGlzIHRoYXQ/ICAKPiA+ID4gCj4gPiA+
IEkgZGlkbid0IGludmVzdGlnYXRlIHRoYXQgZnVydGhlciB5ZXQsIGJ1dCBJJ20gY3VyaW91cywg
c28gaWYgYW55b25lCj4gPiA+IGtub3dzPyAgCj4gPiAKPiA+IEkgc3VwcG9zZSB0aGUgYmluZGlu
Z3MgWzFdIGV4cGxhaW4gdGhlIHNpdHVhdGlvbi4KPiA+IAo+ID4gWzFdCj4gPiBodHRwczovL2Vs
aXhpci5ib290bGluLmNvbS9saW51eC92NS4wL3NvdXJjZS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGkKPiA+IG5ncy9tdGQvYXRtZWwtbmFuZC50eHQjTDMyICAKPiAKPiBObywgdGhhdCB3
YXMgbm90IHdoYXQgSSB3YW50ZWQgdG8ga25vdy4gVGhlIGJpbmRpbmdzIHNheXMgZm9yIHRoYXQg
cmVnIAo+IHByb3BlcnR5OiDigJwzcmQgZW50cnk6IHRoZSBtZW1vcnkgcmVnaW9uIHNpemUgKGFs
d2F5cyAweDgwMDAwMCnigJ0KPiAKPiBUaGlzIGlzIHRydWUgZm9yIHNvbWUgZHRzIGZpbGVzIGlu
Y2x1ZGluZyB0aGlzIG5hbmQgbm9kZSwgYnV0IG5vdCBmb3IgYWxsLCAKPiBzb21lIGhhdmUgdGhp
czoKPiAKPiAJbmFuZEAzIHsKPiAJCXJlZyA9IDwweDMgMHgwIDB4ODAwMDAwPjsKPiAKPiBPdGhl
cnMgaGF2ZSB0aGlzOgo+IAo+IAluYW5kQDMgewo+IAkJcmVnID0gPDB4MyAweDAgMHgyPjsKPiAK
PiBUaGUgc2Vjb25kIGNvbnRyYWRpY3RzIHRoZSBiaW5kaW5nIGRvYy4gTW9zdCBvZiB0aGlzIHdh
cyBjaGFuZ2VkIHdoZW4gCj4gc3dpdGNoaW5nIGZyb20gdGhlIG9sZCBiaW5kaW5ncyBpbiBjaGFu
Z2VzZXQgdjQuMTItcmMxLTctZzEwMDRhMjk3N2JkYyBieSAKPiBCb3JpcyBCcmV6aWxsb24uIEkg
d2FudGVkIHRvIGtub3cgd2h5IHRoZSBkaWZmZXJlbmNlPyAKCkluZGVlZC4gQWRkaW5nIEFsZXhh
bmRyZSB3aG8gbWlnaHQgYWxzbyBoYXZlIGFuIGlkZWEgYW5kIFR1ZG9yIGZvcgpyZWZlcmVuY2Uu
CgoKVGhhbmtzLApNaXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
