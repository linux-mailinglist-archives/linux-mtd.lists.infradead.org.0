Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD84135FFA
	for <lists+linux-mtd@lfdr.de>; Thu,  9 Jan 2020 19:08:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8BnmZGmmHzQkFNsuEMYXl5PNJKViuSk9thwV1ab5Q38=; b=J1cJufe6ChKH0j
	RDCS6l14EwS6nhRmo3geVG4cIYpQu9BryobXlJprf/0wWq0CcWNdtqoqLAL46ZoNdvfivtf5NGgqT
	iiTFyKWF8moj0sgLWWt13so+f2F4Zx/GTsNGBMl8pvPW7rlv4ZERn7WgaalFjJvegkUOy8IwCsHth
	BBB9cObZ6ILSJOVDLv6BpU6dyOWmpbgc+EIwQP6q8PayuP1fhCzUotVnkJYRjvHc7ZvE4CbY5paqc
	KwhVhPv1ElMrq+oN94NOljA0Zk829BOLkOrUWn6c3qR4BMD6Hnq/3beP2JvoI2cxWYBO13RKYdYws
	V/FreDcpJxmO7LZtau8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipcEj-0002W7-1L; Thu, 09 Jan 2020 18:08:49 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipcEb-0002Vm-ED
 for linux-mtd@lists.infradead.org; Thu, 09 Jan 2020 18:08:42 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 1D997C000B;
 Thu,  9 Jan 2020 18:08:39 +0000 (UTC)
Date: Thu, 9 Jan 2020 19:08:38 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Chuanhong Guo <gch981213@gmail.com>
Subject: Re: [PATCH] mtd: nand: spi: rework detect procedure for different
 read id op
Message-ID: <20200109190838.7028c8d9@xps13>
In-Reply-To: <20200109075551.357179-1-gch981213@gmail.com>
References: <20200109075551.357179-1-gch981213@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_100841_616481_0AD42585 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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
Cc: Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Vignesh Raghavendra <vigneshr@ti.com>, linux-kernel@vger.kernel.org,
 Boris Brezillon <bbrezillon@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgQ2h1YW5ob25nLAoKQ2h1YW5ob25nIEd1byA8Z2NoOTgxMjEzQGdtYWlsLmNvbT4gd3JvdGUg
