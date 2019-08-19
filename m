Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEDBB91EB0
	for <lists+linux-mtd@lfdr.de>; Mon, 19 Aug 2019 10:17:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AqlQNed5T7lhQDt/XDhrle3T8GidzmQuDdPwz0Ho12o=; b=dhkwsbv6/t73ML
	mnVyLN2DuObSaVXyJTBXNL9IA1ynBI5I93V1CeZu115nhV/3JtCLq7ji5C1qe440egvjZ4YA2AHpp
	c/4tVhGkgwTu4/xZWe/YuI4fcxRwNofGZr0LUCBSph08B5NSk5ajFX4yQnSCEHuSl2YnDue5Yv5wa
	tdo1VASretbfNJ7TbrkkmwpThGBwa2dI2v12jpHvShzAmx03MMwxs/8ymBl9GWxpQoW0eCFYsKBlx
	R08cXVosX32uWkGkSNlvgxTg8H11dOXxqxF0vHssZK3SSk3/DFlagS/RBP2Wu5YVhaojMDr/Rd7us
	aZ5MSu2bzcxENKH9Teiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzcrI-00022Z-6O; Mon, 19 Aug 2019 08:17:44 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzcr7-00022C-Ak
 for linux-mtd@lists.infradead.org; Mon, 19 Aug 2019 08:17:35 +0000
Received: from xps13 (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id B063A240009;
 Mon, 19 Aug 2019 08:17:19 +0000 (UTC)
Date: Mon, 19 Aug 2019 10:17:18 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH] mtd: spinand: micron: add support for MT29F1G01AAADD
Message-ID: <20190819101718.39b3a5ca@xps13>
In-Reply-To: <20190814082232.2119-1-m.felsch@pengutronix.de>
References: <20190814082232.2119-1-m.felsch@pengutronix.de>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_011733_524310_92F18EFC 
X-CRM114-Status: GOOD (  14.66  )
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
Cc: bbrezillon@kernel.org, richard@nod.at, frieder.schrempf@kontron.de,
 marek.vasut@gmail.com, linux-mtd@lists.infradead.org, kernel@pengutronix.de,
 Peter Pan <peterpandong@micron.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgTWFyY28sCgpNYXJjbyBGZWxzY2ggPG0uZmVsc2NoQHBlbmd1dHJvbml4LmRlPiB3cm90ZSBv
