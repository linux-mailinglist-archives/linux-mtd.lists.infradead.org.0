Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05B861BAE06
	for <lists+linux-mtd@lfdr.de>; Mon, 27 Apr 2020 21:33:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OJLvvuAt7XDOXk7GVn1GJJZffrRWegfOb3DtyvxnemA=; b=cggFe+2vgaDSAg
	feFk1P3RG2NBNdedcy2YQ4iOF/0HjuaOd764hfj4g3zlMbrUSzaEclmVolL8ZrUkfVftD2abwH3g/
	UqaMEkQ9umqe/fMg26f4DqfDnvTJExWSwcL3JgkCkiLuXQGxWpT0Np1OfNoI6bSvR2DHTyo+V4J6H
	J0cM4tJBTE1w9CISfBA+LRLA9XhvtuRViPj8aa9VmL4O9B3Xm1GFtxTgibtL1UnfKtH/4h3N6EB+h
	qvaYkzUuUqQ0TwK7w1syl86/Pw9OrvfdPKGnBQbAm64aO9HkTEGLsAR77JgV7uapQRBE3DBFXNfjs
	fpy0jCCwZnDESvxzQZkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT9VN-0003WA-HG; Mon, 27 Apr 2020 19:33:25 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT9VC-0003VT-7p
 for linux-mtd@lists.infradead.org; Mon, 27 Apr 2020 19:33:15 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 576D0FF805;
 Mon, 27 Apr 2020 19:33:11 +0000 (UTC)
Date: Mon, 27 Apr 2020 21:33:09 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH 01/17] mtd: rawnand: cafe: Get rid of an inaccurate
 kernel doc header
Message-ID: <20200427213309.2fc55017@xps13>
In-Reply-To: <20200427082028.394719-2-boris.brezillon@collabora.com>
References: <20200427082028.394719-1-boris.brezillon@collabora.com>
 <20200427082028.394719-2-boris.brezillon@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_123314_421511_B60F4D6C 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
PiB3cm90ZSBvbiBNb24sIDI3IEFwcgoyMDIwIDEwOjIwOjExICswMjAwOgoKPiBEcml2ZXIgZmls
ZXMgYXJlIG5vdCBwYXJzZWQgZm9yIGRvYyBnZW5lcmF0aW9uLCBhbmQgdGhlCj4gY2FmZV9uYW5k
X3JlYWRfcGFnZSgpIGtlcm5lbC1kb2MgaGVhZGVyIHdhcyB3cm9uZywgc28gbGV0J3MgZ2V0IHJp
ZCBvZgo+IGl0LgoKUmVhbGx5PyBJIGRpZG4ndCBrbm93LiBJIGxpa2Uga2VybmVsIGRvYyBzeW50
YXggd2hpY2ggaXMgc2ltcGxlIGFuZApjb2xvcmZ1bCB3aGVuIHlvdSBoYXZlIGEgZGVjZW50IGVk
aXRvciBidXQgaW4gdGhpcyBjYXNlIGl0IGlzIGluZGVlZAp1c2VsZXNzLgoKUmV2aWV3ZWQtYnk6
IE1pcXVlbCBSYXluYWwgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5jb20+CiAKPiAKPiBTaWduZWQt
b2ZmLWJ5OiBCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPgo+
IC0tLQo+ICBkcml2ZXJzL210ZC9uYW5kL3Jhdy9jYWZlX25hbmQuYyB8IDkgKystLS0tLS0tCj4g
IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCj4gCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbXRkL25hbmQvcmF3L2NhZmVfbmFuZC5jIGIvZHJpdmVycy9tdGQv
bmFuZC9yYXcvY2FmZV9uYW5kLmMKPiBpbmRleCAyYTBkZjEzZGY1ZjMuLjEyOTYzODBhNDk5NiAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL210ZC9uYW5kL3Jhdy9jYWZlX25hbmQuYwo+ICsrKyBiL2Ry
aXZlcnMvbXRkL25hbmQvcmF3L2NhZmVfbmFuZC5jCj4gQEAgLTM1NywxMyArMzU3LDggQEAgc3Rh
dGljIGludCBjYWZlX25hbmRfcmVhZF9vb2Ioc3RydWN0IG5hbmRfY2hpcCAqY2hpcCwgaW50IHBh
Z2UpCj4gIAo+ICAJcmV0dXJuIG5hbmRfcmVhZF9vb2Jfb3AoY2hpcCwgcGFnZSwgMCwgY2hpcC0+
b29iX3BvaSwgbXRkLT5vb2JzaXplKTsKPiAgfQo+IC0vKioKPiAtICogY2FmZV9uYW5kX3JlYWRf
cGFnZV9zeW5kcm9tZSAtIFtSRVBMQUNFQUJMRV0gaGFyZHdhcmUgZWNjIHN5bmRyb21lIGJhc2Vk
IHBhZ2UgcmVhZAo+IC0gKiBAbXRkOgltdGQgaW5mbyBzdHJ1Y3R1cmUKPiAtICogQGNoaXA6CW5h
bmQgY2hpcCBpbmZvIHN0cnVjdHVyZQo+IC0gKiBAYnVmOglidWZmZXIgdG8gc3RvcmUgcmVhZCBk
YXRhCj4gLSAqIEBvb2JfcmVxdWlyZWQ6CWNhbGxlciBleHBlY3RzIE9PQiBkYXRhIHJlYWQgdG8g
Y2hpcC0+b29iX3BvaQo+IC0gKgo+ICsKPiArLyoKPiAgICogVGhlIGh3IGdlbmVyYXRvciBjYWxj
dWxhdGVzIHRoZSBlcnJvciBzeW5kcm9tZSBhdXRvbWF0aWNhbGx5LiBUaGVyZWZvcmUKPiAgICog
d2UgbmVlZCBhIHNwZWNpYWwgb29iIGxheW91dCBhbmQgaGFuZGxpbmcuCj4gICAqLwoKClRoYW5r
cywKTWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
