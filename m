Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31498248F9
	for <lists+linux-mtd@lfdr.de>; Tue, 21 May 2019 09:32:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N4ts7Gt/TR06NqMsZEYRwXsbcjFf40uBLa1vBIPD9rQ=; b=AE7K64D51OkaLl
	g2Q52L31nc8qz/8CocZtXzeymn6CNt3HiWdwDeFcD2WZrxaYx3F2bAnzvEDDUlSrG62+uH6VtEEcW
	W8b3KZiqrG6cUQKqS1pmGmwial+eNAI2SXqETJnqyyK/5fckE/XvHpR8uCI/4FM6BZi/0WlFO7EM2
	rXq208DVLcIXsKb2HGW4WiMyLbmTwGeIYd7Yyl6/7+B72PYZPVQbYvXOvAAbEEgsQNIl8F/pGrY9O
	qPVn2QUR3UImHpwqShe2V2FyW1HJoSDYRsE9lPvsg6uOlESMSeRLZ0qx+bEWP6k15MaQHKo6lMoah
	BceNL/lBwVMhmuvtABzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSzFa-0006u0-7Y; Tue, 21 May 2019 07:31:54 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSzFR-0006t4-Np
 for linux-mtd@lists.infradead.org; Tue, 21 May 2019 07:31:47 +0000
X-Originating-IP: 90.88.22.185
Received: from xps13 (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr
 [90.88.22.185]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 2E649240002;
 Tue, 21 May 2019 07:31:29 +0000 (UTC)
Date: Tue, 21 May 2019 09:31:27 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH v3 00/14] Implement exec_op for GPMI nand driver
Message-ID: <20190521093127.5ce48dfe@xps13>
In-Reply-To: <20190521071236.zuoqdy5yspymxwp4@pengutronix.de>
References: <20190425125643.29990-1-s.hauer@pengutronix.de>
 <20190520163038.7f38b54a@xps13>
 <20190521071236.zuoqdy5yspymxwp4@pengutronix.de>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_003146_073623_06AF947F 
