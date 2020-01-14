Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED43A13A4EF
	for <lists+linux-mtd@lfdr.de>; Tue, 14 Jan 2020 11:04:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cFpUEvwITrIfRSZB+8+mPrKvHXdL12A+U7g0HAGlckk=; b=A60JqRlTHKRzdd
	CtxDDR+U+z0MPqjFfp/o2a/+rw/12ZWbVYajCILUE0I/Fuj9ngeZZO96MqBFhuqgEpqO8u+zyDjyl
	j5uTvMQFcT9Gau5Tg/uDCCi4lqx8PIk2h7yDpHCh5chlAL7s13w3rxPgWnEgloxCtAAcq/LQ7j6Ar
	JCsIa9rA0KNQdvNMYg5LVxBYcCvPmw121TbGDEZ6DAq/+toHEn4Lk2wtK11OQ0HKo4rUlRHPXyZbZ
	kgYJInOWVsDBq1FJLhUDBBuzWOK6pHoUqtD7e0kyw24NdTXvsssnGkGnw00GxSjqQz1AjhN+j/U+9
	KQ7Iae3msGjsOPtNtIIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irJ3u-0003Za-2g; Tue, 14 Jan 2020 10:04:38 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irJ3Z-0003YS-HA
 for linux-mtd@lists.infradead.org; Tue, 14 Jan 2020 10:04:23 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id EAF41200011;
 Tue, 14 Jan 2020 10:04:14 +0000 (UTC)
Date: Tue, 14 Jan 2020 11:04:13 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>
Subject: Re: [PATCH 4/8] mtd: Add support for emulated SLC mode on MLC NANDs
Message-ID: <20200114110413.63e089ae@xps13>
In-Reply-To: <1518112485.16967.1578527342428.JavaMail.zimbra@nod.at>
References: <20191230165129.11925-1-miquel.raynal@bootlin.com>
 <20191230165129.11925-5-miquel.raynal@bootlin.com>
 <1518112485.16967.1578527342428.JavaMail.zimbra@nod.at>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_020417_712318_ACA27B5E 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Boris Brezillon <boris.brezillon@bootlin.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgUmljaGFyZCwKCkEgdmVyeSBzaW1wbGUgcXVlc3Rpb24gYmVsb3cuCgo+IAo+ID4gKwkgKiBp
cyBhbiBNTEMgTkFORCBhbmQgaGFzIGEgcHJvcGVyIHBhaXJpbmcgc2NoZW1lIGRlZmluZWQuCj4g
PiArCSAqIFdlIGFsc28gcmVqZWN0IG1hc3RlcnMgdGhhdCBpbXBsZW1lbnQgLT5fd3JpdGV2KCkg
Zm9yIG5vdywgYmVjYXVzZQo+ID4gKwkgKiBOQU5EIGNvbnRyb2xsZXIgZHJpdmVycyBkb24ndCBp
bXBsZW1lbnQgdGhpcyBob29rLCBhbmQgYWRkaW5nIHRoZQo+ID4gKwkgKiBTTEMgLT4gTUxDIGFk
ZHJlc3MvbGVuZ3RoIGNvbnZlcnNpb24gdG8gdGhpcyBwYXRoIGlzIHVzZWxlc3MgaWYgd2UKPiA+
ICsJICogZG9uJ3QgaGF2ZSBhIHVzZXIuCj4gPiArCSAqLwo+ID4gKwlpZiAobXRkLT5mbGFncyAm
IE1URF9NTENfSU5fU0xDX01PREUgJiYKPiA+ICsJICAgICghbXRkX2lzX3BhcnRpdGlvbihtdGQp
IHx8IG1hc3Rlci0+dHlwZSAhPSBNVERfTUxDTkFOREZMQVNIIHx8Cj4gPiArCSAgICAgIW1hc3Rl
ci0+cGFpcmluZyB8fCBtYXN0ZXItPl93cml0ZXYpKQo+ID4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4g
PiArCj4gPiAJbXV0ZXhfbG9jaygmbXRkX3RhYmxlX211dGV4KTsKPiA+IAo+ID4gCWkgPSBpZHJf
YWxsb2MoJm10ZF9pZHIsIG10ZCwgMCwgMCwgR0ZQX0tFUk5FTCk7Cj4gPiBAQCAtNjMyLDYgKzY0
NSwxNCBAQCBpbnQgYWRkX210ZF9kZXZpY2Uoc3RydWN0IG10ZF9pbmZvICptdGQpCj4gPiAJaWYg
KG10ZC0+Yml0ZmxpcF90aHJlc2hvbGQgPT0gMCkKPiA+IAkJbXRkLT5iaXRmbGlwX3RocmVzaG9s
ZCA9IG10ZC0+ZWNjX3N0cmVuZ3RoOwo+ID4gCj4gPiArCWlmIChtdGQtPmZsYWdzICYgTVREX01M
Q19JTl9TTENfTU9ERSkgewo+ID4gKwkJaW50IG5ncm91cHMgPSBtdGRfcGFpcmluZ19ncm91cHMo
bWFzdGVyKTsKPiA+ICsKPiA+ICsJCW10ZC0+ZXJhc2VzaXplIC89IG5ncm91cHM7Cj4gPiArCQlt
dGQtPnNpemUgPSAodTY0KW10ZF9kaXZfYnlfZWIobXRkLT5zaXplLCBtYXN0ZXIpICoKPiA+ICsJ
CQkgICAgbXRkLT5lcmFzZXNpemU7ICAKPiAKPiBDYW4gd2UgcGxlYXNlIGhhdmUgYSBoZWxwZXIg
Zm9yIHRoaXM/IFlvdSB1c2UgdGhpcyBmb3JtdWxhIG1hbnkgdGltZXMuCgpJIHRob3VnaHQgeW91
IHdlcmUgdGFsa2luZyBhYm91dCB0aGUgbXRkLT5zaXplIGNhbGN1bGF0aW9uIGJ1dCB0aGlzCmxp
bmUgYXBwZWFycyBvbmx5IG9uY2UgYXMtaXMuIHRoZSB3aG9sZSAnaWYnIGJsb2NrIGlzIG5ldmVy
IGV4YWN0bHkgdGhlCnNhbWUgc28gaXQgY2Fubm90IGJlIGZhY3RvcmVkIG91dC4gVGhlIG9ubHkg
bGluZSB0aGF0IGlzIGFjdHVhbGx5CnJlcGVhdGluZyBpcyB0aGUgaWYgY29uZGl0aW9uLiBEbyB5
b3UgbWVhbiB5b3Ugd291bGQgbGlrZSBzb21ldGhpbmcKbGlrZSB0aGlzPwoKCXN0YXRpYyBib29s
IG10ZF9lbXVsYXRlc19zbGMoc3RydWN0IG10ZF9pbmZvICptdGQpCgl7CgkJcmV0dXJuIG10ZC0+
ZmxhZ3MgJiBNVERfRU1VTEFURV9TTENfT05fTUxDOwoJfQoKClRoYW5rcywKTWlxdcOobAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
