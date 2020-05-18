Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9DA81D7CC2
	for <lists+linux-mtd@lfdr.de>; Mon, 18 May 2020 17:23:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pJ72gy6DcqrD0VgDeSN6b9j7GBWpucScYgDLzRmudvM=; b=lgh7FV0Om50tXR
	Aahhsx4lnUzRk1LwAcZSfXRfJx4/4/egOrAdFAyTRFSTmHLwXpm9sXLq4WFE5oLKhs4FH9fnp9lgH
	agZ31H4x9DnLkpNJjQF4YazC+ldzB2LvfK+GjeQWtxJPW6XWVMXm6JWhh11/ovrHWPSYgEVGKTqbX
	CDE3L77yvZRzXkQqpUglZ89HNxFPARe2TixRjYYCSNKeqOdqIUz4Os3keUeYaJkuMrVKzTOppBmFb
	e7b5YSKDxSwvfJ2QDMnawxo9t9wGZPQRmyxrkVtP0ePXwhZ11NcB814ynCrpjDqfOktrAntB0O6q/
	AzfvH6xxBhWuCgvI7aLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jahbj-00022I-Ht; Mon, 18 May 2020 15:23:11 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jahbc-00021C-24
 for linux-mtd@lists.infradead.org; Mon, 18 May 2020 15:23:06 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 2AAEDFF809;
 Mon, 18 May 2020 15:22:55 +0000 (UTC)
