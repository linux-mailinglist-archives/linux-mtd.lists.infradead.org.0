Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D111BBA31
	for <lists+linux-mtd@lfdr.de>; Tue, 28 Apr 2020 11:46:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LVUo7tR41ON/l0Y28KLhUR2gDjX5hRlTMBfRnR8Q9tQ=; b=rNO0FdaZLel133
	i47AmY2LIc3nZ+u+5lVtkI4VtVrlaZG4Vkah7nvQghwuU7Me76DyWjXcz7UxSQ3ffAa/t1q5njhvu
	t1YVAfwTnhGolHO7Ei5S5ZgWctmpYIrcGfE7j5DFqM0xlvuDUIjSfoVqay9aMquY+tlPmUucz62GE
	O5Lm6aGNo1LJRebvVc1enqPCSJ3z/3vpQZabcLkgvH+GBPxcON7lnyZFSTd1iZc2z3kZ12TikFd/e
	mv3DzKrKhstbJuiytms9K9zWmj/NKdoaI9B9L4vSJmsHJDTN5pNZtxVS6rbZPp3vkdvmtLuJm+fac
	LIvKx67NQjAwmYQ7f2+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTMor-0004jX-Fc; Tue, 28 Apr 2020 09:46:25 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTMoh-0004QN-JH
 for linux-mtd@lists.infradead.org; Tue, 28 Apr 2020 09:46:17 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 6439620000C;
 Tue, 28 Apr 2020 09:46:09 +0000 (UTC)
Date: Tue, 28 Apr 2020 11:46:07 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH 01/10] mtd: rawnand: Translate obscure bitfields into
 readable macros
Message-ID: <20200428114608.54b69f1c@xps13>
In-Reply-To: <20200425103320.4b409216@collabora.com>
References: <20200424173631.14311-1-miquel.raynal@bootlin.com>
 <20200424173631.14311-2-miquel.raynal@bootlin.com>
 <20200425103320.4b409216@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_024615_788809_EE0DC5E8 
X-CRM114-Status: GOOD (  10.24  )
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
Cc: Michal Simek <monstr@monstr.eu>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgQm9yaXMsCgpCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29t
PiB3cm90ZSBvbiBTYXQsIDI1IEFwcgoyMDIwIDEwOjMzOjIwICswMjAwOgoKPiBPbiBGcmksIDI0
IEFwciAyMDIwIDE5OjM2OjIyICswMjAwCj4gTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBi
b290bGluLmNvbT4gd3JvdGU6Cj4gCj4gPiAgLyoKPiA+ICAgKiBUaGlzIG9wdGlvbiBjb3VsZCBi
ZSBkZWZpbmVkIGJ5IGNvbnRyb2xsZXIgZHJpdmVycyB0byBwcm90ZWN0IGFnYWluc3QKPiA+ICAg
KiBrbWFwJ2VkLCB2bWFsbG9jJ2VkIGhpZ2htZW0gYnVmZmVycyBiZWluZyBwYXNzZWQgZnJvbSB1
cHBlciBsYXllcnMKPiA+ICAgKi8KPiA+IC0jZGVmaW5lIE5BTkRfVVNFX0JPVU5DRV9CVUZGRVIJ
MHgwMDEwMDAwMAo+ID4gKyNkZWZpbmUgTkFORF9VU0VfQk9VTkNFX0JVRkZFUglCSVQoMjIpICAK
PiAKPiAJCQkJCV5CSVQoMjApCj4gCj4gPiAgCj4gPiAgLyoKPiA+ICAgKiBJbiBjYXNlIHlvdXIg
Y29udHJvbGxlciBpcyBpbXBsZW1lbnRpbmcgLT5sZWdhY3kuY21kX2N0cmwoKSBhbmQgaXMgcmVs
eWluZwo+ID4gQEAgLTIwNywyMCArMjA3LDIwIEBAIGVudW0gbmFuZF9lY2NfYWxnbyB7Cj4gPiAg
ICogSWYgeW91ciBjb250cm9sbGVyIGFscmVhZHkgdGFrZXMgY2FyZSBvZiB0aGlzIGRlbGF5LCB5
b3UgZG9uJ3QgbmVlZCB0byBzZXQKPiA+ICAgKiB0aGlzIGZsYWcuCj4gPiAgICovCj4gPiAtI2Rl
ZmluZSBOQU5EX1dBSVRfVENDUwkJMHgwMDIwMDAwMAo+ID4gKyNkZWZpbmUgTkFORF9XQUlUX1RD
Q1MJCUJJVCgyMSkKPiA+ICAKPiA+ICAvKgo+ID4gICAqIFdoZXRoZXIgdGhlIE5BTkQgY2hpcCBp
cyBhIGJvb3QgbWVkaXVtLiBEcml2ZXJzIG1pZ2h0IHVzZSB0aGlzIGluZm9ybWF0aW9uCj4gPiAg
ICogdG8gc2VsZWN0IEVDQyBhbGdvcml0aG1zIHN1cHBvcnRlZCBieSB0aGUgYm9vdCBST00gb3Ig
c2ltaWxhciByZXN0cmljdGlvbnMuCj4gPiAgICovCj4gPiAtI2RlZmluZSBOQU5EX0lTX0JPT1Rf
TUVESVVNCTB4MDA0MDAwMDAKPiA+ICsjZGVmaW5lIE5BTkRfSVNfQk9PVF9NRURJVU0JQklUKDIw
KSAgCj4gCj4gCQkJCV4gQklUKDIyKQo+IAo+IFRoZSByZXN0IGxvb2tzIGdvb2QsIGZlZWwgZnJl
IHRvIGFkZAo+IAo+IFJldmlld2VkLWJ5OiBCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxv
bkBjb2xsYWJvcmEuY29tPgo+IAo+IG9uY2UgdGhvc2UgMiBtaXN0YWtlcyBhcmUgZml4ZWQuCgpN
bWggeWVhaCBhYnNvbHV0ZWx5LCBmaXhlZC4KCgpUaGFua3MsCk1pcXXDqGwKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlz
Y3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1tdGQvCg==
