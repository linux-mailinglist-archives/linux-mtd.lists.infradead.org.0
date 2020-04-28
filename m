Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B324A1BBA02
	for <lists+linux-mtd@lfdr.de>; Tue, 28 Apr 2020 11:38:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zBWbW3LSfTLLMi/7lNoWK4I9n0ddWcVGRaUCpEifolg=; b=k19IOIWrnIx8aD
	P7e8eFe4gZU15PN0WYt0WO+heZZpQbL34Pbqwgoj31Y11NtemU5zydvWR5S7raUj9KFlxu3VdM/Ry
	HX3p/qRmTwNZa7lMTubm6hQYz+6MTjQEXx5uneZ5iUPViyk3+FiZJsKEqi862lSup+4b6Gdp26Iux
	tl8rzdVvwJl+Cvgf4su9FM+YwJ49nAvS5xWddqWB6ZUhhFV/wS0PZea2+Tay/fbijdmmjnasg761D
	xphLZ4VWKayY50z+X8iV41qfwkL1S6Hw863AAMJyF7Rd3FGUkTSOlTA3Me4zOUN8WTnaqpEApHlO2
	wvZzloczKDefZXKE65rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTMhF-0003gQ-Ld; Tue, 28 Apr 2020 09:38:33 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTMh4-0003fH-GI
 for linux-mtd@lists.infradead.org; Tue, 28 Apr 2020 09:38:23 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id B8699260443;
 Tue, 28 Apr 2020 10:38:18 +0100 (BST)
Date: Tue, 28 Apr 2020 11:38:15 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v2 5/9] mtd: rawnand: onfi: Define the number of
 parameter pages
Message-ID: <20200428113815.49c47d7f@collabora.com>
In-Reply-To: <20200428113628.0f9cd8d7@xps13>
References: <20200424164042.26572-1-miquel.raynal@bootlin.com>
 <20200424164042.26572-6-miquel.raynal@bootlin.com>
 <20200425102519.367cf1ea@collabora.com>
 <20200428113628.0f9cd8d7@xps13>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_023822_670590_1D45D721 
