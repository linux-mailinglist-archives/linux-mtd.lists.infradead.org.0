Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D6811BAE70
	for <lists+linux-mtd@lfdr.de>; Mon, 27 Apr 2020 21:49:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cgWvONud7KUdWT7i/l7+2OErC94rSMGO4Fey7I1O/Yc=; b=UtGT62eXuLMTi+
	ywYx+ejQdaaWfjXFd8JfGsNgJRxna1NKPpKKAXTXKZjlMlALqpRpieVnSaMz8KjZ5e+9CDv9k6F0d
	y13zQoCqEZUjSEtrGBt8t28GKxESm3YxMhvQV6FfssCKUcFundZG2JLfuZcMn+B3rhP6Emz6RkrSV
	ns2WYSzqUihd1dfHiHltutNgOjv6EqPpjz3n8isFWC27K9NuegWTZ6ZxatF+qllUIx0RIsZlIDce0
	wykkAFqmGrMEsDGHl/n1Al6QQKwP6PJYtQlHNFgwgJ7r9SsZzwdup+XbR4gTp1bvHIQAD7/CQSXig
	/LUEe3gDs0nLWPvmZyFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT9lH-0002a0-3l; Mon, 27 Apr 2020 19:49:51 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT9l2-0002Tn-BX
 for linux-mtd@lists.infradead.org; Mon, 27 Apr 2020 19:49:37 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id C81C9240003;
 Mon, 27 Apr 2020 19:49:33 +0000 (UTC)
Date: Mon, 27 Apr 2020 21:49:32 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH 10/17] mtd: rawnand: cafe: Explicitly inherit from
 nand_controller
Message-ID: <20200427214932.0067c814@xps13>
In-Reply-To: <20200427082028.394719-11-boris.brezillon@collabora.com>
References: <20200427082028.394719-1-boris.brezillon@collabora.com>
 <20200427082028.394719-11-boris.brezillon@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_124936_547476_7B4A16B9 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-mtd@lists.infradead.org, Tudor Ambarus <tudor.ambarus@microchip.com>,
 David Woodhouse <dwmw2@infradead.org>, Vignesh Raghavendra <vigneshr@ti.com>,
 Richard Weinberger <richard@nod.at>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgQm9yaXMsCgpCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29t
PiB3cm90ZSBvbiBNb24sIDI3IEFwcgoyMDIwIDEwOjIwOjIwICswMjAwOgoKPiBFeHBsaWNpdGx5
IGluaGVyaXQgZnJvbSBuYW5kX2NvbnRyb2xsZXIgaW5zdGVhZCBvZiB1c2luZyB0aGUgZHVtbXkK
PiBjb250cm9sbGVyIG9iamVjdC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBCb3JpcyBCcmV6aWxsb24g
PGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPgo+IC0tLQo+ICBkcml2ZXJzL210ZC9uYW5k
L3Jhdy9jYWZlX25hbmQuYyB8IDUgKysrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9u
cygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL210ZC9uYW5kL3Jh
dy9jYWZlX25hbmQuYyBiL2RyaXZlcnMvbXRkL25hbmQvcmF3L2NhZmVfbmFuZC5jCj4gaW5kZXgg
MzQ4ZGViYmMwNGFmLi4yODI1NDg5YTcxYjggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tdGQvbmFu
ZC9yYXcvY2FmZV9uYW5kLmMKPiArKysgYi9kcml2ZXJzL210ZC9uYW5kL3Jhdy9jYWZlX25hbmQu
Ywo+IEBAIC0xNDYsNiArMTQ2LDcgQEAKPiAgI2RlZmluZSBDQUZFX0ZJRUxEX0dFVChyZWcsIGZp
ZWxkLCB2YWwpCQlGSUVMRF9HRVQoQ0FGRV8jI3JlZyMjXyMjZmllbGQsIHZhbCkKPiAgCj4gIHN0
cnVjdCBjYWZlX3ByaXYgewo+ICsJc3RydWN0IG5hbmRfY29udHJvbGxlciBiYXNlOwo+ICAJc3Ry
dWN0IG5hbmRfY2hpcCBuYW5kOwo+ICAJc3RydWN0IHBjaV9kZXYgKnBkZXY7Cj4gIAl2b2lkIF9f
aW9tZW0gKm1taW87Cj4gQEAgLTkyMCw3ICs5MjEsOSBAQCBzdGF0aWMgaW50IGNhZmVfbmFuZF9w
cm9iZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwKPiAgCWNhZmUtPnVzZWRtYSA9IDA7Cj4gIAo+ICAJ
LyogU2NhbiB0byBmaW5kIGV4aXN0ZW5jZSBvZiB0aGUgZGV2aWNlICovCj4gLQljYWZlLT5uYW5k
LmxlZ2FjeS5kdW1teV9jb250cm9sbGVyLm9wcyA9ICZjYWZlX25hbmRfY29udHJvbGxlcl9vcHM7
Cj4gKwluYW5kX2NvbnRyb2xsZXJfaW5pdCgmY2FmZS0+YmFzZSk7Cj4gKwljYWZlLT5iYXNlLm9w
cyA9ICZjYWZlX25hbmRfY29udHJvbGxlcl9vcHM7Cj4gKwljYWZlLT5uYW5kLmNvbnRyb2xsZXIg
PSAmY2FmZS0+YmFzZTsKPiAgCWVyciA9IG5hbmRfc2NhbigmY2FmZS0+bmFuZCwgMik7Cj4gIAlp
ZiAoZXJyKQo+ICAJCWdvdG8gb3V0X2lycTsKClJldmlld2VkLWJ5OiBNaXF1ZWwgUmF5bmFsIDxt
aXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPgoKClRoYW5rcywKTWlxdcOobAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNj
dXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LW10ZC8K
