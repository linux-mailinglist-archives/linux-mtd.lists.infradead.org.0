Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B92731E03A2
	for <lists+linux-mtd@lfdr.de>; Mon, 25 May 2020 00:14:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yCayxKcBVxbpTYXCM2fktiv+WkXc8tM3PdVhe5o8MXM=; b=VeL23KKiEaQlCz
	NFqdaMotPnK6jOaH3ZxsP7y+hEQYIGuhl/rOF1ntI1f5Cpag1WQsQfNk5LvfyZQOrDfWLvE0QYqMT
	9bF/h/FakXaJ8yKtCFaGn/X4Ub/zRKDwhFR7KkpOrSSzWNSDMOvsvtKB6miR2muF/hi+tw678ystH
	xvto3CZ5eDjAj1J3KQ81anHEtBkfUt10DJrQKngl8ZszucfjHMRA3KBWh4k9fCAZrMLS1qX3CR8ch
	eA6NHexJqm+3T67LJbCItavbOYX6b9HgaztHdFAMGQTw+CkZJgGNNyKcEjI/k6aJodxA2nF6j/tZo
	Q3ZwgNJjce5FX6wcvO1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcytE-0001xh-6k; Sun, 24 May 2020 22:14:40 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcyt3-0001xG-Qu
 for linux-mtd@lists.infradead.org; Sun, 24 May 2020 22:14:31 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 7BA11C0003;
 Sun, 24 May 2020 22:14:26 +0000 (UTC)
Date: Mon, 25 May 2020 00:14:24 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard.weinberger@gmail.com>
Subject: Re: [PATCH 06/17] mtd: rawnand: nandsim: Remove debugfs entries at
 unload time
Message-ID: <20200525001424.2245280d@xps13>
In-Reply-To: <CAFLxGvws0647PByEoBJwO6HCTjta4XiYrP6_pOfek5LLhbYe+w@mail.gmail.com>
References: <20200509191431.15862-1-miquel.raynal@bootlin.com>
 <20200509191431.15862-7-miquel.raynal@bootlin.com>
 <CAFLxGvws0647PByEoBJwO6HCTjta4XiYrP6_pOfek5LLhbYe+w@mail.gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_151430_005195_E5B10123 
X-CRM114-Status: GOOD (  17.66  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>, dedekind@infradead.org,
 Richard Weinberger <richard@nod.at>,
 Boris Brezillon <boris.brezillon@collabora.com>, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgUmljaGFyZCwKClJpY2hhcmQgV2VpbmJlcmdlciA8cmljaGFyZC53ZWluYmVyZ2VyQGdtYWls
LmNvbT4gd3JvdGUgb24gU3VuLCAyNCBNYXkKMjAyMCAyMzozMzowNiArMDIwMDoKCj4gT24gU2F0
LCBNYXkgOSwgMjAyMCBhdCA5OjE2IFBNIE1pcXVlbCBSYXluYWwgPG1pcXVlbC5yYXluYWxAYm9v
dGxpbi5jb20+IHdyb3RlOgo+ID4KPiA+IENyZWF0ZSBhIG5zX2RlYnVnZnNfcmVtb3ZlKCkgaGVs
cGVyIGZvciB0aGF0IGFuZCBjYWxsIGl0IGluCj4gPiBuc19jbGVhbnVwX21vZHVsZSgpLgo+ID4K
PiA+IFNpZ25lZC1vZmYtYnk6IE1pcXVlbCBSYXluYWwgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5j
b20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL210ZC9uYW5kL3Jhdy9uYW5kc2ltLmMgfCA2ICsrKysr
Kwo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9tdGQvbmFuZC9yYXcvbmFuZHNpbS5jIGIvZHJpdmVycy9tdGQvbmFuZC9yYXcv
bmFuZHNpbS5jCj4gPiBpbmRleCBjOGU5YzcwYTY2NDEuLjc4NjJjNjVlMzJhZCAxMDA2NDQKPiA+
IC0tLSBhL2RyaXZlcnMvbXRkL25hbmQvcmF3L25hbmRzaW0uYwo+ID4gKysrIGIvZHJpdmVycy9t
dGQvbmFuZC9yYXcvbmFuZHNpbS5jCj4gPiBAQCAtNTIwLDYgKzUyMCwxMSBAQCBzdGF0aWMgaW50
IG5zX2RlYnVnZnNfY3JlYXRlKHN0cnVjdCBuYW5kc2ltICpucykKPiA+ICAgICAgICAgcmV0dXJu
IDA7Cj4gPiAgfQo+ID4KPiA+ICtzdGF0aWMgdm9pZCBuc19kZWJ1Z2ZzX3JlbW92ZShzdHJ1Y3Qg
bmFuZHNpbSAqbnMpCj4gPiArewo+ID4gKyAgICAgICBkZWJ1Z2ZzX3JlbW92ZShucy0+ZGVudCk7
ICAKPiAKPiBCVFc6IEZvciBub3cgaXQgaXMgcGVyZmVjdGx5IGZpbmUsIGJ1dCBsYXRlciB0aGlz
IGNhbiBiZSBhCj4gZGVidWdmc19yZW1vdmVfcmVjdXJzaXZlKCkuCgpPaywgSSdsbCB1c2UgaXQg
aW4gdGhlIHYyIQoKPiAKPiA+ICt9Cj4gPiArCj4gPiAgLyoKPiA+ICAgKiBBbGxvY2F0ZSBhcnJh
eSBvZiBwYWdlIHBvaW50ZXJzLCBjcmVhdGUgc2xhYiBhbGxvY2F0aW9uIGZvciBhbiBhcnJheQo+
ID4gICAqIGFuZCBpbml0aWFsaXplIHRoZSBhcnJheSBieSBOVUxMIHBvaW50ZXJzLgo+ID4gQEAg
LTIzOTgsNiArMjQwMyw3IEBAIHN0YXRpYyB2b2lkIF9fZXhpdCBuc19jbGVhbnVwX21vZHVsZSh2
b2lkKQo+ID4gICAgICAgICBzdHJ1Y3QgbmFuZHNpbSAqbnMgPSBuYW5kX2dldF9jb250cm9sbGVy
X2RhdGEoY2hpcCk7Cj4gPiAgICAgICAgIGludCBpOwo+ID4KPiA+ICsgICAgICAgbnNfZGVidWdm
c19yZW1vdmUobnMpOwo+ID4gICAgICAgICBuc19mcmVlKG5zKTsgICAgLyogRnJlZSBuYW5kc2lt
IHByaXZhdGUgcmVzb3VyY2VzICovCj4gPiAgICAgICAgIG5hbmRfcmVsZWFzZShjaGlwKTsgLyog
VW5yZWdpc3RlciBkcml2ZXIgKi8KPiA+ICAgICAgICAgZm9yIChpID0gMDtpIDwgQVJSQVlfU0la
RShucy0+cGFydGl0aW9ucyk7ICsraSkKPiA+IC0tCj4gPiAyLjIwLjEKPiA+Cj4gPgo+ID4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBM
aW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKPiA+IGh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLyAgCj4gCj4gCj4gCgoKCgpUaGFua3Ms
Ck1pcXXDqGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