X-CRM114-Status: GOOD (  23.12  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T24gVHVlLCAyOCBBcHIgMjAyMCAxMTozNjoyOCArMDIwMApNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwu
cmF5bmFsQGJvb3RsaW4uY29tPiB3cm90ZToKCj4gSGkgQm9yaXMsCj4gCj4gQm9yaXMgQnJlemls
bG9uIDxib3Jpcy5icmV6aWxsb25AY29sbGFib3JhLmNvbT4gd3JvdGUgb24gU2F0LCAyNSBBcHIK
PiAyMDIwIDEwOjI1OjE5ICswMjAwOgo+IAo+ID4gT24gRnJpLCAyNCBBcHIgMjAyMCAxODo0MDoz
OCArMDIwMAo+ID4gTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4gd3Jv
dGU6Cj4gPiAgIAo+ID4gPiBVc2UgYSBtYWNybyB0byBkZWZpbmUgdGhlIG51bWJlciBvZiBwYXJh
bWV0ZXIgcGFnZSBpbnN0ZWFkIG9mCj4gPiA+IGhhcmRjb2RpbmcgaXQgZXZlcnl3aGVyZS4KPiA+
ID4gCj4gPiA+IFNpZ25lZC1vZmYtYnk6IE1pcXVlbCBSYXluYWwgPG1pcXVlbC5yYXluYWxAYm9v
dGxpbi5jb20+Cj4gPiA+IC0tLQo+ID4gPiAgZHJpdmVycy9tdGQvbmFuZC9yYXcvbmFuZF9vbmZp
LmMgfCAxMCArKysrKystLS0tCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCsp
LCA0IGRlbGV0aW9ucygtKQo+ID4gPiAKPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbXRkL25h
bmQvcmF3L25hbmRfb25maS5jIGIvZHJpdmVycy9tdGQvbmFuZC9yYXcvbmFuZF9vbmZpLmMKPiA+
ID4gaW5kZXggN2Q5YTMxMzA0NDNhLi45ZmUzOWFkYmRlNGMgMTAwNjQ0Cj4gPiA+IC0tLSBhL2Ry
aXZlcnMvbXRkL25hbmQvcmF3L25hbmRfb25maS5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvbXRkL25h
bmQvcmF3L25hbmRfb25maS5jCj4gPiA+IEBAIC0xNiw2ICsxNiw4IEBACj4gPiA+ICAKPiA+ID4g
ICNpbmNsdWRlICJpbnRlcm5hbHMuaCIKPiA+ID4gIAo+ID4gPiArI2RlZmluZSBPTkZJX1BBUkFN
X1BBR0VTIDMKPiA+ID4gKwo+ID4gPiAgdTE2IG9uZmlfY3JjMTYodTE2IGNyYywgdTggY29uc3Qg
KnAsIHNpemVfdCBsZW4pCj4gPiA+ICB7Cj4gPiA+ICAJaW50IGk7Cj4gPiA+IEBAIC0xNTYsNyAr
MTU4LDcgQEAgaW50IG5hbmRfb25maV9kZXRlY3Qoc3RydWN0IG5hbmRfY2hpcCAqY2hpcCkKPiA+
ID4gIAkJcmV0dXJuIDA7Cj4gPiA+ICAKPiA+ID4gIAkvKiBPTkZJIGNoaXA6IGFsbG9jYXRlIGEg
YnVmZmVyIHRvIGhvbGQgaXRzIHBhcmFtZXRlciBwYWdlICovCj4gPiA+IC0JcCA9IGt6YWxsb2Mo
KHNpemVvZigqcCkgKiAzKSwgR0ZQX0tFUk5FTCk7Cj4gPiA+ICsJcCA9IGt6YWxsb2MoKHNpemVv
ZigqcCkgKiBPTkZJX1BBUkFNX1BBR0VTKSwgR0ZQX0tFUk5FTCk7Cj4gPiA+ICAJaWYgKCFwKQo+
ID4gPiAgCQlyZXR1cm4gLUVOT01FTTsKPiA+ID4gIAo+ID4gPiBAQCAtMTY2LDcgKzE2OCw3IEBA
IGludCBuYW5kX29uZmlfZGV0ZWN0KHN0cnVjdCBuYW5kX2NoaXAgKmNoaXApCj4gPiA+ICAJCWdv
dG8gZnJlZV9vbmZpX3BhcmFtX3BhZ2U7Cj4gPiA+ICAJfQo+ID4gPiAgCj4gPiA+IC0JZm9yIChp
ID0gMDsgaSA8IDM7IGkrKykgewo+ID4gPiArCWZvciAoaSA9IDA7IGkgPCBPTkZJX1BBUkFNX1BB
R0VTOyBpKyspIHsKPiA+ID4gIAkJcmV0ID0gbmFuZF9yZWFkX2RhdGFfb3AoY2hpcCwgJnBbaV0s
IHNpemVvZigqcCksIHRydWUpOwo+ID4gPiAgCQlpZiAocmV0KSB7Cj4gPiA+ICAJCQlyZXQgPSAw
Owo+ID4gPiBAQCAtMTgxLDggKzE4Myw4IEBAIGludCBuYW5kX29uZmlfZGV0ZWN0KHN0cnVjdCBu
YW5kX2NoaXAgKmNoaXApCj4gPiA+ICAJCX0KPiA+ID4gIAl9Cj4gPiA+ICAKPiA+ID4gLQlpZiAo
aSA9PSAzKSB7Cj4gPiA+IC0JCWNvbnN0IHZvaWQgKnNyY2J1ZnNbM10gPSB7cCwgcCArIDEsIHAg
KyAyfTsKPiA+ID4gKwlpZiAoaSA9PSBPTkZJX1BBUkFNX1BBR0VTKSB7Cj4gPiA+ICsJCWNvbnN0
IHZvaWQgKnNyY2J1ZnNbT05GSV9QQVJBTV9QQUdFU10gPSB7cCwgcCArIDEsIHAgKyAyfTsKPiA+
ID4gICAgICAKPiA+IAo+ID4gTWF5YmUgaW5pdGlhbGl6ZSB0aGUgc3JjYnVmcyBhcnJheSB1c2lu
ZyBhIGZvciBsb29wIHNvIHlvdSBjYW4gZWFzaWx5Cj4gPiBjaGFuZ2UgT05GSV9QQVJBTV9QQUdF
UyB3aXRob3V0IGhhdmluZyB0byB0b3VjaCB0aGUgY29kZS4gTG9va3MgZ29vZAo+ID4gb3RoZXJ3
aXNlLCBzbwo+ID4gCj4gPiBSZXZpZXdlZC1ieTogQm9yaXMgQnJlaWxsb24gPGJvcmlzLmJyZXpp
bGxvbkBjb2xsYWJvcmEuY29tPgo+ID4gICAKPiAKPiBBZ3JlZWQsIGhlcmUgaXMgdGhlIHNuaXBw
ZXQgb2YgY29kZSB0aGF0IEkgY2hhbmdlZDoKPiAKPiBAQCAtMTgxLDExICsxODMsMTUgQEAgaW50
IG5hbmRfb25maV9kZXRlY3Qoc3RydWN0IG5hbmRfY2hpcCAqY2hpcCkKPiAgICAgICAgICAgICAg
ICAgfQo+ICAgICAgICAgfQo+ICAKPiAtICAgICAgIGlmIChpID09IDMpIHsKPiAtICAgICAgICAg
ICAgICAgY29uc3Qgdm9pZCAqc3JjYnVmc1szXSA9IHtwLCBwICsgMSwgcCArIDJ9Owo+ICsgICAg
ICAgaWYgKGkgPT0gT05GSV9QQVJBTV9QQUdFUykgewo+ICsgICAgICAgICAgICAgICBjb25zdCB2
b2lkICpzcmNidWZzW09ORklfUEFSQU1fUEFHRVNdOwo+ICsgICAgICAgICAgICAgICBpbnQgajsK
CgkJICBedW5zaWduZWQgaW50Cgo+ICsKPiArICAgICAgICAgICAgICAgZm9yIChqID0gMDsgaiA8
IE9ORklfUEFSQU1fUEFHRVM7IGorKykKPiArICAgICAgICAgICAgICAgICAgICAgICBzcmNidWZz
W2pdID0gcCArIGo7Cj4gIAo+ICAgICAgICAgICAgICAgICBwcl93YXJuKCJDb3VsZCBub3QgZmlu
ZCBhIHZhbGlkIE9ORkkgcGFyYW1ldGVyIHBhZ2UsIHRyeWluZyBiaXQtd2lzZSBtYWpvcml0eSB0
byByZWNvdmVyIGl0XG4iKTsKPiAtICAgICAgICAgICAgICAgbmFuZF9iaXRfd2lzZV9tYWpvcml0
eShzcmNidWZzLCBBUlJBWV9TSVpFKHNyY2J1ZnMpLCBwLAo+ICsgICAgICAgICAgICAgICBuYW5k
X2JpdF93aXNlX21ham9yaXR5KHNyY2J1ZnMsIE9ORklfUEFSQU1fUEFHRVMsIHAsCj4gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc2l6ZW9mKCpwKSk7Cj4gIAo+ICAgICAg
ICAgICAgICAgICBjcmMgPSBvbmZpX2NyYzE2KE9ORklfQ1JDX0JBU0UsICh1OCAqKXAsIDI1NCk7
Cj4gCj4gCj4gCj4gVGhhbmtzLAo+IE1pcXXDqGwKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGlu
ZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
bXRkLwo=
