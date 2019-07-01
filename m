Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D753858761
	for <lists+linux-mtd@lfdr.de>; Thu, 27 Jun 2019 18:42:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z6nxMQVQHfC4GpY9ylEGZEiVNwcALOt7pBbUO/o90BA=; b=ky6Lwza5XdNooY
	nyanDL/LqSalrw0fXbIpjJP5nMi43aCNb6Tm1jP1ZvTscXac4+I2L8Qyiad+fuFTpVO5992apFVFP
	zWRRgbm0Q2O0/iUffY976nOO27QJetH/B9AE7zF5jRdPd/rb+slALJD+P5c1ETQHKaoEhTddQqPub
	Gl/Y/wanIyj804JeIVD0ifdA8sBvOfcj9NOl2iJtqoP4+16iiOtpcDCFHCHazZ2DMM1UIAV/tmfPK
	weZnOC/sbAr5YxcDCxAUJ6gOBQBcHeGp9xS0fBvWwVjdq0OSO6z/chaZZF2nHIR7Gg34b2NqzNLvf
	DQiSSo+1kZNRe4VJstCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgXT9-00046J-Ie; Thu, 27 Jun 2019 16:41:55 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgXSI-0003aO-LE
 for linux-mtd@lists.infradead.org; Thu, 27 Jun 2019 16:41:10 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 15D332000E;
 Thu, 27 Jun 2019 16:40:48 +0000 (UTC)
Date: Thu, 27 Jun 2019 18:40:47 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>, Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH] mtd: rawnand: ingenic: fix ingenic_ecc dependency
Message-ID: <20190627184047.6faa058a@xps13>
In-Reply-To: <20190617141659.376c0271@xps13>
References: <20190617111110.2103786-1-arnd@arndb.de>
 <1560770644.1774.0@crapouillou.net>
 <CAK8P3a28NrvLP1nE7TQUCqwYXVwrSnVUJoH0yTSqRpz93f4g2Q@mail.gmail.com>
 <20190617141659.376c0271@xps13>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_094102_899372_B98CC123 
X-CRM114-Status: GOOD (  17.84  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Marek Vasut <marek.vasut@gmail.com>, linux-mtd <linux-mtd@lists.infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgUGF1bCwKCk1pcXVlbCBSYXluYWwgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5jb20+IHdyb3Rl
IG9uIE1vbiwgMTcgSnVuIDIwMTkKMTQ6MTY6NTkgKzAyMDA6Cgo+IEhlbGxvLAo+IAo+IEFybmQg
QmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+IHdyb3RlIG9uIE1vbiwgMTcgSnVuIDIwMTkgMTQ6MTI6
NDggKzAyMDA6Cj4gCj4gPiBPbiBNb24sIEp1biAxNywgMjAxOSBhdCAxOjI0IFBNIFBhdWwgQ2Vy
Y3VlaWwgPHBhdWxAY3JhcG91aWxsb3UubmV0PiB3cm90ZToKPiA+ICAgCj4gPiA+IEkgdGhpbmsg
dGhlcmUncyBhIGJldHRlciB3YXkgdG8gZml4IGl0LCBvbmx5IGluIEtjb25maWcuCj4gPiA+Cj4g
PiA+ICogQWRkIGEgYm9vbCBzeW1ib2wgTVREX05BTkRfSU5HRU5JQ19VU0VfSFdfRUNDCj4gPiA+
ICogSGF2ZSB0aGUgdGhyZWUgRUNDL0JDSCBkcml2ZXJzIHNlbGVjdCB0aGlzIHN5bWJvbCBpbnN0
ZWFkIG9mCj4gPiA+ICAgTVREX05BTkRfSU5HRU5JQ19FQ0MKPiA+ID4gKiBBZGQgdGhlIGZvbGxv
d2luZyB0byB0aGUgTVREX05BTkRfSlo0NzgwIGNvbmZpZyBvcHRpb246Cj4gPiA+ICAgInNlbGVj
dCBNVERfTkFORF9JTkdFTklDX0VDQyBpZiBNVERfTkFORF9JTkdFTklDX1VTRV9IV19FQ0MiICAg
IAo+ID4gCj4gPiBJIGRvbid0IHNlZSBtdWNoIGRpZmZlcmVuY2UgdG8gbXkgYXBwcm9hY2ggaGVy
ZSwgYnV0IGlmIHlvdSB3YW50Cj4gPiB0byBzdWJtaXQgdGhhdCB2ZXJzaW9uIHdpdGggJ1JlcG9y
dGVkLWJ5OiBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRlPicsCj4gPiBwbGVhc2UgZG8gc28u
Cj4gPiAKPiA+IFlldCBhbm90aGVyIG9wdGlvbiB3b3VsZCBiZSB0byB1c2UgTWFrZWZpbGUgY29k
ZSB0byBsaW5rIGJvdGgKPiA+IGZpbGVzIGludG8gb25lIG1vZHVsZSwgYW5kIHJlbW92ZSB0aGUg
RVhQT1JUX1NZTUJPTCBzdGF0ZW1lbnRzOgo+ID4gCj4gPiBvYmotJChDT05GSUdfTVREX05BTkRf
Slo0NzgwKSArPSBqejQ3ODBfbmFuZC5vCj4gPiBqejQ3ODBfbmFuZC15ICs9IGluZ2VuaWNfbmFu
ZC5vCj4gPiBqejQ3ODBfbmFuZC0kKENPTkZJR19NVERfTkFORF9JTkdFTklDX0VDQykgKz0gaW5n
ZW5pY19lY2Mubwo+ID4gICAKPiAKPiBJIHBlcnNvbmFsbHkgaGF2ZSBhIHByZWZlcmVuY2UgZm9y
IHRoaXMgb25lLgoKV291bGQgeW91IG1pbmQgc2VuZGluZyB0aGUgYWJvdmUgY2hhbmdlPyBJIGZv
cmdvdCBhYm91dCBpdCBidXQgSSB3b3VsZApsaWtlIHRvIHF1ZXVlIGl0IGZvciB0aGUgbmV4dCBy
ZWxlYXNlLiBQcmVmZXJhYmx5IHRoZSBsYXN0IHZlcnNpb24gQXJuZApwcm9wb3NlZC4KCgpUaGFu
a3MsCk1pcXXDqGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
