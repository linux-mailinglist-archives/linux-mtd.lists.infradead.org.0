Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D9A13B1BA
	for <lists+linux-mtd@lfdr.de>; Tue, 14 Jan 2020 19:11:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7MWF8OCIJ78zn07SpkctzpZvJTlav7RfsPn+YTmTCxQ=; b=RiTFzLZ4DvW/2+
	fa5n2SuHnIDuDU5bL8BfDbIAoo+NtSKrPaLEBqPPsN+wvK3dEuNmydKfdE40J0uVF6O4I4UR5qxLU
	xfmzhHhvU4IqhULE54eSgtBmTWlUOUYoCmuHQ0KJsx/6ang1i2E1fOK+W/AzTQZXSXB1UA4ia+Zbi
	YkFl4DWUJTEWhfyqlrTa6WpzfBPR5s2KIwgHtqqDGho90xpLiEoeTBHX/K9hwpje0CoE7+iV9ugHF
	4wwFKEM03QaER1e0EN4nRgfpWiTgomTtqpNaWgqdgi0UZEYK2HFZkncS1VCcPVjL64o/zPZQZU0QP
	Lw0kIouS9OufNvaUhjYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irQew-0008Sq-6B; Tue, 14 Jan 2020 18:11:22 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irQel-0008SQ-R9
 for linux-mtd@lists.infradead.org; Tue, 14 Jan 2020 18:11:16 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 19A3B240005;
 Tue, 14 Jan 2020 18:10:53 +0000 (UTC)
Date: Tue, 14 Jan 2020 19:10:52 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v5 4/4] mtd: Add driver for concatenating devices
Message-ID: <20200114191052.0a16d116@xps13>
In-Reply-To: <CAL_JsqJP3-h7bPAommzt7KQKoohZpkk=RMxfN1j3rXbisD4eCA@mail.gmail.com>
References: <20191127105522.31445-1-miquel.raynal@bootlin.com>
 <20191127105522.31445-5-miquel.raynal@bootlin.com>
 <20191209113506.41341ed4@collabora.com>
 <CAL_JsqJP3-h7bPAommzt7KQKoohZpkk=RMxfN1j3rXbisD4eCA@mail.gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_101112_152303_564948E1 
