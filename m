Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A21EECDDC7
	for <lists+linux-mtd@lfdr.de>; Mon,  7 Oct 2019 10:54:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DUsiemi2VcPxhSYAt548Gos4NVYmNMQ2O0ICp1Pfcyc=; b=n0opeQAij6E4K8
	1BHmXC2G9SnDP1qQkV5GUqzp4ss3Tk/zHqBkfLdFe6PYR43TNJANRrE+AfuoGEDwJ/M8HXphTcN2O
	FQ/xlDqtBS/a3jyBZBxsaZufMGnAYPKs+1Ok6DiQ/xoK+6qYO71K9JBDqBfdDAn2XNcstzCLtA7q/
	I2HqtJo/k6n8sgoW63NHIPyVCnXI/ILBFov2Phs8Gtw9O5LaVyr57iTWfpj7dHjKpSWYQopN++Plt
	BhxdnO+b/Ywv8tOaflyHqVQnzJT+2qzQp5eLJGlWoiq3GSFx5C+tXZgiM/2JuhacouANIC+y8ec1a
	c8orndSnoSFS1BznHBtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHOme-0003WO-Qz; Mon, 07 Oct 2019 08:54:24 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHOmW-0003VR-Pm
 for linux-mtd@lists.infradead.org; Mon, 07 Oct 2019 08:54:18 +0000
X-Originating-IP: 86.250.200.211
Received: from xps13 (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 14FEA240013;
 Mon,  7 Oct 2019 08:54:08 +0000 (UTC)
Date: Mon, 7 Oct 2019 10:54:08 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Navid Emamdoost <navid.emamdoost@gmail.com>
Subject: Re: [PATCH v2] mtd: onenand: prevent memory leak in onenand_scan
Message-ID: <20191007105408.2b4b9fd6@xps13>
In-Reply-To: <20191004171909.6378-1-navid.emamdoost@gmail.com>
References: <20191004175740.5dd84c38@xps13>
 <20191004171909.6378-1-navid.emamdoost@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_015416_974526_ACCC8B09 
X-CRM114-Status: GOOD (  17.09  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 kjlu@umn.edu, linux-kernel@vger.kernel.org,
 Marek Vasut <marek.vasut@gmail.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 emamd001@umn.edu, linux-mtd@lists.infradead.org, smccaman@umn.edu,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgTmF2aWQsCgpOYXZpZCBFbWFtZG9vc3QgPG5hdmlkLmVtYW1kb29zdEBnbWFpbC5jb20+IHdy
b3RlIG9uIEZyaSwgIDQgT2N0IDIwMTkKMTI6MTk6MDUgLTA1MDA6Cgo+IEluIG9uZW5hbmRfc2Nh
biBpZiBzY2FuX2JidCBmYWlscyB0aGUgYWxsb2NhdGVkIGJ1ZmZlcnMgZm9yIG9vYl9idWYsCj4g
dmVyaWZ5X2J1ZiwgYW5kIHBhZ2VfYnVmIHNob3VsZCBiZSByZWxlYXNlZC4KPiAKPiBGaXhlczog
NTk4OGFmMjMxOTc4ICgibXRkOiBGbGV4LU9uZU5BTkQgc3VwcG9ydCIpCgpNaXNzaW5nIENjOiBz
dGFibGVAdmdlci5rZXJuZWwub3JnCgo+IFNpZ25lZC1vZmYtYnk6IE5hdmlkIEVtYW1kb29zdCA8
bmF2aWQuZW1hbWRvb3N0QGdtYWlsLmNvbT4KPiAtLS0KPiBDaGFuZ2VzIGluIHYyOgo+IAktLSBh
ZGRlZCByZWxlYXNlIGZvciB0aGlzLT52ZXJpZnlfYnVmICh0aGFua3MgdG8gTWlxdWVsIFJheW5h
bAo+IGZvciB0aGUgaGludCkuCj4gLS0tCgpUaGVzZSB0aHJlZSBkYXNoZXMgYXJlIG5vdCBuZWVk
ZWQuCgo+ICBkcml2ZXJzL210ZC9uYW5kL29uZW5hbmQvb25lbmFuZF9iYXNlLmMgfCA4ICsrKysr
KystCj4gIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tdGQvbmFuZC9vbmVuYW5kL29uZW5hbmRfYmFzZS5jIGIv
ZHJpdmVycy9tdGQvbmFuZC9vbmVuYW5kL29uZW5hbmRfYmFzZS5jCj4gaW5kZXggNzdiZDMyYTY4
M2UxLi42MzI5YWRhM2YxNWMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tdGQvbmFuZC9vbmVuYW5k
L29uZW5hbmRfYmFzZS5jCj4gKysrIGIvZHJpdmVycy9tdGQvbmFuZC9vbmVuYW5kL29uZW5hbmRf
YmFzZS5jCj4gQEAgLTM5NzcsOCArMzk3NywxNCBAQCBpbnQgb25lbmFuZF9zY2FuKHN0cnVjdCBt
dGRfaW5mbyAqbXRkLCBpbnQgbWF4Y2hpcHMpCj4gIAl0aGlzLT5iYWRibG9ja3BvcyA9IE9ORU5B
TkRfQkFEQkxPQ0tfUE9TOwo+ICAKPiAgCXJldCA9IHRoaXMtPnNjYW5fYmJ0KG10ZCk7Cj4gLQlp
ZiAoKCFGTEVYT05FTkFORCh0aGlzKSkgfHwgcmV0KQo+ICsJaWYgKCghRkxFWE9ORU5BTkQodGhp
cykpIHx8IHJldCkgewo+ICsJCWtmcmVlKHRoaXMtPm9vYl9idWYpOwo+ICsjaWZkZWYgQ09ORklH
X01URF9PTkVOQU5EX1ZFUklGWV9XUklURQo+ICsJCWtmcmVlKHRoaXMtPnZlcmlmeV9idWYpOwo+
ICsjZW5kaWYKClNvcnJ5IGZvciB0aGUgcGluZy1wb25nIGJ1dCBhY3R1YWxseSwgb25seSB0aGUg
b29iX2J1ZiBhbmQgcGFnZV9idWYKaGF2ZSBiZWVuIGludHJvZHVjZWQgYnkgdGhlIGNvbW1pdCA1
OTg4YWYgeW91IHBvaW50IGluIHRoZSBGaXhlcyB0YWcuCgpUbyBoZWxwIHN0YWJsZSBrZXJuZWxz
IG1haW50YWluZXJzIEkgc3VnZ2VzdCB5b3UgZnJlZSB0aGUgdmVyaWZ5X2J1ZgppbiBhIHNlY29u
ZCBwYXRjaCB3aGljaCBmaXhlczoKCjRhOGNlMGIwMzA3MSBtdGQ6IG9uZW5hbmQ6IGFsbG9jYXRl
IHZlcmlmeSBidWZmZXIgaW4gdGhlIGNvcmUKCj4gKwkJa2ZyZWUodGhpcy0+cGFnZV9idWYpOwo+
ICAJCXJldHVybiByZXQ7Cj4gKwl9Cj4gIAo+ICAJLyogQ2hhbmdlIEZsZXgtT25lTkFORCBib3Vu
ZGFyaWVzIGlmIHJlcXVpcmVkICovCj4gIAlmb3IgKGkgPSAwOyBpIDwgTUFYX0RJRVM7IGkrKykK
ClRoYW5rcywKTWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
