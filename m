Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8C5481AC
	for <lists+linux-mtd@lfdr.de>; Mon, 17 Jun 2019 14:17:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yTskeuaqz8nEYvL3311rlfOtgSouMQFwk1HU+ok4dfo=; b=UswsKuSyNYtvRC
	jtFieZQy9q6NOhwb7CHDgyX/s3vHARCjn+Dn3XkdLfLQ6d65N+GwTbOD+bQK9aBTkQknRn4HEQspD
	3wsXLE/bHhwQ9fRPSGTSkIarNh3dlIS8ZpFbhY5r5eSrUqXziqHOX35bIvUGSe5FF1b5Ujj9gtSDI
	iJjNVFetjUcipdPJdWeOoBF58p1BJvwJjSSpN1yPkeXP6DoZVihv2FZwvqxQnSvDBTOeRYgn9TX8j
	Sy0+ClBlJJnFw4N20YVUBK7A76UqL0GiOKS6zu0f4kEBPveZwhnG4/twwWc91z2Yle18vzY6yW1gQ
	Unodns2+0F22g7PKX0hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcqZe-00035U-0S; Mon, 17 Jun 2019 12:17:22 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcqZT-00034o-0b
 for linux-mtd@lists.infradead.org; Mon, 17 Jun 2019 12:17:12 +0000
X-Originating-IP: 90.88.23.150
Received: from xps13 (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr
 [90.88.23.150]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id C2D7D1BF20C;
 Mon, 17 Jun 2019 12:16:59 +0000 (UTC)
Date: Mon, 17 Jun 2019 14:16:59 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] mtd: rawnand: ingenic: fix ingenic_ecc dependency
Message-ID: <20190617141659.376c0271@xps13>
In-Reply-To: <CAK8P3a28NrvLP1nE7TQUCqwYXVwrSnVUJoH0yTSqRpz93f4g2Q@mail.gmail.com>
References: <20190617111110.2103786-1-arnd@arndb.de>
 <1560770644.1774.0@crapouillou.net>
 <CAK8P3a28NrvLP1nE7TQUCqwYXVwrSnVUJoH0yTSqRpz93f4g2Q@mail.gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_051711_217871_798FB09C 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
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
 Paul Cercueil <paul@crapouillou.net>, Marek Vasut <marek.vasut@gmail.com>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGVsbG8sCgpBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRlPiB3cm90ZSBvbiBNb24sIDE3IEp1
biAyMDE5IDE0OjEyOjQ4ICswMjAwOgoKPiBPbiBNb24sIEp1biAxNywgMjAxOSBhdCAxOjI0IFBN
IFBhdWwgQ2VyY3VlaWwgPHBhdWxAY3JhcG91aWxsb3UubmV0PiB3cm90ZToKPiAKPiA+IEkgdGhp
bmsgdGhlcmUncyBhIGJldHRlciB3YXkgdG8gZml4IGl0LCBvbmx5IGluIEtjb25maWcuCj4gPgo+
ID4gKiBBZGQgYSBib29sIHN5bWJvbCBNVERfTkFORF9JTkdFTklDX1VTRV9IV19FQ0MKPiA+ICog
SGF2ZSB0aGUgdGhyZWUgRUNDL0JDSCBkcml2ZXJzIHNlbGVjdCB0aGlzIHN5bWJvbCBpbnN0ZWFk
IG9mCj4gPiAgIE1URF9OQU5EX0lOR0VOSUNfRUNDCj4gPiAqIEFkZCB0aGUgZm9sbG93aW5nIHRv
IHRoZSBNVERfTkFORF9KWjQ3ODAgY29uZmlnIG9wdGlvbjoKPiA+ICAgInNlbGVjdCBNVERfTkFO
RF9JTkdFTklDX0VDQyBpZiBNVERfTkFORF9JTkdFTklDX1VTRV9IV19FQ0MiICAKPiAKPiBJIGRv
bid0IHNlZSBtdWNoIGRpZmZlcmVuY2UgdG8gbXkgYXBwcm9hY2ggaGVyZSwgYnV0IGlmIHlvdSB3
YW50Cj4gdG8gc3VibWl0IHRoYXQgdmVyc2lvbiB3aXRoICdSZXBvcnRlZC1ieTogQXJuZCBCZXJn
bWFubiA8YXJuZEBhcm5kYi5kZT4nLAo+IHBsZWFzZSBkbyBzby4KPiAKPiBZZXQgYW5vdGhlciBv
cHRpb24gd291bGQgYmUgdG8gdXNlIE1ha2VmaWxlIGNvZGUgdG8gbGluayBib3RoCj4gZmlsZXMg
aW50byBvbmUgbW9kdWxlLCBhbmQgcmVtb3ZlIHRoZSBFWFBPUlRfU1lNQk9MIHN0YXRlbWVudHM6
Cj4gCj4gb2JqLSQoQ09ORklHX01URF9OQU5EX0paNDc4MCkgKz0gano0NzgwX25hbmQubwo+IGp6
NDc4MF9uYW5kLXkgKz0gaW5nZW5pY19uYW5kLm8KPiBqejQ3ODBfbmFuZC0kKENPTkZJR19NVERf
TkFORF9JTkdFTklDX0VDQykgKz0gaW5nZW5pY19lY2Mubwo+IAoKSSBwZXJzb25hbGx5IGhhdmUg
YSBwcmVmZXJlbmNlIGZvciB0aGlzIG9uZS4KClRoYW5rcywKTWlxdcOobAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNj
dXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LW10ZC8K
