Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF4D1E70AB
	for <lists+linux-mtd@lfdr.de>; Fri, 29 May 2020 01:46:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RRHep3ZRmJaJFlKJvuOZnrTbMkzZTrAnNEMq2LcfsbU=; b=jXjzO8dxeYZymu
	2Lgdgyv0guHdGWsVaOV0djAguPhbuZEUnT9Asp8DjhZOFz62tPqm266+GDfKi5dCxZgxp/jHdJV9k
	ozbVbkTWF6HVpVLy5AeW+TptS0y8FZ1kmVrV3ADbZu5RD2C4TkAmlvSrHpfJy9NzgmD5TlC8snabm
	GMt6o9+qw6REZ+oP3s7UghomQ7vI7QpAibojvVRYtCCZxGkujoq77lekbFgKvWlp2jq74rk75wx1j
	l8mKxbPCln2o+kAQnJ8rIVODO6eaTdEDsevOxkQnFKueWaZX+BWYxrx0m0oyrwGXciYRtahR5Y7yH
	WTmzATs7tZWmmrj2++yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeSEb-00065m-Vg; Thu, 28 May 2020 23:46:49 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeSE8-0005z5-UR; Thu, 28 May 2020 23:46:23 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id F3722240004;
 Thu, 28 May 2020 23:46:14 +0000 (UTC)
Date: Fri, 29 May 2020 01:46:13 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v6 15/18] mtd: nand: Introduce the ECC engine abstraction
Message-ID: <20200529014613.6e64f95f@xps13>
In-Reply-To: <20200528205251.5e8abdd1@collabora.com>
References: <20200528113113.9166-1-miquel.raynal@bootlin.com>
 <20200528113113.9166-16-miquel.raynal@bootlin.com>
 <20200528205251.5e8abdd1@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_164621_252033_F20FF4E5 
