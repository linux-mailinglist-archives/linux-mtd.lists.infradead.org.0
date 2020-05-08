Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72BFE1CA7FD
	for <lists+linux-mtd@lfdr.de>; Fri,  8 May 2020 12:11:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kAdcreXkBN4BKcQMiB2W7wapw5L6oTsxv2VZC+Rg0/E=; b=npEduJsiDQ7uOx
	vqMDJdU9n/1FAoZbLLkpjj6H03ttfcrCxxzrGudBmLrKVq4wcAzK8H383r5uwlZPjLYIq7ch0WZBC
	/BNWf89391He1fWwA8lxpcRAVJE3puf3TIwvaxQRWBHxkZcdo4M04Mdvd5gm+ytWx10DFVziEEgrE
	tpWXtPkKCS7HrNjjf4eROVXCDJUAeVQgsu/rndYjpP4i8QWYtgYy+5rI6Lkz02Mp+KyYK/Sev5zXy
	U63XMLUAXt4uVel3f3mJ9jIQfSF+Jqt6jBSt20BKbTgdvErZqB9YcIrQk40UZA2TEM7ebJhkSZGNv
	RQjLieOfQJVmWfZvejyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWzyL-0000D5-HO; Fri, 08 May 2020 10:11:13 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWzxv-00005D-Od; Fri, 08 May 2020 10:10:49 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id A4EC9200003;
 Fri,  8 May 2020 10:10:42 +0000 (UTC)
Date: Fri, 8 May 2020 12:10:41 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Robert Jarzmik <robert.jarzmik@free.fr>
Subject: Re: [PATCH 0/3] mtd: rawnand: Get rid of the cmx270 driver
Message-ID: <20200508121041.64f91276@xps13>
In-Reply-To: <20200429223134.789322-1-boris.brezillon@collabora.com>
References: <20200429223134.789322-1-boris.brezillon@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_031047_937994_D971FAF7 
X-CRM114-Status: GOOD (  13.77  )
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Arnd Bergmann <arnd@arndb.de>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, linux-mtd@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Mike Rapoport <mike@compulab.co.il>,
 Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgUm9iZXJ0LAoKQm9yaXMgQnJlemlsbG9uIDxib3Jpcy5icmV6aWxsb25AY29sbGFib3JhLmNv
bT4gd3JvdGUgb24gVGh1LCAzMCBBcHIKMjAyMCAwMDozMTozMSArMDIwMDoKCj4gSGVsbG8sCj4g
Cj4gQXMgcGFydCBvZiBteSBhdHRlbXB0IHRvIGNvbnZlcnQgYWxsIE5BTkQgZHJpdmVycyB0byBl
eGVjX29wKCkgSSBub3RpY2VkCj4gdGhlIGNteDI3MCBib2FyZCBkaWRuJ3QgcmVhbGx5IGRlc2Vy
dmUgYSBjdXN0b20gZHJpdmVyIHNpbmNlIG90aGVyIGJvYXJkcwo+IHVzaW5nIHRoZSBzYW1lIFNv
QyAoZW0teDI3MCB0byBuYW1lIG9uZSkgYXJlIHVzaW5nIHRoZSBnZW5fbmFuZCBkcml2ZXIuCj4g
SSB0aGluayB0aGUgb25seSBpc3N1ZSB3aXRoIHRoZSBDTS1YMjcwIGlzIHRoYXQgdGhlIGNoaXAg
aXMgY29ubmVjdGVkCj4gdG8gRFsxNjoyM10gKG9yIERbMTY6MzFdIGlmIGl0J3MgYSAxNmJpdCBi
dXMpLiBBZGp1c3RpbmcgdGhlIG1lbQo+IHJlc291cmNlIG9mZnNldCBzaG91bGQgZG8gdGhlIHRy
aWNrLgo+IAo+IEkgaG9wZSBzb21lb25lIHN0aWxsIGhhcyBhIGJvYXJkIHRvIHRlc3QgdGhhdC4K
PiAKPiBSZWdhcmRzLAo+IAo+IEJvcmlzCj4gCj4gQm9yaXMgQnJlemlsbG9uICgzKToKPiAgIEFS
TTogcHhhOiBjbS14MjcwOiBVc2UgZ2VuX25hbmQgdG8gZXhwb3NlIHRoZSBOQU5EIGRldmljZQo+
ICAgQVJNOiBweGE6IFN0b3Agc2VsZWN0aW5nIENPTkZJR19NVERfTkFORF9DTV9YMjcwCj4gICBt
dGQ6IHJhd25hbmQ6IFJlbW92ZSB0aGUgY214MjcwIE5BTkQgY29udHJvbGxlciBkcml2ZXIKPiAK
PiAgYXJjaC9hcm0vY29uZmlncy9jbV94Mnh4X2RlZmNvbmZpZyB8ICAgMSAtCj4gIGFyY2gvYXJt
L2NvbmZpZ3MvcHhhX2RlZmNvbmZpZyAgICAgfCAgIDEgLQo+ICBhcmNoL2FybS9tYWNoLXB4YS9j
bS14MjcwLmMgICAgICAgIHwgMTMxICsrKysrKysrKysrKysrKysKPiAgZHJpdmVycy9tdGQvbmFu
ZC9yYXcvS2NvbmZpZyAgICAgICB8ICAgNCAtCj4gIGRyaXZlcnMvbXRkL25hbmQvcmF3L01ha2Vm
aWxlICAgICAgfCAgIDEgLQo+ICBkcml2ZXJzL210ZC9uYW5kL3Jhdy9jbXgyNzBfbmFuZC5jIHwg
MjM2IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gIDYgZmlsZXMgY2hhbmdlZCwgMTMx
IGluc2VydGlvbnMoKyksIDI0MyBkZWxldGlvbnMoLSkKPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IGRy
aXZlcnMvbXRkL25hbmQvcmF3L2NteDI3MF9uYW5kLmMKPiAKCkFueSBjaGFuY2UgeW91IGdpdmUg
dGhpcyBzZXJpZXMgYSB0cnk/IEkgcGxhbiB0byBtZXJnZSBzZXZlcmFsIHNlcmllcwpsaWtlIHRo
YXQgZHVyaW5nIHRoaXMgcmVsZWFzZSwgYnV0IG9mIGNvdXJzZSBpZiB5b3UgY2FuIHRlc3QgaXQK
YmVmb3JlaGFuZHMgaXQncyBldmVuIGJldHRlciEKCgpUaGFua3MsCk1pcXXDqGwKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQg
ZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1tdGQvCg==
