Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA0F1F7459
	for <lists+linux-mtd@lfdr.de>; Fri, 12 Jun 2020 09:07:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EdrdF8MrgU67bOcoucEnvMKkg31AS2LGeohI14RMWAw=; b=VoaJECG+tYg0p+
	DKgYZ/t4612ghLNxkaN8d7pTkwnpqXVVN7NN80+4v+8YjAY4SzW7uikluO0W1TSvN9jSuOm+T4q6n
	1gZ/Q2dBcqijb6XkAvB7xpizAOqDZ5fWU6deABV8pXtQW2RFbmstc7VOmuDdOsoZ65oK9PcXGwoIe
	Sc6vyVj7FBf2ZE6ruJd4zfJ4eq2xky3vEYyG0MT0N4xasWwx9CZZhneBi1OpxRhOXbBNnonPUpiOb
	OvzwkM5lLGYAmhnt/kl5KTm1TOEKXr7N61lfhRPtoRz72VidmtjfyQWEWfqZUuLs9eGURUFnjRr7V
	8UcOPwgn2ZdIlWb/8apw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjdmw-0002Gy-Nl; Fri, 12 Jun 2020 07:07:42 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjdmo-0002Fz-8g
 for linux-mtd@lists.infradead.org; Fri, 12 Jun 2020 07:07:36 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id E578E240006;
 Fri, 12 Jun 2020 07:07:29 +0000 (UTC)
Date: Fri, 12 Jun 2020 09:07:28 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Kamal Dasu <kdasu.kdev@gmail.com>
Subject: Re: [PATCH 2/2] mtd: rawnand: brcmnand: Ecc error handling on EDU
 transfers
Message-ID: <20200612090728.043b6baf@xps13>
In-Reply-To: <CAC=U0a3RXScu12LkU+hCv_5Lp_he92ExRFSgqLkwx40D6Xtrag@mail.gmail.com>
References: <20200611054454.2547-1-kdasu.kdev@gmail.com>
 <20200611054454.2547-2-kdasu.kdev@gmail.com>
 <20200611092707.75da8c6a@xps13>
 <CAC=U0a3RXScu12LkU+hCv_5Lp_he92ExRFSgqLkwx40D6Xtrag@mail.gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_000734_575787_31BE5078 