X-CRM114-Status: GOOD (  39.73  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>, Julien Su <juliensu@mxic.com.tw>,
 Richard Weinberger <richard@nod.at>, Weijie Gao <weijie.gao@mediatek.com>,
 Paul Cercueil <paul@crapouillou.net>, Rob Herring <robh+dt@kernel.org>,
 linux-mtd@lists.infradead.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, Chuanhong Guo <gch981213@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgQm9yaXMsCgpCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29t
PiB3cm90ZSBvbiBUaHUsIDI4IE1heQoyMDIwIDIwOjUyOjUxICswMjAwOgoKPiBPbiBUaHUsIDI4
IE1heSAyMDIwIDEzOjMxOjEwICswMjAwCj4gTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBi
b290bGluLmNvbT4gd3JvdGU6Cj4gCj4gPiBDcmVhdGUgYSBnZW5lcmljIEVDQyBlbmdpbmUgb2Jq
ZWN0Lgo+ID4gCj4gPiBMYXRlciB0aGUgZWNjLmMgZmlsZSB3aWxsIHJlY2VpdmUgbW9yZSBnZW5l
cmljIGNvZGUgY29taW5nIGZyb20KPiA+IHRoZSByYXcgTkFORCBzcGVjaWZpYyBwYXJ0LiBUaGlz
IGlzIGEgYmFzZSB0byBpbnN0YW50aWF0ZSBFQ0MgZW5naW5lCj4gPiBvYmplY3RzLgo+ID4gCj4g
PiBTaWduZWQtb2ZmLWJ5OiBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29t
Pgo+ID4gLS0tCj4gPiAgZHJpdmVycy9tdGQvbmFuZC9LY29uZmlnICB8ICAgNyArKwo+ID4gIGRy
aXZlcnMvbXRkL25hbmQvTWFrZWZpbGUgfCAgIDIgKwo+ID4gIGRyaXZlcnMvbXRkL25hbmQvZWNj
LmMgICAgfCAxMzggKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiA+ICBp
bmNsdWRlL2xpbnV4L210ZC9uYW5kLmggIHwgIDY3ICsrKysrKysrKysrKysrKysrKwo+ID4gIDQg
ZmlsZXMgY2hhbmdlZCwgMjE0IGluc2VydGlvbnMoKykKPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQg
ZHJpdmVycy9tdGQvbmFuZC9lY2MuYwo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tdGQv
bmFuZC9LY29uZmlnIGIvZHJpdmVycy9tdGQvbmFuZC9LY29uZmlnCj4gPiBpbmRleCBjMWE0NWIw
NzExNjUuLmE0NDc4ZmZhMjc5ZCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvbXRkL25hbmQvS2Nv
bmZpZwo+ID4gKysrIGIvZHJpdmVycy9tdGQvbmFuZC9LY29uZmlnCj4gPiBAQCAtOSw0ICs5LDEx
IEBAIHNvdXJjZSAiZHJpdmVycy9tdGQvbmFuZC9vbmVuYW5kL0tjb25maWciCj4gPiAgc291cmNl
ICJkcml2ZXJzL210ZC9uYW5kL3Jhdy9LY29uZmlnIgo+ID4gIHNvdXJjZSAiZHJpdmVycy9tdGQv
bmFuZC9zcGkvS2NvbmZpZyIKPiA+ICAKPiA+ICttZW51ICJFQ0MgZW5naW5lIHN1cHBvcnQiCj4g
PiArCj4gPiArY29uZmlnIE1URF9OQU5EX0VDQwo+ID4gKwlib29sCj4gPiArCj4gPiArZW5kbWVu
dQo+ID4gKwo+ID4gIGVuZG1lbnUKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL210ZC9uYW5kL01h
a2VmaWxlIGIvZHJpdmVycy9tdGQvbmFuZC9NYWtlZmlsZQo+ID4gaW5kZXggN2VjZDgwYzBhNjZl
Li45ODEzNzI5NTNiNTYgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL210ZC9uYW5kL01ha2VmaWxl
Cj4gPiArKysgYi9kcml2ZXJzL210ZC9uYW5kL01ha2VmaWxlCj4gPiBAQCAtNiwzICs2LDUgQEAg
b2JqLSQoQ09ORklHX01URF9OQU5EX0NPUkUpICs9IG5hbmRjb3JlLm8KPiA+ICBvYmoteQkrPSBv
bmVuYW5kLwo+ID4gIG9iai15CSs9IHJhdy8KPiA+ICBvYmoteQkrPSBzcGkvCj4gPiArCj4gPiAr
bmFuZGNvcmUtJChDT05GSUdfTVREX05BTkRfRUNDKSArPSBlY2Mubwo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbXRkL25hbmQvZWNjLmMgYi9kcml2ZXJzL210ZC9uYW5kL2VjYy5jCj4gPiBuZXcg
ZmlsZSBtb2RlIDEwMDY0NAo+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi5lNGYyYjZmY2JiMTIKPiA+
IC0tLSAvZGV2L251bGwKPiA+ICsrKyBiL2RyaXZlcnMvbXRkL25hbmQvZWNjLmMKPiA+IEBAIC0w
LDAgKzEsMTM4IEBACj4gPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjArCj4g
PiArLyoKPiA+ICsgKiBHZW5lcmljIEVycm9yLUNvcnJlY3RpbmcgQ29kZSAoRUNDKSBlbmdpbmUK
PiA+ICsgKgo+ID4gKyAqIENvcHlyaWdodCAoQykgMjAxOSBNYWNyb25peAo+ID4gKyAqIEF1dGhv
cjoKPiA+ICsgKiAgICAgTWlxdcOobCBSQVlOQUwgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5jb20+
Cj4gPiArICoKPiA+ICsgKgo+ID4gKyAqIFRoaXMgZmlsZSBkZXNjcmliZXMgdGhlIGFic3RyYWN0
aW9uIG9mIGFueSBOQU5EIEVDQyBlbmdpbmUuIEl0IGhhcyBiZWVuCj4gPiArICogZGVzaWduZWQg
dG8gZml0IG1vc3QgY2FzZXMsIGluY2x1ZGluZyBwYXJhbGxlbCBOQU5EcyBhbmQgU1BJLU5BTkRz
Lgo+ID4gKyAqCj4gPiArICogVGhlcmUgYXJlIHRocmVlIG1haW4gc2l0dWF0aW9ucyB3aGVyZSBp
bnN0YW50aWF0aW5nIHRoaXMgRUNDIGVuZ2luZSBtYWtlcwo+ID4gKyAqIHNlbnNlOgo+ID4gKyAq
ICAgLSAiZXh0ZXJuYWwiOiBUaGUgRUNDIGVuZ2luZSBpcyBvdXRzaWRlIHRoZSBOQU5EIHBpcGVs
aW5lLCB0eXBpY2FsbHkgdGhpcyAgCj4gCj4gSSdtIG5vdCBzdXJlIHdoeSB5b3UgcHV0IHF1b3Rl
cyBhcm91bmQgdGhvc2UgbmFtZXMuCj4gCj4gPiArICogICAgICAgICAgICAgICAgIGlzIGEgc29m
dHdhcmUgRUNDIGVuZ2luZS4gT25lIGNhbiBhbHNvIGltYWdpbmUgYSBnZW5lcmljICAKPiAKPiAJ
CQkJICAJCV4gb3IgYW4gaGFyZHdhcmUKPiAJZW5naW5lIHRoYXQncyBvdXRzaWRlIHRoZSBOQU5E
IGNvbnRyb2xsZXIgcGlwZWxpbmUuCj4gCj4gWW91IGNhbiB0aGUgZHJvcCB0aGUgIk9uZSBjYW4g
YWxzbyBpbWFnaW5lIC4uLiIgc2luY2UgaXQncyBtb3JlIHRoYW4gYQo+IHRoZW9yZXRpY2FsIHVz
ZSBjYXNlLCB3ZSBhbHJlYWR5IGhhdmUgYSBmZXcgZW5naW5lcyB0aGF0IGZhbGwgaW4gdGhpcwo+
IGNhdGVnb3J5Lgo+IAo+ID4gKyAqICAgICAgICAgICAgICAgICBoYXJkd2FyZSBFQ0MgZW5naW5l
IHdoaWNoIHdvdWxkIGJlIGFuIElQIGl0c2VsZi4gSW50ZXJhY3RpbmcKPiA+ICsgKiAgICAgICAg
ICAgICAgICAgd2l0aCBhIFNQSS1OQU5EIGRldmljZSB3aXRob3V0IG9uLWRpZSBFQ0MgY291bGQg
YmUgYWNoaWV2ZWQgIAo+IAo+IAkJCQkJCQkJIF5jYW4KPiAKPiA+ICsgKiAgICAgICAgICAgICAg
ICAgdGhhbmtzIHRvIHRoZSB1c2Ugb2Ygc3VjaCBleHRlcm5hbCBlbmdpbmUuICAKPiAKPiBCdXQg
SSB0aGluayBJIHdvdWxkIHNpbXBseSBkcm9wIHRoaXMgbGFzdCBzZW50ZW5jZS4KPiAKPiA+ICsg
KiAgIC0gInBpcGVsaW5lZCI6IFRoZSBFQ0MgZW5naW5lIGlzIGluc2lkZSB0aGUgTkFORCBwaXBl
bGluZSwgaWUuIG9uIHRoZQo+ID4gKyAqICAgICAgICAgICAgICAgICAgY29udHJvbGxlcidzIHNp
ZGUuIFRoaXMgaXMgdGhlIGNhc2Ugb2YgbW9zdCBvZiB0aGUgcmF3IE5BTkQKPiA+ICsgKiAgICAg
ICAgICAgICAgICAgIGNvbnRyb2xsZXJzLiBUaGVzZSBjb250cm9sbGVycyB1c3VhbGx5IGVtYmVk
IGFuIGhhcmR3YXJlIEVDQwo+ID4gKyAqICAgICAgICAgICAgICAgICAgZW5naW5lIHdoaWNoIGlz
IG1hbmFnZWQgdGhhbmtzIHRvIHRoZSBzYW1lIHJlZ2lzdGVyIHNldCBhcwo+ID4gKyAqICAgICAg
ICAgICAgICAgICAgdGhlIGNvbnRyb2xsZXIncy4gIAo+IAo+IEFnYWluLCBJIHdvdWxkIGRyb3Ag
dGhlIGxhc3Qgc2VudGVuY2UgaGVyZS4gSSB0aGluayBzYXlpbmcgdGhlIEVDQwo+IGJ5dGVzIGFy
ZSBnZW5lcmF0ZWQvZGF0YSBjb3JyZWN0ZWQgb24gdGhlIGZseSB3aGVuIGEgcGFnZSBpcwo+IHdy
aXR0ZW4vcmVhZCB3b3VsZCBiZSBtb3JlIHVzZWZ1bC4KPiAKPiA+ICsgKiAgIC0gIm9uZGllIjog
VGhlIEVDQyBlbmdpbmUgaXMgaW5zaWRlIHRoZSBOQU5EIHBpcGVsaW5lLCBvbiB0aGUgY2hpcCdz
IHNpZGUuCj4gPiArICogICAgICAgICAgICAgIFNvbWUgTkFORCBjaGlwcyBjYW4gY29ycmVjdCB0
aGVtc2VsdmVzIHRoZSBkYXRhLiBUaGUgb24tZGllCj4gPiArICogICAgICAgICAgICAgIGNvcnJl
Y3Rpb24gY2FuIGJlIGVuYWJsZWQsIGRpc2FibGVkIGFuZCB0aGUgc3RhdHVzIG9mIHRoZQo+ID4g
KyAqICAgICAgICAgICAgICBjb3JyZWN0aW9uIGFmdGVyIGEgcmVhZCBtYXkgYmUgcmV0cmlldmVk
IHdpdGggYSBOQU5EIGNvbW1hbmQKPiA+ICsgKiAgICAgICAgICAgICAgKG1heSBiZSB2ZW5kb3Ig
c3BlY2lmaWMpLiAgCj4gCj4gIlRoZSBvbi1kaWUgY29ycmVjdGlvbiBjYW4gYmUgZW5hYmxlZCwg
ZGlzYWJsZWQiIC0+IHRoaXMgaXMgdHJ1ZSBmb3IKPiBhbnkga2luZCBvZiBFQ0MgZW5naW5lIDpQ
Lgo+IAo+ID4gKyAqCj4gPiArICogQmVzaWRlcyB0aGUgaW5pdGlhbCBzZXR1cCBhbmQgZmluYWwg
Y2xlYW51cHMsIHRoZSBpbnRlcmZhY2VzIGFyZSByYXRoZXIKPiA+ICsgKiBzaW1wbGU6Cj4gPiAr
ICogICAtICJwcmVwYXJlIjogUHJlcGFyZSBhbiBJL08gcmVxdWVzdCwgY2hlY2sgdGhlIEVDQyBl
bmdpbmUgaXMgZW5hYmxlZCBvciAgCj4gCj4gCQkJCQkJICAgXmlmL3doZXRoZXIKPiAKPiA+ICsg
KiAgICAgICAgICAgICAgICBkaXNhYmxlZCBhcyByZXF1ZXN0ZWQgYmVmb3JlIHRoZSBJL08uIElu
IGNhc2Ugb2Ygc29mdHdhcmUgIAo+IAo+IEhvdyBhYm91dCAiRW5hYmxlL2Rpc2FibGUgdGhlIEVD
QyBlbmdpbmUgYmFzZWQgb24gdGhlIEkvTyByZXF1ZXN0IHR5cGUuIgo+IAo+ID4gKyAqICAgICAg
ICAgICAgICAgIGNvcnJlY3Rpb24sIHRoaXMgc3RlcCBtYXkgaW52b2x2ZSB0byBkZXJpdmUgdGhl
IEVDQyBieXRlcyBhbmQKPiA+ICsgKiAgICAgICAgICAgICAgICBwbGFjZSB0aGVtIGluIHRoZSBP
T0IgYXJlYSBiZWZvcmUgYSB3cml0ZS4gIAo+IAo+IFRoaXMgaXMgYWxzbyB0cnVlIGZvciBleHRl
cm5hbCBoYXJkd2FyZSBFQ0MgZW5naW5lcy4KPiAKPiA+ICsgKiAgIC0gImZpbmlzaCI6IEZpbmlz
aCBhbiBJL08gcmVxdWVzdCwgY2hlY2sgdGhlIHN0YXR1cyBvZiB0aGUgb3BlcmF0aW9uIGllLgo+
ID4gKyAqICAgICAgICAgICAgICAgdGhlIGRhdGEgdmFsaWRpdHkgaW4gY2FzZSBvZiBhIHJlYWQg
KHJlcG9ydCB0byB0aGUgdXBwZXIgbGF5ZXIKPiA+ICsgKiAgICAgICAgICAgICAgIGFueSBiaXRm
bGlwL2Vycm9ycykuICAKPiAKPiBJdCdzIGFsbCBhYm91dCBjb3JyZWN0aW5nL3JlcG9ydGluZyBl
cnJvcnMsIHJpZ2h0LiBMZXQncyB0cnkgdG8gcHV0Cj4gdGhhdCBpbnRvIHNpbXBsZSB3b3Jkczog
IkNvcnJlY3QgdGhlIGRhdGEgaW4gY2FzZSBvZiBhIHJlYWQgcmVxdWVzdCBhbmQKPiByZXBvcnQg
dGhlIG51bWJlciBvZiBjb3JyZWN0ZWQgYml0cy91bmNvcnJlY3RhYmxlIGVycm9ycy4gTW9zdCBs
aWtlbHkKPiBlbXB0eSBmb3Igd3JpdGUgb3BlcmF0aW9ucywgdW5sZXNzIHlvdSBoYXZlIGhhcmR3
YXJlIHNwZWNpZmljIHN0dWZmIHRvCj4gZG8sIGxpa2Ugc2h1dHRpbmcgZG93biB0aGUgZW5naW5l
IHRvIHNhdmUgc29tZSBwb3dlciIKPiAKPiA+ICsgKgo+ID4gKyAqIEJvdGggcHJlcGFyZS9maW5p
c2ggY2FsbGJhY2tzIGFyZSBzdXBwb3NlZCB0byBlbmNsb3NlIEkvTyByZXF1ZXN0IGFuZCB3aWxs
ICAKPiAKPiAiVGhlIEkvTyByZXF1ZXN0IHNob3VsZCBiZSBlbmNsb3NlZCBpbiBhIHByZXBhcmUo
KS9maW5pc2goKSBwYWlyIG9mCj4gY2FsbHMiIG9yICJUaGUgcHJlcGFyZS9maW5pc2ggY2FsbCBz
aG91bGQgc3Vycm91bmQgdGhlIEkvTyByZXF1ZXN0Ii4KPiAKPiA+ICsgKiBiZWhhdmUgZGlmZmVy
ZW50bHkgZGVwZW5kaW5nIG9uIHRoZSBkZXNpcmVkIGNvcnJlY3Rpb246ICAKPiAKPiAJCQkJCSAg
IF5yZXF1ZXN0ZWQgSS9PIHR5cGUKPiAKPiA+ICsgKiAgIC0gInJhdyI6IENvcnJlY3Rpb24gZGlz
YWJsZWQKPiA+ICsgKiAgIC0gImVjYyI6IENvcnJlY3Rpb24gZW5hYmxlZAo+ID4gKyAqCj4gPiAr
ICogVGhlIHJlcXVlc3QgZGlyZWN0aW9uIGlzIGltcGFjdGluZyB0aGUgbG9naWMgYXMgd2VsbDoK
PiA+ICsgKiAgIC0gInJlYWQiOiBMb2FkIGRhdGEgZnJvbSB0aGUgTkFORCBjaGlwCj4gPiArICog
ICAtICJ3cml0ZSI6IFN0b3JlIGRhdGEgaW4gdGhlIE5BTkQgY2hpcAo+ID4gKyAqCj4gPiArICog
TWl4aW5nIGFsbCB0aGlzIGNvbWJpbmF0aW9ucyB0b2dldGhlciBnaXZlcyB0aGUgZm9sbG93aW5n
IGJlaGF2aW9yLiAgCj4gCj4gTWVudGlvbiB0aGF0IHRob3NlIGFyZSBqdXN0IGV4YW1wbGVzLCBh
bmQgZHJpdmVycyBhcmUgZnJlZSB0byBhZGQKPiBjdXN0b20gc3RlcHMgaW4gdGhlaXIgcHJlcGFy
ZS9maW5pc2ggaG9va3MuCj4gCj4gPiArICoKPiA+ICsgKiBbImV4dGVybmFsIiBFQ0MgZW5naW5l
XQo+ID4gKyAqICAgLSBleHRlcm5hbCArIHByZXBhcmUgKyByYXcgKyByZWFkOiBkbyBub3RoaW5n
Cj4gPiArICogICAtIGV4dGVybmFsICsgZmluaXNoICArIHJhdyArIHJlYWQ6IGRvIG5vdGhpbmcK
PiA+ICsgKiAgIC0gZXh0ZXJuYWwgKyBwcmVwYXJlICsgcmF3ICsgd3JpdGU6IGRvIG5vdGhpbmcK
PiA+ICsgKiAgIC0gZXh0ZXJuYWwgKyBmaW5pc2ggICsgcmF3ICsgd3JpdGU6IGRvIG5vdGhpbmcK
PiA+ICsgKiAgIC0gZXh0ZXJuYWwgKyBwcmVwYXJlICsgZWNjICsgcmVhZDogZG8gbm90aGluZwo+
ID4gKyAqICAgLSBleHRlcm5hbCArIGZpbmlzaCAgKyBlY2MgKyByZWFkOiBjYWxjdWxhdGUgZXhw
ZWN0ZWQgRUNDIGJ5dGVzLCBleHRyYWN0Cj4gPiArICogICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIEVDQyBieXRlcyBmcm9tIE9PQiBidWZmZXIsIGNvcnJlY3QKPiA+ICsgKiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYW5kIHJlcG9ydCBhbnkgYml0Zmxp
cC9lcnJvcgo+ID4gKyAqICAgLSBleHRlcm5hbCArIHByZXBhcmUgKyBlY2MgKyB3cml0ZTogY2Fs
Y3VsYXRlIEVDQyBieXRlcyBhbmQgc3RvcmUgdGhlbSBhdAo+ID4gKyAqICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgdGhlIHJpZ2h0IHBsYWNlIGluIHRoZSBPT0IgYnVmZmVy
IGJhc2VkCj4gPiArICogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvbiB0
aGUgT09CIGxheW91dAo+ID4gKyAqICAgLSBleHRlcm5hbCArIGZpbmlzaCAgKyBlY2MgKyB3cml0
ZTogZG8gbm90aGluZwo+ID4gKyAqCj4gPiArICogWyJwaXBlbGluZWQiIEVDQyBlbmdpbmVdCj4g
PiArICogICAtIHBpcGVsaW5lZCArIHByZXBhcmUgKyByYXcgKyByZWFkOiBkaXNhYmxlIHRoZSBj
b250cm9sbGVyJ3MgRUNDIGVuZ2luZSBpZgo+ID4gKyAqICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgYWN0aXZhdGVkCj4gPiArICogICAtIHBpcGVsaW5lZCArIGZpbmlzaCAg
KyByYXcgKyByZWFkOiBkbyBub3RoaW5nCj4gPiArICogICAtIHBpcGVsaW5lZCArIHByZXBhcmUg
KyByYXcgKyB3cml0ZTogZGlzYWJsZSB0aGUgY29udHJvbGxlcidzIEVDQyBlbmdpbmUgaWYKPiA+
ICsgKiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBhY3RpdmF0ZWQKPiA+
ICsgKiAgIC0gcGlwZWxpbmVkICsgZmluaXNoICArIHJhdyArIHdyaXRlOiBkbyBub3RoaW5nCj4g
PiArICogICAtIHBpcGVsaW5lZCArIHByZXBhcmUgKyBlY2MgKyByZWFkOiBlbmFibGUgdGhlIGNv
bnRyb2xsZXIncyBFQ0MgZW5naW5lIGlmCj4gPiArICogICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBkZWFjdGl2YXRlZAo+ID4gKyAqICAgLSBwaXBlbGluZWQgKyBmaW5pc2gg
ICsgZWNjICsgcmVhZDogY2hlY2sgdGhlIHN0YXR1cywgcmVwb3J0IGFueQo+ID4gKyAqICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZXJyb3IvYml0ZmxpcAo+ID4gKyAqICAg
LSBwaXBlbGluZWQgKyBwcmVwYXJlICsgZWNjICsgd3JpdGU6IGVuYWJsZSB0aGUgY29udHJvbGxl
cidzIEVDQyBlbmdpbmUgaWYKPiA+ICsgKiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBkZWFjdGl2YXRlZAo+ID4gKyAqICAgLSBwaXBlbGluZWQgKyBmaW5pc2ggICsgZWNj
ICsgd3JpdGU6IGRvIG5vdGhpbmcKPiA+ICsgKgo+ID4gKyAqIFsib25kaWUiIEVDQyBlbmdpbmVd
Cj4gPiArICogICAtIG9uZGllICsgcHJlcGFyZSArIHJhdyArIHJlYWQ6IHNlbmQgY29tbWFuZHMg
dG8gZGlzYWJsZSB0aGUgb24tY2hpcCBFQ0MKPiA+ICsgKiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgZW5naW5lIGlmIGFjdGl2YXRlZAo+ID4gKyAqICAgLSBvbmRpZSArIGZpbmlz
aCAgKyByYXcgKyByZWFkOiBkbyBub3RoaW5nCj4gPiArICogICAtIG9uZGllICsgcHJlcGFyZSAr
IHJhdyArIHdyaXRlOiBzZW5kIGNvbW1hbmRzIHRvIGRpc2FibGUgdGhlIG9uLWNoaXAgRUNDCj4g
PiArICogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBlbmdpbmUgaWYgYWN0aXZh
dGVkCj4gPiArICogICAtIG9uZGllICsgZmluaXNoICArIHJhdyArIHdyaXRlOiBkbyBub3RoaW5n
Cj4gPiArICogICAtIG9uZGllICsgcHJlcGFyZSArIGVjYyArIHJlYWQ6IHNlbmQgY29tbWFuZHMg
dG8gZW5hYmxlIHRoZSBvbi1jaGlwIEVDQwo+ID4gKyAqICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBlbmdpbmUgaWYgZGVhY3RpdmF0ZWQKPiA+ICsgKiAgIC0gb25kaWUgKyBmaW5p
c2ggICsgZWNjICsgcmVhZDogc2VuZCBjb21tYW5kcyB0byBjaGVjayB0aGUgc3RhdHVzLCByZXBv
cnQKPiA+ICsgKiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYW55IGVycm9yL2Jp
dGZsaXAKPiA+ICsgKiAgIC0gb25kaWUgKyBwcmVwYXJlICsgZWNjICsgd3JpdGU6IHNlbmQgY29t
bWFuZHMgdG8gZW5hYmxlIHRoZSBvbi1jaGlwIEVDQwo+ID4gKyAqICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgZW5naW5lIGlmIGRlYWN0aXZhdGVkCj4gPiArICogICAtIG9uZGll
ICsgZmluaXNoICArIGVjYyArIHdyaXRlOiBkbyBub3RoaW5nCj4gPiArICovCj4gPiArCj4gPiAr
I2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgo+ID4gKyNpbmNsdWRlIDxsaW51eC9tdGQvbmFuZC5o
Pgo+ID4gKyAgCj4gCj4gU2hvdWxkbid0IHdlIGhhdmUga2VybmVsLWRvY3MgZm9yIHRob3NlIGZ1
bmN0aW9ucz8KPiAKPiA+ICtpbnQgbmFuZF9lY2NfaW5pdF9jdHgoc3RydWN0IG5hbmRfZGV2aWNl
ICpuYW5kKQo+ID4gK3sKPiA+ICsJaWYgKCFuYW5kLT5lY2MuZW5naW5lLT5vcHMtPmluaXRfY3R4
KQo+ID4gKwkJcmV0dXJuIDA7Cj4gPiArCj4gPiArCXJldHVybiBuYW5kLT5lY2MuZW5naW5lLT5v
cHMtPmluaXRfY3R4KG5hbmQpOwo+ID4gK30KPiA+ICtFWFBPUlRfU1lNQk9MKG5hbmRfZWNjX2lu
aXRfY3R4KTsKPiA+ICsKPiA+ICt2b2lkIG5hbmRfZWNjX2NsZWFudXBfY3R4KHN0cnVjdCBuYW5k
X2RldmljZSAqbmFuZCkKPiA+ICt7Cj4gPiArCWlmIChuYW5kLT5lY2MuZW5naW5lLT5vcHMtPmNs
ZWFudXBfY3R4KQo+ID4gKwkJbmFuZC0+ZWNjLmVuZ2luZS0+b3BzLT5jbGVhbnVwX2N0eChuYW5k
KTsKPiA+ICt9Cj4gPiArRVhQT1JUX1NZTUJPTChuYW5kX2VjY19jbGVhbnVwX2N0eCk7Cj4gPiAr
Cj4gPiAraW50IG5hbmRfZWNjX3ByZXBhcmVfaW9fcmVxKHN0cnVjdCBuYW5kX2RldmljZSAqbmFu
ZCwKPiA+ICsJCQkgICAgc3RydWN0IG5hbmRfcGFnZV9pb19yZXEgKnJlcSkKPiA+ICt7Cj4gPiAr
CWlmICghbmFuZC0+ZWNjLmVuZ2luZS0+b3BzLT5wcmVwYXJlX2lvX3JlcSkKPiA+ICsJCXJldHVy
biAwOwo+ID4gKwo+ID4gKwlyZXR1cm4gbmFuZC0+ZWNjLmVuZ2luZS0+b3BzLT5wcmVwYXJlX2lv
X3JlcShuYW5kLCByZXEpOwo+ID4gK30KPiA+ICtFWFBPUlRfU1lNQk9MKG5hbmRfZWNjX3ByZXBh
cmVfaW9fcmVxKTsKPiA+ICsKPiA+ICtpbnQgbmFuZF9lY2NfZmluaXNoX2lvX3JlcShzdHJ1Y3Qg
bmFuZF9kZXZpY2UgKm5hbmQsCj4gPiArCQkJICAgc3RydWN0IG5hbmRfcGFnZV9pb19yZXEgKnJl
cSkKPiA+ICt7Cj4gPiArCWlmICghbmFuZC0+ZWNjLmVuZ2luZS0+b3BzLT5maW5pc2hfaW9fcmVx
KQo+ID4gKwkJcmV0dXJuIDA7Cj4gPiArCj4gPiArCXJldHVybiBuYW5kLT5lY2MuZW5naW5lLT5v
cHMtPmZpbmlzaF9pb19yZXEobmFuZCwgcmVxKTsKPiA+ICt9Cj4gPiArRVhQT1JUX1NZTUJPTChu
YW5kX2VjY19maW5pc2hfaW9fcmVxKTsKPiA+ICsKPiA+ICtNT0RVTEVfTElDRU5TRSgiR1BMIik7
Cj4gPiArTU9EVUxFX0FVVEhPUigiTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290bGlu
LmNvbT4iKTsKPiA+ICtNT0RVTEVfREVTQ1JJUFRJT04oIkdlbmVyaWMgRUNDIGVuZ2luZSIpOwo+
ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvbXRkL25hbmQuaCBiL2luY2x1ZGUvbGludXgv
bXRkL25hbmQuaAo+ID4gaW5kZXggMmU5YWYyNDkzNmNkLi4wYmUyNjBmZDJmODYgMTAwNjQ0Cj4g
PiAtLS0gYS9pbmNsdWRlL2xpbnV4L210ZC9uYW5kLmgKPiA+ICsrKyBiL2luY2x1ZGUvbGludXgv
bXRkL25hbmQuaAo+ID4gQEAgLTIyMSw2ICsyMjEsNzMgQEAgc3RydWN0IG5hbmRfb3BzIHsKPiA+
ICAJYm9vbCAoKmlzYmFkKShzdHJ1Y3QgbmFuZF9kZXZpY2UgKm5hbmQsIGNvbnN0IHN0cnVjdCBu
YW5kX3BvcyAqcG9zKTsKPiA+ICB9Owo+ID4gIAo+ID4gKy8qKgo+ID4gKyAqIHN0cnVjdCBuYW5k
X2VjY19jb250ZXh0IC0gQ29udGV4dCBmb3IgdGhlIEVDQyBlbmdpbmUKPiA+ICsgKiBAY29uZjog
YmFzaWMgRUNDIGVuZ2luZSBwYXJhbWV0ZXJzCj4gPiArICogQHRvdGFsOiBUb3RhbCBudW1iZXIg
b2YgYnl0ZXMgdXNlZCBmb3Igc3RvcmluZyBFQ0MgY29kZXMsIHRoaXMgaXMgdXNlZCBieSAgCj4g
Cj4gU29tZXRpbWVzIHlvdSBzdGFydCB5b3VyIGRlc2NyaXB0aW9uIHdpdGggYW4gdXBwZXJjYXNl
LCBzb21ldGltZXMgbm90Lgo+IAo+ID4gKyAqICAgICAgICAgZ2VuZXJpYyBPT0IgbGF5b3V0cwo+
ID4gKyAqIEBwcml2OiBFQ0MgZW5naW5lIGRyaXZlciBwcml2YXRlIGRhdGEKPiA+ICsgKi8KPiA+
ICtzdHJ1Y3QgbmFuZF9lY2NfY29udGV4dCB7Cj4gPiArCXN0cnVjdCBuYW5kX2VjY19wcm9wcyBj
b25mOwo+ID4gKwl1bnNpZ25lZCBpbnQgdG90YWw7Cj4gPiArCXZvaWQgKnByaXY7Cj4gPiArfTsK
PiA+ICsKPiA+ICsvKioKPiA+ICsgKiBzdHJ1Y3QgbmFuZF9lY2NfZW5naW5lX29wcyAtIEdlbmVy
aWMgRUNDIGVuZ2luZSBvcGVyYXRpb25zICAKPiAKPiAJCQkJICAgIF5zL0dlbmVyaWMvLwo+IAo+
ID4gKyAqIEBpbml0X2N0eDogZ2l2ZW4gYSBkZXNpcmVkIHVzZXIgY29uZmlndXJhdGlvbiBmb3Ig
dGhlIHBvaW50ZWQgTkFORCBkZXZpY2UsCj4gPiArICogICAgICAgICAgICByZXF1ZXN0cyB0aGUg
RUNDIGVuZ2luZSBkcml2ZXIgdG8gc2V0dXAgYSBjb25maWd1cmF0aW9uIHdpdGgKPiA+ICsgKiAg
ICAgICAgICAgIHZhbHVlcyBpdCBzdXBwb3J0cy4KPiA+ICsgKiBAY2xlYW51cF9jdHg6IGNsZWFu
IHRoZSBjb250ZXh0IGluaXRpYWxpemVkIGJ5IEBpbml0X2N0eC4KPiA+ICsgKiBAcHJlcGFyZV9p
b19yZXE6IGlzIGNhbGxlZCBiZWZvcmUgcmVhZGluZy93cml0aW5nIGEgcGFnZSB0byBwcmVwYXJl
IHRoZSBJL08KPiA+ICsgKiAgICAgICAgICAgICAgICAgIHJlcXVlc3QgdG8gYmUgcGVyZm9ybWVk
IHdpdGggRUNDIGNvcnJlY3Rpb24uCj4gPiArICogQGZpbmlzaF9pb19yZXE6IGlzIGNhbGxlZCBh
ZnRlciByZWFkaW5nL3dyaXRpbmcgYSBwYWdlIHRvIHRlcm1pbmF0ZSB0aGUgSS9PCj4gPiArICog
ICAgICAgICAgICAgICAgIHJlcXVlc3QgYW5kIGVuc3VyZSBwcm9wZXIgRUNDIGNvcnJlY3Rpb24u
Cj4gPiArICovCj4gPiArc3RydWN0IG5hbmRfZWNjX2VuZ2luZV9vcHMgewo+ID4gKwlpbnQgKCpp
bml0X2N0eCkoc3RydWN0IG5hbmRfZGV2aWNlICpuYW5kKTsKPiA+ICsJdm9pZCAoKmNsZWFudXBf
Y3R4KShzdHJ1Y3QgbmFuZF9kZXZpY2UgKm5hbmQpOwo+ID4gKwlpbnQgKCpwcmVwYXJlX2lvX3Jl
cSkoc3RydWN0IG5hbmRfZGV2aWNlICpuYW5kLAo+ID4gKwkJCSAgICAgIHN0cnVjdCBuYW5kX3Bh
Z2VfaW9fcmVxICpyZXEpOwo+ID4gKwlpbnQgKCpmaW5pc2hfaW9fcmVxKShzdHJ1Y3QgbmFuZF9k
ZXZpY2UgKm5hbmQsCj4gPiArCQkJICAgICBzdHJ1Y3QgbmFuZF9wYWdlX2lvX3JlcSAqcmVxKTsK
PiA+ICt9Owo+ID4gKwo+ID4gKy8qKgo+ID4gKyAqIHN0cnVjdCBuYW5kX2VjY19lbmdpbmUgLSBH
ZW5lcmljIEVDQyBlbmdpbmUgYWJzdHJhY3Rpb24gZm9yIE5BTkQgZGV2aWNlcyAgCj4gCj4gCQkJ
CV5zL0dlbmVyaWMvLwo+IAo+ID4gKyAqIEBvcHM6IEVDQyBlbmdpbmUgb3BlcmF0aW9ucwo+ID4g
KyAqLwo+ID4gK3N0cnVjdCBuYW5kX2VjY19lbmdpbmUgewo+ID4gKwlzdHJ1Y3QgbmFuZF9lY2Nf
ZW5naW5lX29wcyAqb3BzOwo+ID4gK307Cj4gPiArCj4gPiAraW50IG5hbmRfZWNjX2luaXRfY3R4
KHN0cnVjdCBuYW5kX2RldmljZSAqbmFuZCk7Cj4gPiArdm9pZCBuYW5kX2VjY19jbGVhbnVwX2N0
eChzdHJ1Y3QgbmFuZF9kZXZpY2UgKm5hbmQpOwo+ID4gK2ludCBuYW5kX2VjY19wcmVwYXJlX2lv
X3JlcShzdHJ1Y3QgbmFuZF9kZXZpY2UgKm5hbmQsCj4gPiArCQkJICAgIHN0cnVjdCBuYW5kX3Bh
Z2VfaW9fcmVxICpyZXEpOwo+ID4gK2ludCBuYW5kX2VjY19maW5pc2hfaW9fcmVxKHN0cnVjdCBu
YW5kX2RldmljZSAqbmFuZCwKPiA+ICsJCQkgICBzdHJ1Y3QgbmFuZF9wYWdlX2lvX3JlcSAqcmVx
KTsKPiA+ICsKPiA+ICsvKioKPiA+ICsgKiBzdHJ1Y3QgbmFuZF9lY2MgLSBIaWdoLWxldmVsIEVD
QyBvYmplY3QgIAo+IAo+IEkgdGhpbmsgeW91IGNhbiBkcm9wIHRoZSAiSGlnaC1sZXZlbCIgYW5k
IGp1c3Qgc2F5ICJJbmZvcm1hdGlvbgo+IHJlbGF0aXZlIHRvIHRoZSBFQ0MiCj4gCj4gPiArICog
QGRlZmF1bHRzOiBEZWZhdWx0IHZhbHVlcywgZGVwZW5kIG9uIHRoZSB1bmRlcmx5aW5nIHN1YnN5
c3RlbQo+ID4gKyAqIEByZXF1aXJlbWVudHM6IEVDQyByZXF1aXJlbWVudHMgZnJvbSB0aGUgTkFO
RCBjaGlwIHBlcnNwZWN0aXZlCj4gPiArICogQHVzZXJfY29uZjogVXNlciBkZXNpcmVzIGluIHRl
cm1zIG9mIEVDQyBwYXJhbWV0ZXJzCj4gPiArICogQGN0eDogRUNDIGNvbnRleHQgZm9yIHRoZSBF
Q0MgZW5naW5lLCBkZXJpdmVkIGZyb20gdGhlIGRldmljZSBAcmVxdWlyZW1lbnRzCj4gPiArICog
ICAgICAgdGhlIEB1c2VyX2NvbmYgYW5kIHRoZSBAZGVmYXVsdHMKPiA+ICsgKiBAb25kaWVfZW5n
aW5lOiBPbi1kaWUgRUNDIGVuZ2luZSByZWZlcmVuY2UsIGlmIGFueQo+ID4gKyAqIEBlbmdpbmU6
IEVDQyBlbmdpbmUgYWN0dWFsbHkgYm91bmQKPiA+ICsgKi8KPiA+ICtzdHJ1Y3QgbmFuZF9lY2Mg
ewo+ID4gKwlzdHJ1Y3QgbmFuZF9lY2NfcHJvcHMgZGVmYXVsdHM7Cj4gPiArCXN0cnVjdCBuYW5k
X2VjY19wcm9wcyByZXF1aXJlbWVudHM7Cj4gPiArCXN0cnVjdCBuYW5kX2VjY19wcm9wcyB1c2Vy
X2NvbmY7Cj4gPiArCXN0cnVjdCBuYW5kX2VjY19jb250ZXh0IGN0eDsKPiA+ICsJc3RydWN0IG5h
bmRfZWNjX2VuZ2luZSAqb25kaWVfZW5naW5lOwo+ID4gKwlzdHJ1Y3QgbmFuZF9lY2NfZW5naW5l
ICplbmdpbmU7Cj4gPiArfTsKPiA+ICsKPiA+ICAvKioKPiA+ICAgKiBzdHJ1Y3QgbmFuZF9kZXZp
Y2UgLSBOQU5EIGRldmljZQo+ID4gICAqIEBtdGQ6IE1URCBpbnN0YW5jZSBhdHRhY2hlZCB0byB0
aGUgTkFORCBkZXZpY2UgIAo+IAoKCkFsbCBjb21tZW50cyBhcHBsaWVkLgoKVGhhbmtzLApNaXF1
w6hsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
