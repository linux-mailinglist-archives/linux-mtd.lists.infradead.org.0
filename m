Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9BEA1C0DFB
	for <lists+linux-mtd@lfdr.de>; Fri,  1 May 2020 08:21:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LhXC3lGSbktT5GNTKfTlNm9J0UCfYYMv4sm5mtKDfmQ=; b=ehewSxGhHA3vUG
	ECmhAshl6uBhq0UUZZWvpXkE9/eBav5WfuZkfbKdZJfYk/F4nxMlcVQpz1BQj/cUYuF3Umfl3Y/nD
	xarg8wTEHySILxN0p5+M3pwkFnpNL5rqG2Y45XQCzDf1riG4exxu34xpO0zQeuyiVs3CdQzzgVqDP
	2JU+NCOSmJ5Nqzvm703ccf+EE6gUrbKxThgSkpInuHk/T27t6lRf3odZpAuf8lUi1DASWL7IhYhLs
	Y0U6PKnC+vVge2sYHxR5MAkfYhrTMWay2OBr23BMrMP8Y2BOBeKFXWD3fZasH1ov6U1e0fUygNEpa
	w4UsUy9QLFFkaTFYIyNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUP3P-0005eW-7X; Fri, 01 May 2020 06:21:43 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUP3H-0005co-1i
 for linux-mtd@lists.infradead.org; Fri, 01 May 2020 06:21:36 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 8B7442A2C8E;
 Fri,  1 May 2020 07:21:31 +0100 (BST)
Date: Fri, 1 May 2020 08:21:28 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Lubomir Rintel <lkundrak@v3.sk>
Subject: Re: [PATCH 00/17] mtd: rawnand: cafe: Convert to exec_op() (and more)
Message-ID: <20200501082128.23b81dab@collabora.com>
In-Reply-To: <20200501055209.GA44510@furthur.local>
References: <20200427082028.394719-1-boris.brezillon@collabora.com>
 <20200429083735.55a80097@windsurf.home>
 <20200429102841.57acab4e@collabora.com>
 <20200501055209.GA44510@furthur.local>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_232135_225678_6D132927 