b24gVGh1LCAgOSBKYW4gMjAyMCAxNTo1NDowMAorMDgwMDoKCj4gQ3VycmVudGx5IHRoZXJlIGFy
ZSAzIGRpZmZlcmVudCB2YXJpYW50cyBvZiByZWFkX2lkIGltcGxlbWVudGF0aW9uOgo+IDEuIG9w
Y29kZSBvbmx5LiBGb3VuZCBpbiBHRDVGeEdRNHhGLgo+IDIuIG9wY29kZSArIDEgYWRkciBieXRl
LiBGb3VuZCBpbiBHRDVHeEdRNHhBL0UKPiAzLiBvcGNvZGUgKyAxIGR1bW15IGJ5dGUuIEZvdW5k
IGluIG90aGVyIGN1cnJlbnRseSBzdXBwb3J0ZWQgY2hpcHMuCj4gCj4gT3JpZ2luYWwgaW1wbGVt
ZW50YXRpb24gd2FzIGZvciB2YXJpYW50IDEgYW5kIGxldCBkZXRlY3QgZnVuY3Rpb24KPiBvZiBj
aGlwcyB3aXRoIHZhcmlhbnQgMiBhbmQgMyB0byBpZ25vcmUgdGhlIGZpcnN0IGJ5dGUuIFRoaXMg
aXNuJ3QKPiByb2J1c3Q6Cj4gCj4gMS4gRm9yIGNoaXBzIG9mIHZhcmlhbnQgMiwgaWYgU1BJIG1h
c3RlciBkb2Vzbid0IGtlZXAgTU9TSSBsb3cKPiBkdXJpbmcgcmVhZCwgY2hpcCB3aWxsIGdldCBh
IHJhbmRvbSBpZCBvZmZzZXQsIGFuZCB0aGUgZW50aXJlIGlkCj4gYnVmZmVyIHdpbGwgc2hpZnQg
YnkgdGhhdCBvZmZzZXQsIGNhdXNpbmcgZGV0ZWN0IGZhaWx1cmUuCj4gCj4gMi4gRm9yIGNoaXBz
IG9mIHZhcmlhbnQgMSwgaWYgaXQgaGFwcGVucyB0byBnZXQgYSBkZXZpZCB0aGF0IGVxdWFscwo+
IHRvIG1hbnVmYWN0dXJlIGlkIG9mIHZhcmlhbnQgMiBvciAzIGNoaXBzLCBpdCdsbCBnZXQgaW5j
b3JyZWN0bHkKPiBkZXRlY3RlZC4KPiAKPiBUaGlzIHBhdGNoIHJld29ya3MgZGV0ZWN0IHByb2Nl
ZHVyZSB0byBhZGRyZXNzIHByb2JsZW1zIGFib3ZlLiBOZXcKPiBsb2dpYyBkbyBkZXRlY3Rpb24g
Zm9yIGFsbCB2YXJpYW50cyBzZXBhcmF0ZWRseSwgaW4gMS0yLTMgb3JkZXIuCj4gU2luY2UgYWxs
IGN1cnJlbnQgZGV0ZWN0IG1ldGhvZHMgZG8gZXhhY3RseSB0aGUgc2FtZSBpZCBtYXRjaGluZwo+
IHByb2NlZHVyZSwgdW5pZnkgdGhlbSBpbnRvIGNvcmUuYyBhbmQgcmVtb3ZlIGRldGVjdCBtZXRo
b2QgZnJvbQo+IG1hbnVmYWN0dXJlX29wcy4KPiAKPiBUZXN0ZWQgb24gR0Q1RjFHUTRVQVlJRyBh
bmQgVzI1TjAxR1ZaRUlHLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENodWFuaG9uZyBHdW8gPGdjaDk4
MTIxM0BnbWFpbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvbXRkL25hbmQvc3BpL2NvcmUuYyAgICAg
ICB8IDg5ICsrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0KPiAgZHJpdmVycy9tdGQvbmFu
ZC9zcGkvZ2lnYWRldmljZS5jIHwgNDYgKysrKysrLS0tLS0tLS0tLQo+ICBkcml2ZXJzL210ZC9u
YW5kL3NwaS9tYWNyb25peC5jICAgfCAyNSArKy0tLS0tLS0KPiAgZHJpdmVycy9tdGQvbmFuZC9z
cGkvbWljcm9uLmMgICAgIHwgMjQgKystLS0tLS0tCj4gIGRyaXZlcnMvbXRkL25hbmQvc3BpL3Bh
cmFnb24uYyAgICB8IDIzICsrLS0tLS0tCj4gIGRyaXZlcnMvbXRkL25hbmQvc3BpL3Rvc2hpYmEu
YyAgICB8IDI1ICsrLS0tLS0tLQo+ICBkcml2ZXJzL210ZC9uYW5kL3NwaS93aW5ib25kLmMgICAg
fCAyOSArKy0tLS0tLS0tCj4gIGluY2x1ZGUvbGludXgvbXRkL3NwaW5hbmQuaCAgICAgICB8IDI0
ICsrKystLS0tLQo+ICA4IGZpbGVzIGNoYW5nZWQsIDExMCBpbnNlcnRpb25zKCspLCAxNzUgZGVs
ZXRpb25zKC0pCgpOaWNlIGRpZmZzdGF0LCBhbmQgbmljZSBpbXBsZW1lbnRhdGlvbiBJTUhPLgoK
SSdtIGZpbmUgd2l0aCB0aGUgcGF0Y2ggYnV0IEkgd291bGQgbG92ZSB0byBoZWFyIEJvcmlzJyB2
b2ljZSBvbiB0aGlzLgoKUmV2aWV3ZWQtYnk6IE1pcXVlbCBSYXluYWwgPG1pcXVlbC5yYXluYWxA
Ym9vdGxpbi5jb20+CgpPbmUgbWlub3Igbml0IGJlbG93LgoKCj4gQEAgLTIxNSwxNSArMjA0LDIy
IEBAIHN0cnVjdCBzcGluYW5kX21hbnVmYWN0dXJlcl9vcHMgewo+ICAgKiBzdHJ1Y3Qgc3BpbmFu
ZF9tYW51ZmFjdHVyZXIgLSBTUEkgTkFORCBtYW51ZmFjdHVyZXIgaW5zdGFuY2UKPiAgICogQGlk
OiBtYW51ZmFjdHVyZXIgSUQKPiAgICogQG5hbWU6IG1hbnVmYWN0dXJlciBuYW1lCj4gKyAqIEBk
ZXZpZF9sZW46IG51bWJlciBvZiBieXRlcyBpbiBkZXZpY2UgSUQKPiArICogQHNwaW5hbmRfdGFi
bGU6IGFycmF5IHdpdGggaW5mbyBmb3Igc3BpIG5hbmRzIHVuZGVyIGN1cnJlbnQgbWFudWZhY3R1
cmVyCgpUaGlzIGRlc2NyaXB0aW9uIGlzIG5vdCB2ZXJ5IGNsZWFyIHRvIG1lLgpBbmQgYWxzbyBz
L3NwaSBuYW5kcy9TUEktTkFORHMvCgo+ICsgKiBAbmNoaXBzOiBudW1iZXIgb2YgY2hpcHMgYXZh
aWxhYmxlIGluIHNwaW5hbmRfdGFibGUKPiAgICogQG9wczogbWFudWZhY3R1cmVyIG9wZXJhdGlv
bnMKPiAgICovCj4gIHN0cnVjdCBzcGluYW5kX21hbnVmYWN0dXJlciB7Cj4gIAl1OCBpZDsKPiAg
CWNoYXIgKm5hbWU7Cj4gKwl1OCBkZXZpZF9sZW47Cj4gKwljb25zdCBzdHJ1Y3Qgc3BpbmFuZF9p
bmZvICpzcGluYW5kX3RhYmxlOwo+ICsJc2l6ZV90IG5jaGlwczsKPiAgCWNvbnN0IHN0cnVjdCBz
cGluYW5kX21hbnVmYWN0dXJlcl9vcHMgKm9wczsKPiAgfTsKPiAgCj4gIC8qIFNQSSBOQU5EIG1h
bnVmYWN0dXJlcnMgKi8KPiArZXh0ZXJuIGNvbnN0IHN0cnVjdCBzcGluYW5kX21hbnVmYWN0dXJl
ciBnaWdhZGV2aWNlX3NwaW5hbmRfbWFudWZhY3R1cmVyXzFhX2lkOwo+ICBleHRlcm4gY29uc3Qg
c3RydWN0IHNwaW5hbmRfbWFudWZhY3R1cmVyIGdpZ2FkZXZpY2Vfc3BpbmFuZF9tYW51ZmFjdHVy
ZXI7Cj4gIGV4dGVybiBjb25zdCBzdHJ1Y3Qgc3BpbmFuZF9tYW51ZmFjdHVyZXIgbWFjcm9uaXhf
c3BpbmFuZF9tYW51ZmFjdHVyZXI7Cj4gIGV4dGVybiBjb25zdCBzdHJ1Y3Qgc3BpbmFuZF9tYW51
ZmFjdHVyZXIgbWljcm9uX3NwaW5hbmRfbWFudWZhY3R1cmVyOwoKVGhhbmtzLApNaXF1w6hsCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
