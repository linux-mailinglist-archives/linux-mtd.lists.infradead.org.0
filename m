Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B804D1D0B35
	for <lists+linux-mtd@lfdr.de>; Wed, 13 May 2020 10:49:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rnb2gE4H4Yg0iAXgmWmbbDhISQ8tvSKHJi+d7Vfcptw=; b=uK/1VPhCKpknO6
	zMgmoiFvcLiG4df9qF3zv7XeOhhPDHdWO+xgWVMXvQoc4ZM4quMRJ/jcG7oF4JO2ULgBOZSKez0Ek
	RkEE4SM8pITX8Tq/0EU9l0dNJQSrSWM2yNGgjZYaxC877Z/LeWPT2iIqeZwIXzwSRNCTcGqTfohbf
	oW/KfwzPYt2kuoZpmgbwjo7NRB4Zkgla0azkGout4gQtYldgNHrrcKP75H8UFx+EViKxOhoi6X+8o
	j64vt2goaF+9Z6eUGNhbOPA0nZ3XHyn34mdczgYe8brZVZsQ9fya5x0Dc1zTt+tcTSDbPn2Rj2ZKP
	EGcls7OoFcXe/LGokkkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYn4d-0002Zj-Jj; Wed, 13 May 2020 08:49:07 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYn4T-0002Z9-0S
 for linux-mtd@lists.infradead.org; Wed, 13 May 2020 08:48:58 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id D77B3200018;
 Wed, 13 May 2020 08:48:51 +0000 (UTC)
Date: Wed, 13 May 2020 10:48:50 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rickard Andersson <rickaran@axis.com>
Subject: Re: [PATCH] mtd: rawnand: Non ONFI specialized timing support
Message-ID: <20200513104850.358af92c@xps13>
In-Reply-To: <20200512210933.03280fd0@xps13>
References: <20200422121800.7365-1-rickaran@axis.com>
 <20200512210933.03280fd0@xps13>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_014857_179743_70299584 
X-CRM114-Status: GOOD (  16.38  )
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
Cc: richard@nod.at, s.hauer@pengutronix.de, linux-mtd@lists.infradead.org,
 vigneshr@ti.com, Boris Brezillon <bbrezillon@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgUmlja2FyZCwKCk1pcXVlbCBSYXluYWwgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5jb20+IHdy
b3RlIG9uIFR1ZSwgMTIgTWF5IDIwMjAKMjE6MDk6MzMgKzAyMDA6Cgo+IEhpIFJpY2thcmQsCj4g
Cj4gKyBib3Jpcwo+IAo+IFJpY2thcmQgQW5kZXJzc29uIDxyaWNrYXJhbkBheGlzLmNvbT4gd3Jv
dGUgb24gV2VkLCAyMiBBcHIgMjAyMAo+IDE0OjE4OjAwICswMjAwOgo+IAo+ID4gRnJvbTogUmlj
a2FyZCB4IEFuZGVyc3NvbiA8cmlja2FyYW5AYXhpcy5jb20+Cj4gPiAKPiA+IFRoZSBLaW94aWEv
VG9zaGliYSBUSDU4TlZHMlMzSEJBSTQgTkFORCBtZW1vcnkgaXMgbm90IGEKPiA+IE9ORkkgY29t
cGxpYW50IG1lbW9yeS4gVGhlIHRpbWluZ3Mgb2YgdGhhdCBtZW1vcnkgYXJlIHF1aXRlCj4gPiBj
bG9zZSB0byBPTkZJIG1vZGUgNCBidXQgaXMgYnJlYWtpbmcgdGhhdCBzcGVjLgo+ID4gCj4gPiBU
aGlzIHBhdGNoIGFkZHMgYSBzcGVjaWFsIHRhYmxlIHdpdGggdGltaW5ncyB0aGF0IGNhbiBiZQo+
ID4gdXNlZCBmb3Igbm9uIE9ORkkgbWVtb3JpZXMuCj4gPiAKPiA+IEVyYXNlIGJsb2NrIHJlYWQg
c3BlZWQgaXMgaW5jcmVhc2VkIGZyb20gNjczOSBLaUIvcyB0bwo+ID4gMTMyNjAgS2lCL3MuIEVy
YXNlIGJsb2NrIHdyaXRlIHNwZWVkIGlzIGluY3JlYXNlZCBmcm9tCj4gPiAzMDA0IEtpQi9zIHRv
IDM4NzIgS2lCL3MuCj4gPiAKPiA+IFRlc3RlZCBvbiBJTVg2VUxMIHdoaWNoIGhhcyBhIE5BTkQg
Y29udHJvbGxlciBzdXBwb3J0aW5nCj4gPiBFRE8gbW9kZS4gIAo+IAo+IEkgYW0gY29udmluY2Vk
IGFib3V0IHRoZSBpZGVhIG9mIHR3ZWFraW5nIG5vbi1PTkZJIHRpbWluZ3Mgb24gYQo+IHBlci1j
aGlwIGJhc2lzIHRvIGVuaGFuY2UgdGhlaXIgdGhyb3VnaHB1dCwgYnV0IEkgdGhpbmsgd2Ugc2hv
dWxkIGRvCj4gdGhpcyBhbm90aGVyIHdheS4gCj4gCj4gV2hhdCB3ZSBjb3VsZCBoYXZlIGlzIGEg
d2F5LCBmb3IgTkFORCBtYW51ZmFjdHVyZXIgZHJpdmVycywgdG8gb3ZlcmxvYWQKPiB0aGUgdGlt
aW5ncy4gVGhpcyB3YXksIEtpb3hpYSB0aW1pbmdzIHJlbWFpbiBpbiB0aGUgVG9zaGliYSBkcml2
ZXIuCj4gCj4gSSBxdWlja2x5IHByZXBhcmVkIGEgc21hbGwgc2VyaWVzIFsxXSwgaXQgaXMgdW50
ZXN0ZWQgYnV0IGl0IHdpbGwKPiBob3BlZnVsbHkgaGVscCB5b3UgYWRhcHQgeW91ciBwYXRjaC4g
WW91IGp1c3QgaGF2ZSB0byBzZXQgdGhlCj4gY2hpcC0+aW5pdF9kYXRhX2ludGVyZmFjZSgpIGhv
b2sgZnJvbSB0aGUgVG9zaGliYSBkcml2ZXIgYXQgaW5pdCB0aW1lLgo+IFRoaXMgaG9vayBpcyBz
dXBwb3NlZCB0byB1cGRhdGUgdGhlIHdob2xlIGRhdGEgaW50ZXJmYWNlIHN0cnVjdHVyZSBhbmQK
PiBhbHNvIGNhbGwgY2hpcC0+Y29udHJvbGxlci5vcHMoKSB0byB2ZXJpZnkgaXQgaXMgc3VwcG9y
dGVkIGJ5IHRoZQo+IGNvbnRyb2xsZXIuCj4gCj4gWzFdIGh0dHBzOi8vZ2l0aHViLmNvbS9taXF1
ZWxyYXluYWwvbGludXgvdHJlZS9wZXJzby9uYW5kLW5leHQvdGltaW5ncwoKQm9yaXMgY29tbWVu
dGVkIG9uIEdpdGh1Yiwgc28gSSB1cGRhdGVkIHRoZSBjb2RlIGFuZCBwdXNoZWQgLWYKClRoYW5r
cywKTWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
