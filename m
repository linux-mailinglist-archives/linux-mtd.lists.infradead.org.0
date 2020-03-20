Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA9AB18D571
	for <lists+linux-mtd@lfdr.de>; Fri, 20 Mar 2020 18:12:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/p83sw2B/kIQqSVVFbTvviC6/HnOoGmEsh2I+9hJivI=; b=EophNyfnami0ZI
	NCs3whqa8uRcrl0LoqqYBXS1hZz913iKCZZ/6oIX0ON7W9cPvVOPgEvFwcO/kXkkPdN6V0HyYk4u+
	rRdbLw9OPfNLEeN0dXLfrKMPIsvgrbrnIdx+LgSd9YhVuH3qvqFiL61Jn92rFnJ7iBIr7OlaPawd7
	G/DQ/YlQydOUyBDLST5cnytN7aO2c2KjAMcobjJkwcnIwrBbB1sUBdFuhT0fpketWW1K5222A8435
	tmEOmuOsmC8OMZPbY56BQuzZlsOhqXK2OXjWlOZ91EG0Pe6HgXLcHbKhxePuU32SuhGdDd8fLRUsw
	NW4+abGj1ibo923TrIPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFLBy-0004fG-99; Fri, 20 Mar 2020 17:12:18 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFLBp-0004eX-6G
 for linux-mtd@lists.infradead.org; Fri, 20 Mar 2020 17:12:11 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 6BFE2FF802;
 Fri, 20 Mar 2020 17:12:00 +0000 (UTC)
Date: Fri, 20 Mar 2020 18:11:59 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH] mtd: rawnand: denali: add more delays before latching
 incoming data