X-CRM114-Status: GOOD (  25.88  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: kernel@pengutronix.de, Boris Brezillon <bbrezillon@kernel.org>,
 Richard Weinberger <richard@nod.at>, Vinod Koul <vkoul@kernel.org>,
 linux-mtd@lists.infradead.org, NXP Linux Team <linux-imx@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, Han Xu <han.xu@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgU2FzY2hhLAoKU2FzY2hhIEhhdWVyIDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPiB3cm90ZSBv
biBUdWUsIDIxIE1heSAyMDE5CjA5OjEyOjM2ICswMjAwOgoKPiBPbiBNb24sIE1heSAyMCwgMjAx
OSBhdCAwNDozMDozOFBNICswMjAwLCBNaXF1ZWwgUmF5bmFsIHdyb3RlOgo+ID4gSGkgU2FzY2hh
LAo+ID4gCj4gPiBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+IHdyb3RlIG9u
IFRodSwgMjUgQXByIDIwMTkKPiA+IDE0OjU2OjI5ICswMjAwOgo+ID4gICAKPiA+ID4gVGhlIEdQ
TUkgbmFuZCBkcml2ZXIgc3VmZmVycyBmcm9tIHZlcnkgcG9vciBwZXJmb3JtYW5jZS4gVGhlIHJl
YWQKPiA+ID4gcGVyZm9ybWFuY2UgY2FuIGJlIHJvdWdobHkgZG91YmxlZCB3aXRoIHR3byBzdGVw
czogRmlyc3QgaXMgdG8gdXNlCj4gPiA+IHJ1bnRpbWUgUE0gZm9yIGNvbnRyb2xsaW5nIHRoZSBj
bG9ja3Mgd2hpY2ggcHJldmVudHMgdGhlIGRyaXZlciBmcm9tCj4gPiA+IHNwZW5kaW5nIGEgZ29v
ZCBhbW91bnQgb2YgdGltZSBlbi9kaXNhYmxpbmcgdGhlIGNsb2Nrcy4gVGhlIHNlY29uZCBzdGVw
Cj4gPiA+IGlzIHRvIGltcGxlbWVudCBleGVjX29wIHdoaWNoIGFsbG93cyB1cyB0byBjb21iaW5l
IHRoZSBzdGVwcyBuZWNlc3NhcnkKPiA+ID4gdG8gZG8gYSBwYWdlIHJlYWQgaW50byBhIHNpbmds
ZSBETUEgdHJhbnNhY3Rpb24uCj4gPiA+IAo+ID4gPiBJIHdvdWxkIHByZWZlciB0byBsZXQgdGhp
cyBnbyB0aHJvdWdoIHRoZSBtdGQgdHJlZSB3aXRoIHRoZSBhY2sgb2YgdGhlCj4gPiA+IGRtYWVu
Z2luZSBtYWludGFpbmVycwo+ID4gPiAKPiA+ID4gY2hhbmdlcyBzaW5jZSB2MjoKPiA+ID4gCj4g
PiA+IC0gcy9kbWEvZG1hZW5naW5lIGluIGRtYWVuZ2luZSBzcGVjaWZpYyBwYXRjaGVzCj4gPiA+
IC0gcy9uYW5kL05BTkQvCj4gPiA+IC0gQWRkIHJldmlld2VkLWJ5IE1pcXVlbAo+ID4gPiAtIEFk
ZCBBY2tlZC1ieSBWaW5vZAo+ID4gPiAKPiA+ID4gY2hhbmdlcyBzaW5jZSB2MToKPiA+ID4gCj4g
PiA+IC0gdGVzdGVkIGFuZCBmaXhlZCBvbiBpLk1YMjgKPiA+ID4gLSByZW1vdmUgZGVidWdnaW5n
IGxlZnRvdmVyCj4gPiA+IC0gQWRkIG14cyBkbWEgc3BlY2lmaWMgaGVhZGVyIGZpbGVzIHRvIHB1
dCB0aGUgb2RkaXRpZXMgb2YgdGhlIG14cyBkbWEKPiA+ID4gICBkcml2ZXIgaW4KPiA+ID4gLSBU
dXJuIG9mZiBCQ0ggZW5naW5lIGludGVycnVwdHMgd2hlbiBub3QgbmVlZGVkIGFzIHRoZXkgcmVz
dWx0IGluCj4gPiA+ICAgY2FsbGluZyBjb21wbGV0ZSgpIG9uIGFuIHVuaW5pdGlhbGl6ZWQgY29t
cGxldGlvbi4gVGhpcyBjcmFzaGVzCj4gPiA+ICAgb24gaS5NWDI4Cj4gPiA+IAo+ID4gPiBTYXNj
aGEgSGF1ZXIgKDE0KToKPiA+ID4gICBtdGQ6IHJhd25hbmQ6IGV4cG9ydCBOQU5EIG9wZXJhdGlv
biB0cmFjZXIKPiA+ID4gICBtdGQ6IHJhd25hbmQ6IGZzbWM6IFVzZSBuYW5kX29wX3RyYWNlIGZv
ciBvcGVyYXRpb24gdHJhY2luZwo+ID4gPiAgIG10ZDogcmF3bmFuZDogZ3BtaTogbW92ZSBhbGwg
ZHJpdmVyIGNvZGUgaW50byBzaW5nbGUgZmlsZQo+ID4gPiAgIG10ZDogcmF3bmFuZDogZ3BtaTog
cmVtb3ZlIHVudXNlZCB2YXJpYWJsZQo+ID4gPiAgIG10ZDogcmF3bmFuZDogZ3BtaTogUmVtb3Zl
IHVubmVjZXNzYXJ5IHZhcmlhYmxlcwo+ID4gPiAgIG10ZDogcmF3bmFuZDogZ3BtaTogcmVhZCBi
dWYgaW4gbmFuZF9yZWFkX3BhZ2Vfb3AKPiA+ID4gICBtdGQ6IHJhd25hbmQ6IGdwbWk6IHJlbW92
ZSB1bnVzZWQgcGFyYW1ldGVycwo+ID4gPiAgIG10ZDogcmF3bmFuZDogZ3BtaTogRHJvcCB1bm5l
Y2Vzc2FyeSByZXN0b3Jpbmcgb2YgcHJldmlvdXMgY2hpcHNlbGVjdGlvbgo+ID4gPiAgIG10ZDog
cmF3bmFuZDogZ3BtaTogdXNlIHJ1bnRpbWUgUE0gdG8gbWFuYWdlIGNsb2Nrcwo+ID4gPiAgIGRt
YWVuZ2luZTogbXhzOiBEcm9wIHVubmVjZXNzYXJ5IGZsYWcKPiA+ID4gICBtdGQ6IHJhd25hbmQ6
IGdwbWk6IGRyb3AgdW5uZWNlc3NhcnkgZmxhZwo+ID4gPiAgIGRtYWVuZ2luZTogbXhzOiBBZGQg
aGVhZGVyIGZpbGUgdG8gYmUgc2hhcmVkIHdpdGggZ3BtaSBuYW5kIGRyaXZlcgo+ID4gPiAgIGRt
YWVuZ2luZTogbXhzOiByZW5hbWUgY3VzdG9tIGZsYWcKPiA+ID4gICBtdGQ6IHJhd25hbmQ6IGdw
bWk6IEltcGxlbWVudCBleGVjX29wCj4gPiA+IAo+ID4gPiAgZHJpdmVycy9kbWEvbXhzLWRtYS5j
ICAgICAgICAgICAgICAgICAgICAgIHwgICAyNSArLQo+ID4gPiAgZHJpdmVycy9tdGQvbmFuZC9y
YXcvZnNtY19uYW5kLmMgICAgICAgICAgIHwgICAxOSArLQo+ID4gPiAgZHJpdmVycy9tdGQvbmFu
ZC9yYXcvZ3BtaS1uYW5kL01ha2VmaWxlICAgIHwgICAgMSAtCj4gPiA+ICBkcml2ZXJzL210ZC9u
YW5kL3Jhdy9ncG1pLW5hbmQvZ3BtaS1saWIuYyAgfCAgOTM2IC0tLS0tLS0tLS0tCj4gPiA+ICBk
cml2ZXJzL210ZC9uYW5kL3Jhdy9ncG1pLW5hbmQvZ3BtaS1uYW5kLmMgfCAxNjg3ICsrKysrKysr
KysrKysrLS0tLS0tCj4gPiA+ICBkcml2ZXJzL210ZC9uYW5kL3Jhdy9ncG1pLW5hbmQvZ3BtaS1u
YW5kLmggfCAgIDY0ICstCj4gPiA+ICBkcml2ZXJzL210ZC9uYW5kL3Jhdy9uYW5kX2Jhc2UuYyAg
ICAgICAgICAgfCAgIDMwICstCj4gPiA+ICBpbmNsdWRlL2xpbnV4L2RtYS9teHMtZG1hLmggICAg
ICAgICAgICAgICAgfCAgIDI0ICsKPiA+ID4gIGluY2x1ZGUvbGludXgvbXRkL3Jhd25hbmQuaCAg
ICAgICAgICAgICAgICB8ICAgMzcgKwo+ID4gPiAgOSBmaWxlcyBjaGFuZ2VkLCAxMjY0IGluc2Vy
dGlvbnMoKyksIDE1NTkgZGVsZXRpb25zKC0pCj4gPiA+ICBkZWxldGUgbW9kZSAxMDA2NDQgZHJp
dmVycy9tdGQvbmFuZC9yYXcvZ3BtaS1uYW5kL2dwbWktbGliLmMKPiA+ID4gIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBpbmNsdWRlL2xpbnV4L2RtYS9teHMtZG1hLmgKPiA+ID4gICAKPiA+IAo+ID4gUGxl
YXNlIGlnbm9yZSB0aGUgcHJldmlvdXMgbWVzc2FnZSB0ZWxsaW5nIHRoZSBwYXRjaCB3YXMgYXBw
bGllZCwgSQo+ID4gaGF2ZSB0byBtYW51YWxseSBmaXggYWxsIHRoZSBjb25mbGljdHMsIEkgY2Fu
Y2VsZWQgdGhlIG9wZXJhdGlvbjogd291bGQKPiA+IHlvdSBtaW5kIHJlYmFzaW5nIG9uIHY1LjIt
cmMxIGFuZCByZXNwaW4/ICAKPiAKPiBZZXMsIGR1ZSB0byB0aGUgcGF0Y2ggbWVyZ2luZyB0aGUg
dHdvIGZpbGVzIGludG8gb25lIHRoZSByZWJhc2Ugd2FzIGEKPiBiaXQgdHJpY2t5IHdpdGggdGhl
IGNoYW5nZXMgdG8gdGhlIGRyaXZlciBpbiB0aGUgbGFzdCBtZXJnZSB3aW5kb3cuIEl0Cj4gYmFz
aWNhbGx5IG1lYW50IHJlZG9pbmcgIm10ZDogcmF3bmFuZDogZ3BtaTogbW92ZSBhbGwgZHJpdmVy
IGNvZGUgaW50bwo+IHNpbmdsZSBmaWxlIiBjb21wbGV0ZWx5IHRvIGdldCB0aGUgY2hhbmdlcyBm
cm9tIHRoZSBsYXN0IHdpbmRvdyBpbnRvCj4gdGhhdCBwYXRjaC4gRG9uJ3Qgd29ycnksIEkgcHJl
dHR5IG11Y2ggZXhwZWN0ZWQgdGhhdC4gRmluZCBhIG5ldyB2ZXJzaW9uCj4gaW4geW91ciBpbmJv
eC4KPiAKClRoYW5rIHlvdSB2ZXJ5IG11Y2ghCgpNaXF1w6hsCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24g
bWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtbXRkLwo=
