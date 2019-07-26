Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D21F0761B2
	for <lists+linux-mtd@lfdr.de>; Fri, 26 Jul 2019 11:20:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vvOmnXcJJh8o4FBs62DiE0a4b/oyD4sdJIy/kK4W/po=; b=I3Y9d/Hu70KuTS
	NLm14Q01KFoh7txJoXdRmw03xhoeAxv7B/K0O1jNUwYSHNWAq6gldI35l4Soi/RWleYn8kzuAy8At
	Gh1KBxMUVr+X+lMGqSLBO42xDx82zvCgz0W2LACEyZwjCWmv6WtJA+ltSNxFKVft/zRwztvd2EQMv
	kJ8vP5yjU3FnB+wG7ZADjy+4Mby7zYST/v4GkqqU1qy7l5cqMQDqYzwt68ThKw1zqB2WE1sQ9mS3I
	P9QBh0kmgQMwLCjWRpg4SPimtCO0sed76OTEmhBYZNZp//tSI/kYLUgLepiV12Lm0g1/57whhJO3t
	pntSSbEMGq+cD5WIhaMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqwOl-0003eA-AK; Fri, 26 Jul 2019 09:20:23 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqwOV-0002QJ-At
 for linux-mtd@lists.infradead.org; Fri, 26 Jul 2019 09:20:10 +0000