X-CRM114-Status: GOOD (  25.82  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T24gRnJpLCAxIE1heSAyMDIwIDA3OjUyOjA5ICswMjAwCkx1Ym9taXIgUmludGVsIDxsa3VuZHJh
a0B2My5zaz4gd3JvdGU6Cgo+IE9uIFdlZCwgQXByIDI5LCAyMDIwIGF0IDEwOjI4OjQxQU0gKzAy
MDAsIEJvcmlzIEJyZXppbGxvbiB3cm90ZToKPiA+IEhpIFRob21hcywKPiA+IAo+ID4gT24gV2Vk
LCAyOSBBcHIgMjAyMCAwODozNzozNSArMDIwMAo+ID4gVGhvbWFzIFBldGF6em9uaSA8dGhvbWFz
LnBldGF6em9uaUBib290bGluLmNvbT4gd3JvdGU6Cj4gPiAgIAo+ID4gPiBIZWxsbywKPiA+ID4g
Cj4gPiA+ICtMdWJvbWlyIFJpbnRlbCBpbiBDYy4KPiA+ID4gCj4gPiA+IE9uIE1vbiwgMjcgQXBy
IDIwMjAgMTA6MjA6MTAgKzAyMDAKPiA+ID4gQm9yaXMgQnJlemlsbG9uIDxib3Jpcy5icmV6aWxs
b25AY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4gPiA+ICAgCj4gPiA+ID4gQSBiaXQgb2YgY29udGV4
dCB0byBleHBsYWluIHRoZSBtb3RpdmF0aW9uIGJlaGluZCB0aG9zZSBjb252ZXJzaW9ucwo+ID4g
PiA+IEkndmUgYmVlbiBzZW5kaW5nIGZvciB0aGUgbGFzdCBjb3VwbGUgb2Ygd2Vla3MuIFRoZSBy
YXcgTkFORCBzdWJzeXN0ZW0KPiA+ID4gPiBjYXJyaWVzIGEgbG90IG9mIGhpc3Rvcnkgd2hpY2gg
bWFrZXMgYW55IHJld29yayBub3Qgb25seSBwYWluZnVsLCBidXQKPiA+ID4gPiBhbHNvIHN1Ympl
Y3QgdG8gcmVncmVzc2lvbnMgd2hpY2ggd2Ugb25seSBkZXRlY3Qgd2hlbiBzb21lb25lIGRhcmVz
IHRvCj4gPiA+ID4gdXBkYXRlIGl0cyBrZXJuZWwgb24gb25lIG9mIHRob3NlIGFuY2llbnQgSFcu
IFdoaWxlIGNhcnJ5aW5nIGRyaXZlcnMKPiA+ID4gPiBmb3Igb2xkIEhXIGlzIG5vdCBhIHByb2Js
ZW0gcGVyIHNlLCBjYXJyeWluZyBhbmNpZW50IGFuZCB1bm1haW50YWluZWQKPiA+ID4gPiBkcml2
ZXJzIHRoYXQgYXJlIG5vdCBjb252ZXJ0ZWQgdG8gbmV3IEFQSXMgaXMgYSBtYWludGVuYW5jZSBi
dXJkZW4sCj4gPiA+ID4gaGVuY2UgdGhpcyBtYXNzaXZlIGNvbnZlcnNpb24gYXR0ZW1wdCBJJ20g
Y29uZHVjdGluZyBoZXJlLgo+ID4gPiA+IAo+ID4gPiA+IFNvIGhlcmUgaXQgaXMsIGEgc2VyaWVz
IGNvbnZlcnRpbmcgdGhlIENBRkUgTkFORCBjb250cm9sbGVyIGRyaXZlciB0bwo+ID4gPiA+IGV4
ZWNfb3AoKSwgcGx1cyBhIGJ1bmNoIG9mIG1pbm9yIGltcHJvdmVtZW50cyBkb25lIGFsb25nIHRo
ZSB3YXkuCj4gPiA+ID4gSSBob3BlIEknbGwgZmluZCBzb21lb25lIHRvIHRlc3QgdGhvc2UgY2hh
bmdlcywgYnV0IGlmIHRoZXJlJ3Mgbm8gb25lCj4gPiA+ID4gc3RpbGwgb3duaW5nIE9MUEMgSFcg
b3Igbm8gaW50ZXJlc3QgaW4ga2VlcGluZyBpdCBzdXBwb3J0ZWQgaW4gcmVjZW50Cj4gPiA+ID4g
a2VybmVsIHZlcnNpb25zLCB3ZSBzaG91bGQgZGVmaW5pdGVseSBjb25zaWRlciByZW1vdmluZyB0
aGUgZHJpdmVyCj4gPiA+ID4gaW5zdGVhZC4gICAgCj4gPiA+IAo+ID4gPiBMdWJvbWlyIFJpbnRl
bCAoaW4gQ2MpIGhhcyB2ZXJ5IHJlY2VudGx5IGFkZGVkIGRlZmNvbmZpZ3MgdG8gQnVpbGRyb290
Cj4gPiA+IHRvIHN1cHBvcnQgdGhlIHR3byBPTFBDIHBsYXRmb3JtcyAodGhlIEludGVsIGJhc2Vk
IG9uZSBhbmQgdGhlIE1hcnZlbGwKPiA+ID4gTU1QIGJhc2VkIG9uZSkuIEkgc3VwcG9zZSB0aGlz
IG1lYW5zIGhlIGhhcyBhY2Nlc3MgdG8gdGhlIGhhcmR3YXJlLCBzbwo+ID4gPiBob3BlZnVsbHkg
aGUgc2hvdWxkIGJlIGFibGUgdG8gdGVzdCB0aGVzZSBOQU5EIGRyaXZlciBjaGFuZ2VzLiAgCj4g
PiAKPiA+IE9oLCB0aGF0J3MgZ3JlYXQgbmV3cyEgVGhhbmtzIGEgbG90IGZvciBsZXR0aW5nIG1l
IGtub3cuCj4gPiAKPiA+IEx1Ym9taXIsIGxldCBtZSBrbm93IGlmIHlvdSdkIGJlIG9rYXkgdG8g
dGVzdCB0aG9zZSBjaGFuZ2VzLiBJIGNhbgo+ID4gcHJvdmlkZSBhIGJyYW5jaCBpZiB0aGF0J3Mg
ZWFzaWVyLiAgCj4gCj4gQm9yaXMsIEknZCBiZSBoYXBweSB0byB0ZXN0IHRoZSBjaGFuZ2VzLiBB
IGJyYW5jaCB3b3VsZCBoZWxwLgoKSGVyZSBpdCBpcyBbMV0uCgo+IEkndmUKPiBhcHBsaWVkIHRo
ZSBwYXRjaGVzIG9uIHRvcCBvZiA1LjctcmMzIGFuZCB3aGlsZSB0aGV5IGFwcGxpZWQgY2xlYW5s
eSwKPiB0aGV5J3ZlIGZhaWxlZCB0byBidWlsZDoKPiAKPiAgIGRyaXZlcnMvbXRkL25hbmQvcmF3
L2NhZmVfbmFuZC5jOiBJbiBmdW5jdGlvbiDigJhjYWZlX25hbmRfZXhlY19zdWJvcOKAmToKPiAg
IGRyaXZlcnMvbXRkL25hbmQvcmF3L2NhZmVfbmFuZC5jOjU4MToxOTogZXJyb3I6IOKAmGNvbnN0
IHN0cnVjdCBuYW5kX3N1Ym9w4oCZIGhhcyBubyBtZW1iZXIgbmFtZWQg4oCYY3PigJkKPiAgICAg
NTgxIHwgIGlmIChXQVJOX09OKHN1Ym9wLT5jcyA+IDEpKQo+ICAgICAgICAgfCAgCiAgICAgICAg
ICAgICAgICAgXn4KClllcCwgaXQgZGVwZW5kcyBvbiBhIHBhdGNoIHRoYXQgd2FzIHBhcnQgb2Yg
YSBzZXBhcmF0ZSBzZXJpZXMuCgpJJ20gaGVyZSB0byBoZWxwIGlmIHlvdSBoYXZlIGFueSBpc3N1
ZXMuCgpUaGFua3MsCgpCb3JpcwoKWzFdaHR0cHM6Ly9naXRodWIuY29tL2JicmV6aWxsb24vbGlu
dXgvdHJlZS9uYW5kL2V4ZWMtb3AtY29udmVyc2lvbgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxp
bmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LW10ZC8K
