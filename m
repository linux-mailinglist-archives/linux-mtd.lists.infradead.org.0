Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1491BAE64
	for <lists+linux-mtd@lfdr.de>; Mon, 27 Apr 2020 21:47:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uiJWTwQuE//gYKgCI/rBo+6Ur+wJzp5A+Xe1L49VdwE=; b=ratJR6PWcBMPQJ
	jLZh15LfBweI/m1OwcL66w4DlIh+HuMfwvs0WY9A4BhFFt3geNOXjlhj3vAD+WmexfebpZVUu3zyF
	c6Ch8PjAR7ad9paaH8EF5npB2mRYJF2CoX4Ovb5H+ppKpF4c5EnhAtq+FYxfe0Oz0wZIvafJYGFlt
	6HYxP3r60syKCxrd3pUvogAWmFhwadl8fOLOdCwPdY4wWAxQXjGEPrSTrKZ4q+kiLJX7VWMzU1lRP
	YDIvo3JhT8EVSY6S6oHILDaD/UpXqj9DgMj+sxjHr2JcHHkTVFXslegkZSscHpop8MtpyQbNK/e51
	oogUZCvRAjolLTgMqLKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT9jF-0001WX-5C; Mon, 27 Apr 2020 19:47:45 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT9ir-0001P1-8t
 for linux-mtd@lists.infradead.org; Mon, 27 Apr 2020 19:47:22 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 72154240007;
 Mon, 27 Apr 2020 19:47:18 +0000 (UTC)
Date: Mon, 27 Apr 2020 21:47:17 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH 09/17] mtd: rawnand: cafe: Get rid of a useless label
Message-ID: <20200427214717.4a3dec3e@xps13>
In-Reply-To: <20200427082028.394719-10-boris.brezillon@collabora.com>
References: <20200427082028.394719-1-boris.brezillon@collabora.com>
 <20200427082028.394719-10-boris.brezillon@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_124721_445637_D01D9965 
X-CRM114-Status: GOOD (  12.44  )
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
PiB3cm90ZSBvbiBNb24sIDI3IEFwcgoyMDIwIDEwOjIwOjE5ICswMjAwOgoKPiBXZSBjYW4gcmV0
dXJuIDAgZGlyZWN0bHkgaW5zdGVhZCBvZiBicmFuY2hpbmcgdG8gdGhlIG91dCBsYWJlbC4KPiAK
PiBTaWduZWQtb2ZmLWJ5OiBCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJv
cmEuY29tPgo+IC0tLQo+ICBkcml2ZXJzL210ZC9uYW5kL3Jhdy9jYWZlX25hbmQuYyB8IDMgKy0t
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9tdGQvbmFuZC9yYXcvY2FmZV9uYW5kLmMgYi9kcml2ZXJzL210
ZC9uYW5kL3Jhdy9jYWZlX25hbmQuYwo+IGluZGV4IDNlYWI1N2U2MzIxNS4uMzQ4ZGViYmMwNGFm
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbXRkL25hbmQvcmF3L2NhZmVfbmFuZC5jCj4gKysrIGIv
ZHJpdmVycy9tdGQvbmFuZC9yYXcvY2FmZV9uYW5kLmMKPiBAQCAtOTMyLDcgKzkzMiw3IEBAIHN0
YXRpYyBpbnQgY2FmZV9uYW5kX3Byb2JlKHN0cnVjdCBwY2lfZGV2ICpwZGV2LAo+ICAJaWYgKGVy
cikKPiAgCQlnb3RvIG91dF9jbGVhbnVwX25hbmQ7Cj4gIAo+IC0JZ290byBvdXQ7Cj4gKwlyZXR1
cm4gMDsKPiAgCj4gICBvdXRfY2xlYW51cF9uYW5kOgo+ICAJbmFuZF9jbGVhbnVwKCZjYWZlLT5u
YW5kKTsKPiBAQCAtOTQzLDcgKzk0Myw2IEBAIHN0YXRpYyBpbnQgY2FmZV9uYW5kX3Byb2JlKHN0
cnVjdCBwY2lfZGV2ICpwZGV2LAo+ICAJCSAgICBHTE9CQUxfSVJRX01BU0spOwo+ICAgb3V0X2lv
cjoKPiAgCXBjaV9pb3VubWFwKHBkZXYsIGNhZmUtPm1taW8pOwo+IC0gb3V0Ogo+ICAJcmV0dXJu
IGVycjsKPiAgfQo+ICAKCgpSZXZpZXdlZC1ieTogTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5h
bEBib290bGluLmNvbT4KCgpUaGFua3MsCk1pcXXDqGwKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWls
aW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1tdGQvCg==