biBXZWQsIDE0IEF1ZyAyMDE5CjEwOjIyOjMyICswMjAwOgoKPiBUaGUgTVQyOUYxRzAxQUFBREQg
aXMgYSBzaW5nbGUgZGllLCBTTEMgYmFzZWQgU1BJIE5BTkQuIEl0IGhhcyBhCj4gY2FwYWNpdHkg
b2YgMUdiIGFuZCBzdXBwb3J0cyA0LWJpdCBFQ0MuIFRoZSBkYXRhc2hlZXQgY2FuIGJlIGZvdW5k
IFsxXS4KPiAKPiBVbmZvcnR1bmF0bHkgdGhlIGxpbmtlZCBkZXZpY2UgaXMgbWFya2VkIGFzIEVv
TCwgYnV0IEkgd2lsbCBleHBlY3QgdGhhdAo+IHRoZSBNVDI5RjFHMDFBQUFEREg0LUlUWCBiZWhh
dmVzIHRoZSBzYW1lIHdheS4KPiAKPiBbMV0gaHR0cHM6Ly9kYXRhc2hlZXQub2N0b3BhcnQuY29t
LyBcCj4gICAgICAgTVQyOUYxRzAxQUFBRERINC1JVDpELU1pY3Jvbi1kYXRhc2hlZXQtMTE1NzIz
ODAucGRmCj4gCj4gQ2M6IFBldGVyIFBhbiA8cGV0ZXJwYW5kb25nQG1pY3Jvbi5jb20+Cj4gU2ln
bmVkLW9mZi1ieTogTWFyY28gRmVsc2NoIDxtLmZlbHNjaEBwZW5ndXRyb25peC5kZT4KPiAtLS0K
PiAgZHJpdmVycy9tdGQvbmFuZC9zcGkvbWljcm9uLmMgfCA2OCArKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNjggaW5zZXJ0aW9ucygrKQo+IAo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL210ZC9uYW5kL3NwaS9taWNyb24uYyBiL2RyaXZlcnMvbXRk
L25hbmQvc3BpL21pY3Jvbi5jCj4gaW5kZXggN2Q3YjFmN2ZjZjcxLi45ZDYzNDUwYWZjNjkgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9tdGQvbmFuZC9zcGkvbWljcm9uLmMKPiArKysgYi9kcml2ZXJz
L210ZC9uYW5kL3NwaS9taWNyb24uYwo+IEBAIC0zNCw2ICszNCwxOCBAQCBzdGF0aWMgU1BJTkFO
RF9PUF9WQVJJQU5UUyh1cGRhdGVfY2FjaGVfdmFyaWFudHMsCj4gIAkJU1BJTkFORF9QUk9HX0xP
QURfWDQoZmFsc2UsIDAsIE5VTEwsIDApLAo+ICAJCVNQSU5BTkRfUFJPR19MT0FEKGZhbHNlLCAw
LCBOVUxMLCAwKSk7Cj4gIAo+ICtzdGF0aWMgU1BJTkFORF9PUF9WQVJJQU5UUyhyZWFkX2NhY2hl
X3ZhcmlhbnRzX210MjlmMWcwMWFhYWRkLAo+ICsJCVNQSU5BTkRfUEFHRV9SRUFEX0ZST01fQ0FD
SEVfWDRfT1AoMCwgMSwgTlVMTCwgMCksCj4gKwkJU1BJTkFORF9QQUdFX1JFQURfRlJPTV9DQUNI
RV9YMl9PUCgwLCAxLCBOVUxMLCAwKSwKPiArCQlTUElOQU5EX1BBR0VfUkVBRF9GUk9NX0NBQ0hF
X09QKHRydWUsIDAsIDEsIE5VTEwsIDApLAo+ICsJCVNQSU5BTkRfUEFHRV9SRUFEX0ZST01fQ0FD
SEVfT1AoZmFsc2UsIDAsIDEsIE5VTEwsIDApKTsKPiArCj4gK3N0YXRpYyBTUElOQU5EX09QX1ZB
UklBTlRTKHdyaXRlX2NhY2hlX3ZhcmlhbnRzX210MjlmMWcwMWFhYWRkLAo+ICsJCVNQSU5BTkRf
UFJPR19MT0FEKHRydWUsIDAsIE5VTEwsIDApKTsKPiArCj4gK3N0YXRpYyBTUElOQU5EX09QX1ZB
UklBTlRTKHVwZGF0ZV9jYWNoZV92YXJpYW50c19tdDI5ZjFnMDFhYWFkZCwKPiArCQlTUElOQU5E
X1BST0dfTE9BRChmYWxzZSwgMCwgTlVMTCwgMCkpOwo+ICsKPiAgc3RhdGljIGludCBtdDI5ZjJn
MDFhYmFnZF9vb2JsYXlvdXRfZWNjKHN0cnVjdCBtdGRfaW5mbyAqbXRkLCBpbnQgc2VjdGlvbiwK
PiAgCQkJCQlzdHJ1Y3QgbXRkX29vYl9yZWdpb24gKnJlZ2lvbikKPiAgewo+IEBAIC05MCw2ICsx
MDIsNTIgQEAgc3RhdGljIGludCBtdDI5ZjJnMDFhYmFnZF9lY2NfZ2V0X3N0YXR1cyhzdHJ1Y3Qg
c3BpbmFuZF9kZXZpY2UgKnNwaW5hbmQsCj4gIAlyZXR1cm4gLUVJTlZBTDsKPiAgfQo+ICAKPiAr
c3RhdGljIGludCBtdDI5ZjFnMDFhYWFkZF9vb2JsYXlvdXRfZWNjKHN0cnVjdCBtdGRfaW5mbyAq
bXRkLCBpbnQgc2VjdGlvbiwKPiArCQkJCQlzdHJ1Y3QgbXRkX29vYl9yZWdpb24gKnJlZ2lvbikK
PiArewo+ICsJaWYgKHNlY3Rpb24gPiAzKQo+ICsJCXJldHVybiAtRVJBTkdFOwo+ICsKPiArCXJl
Z2lvbi0+b2Zmc2V0ID0gKHNlY3Rpb24gKiAweDEwKSArIDg7CgpBbnkgcmVhc29uIHRvIHVzZSBo
ZXggaGVyZT8gICAgICAgICBeCgpJZiBub3QgSSB3b3VsZCBwcmVmZXIgZGVjaW1hbCBudW1iZXJz
LgoKT3RoZXJ3aXNlIGxvb2tzIGZpbmUuCgpUaGFua3MsCk1pcXXDqGwKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vz
c2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1tdGQvCg==
