Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A73981CD92C
	for <lists+linux-mtd@lfdr.de>; Mon, 11 May 2020 13:59:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FjlYSq6kxbiNNGWey1cuuR+jM80/8IVJwAYWVjKhHa4=; b=K6QwQ8MH6LBqmj
	6NpFl48HlVf82HPhv0as4zrUx3oKhHdXzzrNZy6BFCJMFMLiGQfHA1a9xWdFbINRDDLs0v5QkTvdY
	aMoBJ5w4SkfdqQqf9awdaA/O/2eRA6cDg67YM+4cdqQHG2dfjdjYsTGdUG3UIRCZaNMmVM4k2gC44
	DMFjHBJDIx2aj9d9El6sHbv4K6QFMh1mv2ssI0yM3ikeOYO0Gtfe0Qrl1x6ROUehLlGoKMiPydpUb
	vrwmB7QXzalrLtr4qi2m0n9Shj3+N7c2nmg7IXJ4sQ6JgyVw0BPaHOL2wQP+z6ftsTNeWsShfgOkU
	inZAIXc0Ehum5vB0jEBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY75w-0007rU-0q; Mon, 11 May 2020 11:59:40 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY75o-0007ZM-IC
 for linux-mtd@lists.infradead.org; Mon, 11 May 2020 11:59:34 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 50DF220006;
 Mon, 11 May 2020 11:59:28 +0000 (UTC)
Date: Mon, 11 May 2020 13:59:26 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Christophe Kerello <christophe.kerello@st.com>
Subject: Re: [PATCH v4 10/10] mtd: rawnand: stm32_fmc2: get resources from
 parent node
Message-ID: <20200511135926.3e5c622d@xps13>
In-Reply-To: <3377adc6-3e5e-b9b7-12be-c7aa44bfac82@st.com>
References: <1588756279-17289-1-git-send-email-christophe.kerello@st.com>
 <1588756279-17289-11-git-send-email-christophe.kerello@st.com>
 <20200511111855.48216940@xps13>
 <3377adc6-3e5e-b9b7-12be-c7aa44bfac82@st.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_045932_743501_CB598C6F 
