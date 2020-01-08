Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D192133CE8
	for <lists+linux-mtd@lfdr.de>; Wed,  8 Jan 2020 09:16:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nx7swaH6qcoEafkKNQ/1frYltpwqLgnEWko6EehVwVI=; b=XL1jVugbzrR383
	YgdEOf4ocGyAH7U0FMsLQ6UBZVLaoK0EycWfS3pRSfAFR2kIMhDRwZW8mWrsmgowDFiq6Hg/3ljbK
	W7yj3psTGDDqUdTW6KpCdvtiooKR1Sq/acaKlUHTZv87ODEl5MNs2KI2c5EXD4qkbYWQPp3Ybm7oz
	yfPt8S8zR1eWcmKIYVQT1ILVR+9MgaJXitUvwjaldji3BPoqPU2ZuJdWYNu5qD0Xob26pzZbGwA3o
	p8nudz0NX0VrPVb/UtZ3rpgmAHXC6eFZHuZVF08N5cGeFMuEus/vrDjHvG383i4ifEhjQvlhUNCHX
	epXoAhSz5JMP/kO2jgOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip6VS-0001uh-JG; Wed, 08 Jan 2020 08:15:58 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip6VE-0001t8-05
 for linux-mtd@lists.infradead.org; Wed, 08 Jan 2020 08:15:45 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id CB699240010;
 Wed,  8 Jan 2020 08:15:29 +0000 (UTC)
Date: Wed, 8 Jan 2020 09:15:28 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] mtd: sm_ftl: fix NULL pointer warning
Message-ID: <20200108091528.2c89d97f@xps13>
In-Reply-To: <20200107212509.4004137-1-arnd@arndb.de>
References: <20200107212509.4004137-1-arnd@arndb.de>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_001544_178352_3B471B63 
X-CRM114-Status: GOOD (  15.06  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Oleksandr Natalenko <oleksandr@redhat.com>, Wenwen Wang <wenwen@cs.uga.edu>,
 Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgQXJuZCwKCkFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+IHdyb3RlIG9uIFR1ZSwgIDcg
SmFuIDIwMjAgMjI6MjQ6NTIgKzAxMDA6Cgo+IFdpdGggZ2NjIC1PMywgd2UgZ2V0IGEgbmV3IHdh
cm5pbmc6Cj4gCj4gSW4gZmlsZSBpbmNsdWRlZCBmcm9tIGFyY2gvYXJtNjQvaW5jbHVkZS9hc20v
cHJvY2Vzc29yLmg6MjgsCj4gICAgICAgICAgICAgICAgICBmcm9tIGRyaXZlcnMvbXRkL3NtX2Z0
bC5jOjg6Cj4gSW4gZnVuY3Rpb24gJ21lbXNldCcsCj4gICAgIGlubGluZWQgZnJvbSAnc21fcmVh
ZF9zZWN0b3IuY29uc3Rwcm9wJyBhdCBkcml2ZXJzL210ZC9zbV9mdGwuYzoyNTA6MzoKPiBpbmNs
dWRlL2xpbnV4L3N0cmluZy5oOjQxMTo5OiBlcnJvcjogYXJndW1lbnQgMSBudWxsIHdoZXJlIG5v
bi1udWxsIGV4cGVjdGVkIFstV2Vycm9yPW5vbm51bGxdCj4gICByZXR1cm4gX19idWlsdGluX21l
bXNldChwLCBjLCBzaXplKTsKPiAKPiBGcm9tIGFsbCBJIGNhbiB0ZWxsLCB0aGlzIGNhbm5vdCBo
YXBwZW4gKHRoZSBmdW5jdGlvbiBpcyBjYWxsZWQKPiBlaXRoZXIgd2l0aCBhIE5VTEwgYnVmZmVy
IG9yIHdpdGggYSAtMSBibG9jayBudW1iZXIgYnV0IG5vdCBib3RoKSwKPiBidXQgYWRkaW5nIGEg
Y2hlY2sgbWFrZXMgaXQgbW9yZSByb2J1c3QgYW5kIGF2b2lkcyB0aGUgd2FybmluZy4KPiAKPiBG
aXhlczogbW10b20gKCJpbml0L0tjb25maWc6IGVuYWJsZSAtTzMgZm9yIGFsbCBhcmNoZXMiKQo+
IFNpZ25lZC1vZmYtYnk6IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+Cj4gLS0tCj4gIGRy
aXZlcnMvbXRkL3NtX2Z0bC5jIHwgMyArKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9u
cygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL210ZC9zbV9mdGwu
YyBiL2RyaXZlcnMvbXRkL3NtX2Z0bC5jCj4gaW5kZXggNDc0NGJmOTRhZDlhLi5iOWYyNzI0MDhj
NGQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tdGQvc21fZnRsLmMKPiArKysgYi9kcml2ZXJzL210
ZC9zbV9mdGwuYwo+IEBAIC0yNDcsNyArMjQ3LDggQEAgc3RhdGljIGludCBzbV9yZWFkX3NlY3Rv
cihzdHJ1Y3Qgc21fZnRsICpmdGwsCj4gIAo+ICAJLyogRlRMIGNhbiBjb250YWluIC0xIGVudHJp
ZXMgdGhhdCBhcmUgYnkgZGVmYXVsdCBmaWxsZWQgd2l0aCBiaXRzICovCj4gIAlpZiAoYmxvY2sg
PT0gLTEpIHsKPiAtCQltZW1zZXQoYnVmZmVyLCAweEZGLCBTTV9TRUNUT1JfU0laRSk7Cj4gKwkJ
aWYgKGJ1ZmZlcikKPiArCQkJbWVtc2V0KGJ1ZmZlciwgMHhGRiwgU01fU0VDVE9SX1NJWkUpOwo+
ICAJCXJldHVybiAwOwo+ICAJfQo+ICAKCldoYXQgYWJvdXQgYSBzaW1wbGVyIGZvcm06CgogICAg
ICAgIGlmIChidWZmZXIgJiYgYmxvY2sgPT0gLTEpIHsgLi4uCgpJbnN0ZWFkIG9mIGFuIGFkZGl0
aW9uYWwgaW5kZW50YXRpb24gbGV2ZWw/IAoKVGhhbmtzLApNaXF1w6hsCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1
c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtbXRkLwo=
