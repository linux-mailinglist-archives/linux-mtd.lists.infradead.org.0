Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 740EB1AE15F
	for <lists+linux-mtd@lfdr.de>; Fri, 17 Apr 2020 17:42:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JinQdONylsUjlvnh+Q6PnjtRiGUXM+EAsMfb9zl+xCg=; b=augCLaSnWxbAJr
	WtBmzDEMpHVkps8Ye+ea0VuOiHEOdeinlQMrSLnPtRoW7Fle+FEjOXNYI9R/Xwm66dK/npyfIcwvl
	shZPB0U0gMp9kOv1ChTzz97HAytuxWu/tIscPirEFz2ewi3L1kGB7Cc7r+ercfeMp+Px3PcdSM2P6
	AJ8h5v7P4Txi6DnTsVIjnhx7s+RDPKpTpQytU4mup5uYhKEvBfH6bN3ouxXO1umEzLOr6/42GaOfE
	jUdq8AG2NW8mwfHdVPGhTuHPJ7AbrUrPKoSiKzzo313myJ4xiArjqNP4mcJD876umyHZ9TABB17bR
	76573AoMDT2VRlUO6lfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPT7u-0002AU-HO; Fri, 17 Apr 2020 15:41:58 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPT7i-000299-7F
 for linux-mtd@lists.infradead.org; Fri, 17 Apr 2020 15:41:48 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 0920E2A0613;
 Fri, 17 Apr 2020 16:41:43 +0100 (BST)
Date: Fri, 17 Apr 2020 17:41:40 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH v2 03/12] bus: stm32-fmc2-ebi: add STM32 FMC2 EBI
 controller driver
Message-ID: <20200417174140.00456f36@collabora.com>
In-Reply-To: <c69f86f4-5904-3f35-dac1-87080402a096@denx.de>
References: <1586966256-29548-1-git-send-email-christophe.kerello@st.com>
 <1586966256-29548-4-git-send-email-christophe.kerello@st.com>
 <20200416215328.53982fef@collabora.com>
 <e4a21df4-b01b-1215-7a3b-fea94f099b8f@st.com>
 <c69f86f4-5904-3f35-dac1-87080402a096@denx.de>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_084146_395199_58D351AD 
