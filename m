Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D9ABD9AD
	for <lists+linux-mtd@lfdr.de>; Wed, 25 Sep 2019 10:18:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0jq03eXsVZNVDEgS+eWjXD3qIZJli7r6/Bhz90KVfZU=; b=ExTvr5pzYkWV9Z
	jwcZ8/rL7jLiCmComL0HAr6QdQO3/5o7pk1q1J5JPfvOZnIrsaQs9KRgI3j7aGOcqzODoQIzRJaW5
	audzfQkEwZ5lpkc0j1icix1tOnKLjKenHbNo2tgUSg/W7y6tbVqlaxCSViVDukJa4erwEycHGECQI
	TrmWBCja1fKsC6HuITJAA/xPdWFqbj41izFTtVRLWvxuwGKKqLZHSZfHot1iciLOfJgnc/aVWUqMn
	81GbsmRet3cgaF8drAnlW9SGk1X3AV5RXA+3f2/URfs1yT7vYTp4DpiDgC7o5C27+1231rHESFj0K
	cVgIYlyyXVwUePleNY6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD2VA-0000Ti-VL; Wed, 25 Sep 2019 08:18:21 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD2Uo-0000Sq-4V
 for linux-mtd@lists.infradead.org; Wed, 25 Sep 2019 08:18:01 +0000
