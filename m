Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 237C2761AA
	for <lists+linux-mtd@lfdr.de>; Fri, 26 Jul 2019 11:18:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zlfqeF4bqApI/bNQmNG59/9oOjZyyWd7BEstuftxP2Y=; b=YdecgCneOS1R9w
	xYX+6p1oNFy6vOEPrwSKN19yAdOG0m67OhjbMOIiLKkWYHNz+5dNezqWvdAaP82MP7sO3rZNOULil
	9X41O3sWCn6/KvKbfV64ynrK3KQjCJZUtTEhLWHr9u1TVYf1ks5TaFLslw6bQsdeHagnZTnrYbysV
	+3kcLhsnZhSAZlpa0DWaB8vVIUef2rWS2IVgQ2Zh0yvBM8HwNXuBUqEwHE8Pzkyi9hVCqcz9KhxlD
	cEAT82RPD1KRXdHaw3r2Xax1aVuTDlKvhS5FB9v+hYzGMfWx3weELqj4DbBnKLH3rZ6jQ2hgAt1lr
	9NAt6L7GosuzYJ4XzKEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqwMx-0001ur-Be; Fri, 26 Jul 2019 09:18:32 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqwLu-0001kv-4s
 for linux-mtd@lists.infradead.org; Fri, 26 Jul 2019 09:17:28 +0000
