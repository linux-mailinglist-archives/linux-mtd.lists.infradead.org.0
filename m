Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EAE51BAE2D
	for <lists+linux-mtd@lfdr.de>; Mon, 27 Apr 2020 21:42:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cKE3yBYOg84npjb6iXZ5yBP2QOUgAEl8675dC1okilo=; b=XS++0KQM/uQ2lb
	9vukWoAW8i9uK7SjjRtM9MLslZZLnAD8Hif613UGw8Qmu1FUK6ngCsafUPqQyH8mEvVOeczjntTCx
	qvR6uDmoq1KmRqP1l0sZKiiezDEyVUxOKNjgYrRxb0Ilj/QuUW+Z42PmnK6CN/8h1w3YWdoMmpSYR
	SEb2LoIQvjoJzC2tYpbCoHdANSn6PKoJu2LD8lNNVfQU0uhQMbn1fZhyiT8BNkfrG6bVP8Bw3GmwJ
	2ftcfzagSm4stsLnWHBXPswCxA32DomYgY+LabBu/uWFLBR0Zr9OSJ+7o3ORUit+bOrQ5/TD6qs9W
	NlCiQPQw54AEQr95nOSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT9e3-0002Uv-DS; Mon, 27 Apr 2020 19:42:23 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT9dv-0002Tg-Jb
 for linux-mtd@lists.infradead.org; Mon, 27 Apr 2020 19:42:17 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id A8E9620003;
 Mon, 27 Apr 2020 19:42:12 +0000 (UTC)
Date: Mon, 27 Apr 2020 21:42:11 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH 05/17] mtd: rawnand: cafe: Demistify register fields
Message-ID: <20200427214116.3ea7fa82@xps13>
In-Reply-To: <20200427082028.394719-6-boris.brezillon@collabora.com>
References: <20200427082028.394719-1-boris.brezillon@collabora.com>
 <20200427082028.394719-6-boris.brezillon@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_124215_921825_BBB5272E 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
