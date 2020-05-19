Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFCB01D9A9A
	for <lists+linux-mtd@lfdr.de>; Tue, 19 May 2020 17:02:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WhhkvDOnFMLzAxBgTPyeRkOdcalPCdnZNXgp/RHjzU0=; b=imiyVq2xQM9spF
	mhgltHdnit21rrHJGyJEN7MdKDEq3bzkXNF7+qEchrKLLI+6qb759Aozej05qmB70NtlWNoVttnAV
	eIYs5uaxrbFDlW+63d1blUbS6JRVVhM8W8K1Df3a19cWvSEFtJim8+oOSTiWBmiOltLYERTc7h7IQ
	zfeRSzSUX+c1hfKXEMJ/chcgo/WBjretPeKwF/GJpjEUwx0mkoBpee5zlPytGGNFyvyCO+gO3/JVb
	GwnRgi6zte5itNEKBIYI7GgI7Zpg215U+V4mNTHZFtmxXpDfv71YGNNmPVel8n0/x/qcB1ooqvak0
	EYfpbRLQwti0JeS5xa/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb3lR-0001UR-7N; Tue, 19 May 2020 15:02:41 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb3kQ-0001Nw-PT
 for linux-mtd@lists.infradead.org; Tue, 19 May 2020 15:01:40 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id E5CDE2A0E8F;
 Tue, 19 May 2020 16:01:33 +0100 (BST)
Date: Tue, 19 May 2020 17:01:30 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH] mtd: rawnand: ingenic: Convert the driver to exec_op()
Message-ID: <20200519170130.77543c8e@collabora.com>
In-Reply-To: <FN2LAQ.2U7L7XR4D02L@crapouillou.net>
References: <20200518165640.312220-1-boris.brezillon@collabora.com>
 <G7GJAQ.0VIFSQUDMC9H2@crapouillou.net>
 <20200518212422.23316760@collabora.com>
 <FN2LAQ.2U7L7XR4D02L@crapouillou.net>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_080138_959041_F65D2D0A 
X-CRM114-Status: GOOD (  16.56  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Harvey Hunt <harveyhuntnexus@gmail.com>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T24gVHVlLCAxOSBNYXkgMjAyMCAxNjo1MjoyNyArMDIwMApQYXVsIENlcmN1ZWlsIDxwYXVsQGNy
YXBvdWlsbG91Lm5ldD4gd3JvdGU6Cgo+IEhpIEJvcmlzLAo+IAo+IExlIGx1bi4gMTggbWFpIDIw
MjAgw6AgMjE6MjQsIEJvcmlzIEJyZXppbGxvbiAKPiA8Ym9yaXMuYnJlemlsbG9uQGNvbGxhYm9y
YS5jb20+IGEgw6ljcml0IDoKPiA+IE9uIE1vbiwgMTggTWF5IDIwMjAgMTk6NTA6MDQgKzAyMDAK
PiA+IFBhdWwgQ2VyY3VlaWwgPHBhdWxAY3JhcG91aWxsb3UubmV0PiB3cm90ZToKPiA+ICAgCj4g
Pj4gIEhpIEJvcmlzLAo+ID4+IAo+ID4+ICBMZSBsdW4uIDE4IG1haSAyMDIwIMOgIDE4OjU2LCBC
b3JpcyBCcmV6aWxsb24KPiA+PiAgPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPiBhIMOp
Y3JpdCA6ICAKPiA+PiAgPiBMZXQncyBjb252ZXJ0IHRoZSBkcml2ZXIgdG8gZXhlY19vcCgpIHRv
IGhhdmUgb25lIGxlc3MgZHJpdmVyICAgCj4gPj4gcmVseWluZyAgCj4gPj4gID4gb24gdGhlIGxl
Z2FjeSBpbnRlcmZhY2UuICAKPiA+PiAKPiA+PiAgR3JlYXQgd29yaywgdGhhbmtzIGZvciB0aGF0
Lgo+ID4+IAo+ID4+ICBIb3dldmVyIGl0IGRvZXMgbm90IHdvcmsgOiggbmFuZF9zY2FuKCkgcmV0
dXJucyBlcnJvciAtMTQ1LiAgCj4gPiAKPiA+IExvb2tzIGxpa2UgdGhlIFIvQiBzaWduYWwgaXMg
aW52ZXJ0ZWQuIENhbiB5b3UgdHJ5IHdpdGggdGhlCj4gPiBmb2xsb3dpbmcgZGlmZiBhcHBsaWVk
PyAgCj4gCj4gU3RpbGwgZG9lc24ndCB3b3JrIHByb3Blcmx5LiBJIGdldCAtRU5PREVWIGluIG5h
bmRfZGV0ZWN0KCksIGF0IHRoZSAKPiAic2Vjb25kIElEIHJlYWQgZGlkIG5vdCBtYXRjaC4uLiIg
cHJfaW5mbygpLgo+IAo+IFRoZSBSL0Igc2lnbmFsIGRvZXNuJ3Qgc2VlbSB0byBiZSB0aGUgcHJp
bWFyeSBjYXVzZSwgaWYgSSB1c2UgCj4gbmFuZF9zb2Z0X3dhaXRyZHkoKSBpdCBkb2Vzbid0IHdv
cmsgYW55IGJldHRlci4KCldlbGwsIGl0IGRvZXMgc29sdmUgdGhlIEVUSU1FRE9VVCBpc3N1ZSwg
c28gd2UncmUgb25lIHN0ZXAgZnVydGhlciA7LSkuCkNhbiB5b3UgcHJpbnQgdGhlIHJldHVybmVk
IElEPwoKPiAKPiBPbmUgdGhpbmcgSSBub3RpY2VkIHRoYXQgano0NzgwX25lbWNfYXNzZXJ0KCkg
aXMgY2FsbGVkIHdpdGggCj4gYXNzZXJ0PXRydWUgdW5jb25kaXRpb25hbGx5LCB3aGlsZSBiZWZv
cmUgaXQgd2FzIGNhbGxlZCB3aXRoIChjdHJsICYgCj4gTkFORF9OQ0UpLCB3aGF0ZXZlciB0aGF0
IGlzLiBXaGV0aGVyIG9yIG5vdCB0aGF0J3MgYSBwcm9ibGVtLCBJIGhhdmUgbm8gCj4gaWRlYS4K
Clllcywgd2UgcmVhbGx5IHdhbnQgdG8gYXNzZXJ0IHRoZSBDRSBzaWduYWwgdW5jb25kaXRpb25h
bGx5IGhlcmUsIGJ1dAptYXliZSB3ZSBzaG91bGQgYWRkIGEgZGVsYXkgYWZ0ZXIgYXNzZXJ0aW5n
IGl0L2JlZm9yZSBkZS1hc3NlcnRpbmcgaXQuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBs
aXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRk
Lwo=