Date: Mon, 18 May 2020 17:22:53 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Bean Huo <huobean@gmail.com>
Subject: Re: [PATCH v4 0/5] Micron SLC NAND filling block
Message-ID: <20200518172253.1c3b9d32@xps13>
In-Reply-To: <20200518135943.11749-1-huobean@gmail.com>
References: <20200518135943.11749-1-huobean@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_082304_370283_05FA2268 
X-CRM114-Status: GOOD (  15.80  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.199 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: vigneshr@ti.com, richard@nod.at, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, derosier@gmail.com,
 boris.brezillon@collabora.com, linux-mtd@lists.infradead.org,
 Bean Huo <beanhuo@micron.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgQmVhbiwKCkJlYW4gSHVvIDxodW9iZWFuQGdtYWlsLmNvbT4gd3JvdGUgb24gTW9uLCAxOCBN
YXkgMjAyMCAxNTo1OTozOCArMDIwMDoKCj4gRnJvbTogQmVhbiBIdW8gPGJlYW5odW9AbWljcm9u
LmNvbT4KPiAKPiBIaSwKPiAKPiBvbiBzb21lIGxlZ2FjeSBwbGFuYXIgMkQgTWljcm9uIE5BTkQg
ZGV2aWNlcyB3aGVuIGEgYmxvY2sgZXJhc2UgY29tbWFuZCBpcwo+IGlzc3VlZCwgb2NjYXNpb25h
bGx5IGV2ZW4gdGhvdWdoIGEgYmxvY2sgZXJhc2Ugb3BlcmF0aW9uIGNvbXBsZXRlcyBhbmQgcmV0
dXJucwo+IGEgcGFzcyBzdGF0dXMsIHRoZSBmbGFzaCBibG9jayBtYXkgbm90IGJlIGNvbXBsZXRl
bHkgZXJhc2VkLiBTdWJzZXF1ZW50Cj4gb3BlcmF0aW9ucyB0byB0aGlzIGJsb2NrIG9uIHZlcnkg
cmFyZSBjYXNlcyBjYW4gcmVzdWx0IGluIHN1YnRsZSBmYWlsdXJlcyBvcgo+IGNvcnJ1cHRpb24u
IFRoZXNlIGV4dHJlbWVseSByYXJlIGNhc2VzIHNob3VsZCBuZXZlcnRoZWxlc3MgYmUgY29uc2lk
ZXJlZC4gVGhpcwo+IHBhdGNoc2V0IGlzIHRvIGFkZHJlc3MgdGhpcyBwb3RlbnRpYWwgaXNzdWUu
Cj4gCj4gQWZ0ZXIgc3VibWlzc2lvbiBvZiBwYXRjaCBWMSBbMV0gYW5kIFYyIFsyXSwgd2Ugc3Rv
cHBlZCBpdHMgdXBkYXRlIHNpbmNlIHdlIGdldAo+IHN0dWNrIGluIHRoZSBzb2x1dGlvbiBvbiBo
b3cgdG8gYXZvaWQgdGhlIHBvd2VyLWxvc3MgaXNzdWUgaW4gY2FzZSBwb3dlci1jdXQKPiBoaXRz
IHRoZSBibG9jayBmaWxsaW5nLiBJbiB0aGUgdjEgYW5kIHYyLCB0byBhdm9pZCB0aGlzIGlzc3Vl
LCB3ZSBhbHdheXMgZGFtYWdlZAo+IHBhZ2UwLCBwYWdlMSwgdGhpcydzIGJhc2VkIG9uIHRoZSBo
eXBvdGhlc2lzIHRoYXQgTkFORCBGUyBpcyBVQklGUy4gVGhpcwo+IEZTLXNwZWNpZmljYWwgY29k
ZSBpcyB1bmFjY2VwdGFibGUgaW4gdGhlIE1URCBsYXllci4gQWxzbywgaXQgY2Fubm90IGNvdmVy
IGFsbAo+IE5BTkQgYmFzZWQgZmlsZSBzeXN0ZW0uIEJhc2VkIG9uIHRoZSBjdXJyZW50IGRpc2N1
c3Npb24sIHNlZW1zIHRoYXQgcmUtd3JpdGUgYWxsCj4gZmlyc3QgMTUgcGFnZSBmcm9tIHBhZ2Uw
IGlzIGEgc2F0aXNmYWN0b3J5IHNvbHV0aW9uLgoKV2UgaGF2ZSBhIGxheWVyaW5nIHByb2JsZW0g
bm93LiBNYXliZSB3ZSBzaG91bGQganVzdCBoYXZlIGFuIE1URAppbnRlcm5hbCB2YXJpYWJsZSBs
aWtlIG1pbl93cml0dGVuX3BhZ2VzX2JlZm9yZV9lcmFzZSB0aGF0IHRoZSBNaWNyb24KZHJpdmVy
IGNvdWxkIHNldCB0byBhICEwIHZhbHVlLgoKVGhlbiwgdGhlIGhhbmRsaW5nIGNvdWxkIGJlIGRv
bmUgYnkgdGhlIHVzZXIgKFVCSS9VQklGUywgSkZGUzIsIE1URAp1c2VyIGlmIGV4cG9ydGVkKS4K
Cj4gCj4gTWVhbndoaWxlLCBJIGJvcnJvd2VkIG9uZSBpZGVhIGZyb20gTWlxdWVsIFJheW5hbCBw
YXRjaHNldCBbM10sIGluIHdoaWNoIGtlZXBzCj4gYSByZWNvZGUgb2YgcHJvZ3JhbW1lZCBwYWdl
cywgYmFzZSBvbiBpdCwgZm9yIG1vc3Qgb2YgdGhlIGNhc2VzLCB3ZSBkb24ndCBuZWVkCj4gdG8g
cmVhZCBldmVyeSBwYWdlIHRvIHNlZSBpZiBjdXJyZW50IGVyYXNpbmcgYmxvY2sgaXMgYSBwYXJ0
aWFsbHkgcHJvZ3JhbW1lZAo+IGJsb2NrLgo+IAo+IENoYW5nZWxvZzoKPiAKPiB2MyAtIHY0Ogo+
ICAgICAxLiBJbiB0aGUgcGF0Y2ggNC81LCBjaGFuZ2UgdG8gZGlyZWN0bHkgdXNlIGVjYy5zdHJl
bmd0aCB0byBqdWRnZSB0aGUgcGFnZQo+ICAgICAgICBpcyBhIGVtcHR5IHBhZ2Ugb3Igbm90LCBy
YXRoZXIgdGhhbiBtYXhfYml0ZmxpcHMgPCBtdGQtPmJpdGZsaXBfdGhyZXNob2xkCj4gICAgIDIu
IEluIHRoZSBwYXRjaCA1LzUsIGZvciB0aGUgcG93ZXJsb3NzIGNhc2UsIGZyb20gdGhlIG5leHQg
dGltZSBib290IHVwLAo+ICAgICAgICBsb3RzIG9mIHBhZ2Ugd2lsbCBiZSBwcm9ncmFtbWVkIGZy
b20gPnBhZ2UxNSBhZGRyZXNzLCBpZiBzdGlsbCB1c2luZwo+ICAgICAgICBmaXJzdF9wIGFzIEdF
Tk1BU0soKSBiaXRtYXNrIHN0YXJ0aW5nIHBvc2l0aW9uLCB3cml0dGVucCB3aWxsIGJlIGFsd2F5
cyAwLAo+ICAgICAgICBmaXggaXQgYnkgY2hhbmdpbmcgaXRzIGJpdG1hc2sgc3RhcnRpbmcgYXQg
Yml0IHBvc2l0aW9uIDAuCj4gCj4gdjIgLSB2MzoKPiAgICAgMS4gUmViYXNlIHBhdGNoIHRvIHRo
ZSBsYXRlc3QgTVREIGdpdCB0cmVlCj4gICAgIDIuIEFkZCBhIHJlY29yZCB0aGF0IGtlZXBzIHRy
YWNraW5nIHRoZSBwcm9ncmFtbWVkIHBhZ2VzIGluIHRoZSBmaXJzdCAxNgo+ICAgICAgICBwYWdl
cwo+ICAgICAzLiBDaGFuZ2UgZnJvbSBwcm9ncmFtIG9kZCBwYWdlcywgZGFtYWdlIHBhZ2UgMCBh
bmQgcGFnZSAxLCB0byBwcm9ncmFtIGFsbAo+ICAgICAgICBmaXJzdCAxNSBwYWdlcwo+ICAgICA0
LiBBZGRyZXNzIGlzc3VlcyB3aGljaCBleGlzdCBpbiB0aGUgVjIuCj4gCj4gdjEgLSB2MjoKPiAg
ICAgMS4gUmViYXNlZCBWMSB0byBsYXRlc3QgTGludXgga2VybmVsLgo+ICAgICAyLiBBZGQgZXJh
c2UgcHJlcGFyYXRpb24gZnVuY3Rpb24gcG9pbnRlciBpbiBuYW5kX21hbnVmYWN0dXJlcl9vcHMu
Cj4gCj4gCj4gWzFdIGh0dHBzOi8vd3d3LnNwaW5pY3MubmV0L2xpc3RzL2xpbnV4LW10ZC9tc2cw
NDExMi5odG1sCj4gWzJdIGh0dHBzOi8vd3d3LnNwaW5pY3MubmV0L2xpc3RzL2xpbnV4LW10ZC9t
c2cwNDQ1MC5odG1sCj4gWzNdIGh0dHBzOi8vd3d3LnNwaW5pY3MubmV0L2xpc3RzL2xpbnV4LW10
ZC9tc2cxMzA4My5odG1sCj4gCj4gCj4gQmVhbiBIdW8gKDUpOgo+ICAgbXRkOiByYXduYW5kOiBn
cm91cCBhbGwgTkFORCBzcGVjaWZpYyBvcHMgaW50byBuZXcgbmFuZF9jaGlwX29wcwo+ICAgbXRk
OiByYXduYW5kOiBBZGQge3ByZSxwb3N0fV9lcmFzZSBob29rcyBpbiBuYW5kX2NoaXBfb3BzCj4g
ICBtdGQ6IHJhd25hbmQ6IEFkZCB3cml0ZV9vb2IgaG9vayBpbiBuYW5kX2NoaXBfb3BzCj4gICBt
dGQ6IHJhd25hbmQ6IEludHJvZHVjZSBhIG5ldyBmdW5jdGlvbiBuYW5kX2NoZWNrX2lzX2VyYXNl
ZF9wYWdlKCkKPiAgIG10ZDogcmF3bmFuZDogbWljcm9uOiBNaWNyb24gU0xDIE5BTkQgZmlsbGlu
ZyBibG9jawoKV2hlbiB5b3UgdGFrZSBteSBwYXRjaGVzIGluIHlvdXIgc2VyaWVzLCBlc3BlY2lh
bGx5IHdoZW4gbm90IHRvdWNoaW5nCnRoZW0gYXQgYWxsLCB5b3Ugc2hvdWxkIGtlZXAgbXkgQXV0
aG9yc2hpcCBhbmQgU29CIGZpcnN0LCB0aGVuIGFkZCB5b3VyClNvQi4KCgpUaGFua3MsCk1pcXXD
qGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