X-CRM114-Status: GOOD (  33.42  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Brian Norris <computersforpeace@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgS2FtYWwsCgpLYW1hbCBEYXN1IDxrZGFzdS5rZGV2QGdtYWlsLmNvbT4gd3JvdGUgb24gVGh1
LCAxMSBKdW4gMjAyMCAxMjowNDoyOQotMDQwMDoKCj4gT24gVGh1LCBKdW4gMTEsIDIwMjAgYXQg
MzoyNyBBTSBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPiB3cm90ZToK
PiA+Cj4gPiBIaSBLYW1hbCwKPiA+Cj4gPiBLYW1hbCBEYXN1IDxrZGFzdS5rZGV2QGdtYWlsLmNv
bT4gd3JvdGUgb24gVGh1LCAxMSBKdW4gMjAyMCAwMTo0NDo1NAo+ID4gLTA0MDA6Cj4gPiAgCj4g
PiA+IEltcGxlbWVudGVkIEVDQyBjb3JyZWN0YWJsZSBhbmQgdW5jb3JyZWN0YWJsZSBlcnJvciBo
YW5kbGluZyBmb3IgRURVICAKPiA+Cj4gPiBJbXBsZW1lbnQ/Cj4gPiAgCj4gPiA+IHJlYWRzLiBJ
ZiBFQ0MgY29ycmVjdGFibGUgYml0ZmxpcHMgYXJlIGVuY291bnRlcmVkICBvbiBFRFUgdHJhbnNm
ZXIsICAKPiA+Cj4gPiBleHRyYSBzcGFjZSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgXgo+ID4gIAo+ID4gPiByZWFkIHBhZ2UgYWdhaW4gdXNpbmcgcGlvLCBUaGlzIGlz
IG5lZWRlZCBkdWUgdG8gYSBjb250cm9sbGVyIGxtaXRhdGlvbiAgCj4gPgo+ID4gcy9waW8vUElP
Lwo+ID4gIAo+ID4gPiB3aGVyZSByZWFkIGFuZCBjb3JyZWN0ZWQgZGF0YSBpcyBub3QgdHJhbnNm
ZXJyZWQgdG8gdGhlIERNQSBidWZmZXIgb24gRUNDCj4gPiA+IGVycm9ycy4gVGhpcyBob2xkcyB0
cnVlIGZvciBFQ0MgY29ycmVjdGFibGUgZXJyb3JzIGJleW9uZCBzZXQgdGhyZXNob2xkLiAgCj4g
Pgo+ID4gZXJyb3IuCj4gPgo+ID4gTm90IHN1cmUgd2hhdCB0aGUgbGFzdCBzZW50ZW5jZSBtZWFu
cz8KPiA+ICAKPiAKPiBOQU5EIGNvbnRyb2xsZXIgYWxsb3dzIGZvciBzZXR0aW5nIGEgY29ycmVj
dGFibGUgIEVDQyB0aHJlc2hvbGQgbnVtYmVyCj4gb2YgYml0cyBiZXlvbmQgd2hpY2ggaXQgd2ls
bCBhY3R1YWxseSByZXBvcnQgdGhlIGVycm9yIHRvIHRoZSBkcml2ZXIuCj4gZS5nLiBmb3IgQkNI
LTQgdGhlIHRocmVzaG9sZCBpcyAzLCBzbyAzLWJpdCBhbmQgNC1iaXQgZXJyb3JzIHdpbGwKPiBn
ZW5lcmF0ZSBjb3JyZWN0YWJsZSBFQ0MgaW50ZXJydXB0IGhvd2V2ZXIgMS1iaXQgYW5kIDItYml0
IGVycm9ycyB3aWxsCj4gYmUgY29ycmVjdGVkIHNpbGVudGx5Lgo+IEZyb20gdGhlIGFib3ZlIGV4
YW1wbGUgRURVIGhhcmR3YXJlIHdpbGwgbm90IHRyYW5zZmVyIGNvcnJlY3RlZCBkYXRhCj4gdG8g
dGhlIERNQSBidWZmZXIgZm9yIDMtYml0IGFuZCA0LWJpdCBlcnJvcnMgdGhhdCBnZXQgcmVwb3J0
ZWQuIFNvCj4gb25jZSB3ZSBkZXRlY3QKPiB0aGUgZXJyb3IgZHVpbmcgRURVIHdlIHJlYWQgdGhl
IHBhZ2UgYWdhaW4gdXNpbmcgcGlvLgoKT2sgSSBzZWUgd2hhdCB5b3UgbWVhbiwgY2FuJ3QgeW91
IGZha2UgdGhlIHRocmVzaG9sZCBpbnN0ZWFkPyBUaGUgTkFORApjb250cm9sbGVyIGluIExpbnV4
IGlzIG5vdCBzdXBwb3NlZCB0byBoYW5kbGUgdGhpcyB0aHJlc2hvbGQsIHRoZSBOQU5ECmNvcmUg
aXMgaW4gY2hhcmdlLiBTbyB3aGF0IHRoZSBjb250cm9sbGVyIGRyaXZlciBzaG91bGQgZG8gaXMg
anVzdDoKaW5jcmVhc2UgdGhlIG51bWJlciBvZiBiaXRmbGlwcyArIHJldHVybiB0aGUgbWF4aW11
bSBudW1iZXIgb3IgYml0ZmxpcApvciBpbmNyZWFzZSB0aGUgZmFpbHVyZSBjb3VudGVyLiBJcyB0
aGlzIGFscmVhZHkgdGhlIGNhc2U/Cgo+IAo+ID4gPgo+ID4gPiBGaXhlczogYTVkNTNhZDI2YThi
ICgibXRkOiByYXduYW5kOiBicmNtbmFuZDogQWRkIHN1cHBvcnQgZm9yIGZsYXNoLWVkdSBmb3Ig
ZG1hIHRyYW5zZmVycyIpCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEthbWFsIERhc3UgPGtkYXN1Lmtk
ZXZAZ21haWwuY29tPgo+ID4gPiAtLS0gIAo+ID4KPiA+IE1pbm9yIG5pdHMgYmVsb3cgOikKPiA+
ICAKPiA+ID4gIGRyaXZlcnMvbXRkL25hbmQvcmF3L2JyY21uYW5kL2JyY21uYW5kLmMgfCAyNiAr
KysrKysrKysrKysrKysrKysrKysrKysKPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyNiBpbnNlcnRp
b25zKCspCj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL210ZC9uYW5kL3Jhdy9icmNt
bmFuZC9icmNtbmFuZC5jIGIvZHJpdmVycy9tdGQvbmFuZC9yYXcvYnJjbW5hbmQvYnJjbW5hbmQu
Ywo+ID4gPiBpbmRleCAwYzFkNmU1NDM1ODYuLmQ3ZGFhODNjOGE1OCAxMDA2NDQKPiA+ID4gLS0t
IGEvZHJpdmVycy9tdGQvbmFuZC9yYXcvYnJjbW5hbmQvYnJjbW5hbmQuYwo+ID4gPiArKysgYi9k
cml2ZXJzL210ZC9uYW5kL3Jhdy9icmNtbmFuZC9icmNtbmFuZC5jCj4gPiA+IEBAIC0xODU1LDYg
KzE4NTUsMjIgQEAgc3RhdGljIGludCBicmNtbmFuZF9lZHVfdHJhbnMoc3RydWN0IGJyY21uYW5k
X2hvc3QgKmhvc3QsIHU2NCBhZGRyLCB1MzIgKmJ1ZiwKPiA+ID4gICAgICAgZWR1X3dyaXRlbChj
dHJsLCBFRFVfU1RPUCwgMCk7IC8qIGZvcmNlIHN0b3AgKi8KPiA+ID4gICAgICAgZWR1X3JlYWRs
KGN0cmwsIEVEVV9TVE9QKTsKPiA+ID4KPiA+ID4gKyAgICAgaWYgKHJldCA9PSAwICYmIGVkdV9j
bWQgPT0gRURVX0NNRF9SRUFEKSB7ICAKPiA+Cj4gPiAhcmV0Cj4gPiAgCj4gPiA+ICsgICAgICAg
ICAgICAgdTY0IGVycl9hZGRyID0gMDsKPiA+ID4gKwo+ID4gPiArICAgICAgICAgICAgIC8qCj4g
PiA+ICsgICAgICAgICAgICAgICogY2hlY2sgZm9yIGVjYyBlcnJvcnMgaGVyZSwgc3VicGFnZSBl
Y2MgZXJyb3MgYXJlCj4gPiA+ICsgICAgICAgICAgICAgICogcmV0YWluZWQgaW4gZWNjIGVycm9y
IGFkZHIgcmVnaXN0ZXIgIAo+ID4KPiA+IHMvZWNjL0VDQy8KPiA+IHMvZXJyb3MvZXJyb3JzLwo+
ID4gcy9hZGRyL2FkZHJlc3MvCj4gPiAgCj4gPiA+ICsgICAgICAgICAgICAgICovCj4gPiA+ICsg
ICAgICAgICAgICAgZXJyX2FkZHIgPSBicmNtbmFuZF9nZXRfdW5jb3JyZWNjX2FkZHIoY3RybCk7
Cj4gPiA+ICsgICAgICAgICAgICAgaWYgKCFlcnJfYWRkcikgewo+ID4gPiArICAgICAgICAgICAg
ICAgICAgICAgZXJyX2FkZHIgPSBicmNtbmFuZF9nZXRfY29ycmVjY19hZGRyKGN0cmwpOwo+ID4g
PiArICAgICAgICAgICAgICAgICAgICAgaWYgKGVycl9hZGRyKQo+ID4gPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICByZXQgPSAtRVVDTEVBTjsKPiA+ID4gKyAgICAgICAgICAgICB9IGVs
c2UKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIHJldCA9IC1FQkFETVNHOyAgCj4gPgo+ID4g
SSBkb24ndCBsaWtlIHZlcnkgbXVjaCB0byBzZWUgdGhlc2UgdmFsdWVzIGJlaW5nIHVzZWQgd2l0
aGluIE5BTkQKPiA+IGNvbnRyb2xsZXIgZHJpdmVycyBidXQgSSBzZWUgaXQncyBhbHJlYWR5IHRo
ZSBjYXVzZSwgc28gSSBndWVzcyBJIGNhbgoKcy9jYXVzZS9jYXNlLwoKPiA+IGxpdmUgd2l0aCB0
aGF0Lgo+ID4gIAo+ID4gPiArICAgICB9Cj4gPiA+ICsKPiA+ID4gICAgICAgcmV0dXJuIHJldDsK
PiA+ID4gIH0KPiA+ID4KPiA+ID4gQEAgLTIwNTgsNiArMjA3NCw3IEBAIHN0YXRpYyBpbnQgYnJj
bW5hbmRfcmVhZChzdHJ1Y3QgbXRkX2luZm8gKm10ZCwgc3RydWN0IG5hbmRfY2hpcCAqY2hpcCwK
PiA+ID4gICAgICAgdTY0IGVycl9hZGRyID0gMDsKPiA+ID4gICAgICAgaW50IGVycjsKPiA+ID4g
ICAgICAgYm9vbCByZXRyeSA9IHRydWU7Cj4gPiA+ICsgICAgIGJvb2wgZWR1X3JlYWQgPSBmYWxz
ZTsKPiA+ID4KPiA+ID4gICAgICAgZGV2X2RiZyhjdHJsLT5kZXYsICJyZWFkICVsbHggLT4gJXBc
biIsICh1bnNpZ25lZCBsb25nIGxvbmcpYWRkciwgYnVmKTsKPiA+ID4KPiA+ID4gQEAgLTIwNzUs
NiArMjA5MiwxMCBAQCBzdGF0aWMgaW50IGJyY21uYW5kX3JlYWQoc3RydWN0IG10ZF9pbmZvICpt
dGQsIHN0cnVjdCBuYW5kX2NoaXAgKmNoaXAsCj4gPiA+ICAgICAgICAgICAgICAgICAgICAgICBl
bHNlCj4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiAtRUlPOwo+ID4g
PiAgICAgICAgICAgICAgIH0KPiA+ID4gKwo+ID4gPiArICAgICAgICAgICAgIGlmIChoYXNfZWR1
KGN0cmwpKQo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgZWR1X3JlYWQgPSB0cnVlOyAgCj4g
Pgo+ID4gWW91IGRvbid0IG5lZWQgdGhpcyBleHRyYSB2YWx1ZSwgeW91IGFscmVhZHkgaGF2ZSB0
aGUgY21kIHBhcmFtZXRlcgo+ID4gd2hpY2ggdGVsbHMgeW91IGlmIGl0IGlzIGEgcmVhZCBvciBh
IHdyaXRlLiBZb3UgbWlnaHQgZXZlbiB3YW50IHRvCj4gPiBjcmVhdGUgYSBpZiBibG9jayBzbyBz
ZXQgZGlyIGFuZCBlZHVfY21kIGFuZCBldmVudHVhbGx5IGEgbG9jYWwKPiA+IGVkdV9yZWFkIGlm
IHlvdSB0aGluayBpdCBzdGlsbCBtYWtlcyBzZW5zZS4KPiA+ICAKPiAKPiBJIG5lZWRlZCB0aGUg
dmFsdWUgc2luY2UgZG1hIGFuZCBlZHUgcmVhZCBoYXMgbXVsdGlwbGUgY29uZGl0aW9ucyBsaWtl
Cj4gb29iIGlzIG5vdCBpbmNsdWRlZCwgYnVmZmVyIGlzIGFsaWduZWQsIHZpcnR1YWwgYWRkcmVz
cyBpcyBnb29kLiBUaGlzCj4gaW5kaWNhdGVzIHRvCj4gdGhlIGlmIChtdGRfaXNfYml0ZmxpcChl
cnIpKSAgYmxvY2sgdGhhdCB0aGUgZXJyb3Igd2FzIGZyb20gYW4gZWR1Cj4gdHJhbnNhY3Rpb24g
dGhhdCBoYXBwZW5lZC5UaGlzIHdheSBhbGwgZWNjIGVycm9yIGhhbmRsaW5nIGZvciBkbWEsCj4g
ZWR1LCBwaW8gaXMgaW4gb25lIHBsYWNlLgo+IEFsc28gdGhlcmUgaXMgbW9yZSBjb250cm9sbGVy
IHZlcnNpb24gc3BlY2lmaWMgbG9naWMgZm9yIHJlYWQgZXJyb3IKPiBoYW5kbGluZyBpbiB0aGVy
ZSBhbmQgdGhpcyBhbGxvd3MgdXMgdG8gbWFpbnRhaW4gdGhlIGhpZXJhcmNoeSBob3cgd2UKPiBo
YW5kbGUgYm90aCBjb3JyZWN0YWJsZQo+IGFuZCB1bmNvcnJlY3RhYmxlIGVycm9yLgoKRmFpciBl
bm91Z2guCgo+IAo+ID4gPiArCj4gPiA+ICAgICAgIH0gZWxzZSB7Cj4gPiA+ICAgICAgICAgICAg
ICAgaWYgKG9vYikKPiA+ID4gICAgICAgICAgICAgICAgICAgICAgIG1lbXNldChvb2IsIDB4OTks
IG10ZC0+b29ic2l6ZSk7Cj4gPiA+IEBAIC0yMTIyLDYgKzIxNDMsMTEgQEAgc3RhdGljIGludCBi
cmNtbmFuZF9yZWFkKHN0cnVjdCBtdGRfaW5mbyAqbXRkLCBzdHJ1Y3QgbmFuZF9jaGlwICpjaGlw
LAo+ID4gPiAgICAgICBpZiAobXRkX2lzX2JpdGZsaXAoZXJyKSkgewo+ID4gPiAgICAgICAgICAg
ICAgIHVuc2lnbmVkIGludCBjb3JyZWN0ZWQgPSBicmNtbmFuZF9jb3VudF9jb3JyZWN0ZWQoY3Ry
bCk7Cj4gPiA+Cj4gPiA+ICsgICAgICAgICAgICAgLyogaW4gY2FzZSBvZiBlZHUgY29ycmVjdGFi
bGUgZXJyb3Igd2UgcmVhZCBhZ2FpbiB1c2luZyBwaW8gKi8gIAo+ID4KPiA+IHMvZWR1L0VEVS8g
Pwo+ID4gcy9waW8vUElPLwo+ID4gIAo+ID4gPiArICAgICAgICAgICAgIGlmIChlZHVfcmVhZCkK
PiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIGVyciA9IGJyY21uYW5kX3JlYWRfYnlfcGlvKG10
ZCwgY2hpcCwgYWRkciwgdHJhbnMsIGJ1ZiwKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIG9vYiwgJmVycl9hZGRyKTsKPiA+ID4gKwo+ID4gPiAg
ICAgICAgICAgICAgIGRldl9kYmcoY3RybC0+ZGV2LCAiY29ycmVjdGVkIGVycm9yIGF0IDB4JWxs
eFxuIiwKPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICh1bnNpZ25lZCBsb25nIGxvbmcpZXJy
X2FkZHIpOwo+ID4gPiAgICAgICAgICAgICAgIG10ZC0+ZWNjX3N0YXRzLmNvcnJlY3RlZCArPSBj
b3JyZWN0ZWQ7ICAKPiA+ICAKPiAKPiBXaWxsIGZpeCBhbGwgdGhlIG90aGVyIHR5cG9zLgo+IAo+
ID4gVGhhbmtzLAo+ID4gTWlxdcOobCAgCj4gCj4gVGhhbmtzCj4gS2FtYWwKCgpUaGFua3MsCk1p
cXXDqGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
