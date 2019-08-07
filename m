Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A3E84914
	for <lists+linux-mtd@lfdr.de>; Wed,  7 Aug 2019 12:05:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=663qmjYYJytBN5R2cLCRKIOQWUZgvbPxUGC5dGSyoQ8=; b=V+KyKDkyvCe4gD
	pzwJxEKSVlXR1II6IbLO/P6K1rsGKMs7mVikUsNpYiR8ynYRCEHmFnDJSBvCdKnlwAb2fZrA5TL96
	IzapHQQTG99hZEfwrNBNOcqTtSyuwjOAXYI9GEIGKBGWO7tP3nm5csHlTz7WTIEUbWeWg4HB2T5H+
	3xgr8aq0WA78v5I4K124XSq2mM4bUArJ5DFvf5pKSexcJXpUYx/2T2PI1jG+lQx/q92yKYPDYX1QP
	M6wHhpiBk44ZAhLFFUO3FeY1abbAUtOGlTsQaRQjzIGch7Akb5pQT8c7C/4p1IiOUBs4dr99OIOyc
	wQNEya76kt/TAlVL5DkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvIpL-0001c8-9o; Wed, 07 Aug 2019 10:05:51 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvIpC-0001bf-3K
 for linux-mtd@lists.infradead.org; Wed, 07 Aug 2019 10:05:43 +0000
X-Originating-IP: 86.250.200.211
Received: from xps13 (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 689B1240002;
 Wed,  7 Aug 2019 10:05:38 +0000 (UTC)
Date: Wed, 7 Aug 2019 12:05:37 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: shiva.linuxworks@gmail.com
Subject: Re: [PATCH 7/8] mtd: spinand: micron: Fix read failure in Micron
 M70A flashes
Message-ID: <20190807120537.733b6e6d@xps13>
In-Reply-To: <20190722055621.23526-8-sshivamurthy@micron.com>
References: <20190722055621.23526-1-sshivamurthy@micron.com>
 <20190722055621.23526-8-sshivamurthy@micron.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_030542_301285_79FA8166 
X-CRM114-Status: GOOD (  16.47  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
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
Cc: Chuanhong Guo <gch981213@gmail.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 liaoweixiong <liaoweixiong@allwinnertech.com>,
 Marek Vasut <marek.vasut@gmail.com>, linux-mtd@lists.infradead.org,
 Jeff Kletsky <git-commits@allycomm.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>,
 Shivamurthy Shastri <sshivamurthy@micron.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgU2hpdmEsCgpzaGl2YS5saW51eHdvcmtzQGdtYWlsLmNvbSB3cm90ZSBvbiBNb24sIDIyIEp1
bCAyMDE5IDA3OjU2OjIwICswMjAwOgoKPiBGcm9tOiBTaGl2YW11cnRoeSBTaGFzdHJpIDxzc2hp
dmFtdXJ0aHlAbWljcm9uLmNvbT4KPiAKPiBNNzBBIHNlcmllcyBmbGFzaGVzIGJ5IGRlZmF1bHQg
ZW5hYmxlIGNvbnRpbnVvdXMgcmVhZCBmZWF0dXJlIChCSVQwIGluCj4gY29uZmlndXJhdGlvbiBy
ZWdpc3RlcikuIFRoaXMgZmVhdHVyZSB3aWxsIG5vdCBleHBvc2UgdGhlIEVDQyB0byBob3N0Cj4g
YW5kIGNhdXNpbmcgcmVhZCBmYWlsdXJlLgoKVGhpcyBpcyBub3QgcmVhZGFibGUgZW5vdWdoLCBj
YW4geW91IHJlcGhyYXNlPyBCZXNpZGVzIHRoYXQgeW91IGNhbiBhZGQKbXkgCgpSZXZpZXdlZC1i
eTogTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4KCj4gCj4gU2lnbmVk
LW9mZi1ieTogU2hpdmFtdXJ0aHkgU2hhc3RyaSA8c3NoaXZhbXVydGh5QG1pY3Jvbi5jb20+Cj4g
LS0tCj4gIGRyaXZlcnMvbXRkL25hbmQvc3BpL21pY3Jvbi5jIHwgMTAgKysrKysrKysrKwo+ICAx
IGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L210ZC9uYW5kL3NwaS9taWNyb24uYyBiL2RyaXZlcnMvbXRkL25hbmQvc3BpL21pY3Jvbi5jCj4g
aW5kZXggNmZkZTkzZWMyM2ExLi4xZTI4ZWEzZDEzNjIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9t
dGQvbmFuZC9zcGkvbWljcm9uLmMKPiArKysgYi9kcml2ZXJzL210ZC9uYW5kL3NwaS9taWNyb24u
Ywo+IEBAIC0xMjcsNiArMTI3LDE1IEBAIHN0YXRpYyBpbnQgbWljcm9uX3NwaW5hbmRfZGV0ZWN0
KHN0cnVjdCBzcGluYW5kX2RldmljZSAqc3BpbmFuZCkKPiAgCXJldHVybiAxOwo+ICB9Cj4gIAo+
ICtzdGF0aWMgaW50IG1pY3Jvbl9zcGluYW5kX2luaXQoc3RydWN0IHNwaW5hbmRfZGV2aWNlICpz
cGluYW5kKQo+ICt7Cj4gKwkvKgo+ICsJICogU29tZSBvZiB0aGUgTWljcm9uIGZsYXNoZXMgZW5h
YmxlIHRoaXMgQklUIGJ5IGRlZmF1bHQsCj4gKwkgKiBhbmQgdGhlcmUgaXMgYSBjaGFuY2Ugb2Yg
cmVhZCBmYWlsdXJlIGR1ZSB0byB0aGlzLgo+ICsJICovCj4gKwlyZXR1cm4gc3BpbmFuZF91cGRf
Y2ZnKHNwaW5hbmQsIENGR19RVUFEX0VOQUJMRSwgMCk7Cj4gK30KPiArCj4gIHN0YXRpYyB2b2lk
IG1pY3Jvbl9maXh1cF9wYXJhbV9wYWdlKHN0cnVjdCBzcGluYW5kX2RldmljZSAqc3BpbmFuZCwK
PiAgCQkJCSAgICBzdHJ1Y3QgbmFuZF9vbmZpX3BhcmFtcyAqcCkKPiAgewo+IEBAIC0xNTAsNiAr
MTU5LDcgQEAgc3RhdGljIHZvaWQgbWljcm9uX2ZpeHVwX3BhcmFtX3BhZ2Uoc3RydWN0IHNwaW5h
bmRfZGV2aWNlICpzcGluYW5kLAo+ICAKPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBzcGluYW5kX21h
bnVmYWN0dXJlcl9vcHMgbWljcm9uX3NwaW5hbmRfbWFudWZfb3BzID0gewo+ICAJLmRldGVjdCA9
IG1pY3Jvbl9zcGluYW5kX2RldGVjdCwKPiArCS5pbml0ID0gbWljcm9uX3NwaW5hbmRfaW5pdCwK
PiAgCS5maXh1cF9wYXJhbV9wYWdlID0gbWljcm9uX2ZpeHVwX3BhcmFtX3BhZ2UsCj4gIH07Cj4g
IAoKClRoYW5rcywKTWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
