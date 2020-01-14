Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC8313A38C
	for <lists+linux-mtd@lfdr.de>; Tue, 14 Jan 2020 10:13:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZTcUBHwHKFoZIRH7PyXRHKIbUV0uYk72FFvsEIxry+4=; b=JMeU61ZwUYOnkS
	ehV/ZQJXZ4W3czMpXOYokyIbfN0GdsO1V06D98dRDSq9UfXyMlPjBvC7B/or4v6fsMpcnxP1khaqj
	0vhPLpzLRf2jpl1XXZ7csxK5+vrvx4cwegTv+2SNdCH1cFAHLc00bh3XmnD/ao8UAKORgn8HZngdv
	K911ZBmYpsnYDus6PlGBmP+0werRblRZ22P/I9fxRVvn+pqXa9+Mxa1PHP1W2fIlcci2qdhYb60xd
	zHxdvx8LiDod+63mK0dTKs1q+pEN1ZIsw00SyrgOgiHCM2WoeFb876UoTVcwoqiNtJOEoOk8i7+zT
	N3xn3MfnIhcFeQqXpK7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irIGD-0003rp-Do; Tue, 14 Jan 2020 09:13:17 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irIFy-0003o9-1i
 for linux-mtd@lists.infradead.org; Tue, 14 Jan 2020 09:13:08 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 5A624240007;
 Tue, 14 Jan 2020 09:12:58 +0000 (UTC)
Date: Tue, 14 Jan 2020 10:12:19 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [RFC PATCH 0/3] Fix proposal for the Micron shallow erase issue
Message-ID: <20200114101219.4b951dfe@xps13>
In-Reply-To: <a2199251-882a-5067-fe4c-47f1c8a252fe@gmail.com>
References: <20191231192656.16376-1-miquel.raynal@bootlin.com>
 <a2199251-882a-5067-fe4c-47f1c8a252fe@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_011302_242505_B6FB93C7 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>,
 Zoltan Szubbocsev <zszubbocsev@micron.com>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, tglx@linutronix.de,
 Piotr Wojtaszczyk <WojtaszczykP@cumminsallison.com>,
 Bean Huo <beanhuo@micron.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgRmxvcmlhbiwKCkZsb3JpYW4gRmFpbmVsbGkgPGYuZmFpbmVsbGlAZ21haWwuY29tPiB3cm90
ZSBvbiBUaHUsIDIgSmFuIDIwMjAKMTA6NDE6MTQgLTA4MDA6Cgo+IE9uIDEyLzMxLzE5IDExOjI2
IEFNLCBNaXF1ZWwgUmF5bmFsIHdyb3RlOgo+ID4gSGVsbG8sCj4gPiAKPiA+IEFmdGVyIGEgZmly
c3QgcHJvcG9zYWwgYnkgVGhvbWFzIEdsZWl4bmVyIGFuZCB0aGVuIGFub3RoZXIgcHJvcG9zYWwg
YnkKPiA+IEJlYW4gSHVvIChNaWNyb24pLCB0aGlzIGlzIGFuIGF0dGVtcHQgdG8gbWFpbmxpbmUg
dGhlIGZpeCBmb3IgTWljcm9uJ3MKPiA+ICJzaGFsbG93IGVyYXNlIiBpc3N1ZS4gSU1ITyB0aGlz
IGlzIGEgInByZXR0eSB3YXkiLCBub3Qgc28gaW52YXNpdmUsCj4gPiB3aXRoIGEgbGltaXRlZCBw
ZXJmb3JtYW5jZSBwZW5hbHR5Lgo+ID4gCj4gPiBJdCBoYXMgb25seSBiZSAqY29tcGlsZS10ZXN0
ZWQqIGFuZCB0aGlzIGlzIGp1c3QgdG8ga25vdyBpZiB0aGUKPiA+IGFwcHJvYWNoIGlzIGZpbmUg
b3Igbm90LCB0aGVuIEkgd2lsbCBvcHRpbWl6ZSwgbWF5YmUgcmV3cml0ZSBhIGJpdCBhbmQKPiA+
IGZvcmNpYmx5IChhc2sgdG8pIHRlc3QgaXQuCj4gPiAKPiA+IEhhcHB5IG5ldyB5ZWFyIQo+ID4g
TWlxdcOobAo+ID4gCj4gPiAKPiA+IE1pcXVlbCBSYXluYWwgKDMpOgo+ID4gICBtdGQ6IHJhd25h
bmQ6IEFkZCB0aGUgbmFuZF9jaGlwLT5lcmFzZSBob29rCj4gPiAgIG10ZDogcmF3bmFuZDogQWRk
IHRoZSBuYW5kX2NoaXAtPndyaXRlX29vYiBob29rCj4gPiAgIG10ZDogcmF3bmFuZDogbWljcm9u
OiBBZGRyZXNzIHRoZSBzaGFsbG93IGVyYXNlIGlzc3VlCj4gPiAKPiA+ICBkYXRhX2J1ZiAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwgMjkwOTkgKysrKysrKysrKysrKysrKysrKysrKysrKysr
Cj4gPiAgZGF0YWJ1ZiAgICAgICAgICAgICAgICAgICAgICAgICAgICB8IDI5MDk5ICsrKysrKysr
KysrKysrKysrKysrKysrKysrKyAgCj4gCj4gVGhvc2UgdHdvIGZpbGVzIGFib3ZlIHNob3VsZCBw
cm9iYWJseSBub3QgYmUgcGFydCBvZiB0aGUgcGF0Y2ggc3VibWlzc2lvbi4KCkNyYXAuIEknbGwg
bm90IHJlc2VuZCBpbW1lZGlhdGVseSBhcyB0aGlzIGlzIGFuIFJGQywgSSBleHBlY3QKZmVlZGJh
Y2sgb24gdGhpcyBwcm9wb3NhbCBiZWZvcmUgc2VuZGluZyBhbiBhY3R1YWwgcGF0Y2guCgoKVGhh
bmtzLApNaXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