X-CRM114-Status: GOOD (  16.49  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, marex@denx.de,
 vigneshr@ti.com, gregkh@linuxfoundation.org, richard@nod.at,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-mtd@lists.infradead.org, boris.brezillon@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgQ2hyaXN0b3BoZSwKCkNocmlzdG9waGUgS2VyZWxsbyA8Y2hyaXN0b3BoZS5rZXJlbGxvQHN0
LmNvbT4gd3JvdGUgb24gTW9uLCAxMSBNYXkKMjAyMCAxMjoyMTowMyArMDIwMDoKCj4gSGkgTWlx
dWVsLAo+IAo+IE9uIDUvMTEvMjAgMTE6MTggQU0sIE1pcXVlbCBSYXluYWwgd3JvdGU6Cj4gPiBI
aSBDaHJpc3RvcGhlLAo+ID4gCj4gPiBDaHJpc3RvcGhlIEtlcmVsbG8gPGNocmlzdG9waGUua2Vy
ZWxsb0BzdC5jb20+IHdyb3RlIG9uIFdlZCwgNiBNYXkgMjAyMAo+ID4gMTE6MTE6MTkgKzAyMDA6
Cj4gPiAgIAo+ID4+IEZNQzIgRUJJIHN1cHBvcnQgaGFzIGJlZW4gYWRkZWQuIENvbW1vbiByZXNv
dXJjZXMgKHJlZ2lzdGVycyBiYXNlCj4gPj4gYW5kIGNsb2NrKSBhcmUgbm93IHNoYXJlZCBiZXR3
ZWVuIHRoZSAyIGRyaXZlcnMuIEl0IG1lYW5zIHRoYXQgdGhlCj4gPj4gY29tbW9uIHJlc291cmNl
cyBzaG91bGQgbm93IGJlIGZvdW5kIGluIHRoZSBwYXJlbnQgZGV2aWNlIHdoZW4gRUJJCj4gPj4g
bm9kZSBpcyBhdmFpbGFibGUuCj4gPj4KPiA+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RvcGhlIEtl
cmVsbG8gPGNocmlzdG9waGUua2VyZWxsb0BzdC5jb20+Cj4gPj4gLS0tICAKPiA+IAo+ID4gWy4u
Ll0KPiA+ICAgCj4gPj4gKwo+ID4+ICtzdGF0aWMgYm9vbCBzdG0zMl9mbWMyX25mY19jaGVja19m
b3JfcGFyZW50KHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPj4gK3sKPiA+PiArCXUz
MiBpOwo+ID4+ICsJaW50IG5iX3Jlc291cmNlcyA9IDA7Cj4gPj4gKwo+ID4+ICsJLyogQ291bnQg
dGhlIG51bWJlciBvZiByZXNvdXJjZXMgaW4gcmVnIHByb3BlcnR5ICovCj4gPj4gKwlmb3IgKGkg
PSAwOyBpIDwgcGRldi0+bnVtX3Jlc291cmNlczsgaSsrKSB7Cj4gPj4gKwkJc3RydWN0IHJlc291
cmNlICpyZXMgPSAmcGRldi0+cmVzb3VyY2VbaV07Cj4gPj4gKwo+ID4+ICsJCWlmIChyZXNvdXJj
ZV90eXBlKHJlcykgPT0gSU9SRVNPVVJDRV9NRU0pCj4gPj4gKwkJCW5iX3Jlc291cmNlcysrOwo+
ID4+ICsJfQo+ID4+ICsKPiA+PiArCS8qIEVhY2ggQ1MgbmVlZHMgMyByZXNvdXJjZXMgZGVmaW5l
ZCAoZGF0YSwgY21kIGFuZCBhZGRyKSAqLwo+ID4+ICsJaWYgKG5iX3Jlc291cmNlcyAlIDMpCj4g
Pj4gKwkJcmV0dXJuIGZhbHNlOwo+ID4+ICsKPiA+PiArCXJldHVybiB0cnVlOwo+ID4+ICt9ICAK
PiA+IAo+ID4gVGhpcyBmdW5jdGlvbiBsb29rcyBmcmFnaWxlLiBXaHkgbm90IGp1c3QgY2hlY2tp
bmcgdGhlIGNvbXBhdGlibGUKPiA+IHN0cmluZyBvZiB0aGUgcGFyZW50IG5vZGU/Cj4gPiAgIAo+
IAo+IFllcywgaXQgaXMgYW5vdGhlciB3YXkgdG8gY2hlY2sgdGhhdCB3ZSBoYXZlIGFuIEVCSSBw
YXJlbnQgbm9kZS4KPiAKPiBJbiB0aGlzIGltcGxlbWVudGF0aW9uLCBJIHdhcyBjaGVja2luZyB0
aGUgbnVtYmVyIG9mIHJlZyB0dXBsZXMuCj4gSW4gY2FzZSB3ZSBoYXZlIDYsIGl0IG1lYW5zIHRo
YXQgdGhlIHJlZ2lzdGVyIGJhc2UgYWRkcmVzcyBpcyBkZWZpbmVkIGluIHRoZSBwYXJlbnQgbm9k
ZSAoRUJJIG5vZGUpLgo+IEluIGNhc2Ugd2UgaGF2ZSA3LCBpdCBtZWFucyB0aGF0IHRoZSByZWdp
c3RlciBiYXNlIGFkZHJlc3MgaXMgZGVmaW5lZCBpbiB0aGUgY3VycmVudCBub2RlIChORkMgbm9k
ZSkuCgpZZXMsIEkgdW5kZXJzdGFuZCB3aGF0IHlvdSBhcmUgZG9pbmcsIGJ1dCBJIGtpbmQgb2Yg
ZGlzbGlrZSB0aGUgbG9naWMuClJlbHlpbmcgb24gdGhlIG51bWJlciBvZiByZWcgdHVwbGVzIGlz
IHNvbWV0aGluZyB0aGF0IGNhbiBiZSBkb25lIChJCnVzZWQgaXQgbXlzZWxmIG9uZSB0aW1lKSwg
YnV0IEkgdGhpbmsgdGhpcyBpcyBtb3JlIGEgaGFjayB0aGF0IHlvdSBkbwp3aGVuIHlvdSBoYXZl
IG5vIG90aGVyIHdheSB0byBkaWZmZXJlbnRpYXRlLiBJIGd1ZXNzIHRoZSBwcm9wZXIgd2F5Cndv
dWxkIGJlIHRvIGxvb2sgYXQgdGhlIHBhcmVudCdzIGNvbXBhdGlibGUuIElmIGl0IG1hdGNoZXMg
d2hhdCB5b3UKZXhwZWN0LCB0aGVuIHlvdSBjYW4gc3RvcmUgdGhlIGRldi0+b2Zfbm9kZS0+cGFy
ZW50LT5kZXYgc29tZXdoZXJlIGluCnlvdXIgY29udHJvbGxlcidzIHN0cnVjdHVyZSBhbmQgdGhl
biB1c2UgaXQgdG8gaW5pdGlhbGl6ZSB0aGUgY2xvY2sgYW5kCnJlZ21hcC4gVGhpcyB3YXkgeW91
IGRvbid0IGhhdmUgdG8gbW92ZSBhbnl0aGluZyBlbHNlIGluIHRoZSBwcm9iZSBwYXRoLgoKClRo
YW5rcywKTWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