X-CRM114-Status: GOOD (  22.84  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Christophe Kerello <christophe.kerello@st.com>, vigneshr@ti.com,
 tony@atomide.com, richard@nod.at, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 lee.jones@linaro.org, linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T24gRnJpLCAxNyBBcHIgMjAyMCAxNzozMTo0OSArMDIwMApNYXJlayBWYXN1dCA8bWFyZXhAZGVu
eC5kZT4gd3JvdGU6Cgo+IE9uIDQvMTcvMjAgNToyOSBQTSwgQ2hyaXN0b3BoZSBLZXJlbGxvIHdy
b3RlOgo+ID4gCj4gPiAKPiA+IE9uIDQvMTYvMjAgOTo1MyBQTSwgQm9yaXMgQnJlemlsbG9uIHdy
b3RlOiAgCj4gPj4gT24gV2VkLCAxNSBBcHIgMjAyMCAxNzo1NzoyNyArMDIwMAo+ID4+IENocmlz
dG9waGUgS2VyZWxsbyA8Y2hyaXN0b3BoZS5rZXJlbGxvQHN0LmNvbT4gd3JvdGU6Cj4gPj4gIAo+
ID4+PiBUaGUgZHJpdmVyIGFkZHMgdGhlIHN1cHBvcnQgZm9yIHRoZSBTVE1pY3JvZWxlY3Ryb25p
Y3MgRk1DMiBFQkkKPiA+Pj4gY29udHJvbGxlcgo+ID4+PiBmb3VuZCBvbiBTVE0zMk1QIFNPQ3Mu
Cj4gPj4+Cj4gPj4+IFNpZ25lZC1vZmYtYnk6IENocmlzdG9waGUgS2VyZWxsbyA8Y2hyaXN0b3Bo
ZS5rZXJlbGxvQHN0LmNvbT4KPiA+Pj4gVGVzdGVkLWJ5OiBNYXJlayBWYXN1dCA8bWFyZXhAZGVu
eC5kZT4KPiA+Pj4gLS0tCj4gPj4+IENoYW5nZXMgaW4gdjI6Cj4gPj4+IMKgIC0gY2FsbCAyIEFQ
SXMgdG8gbWFuYWdlIEZNQzIgZW5hYmxlL2Rpc2FibGUgaW5zdGVhZCBvZiBvcHMKPiA+Pj4gwqAg
LSBjYWxsIDIgQVBJcyB0byBtYW5hZ2UgRk1DMiBOV0FJVCBzaGFyZWQgc2lnbmFsIGluc3RlYWQg
b2Ygb3BzCj4gPj4+Cj4gPj4+IMKgIGRyaXZlcnMvYnVzL0tjb25maWfCoMKgwqDCoMKgwqDCoMKg
wqAgfMKgwqAgMTEgKwo+ID4+PiDCoCBkcml2ZXJzL2J1cy9NYWtlZmlsZcKgwqDCoMKgwqDCoMKg
wqAgfMKgwqDCoCAxICsKPiA+Pj4gwqAgZHJpdmVycy9idXMvc3RtMzItZm1jMi1lYmkuYyB8IDEw
OTEKPiA+Pj4gKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrICAKPiA+
Pgo+ID4+IEhtLCBJIHNlZSB0aGF0IG90aGVyIG1lbW9yeSBidXMgY29udHJvbGxlciBkcml2ZXJz
IGFyZSBwbGFjZWQgdW5kZXIKPiA+PiBkcml2ZXJzL21lbW9yeS8sIGFueSByZWFzb24gZm9yIGNo
b29zaW5nIGRyaXZlcnMvYnVzLz8gSWYgdGhhdCdzIHdoZXJlCj4gPj4gd2Ugd2FudCB0byBoYXZl
IGFsbCBnZW5lcmljIG1lbW9yeSBidXMgY29udHJvbGxlcnMgdG8gbGl2ZSBpdCBtaWdodCBiZQo+
ID4+IHdvcnRoIG1vdmluZyBleGlzdGluZyBkcml2ZXJzIHRvIHRoZSBkcml2ZXJzL2J1cy8gZGly
ZWN0b3J5IGF0IHNvbWUKPiA+PiBwb2ludC4KPiA+PiAgCj4gPiAKPiA+IEhpIEJvcmlzLAo+ID4g
Cj4gPiBJIHNlZSB0aGlzIGNvbnRyb2xsZXIgYXMgYW4gZXh0ZXJuYWwgYnVzIGludGVyZmFjZSBh
cyB3ZSBhcmUgYWJsZSB0bwo+ID4gYXR0YWNoIGRpZmZlcmVudCBkZXZpY2VzIG9uIGl0LCBsaWtl
IGEgUFNSQU0sIGFuIGV0aGVybmV0IGNvbnRyb2xsZXIsIGEKPiA+IEZQR0EsIGEgTENEIGRpc3Bs
YXksIC4uLgo+ID4gCj4gPiBXaGVuIEkgaGFkIGEgbG9vayBhdCBidXMvS2NvbmZpZyBmaWxlLCBJ
IGhhdmUgZm91bmQgc2ltaWxhciBkcml2ZXJzCj4gPiAobGlrZSBJTVhfV0VJTSBvciBRQ09NX0VC
STIgZHJpdmVycykuIFRoZXNlIGRyaXZlcnMgYXJlIGFibGUgdG8gY29ubmVjdAo+ID4gZGV2aWNl
cyBsaWtlIE5BTkQgRmxhc2gsIFNSQU0sIGV0aGVybmV0IGFkYXB0ZXJzLCBGUEdBcyBhbmQgTENE
IGRpc3BsYXlzCj4gPiBhcyBpdCBpcyB3cml0dGVuIGluIHRoZSBLY29uZmlnIGZpbGUuCj4gPiAK
PiA+IEJ1dCwgYWZ0ZXIgY2hlY2tpbmcgbWVtb3J5L0tjb25maWcgZmlsZSwgaXQgaXMgYWxzbyBw
b3NzaWJsZSB0byBmaW5kCj4gPiBzaW1pbGFyIGRyaXZlcnMgKGxpa2UgQVRNRUxfRUJJIGRyaXZl
ciB0aGF0IGlzIGluc3BpcmVkIGJ5IHRoZSBXRUlNIGJ1cwo+ID4gZHJpdmVyKS4KPiA+IAo+ID4g
U28sIEkgd2lsbCBmb2xsb3cgdGhlIHJlY29tbWVuZGF0aW9uIGFuZCBJIHdpbGwgbW92ZSBpdCB0
bwo+ID4gZHJpdmVycy9tZW1vcnkgZm9sZGVyIGlmIGl0IGlzIHRoZSBwbGFjZSB3aGVyZSB0aGlz
IGRyaXZlciBzaG91bGQgYmUuICAKPiAKPiBUaGUgRUJJIGlzbid0IGEgbWVtb3J5IGJ1cywgeW91
IGNhbiB2ZXJ5IHdlbGwgaGF2ZSBhIG5vbi1tZW1vcnkgZGV2aWNlLAo+IGxpa2UgYW4gZXh0ZXJu
YWwgcGFyYWxsZWwgYnVzIG1lbW9yeSBjb250cm9sbGVyIG9uIGl0LiBTbyB3aHkgc2hvdWxkIGl0
Cj4gYmUgaW4gZHJpdmVycy9tZW1vcnkgPwoKSnVzdCBsaWtlIG1vc3Qgb2YgdGhvc2Ugc28tY2Fs
bGVkIG1lbW9yeSBidXMgY29udHJvbGxlcnMgd2UgaGF2ZSB1bmRlcgpkcml2ZXJzL21lbW9yeS8g
PT4gdGhleSBhcmUgbW9zdCBvZiB0aGUgdGltZSB1c2VkIHRvIGludGVyYWN0IHdpdGgKbWVtb3Jp
ZXMgYnV0IGNhbiBhbHNvIGJlIHVzZWQgZm9yIG90aGVyIHRoaW5ncyAoQ2hyaXN0b3BoZSBsaXN0
ZWQgYSBmZXcKdXNlcyBjYXNlcykuIEFuZCBJJ20gbm90IHB1c2hpbmcgb25lIHdheSBvciB0aGUg
b3RoZXIsIGFsbCBJIHNhaWQgd2FzCnRoYXQgd2Ugc2hvdWxkIG1ha2VzIHRoaW5ncyBjb25zaXN0
ZW50IGluc3RlYWQgb2YgaGF2aW5nIGhhbGYgb2YKdGhvc2UgY29udHJvbGxlciBkcml2ZXJzIGlu
IGRyaXZlcnMvbWVtb3J5LyBhbmQgdGhlIG90aGVyIGhhbGYgaW4KZHJpdmVycy9idXMvLgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