Message-ID: <20200320181159.5004099f@xps13>
In-Reply-To: <20200316104307.1891-1-yamada.masahiro@socionext.com>
References: <20200316104307.1891-1-yamada.masahiro@socionext.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_101209_367772_98C36C1A 
X-CRM114-Status: GOOD (  15.73  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Marek Vasut <marex@denx.de>, Richard Weinberger <richard@nod.at>,
 linux-mtd@lists.infradead.org, Vignesh Raghavendra <vigneshr@ti.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgTWFyZWssCgpNYXNhaGlybyBZYW1hZGEgPHlhbWFkYS5tYXNhaGlyb0Bzb2Npb25leHQuY29t
PiB3cm90ZSBvbiBNb24sIDE2IE1hcgoyMDIwIDE5OjQzOjA3ICswOTAwOgoKPiBUaGUgRGVuYWxp
IElQIGhhdmUgc2V2ZXJhbCByZWdpc3RlcnMgdG8gc3BlY2lmeSBob3cgbWFueSBjbG9jayBjeWNs
ZXMKPiBzaG91bGQgYmUgd2FpdGVkIGJldHdlZW4gZmFsbGluZy9yaXNpbmcgc2lnbmFscy4gWW91
IGNhbiBpbXByb3ZlIHRoZQo+IE5BTkQgYWNjZXNzIHBlcmZvcm1hbmNlIGJ5IHByb2dyYW1taW5n
IHRoZXNlIHJlZ2lzdGVycyB3aXRoIG9wdGltaXplZAo+IHZhbHVlcy4KPiAKPiBCZWNhdXNlIHN0
cnVjdCBuYW5kX3Nkcl90aW1pbmdzIHJlcHJlc2VudHMgdGhlIGRldmljZSByZXF1aXJlbWVudAo+
IGluIHBpY28gc2Vjb25kcywgZGVuYWxpX3NldHVwX2RhdGFfaW50ZXJmYWNlKCkgY29tcHV0ZXMg
dGhlIHJlZ2lzdGVyCj4gdmFsdWVzIGJ5IGRpdmlkaW5nIHRoZSBkZXZpY2UgdGltaW5ncyB3aXRo
IHRoZSBjbG9jayBwZXJpb2QuCj4gCj4gTWFyZWsgVmFzdXQgcmVwb3J0ZWQgdGhpcyBkcml2ZXIg
aW4gdGhlIGxhdGVzdCBrZXJuZWwgZG9lcyBub3Qgd29yawo+IG9uIGhpcyBTT0NGUEdBIGJvYXJk
LiAoVGhlIG9uLWJvYXJkIE5BTkQgY2hpcCBpcyBtb2RlIDUpCj4gCj4gVGhlIHN1c3BpY2lvdXMg
cGFyYW1ldGVyIGlzIGFjY19jbGtzLCBzbyB0aGlzIGNvbW1pdCByZWxheGVzIGl0Lgo+IAo+IFRo
ZSBEZW5hbGkgTkFORCBGbGFzaCBNZW1vcnkgQ29udHJvbGxlciBVc2VyJ3MgR3VpZGUgZGVzY3Jp
YmVzIHRoaXMKPiByZWdpc3RlciBhcyBmb2xsb3dzOgo+IAo+ICAgYWNjX2Nsa3MKPiAgICAgc2ln
bmlmaWVzIHRoZSBudW1iZXIgb2YgYnVzIGludGVyZmFjZSBjbGtfeCBjbG9jayBjeWNsZXMsCj4g
ICAgIGNvbnRyb2xsZXIgc2hvdWxkIHdhaXQgZnJvbSByZWFkIGVuYWJsZSBnb2luZyBsb3cgdG8g
c2VuZGluZwo+ICAgICBvdXQgYSBzdHJvYmUgb2YgY2xrX3ggZm9yIGNhcHR1cmluZyBvZiBpbmNv
bWluZyBkYXRhLgo+IAo+IEN1cnJlbnRseSwgYWNjX2Nsa3MgaXMgY2FsY3VsYXRlZCBvbmx5IGJh
c2VkIG9uIHRSRUEsIHRoZSBkZWxheSBvbiB0aGUKPiBjaGlwIHNpZGUuIFRoaXMgZG9lcyBub3Qg
aW5jbHVkZSBhZGRpdGlvbmFsIGRlbGF5cyB0aGF0IGNvbWUgZnJvbSB0aGUKPiBkYXRhIHBhdGgg
b24gdGhlIFBDQiBhbmQgaW4gdGhlIFNvQywgbG9hZCBjYXBhY2l0eSBvZiB0aGUgcGlucywgZXRj
Lgo+IAo+IFRoaXMgcmVsYXRpdmVseSBiZWNvbWVzIGEgYmlnIGZhY3RvciBvbiBmYXN0ZXIgdGlt
aW5nIG1vZGVzIGxpa2UgbW9kZSA1Lgo+IAo+IEJlZm9yZSBzdXBwb3J0aW5nIHRoZSAtPnNldHVw
X2RhdGFfaW50ZXJmYWNlKCkgaG9vayAoZS5nLiBMaW51eCA0LjEyKSwKPiB0aGUgRGVuYWxpIGRy
aXZlciBoYWNrcyBhY2NfY2xrcyBpbiBhIGNvdXBsZSBvZiB3YXlzIFsxXSBbMl0gdG8gc3VwcG9y
dAo+IHRoZSB0aW1pbmcgbW9kZSA1Lgo+IAo+IFdlIHdvdWxkIG5vdCBnbyBiYWNrIHRvIHRoZSBo
YXJkLWNvZGVkIGFjY19jbGtzLCBidXQgd2UgbmVlZCB0byBpbmNsdWRlCj4gdGhpcyBmYWN0b3Ig
aW50byB0aGUgZGVsYXkgc29tZWhvdy4gTGV0J3Mgc2F5IHRoZSBhbW91bnQgb2YgdGhlIGFkZGl0
aW9uYWwKPiBkZWxheSBpcyAxMDAwMCBwaWNvIHNlYy4KPiAKPiBJbiB0aGUgbmV3IGNhbGN1bGF0
aW9uLCBhY2NfY2xrcyBpcyBkZXRlcm1pbmVkIGJ5IHRpbWluZ3MtPnRSRUFfbWF4ICsKPiBkYXRh
X3NldHVwX29uX2hvc3QuCj4gCj4gQWxzbywgcHJvbG9uZyB0aGUgUkUjIGxvdyBwZXJpb2QgdG8g
bWFrZSBzdXJlIHRoZSBkYXRhIGhvbGQgaXMgbWV0Lgo+IAo+IEZpbmFsbHksIHJlLWNlbnRlciB0
aGUgZGF0YSBsYXRjaCB0aW1pbmcgZm9yIGV4dHJhIHNhZmV0eS4KPiAKPiBbMV0gaHR0cHM6Ly9n
aXRodWIuY29tL3RvcnZhbGRzL2xpbnV4L2Jsb2IvdjQuMTIvZHJpdmVycy9tdGQvbmFuZC9kZW5h
bGkuYyNMMjc2Cj4gWzJdIGh0dHBzOi8vZ2l0aHViLmNvbS90b3J2YWxkcy9saW51eC9ibG9iL3Y0
LjEyL2RyaXZlcnMvbXRkL25hbmQvZGVuYWxpLmMjTDI4Mgo+IAo+IFJlcG9ydGVkLWJ5OiBNYXJl
ayBWYXN1dCA8bWFyZXhAZGVueC5kZT4KPiBTaWduZWQtb2ZmLWJ5OiBNYXNhaGlybyBZYW1hZGEg
PHlhbWFkYS5tYXNhaGlyb0Bzb2Npb25leHQuY29tPgo+IC0tLQoKQ2FuIHlvdSBwbGVhc2UgZ2l2
ZSB0aGlzIHBhdGNoIGEgdHJ5IGFuZCByZXBvcnQgdGhlIHJlc3VsdD8KClRoYW5rcywKTWlxdcOo
bAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
