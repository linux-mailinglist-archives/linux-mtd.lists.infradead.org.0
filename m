Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B6191BAE16
	for <lists+linux-mtd@lfdr.de>; Mon, 27 Apr 2020 21:35:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0GalzX8crJpYV9CrkL2fB7j8CSiGq7Gf2Y0uUGrbSIQ=; b=HzVrJsMs85vhUE
	wnECI7qr8YVbUgkbSrOHHFuqivRx9/nTMzafR3q6m+LXBBfYTrbAxpfhCfNWTOECJ21CuiJpBVSSO
	/lzUS0BFPejcgGjSkRwlsEm19j+CQaeMCM10axQlRGW7BuFiCMt0mZgJ5FRwN44tzgBtkT/BzXk/6
	4vNgNNVyhPq6UBGbCjoSBhYmka6dZ75PrIWlizocb9RFNyYmTA0bouDsE/yJyZARPkBlgwKolaLO6
	TGHzuUNls5whevRViTBC12gOvUlZis/+YNf8PR0PFFLVVWRop/C2sLl1oDL2aQVMXra5oWJOStB/V
	l9U3ruGVWqJh1es/d1uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT9XV-0007EX-1m; Mon, 27 Apr 2020 19:35:37 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT9XL-0007Da-7m
 for linux-mtd@lists.infradead.org; Mon, 27 Apr 2020 19:35:28 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id C8A44240002;
 Mon, 27 Apr 2020 19:35:21 +0000 (UTC)
Date: Mon, 27 Apr 2020 21:35:20 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH 04/17] mtd: rawnand: cafe: Include linux/io.h instead of
 asm/io.h
Message-ID: <20200427213520.4590b116@xps13>
In-Reply-To: <20200427082028.394719-5-boris.brezillon@collabora.com>
References: <20200427082028.394719-1-boris.brezillon@collabora.com>
 <20200427082028.394719-5-boris.brezillon@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_123527_417166_08AEF6A4 
X-CRM114-Status: GOOD (  10.75  )
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
PiB3cm90ZSBvbiBNb24sIDI3IEFwcgoyMDIwIDEwOjIwOjE0ICswMjAwOgoKPiBEcml2ZXJzIHNo
b3VsZCBpbmNsdWRlIHRoZSBhc20gaGVhZGVycyBkaXJlY3RseS4KCiAgICAgICAgICAgICAgICBu
b3QgPwoKPiBTaWduZWQtb2ZmLWJ5OiBCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBj
b2xsYWJvcmEuY29tPgoKV2l0aCB0aGlzIGNoYW5nZWQsCgpSZXZpZXdlZC1ieTogTWlxdWVsIFJh
eW5hbCA8bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMvbXRkL25h
bmQvcmF3L2NhZmVfbmFuZC5jIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tdGQvbmFuZC9yYXcv
Y2FmZV9uYW5kLmMgYi9kcml2ZXJzL210ZC9uYW5kL3Jhdy9jYWZlX25hbmQuYwo+IGluZGV4IDQ3
YWFjZmFiOGVjYi4uMTU2YTMwOGI1MzBiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbXRkL25hbmQv
cmF3L2NhZmVfbmFuZC5jCj4gKysrIGIvZHJpdmVycy9tdGQvbmFuZC9yYXcvY2FmZV9uYW5kLmMK
PiBAQCAtMjMsNyArMjMsNyBAQAo+ICAjaW5jbHVkZSA8bGludXgvZG1hLW1hcHBpbmcuaD4KPiAg
I2luY2x1ZGUgPGxpbnV4L3NsYWIuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgo+IC0j
aW5jbHVkZSA8YXNtL2lvLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9pby5oPgo+ICAKPiAgI2RlZmlu
ZSBDQUZFX05BTkRfQ1RSTDEJCTB4MDAKPiAgI2RlZmluZSBDQUZFX05BTkRfQ1RSTDIJCTB4MDQK
ClRoYW5rcywKTWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
