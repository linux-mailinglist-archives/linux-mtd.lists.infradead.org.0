Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F711BAE09
	for <lists+linux-mtd@lfdr.de>; Mon, 27 Apr 2020 21:33:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vPO/iO87xYQSWlkORrsKe+l0Z97vvuUXXCsrD15bzG8=; b=MdFmVFTNbjYaph
	RIyoLWOOvlUYOYFhVsXmy4fewYRYUqagddbpSsE1t8L9Zodxf4Th+rqgH7vfaRjEso74qsgQmkSsf
	1/EpbPX2hanOqxL5JviTUL9FwM/L7hwmufgFaKgVrIREB0wHrFVni+ziGYpsMo/NWwNDYFUHDMuUR
	rDxdSdTVIsonuz75OkJYlRCkKdMdrExhavfxgthD5JkiZ5NZJWBpEvpU33s/CHOXQoZ0PTwm+8fJC
	1EF/gjnPaJjziibdmUAvRPpmARmjgb5a9trIv8tQh5cJ3vQ+ERRR46aLFyDNA8rYls9ux5mtEmZf0
	k2a0fbyF4OJqv1ILN3AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT9Vn-0003xU-MV; Mon, 27 Apr 2020 19:33:51 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT9Vb-0003wM-Vm
 for linux-mtd@lists.infradead.org; Mon, 27 Apr 2020 19:33:41 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id CA28EFF805;
 Mon, 27 Apr 2020 19:33:37 +0000 (UTC)
Date: Mon, 27 Apr 2020 21:33:36 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH 02/17] mtd: rawnand: cafe: Rename
 cafe_nand_write_page_lowlevel()
Message-ID: <20200427213336.291a47c6@xps13>
In-Reply-To: <20200427082028.394719-3-boris.brezillon@collabora.com>
References: <20200427082028.394719-1-boris.brezillon@collabora.com>
 <20200427082028.394719-3-boris.brezillon@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_123340_153964_AEC4E5F7 
X-CRM114-Status: GOOD (  11.97  )
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
PiB3cm90ZSBvbiBNb24sIDI3IEFwcgoyMDIwIDEwOjIwOjEyICswMjAwOgoKPiBMZXQncyByZW5h
bWUgdGhhdCBvbmUgY2FmZV9uYW5kX3dyaXRlX3BhZ2UoKSB0byBiZSBjb25zaXN0ZW50IHdpdGgg
b3RoZXIKPiBmdW5jdGlvbiBuYW1lcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBCb3JpcyBCcmV6aWxs
b24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPgo+IC0tLQo+ICBkcml2ZXJzL210ZC9u
YW5kL3Jhdy9jYWZlX25hbmQuYyB8IDggKysrKy0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5z
ZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tdGQv
bmFuZC9yYXcvY2FmZV9uYW5kLmMgYi9kcml2ZXJzL210ZC9uYW5kL3Jhdy9jYWZlX25hbmQuYwo+
IGluZGV4IDEyOTYzODBhNDk5Ni4uMDM5NjRlMDkyMjQzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
bXRkL25hbmQvcmF3L2NhZmVfbmFuZC5jCj4gKysrIGIvZHJpdmVycy9tdGQvbmFuZC9yYXcvY2Fm
ZV9uYW5kLmMKPiBAQCAtNTI1LDkgKzUyNSw5IEBAIHN0YXRpYyBzdHJ1Y3QgbmFuZF9iYnRfZGVz
Y3IgY2FmZV9iYnRfbWlycm9yX2Rlc2NyXzUxMiA9IHsKPiAgfTsKPiAgCj4gIAo+IC1zdGF0aWMg
aW50IGNhZmVfbmFuZF93cml0ZV9wYWdlX2xvd2xldmVsKHN0cnVjdCBuYW5kX2NoaXAgKmNoaXAs
Cj4gLQkJCQkJIGNvbnN0IHVpbnQ4X3QgKmJ1ZiwgaW50IG9vYl9yZXF1aXJlZCwKPiAtCQkJCQkg
aW50IHBhZ2UpCj4gK3N0YXRpYyBpbnQgY2FmZV9uYW5kX3dyaXRlX3BhZ2Uoc3RydWN0IG5hbmRf
Y2hpcCAqY2hpcCwKPiArCQkJCWNvbnN0IHVpbnQ4X3QgKmJ1ZiwgaW50IG9vYl9yZXF1aXJlZCwK
PiArCQkJCWludCBwYWdlKQo+ICB7Cj4gIAlzdHJ1Y3QgbXRkX2luZm8gKm10ZCA9IG5hbmRfdG9f
bXRkKGNoaXApOwo+ICAJc3RydWN0IGNhZmVfcHJpdiAqY2FmZSA9IG5hbmRfZ2V0X2NvbnRyb2xs
ZXJfZGF0YShjaGlwKTsKPiBAQCAtNjI4LDcgKzYyOCw3IEBAIHN0YXRpYyBpbnQgY2FmZV9uYW5k
X2F0dGFjaF9jaGlwKHN0cnVjdCBuYW5kX2NoaXAgKmNoaXApCj4gIAljYWZlLT5uYW5kLmVjYy5z
aXplID0gbXRkLT53cml0ZXNpemU7Cj4gIAljYWZlLT5uYW5kLmVjYy5ieXRlcyA9IDE0Owo+ICAJ
Y2FmZS0+bmFuZC5lY2Muc3RyZW5ndGggPSA0Owo+IC0JY2FmZS0+bmFuZC5lY2Mud3JpdGVfcGFn
ZSA9IGNhZmVfbmFuZF93cml0ZV9wYWdlX2xvd2xldmVsOwo+ICsJY2FmZS0+bmFuZC5lY2Mud3Jp
dGVfcGFnZSA9IGNhZmVfbmFuZF93cml0ZV9wYWdlOwo+ICAJY2FmZS0+bmFuZC5lY2Mud3JpdGVf
b29iID0gY2FmZV9uYW5kX3dyaXRlX29vYjsKPiAgCWNhZmUtPm5hbmQuZWNjLnJlYWRfcGFnZSA9
IGNhZmVfbmFuZF9yZWFkX3BhZ2U7Cj4gIAljYWZlLT5uYW5kLmVjYy5yZWFkX29vYiA9IGNhZmVf
bmFuZF9yZWFkX29vYjsKCgpSZXZpZXdlZC1ieTogTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5h
bEBib290bGluLmNvbT4KCgpUaGFua3MsCk1pcXXDqGwKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWls
aW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1tdGQvCg==
