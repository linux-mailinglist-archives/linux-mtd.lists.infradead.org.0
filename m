Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C62C01D95ED
	for <lists+linux-mtd@lfdr.de>; Tue, 19 May 2020 14:09:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bmH5GfXMRhzfHAXjlsWoo+Bb+lS4NfEAp0qsQiKyUZ0=; b=dqCghAozsfxb1U
	TMHwUPHCUop/AGuCAqR+iAFA6+Mfg6zPatDzd8fCfKaUu1VlIkzlKhO62rfXzSK1nZ6thEMmO69BI
	Ngjcs9pLyPGDIAVbog9TkWR5zcx2M8aI/w8Jvw5OEn8DPFWZEC0MKGpV9UhSsJzyyMR1OVVgUFSqy
	WUM1qWkEmyXpVW+4pn0K+Ofun7k3G8Fck0I/9bdwHPjjrMl8kkPYRZgceSQO5yn4Ol/49Q04rL0j2
	Lfxmz+APc38D7f+a87ZMDyaBjJYKE4KqhE44q4ELDlRn3EVwRYmJjwxGcqtOJ3kj3C2wif+Fa3uwP
	jGrcW5KBLNViwsbtwL6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb13N-00084J-Gn; Tue, 19 May 2020 12:09:01 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb13E-00083X-3M
 for linux-mtd@lists.infradead.org; Tue, 19 May 2020 12:08:54 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 56AF320008;
 Tue, 19 May 2020 12:08:46 +0000 (UTC)
Date: Tue, 19 May 2020 14:08:44 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rickard Andersson <rickaran@axis.com>
Subject: Re: [PATCH 2/2] mtd: rawnand: Add timings for Kioxia TH58NVG2S3HBAI4
Message-ID: <20200519140844.531e8c9b@xps13>
In-Reply-To: <20200514091342.16924-2-rickaran@axis.com>
References: <richard@nod.at;> <20200514091342.16924-1-rickaran@axis.com>
 <20200514091342.16924-2-rickaran@axis.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_050852_413351_7F52E485 