Received: from xps13 (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 7D3FA240011;
 Fri, 26 Jul 2019 09:20:02 +0000 (UTC)
Date: Fri, 26 Jul 2019 11:20:01 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Lucas Stach <l.stach@pengutronix.de>
Subject: Re: [PATCH] mtd: rawnand: micron: handle "ecc off" devices correctly
Message-ID: <20190726112001.4035f85f@xps13>
In-Reply-To: <20190726111716.591992c7@xps13>
References: <20190726074434.21627-1-m.felsch@pengutronix.de>
 <20190726102858.3b4019d8@xps13>
 <1564131251.2311.42.camel@pengutronix.de>
 <20190726111716.591992c7@xps13>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_022007_977554_1BC380D7 
X-CRM114-Status: GOOD (  32.07  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
 linux-mtd@lists.infradead.org, Marco Felsch <m.felsch@pengutronix.de>,
 kernel@pengutronix.de, Boris Brezillon <bbrezillon@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

V3JvbmcgYWRkcmVzcyBmb3IgQm9yaXMgYWdhaW4sIHNvcnJ5IGZvciB0aGUgbm9pc2UuCgo+IEhp
IEx1Y2FzLCBNYXJjbywKPiAKPiBMdWNhcyBTdGFjaCA8bC5zdGFjaEBwZW5ndXRyb25peC5kZT4g
d3JvdGUgb24gRnJpLCAyNiBKdWwgMjAxOSAxMDo1NDoxMQo+ICswMjAwOgo+IAo+ID4gSGkgTWln
dWVsLAo+ID4gCj4gPiBBbSBGcmVpdGFnLCBkZW4gMjYuMDcuMjAxOSwgMTA6MjggKzAyMDAgc2No
cmllYiBNaXF1ZWwgUmF5bmFsOiAgCj4gPiA+IEhpIE1hcmNvLAo+ID4gPiAKPiA+ID4gKyBSaWNo
YXJkCj4gPiA+ICsgV29ya2luZyBlLW1haWwgYWRkcmVzcyBmb3IgQm9yaXMKPiA+ID4gICAgIAo+
ID4gPiA+IE1hcmNvIEZlbHNjaCA8bS5mZWxzY2hAcGVuZ3V0cm9uaXguZGU+IHdyb3RlIG9uIEZy
aSwgMjYgSnVsIDIwMTkgICAgCj4gPiA+IDA5OjQ0OjM0ICswMjAwOgo+ID4gPiAgICAgCj4gPiA+
ID4gU29tZSBkZXZpY2VzIGRvbid0IHN1cHBvcnQgZWNjICJvZmZpY2lhbCIuIEJ5ICJvZmZpY2lh
bCIgSSBtZWFuIHRoYXQgdGhlICAKPiAKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBeIHVwcGVyY2FzZSBFQ0MKPiAKPiA+ID4gPiBmZWF0dXJlIGNhbiBiZSBzZXQgdHJvdWdoIHRo
ZSAiU0VUIEZFQVRVUkUgKEVGaCkiIGNvbW1hbmQgYnV0IGlzbid0Cj4gPiA+ID4gcmVwb3J0ZWQg
dG8gdGhlICJSRUFEIElEIFBhcmFtZXRlciBUYWJsZXMiLiBCZWNhdXNlIHRoZSAiRUNDIEZpZWxk
Igo+ID4gPiA+IHN0aWxsIHNheXMgdGhhdCBpdCBpcyBkaXNhYmxlZC4gVGhpcyBpcyBhcHBsaWNh
YmxlIGF0IGxlYXN0Cj4gPiA+ID4gZm9yIHRoZSBNVDI5RjJHMDhBQkFHQSBhbmQgTVQyOUYyRzA4
QUJCR0EgZGV2aWNlcy4gRXZlbiB3b3JzZSB0aGUKPiA+ID4gPiBkYXRhc2hlZXQgZGVzY3JpYmVz
IHRoZSBFQ0MgZmVhdHVyZSBpbiBjaGFwdGVyICJFQ0MgUHJvdGVjdGlvbiIuICAKPiAKPiBXaGF0
IGFib3V0Ogo+IAo+ICJTb21lIGRldmljZXMgYXJlIHN1cHBvc2VkIHRvIGRvIG5vdCBzdXBwb3J0
IG9uLWRpZSBFQ0MgYnV0Cj4gZXhwZXJpZW5jZSBzaG93cyB0aGF0IGludGVybmFsIEVDQyBtYWNo
aW5lcnkgY2FuIGFjdHVhbGx5IGJlIGVuYWJsZWQKPiB0aHJvdWdoIHRoZSAiU0VUIEZFQVRVUkUg
KEVGaCkiIGNvbW1hbmQsIGV2ZW4gaWYgYSByZWFkIG9mIHRoZSAiUkVBRCBJRAo+IFBhcmFtZXRl
ciBUYWJsZXMiIHJldHVybnMgdGhhdCBpdCBpcyBub3QuIgo+IAo+ID4gPiA+IAo+ID4gPiA+IEN1
cnJlbnRseSB0aGUgZHJpdmVyIGNoZWNrcyB0aGUgIlJFQUQgSUQgUGFyYW1ldGVyIiBmaWVsZCBk
aXJlY3RseSBhZnRlcgo+ID4gPiA+IHdlIGVuYWJsZWQgdGhlIGZlYXR1cmUuIElmIHRoZSBjaGVj
ayBmYWlscyB3ZSByZXR1cm4gaW1tZWRpYXRlbHkgYnV0Cj4gPiA+ID4gbGVhdmUgdGhlIEVDQyBv
bi4gTm93IGFsbCBmdXR1cmUgcmVhZC9wcm9ncmFtIGN5Y2xlcyBnb2VzIHRyb3VnaCB0aGUgZWNj
Cj4gPiA+ID4gYW5kIHRoZSBob3N0IG5mYyBnZXRzIGNvbmZ1c2VkIGFuZCByZXBvcnRzIEVDQyBl
cnJvcnMuICAKPiAKPiBBbmQgaGVyZToKPiAKPiAiQ3VycmVudGx5LCB0aGUgZHJpdmVyIGNoZWNr
cyB0aGUgIlJFQUQgSUQgUGFyYW1ldGVyIiBmaWVsZAo+IGRpcmVjdGx5IGFmdGVyIGhhdmluZyBl
bmFibGVkIHRoZSBmZWF0dXJlLiBJZiB0aGUgY2hlY2sgZmFpbHMgaXQgcmV0dXJucwo+IGltbWVk
aWF0ZWx5IGJ1dCBsZWF2ZXMgdGhlIEVDQyBvbi4gV2hlbiB1c2luZyBidWdneSBjaGlwcyBsaWtl
Cj4gTVQyOUYyRzA4QUJBR0EgYW5kIE1UMjlGMkcwOEFCQkdBLCBhbGwgZnV0dXJlIHJlYWQvcHJv
Z3JhbSBjeWNsZXMgd2lsbAo+IGdvIHRocm91Z2ggdGhlIG9uLWRpZSBFQ0MsIGNvbmZ1c2luZyB0
aGUgaG9zdCBjb250cm9sbGVyIHdoaWNoIGlzCj4gc3VwcG9zZWQgdG8gYmUgdGhlIG9uZSBoYW5k
bGluZyBjb3JyZWN0aW9uLiIKPiAKPiA+ID4gPiBUbyBhZGRyZXNzIHRoaXMgaW4gYSBjb21tb24g
d2F5IHdlIG5lZWQgdG8gdHVybiBvZmYgdGhlIEVDQyBkaXJlY3RseQo+ID4gPiA+IGFmdGVyIHJl
YWRpbmcgdGhlICJSRUFEIElEIFBhcmFtZXRlciIgYW5kIGJlZm9yZSBjaGVja2luZyB0aGUKPiA+
ID4gPiAiRUNDIHN0YXR1cyIuCj4gPiA+ID4gCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogTWFyY28g
RmVsc2NoIDxtLmZlbHNjaEBwZW5ndXRyb25peC5kZT4gICAgCj4gPiA+IAo+ID4gPiBHb29kIGNh
dGNoISBIb3dldmVyIHlvdSByZXBvcnQgdGhhdCBvbi1kaWUgRUNDIGNvcnJlY3Rpb24gaXMgd29y
a2luZwo+ID4gPiBidXQgeW91IHN0aWxsIGRpc2FibGUgaXQ7IGFueSByZWFzb24gdG8gZG8gc28g
PyBXb3VsZCBpdCBiZSBiZXR0ZXIgdG8KPiA+ID4gYWN0dWFsbHkgZW5hYmxlIG9uLWRpZSBFQ0Mg
YW5kIGV4cGxpY2l0bHkgbWFyayB0aGVzZSB0d28gY2hpcHMgYXMKPiA+ID4gYnVnZ3kgKHNlZSBb
MV0gZm9yIGNoZWNraW5nIHRoZSBjaGlwIElEcyk/ICAgIAo+ID4gCj4gPiBJdCdzIHRoZSBvdGhl
ciB3YXkgYXJvdW5kLiBUaGUgY2hpcCBpcyBub3Qgc3VwcG9zZWQgdG8gaGF2ZSBvbi1kaWUgRUND
Cj4gPiBhY2NvcmRpbmcgdG8gdGhlIGRhdGFzaGVldCBhbmQgY29ycmVjdGx5IHJlZmxlY3RzIHRo
aXMgZmFjdCBpbiB0aGUKPiA+IFJFQURfSUQsIHNvIExpbnV4IHNob3VsZCBub3QgdHJ5IHRvIHVz
ZSB0aGUgb24tZGllIEVDQy4gIAo+IAo+IE9rIEkgdW5kZXJzdG9vZCB0aGUgb3Bwb3NpdGUgYmVj
YXVzZSBvZiB0aGUgIkV2ZW4gd29yc2UgdGhlIGRhdGFzaGVldAo+IGRlc2NyaWJlcyB0aGUgRUND
IGZlYXR1cmUgWy4uLl0iIHdoaWNoIGltcGxpZWQgdG8gbWUgdGhhdCB0aGUgb24tZGllIEVDQwo+
IGZlYXR1cmUgd2FzIGFjdHVhbGx5IGV4cGVjdGVkIGRlc3BpdGUgdGhlIHN0YXR1cyBiaXQgbm90
IGJlaW5nIHNldC4KPiAKPiBNYXJjbywgY2FuIHlvdSByZXBocmFzZSBhIGJpdCB0aGUgY29tbWl0
IGxvZz8gSSBwcm9wb3NlZCBzb21ldGhpbmcsCj4gZmVlbCBmcmVlIHRvIGFkYXB0Lgo+IAo+ID4g
VGhlIGJ1ZyBpcyB0aGF0IHRoZSBOQU5EIGlzIG5vdCBzdXBwb3NlZCB0byBoYXZlIG9uLWRpZSBF
Q0MgYW5kIHJlcG9ydHMKPiA+IHRoaXMgY29ycmVjdGx5LCBidXQgdGhlbiBhY3R1YWxseSBlbmFi
bGVzIGEgb24tZGllIEVDQyB1bml0IHdoZW4gYXNrZWQKPiA+IHRvLCBwcm9iYWJseSBkdWUgdG8g
dGhlIHNhbWUgZGllIGJlaW5nIHVzZWQgZm9yIG9uLWRpZSBFQ0MgYW5kIEVDQyBvZmYKPiA+IGRl
dmljZXMuIFRoZSBjb25zZXF1ZW5jZSBpcyB0aGF0IExpbnV4IChjb3JyZWN0bHkpIGFzc3VtZXMg
dGhhdCB0aGUKPiA+IGZ1bGwgT09CIHNpemUgaXMgYXZhaWxhYmxlIHRvIHRoZSBjb250cm9sbGVy
LCBidXQgdGhlIG9uLWRpZSBFQ0MgdW5pdAo+ID4gc2NyaWJibGVzIG92ZXIgc29tZSBvZiB0aGUg
T09CIGRhdGEuCj4gPiAKPiA+IEkgdGhpbmsgdGhpcyBmaXggdGhlIG1vc3Qgcm9idXN0IHNvbHV0
aW9uLCBhcyBpdCBtYWtlcyBzdXJlIHRvIGRpc2FibGUKPiA+IHRoZSBvbi1kaWUgRUNDIHVuaXQg
dG8gYXZvaWQgdGhlIGlzc3VlLCB3aGljaCBtaWdodCBhbHNvIGJlIHByZXNlbnQgb24KPiA+IG90
aGVyIE5BTkQgY2hpcHMgd2UgZG9uJ3Qga25vdyBhYm91dCB5ZXQuCj4gPiAKPiA+IFJlZ2FyZHMs
Cj4gPiBMdWNhcyAKPiA+ICAgCj4gPiA+IFsxXSBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9s
aW51eC92NS4zLXJjMS9zb3VyY2UvZHJpdmVycy9tdGQvbmFuZC9yYXcvbmFuZF9tYWNyb25peC5j
I0w4Mwo+ID4gPiAgICAgCj4gPiA+ID4gLS0tCj4gPiA+ID4gwqBkcml2ZXJzL210ZC9uYW5kL3Jh
dy9uYW5kX21pY3Jvbi5jIHwgMTQgKysrKysrKysrKystLS0KPiA+ID4gPiDCoDEgZmlsZSBjaGFu
Z2VkLCAxMSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+ID4gPiA+IAo+ID4gPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL210ZC9uYW5kL3Jhdy9uYW5kX21pY3Jvbi5jIGIvZHJpdmVycy9t
dGQvbmFuZC9yYXcvbmFuZF9taWNyb24uYwo+ID4gPiA+IGluZGV4IDE2MjJkMzE0NTU4Ny4uZmIx
OTlhZDJmMWE2IDEwMDY0NAo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvbXRkL25hbmQvcmF3L25hbmRf
bWljcm9uLmMKPiA+ID4gPiArKysgYi9kcml2ZXJzL210ZC9uYW5kL3Jhdy9uYW5kX21pY3Jvbi5j
Cj4gPiA+ID4gQEAgLTM5MCw2ICszOTAsMTQgQEAgc3RhdGljIGludCBtaWNyb25fc3VwcG9ydHNf
b25fZGllX2VjYyhzdHJ1Y3QgbmFuZF9jaGlwICpjaGlwKSAgICAKPiA+ID4gPiA+ID4gwqAJwqDC
oMKgwqAoY2hpcC0+aWQuZGF0YVs0XSAmIE1JQ1JPTl9JRF9JTlRFUk5BTF9FQ0NfTUFTSykgIT0g
MHgyKQo+ID4gPiA+ID4gPiDCoAkJcmV0dXJuIE1JQ1JPTl9PTl9ESUVfVU5TVVBQT1JURUQ7ICAg
IAo+ID4gPiA+IMKgICAgIAo+ID4gPiA+ID4gPiArCS8qCj4gPiA+ID4gPiA+ICsJwqAqIEl0IHNl
ZW1zIHRoYXQgdGhlcmUgYXJlIGRldmljZXMgd2hpY2ggZG8gbm90IHN1cHBvcnQgRUNDIG9mZmlj
aWFsLgo+ID4gPiA+ID4gPiArCcKgKiBBdCBsZWFzdCB0aGUgTVQyOUYyRzA4QUJBR0EgLyBNVDI5
RjJHMDhBQkJHQSBkZXZpY2VzIHN1cHBvcnRzCj4gPiA+ID4gPiA+ICsJwqAqIGVuYWJsaW5nIHRo
ZSBFQ0MgZmVhdHVyZSBidXQgZG9uJ3QgcmVmbGVjdCB0aGF0IHRvIHRoZSBSRUFEX0lEIHRhYmxl
Lgo+ID4gPiA+ID4gPiArCcKgKiBTbyB3ZSBoYXZlIHRvIGd1YXJhbnRlZSB0aGF0IHdlIGRpc2Fi
bGUgdGhlIEVDQyBmZWF0dXJlIGRpcmVjdGx5Cj4gPiA+ID4gPiA+ICsJwqAqIGFmdGVyIHdlIGRp
ZCB0aGUgUkVBRF9JRCB0YWJsZSBjb21tYW5kLiBMYXRlciB3ZSBjYW4gZXZhbHVhdGUgdGhlCj4g
PiA+ID4gPiA+ICsJwqAqIEVDQ19FTkFCTEUgc3VwcG9ydC4KPiA+ID4gPiA+ID4gKwnCoCovCj4g
PiA+ID4gPiA+IMKgCXJldCA9IG1pY3Jvbl9uYW5kX29uX2RpZV9lY2Nfc2V0dXAoY2hpcCwgdHJ1
ZSk7Cj4gPiA+ID4gPiA+IMKgCWlmIChyZXQpCj4gPiA+ID4gPiA+IMKgCQlyZXR1cm4gTUlDUk9O
X09OX0RJRV9VTlNVUFBPUlRFRDsgICAgCj4gPiA+ID4gQEAgLTM5OCwxMyArNDA2LDEzIEBAIHN0
YXRpYyBpbnQgbWljcm9uX3N1cHBvcnRzX29uX2RpZV9lY2Moc3RydWN0IG5hbmRfY2hpcCAqY2hp
cCkgICAgCj4gPiA+ID4gPiA+IMKgCWlmIChyZXQpCj4gPiA+ID4gPiA+IMKgCQlyZXR1cm4gTUlD
Uk9OX09OX0RJRV9VTlNVUFBPUlRFRDsgICAgCj4gPiA+ID4gwqAgICAgCj4gPiA+ID4gPiA+IC0J
aWYgKCEoaWRbNF0gJiBNSUNST05fSURfRUNDX0VOQUJMRUQpKQo+ID4gPiA+ID4gPiAtCQlyZXR1
cm4gTUlDUk9OX09OX0RJRV9VTlNVUFBPUlRFRDsgICAgCj4gPiA+ID4gLSAgICAKPiA+ID4gPiA+
ID4gwqAJcmV0ID0gbWljcm9uX25hbmRfb25fZGllX2VjY19zZXR1cChjaGlwLCBmYWxzZSk7Cj4g
PiA+ID4gPiA+IMKgCWlmIChyZXQpCj4gPiA+ID4gPiA+IMKgCQlyZXR1cm4gTUlDUk9OX09OX0RJ
RV9VTlNVUFBPUlRFRDsgICAgCj4gPiA+ID4gwqAgICAgCj4gPiA+ID4gPiA+ICsJaWYgKCEoaWRb
NF0gJiBNSUNST05fSURfRUNDX0VOQUJMRUQpKQo+ID4gPiA+ID4gPiArCQlyZXR1cm4gTUlDUk9O
X09OX0RJRV9VTlNVUFBPUlRFRDsgICAgCj4gPiA+ID4gKyAgICAKPiA+ID4gPiA+ID4gwqAJcmV0
ID0gbmFuZF9yZWFkaWRfb3AoY2hpcCwgMCwgaWQsIHNpemVvZihpZCkpOwo+ID4gPiA+ID4gPiDC
oAlpZiAocmV0KSAgICAKPiA+ID4gPiDCoAkJcmV0dXJuIE1JQ1JPTl9PTl9ESUVfVU5TVVBQT1JU
RUQ7ICAgIAo+ID4gPiAKPiA+ID4gVGhhbmtzLAo+ID4gPiBNaXF1w6hsCj4gPiA+ICAgICAKPiAK
PiAKPiBUaGFua3MsCj4gTWlxdcOobAoKCgoKVGhhbmtzLApNaXF1w6hsCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1
c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtbXRkLwo=