PiB3cm90ZSBvbiBNb24sIDI3IEFwcgoyMDIwIDEwOjIwOjE1ICswMjAwOgoKPiBUaGUgZHJpdmVy
IGhhcyBhIGJ1bmNoIG9mIG1hZ2ljIHZhbHVlcy4gTGV0J3MgZGVmaW5lIHByb3BlciByZWdpc3Rl
cgo+IGZpZWxkcyBiYXNlZCBvbiB0aGUgdGhpcyBzcGVjCgogICAgICAgICAgICAgICAgICBeXl4v
Xl5eXgplaXRoZXIgb25lIG9yIHRoZSBvdGhlcgoKPiBodHRwOi8vd2lraS5sYXB0b3Aub3JnL2lt
YWdlcy81LzVjLzg4QUxQMDFfRGF0YXNoZWV0X0p1bHlfMjAwNy5wZGYgYW5kCj4gdXNlIHRoZW0u
Cj4gCj4gU2lnbmVkLW9mZi1ieTogQm9yaXMgQnJlemlsbG9uIDxib3Jpcy5icmV6aWxsb25AY29s
bGFib3JhLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9tdGQvbmFuZC9yYXcvY2FmZV9uYW5kLmMgfCAz
NTEgKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMjcw
IGluc2VydGlvbnMoKyksIDgxIGRlbGV0aW9ucygtKQo+IAoKWy4uLl0KCj4gKyNkZWZpbmUgQ0FG
RV9HTE9CQUxfSVJRCQkJCTB4MzAwOAo+ICsjZGVmaW5lIENBRkVfR0xPQkFMX0lSUV9NQVNLCQkJ
MHgzMDBjCj4gKyNkZWZpbmUgQ0FGRV9HTE9CQUxfSVJRX1BDSV9FUlJPUgkJQklUKDMxKQo+ICsj
ZGVmaW5lIENBRkVfR0xPQkFMX0lSUV9WUERfVFdTSQkJQklUKDI2KQo+ICsjZGVmaW5lIENBRkVf
R0xPQkFMX0lSUV9DQ0lDCQkJQklUKDIpCj4gKyNkZWZpbmUgQ0FGRV9HTE9CQUxfSVJRX1NESAkJ
CUJJVCgxKQo+ICsjZGVmaW5lIENBRkVfR0xPQkFMX0lSUV9OQU5ECQkJQklUKDApCj4gKwo+ICsj
ZGVmaW5lIENBRkVfR0xPQkFMX1JFU0VUCQkJMHgzMDM0Cj4gKyNkZWZpbmUgQ0FGRV9HTE9CQUxf
UkVTRVRfQ0NJQwkJCUJJVCgyKQo+ICsjZGVmaW5lIENBRkVfR0xPQkFMX1JFU0VUX1NESAkJCUJJ
VCgxKQo+ICsjZGVmaW5lIENBRkVfR0xPQkFMX1JFU0VUX05BTkQJCQlCSVQoMCkKPiArCj4gKyNk
ZWZpbmUgQ0FGRV9GSUVMRF9QUkVQKHJlZywgZmllbGQsIHZhbCkJRklFTERfUFJFUChDQUZFXyMj
cmVnIyNfIyNmaWVsZCwgdmFsKQo+ICsjZGVmaW5lIENBRkVfRklFTERfR0VUKHJlZywgZmllbGQs
IHZhbCkJCUZJRUxEX0dFVChDQUZFXyMjcmVnIyNfIyNmaWVsZCwgdmFsKQoKaGVoZSA6KQoKPiAg
Cj4gIHN0cnVjdCBjYWZlX3ByaXYgewo+ICAJc3RydWN0IG5hbmRfY2hpcCBuYW5kOwo+IEBAIC0x
MDQsNyArMTk1LDggQEAgc3RhdGljIGNvbnN0IGNoYXIgKnBhcnRfcHJvYmVzW10gPSB7ICJjbWRs
aW5lcGFydCIsICJSZWRCb290IiwgTlVMTCB9Owo+ICBzdGF0aWMgaW50IGNhZmVfZGV2aWNlX3Jl
YWR5KHN0cnVjdCBuYW5kX2NoaXAgKmNoaXApCj4gIHsKPiAgCXN0cnVjdCBjYWZlX3ByaXYgKmNh
ZmUgPSBuYW5kX2dldF9jb250cm9sbGVyX2RhdGEoY2hpcCk7Cj4gLQlpbnQgcmVzdWx0ID0gISEo
Y2FmZV9yZWFkbChjYWZlLCBOQU5EX1NUQVRVUykgJiAweDQwMDAwMDAwKTsKPiArCWludCByZXN1
bHQgPSAhIShjYWZlX3JlYWRsKGNhZmUsIE5BTkRfU1RBVFVTKSAmCj4gKwkJCUNBRkVfTkFORF9T
VEFUVVNfRkxBU0hfQlVTWSk7Cj4gIAl1aW50MzJfdCBpcnFzID0gY2FmZV9yZWFkbChjYWZlLCBO
QU5EX0lSUSk7Cj4gIAo+ICAJY2FmZV93cml0ZWwoY2FmZSwgaXJxcywgTkFORF9JUlEpOwoKWy4u
Ll0KCj4gQEAgLTMxOCwxNCArNDMwLDE0IEBAIHN0YXRpYyB2b2lkIGNhZmVfc2VsZWN0X2NoaXAo
c3RydWN0IG5hbmRfY2hpcCAqY2hpcCwgaW50IGNoaXBucikKPiAgewo+ICAJc3RydWN0IGNhZmVf
cHJpdiAqY2FmZSA9IG5hbmRfZ2V0X2NvbnRyb2xsZXJfZGF0YShjaGlwKTsKPiAgCj4gKwlpZiAo
Y2hpcG5yIDwgMCB8fCBjaGlwbnIgPiAxKQo+ICsJCXJldHVybjsKPiArCgpJIHRoaW5rIHRoaXMg
Y2hhbmdlIHNob3VsZCBub3QgYmUgcGFydCBvZiB0aGlzIHBhdGNoPwoKPiAgCWNhZmVfZGV2X2Ri
ZygmY2FmZS0+cGRldi0+ZGV2LCAic2VsZWN0X2NoaXAgJWRcbiIsIGNoaXBucik7Cj4gIAo+ICAJ
LyogTWFzayB0aGUgYXBwcm9wcmlhdGUgYml0IGludG8gdGhlIHN0b3JlZCB2YWx1ZSBvZiBjdGwx
Cj4gIAkgICB3aGljaCB3aWxsIGJlIHVzZWQgYnkgY2FmZV9uYW5kX2NtZGZ1bmMoKSAqLwo+IC0J
aWYgKGNoaXBucikKPiAtCQljYWZlLT5jdGwxIHw9IENUUkwxX0NISVBTRUxFQ1Q7Cj4gLQllbHNl
Cj4gLQkJY2FmZS0+Y3RsMSAmPSB+Q1RSTDFfQ0hJUFNFTEVDVDsKPiArCWNhZmUtPmN0bDEgfD0g
Q0FGRV9GSUVMRF9QUkVQKE5BTkRfQ1RSTDEsIENFLCBjaGlwbnIpOwoKSSBkb24ndCBtYXN0ZXIg
dGhlc2UgbWFjcm9zIHlldCwgYnV0IGFyZSB5b3Ugc3VyZSBDVFJMMV9DSElQU0VMRUNUIHdpbGwK
YWN0dWFsbHkgZ2V0IGNsZWFyZWQgaWYgKCFjaGlwbnIpID8KCj4gIH0KPiAgCj4gIHN0YXRpYyBp
cnFyZXR1cm5fdCBjYWZlX25hbmRfaW50ZXJydXB0KGludCBpcnEsIHZvaWQgKmlkKQo+IEBAIC0z
MzQsNyArNDQ2LDkgQEAgc3RhdGljIGlycXJldHVybl90IGNhZmVfbmFuZF9pbnRlcnJ1cHQoaW50
IGlycSwgdm9pZCAqaWQpCj4gIAlzdHJ1Y3QgbmFuZF9jaGlwICpjaGlwID0gbXRkX3RvX25hbmQo
bXRkKTsKPiAgCXN0cnVjdCBjYWZlX3ByaXYgKmNhZmUgPSBuYW5kX2dldF9jb250cm9sbGVyX2Rh
dGEoY2hpcCk7Cj4gIAl1aW50MzJfdCBpcnFzID0gY2FmZV9yZWFkbChjYWZlLCBOQU5EX0lSUSk7
Cj4gLQljYWZlX3dyaXRlbChjYWZlLCBpcnFzICYgfjB4OTAwMDAwMDAsIE5BTkRfSVJRKTsKPiAr
CWNhZmVfd3JpdGVsKGNhZmUsCj4gKwkJICAgIGlycXMgJiB+KENBRkVfTkFORF9JUlFfQ01EX0RP
TkUgfCBDQUZFX05BTkRfSVJRX0RNQV9ET05FKSwKPiArCQkgICAgTkFORF9JUlEpOwo+ICAJaWYg
KCFpcnFzKQo+ICAJCXJldHVybiBJUlFfTk9ORTsKPiAgCgoKVGhhbmtzLApNaXF1w6hsCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgg
TVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
