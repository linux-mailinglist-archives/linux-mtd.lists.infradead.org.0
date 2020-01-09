Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA5311360FD
	for <lists+linux-mtd@lfdr.de>; Thu,  9 Jan 2020 20:21:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kaycf7IpY2IKJ08Ffl1RDKquRMZ6fUu0kz/kJ7L+cU8=; b=DMmDLU2aCDszH3
	SmyJ8sZPwHOnEX8q1rFHVNuigaEWIHv9ohECtFO0KyIBML/QiPqFcZyunjbIwRd2dXsfSjbcMUPRO
	iRIQb6aPrxLVAoOZwO6qG1anOUaxjY2/U5usf9aKSfbS+hu4QM/CQxe6BHz1AdI2KvrUdMe28UhNw
	7eOQABz/jkUfPLhI1rLPIa7IEe9dKWS3kQELxp02Un2Jvk/yQqfcEFLFAenY4lrx7eTx34xM12HuF
	zPA0ymygxYQ1rY3uTkC59GIpDXro1fC+BtyXujJR2UMz2Qsl+6cCAVCi2u7vivHzjOpbxsZAoQzBF
	z0vM8bMsW9h09MsiEyrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipdN7-0004f1-LW; Thu, 09 Jan 2020 19:21:33 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipdMx-0004dB-4y
 for linux-mtd@lists.infradead.org; Thu, 09 Jan 2020 19:21:24 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 34A87E0002;
 Thu,  9 Jan 2020 19:21:11 +0000 (UTC)
Date: Thu, 9 Jan 2020 20:21:10 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] mtd: rawnand: cadence: fix address space mixup
Message-ID: <20200109202110.2af111dc@xps13>
In-Reply-To: <20191210200014.949529-1-arnd@arndb.de>
References: <20191210200014.949529-1-arnd@arndb.de>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_112123_329789_73183973 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kbuild test robot <lkp@intel.com>, Richard Weinberger <richard@nod.at>,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 Julia Lawall <julia.lawall@lip6.fr>, linux-mtd@lists.infradead.org,
 Piotr Sroka <piotrs@cadence.com>, Vignesh Raghavendra <vigneshr@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgQXJuZCwKCkFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+IHdyb3RlIG9uIFR1ZSwgMTAg
RGVjIDIwMTkgMjA6NTk6NTUgKzAxMDA6Cgo+IGRtYV9hZGRyX3QgYW5kIHBvaW50ZXJzIGNhbiBh
cmUgbm90IGludGVyY2hhbmdlYWJsZSwgYW5kIGNhbgo+IGJlIGRpZmZlcmVudCBzaXplczoKPiAK
PiBkcml2ZXJzL210ZC9uYW5kL3Jhdy9jYWRlbmNlLW5hbmQtY29udHJvbGxlci5jOiBJbiBmdW5j
dGlvbiAnY2FkZW5jZV9uYW5kX2NkbWFfdHJhbnNmZXInOgo+IGRyaXZlcnMvbXRkL25hbmQvcmF3
L2NhZGVuY2UtbmFuZC1jb250cm9sbGVyLmM6MTI4MzoxMjogZXJyb3I6IGNhc3QgdG8gcG9pbnRl
ciBmcm9tIGludGVnZXIgb2YgZGlmZmVyZW50IHNpemUgWy1XZXJyb3I9aW50LXRvLXBvaW50ZXIt
Y2FzdF0KPiAgICAgICAgICAgICAodm9pZCAqKWRtYV9idWYsICh2b2lkICopZG1hX2N0cmxfZGF0
LAo+ICAgICAgICAgICAgIF4KPiBkcml2ZXJzL210ZC9uYW5kL3Jhdy9jYWRlbmNlLW5hbmQtY29u
dHJvbGxlci5jOjEyODM6Mjk6IGVycm9yOiBjYXN0IHRvIHBvaW50ZXIgZnJvbSBpbnRlZ2VyIG9m
IGRpZmZlcmVudCBzaXplIFstV2Vycm9yPWludC10by1wb2ludGVyLWNhc3RdCj4gICAgICAgICAg
ICAgKHZvaWQgKilkbWFfYnVmLCAodm9pZCAqKWRtYV9jdHJsX2RhdCwKPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIF4KPiAKPiBVc2UgZG1hX2FkZHJfdCBjb25zaXN0ZW50bHkgaGVyZSwg
d2hpY2ggY2xlYW5zIHVwIGEgY291cGxlIG9mIGNhc3RzCj4gYXMgYSBzaWRlLWVmZmVjdC4KPiAK
PiBGaXhlczogZWM0YmEwMWU4OTRkICgibXRkOiByYXduYW5kOiBBZGQgbmV3IENhZGVuY2UgTkFO
RCBkcml2ZXIgdG8gTVREIHN1YnN5c3RlbSIpCj4gU2lnbmVkLW9mZi1ieTogQXJuZCBCZXJnbWFu
biA8YXJuZEBhcm5kYi5kZT4KCkkganVzdCByZWFsaXplZCB0aGF0IEkgcmVjZWl2ZWQgdGhyZWUg
cGF0Y2hlcyBmb3IgdGhlIHNhbWUgaXNzdWUgaW4gYQp2ZXJ5IHRpZ2h0IHRpbWVmcmFtZSBhYm91
dCBhIG1vbnRoIGFnbywgeW91cnMgd2FzIG9mIGNvdXJzZSBlbnRpcmVseQp2YWxpZCBidXQgSSBj
aG9vc2UgdG8gYXBwbHkgdGhlIG9uZSBmcm9tIHNvbWVvbmUgbm90IGNvbnRyaWJ1dGluZyBhIGxv
dAp0byBlbmNvdXJhZ2UgaGltLCBob3BlIHlvdSBkb24ndCBtaW5kIDopCgoKQ2hlZXJzLApNaXF1
w6hsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
