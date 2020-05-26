Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F1481BAE0F
	for <lists+linux-mtd@lfdr.de>; Mon, 27 Apr 2020 21:34:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kiWrxZ1cKPO3lutymsz0dCu0ZFDALWCPfQvb03RjCnw=; b=EediLfy4X8k0BZ
	fStUoeLQK8J3ccE6ErcNzkhFcf9p8vvtH/hZ0o3Az/KubQxUOkrvZtZ2MhnQUf4v2xTedRm66ifRs
	FqZ/8FOfdRntSpwFbZ2qVX7ZpB88r/XSeit1q8PmqbipqsxKeqi0QBW6QlWYpCJyFp1BnW3vNdJQz
	bmrKNyAT7wl/ZAxviEJafveEjNjf0rOzbjIah5RevOcihMX8hvp82T1eKHF6NbhBrsXi0LMEL6zr9
	gZScjfYvwa1kmjJkv7e2inNWv3iQwceNALkMPepe62OJUnjPwrH7+6Pf1G2io5DU8qgVHWYg3hkx3
	LGO6s9RdEZBIEe+gPrDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT9WR-0004G4-7l; Mon, 27 Apr 2020 19:34:31 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT9WF-0004FG-7K
 for linux-mtd@lists.infradead.org; Mon, 27 Apr 2020 19:34:20 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 2666A200006;
 Mon, 27 Apr 2020 19:34:16 +0000 (UTC)
Date: Mon, 27 Apr 2020 21:34:16 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH 03/17] mtd: rawnand: cafe: Use a correct ECC mode and
 pass the ECC alg
Message-ID: <20200427213416.5d2b3474@xps13>
In-Reply-To: <20200427082028.394719-4-boris.brezillon@collabora.com>
References: <20200427082028.394719-1-boris.brezillon@collabora.com>
 <20200427082028.394719-4-boris.brezillon@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_123419_397674_DDBD547D 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
PiB3cm90ZSBvbiBNb24sIDI3IEFwcgoyMDIwIDEwOjIwOjEzICswMjAwOgoKPiBUaGUgTkFORF9F
Q0NfSFdfU1lORFJPTUUgbmFtZSBpcyBhIGJpdCBtaXNsZWFkaW5nLiBJdCdzIGFjdHVhbGx5IHVz
ZWQKPiBmb3IgZHJpdmVycyB0aGF0IGludGVybGVhdmUgZGF0YSBhbmQgRUNDIGJ5dGVzIGluc2lk
ZSBhIHBhZ2UsIHdoaWNoIGlzCj4gbm90IHRoZSBjYXNlIGhlcmUuIExldCdzIGZpeCB0aGF0IGFu
ZCBwYXNzIHRoZSBFQ0MgYWxnb3JpdGhtIHVzZWQgYnkgdGhlCj4gRUNDIGVuZ2luZS4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEu
Y29tPgo+IC0tLQo+ICBkcml2ZXJzL210ZC9uYW5kL3Jhdy9jYWZlX25hbmQuYyB8IDMgKystCj4g
IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9tdGQvbmFuZC9yYXcvY2FmZV9uYW5kLmMgYi9kcml2ZXJzL210ZC9u
YW5kL3Jhdy9jYWZlX25hbmQuYwo+IGluZGV4IDAzOTY0ZTA5MjI0My4uNDdhYWNmYWI4ZWNiIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvbXRkL25hbmQvcmF3L2NhZmVfbmFuZC5jCj4gKysrIGIvZHJp
dmVycy9tdGQvbmFuZC9yYXcvY2FmZV9uYW5kLmMKPiBAQCAtNjI0LDcgKzYyNCw4IEBAIHN0YXRp
YyBpbnQgY2FmZV9uYW5kX2F0dGFjaF9jaGlwKHN0cnVjdCBuYW5kX2NoaXAgKmNoaXApCj4gIAkJ
Z290byBvdXRfZnJlZV9kbWE7Cj4gIAl9Cj4gIAo+IC0JY2FmZS0+bmFuZC5lY2MubW9kZSA9IE5B
TkRfRUNDX0hXX1NZTkRST01FOwo+ICsJY2FmZS0+bmFuZC5lY2MubW9kZSA9IE5BTkRfRUNDX0hX
Owo+ICsJY2FmZS0+bmFuZC5lY2MuYWxnbyA9IE5BTkRfRUNDX1JTOwo+ICAJY2FmZS0+bmFuZC5l
Y2Muc2l6ZSA9IG10ZC0+d3JpdGVzaXplOwo+ICAJY2FmZS0+bmFuZC5lY2MuYnl0ZXMgPSAxNDsK
PiAgCWNhZmUtPm5hbmQuZWNjLnN0cmVuZ3RoID0gNDsKCgpSZXZpZXdlZC1ieTogTWlxdWVsIFJh
eW5hbCA8bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4KCgpUaGFua3MsCk1pcXXDqGwKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBN
VEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