X-Originating-IP: 86.250.200.211
Received: from xps13 (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 146E96000D;
 Fri, 26 Jul 2019 09:17:16 +0000 (UTC)
Date: Fri, 26 Jul 2019 11:17:16 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Lucas Stach <l.stach@pengutronix.de>
Subject: Re: [PATCH] mtd: rawnand: micron: handle "ecc off" devices correctly
Message-ID: <20190726111716.591992c7@xps13>
In-Reply-To: <1564131251.2311.42.camel@pengutronix.de>
References: <20190726074434.21627-1-m.felsch@pengutronix.de>
 <20190726102858.3b4019d8@xps13>
 <1564131251.2311.42.camel@pengutronix.de>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_021726_639298_14FE88BA 
X-CRM114-Status: GOOD (  30.61  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
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
Cc: Richard Weinberger <richard.weinberger@gmail.com>,
 boris.brezillon@kernel.org, linux-mtd@lists.infradead.org,
 Marco Felsch <m.felsch@pengutronix.de>, kernel@pengutronix.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgTHVjYXMsIE1hcmNvLAoKTHVjYXMgU3RhY2ggPGwuc3RhY2hAcGVuZ3V0cm9uaXguZGU+IHdy
b3RlIG9uIEZyaSwgMjYgSnVsIDIwMTkgMTA6NTQ6MTEKKzAyMDA6Cgo+IEhpIE1pZ3VlbCwKPiAK
PiBBbSBGcmVpdGFnLCBkZW4gMjYuMDcuMjAxOSwgMTA6MjggKzAyMDAgc2NocmllYiBNaXF1ZWwg
UmF5bmFsOgo+ID4gSGkgTWFyY28sCj4gPiAKPiA+ICsgUmljaGFyZAo+ID4gKyBXb3JraW5nIGUt
bWFpbCBhZGRyZXNzIGZvciBCb3Jpcwo+ID4gICAKPiA+ID4gTWFyY28gRmVsc2NoIDxtLmZlbHNj
aEBwZW5ndXRyb25peC5kZT4gd3JvdGUgb24gRnJpLCAyNiBKdWwgMjAxOSAgCj4gPiAwOTo0NDoz
NCArMDIwMDoKPiA+ICAgCj4gPiA+IFNvbWUgZGV2aWNlcyBkb24ndCBzdXBwb3J0IGVjYyAib2Zm
aWNpYWwiLiBCeSAib2ZmaWNpYWwiIEkgbWVhbiB0aGF0IHRoZQoKICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgXiB1cHBlcmNhc2UgRUNDCgo+ID4gPiBmZWF0dXJlIGNhbiBiZSBzZXQg
dHJvdWdoIHRoZSAiU0VUIEZFQVRVUkUgKEVGaCkiIGNvbW1hbmQgYnV0IGlzbid0Cj4gPiA+IHJl
cG9ydGVkIHRvIHRoZSAiUkVBRCBJRCBQYXJhbWV0ZXIgVGFibGVzIi4gQmVjYXVzZSB0aGUgIkVD
QyBGaWVsZCIKPiA+ID4gc3RpbGwgc2F5cyB0aGF0IGl0IGlzIGRpc2FibGVkLiBUaGlzIGlzIGFw
cGxpY2FibGUgYXQgbGVhc3QKPiA+ID4gZm9yIHRoZSBNVDI5RjJHMDhBQkFHQSBhbmQgTVQyOUYy
RzA4QUJCR0EgZGV2aWNlcy4gRXZlbiB3b3JzZSB0aGUKPiA+ID4gZGF0YXNoZWV0IGRlc2NyaWJl
cyB0aGUgRUNDIGZlYXR1cmUgaW4gY2hhcHRlciAiRUNDIFByb3RlY3Rpb24iLgoKV2hhdCBhYm91
dDoKCiJTb21lIGRldmljZXMgYXJlIHN1cHBvc2VkIHRvIGRvIG5vdCBzdXBwb3J0IG9uLWRpZSBF
Q0MgYnV0CmV4cGVyaWVuY2Ugc2hvd3MgdGhhdCBpbnRlcm5hbCBFQ0MgbWFjaGluZXJ5IGNhbiBh
Y3R1YWxseSBiZSBlbmFibGVkCnRocm91Z2ggdGhlICJTRVQgRkVBVFVSRSAoRUZoKSIgY29tbWFu
ZCwgZXZlbiBpZiBhIHJlYWQgb2YgdGhlICJSRUFEIElEClBhcmFtZXRlciBUYWJsZXMiIHJldHVy
bnMgdGhhdCBpdCBpcyBub3QuIgoKPiA+ID4gCj4gPiA+IEN1cnJlbnRseSB0aGUgZHJpdmVyIGNo
ZWNrcyB0aGUgIlJFQUQgSUQgUGFyYW1ldGVyIiBmaWVsZCBkaXJlY3RseSBhZnRlcgo+ID4gPiB3
ZSBlbmFibGVkIHRoZSBmZWF0dXJlLiBJZiB0aGUgY2hlY2sgZmFpbHMgd2UgcmV0dXJuIGltbWVk
aWF0ZWx5IGJ1dAo+ID4gPiBsZWF2ZSB0aGUgRUNDIG9uLiBOb3cgYWxsIGZ1dHVyZSByZWFkL3By
b2dyYW0gY3ljbGVzIGdvZXMgdHJvdWdoIHRoZSBlY2MKPiA+ID4gYW5kIHRoZSBob3N0IG5mYyBn
ZXRzIGNvbmZ1c2VkIGFuZCByZXBvcnRzIEVDQyBlcnJvcnMuCgpBbmQgaGVyZToKCiJDdXJyZW50
bHksIHRoZSBkcml2ZXIgY2hlY2tzIHRoZSAiUkVBRCBJRCBQYXJhbWV0ZXIiIGZpZWxkCmRpcmVj
dGx5IGFmdGVyIGhhdmluZyBlbmFibGVkIHRoZSBmZWF0dXJlLiBJZiB0aGUgY2hlY2sgZmFpbHMg
aXQgcmV0dXJucwppbW1lZGlhdGVseSBidXQgbGVhdmVzIHRoZSBFQ0Mgb24uIFdoZW4gdXNpbmcg
YnVnZ3kgY2hpcHMgbGlrZQpNVDI5RjJHMDhBQkFHQSBhbmQgTVQyOUYyRzA4QUJCR0EsIGFsbCBm
dXR1cmUgcmVhZC9wcm9ncmFtIGN5Y2xlcyB3aWxsCmdvIHRocm91Z2ggdGhlIG9uLWRpZSBFQ0Ms
IGNvbmZ1c2luZyB0aGUgaG9zdCBjb250cm9sbGVyIHdoaWNoIGlzCnN1cHBvc2VkIHRvIGJlIHRo
ZSBvbmUgaGFuZGxpbmcgY29ycmVjdGlvbi4iCgo+ID4gPiBUbyBhZGRyZXNzIHRoaXMgaW4gYSBj
b21tb24gd2F5IHdlIG5lZWQgdG8gdHVybiBvZmYgdGhlIEVDQyBkaXJlY3RseQo+ID4gPiBhZnRl
ciByZWFkaW5nIHRoZSAiUkVBRCBJRCBQYXJhbWV0ZXIiIGFuZCBiZWZvcmUgY2hlY2tpbmcgdGhl
Cj4gPiA+ICJFQ0Mgc3RhdHVzIi4KPiA+ID4gCj4gPiA+IFNpZ25lZC1vZmYtYnk6IE1hcmNvIEZl
bHNjaCA8bS5mZWxzY2hAcGVuZ3V0cm9uaXguZGU+ICAKPiA+IAo+ID4gR29vZCBjYXRjaCEgSG93
ZXZlciB5b3UgcmVwb3J0IHRoYXQgb24tZGllIEVDQyBjb3JyZWN0aW9uIGlzIHdvcmtpbmcKPiA+
IGJ1dCB5b3Ugc3RpbGwgZGlzYWJsZSBpdDsgYW55IHJlYXNvbiB0byBkbyBzbyA/IFdvdWxkIGl0
IGJlIGJldHRlciB0bwo+ID4gYWN0dWFsbHkgZW5hYmxlIG9uLWRpZSBFQ0MgYW5kIGV4cGxpY2l0
bHkgbWFyayB0aGVzZSB0d28gY2hpcHMgYXMKPiA+IGJ1Z2d5IChzZWUgWzFdIGZvciBjaGVja2lu
ZyB0aGUgY2hpcCBJRHMpPyAgCj4gCj4gSXQncyB0aGUgb3RoZXIgd2F5IGFyb3VuZC4gVGhlIGNo
aXAgaXMgbm90IHN1cHBvc2VkIHRvIGhhdmUgb24tZGllIEVDQwo+IGFjY29yZGluZyB0byB0aGUg
ZGF0YXNoZWV0IGFuZCBjb3JyZWN0bHkgcmVmbGVjdHMgdGhpcyBmYWN0IGluIHRoZQo+IFJFQURf
SUQsIHNvIExpbnV4IHNob3VsZCBub3QgdHJ5IHRvIHVzZSB0aGUgb24tZGllIEVDQy4KCk9rIEkg
dW5kZXJzdG9vZCB0aGUgb3Bwb3NpdGUgYmVjYXVzZSBvZiB0aGUgIkV2ZW4gd29yc2UgdGhlIGRh
dGFzaGVldApkZXNjcmliZXMgdGhlIEVDQyBmZWF0dXJlIFsuLi5dIiB3aGljaCBpbXBsaWVkIHRv
IG1lIHRoYXQgdGhlIG9uLWRpZSBFQ0MKZmVhdHVyZSB3YXMgYWN0dWFsbHkgZXhwZWN0ZWQgZGVz
cGl0ZSB0aGUgc3RhdHVzIGJpdCBub3QgYmVpbmcgc2V0LgoKTWFyY28sIGNhbiB5b3UgcmVwaHJh
c2UgYSBiaXQgdGhlIGNvbW1pdCBsb2c/IEkgcHJvcG9zZWQgc29tZXRoaW5nLApmZWVsIGZyZWUg
dG8gYWRhcHQuCgo+IFRoZSBidWcgaXMgdGhhdCB0aGUgTkFORCBpcyBub3Qgc3VwcG9zZWQgdG8g
aGF2ZSBvbi1kaWUgRUNDIGFuZCByZXBvcnRzCj4gdGhpcyBjb3JyZWN0bHksIGJ1dCB0aGVuIGFj
dHVhbGx5IGVuYWJsZXMgYSBvbi1kaWUgRUNDIHVuaXQgd2hlbiBhc2tlZAo+IHRvLCBwcm9iYWJs
eSBkdWUgdG8gdGhlIHNhbWUgZGllIGJlaW5nIHVzZWQgZm9yIG9uLWRpZSBFQ0MgYW5kIEVDQyBv
ZmYKPiBkZXZpY2VzLiBUaGUgY29uc2VxdWVuY2UgaXMgdGhhdCBMaW51eCAoY29ycmVjdGx5KSBh
c3N1bWVzIHRoYXQgdGhlCj4gZnVsbCBPT0Igc2l6ZSBpcyBhdmFpbGFibGUgdG8gdGhlIGNvbnRy
b2xsZXIsIGJ1dCB0aGUgb24tZGllIEVDQyB1bml0Cj4gc2NyaWJibGVzIG92ZXIgc29tZSBvZiB0
aGUgT09CIGRhdGEuCj4gCj4gSSB0aGluayB0aGlzIGZpeCB0aGUgbW9zdCByb2J1c3Qgc29sdXRp
b24sIGFzIGl0IG1ha2VzIHN1cmUgdG8gZGlzYWJsZQo+IHRoZSBvbi1kaWUgRUNDIHVuaXQgdG8g
YXZvaWQgdGhlIGlzc3VlLCB3aGljaCBtaWdodCBhbHNvIGJlIHByZXNlbnQgb24KPiBvdGhlciBO
QU5EIGNoaXBzIHdlIGRvbid0IGtub3cgYWJvdXQgeWV0Lgo+IAo+IFJlZ2FyZHMsCj4gTHVjYXMg
Cj4gCj4gPiBbMV0gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjUuMy1yYzEvc291
cmNlL2RyaXZlcnMvbXRkL25hbmQvcmF3L25hbmRfbWFjcm9uaXguYyNMODMKPiA+ICAgCj4gPiA+
IC0tLQo+ID4gPiDCoGRyaXZlcnMvbXRkL25hbmQvcmF3L25hbmRfbWljcm9uLmMgfCAxNCArKysr
KysrKysrKy0tLQo+ID4gPiDCoDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAzIGRl
bGV0aW9ucygtKQo+ID4gPiAKPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbXRkL25hbmQvcmF3
L25hbmRfbWljcm9uLmMgYi9kcml2ZXJzL210ZC9uYW5kL3Jhdy9uYW5kX21pY3Jvbi5jCj4gPiA+
IGluZGV4IDE2MjJkMzE0NTU4Ny4uZmIxOTlhZDJmMWE2IDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2
ZXJzL210ZC9uYW5kL3Jhdy9uYW5kX21pY3Jvbi5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvbXRkL25h
bmQvcmF3L25hbmRfbWljcm9uLmMKPiA+ID4gQEAgLTM5MCw2ICszOTAsMTQgQEAgc3RhdGljIGlu
dCBtaWNyb25fc3VwcG9ydHNfb25fZGllX2VjYyhzdHJ1Y3QgbmFuZF9jaGlwICpjaGlwKSAgCj4g
PiA+ID4gPiDCoAnCoMKgwqDCoChjaGlwLT5pZC5kYXRhWzRdICYgTUlDUk9OX0lEX0lOVEVSTkFM
X0VDQ19NQVNLKSAhPSAweDIpCj4gPiA+ID4gPiDCoAkJcmV0dXJuIE1JQ1JPTl9PTl9ESUVfVU5T
VVBQT1JURUQ7ICAKPiA+ID4gwqAgIAo+ID4gPiA+ID4gKwkvKgo+ID4gPiA+ID4gKwnCoCogSXQg
c2VlbXMgdGhhdCB0aGVyZSBhcmUgZGV2aWNlcyB3aGljaCBkbyBub3Qgc3VwcG9ydCBFQ0Mgb2Zm
aWNpYWwuCj4gPiA+ID4gPiArCcKgKiBBdCBsZWFzdCB0aGUgTVQyOUYyRzA4QUJBR0EgLyBNVDI5
RjJHMDhBQkJHQSBkZXZpY2VzIHN1cHBvcnRzCj4gPiA+ID4gPiArCcKgKiBlbmFibGluZyB0aGUg
RUNDIGZlYXR1cmUgYnV0IGRvbid0IHJlZmxlY3QgdGhhdCB0byB0aGUgUkVBRF9JRCB0YWJsZS4K
PiA+ID4gPiA+ICsJwqAqIFNvIHdlIGhhdmUgdG8gZ3VhcmFudGVlIHRoYXQgd2UgZGlzYWJsZSB0
aGUgRUNDIGZlYXR1cmUgZGlyZWN0bHkKPiA+ID4gPiA+ICsJwqAqIGFmdGVyIHdlIGRpZCB0aGUg
UkVBRF9JRCB0YWJsZSBjb21tYW5kLiBMYXRlciB3ZSBjYW4gZXZhbHVhdGUgdGhlCj4gPiA+ID4g
PiArCcKgKiBFQ0NfRU5BQkxFIHN1cHBvcnQuCj4gPiA+ID4gPiArCcKgKi8KPiA+ID4gPiA+IMKg
CXJldCA9IG1pY3Jvbl9uYW5kX29uX2RpZV9lY2Nfc2V0dXAoY2hpcCwgdHJ1ZSk7Cj4gPiA+ID4g
PiDCoAlpZiAocmV0KQo+ID4gPiA+ID4gwqAJCXJldHVybiBNSUNST05fT05fRElFX1VOU1VQUE9S
VEVEOyAgCj4gPiA+IEBAIC0zOTgsMTMgKzQwNiwxMyBAQCBzdGF0aWMgaW50IG1pY3Jvbl9zdXBw
b3J0c19vbl9kaWVfZWNjKHN0cnVjdCBuYW5kX2NoaXAgKmNoaXApICAKPiA+ID4gPiA+IMKgCWlm
IChyZXQpCj4gPiA+ID4gPiDCoAkJcmV0dXJuIE1JQ1JPTl9PTl9ESUVfVU5TVVBQT1JURUQ7ICAK
PiA+ID4gwqAgIAo+ID4gPiA+ID4gLQlpZiAoIShpZFs0XSAmIE1JQ1JPTl9JRF9FQ0NfRU5BQkxF
RCkpCj4gPiA+ID4gPiAtCQlyZXR1cm4gTUlDUk9OX09OX0RJRV9VTlNVUFBPUlRFRDsgIAo+ID4g
PiAtICAKPiA+ID4gPiA+IMKgCXJldCA9IG1pY3Jvbl9uYW5kX29uX2RpZV9lY2Nfc2V0dXAoY2hp
cCwgZmFsc2UpOwo+ID4gPiA+ID4gwqAJaWYgKHJldCkKPiA+ID4gPiA+IMKgCQlyZXR1cm4gTUlD
Uk9OX09OX0RJRV9VTlNVUFBPUlRFRDsgIAo+ID4gPiDCoCAgCj4gPiA+ID4gPiArCWlmICghKGlk
WzRdICYgTUlDUk9OX0lEX0VDQ19FTkFCTEVEKSkKPiA+ID4gPiA+ICsJCXJldHVybiBNSUNST05f
T05fRElFX1VOU1VQUE9SVEVEOyAgCj4gPiA+ICsgIAo+ID4gPiA+ID4gwqAJcmV0ID0gbmFuZF9y
ZWFkaWRfb3AoY2hpcCwgMCwgaWQsIHNpemVvZihpZCkpOwo+ID4gPiA+ID4gwqAJaWYgKHJldCkg
IAo+ID4gPiDCoAkJcmV0dXJuIE1JQ1JPTl9PTl9ESUVfVU5TVVBQT1JURUQ7ICAKPiA+IAo+ID4g
VGhhbmtzLAo+ID4gTWlxdcOobAo+ID4gICAKCgpUaGFua3MsCk1pcXXDqGwKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlz
Y3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1tdGQvCg==