X-CRM114-Status: GOOD (  18.24  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Cc: linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgUmlja2FyZCwKClJpY2thcmQgQW5kZXJzc29uIDxyaWNrYXJhbkBheGlzLmNvbT4gd3JvdGUg
b24gVGh1LCAxNCBNYXkgMjAyMAoxMToxMzo0MiArMDIwMDoKCj4gRnJvbTogUmlja2FyZCB4IEFu
ZGVyc3NvbiA8cmlja2FyYW5AYXhpcy5jb20+Cj4gCj4gVGhlIEtpb3hpYS9Ub3NoaWJhIFRINThO
VkcyUzNIQkFJNCBOQU5EIG1lbW9yeSBpcyBub3QgYQo+IE9ORkkgY29tcGxpYW50IG1lbW9yeS4g
VGhlIHRpbWluZ3Mgb2YgdGhlIG1lbW9yeSBpcyBxdWl0ZQo+IGNsb3NlIHRvIE9ORkkgbW9kZSA0
IGJ1dCBpcyBicmVha2luZyB0aGF0IHNwZWMuCj4gCj4gRXJhc2UgYmxvY2sgcmVhZCBzcGVlZCBp
cyBpbmNyZWFzZWQgZnJvbSA2OTEwIEtpQi9zIHRvCj4gMTM0OTAgS2lCL3MuIEVyYXNlIGJsb2Nr
IHdyaXRlIHNwZWVkIGlzIGluY3JlYXNlZCBmcm9tCj4gMzM1MCBLaUIvcyB0byA0NDEwIEtpQi9z
Lgo+IAo+IFRlc3RlZCBvbiBJTVg2U1ggd2hpY2ggaGFzIGEgTkFORCBjb250cm9sbGVyIHN1cHBv
cnRpbmcKPiBFRE8gbW9kZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBSaWNrYXJkIHggQW5kZXJzc29u
IDxyaWNrYXJhbkBheGlzLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9tdGQvbmFuZC9yYXcvbmFuZF9p
ZHMuYyAgICAgfCAgMyArKwo+ICBkcml2ZXJzL210ZC9uYW5kL3Jhdy9uYW5kX3Rvc2hpYmEuYyB8
IDYxICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgMiBmaWxlcyBjaGFu
Z2VkLCA2NCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbXRkL25hbmQv
cmF3L25hbmRfaWRzLmMgYi9kcml2ZXJzL210ZC9uYW5kL3Jhdy9uYW5kX2lkcy5jCj4gaW5kZXgg
ZTBkYmMyZTMxNmM3Li44YjY3NmU4YjQ4MWIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tdGQvbmFu
ZC9yYXcvbmFuZF9pZHMuYwo+ICsrKyBiL2RyaXZlcnMvbXRkL25hbmQvcmF3L25hbmRfaWRzLmMK
PiBAQCAtNTIsNiArNTIsOSBAQCBzdHJ1Y3QgbmFuZF9mbGFzaF9kZXYgbmFuZF9mbGFzaF9pZHNb
XSA9IHsKPiAgCQl7IC5pZCA9IHsweGFkLCAweGRlLCAweDk0LCAweGRhLCAweDc0LCAweGM0fSB9
LAo+ICAJCSAgU1pfOEssIFNaXzhLLCBTWl8yTSwgTkFORF9ORUVEX1NDUkFNQkxJTkcsIDYsIDY0
MCwKPiAgCQkgIE5BTkRfRUNDX0lORk8oNDAsIFNaXzFLKSwgNCB9LAo+ICsJeyJUSDU4TlZHMlMz
SEJBSTQgNEcgMy4zViA4LWJpdCIsCj4gKwkJeyAuaWQgPSB7MHg5OCwgMHhkYywgMHg5MSwgMHgx
NSwgMHg3Nn0gfSwKPiArCQkgIFNaXzJLLCBTWl81MTIsIFNaXzEyOEssIDAsIDUsIDEyOCwgTkFO
RF9FQ0NfSU5GTyg4LCBTWl81MTIpIH0sCj4gIAo+ICAJTEVHQUNZX0lEX05BTkQoIk5BTkQgNE1p
QiA1ViA4LWJpdCIsICAgMHg2QiwgNCwgU1pfOEssIFNQX09QVElPTlMpLAo+ICAJTEVHQUNZX0lE
X05BTkQoIk5BTkQgNE1pQiAzLDNWIDgtYml0IiwgMHhFMywgNCwgU1pfOEssIFNQX09QVElPTlMp
LAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL210ZC9uYW5kL3Jhdy9uYW5kX3Rvc2hpYmEuYyBiL2Ry
aXZlcnMvbXRkL25hbmQvcmF3L25hbmRfdG9zaGliYS5jCj4gaW5kZXggYjZlZmFmNTE5NWJiLi4z
ODA0OTljZmE0OTEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tdGQvbmFuZC9yYXcvbmFuZF90b3No
aWJhLmMKPiArKysgYi9kcml2ZXJzL210ZC9uYW5kL3Jhdy9uYW5kX3Rvc2hpYmEuYwo+IEBAIC0y
Niw2ICsyNiw1MiBAQAo+ICAvKiBNYXggRUNDIFN0ZXBzIGZvciBCRU5BTkQgKi8KPiAgI2RlZmlu
ZSBUT1NISUJBX05BTkRfTUFYX0VDQ19TVEVQUwkJOAo+ICAKPiArc3RhdGljIGNvbnN0IHN0cnVj
dCBuYW5kX2RhdGFfaW50ZXJmYWNlIHRoNThudmcyczNoYmFpNF90aW1pbmdzID0gewo+ICsJLnR5
cGUgPSBOQU5EX1NEUl9JRkFDRSwKPiArCS50aW1pbmdzLm1vZGUgPSAwLAoKSSBqdXN0IGEgYnJh
bmNoIHdpdGggYSBuZXcgaGVscGVyIHRvIGZpbGwgdGhpcyBmaWVsZCwgaXQgaXMgY2FsbGVkCm9u
ZmlfZmluZF9lcXVpdmFsZW50X3Nkcl9tb2RlKCkuCgpJdCBpcyBvbmx5IGNvbXBpbGUgdGVzdGVk
IHNvIHBsZWFzZSB2ZXJpZnkgaXQgd29ya3MuCgo+ICsJLnRpbWluZ3Muc2RyID0gewo+ICsJCS50
UFJPR19tYXggPSA3MDAwMDAwMDAsCj4gKwkJLnRCRVJTX21heCA9IDUwMDAwMDAwMDAsCj4gKwkJ
LnRDQ1NfbWluID0gNTAwMDAwLAo+ICsJCS50Ul9tYXggPSAyMDAwMDAwMDAsCj4gKwkJLnRBRExf
bWluID0gNDAwMDAwLAo+ICsJCS50QUxIX21pbiA9IDUwMDAsCj4gKwkJLnRBTFNfbWluID0gMTIw
MDAsCj4gKwkJLnRBUl9taW4gPSAxMDAwMCwKPiArCQkudENFQV9tYXggPSAyNTAwMCwKPiArCQku
dENFSF9taW4gPSAyMDAwMCwKPiArCQkudENIX21pbiA9IDUwMDAsCj4gKwkJLnRDSFpfbWF4ID0g
MjAwMDAsCj4gKwkJLnRDTEhfbWluID0gNTAwMCwKPiArCQkudENMUl9taW4gPSAxMDAwMCwKPiAr
CQkudENMU19taW4gPSAxMjAwMCwKPiArCQkudENPSF9taW4gPSAwLAo+ICsJCS50Q1NfbWluID0g
MjAwMDAsCj4gKwkJLnRESF9taW4gPSA1MDAwLAo+ICsJCS50RFNfbWluID0gMTIwMDAsCj4gKwkJ
LnRGRUFUX21heCA9IDEwMDAwMDAsCj4gKwkJLnRJUl9taW4gPSAwLAo+ICsJCS50SVRDX21heCA9
IDEwMDAwMDAsCj4gKwkJLnRSQ19taW4gPSAyNTAwMCwKPiArCQkudFJFQV9tYXggPSAyMDAwMCwK
PiArCQkudFJFSF9taW4gPSAxMDAwMCwKPiArCQkudFJIT0hfbWluID0gMjUwMDAsCj4gKwkJLnRS
SFdfbWluID0gMzAwMDAsCj4gKwkJLnRSSFpfbWF4ID0gNjAwMDAsCj4gKwkJLnRSTE9IX21pbiA9
IDUwMDAsCj4gKwkJLnRSUF9taW4gPSAxMjAwMCwKPiArCQkudFJSX21pbiA9IDIwMDAwLAo+ICsJ
CS50UlNUX21heCA9IDUwMDAwMDAwMCwKPiArCQkudFdCX21heCA9IDEwMDAwMCwKPiArCQkudFdD
X21pbiA9IDI1MDAwLAo+ICsJCS50V0hfbWluID0gMTAwMDAsCj4gKwkJLnRXSFJfbWluID0gNjAw
MDAsCj4gKwkJLnRXUF9taW4gPSAxMjAwMCwKPiArCQkudFdXX21pbiA9IDEwMDAwMCwKPiArCX0K
PiArfTsKPiArCj4gKwo+ICBzdGF0aWMgaW50IHRvc2hpYmFfbmFuZF9iZW5hbmRfcmVhZF9lY2Nz
dGF0dXNfb3Aoc3RydWN0IG5hbmRfY2hpcAo+ICpjaGlwLCB1OCAqYnVmKQo+ICB7Cj4gQEAgLTE5
NCw2ICsyNDAsMTMgQEAgc3RhdGljIHZvaWQgdG9zaGliYV9uYW5kX2RlY29kZV9pZChzdHJ1Y3QK
PiBuYW5kX2NoaXAgKmNoaXApIH0KPiAgfQo+ICAKPiArc3RhdGljIGludCB0aDU4bnZnMnMzaGJh
aTRfaW5pdF9kYXRhX2ludGVyZmFjZShzdHJ1Y3QgbmFuZF9jaGlwCgpJIHJlbmFtZWQgdGhlIGhv
b2sgc28gdGhlIGhlbHBlciBzaG91bGQgYmUKdGg1OC4uLl9jaG9vc2VfZGF0YV9pbnRlcmZhY2Uo
KQoKPiAqY2hpcCkgK3sKPiArCWNoaXAtPmRhdGFfaW50ZXJmYWNlID0gdGg1OG52ZzJzM2hiYWk0
X3RpbWluZ3M7Cgp0aGlzIGRhdGEgaW50ZXJmYWNlIHNob3VsZCBiZSB0ZXN0ZWQgYWdhaW5zdCB0
aGUgY29udHJvbGxlcidzCmNhcGFiaWxpdGllcyBhbmQgcmV0dXJuIGFuIGVycm9yIG90aGVyd2lz
ZS4KClBsZWFzZSBjaGVjayB0aGF0LCBpbiBjYXNlIG9mIGVycm9yIChzaW11bGF0ZSBpdCkgaXQg
ZmFsbGJhY2tzIHRvIG1vZGUKMCBhbmQgZG9lcyBub3QgZmFpbCBzaWxlbnRseS4KCj4gKwo+ICsJ
cmV0dXJuIDA7Cj4gK30KPiArCj4gIHN0YXRpYyBpbnQgdGM1OHRlZzVkY2x0YTAwX2luaXQoc3Ry
dWN0IG5hbmRfY2hpcCAqY2hpcCkKPiAgewo+ICAJc3RydWN0IG10ZF9pbmZvICptdGQgPSBuYW5k
X3RvX210ZChjaGlwKTsKPiBAQCAtMjA1LDYgKzI1OCwxMiBAQCBzdGF0aWMgaW50IHRjNTh0ZWc1
ZGNsdGEwMF9pbml0KHN0cnVjdCBuYW5kX2NoaXAKPiAqY2hpcCkgcmV0dXJuIDA7Cj4gIH0KPiAg
Cj4gK3N0YXRpYyBpbnQgdGg1OG52ZzJzM2hiYWk0X2luaXQoc3RydWN0IG5hbmRfY2hpcCAqY2hp
cCkKPiArewo+ICsJY2hpcC0+b3BzLmluaXRfZGF0YV9pbnRlcmZhY2UgPQo+IHRoNThudmcyczNo
YmFpNF9pbml0X2RhdGFfaW50ZXJmYWNlOwo+ICsJcmV0dXJuIDA7Cj4gK30KPiArCj4gIHN0YXRp
YyBpbnQgdG9zaGliYV9uYW5kX2luaXQoc3RydWN0IG5hbmRfY2hpcCAqY2hpcCkKPiAgewo+ICAJ
aWYgKG5hbmRfaXNfc2xjKGNoaXApKQo+IEBAIC0yMTcsNiArMjc2LDggQEAgc3RhdGljIGludCB0
b3NoaWJhX25hbmRfaW5pdChzdHJ1Y3QgbmFuZF9jaGlwCj4gKmNoaXApIAo+ICAJaWYgKCFzdHJj
bXAoIlRDNThURUc1RENMVEEwMCIsIGNoaXAtPnBhcmFtZXRlcnMubW9kZWwpKQo+ICAJCXRjNTh0
ZWc1ZGNsdGEwMF9pbml0KGNoaXApOwo+ICsJaWYgKCFzdHJuY21wKCJUSDU4TlZHMlMzSEJBSTQi
LCBjaGlwLT5wYXJhbWV0ZXJzLm1vZGVsLCAxNSkpCj4gKwkJdGg1OG52ZzJzM2hiYWk0X2luaXQo
Y2hpcCk7Cj4gIAo+ICAJcmV0dXJuIDA7Cj4gIH0KCgoKClRoYW5rcywKTWlxdcOobAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1U
RCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