X-CRM114-Status: GOOD (  27.54  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Mark Brown <broonie@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 Bernhard Frauendienst <kernel@nospam.obeliks.de>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgUm9iLAoKUm9iIEhlcnJpbmcgPHJvYmgrZHRAa2VybmVsLm9yZz4gd3JvdGUgb24gVHVlLCAx
NCBKYW4gMjAyMCAxMTo0NjoxOAotMDYwMDoKCj4gT24gTW9uLCBEZWMgOSwgMjAxOSBhdCA0OjM1
IEFNIEJvcmlzIEJyZXppbGxvbgo+IDxib3Jpcy5icmV6aWxsb25AY29sbGFib3JhLmNvbT4gd3Jv
dGU6Cj4gPgo+ID4gT24gV2VkLCAyNyBOb3YgMjAxOSAxMTo1NToyMiArMDEwMAo+ID4gTWlxdWVs
IFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4gd3JvdGU6Cj4gPiAgCj4gPiA+IElu
dHJvZHVjZSBhIGdlbmVyaWMgd2F5IHRvIGRlZmluZSBjb25jYXRlbmF0ZWQgTVREIGRldmljZXMu
IFRoaXMgbWF5Cj4gPiA+IGJlIHZlcnkgdXNlZnVsIGluIHRoZSBjYXNlIG9mIGllLiBzdGFja2Vk
IFNQSS1OT1IuIFBhcnRpdGlvbnMgdG8KPiA+ID4gY29uY2F0ZW5hdGUgYXJlIGRlc2NyaWJlZCBp
biBhbiBhZGRpdGlvbmFsIHByb3BlcnR5IG9mIHRoZSBwYXJ0aXRpb25zCj4gPiA+IHN1Ym5vZGU6
Cj4gPiA+Cj4gPiA+ICAgICAgICAgZmxhc2gwIHsKPiA+ID4gICAgICAgICAgICAgICAgIHBhcnRp
dGlvbnMgewo+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gImZpeGVk
LXBhcnRpdGlvbnMiOwo+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICBwYXJ0LWNvbmNhdCA9
IDwmZmxhc2gwX3BhcnQxPiwgPCZmbGFzaDFfcGFydDA+Owo+ID4gPgo+ID4gPiAgICAgICAgICAg
ICAgICAgICAgICAgcGFydDBAMCB7Cj4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IGxhYmVsID0gInBhcnQwXzAiOwo+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBy
ZWcgPSA8MHgwIDB4ODAwMDAwPjsKPiA+ID4gICAgICAgICAgICAgICAgICAgICAgIH07Cj4gPiA+
Cj4gPiA+ICAgICAgICAgICAgICAgICAgICAgICBmbGFzaDBfcGFydDE6IHBhcnQxQDgwMDAwMCB7
Cj4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGxhYmVsID0gInBhcnQwXzEiOwo+
ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8MHg4MDAwMDAgMHg4MDAw
MDA+OyAgCj4gPgo+ID4gU28sIGZsYXNoMF9wYXJ0MSBhbmQgZmxhc2gwX3BhcnQyIHdpbGwgYmUg
Y3JlYXRlZCBldmVuIHRob3VnaCB0aGUgdXNlcgo+ID4gcHJvYmFibHkgZG9lc24ndCBuZWVkIHRo
ZW0/ICAKPiAKPiBJIGRvbid0IGZvbGxvdz8KCldlbGwsIG9uZSB3aWxsIGhhdmUgdG8gY3JlYXRl
ICJmYWtlIiBwYXJ0aXRpb25zIGluIG9yZGVyIHRvIGNvbmNhdGVuYXRlCnRoZW0gd2l0aCB0aGlz
IHNvbHV0aW9uLCBpbnN0ZWFkIG9mIGp1c3QgY29uY2F0ZW5hdGluZyB0aGUgZGV2aWNlcyAoaW4K
dGhlIGNhc2Ugd2hlcmUgeW91IHdhbnQgdG8gY29uY2F0ZW5hdGUgdGhlIGVudGlyZSBkZXZpY2Vz
KS4gQnV0IHRoZSByZWFsCmRlYmF0ZSBpcyBiZWxvdywgb24gdGhlIHJlcHJlc2VudGF0aW9uLgoK
PiAKPiA+ICAKPiA+ID4gICAgICAgICAgICAgICAgICAgICAgIH07Cj4gPiA+ICAgICAgICAgICAg
ICAgICB9Owo+ID4gPiAgICAgICAgIH07Cj4gPiA+Cj4gPiA+ICAgICAgICAgZmxhc2gxIHsKPiA+
ID4gICAgICAgICAgICAgICAgIHBhcnRpdGlvbnMgewo+ID4gPiAgICAgICAgICAgICAgICAgICAg
ICAgICBjb21wYXRpYmxlID0gImZpeGVkLXBhcnRpdGlvbnMiOwo+ID4gPgo+ID4gPiAgICAgICAg
ICAgICAgICAgICAgICAgZmxhc2gwX3BhcnQxOiBwYXJ0MUAwIHsKPiA+ID4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgbGFiZWwgPSAicGFydDFfMCI7Cj4gPiA+ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHJlZyA9IDwweDAgMHg4MDAwMDA+Owo+ID4gPiAgICAgICAgICAgICAg
ICAgICAgICAgfTsKPiA+ID4KPiA+ID4gICAgICAgICAgICAgICAgICAgICAgIHBhcnQwQDgwMDAw
MCB7Cj4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGxhYmVsID0gInBhcnQxXzEi
Owo+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8MHg4MDAwMDAgMHg4
MDAwMDA+Owo+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgfTsKPiA+ID4gICAgICAgICAgICAg
ICAgIH07Cj4gPiA+ICAgICAgICAgfTsgIAo+ID4KPiA+IElNSE8gdGhpcyByZXByZXNlbnRhdGlv
biBpcyBmYXIgZnJvbSBpbnR1aXRpdmUuIEF0IGZpcnN0IGdsYW5jZSBpdCdzIG5vdAo+ID4gb2J2
aW91cyB3aGljaCBwYXJ0aXRpb25zIGFyZSBsaW5rZWQgdG9nZXRoZXIgYW5kIHdoYXQncyB0aGUg
bmFtZSBvZiB0aGUKPiA+IHJlc3VsdGluZyBjb25jYXRlbmF0ZWQgcGFydC4gSSBkZWZpbml0ZWx5
IHByZWZlciB0aGUgc29sdXRpb24gd2hlcmUgd2UKPiA+IGhhdmUgYSB2aXJ0dWFsIGRldmljZSBk
ZXNjcmliaW5nIHRoZSBjb25jYXRlbmF0aW9uLiBJIGFsc28gdW5kZXJzdGFuZAo+ID4gdGhhdCB0
aGlzIGdvZXMgYWdhaW5zdCB0aGUgIzEgRFQgcnVsZTogIkRUIG9ubHkgZGVjcmliZXMgSFcgYmxv
Y2tzLCBub3QKPiA+IGhvdyB0aGV5IHNob3VsZCBiZSB1c2VkL2NvbmZpZ3VyZWQiLCBidXQgbWF5
YmUgd2UgY2FuIGZpbmQgYSBjb21wcm9taXNlCj4gPiBoZXJlLCBsaWtlIG1vdmluZyB0aGlzIGRl
c2NyaXB0aW9uIHRvIHRoZSAvY2hvc2VuIG5vZGU/Cj4gPgo+ID4gY2hvc2VuIHsKPiA+ICAgICAg
ICAgZmxhc2gtYXJyYXlzIHsKPiA+ICAgICAgICAgICAgICAgICAvKgo+ID4gICAgICAgICAgICAg
ICAgICAqIG15LWZsYXNoLWFycmF5IGlzIHRoZSBNVEQgbmFtZSBpZiBsYWJlbCBpcwo+ID4gICAg
ICAgICAgICAgICAgICAqIG5vdCBwcmVzZW50Lgo+ID4gICAgICAgICAgICAgICAgICAqLwo+ID4g
ICAgICAgICAgICAgICAgIG15LWZsYXNoLWFycmF5IHsKPiA+ICAgICAgICAgICAgICAgICAgICAg
ICAgIC8qCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgKiBXZSBjb3VsZCBoYXZlCj4gPiAg
ICAgICAgICAgICAgICAgICAgICAgICAgKiBjb21wYXRpYmxlID0gImZsYXNoLWFycmF5IjsKPiA+
ICAgICAgICAgICAgICAgICAgICAgICAgICAqIGJ1dCB3ZSBjYW4gYWxzbyBkbyB3aXRob3V0IGl0
Lgo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICovCj4gPiAgICAgICAgICAgICAgICAgICAg
ICAgICBsYWJlbCA9ICJmb28iOwo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgZmxhc2hlcyA9
IDwmZmxhc2gxICZmbGFzaDIgLi4uPjsKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgIHBhcnRp
dGlvbnMgewo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAvKiB1c3VhbCBwYXJ0
aXRpb24gZGVzY3JpcHRpb24uICovCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IC4uLgo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgfTsKPiA+ICAgICAgICAgICAgICAgICB9
Owo+ID4gICAgICAgICB9Owo+ID4gfTsKPiA+Cj4gPiBSb2IsIHdoYXQgZG8geW91IHRoaW5rPyAg
Cj4gCj4gSSBkb24ndCB0aGluayBjaG9zZW4gaXMgdGhlIHJpZ2h0IHBsYWNlIHRvIHB1dCBhbGwg
dGhlIHBhcnRpdGlvbgo+IGluZm9ybWF0aW9uLiBJdCdzIG5vdCBzb21ldGhpbmcgdGhlIGJvb3Rs
b2FkZXIgY29uZmlndXJlcy4KPiAKPiBUaGlzIHN1ZmZlcnMgZnJvbSB0aGUgc2FtZSBpc3N1ZSBJ
IGhhdmUgd2l0aCB0aGUgb3JpZ2luYWwgcHJvcG9zYWwuIEl0Cj4gd2lsbCBub3Qgd29yayBmb3Ig
ZXhpc3Rpbmcgcy93LiBUaGVyZSdzIG9ubHkgMSBsb2dpY2FsIHBhcnRpdGlvbiB0aGF0CgpJIGRv
bid0IGdldCB3aHkgaXQgd291bGQgbm90IHdvcms/IEN1cnJlbnQgaGFyZHdhcmUgd2lsbCBqdXN0
IG5vdCBoYXZlCnRoZSBjb25jYXRlbmF0aW9uIHN1cHBvcnQsIHRoYXQncyBhbGwuIEhvdyBpcyB0
aGlzIGEgcHJvYmxlbT8KCj4gY29uY2F0ZW5hdGVkLiBUaGUgcmVzdCBvZiB0aGUgcGFydGl0aW9u
cyBzaG91bGRuJ3QgbmVlZCBhbnkgc3BlY2lhbAo+IGhhbmRsaW5nLiBTbyB3ZSByZWFsbHkgb25s
eSBuZWVkIHNvbWUgd2F5IHRvIHNheSAnbGluayB0aGVzZSAyCj4gcGFydGl0aW9ucyBpbnRvIDEg
bG9naWNhbCBwYXJ0aXRpb24nLiBUaG91Z2ggcGVyaGFwcyBvbmUgY291bGQgd2FudCB0bwo+IGNv
bWJpbmUgYW55IG51bWJlciBvZiBwaHlzaWNhbCBwYXJ0aXRpb25zIGludG8gbG9naWNhbCBwYXJ0
aXRpb25zLCBidXQKPiB0aGVuIG5vbmUgb2YgdGhlIHByb3Bvc2FscyBjb3VsZCBzdXBwb3J0IHRo
YXQuIFRoZW4gYWdhaW4sIG1heWJlCgpZZXMsIHRoZSBmbGFzaC1hcnJheSBwcm9wb3NhbCBzdXBw
b3J0cyBoYXZpbmcgbW9yZSB0aGFuIHR3bwpwYXJ0aXRpb25zL2RldmljZXMgY29uY2F0ZW5hdGVk
LCBpdCBpcyBhbHNvIGFscmVhZHkgc3VwcG9ydGVkIGJ5IHRoZQpkcml2ZXIgKHlvdSBkb24ndCBj
YXJlIGFib3V0IHRoaXMsIGJ1dCBJIGRvIDopICkuCgo+IHRoYXQncyBhIHVzZXJzcGFjZSBwcm9i
bGVtIGxpa2Ugd2l0aCBkaXNrcy4KCkkgc2VlIG9uZSBiaWcgaXNzdWUgd2l0aCB0aGlzIHNvbHV0
aW9uOiB3aGF0IGFib3V0IGJvb3Rsb2FkZXJzPwoKVGhlIHJvb3QgY2F1c2UgZm9yIHN1Y2ggaWRl
YSBpcyB0aGF0LCBpbiBteSBjYXNlLCB0aGUgMiBNVEQgZGV2aWNlcyBhcmUKdG9vIHNtYWxsIHRv
IGNvbnRhaW4gdGhlIGltYWdlcyBuZWVkZWQgdG8gYm9vdC4gVGhlIHBlcmZlY3Qgc29sdXRpb24g
aXMKdG8gbWVyZ2UgdGhlIHR3byBkZXZpY2VzIHZpcnR1YWxseSBpbiBvbmUgc2luZ2xlIGRldmlj
ZSBhbmQgbGV0IFUtQm9vdApyZWFkIGl0IGxpa2Ugb25lLgoKSSBuZWVkIHRvIGhhdmUgdGhlIHNh
bWUgcmVwcmVzZW50YXRpb24gYm90aCBpbiBVLUJvb3QgYW5kIExpbnV4LCBoZW5jZQphIHVzZXJz
cGFjZSB0b29sIGFuZCBhIGtlcm5lbCBjb21tYW5kIGxpbmUgYXJndW1lbnQgZG8gbm90IHdvcmss
IHJpZ2h0PwoKPiBUbyB0aHJvdyBvdXQgYW5vdGhlciBvcHRpb24sIHdoYXQgaWYgdGhlIGZpcnN0
IGRldmljZSBjb250YWlucyB0aGUKPiBjb21wbGV0ZSBwYXJ0aXRpb25zIGZvciBib3RoIGRldmlj
ZXMgd2l0aCBzb21lIHByb3BlcnR5IGluIG9uZSBvciBib3RoCj4gZGV2aWNlcyBwb2ludGluZyB0
byB0aGUgb3RoZXIgZGV2aWNlPyBUaGF0IHdvdWxkIG1ha2UgdGhlIHBhcnRpdGlvbnMKPiBpbiB0
aGUgMXN0IGRldmljZSBzdGlsbCBhY2Nlc3NpYmxlIHRvIGV4aXN0aW5nIHMvdyAodW5sZXNzIGl0
IGJvdW5kcwo+IGNoZWNrcyB0aGUgcGFydGl0aW9ucykuCgpGcm9tIGEgY29kaW5nIHBlcnNwZWN0
aXZlIHRoaXMgaXMgdmVyeSBkaWZmaWN1bHQgYXMgYm91bmQgY2hlY2tzIGFyZQpkb25lIGV2ZXJ5
d2hlcmUgYW5kIGx5aW5nIGFib3V0IHRoZSBib3VuZGFyaWVzIGlzIElNSE8gYSBiaXQgY29tcGxl
eC4KClRoYW5rcywKTWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
