Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BAE41F620C
	for <lists+linux-mtd@lfdr.de>; Thu, 11 Jun 2020 09:16:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PKNk+oQpoos0uy2kEeZ7x8oQd+sSZH32jmGmdP3HdfI=; b=FVcIIss3qn+EMW
	DJ+E39v8u+uEEknqei40yd+ZEvqis3Qtj+g1LUYk5c8cvSXwPEyoglZgkSNno+6GHEPAAvo9lS6vC
	nhiPvj6N8QCMfNgI0PToJl4HrSp2alB6nZO39CSjn/qK8nA2z03qzRm+h6Ae8dX4fQjduSkcFLYqF
	/7tGsyHEOqze7hK60dp9mYWhgwZVKiIMoZiiESBu4gBuPIS6Ic5+mlHZif9G3RQ+qrUyUrIqi/5xN
	TLV4umUlbiVKQsv5PpEl1LoGEEaar/R7PCNNynnUPClCcmajUZoiTJnpJ+5zeNBWavrlEOtOzZmRz
	nX1v75e7tUklOv5/uyiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjHRg-0000Ud-SY; Thu, 11 Jun 2020 07:16:16 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjHRZ-0000U3-05
 for linux-mtd@lists.infradead.org; Thu, 11 Jun 2020 07:16:10 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 0FEE5E0012;
 Thu, 11 Jun 2020 07:16:05 +0000 (UTC)
Date: Thu, 11 Jun 2020 09:16:04 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Kamal Dasu <kdasu.kdev@gmail.com>
Subject: Re: [PATCH  1/2] mtd: rawnand: brcmnand: Don't default to edu transfer
Message-ID: <20200611091604.1bec2418@xps13>
In-Reply-To: <20200611054454.2547-1-kdasu.kdev@gmail.com>
References: <20200611054454.2547-1-kdasu.kdev@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_001609_173477_29D3F45B 
X-CRM114-Status: GOOD (  13.75  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
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
 linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com,
 Brian Norris <computersforpeace@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgS2FtYWwsCgpLYW1hbCBEYXN1IDxrZGFzdS5rZGV2QGdtYWlsLmNvbT4gd3JvdGUgb24gVGh1
LCAxMSBKdW4gMjAyMCAwMTo0NDo1MwotMDQwMDoKCj4gV2hlbiBmbGFzaC1kbWEgaXMgYWJzZW50
IGRvIG5vdCBkZWZhdWx0IHRvIHVzaW5nIGZsYXNoLWVkdS4KPiBNYWtlIHN1cmUgZmxhc2gtZWR1
IGlzIGVuYWJsZWQgYmVmb3JlIHNldHRpbmcgRURVIHRyYW5zZmVyCj4gZnVuY3Rpb24uCj4gCj4g
Rml4ZXM6IGE1ZDUzYWQyNmE4YiAoIm10ZDogcmF3bmFuZDogYnJjbW5hbmQ6IEFkZCBzdXBwb3J0
IGZvciBmbGFzaC1lZHUgZm9yIGRtYSB0cmFuc2ZlcnMiKQo+IFNpZ25lZC1vZmYtYnk6IEthbWFs
IERhc3UgPGtkYXN1LmtkZXZAZ21haWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL210ZC9uYW5kL3Jh
dy9icmNtbmFuZC9icmNtbmFuZC5jIHwgNSArKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNl
cnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL210ZC9u
YW5kL3Jhdy9icmNtbmFuZC9icmNtbmFuZC5jIGIvZHJpdmVycy9tdGQvbmFuZC9yYXcvYnJjbW5h
bmQvYnJjbW5hbmQuYwo+IGluZGV4IDhmOWZmYjQ2YTA5Zi4uMGMxZDZlNTQzNTg2IDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvbXRkL25hbmQvcmF3L2JyY21uYW5kL2JyY21uYW5kLmMKPiArKysgYi9k
cml2ZXJzL210ZC9uYW5kL3Jhdy9icmNtbmFuZC9icmNtbmFuZC5jCj4gQEAgLTI5NTMsOCArMjk1
Myw5IEBAIGludCBicmNtbmFuZF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2LCBz
dHJ1Y3QgYnJjbW5hbmRfc29jICpzb2MpCj4gIAkJaWYgKHJldCA8IDApCj4gIAkJCWdvdG8gZXJy
Owo+ICAKPiAtCQkvKiBzZXQgZWR1IHRyYW5zZmVyIGZ1bmN0aW9uIHRvIGNhbGwgKi8KPiAtCQlj
dHJsLT5kbWFfdHJhbnMgPSBicmNtbmFuZF9lZHVfdHJhbnM7Cj4gKwkJaWYgKGhhc19lZHUoY3Ry
bCkpCj4gKwkJCS8qIHNldCBlZHUgdHJhbnNmZXIgZnVuY3Rpb24gdG8gY2FsbCAqLwo+ICsJCQlj
dHJsLT5kbWFfdHJhbnMgPSBicmNtbmFuZF9lZHVfdHJhbnM7CgpEb2VzIHRoaXMgZmFsbGJhY2sg
dG8gcmV0dXJuaW5nIGFuIGVycm9yIGluIGNhc2UgIWhhc19lZHUoKSA/IE90aGV3aXNlLApob3cg
aXMgaXQgaGFuZGxlZD8KClRoYW5rcywKTWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxp
bmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LW10ZC8K