Received: from xps13 (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 9D02D100016;
 Wed, 25 Sep 2019 08:17:41 +0000 (UTC)
Date: Wed, 25 Sep 2019 10:17:40 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Subject: Re: [v7 1/2] mtd: rawnand: Add new Cadence NAND driver to MTD
 subsystem (fwd)
Message-ID: <20190925101740.725e2cb6@xps13>
In-Reply-To: <alpine.DEB.2.21.1909182103550.2753@hadrien>
References: <alpine.DEB.2.21.1909182103550.2753@hadrien>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_011758_511622_C0AED8F8 
X-CRM114-Status: GOOD (  17.40  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Paul Cercueil <paul@crapouillou.net>, Liang Yang <liang.yang@amlogic.com>,
 linux-mtd@lists.infradead.org,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "Paul E. McKenney" <paulmck@linux.ibm.com>,
 Anders Roxell <anders.roxell@linaro.org>, Richard Weinberger <richard@nod.at>,
 Marek Vasut <marek.vasut@gmail.com>, Piotr Sroka <piotrs@cadence.com>,
 Arnd Bergmann <arnd@arndb.de>, Thomas Gleixner <tglx@linutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Kazuhiro Kasai <kasai.kazuhiro@socionext.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, kbuild-all@01.org,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgUGlvdHIsCgpDYW4geW91IGZpeCB0aGUgYmVsb3cgaXNzdWUgcmVwb3J0ZWQgYnkgSnVsaWE/
IEVpdGhlciBjb252ZXJ0IHRoZQpzdHJ1Y3R1cmUgcGFyYW1ldGVyIHRvIGEgc2lnbmVkIHBhcmFt
ZXRlciBvciB1c2UgYW4gaW50ZXJtZWRpYXRlCnZhcmlhYmxlLgoKVGhhbmtzLApNaXF1w6hsCgpK
dWxpYSBMYXdhbGwgPGp1bGlhLmxhd2FsbEBsaXA2LmZyPiB3cm90ZSBvbiBXZWQsIDE4IFNlcCAy
MDE5IDIxOjA0OjM3CiswMjAwIChDRVNUKToKCj4gLS0tLS0tLS0tLSBGb3J3YXJkZWQgbWVzc2Fn
ZSAtLS0tLS0tLS0tCj4gRGF0ZTogV2VkLCAxOCBTZXAgMjAxOSAyMzoxNzoyOSArMDgwMAo+IEZy
b206IGtidWlsZCB0ZXN0IHJvYm90IDxsa3BAaW50ZWwuY29tPgo+IFRvOiBrYnVpbGRAMDEub3Jn
Cj4gQ2M6IEp1bGlhIExhd2FsbCA8anVsaWEubGF3YWxsQGxpcDYuZnI+Cj4gU3ViamVjdDogUmU6
IFt2NyAxLzJdIG10ZDogcmF3bmFuZDogQWRkIG5ldyBDYWRlbmNlIE5BTkQgZHJpdmVyIHRvIE1U
RCBzdWJzeXN0ZW0KPiAKPiBDQzoga2J1aWxkLWFsbEAwMS5vcmcKPiBJbi1SZXBseS1UbzogPDIw
MTkwOTE4MTIzMTE1LjMwNTEwLTEtcGlvdHJzQGNhZGVuY2UuY29tPgo+IFJlZmVyZW5jZXM6IDwy
MDE5MDkxODEyMzExNS4zMDUxMC0xLXBpb3Ryc0BjYWRlbmNlLmNvbT4KPiBUTzogUGlvdHIgU3Jv
a2EgPHBpb3Ryc0BjYWRlbmNlLmNvbT4KPiBDQzogS2F6dWhpcm8gS2FzYWkgPGthc2FpLmthenVo
aXJvQHNvY2lvbmV4dC5jb20+LCBQaW90ciBTcm9rYSA8cGlvdHJzQGNhZGVuY2UuY29tPiwgTWlx
dWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4sIFJpY2hhcmQgV2VpbmJlcmdl
ciA8cmljaGFyZEBub2QuYXQ+LCBEYXZpZCBXb29kaG91c2UgPGR3bXcyQGluZnJhZGVhZC5vcmc+
LCBCcmlhbiBOb3JyaXMgPGNvbXB1dGVyc2ZvcnBlYWNlQGdtYWlsLmNvbT4sIE1hcmVrIFZhc3V0
IDxtYXJlay52YXN1dEBnbWFpbC5jb20+LCBWaWduZXNoIFJhZ2hhdmVuZHJhIDx2aWduZXNockB0
aS5jb20+LCBNYXVybyBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWIrc2Ftc3VuZ0BrZXJuZWwub3Jn
PiwgIkRhdmlkIFMuIE1pbGxlciIgPGRhdmVtQGRhdmVtbG9mdC5uZXQ+LCBHcmVnIEtyb2FoLUhh
cnRtYW4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPiwgTGludXMgV2FsbGVpaiA8bGludXMu
d2FsbGVpakBsaW5hcm8ub3JnPiwgTmljb2xhcyBGZXJyZSA8bmljb2xhcy5mZXJyZUBtaWNyb2No
aXAuY29tPiwgIlBhdWwgRS4gTWNLZW5uZXkiIDxwYXVsbWNrQGxpbnV4LmlibS5jb20+LCBCb3Jp
cyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPiwgVGhvbWFzIEdsZWl4
bmVyIDx0Z2x4QGxpbnV0cm9uaXguZGU+LCBQYXVsIENlcmN1ZWlsIDxwYXVsQGNyYXBvdWlsbG91
Lm5ldD4sIEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+LCBNYXJjZWwgWmlzd2lsZXIgPG1h
cmNlbC56aXN3aWxlckB0b3JhZGV4LmNvbT4sIExpYW5nIFlhbmcgPGxpYW5nLnlhbmdAYW1sb2dp
Yy5jb20+LCBBbmRlcnMgUm94ZWxsIDxhbmRlcnMucm94ZWxsQGxpbmFyby5vcmc+LCBsaW51eC1r
ZXJuZWxAdmdlci5rZXJuZWwub3JnLCBsaW51eC1tdGRAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IAo+
IEhpIFBpb3RyLAo+IAo+IEkgbG92ZSB5b3VyIHBhdGNoISBQZXJoYXBzIHNvbWV0aGluZyB0byBp
bXByb3ZlOgo+IAo+IFthdXRvIGJ1aWxkIHRlc3QgV0FSTklORyBvbiBsaW51cy9tYXN0ZXJdCj4g
W2Nhbm5vdCBhcHBseSB0byB2NS4zIG5leHQtMjAxOTA5MTddCj4gW2lmIHlvdXIgcGF0Y2ggaXMg
YXBwbGllZCB0byB0aGUgd3JvbmcgZ2l0IHRyZWUsIHBsZWFzZSBkcm9wIHVzIGEgbm90ZSB0byBo
ZWxwIGltcHJvdmUgdGhlIHN5c3RlbV0KPiAKPiB1cmw6ICAgIGh0dHBzOi8vZ2l0aHViLmNvbS8w
ZGF5LWNpL2xpbnV4L2NvbW1pdHMvUGlvdHItU3Jva2EvbXRkLXJhd25hbmQtQWRkLW5ldy1DYWRl
bmNlLU5BTkQtZHJpdmVyLXRvLU1URC1zdWJzeXN0ZW0vMjAxOTA5MTgtMjA0NTA1Cj4gOjo6Ojo6
IGJyYW5jaCBkYXRlOiAzIGhvdXJzIGFnbwo+IDo6Ojo6OiBjb21taXQgZGF0ZTogMyBob3VycyBh
Z28KPiAKPiBJZiB5b3UgZml4IHRoZSBpc3N1ZSwga2luZGx5IGFkZCBmb2xsb3dpbmcgdGFnCj4g
UmVwb3J0ZWQtYnk6IGtidWlsZCB0ZXN0IHJvYm90IDxsa3BAaW50ZWwuY29tPgo+IFJlcG9ydGVk
LWJ5OiBKdWxpYSBMYXdhbGwgPGp1bGlhLmxhd2FsbEBsaXA2LmZyPgo+IAo+ID4+IGRyaXZlcnMv
bXRkL25hbmQvcmF3L2NhZGVuY2UtbmFuZC1jb250cm9sbGVyLmM6MjY0NDo1LTI4OiBXQVJOSU5H
OiBVbnNpZ25lZCBleHByZXNzaW9uIGNvbXBhcmVkIHdpdGggemVybzogY2Ruc19jaGlwIC0+IGNv
cnJfc3RyX2lkeCA8IDAgIAo+IAo+ICMgaHR0cHM6Ly9naXRodWIuY29tLzBkYXktY2kvbGludXgv
Y29tbWl0LzMyMzVhZTc5ZDU4YjhkOTViNDRkNWQzNzczZjU5MDY1ZjA0ZDRmMDAKPiBnaXQgcmVt
b3RlIGFkZCBsaW51eC1yZXZpZXcgaHR0cHM6Ly9naXRodWIuY29tLzBkYXktY2kvbGludXgKPiBn
aXQgcmVtb3RlIHVwZGF0ZSBsaW51eC1yZXZpZXcKPiBnaXQgY2hlY2tvdXQgMzIzNWFlNzlkNThi
OGQ5NWI0NGQ1ZDM3NzNmNTkwNjVmMDRkNGYwMAo+IHZpbSArMjY0NCBkcml2ZXJzL210ZC9uYW5k
L3Jhdy9jYWRlbmNlLW5hbmQtY29udHJvbGxlci5jCj4gCj4gMzIzNWFlNzlkNThiOGQgUGlvdHIg
U3Jva2EgMjAxOS0wOS0xOCAgMjU4NAo+IDMyMzVhZTc5ZDU4YjhkIFBpb3RyIFNyb2thIDIwMTkt
MDktMTggIDI1ODUgIGludCBjYWRlbmNlX25hbmRfYXR0YWNoX2NoaXAoc3RydWN0IG5hbmRfY2hp
cCAqY2hpcCkKPiAzMjM1YWU3OWQ1OGI4ZCBQaW90ciBTcm9rYSAyMDE5LTA5LTE4ICAyNTg2ICB7
Cj4gMzIzNWFlNzlkNThiOGQgUGlvdHIgU3Jva2EgMjAxOS0wOS0xOCAgMjU4NyAgCXN0cnVjdCBj
ZG5zX25hbmRfY3RybCAqY2Ruc19jdHJsID0gdG9fY2Ruc19uYW5kX2N0cmwoY2hpcC0+Y29udHJv
bGxlcik7Cj4gMzIzNWFlNzlkNThiOGQgUGlvdHIgU3Jva2EgMjAxOS0wOS0xOCAgMjU4OCAgCXN0
cnVjdCBjZG5zX25hbmRfY2hpcCAqY2Ruc19jaGlwID0gdG9fY2Ruc19uYW5kX2NoaXAoY2hpcCk7
Cj4gMzIzNWFlNzlkNThiOGQgUGlvdHIgU3Jva2EgMjAxOS0wOS0xOCAgMjU4OSAgCXUzMiBlY2Nf
c2l6ZSA9IGNkbnNfY2hpcC0+c2VjdG9yX2NvdW50ICogY2hpcC0+ZWNjLmJ5dGVzOwo+IDMyMzVh
ZTc5ZDU4YjhkIFBpb3RyIFNyb2thIDIwMTktMDktMTggIDI1OTAgIAlzdHJ1Y3QgbXRkX2luZm8g
Km10ZCA9IG5hbmRfdG9fbXRkKGNoaXApOwo+IDMyMzVhZTc5ZDU4YjhkIFBpb3RyIFNyb2thIDIw
MTktMDktMTggIDI1OTEgIAl1MzIgbWF4X29vYl9kYXRhX3NpemU7Cj4gMzIzNWFlNzlkNThiOGQg
UGlvdHIgU3Jva2EgMjAxOS0wOS0xOCAgMjU5MiAgCWludCByZXQ7Cj4gMzIzNWFlNzlkNThiOGQg
UGlvdHIgU3Jva2EgMjAxOS0wOS0xOCAgMjU5Mwo+IDMyMzVhZTc5ZDU4YjhkIFBpb3RyIFNyb2th
IDIwMTktMDktMTggIDI1OTQgIAlpZiAoY2hpcC0+b3B0aW9ucyAmIE5BTkRfQlVTV0lEVEhfMTYp
IHsKPiAzMjM1YWU3OWQ1OGI4ZCBQaW90ciBTcm9rYSAyMDE5LTA5LTE4ICAyNTk1ICAJCXJldCA9
IGNhZGVuY2VfbmFuZF9zZXRfYWNjZXNzX3dpZHRoMTYoY2Ruc19jdHJsLCB0cnVlKTsKPiAzMjM1
YWU3OWQ1OGI4ZCBQaW90ciBTcm9rYSAyMDE5LTA5LTE4ICAyNTk2ICAJCWlmIChyZXQpCj4gMzIz
NWFlNzlkNThiOGQgUGlvdHIgU3Jva2EgMjAxOS0wOS0xOCAgMjU5NyAgCQkJZ290byBmcmVlX2J1
ZjsKPiAzMjM1YWU3OWQ1OGI4ZCBQaW90ciBTcm9rYSAyMDE5LTA5LTE4ICAyNTk4ICAJfQo+IDMy
MzVhZTc5ZDU4YjhkIFBpb3RyIFNyb2thIDIwMTktMDktMTggIDI1OTkKPiAzMjM1YWU3OWQ1OGI4
ZCBQaW90ciBTcm9rYSAyMDE5LTA5LTE4ICAyNjAwICAJY2hpcC0+YmJ0X29wdGlvbnMgfD0gTkFO
RF9CQlRfVVNFX0ZMQVNIOwo+IDMyMzVhZTc5ZDU4YjhkIFBpb3RyIFNyb2thIDIwMTktMDktMTgg
IDI2MDEgIAljaGlwLT5iYnRfb3B0aW9ucyB8PSBOQU5EX0JCVF9OT19PT0I7Cj4gMzIzNWFlNzlk
NThiOGQgUGlvdHIgU3Jva2EgMjAxOS0wOS0xOCAgMjYwMiAgCWNoaXAtPmVjYy5tb2RlID0gTkFO
RF9FQ0NfSFc7Cj4gMzIzNWFlNzlkNThiOGQgUGlvdHIgU3Jva2EgMjAxOS0wOS0xOCAgMjYwMwo+
IDMyMzVhZTc5ZDU4YjhkIFBpb3RyIFNyb2thIDIwMTktMDktMTggIDI2MDQgIAljaGlwLT5vcHRp
b25zIHw9IE5BTkRfTk9fU1VCUEFHRV9XUklURTsKPiAzMjM1YWU3OWQ1OGI4ZCBQaW90ciBTcm9r
YSAyMDE5LTA5LTE4ICAyNjA1Cj4gMzIzNWFlNzlkNThiOGQgUGlvdHIgU3Jva2EgMjAxOS0wOS0x
OCAgMjYwNiAgCWNkbnNfY2hpcC0+YmJtX29mZnMgPSBjaGlwLT5iYWRibG9ja3BvczsKPiAzMjM1
YWU3OWQ1OGI4ZCBQaW90ciBTcm9rYSAyMDE5LTA5LTE4ICAyNjA3ICAJaWYgKGNoaXAtPm9wdGlv
bnMgJiBOQU5EX0JVU1dJRFRIXzE2KSB7Cj4gMzIzNWFlNzlkNThiOGQgUGlvdHIgU3Jva2EgMjAx
OS0wOS0xOCAgMjYwOCAgCQljZG5zX2NoaXAtPmJibV9vZmZzICY9IH4weDAxOwo+IDMyMzVhZTc5
ZDU4YjhkIFBpb3RyIFNyb2thIDIwMTktMDktMTggIDI2MDkgIAkJY2Ruc19jaGlwLT5iYm1fbGVu
ID0gMjsKPiAzMjM1YWU3OWQ1OGI4ZCBQaW90ciBTcm9rYSAyMDE5LTA5LTE4ICAyNjEwICAJfSBl
bHNlIHsKPiAzMjM1YWU3OWQ1OGI4ZCBQaW90ciBTcm9rYSAyMDE5LTA5LTE4ICAyNjExICAJCWNk
bnNfY2hpcC0+YmJtX2xlbiA9IDE7Cj4gMzIzNWFlNzlkNThiOGQgUGlvdHIgU3Jva2EgMjAxOS0w
OS0xOCAgMjYxMiAgCX0KPiAzMjM1YWU3OWQ1OGI4ZCBQaW90ciBTcm9rYSAyMDE5LTA5LTE4ICAy
NjEzCj4gMzIzNWFlNzlkNThiOGQgUGlvdHIgU3Jva2EgMjAxOS0wOS0xOCAgMjYxNCAgCXJldCA9
IG5hbmRfZWNjX2Nob29zZV9jb25mKGNoaXAsCj4gMzIzNWFlNzlkNThiOGQgUGlvdHIgU3Jva2Eg
MjAxOS0wOS0xOCAgMjYxNSAgCQkJCSAgICZjZG5zX2N0cmwtPmVjY19jYXBzLAo+IDMyMzVhZTc5
ZDU4YjhkIFBpb3RyIFNyb2thIDIwMTktMDktMTggIDI2MTYgIAkJCQkgICBtdGQtPm9vYnNpemUg
LSBjZG5zX2NoaXAtPmJibV9sZW4pOwo+IDMyMzVhZTc5ZDU4YjhkIFBpb3RyIFNyb2thIDIwMTkt
MDktMTggIDI2MTcgIAlpZiAocmV0KSB7Cj4gMzIzNWFlNzlkNThiOGQgUGlvdHIgU3Jva2EgMjAx
OS0wOS0xOCAgMjYxOCAgCQlkZXZfZXJyKGNkbnNfY3RybC0+ZGV2LCAiRUNDIGNvbmZpZ3VyYXRp
b24gZmFpbGVkXG4iKTsKPiAzMjM1YWU3OWQ1OGI4ZCBQaW90ciBTcm9rYSAyMDE5LTA5LTE4ICAy
NjE5ICAJCWdvdG8gZnJlZV9idWY7Cj4gMzIzNWFlNzlkNThiOGQgUGlvdHIgU3Jva2EgMjAxOS0w
OS0xOCAgMjYyMCAgCX0KPiAzMjM1YWU3OWQ1OGI4ZCBQaW90ciBTcm9rYSAyMDE5LTA5LTE4ICAy
NjIxCj4gMzIzNWFlNzlkNThiOGQgUGlvdHIgU3Jva2EgMjAxOS0wOS0xOCAgMjYyMiAgCWRldl9k
YmcoY2Ruc19jdHJsLT5kZXYsCj4gMzIzNWFlNzlkNThiOGQgUGlvdHIgU3Jva2EgMjAxOS0wOS0x
OCAgMjYyMyAgCQkiY2hvc2VuIEVDQyBzZXR0aW5nczogc3RlcD0lZCwgc3RyZW5ndGg9JWQsIGJ5
dGVzPSVkXG4iLAo+IDMyMzVhZTc5ZDU4YjhkIFBpb3RyIFNyb2thIDIwMTktMDktMTggIDI2MjQg
IAkJY2hpcC0+ZWNjLnNpemUsIGNoaXAtPmVjYy5zdHJlbmd0aCwgY2hpcC0+ZWNjLmJ5dGVzKTsK
PiAzMjM1YWU3OWQ1OGI4ZCBQaW90ciBTcm9rYSAyMDE5LTA5LTE4ICAyNjI1Cj4gMzIzNWFlNzlk
NThiOGQgUGlvdHIgU3Jva2EgMjAxOS0wOS0xOCAgMjYyNiAgCS8qIEVycm9yIGNvcnJlY3Rpb24g
Y29uZmlndXJhdGlvbi4gKi8KPiAzMjM1YWU3OWQ1OGI4ZCBQaW90ciBTcm9rYSAyMDE5LTA5LTE4
ICAyNjI3ICAJY2Ruc19jaGlwLT5zZWN0b3Jfc2l6ZSA9IGNoaXAtPmVjYy5zaXplOwo+IDMyMzVh
ZTc5ZDU4YjhkIFBpb3RyIFNyb2thIDIwMTktMDktMTggIDI2MjggIAljZG5zX2NoaXAtPnNlY3Rv
cl9jb3VudCA9IG10ZC0+d3JpdGVzaXplIC8gY2Ruc19jaGlwLT5zZWN0b3Jfc2l6ZTsKPiAzMjM1
YWU3OWQ1OGI4ZCBQaW90ciBTcm9rYSAyMDE5LTA5LTE4ICAyNjI5Cj4gMzIzNWFlNzlkNThiOGQg
UGlvdHIgU3Jva2EgMjAxOS0wOS0xOCAgMjYzMCAgCWNkbnNfY2hpcC0+YXZhaWxfb29iX3NpemUg
PSBtdGQtPm9vYnNpemUgLSBlY2Nfc2l6ZTsKPiAzMjM1YWU3OWQ1OGI4ZCBQaW90ciBTcm9rYSAy
MDE5LTA5LTE4ICAyNjMxCj4gMzIzNWFlNzlkNThiOGQgUGlvdHIgU3Jva2EgMjAxOS0wOS0xOCAg
MjYzMiAgCW1heF9vb2JfZGF0YV9zaXplID0gTUFYX09PQl9TSVpFX1BFUl9TRUNUT1I7Cj4gMzIz
NWFlNzlkNThiOGQgUGlvdHIgU3Jva2EgMjAxOS0wOS0xOCAgMjYzMwo+IDMyMzVhZTc5ZDU4Yjhk
IFBpb3RyIFNyb2thIDIwMTktMDktMTggIDI2MzQgIAlpZiAoY2Ruc19jaGlwLT5hdmFpbF9vb2Jf
c2l6ZSA+IG1heF9vb2JfZGF0YV9zaXplKQo+IDMyMzVhZTc5ZDU4YjhkIFBpb3RyIFNyb2thIDIw
MTktMDktMTggIDI2MzUgIAkJY2Ruc19jaGlwLT5hdmFpbF9vb2Jfc2l6ZSA9IG1heF9vb2JfZGF0
YV9zaXplOwo+IDMyMzVhZTc5ZDU4YjhkIFBpb3RyIFNyb2thIDIwMTktMDktMTggIDI2MzYKPiAz
MjM1YWU3OWQ1OGI4ZCBQaW90ciBTcm9rYSAyMDE5LTA5LTE4ICAyNjM3ICAJaWYgKChjZG5zX2No
aXAtPmF2YWlsX29vYl9zaXplICsgY2Ruc19jaGlwLT5iYm1fbGVuICsgZWNjX3NpemUpCj4gMzIz
NWFlNzlkNThiOGQgUGlvdHIgU3Jva2EgMjAxOS0wOS0xOCAgMjYzOCAgCSAgICA+IG10ZC0+b29i
c2l6ZSkKPiAzMjM1YWU3OWQ1OGI4ZCBQaW90ciBTcm9rYSAyMDE5LTA5LTE4ICAyNjM5ICAJCWNk
bnNfY2hpcC0+YXZhaWxfb29iX3NpemUgLT0gNDsKPiAzMjM1YWU3OWQ1OGI4ZCBQaW90ciBTcm9r
YSAyMDE5LTA5LTE4ICAyNjQwCj4gMzIzNWFlNzlkNThiOGQgUGlvdHIgU3Jva2EgMjAxOS0wOS0x
OCAgMjY0MSAgCWNkbnNfY2hpcC0+Y29ycl9zdHJfaWR4ID0KPiAzMjM1YWU3OWQ1OGI4ZCBQaW90
ciBTcm9rYSAyMDE5LTA5LTE4ICAyNjQyICAJCWNhZGVuY2VfbmFuZF9nZXRfZWNjX3N0cmVuZ3Ro
X2lkeChjZG5zX2N0cmwsCj4gMzIzNWFlNzlkNThiOGQgUGlvdHIgU3Jva2EgMjAxOS0wOS0xOCAg
MjY0MyAgCQkJCQkJICBjaGlwLT5lY2Muc3RyZW5ndGgpOwo+IDMyMzVhZTc5ZDU4YjhkIFBpb3Ry
IFNyb2thIDIwMTktMDktMTggQDI2NDQgIAlpZiAoY2Ruc19jaGlwLT5jb3JyX3N0cl9pZHggPCAw
KQo+IDMyMzVhZTc5ZDU4YjhkIFBpb3RyIFNyb2thIDIwMTktMDktMTggIDI2NDUgIAkJcmV0dXJu
IC1FSU5WQUw7Cj4gMzIzNWFlNzlkNThiOGQgUGlvdHIgU3Jva2EgMjAxOS0wOS0xOCAgMjY0Ngo+
IDMyMzVhZTc5ZDU4YjhkIFBpb3RyIFNyb2thIDIwMTktMDktMTggIDI2NDcgIAlpZiAoY2FkZW5j
ZV9uYW5kX3dhaXRfZm9yX3ZhbHVlKGNkbnNfY3RybCwgQ1RSTF9TVEFUVVMsCj4gMzIzNWFlNzlk
NThiOGQgUGlvdHIgU3Jva2EgMjAxOS0wOS0xOCAgMjY0OCAgCQkJCQkxMDAwMDAwLAo+IDMyMzVh
ZTc5ZDU4YjhkIFBpb3RyIFNyb2thIDIwMTktMDktMTggIDI2NDkgIAkJCQkJQ1RSTF9TVEFUVVNf
Q1RSTF9CVVNZLCB0cnVlKSkKPiAzMjM1YWU3OWQ1OGI4ZCBQaW90ciBTcm9rYSAyMDE5LTA5LTE4
ICAyNjUwICAJCXJldHVybiAtRVRJTUVET1VUOwo+IDMyMzVhZTc5ZDU4YjhkIFBpb3RyIFNyb2th
IDIwMTktMDktMTggIDI2NTEKPiAzMjM1YWU3OWQ1OGI4ZCBQaW90ciBTcm9rYSAyMDE5LTA5LTE4
ICAyNjUyICAJY2FkZW5jZV9uYW5kX3NldF9lY2Nfc3RyZW5ndGgoY2Ruc19jdHJsLAo+IDMyMzVh
ZTc5ZDU4YjhkIFBpb3RyIFNyb2thIDIwMTktMDktMTggIDI2NTMgIAkJCQkgICAgICBjZG5zX2No
aXAtPmNvcnJfc3RyX2lkeCk7Cj4gMzIzNWFlNzlkNThiOGQgUGlvdHIgU3Jva2EgMjAxOS0wOS0x
OCAgMjY1NAo+IDMyMzVhZTc5ZDU4YjhkIFBpb3RyIFNyb2thIDIwMTktMDktMTggIDI2NTUgIAlj
YWRlbmNlX25hbmRfc2V0X2VyYXNlX2RldGVjdGlvbihjZG5zX2N0cmwsIHRydWUsCj4gMzIzNWFl
NzlkNThiOGQgUGlvdHIgU3Jva2EgMjAxOS0wOS0xOCAgMjY1NiAgCQkJCQkgY2hpcC0+ZWNjLnN0
cmVuZ3RoKTsKPiAzMjM1YWU3OWQ1OGI4ZCBQaW90ciBTcm9rYSAyMDE5LTA5LTE4ICAyNjU3Cj4g
MzIzNWFlNzlkNThiOGQgUGlvdHIgU3Jva2EgMjAxOS0wOS0xOCAgMjY1OCAgCS8qIE92ZXJyaWRl
IHRoZSBkZWZhdWx0IHJlYWQgb3BlcmF0aW9ucy4gKi8KPiAzMjM1YWU3OWQ1OGI4ZCBQaW90ciBT
cm9rYSAyMDE5LTA5LTE4ICAyNjU5ICAJY2hpcC0+ZWNjLnJlYWRfcGFnZSA9IGNhZGVuY2VfbmFu
ZF9yZWFkX3BhZ2U7Cj4gMzIzNWFlNzlkNThiOGQgUGlvdHIgU3Jva2EgMjAxOS0wOS0xOCAgMjY2
MCAgCWNoaXAtPmVjYy5yZWFkX3BhZ2VfcmF3ID0gY2FkZW5jZV9uYW5kX3JlYWRfcGFnZV9yYXc7
Cj4gMzIzNWFlNzlkNThiOGQgUGlvdHIgU3Jva2EgMjAxOS0wOS0xOCAgMjY2MSAgCWNoaXAtPmVj
Yy53cml0ZV9wYWdlID0gY2FkZW5jZV9uYW5kX3dyaXRlX3BhZ2U7Cj4gMzIzNWFlNzlkNThiOGQg
UGlvdHIgU3Jva2EgMjAxOS0wOS0xOCAgMjY2MiAgCWNoaXAtPmVjYy53cml0ZV9wYWdlX3JhdyA9
IGNhZGVuY2VfbmFuZF93cml0ZV9wYWdlX3JhdzsKPiAzMjM1YWU3OWQ1OGI4ZCBQaW90ciBTcm9r
YSAyMDE5LTA5LTE4ICAyNjYzICAJY2hpcC0+ZWNjLnJlYWRfb29iID0gY2FkZW5jZV9uYW5kX3Jl
YWRfb29iOwo+IDMyMzVhZTc5ZDU4YjhkIFBpb3RyIFNyb2thIDIwMTktMDktMTggIDI2NjQgIAlj
aGlwLT5lY2Mud3JpdGVfb29iID0gY2FkZW5jZV9uYW5kX3dyaXRlX29vYjsKPiAzMjM1YWU3OWQ1
OGI4ZCBQaW90ciBTcm9rYSAyMDE5LTA5LTE4ICAyNjY1ICAJY2hpcC0+ZWNjLnJlYWRfb29iX3Jh
dyA9IGNhZGVuY2VfbmFuZF9yZWFkX29vYl9yYXc7Cj4gMzIzNWFlNzlkNThiOGQgUGlvdHIgU3Jv
a2EgMjAxOS0wOS0xOCAgMjY2NiAgCWNoaXAtPmVjYy53cml0ZV9vb2JfcmF3ID0gY2FkZW5jZV9u
YW5kX3dyaXRlX29vYl9yYXc7Cj4gMzIzNWFlNzlkNThiOGQgUGlvdHIgU3Jva2EgMjAxOS0wOS0x
OCAgMjY2Nwo+IDMyMzVhZTc5ZDU4YjhkIFBpb3RyIFNyb2thIDIwMTktMDktMTggIDI2NjggIAlp
ZiAoKG10ZC0+d3JpdGVzaXplICsgbXRkLT5vb2JzaXplKSA+IGNkbnNfY3RybC0+YnVmX3NpemUp
IHsKPiAzMjM1YWU3OWQ1OGI4ZCBQaW90ciBTcm9rYSAyMDE5LTA5LTE4ICAyNjY5ICAJCWNkbnNf
Y3RybC0+YnVmX3NpemUgPSBtdGQtPndyaXRlc2l6ZSArIG10ZC0+b29ic2l6ZTsKPiAzMjM1YWU3
OWQ1OGI4ZCBQaW90ciBTcm9rYSAyMDE5LTA5LTE4ICAyNjcwICAJCWtmcmVlKGNkbnNfY3RybC0+
YnVmKTsKPiAzMjM1YWU3OWQ1OGI4ZCBQaW90ciBTcm9rYSAyMDE5LTA5LTE4ICAyNjcxICAJCWNk
bnNfY3RybC0+YnVmID0ga3phbGxvYyhjZG5zX2N0cmwtPmJ1Zl9zaXplLCBHRlBfS0VSTkVMKTsK
PiAzMjM1YWU3OWQ1OGI4ZCBQaW90ciBTcm9rYSAyMDE5LTA5LTE4ICAyNjcyICAJCWlmICghY2Ru
c19jdHJsLT5idWYpIHsKPiAzMjM1YWU3OWQ1OGI4ZCBQaW90ciBTcm9rYSAyMDE5LTA5LTE4ICAy
NjczICAJCQlyZXQgPSAtRU5PTUVNOwo+IDMyMzVhZTc5ZDU4YjhkIFBpb3RyIFNyb2thIDIwMTkt
MDktMTggIDI2NzQgIAkJCWdvdG8gZnJlZV9idWY7Cj4gMzIzNWFlNzlkNThiOGQgUGlvdHIgU3Jv
a2EgMjAxOS0wOS0xOCAgMjY3NSAgCQl9Cj4gMzIzNWFlNzlkNThiOGQgUGlvdHIgU3Jva2EgMjAx
OS0wOS0xOCAgMjY3NiAgCX0KPiAzMjM1YWU3OWQ1OGI4ZCBQaW90ciBTcm9rYSAyMDE5LTA5LTE4
ICAyNjc3Cj4gMzIzNWFlNzlkNThiOGQgUGlvdHIgU3Jva2EgMjAxOS0wOS0xOCAgMjY3OCAgCS8q
IElzIDMyLWJpdCBETUEgc3VwcG9ydGVkPyAqLwo+IDMyMzVhZTc5ZDU4YjhkIFBpb3RyIFNyb2th
IDIwMTktMDktMTggIDI2NzkgIAlyZXQgPSBkbWFfc2V0X21hc2soY2Ruc19jdHJsLT5kZXYsIERN
QV9CSVRfTUFTSygzMikpOwo+IDMyMzVhZTc5ZDU4YjhkIFBpb3RyIFNyb2thIDIwMTktMDktMTgg
IDI2ODAgIAlpZiAocmV0KSB7Cj4gMzIzNWFlNzlkNThiOGQgUGlvdHIgU3Jva2EgMjAxOS0wOS0x
OCAgMjY4MSAgCQlkZXZfZXJyKGNkbnNfY3RybC0+ZGV2LCAibm8gdXNhYmxlIERNQSBjb25maWd1
cmF0aW9uXG4iKTsKPiAzMjM1YWU3OWQ1OGI4ZCBQaW90ciBTcm9rYSAyMDE5LTA5LTE4ICAyNjgy
ICAJCWdvdG8gZnJlZV9idWY7Cj4gMzIzNWFlNzlkNThiOGQgUGlvdHIgU3Jva2EgMjAxOS0wOS0x
OCAgMjY4MyAgCX0KPiAzMjM1YWU3OWQ1OGI4ZCBQaW90ciBTcm9rYSAyMDE5LTA5LTE4ICAyNjg0
Cj4gMzIzNWFlNzlkNThiOGQgUGlvdHIgU3Jva2EgMjAxOS0wOS0xOCAgMjY4NSAgCW10ZF9zZXRf
b29ibGF5b3V0KG10ZCwgJmNhZGVuY2VfbmFuZF9vb2JsYXlvdXRfb3BzKTsKPiAzMjM1YWU3OWQ1
OGI4ZCBQaW90ciBTcm9rYSAyMDE5LTA5LTE4ICAyNjg2Cj4gMzIzNWFlNzlkNThiOGQgUGlvdHIg
U3Jva2EgMjAxOS0wOS0xOCAgMjY4NyAgCXJldHVybiAwOwo+IDMyMzVhZTc5ZDU4YjhkIFBpb3Ry
IFNyb2thIDIwMTktMDktMTggIDI2ODgKPiAzMjM1YWU3OWQ1OGI4ZCBQaW90ciBTcm9rYSAyMDE5
LTA5LTE4ICAyNjg5ICBmcmVlX2J1ZjoKPiAzMjM1YWU3OWQ1OGI4ZCBQaW90ciBTcm9rYSAyMDE5
LTA5LTE4ICAyNjkwICAJa2ZyZWUoY2Ruc19jdHJsLT5idWYpOwo+IDMyMzVhZTc5ZDU4YjhkIFBp
b3RyIFNyb2thIDIwMTktMDktMTggIDI2OTEKPiAzMjM1YWU3OWQ1OGI4ZCBQaW90ciBTcm9rYSAy
MDE5LTA5LTE4ICAyNjkyICAJcmV0dXJuIHJldDsKPiAzMjM1YWU3OWQ1OGI4ZCBQaW90ciBTcm9r
YSAyMDE5LTA5LTE4ICAyNjkzICB9Cj4gMzIzNWFlNzlkNThiOGQgUGlvdHIgU3Jva2EgMjAxOS0w
OS0xOCAgMjY5NAo+IAo+IC0tLQo+IDAtREFZIGtlcm5lbCB0ZXN0IGluZnJhc3RydWN0dXJlICAg
ICAgICAgICAgICAgIE9wZW4gU291cmNlIFRlY2hub2xvZ3kgQ2VudGVyCj4gaHR0cHM6Ly9saXN0
cy4wMS5vcmcvcGlwZXJtYWlsL2tidWlsZC1hbGwgICAgICAgICAgICAgICAgICAgSW50ZWwgQ29y
cG9yYXRpb24KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
