Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CE5FAD3F1
	for <lists+linux-mtd@lfdr.de>; Mon,  9 Sep 2019 09:33:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YJwbQ5JfYgC0m82VT6obcvN6M+Bfh1DxPpkNJrp7LHI=; b=IeAQuGTHwBfSmFZRBJ3bqa9Sw
	NftfhZWC+UiHwXoJhRDt30Bbs/ltwVnasZgteqPGv/D3hvREBpqn9TSD/FV/WaIVzS5dr/+8ZDn/m
	4dcRZofEtuAbjjDKcwr+QpCk2R/sgRUt8eW/h0R/5z4CPKS/t1LgF7bYbw8JhbNmaxkPWC6KOa9oV
	F3OlWsB71808cUYtBhNzT62pugRkkDwsfJEyLPs4OH63wu5JFgFwjX+s1WlJuc1L4/6B8smYlYsSN
	iF6l59JskP7rGsc6YyRov/ZFzpMGidXAGUHytCG2sNaewQxKlkYdlaP6GTcUY4G78Ctae1/UvK2B1
	n4wQLmq3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7EAr-00078x-6j; Mon, 09 Sep 2019 07:33:21 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7EAX-00078Z-LD
 for linux-mtd@lists.infradead.org; Mon, 09 Sep 2019 07:33:03 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 00:33:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,484,1559545200"; d="scan'208";a="183731697"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga008.fm.intel.com with ESMTP; 09 Sep 2019 00:33:00 -0700
Received: from [10.226.38.10] (vramuthx-mobl1.gar.corp.intel.com
 [10.226.38.10])
 by linux.intel.com (Postfix) with ESMTP id 0F12F5807FF;
 Mon,  9 Sep 2019 00:32:53 -0700 (PDT)
Subject: Re: [PATCH v2 2/3] mtd: spi-nor: cadence-quadspi: disable DMA and DAC
 for Intel LGM
To: Vignesh Raghavendra <vigneshr@ti.com>, linux-mtd@lists.infradead.org
References: <20190827035827.21024-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20190827035827.21024-3-vadivel.muruganx.ramuthevar@linux.intel.com>
 <2596ecd4-4ba6-ff7d-472f-1f6e664b4a97@ti.com>
From: "Ramuthevar, Vadivel MuruganX"
 <vadivel.muruganx.ramuthevar@linux.intel.com>
Message-ID: <3bff7de7-71a8-599b-c9e4-17f7f7c04981@linux.intel.com>
Date: Mon, 9 Sep 2019 15:32:53 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <2596ecd4-4ba6-ff7d-472f-1f6e664b4a97@ti.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_003301_711867_5B6C19BA 
X-CRM114-Status: GOOD (  28.73  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: cheol.yong.kim@intel.com, devicetree@vger.kernel.org,
 tudor.ambarus@gmail.com, andriy.shevchenko@intel.com,
 boris.brezillon@free-electrons.com, richard@nod.at, qi-ming.wu@intel.com,
 linux-kernel@vger.kernel.org, david.oberhollenzer@sigma-star.at,
 miquel.raynal@bootlin.com, jwboyer@gmail.com, computersforpeace@gmail.com,
 dwmw2@infradead.org, cyrille.pitchen@atmel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgVmlnbmVzaCwKClRoYW5rIHlvdSBzbyBtdWNoIGZvciB0aGUgcmV2aWV3IGNvbW1lbnRzIGFu
ZCB5b3VyIHRpbWUuCgpPbiA5LzkvMjAxOSAyOjA1IFBNLCBWaWduZXNoIFJhZ2hhdmVuZHJhIHdy
b3RlOgo+IEhpLAo+Cj4gT24gMjcvMDgvMTkgOToyOCBBTSwgUmFtdXRoZXZhcixWYWRpdmVsIE11
cnVnYW5YIHdyb3RlOgo+PiBGcm9tOiBSYW11dGhldmFyIFZhZGl2ZWwgTXVydWdhbiA8dmFkaXZl
bC5tdXJ1Z2FueC5yYW11dGhldmFyQGxpbnV4LmludGVsLmNvbT4KPj4KPj4gb24gSW50ZWwncyBM
aWdodG5pbmcgTW91bnRhaW4oTEdNKSBTb0NzIFFTUEkgY29udHJvbGxlciBkbyBub3QgdXNlCj4+
IERpcmVjdCBNZW1vcnkgQWNjZXNzKERNQSkgYW5kIERpcmVjdCBBY2Nlc3MgQ29udHJvbGxlcihE
QUMpLgo+Pgo+PiBUaGlzIHBhdGNoIGludHJvZHVjZXMgdG8gcHJvcGVybHkgZGlzYWJsZSB0aGUg
RE1BIGFuZCBEQUMKPj4gZm9yIGRhdGEgdHJhbnNmZXIgaW5zdGVhZCBpdCB1c2VzIGluZGlyZWN0
IGRhdGEgdHJhbnNmZXIuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFJhbXV0aGV2YXIgVmFkaXZlbCBN
dXJ1Z2FuIDx2YWRpdmVsLm11cnVnYW54LnJhbXV0aGV2YXJAbGludXguaW50ZWwuY29tPgo+PiAt
LS0KPj4gICBkcml2ZXJzL210ZC9zcGktbm9yL0tjb25maWcgICAgICAgICAgIHwgIDIgKy0KPj4g
ICBkcml2ZXJzL210ZC9zcGktbm9yL2NhZGVuY2UtcXVhZHNwaS5jIHwgMjEgKysrKysrKysrKysr
KysrKysrLS0tCj4+ICAgMiBmaWxlcyBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCA0IGRlbGV0
aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tdGQvc3BpLW5vci9LY29uZmlnIGIv
ZHJpdmVycy9tdGQvc3BpLW5vci9LY29uZmlnCj4+IGluZGV4IDZkZTgzMjc3Y2U4Yi4uYmEyZTM3
MmFlNTE0IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL210ZC9zcGktbm9yL0tjb25maWcKPj4gKysr
IGIvZHJpdmVycy9tdGQvc3BpLW5vci9LY29uZmlnCj4+IEBAIC0zNCw3ICszNCw3IEBAIGNvbmZp
ZyBTUElfQVNQRUVEX1NNQwo+PiAgIAo+PiAgIGNvbmZpZyBTUElfQ0FERU5DRV9RVUFEU1BJCj4+
ICAgCXRyaXN0YXRlICJDYWRlbmNlIFF1YWQgU1BJIGNvbnRyb2xsZXIiCj4+IC0JZGVwZW5kcyBv
biBPRiAmJiAoQVJNIHx8IEFSTTY0IHx8IENPTVBJTEVfVEVTVCkKPj4gKwlkZXBlbmRzIG9uIE9G
ICYmIChBUk0gfHwgQVJNNjQgfHwgQ09NUElMRV9URVNUIHx8IFg4NikKPj4gICAJaGVscAo+PiAg
IAkgIEVuYWJsZSBzdXBwb3J0IGZvciB0aGUgQ2FkZW5jZSBRdWFkIFNQSSBGbGFzaCBjb250cm9s
bGVyLgo+PiAgIAo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tdGQvc3BpLW5vci9jYWRlbmNlLXF1
YWRzcGkuYyBiL2RyaXZlcnMvbXRkL3NwaS1ub3IvY2FkZW5jZS1xdWFkc3BpLmMKPj4gaW5kZXgg
NjdmMTVhMWYxNmZkLi42OWZhMTNlOTUxMTAgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbXRkL3Nw
aS1ub3IvY2FkZW5jZS1xdWFkc3BpLmMKPj4gKysrIGIvZHJpdmVycy9tdGQvc3BpLW5vci9jYWRl
bmNlLXF1YWRzcGkuYwo+PiBAQCAtNTE3LDEyICs1MTcsMTYgQEAgc3RhdGljIGludCBjcXNwaV9p
bmRpcmVjdF9yZWFkX2V4ZWN1dGUoc3RydWN0IHNwaV9ub3IgKm5vciwgdTggKnJ4YnVmLAo+PiAg
IAlzdHJ1Y3QgY3FzcGlfc3QgKmNxc3BpID0gZl9wZGF0YS0+Y3FzcGk7Cj4+ICAgCXZvaWQgX19p
b21lbSAqcmVnX2Jhc2UgPSBjcXNwaS0+aW9iYXNlOwo+PiAgIAl2b2lkIF9faW9tZW0gKmFoYl9i
YXNlID0gY3FzcGktPmFoYl9iYXNlOwo+PiArCXUzMiB0cmlnZ2VyX2FkZHJlc3MgPSBjcXNwaS0+
dHJpZ2dlcl9hZGRyZXNzOwo+PiAgIAl1bnNpZ25lZCBpbnQgcmVtYWluaW5nID0gbl9yeDsKPj4g
ICAJdW5zaWduZWQgaW50IG1vZF9ieXRlcyA9IG5fcnggJSA0Owo+PiAgIAl1bnNpZ25lZCBpbnQg
Ynl0ZXNfdG9fcmVhZCA9IDA7Cj4+ICAgCXU4ICpyeGJ1Zl9lbmQgPSByeGJ1ZiArIG5fcng7Cj4+
ICAgCWludCByZXQgPSAwOwo+PiAgIAo+PiArCWlmICghZl9wZGF0YS0+dXNlX2RpcmVjdF9tb2Rl
KQo+PiArCQl3cml0ZWwodHJpZ2dlcl9hZGRyZXNzLCByZWdfYmFzZSArIENRU1BJX1JFR19JTkRJ
UkVDVFRSSUdHRVIpOwo+PiArCj4gQWdhaW4sIGFzIEkgcG9pbnRlZCBvdXQgcHJldmlvdXNseSwg
dGhpcyBzaG91bGQgbm90IGJlIG5lZWRlZC4KPiBjcXNwaV9jb250cm9sbGVyX2luaXQoKSBhbHJl
YWR5IGRvZXMgYWJvdmUgY29uZmlndXJhdGlvbiBhbmQgbm8gbmVlZCB0bwo+IHRvdWNoIHRoaXMg
cmVnaXN0ZXIgb24gZXZlcnkgcmVhZC4KQWdyZWVkISwgZHJvcCB0aGlzIG9uZS4KPj4gICAJd3Jp
dGVsKGZyb21fYWRkciwgcmVnX2Jhc2UgKyBDUVNQSV9SRUdfSU5ESVJFQ1RSRFNUQVJUQUREUik7
Cj4+ICAgCXdyaXRlbChyZW1haW5pbmcsIHJlZ19iYXNlICsgQ1FTUElfUkVHX0lORElSRUNUUkRC
WVRFUyk7Cj4+ICAgCj4+IEBAIC02MDksNiArNjEzLDE0IEBAIHN0YXRpYyBpbnQgY3FzcGlfd3Jp
dGVfc2V0dXAoc3RydWN0IHNwaV9ub3IgKm5vcikKPj4gICAJc3RydWN0IGNxc3BpX3N0ICpjcXNw
aSA9IGZfcGRhdGEtPmNxc3BpOwo+PiAgIAl2b2lkIF9faW9tZW0gKnJlZ19iYXNlID0gY3FzcGkt
PmlvYmFzZTsKPj4gICAKPj4gKwkvKiBEaXNhYmxlIHRoZSBETUEgYW5kIGRpcmVjdCBhY2Nlc3Mg
Y29udHJvbGxlciAqLwo+PiArCWlmICghZl9wZGF0YS0+dXNlX2RpcmVjdF9tb2RlKSB7Cj4+ICsJ
CXJlZyA9IHJlYWRsKHJlZ19iYXNlICsgQ1FTUElfUkVHX0NPTkZJRyk7Cj4+ICsJCXJlZyAmPSB+
Q1FTUElfUkVHX0NPTkZJR19FTkJfRElSX0FDQ19DVFJMOwo+PiArCQlyZWcgJj0gfkNRU1BJX1JF
R19DT05GSUdfRE1BX01BU0s7Cj4+ICsJCXdyaXRlbChyZWcsIHJlZ19iYXNlICsgQ1FTUElfUkVH
X0NPTkZJRyk7Cj4+ICsJfQo+PiArCj4gWW91IGRpZCBub3QgcmVzcG9uZCB0byBteSBwcmV2aW91
cyBjb21tZW50LiBXaHkgd291bGQgeW91IG5lZWQgdG8gY2xlYXIKPiBDUVNQSV9SRUdfQ09ORklH
X0RNQV9NQVNLIGZpZWxkLCBpZiByZXNldCBkZWZhdWx0IGlzIDAgYW55d2F5Pwp3aGlsZSB0ZXN0
aW5nIG9uIHRoZSByZWFsIHNldHVwIGl0IGlzIG5vdCB3b3JraW5nIGZvciBtZSwgZG91YmxlIGNv
bmZpcm0gCmFuZCBkcm9wIGl0Lgo+PiAgIAkvKiBTZXQgb3Bjb2RlLiAqLwo+PiAgIAlyZWcgPSBu
b3ItPnByb2dyYW1fb3Bjb2RlIDw8IENRU1BJX1JFR19XUl9JTlNUUl9PUENPREVfTFNCOwo+PiAg
IAl3cml0ZWwocmVnLCByZWdfYmFzZSArIENRU1BJX1JFR19XUl9JTlNUUik7Cj4+IEBAIC0xMTcx
LDcgKzExODMsOCBAQCBzdGF0aWMgaW50IGNxc3BpX29mX2dldF9wZGF0YShzdHJ1Y3QgcGxhdGZv
cm1fZGV2aWNlICpwZGV2KQo+PiAgIAkJcmV0dXJuIC1FTlhJTzsKPj4gICAJfQo+PiAgIAo+PiAt
CWNxc3BpLT5yY2xrX2VuID0gb2ZfcHJvcGVydHlfcmVhZF9ib29sKG5wLCAiY2RucyxyY2xrLWVu
Iik7Cj4+ICsJaWYgKCFvZl9kZXZpY2VfaXNfY29tcGF0aWJsZShucCwgImludGVsLGxnbS1xc3Bp
IikpCj4+ICsJCWNxc3BpLT5yY2xrX2VuID0gb2ZfcHJvcGVydHlfcmVhZF9ib29sKG5wLCAiY2Ru
cyxyY2xrLWVuIik7Cj4+ICAgCj4gSWYgeW91IGRvbid0IHdhbnQgdG8gdXNlIHRoaXMgcHJvcGVy
dHksIHRoZW4ganVzdCBkcm9wIGl0IGZyb20geW91ciBEVC4KPiBEb24ndCBvdmVycmlkZSBpdCBp
biB0aGUgZHJpdmVyIGJhc2VkIG9uIGNvbXBhdGlibGUuClN1cmUuCj4+ICAgCXJldHVybiAwOwo+
PiAgIH0KPj4gQEAgLTEzMDEsNyArMTMxNCw4IEBAIHN0YXRpYyBpbnQgY3FzcGlfc2V0dXBfZmxh
c2goc3RydWN0IGNxc3BpX3N0ICpjcXNwaSwgc3RydWN0IGRldmljZV9ub2RlICpucCkKPj4gICAJ
CWZfcGRhdGEtPnJlZ2lzdGVyZWQgPSB0cnVlOwo+PiAgIAo+PiAgIAkJaWYgKG10ZC0+c2l6ZSA8
PSBjcXNwaS0+YWhiX3NpemUpIHsKPj4gLQkJCWZfcGRhdGEtPnVzZV9kaXJlY3RfbW9kZSA9IHRy
dWU7Cj4+ICsJCQlmX3BkYXRhLT51c2VfZGlyZWN0X21vZGUgPQo+PiArCQkJCSEob2ZfZGV2aWNl
X2lzX2NvbXBhdGlibGUobnAsICJpbnRlbCxsZ20tcXNwaSIpKTsKPiBMb29rcyBsaWtlLCB5b3Ug
aGF2ZW4ndCBmb2xsb3dlZCBhbnkgb2YgbXkgYWR2aWNlLiBQbGVhc2UgYWRkIGEgcXVpcmsKPiBm
bGFnIHRvIGRpc2FibGUgREFDIG1vZGUuIFNvbWV0aGluZyBsaWtlOgoKU29ycnkswqAgb24gcmVh
bCBzZXR1cCBrZXJuZWwgZ290IGNyYXNoIGlmIHdlIGFkZCBxdWlya3MsIHNvIHRoYXQgaXMgdGhl
IApyZWFzb24gSSBzdGFydGVkIHVzaW5nIERUIGNvbXBhdGlibGUgdG8KCmF2b2lkIGNyYXNoaW5n
IGFuZCBhbHNvIGRvbid0IHdhbnQgZGlzdHVyYiB0aGUgZXhpc3RpbmcgZnVuY3Rpb25hbGl0aWVz
LgoKTGV0IG1lIGNoZWNrIG9uY2UgYWdhaW4uCgpUaGFuayB5b3Ugc28gbXVjaCBmb3IgeW91ciB2
YWx1YWJsZSBjb21tZW50cy4KCj4gI2RlZmluZSBDUVNQSV9ESVNBQkxFX0RBQ19NT0RFIEJJVCgx
KQo+Cj4gc3RhdGljIGNvbnN0IHN0cnVjdCBjcXNwaV9kcml2ZXJfcGxhdGRhdGEgaW50ZWxfbGdt
X3FzcGkgPSB7Cj4gICAgICAgICAgLmh3Y2Fwc19tYXNrID0gQ1FTUElfQkFTRV9IV0NBUFNfTUFT
SywKPiAgICAgICAgICAucXVpcmtzID0gQ1FTUElfRElTQUJMRV9EQUNfTU9ERSwKPiB9Owo+Cj4g
c3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgY3FzcGlfZHRfaWRzW10gPSB7Cj4KPiAJ
Li4uCj4KPiAgICAgICAgICB7Cj4gICAgICAgICAgICAgICAgICAuY29tcGF0aWJsZSA9ICJpbnRl
bCxsZ20tcXNwaSIsCj4gICAgICAgICAgICAgICAgICAuZGF0YSA9ICZpbnRlbF9sZ21fcXNwaSwK
PiAgICAgICAgICB9LAo+Cj4gCS4uLgo+IH07Cj4KPgo+IFRoZW4gaW4gY3FzcGlfc2V0dXBfZmxh
c2goKSwKPgo+IAlpZiAobXRkLT5zaXplIDw9IGNxc3BpLT5haGJfc2l6ZSAmJgo+IAkJIWRkYXRh
LT5xdWlya3MgJiBDUVNQSV9ESVNBQkxFX0RBQ19NT0RFKSB7Cj4gCQlmX3BkYXRhLT51c2VfZGly
ZWN0X21vZGUgPSB0cnVlOwo+IAkJLi4uCj4gCX0JCj4KPgo+PiAgIAkJCWRldl9kYmcobm9yLT5k
ZXYsICJ1c2luZyBkaXJlY3QgbW9kZSBmb3IgJXNcbiIsCj4+ICAgCQkJCW10ZC0+bmFtZSk7Cj4+
ICAgCj4+IEBAIC0xMzQ3LDcgKzEzNjEsNyBAQCBzdGF0aWMgaW50IGNxc3BpX3Byb2JlKHN0cnVj
dCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4+ICAgCX0KPj4gICAKPj4gICAJLyogT2J0YWluIFFT
UEkgY2xvY2suICovCj4+IC0JY3FzcGktPmNsayA9IGRldm1fY2xrX2dldChkZXYsIE5VTEwpOwo+
PiArCWNxc3BpLT5jbGsgPSBkZXZtX2Nsa19nZXQoZGV2LCAicXNwaSIpOwo+IFRoaXMgd2lsbCBi
cmVhayBEVCBiYWNrd2FyZCBjb21wYXRpYmlsaXR5LiBFeGlzdGluZyBEVHMgZG9uJ3QgaGF2ZQo+
IGNsb2NrLW5hbWVzID0gInFzcGkiLiBIZW5jZSwgdGhpcyBjb2RlIHdpbGwgZXJyb3Igb3V0Lgo+
IFdoYXQgSSBtZWFudCBpbiB0aGUgcHJldmlvdXMgbWFpbCB3YXM6IGlmIGRldmljZSBkb2VzIG5v
dCBoYXZlIG11bHRpcGxlCj4gY2xrIGlucHV0cyB0aGVuIHRoZXJlIGlzIG5vIG5lZWQgZm9yIGNs
b2NrLW5hbWVzIGFuZCB0aGVyZSBpcyBubyBuZWVkIHRvCj4gdG91Y2ggdGhpcyBwYXJ0IG9mIGNv
ZGUuCj4KPiAJY3FzcGktPmNsayA9IGRldm1fY2xrX2dldChkZXYsIE5VTEwpOwo+Cj4gVGhpcyBz
aG91bGQganVzdCB3b3JrIGZpbmUgZXZlbiBvbiB5b3VyIGJvYXJkLiBTbyBkcm9wIHRoaXMgaHVu
ay4KU3VyZSwgSSB3aWxsIGRyb3AgaXQuCj4+ICAgCWlmIChJU19FUlIoY3FzcGktPmNsaykpIHsK
Pj4gICAJCWRldl9lcnIoZGV2LCAiQ2Fubm90IGNsYWltIFFTUEkgY2xvY2suXG4iKTsKPj4gICAJ
CXJldHVybiBQVFJfRVJSKGNxc3BpLT5jbGspOwo+PiBAQCAtMTM2OSw2ICsxMzgzLDcgQEAgc3Rh
dGljIGludCBjcXNwaV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+PiAgIAkJ
cmV0dXJuIFBUUl9FUlIoY3FzcGktPmFoYl9iYXNlKTsKPj4gICAJfQo+PiAgIAljcXNwaS0+bW1h
cF9waHlzX2Jhc2UgPSAoZG1hX2FkZHJfdClyZXNfYWhiLT5zdGFydDsKPj4gKwljcXNwaS0+dHJp
Z2dlcl9hZGRyZXNzID0gcmVzX2FoYi0+c3RhcnQ7Cj4gTm9wZSwgdGhpcyBpcyBub3QgbmVlZGVk
LiBTZWU6Cj4gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjUuMy1yYzYvc291cmNl
L2RyaXZlcnMvbXRkL3NwaS1ub3IvY2FkZW5jZS1xdWFkc3BpLmMjTDExNjgKPgo+IFBvcHVsYXRl
IHRoZSB0cmlnZ2VyLWFkZHJlc3MgdXNpbmcgY2Rucyx0cmlnZ2VyLWFkZHJlc3MgcHJvcGVydHkg
aW4gRFQKCkFncmVlZCEswqAgZml4IGl0IGluIHRoZSBuZXh0IHZlcnNpb24uCgpCZXN0IFJlZ2Fy
ZHMKdmFkaXZlbAo+PiAgIAljcXNwaS0+YWhiX3NpemUgPSByZXNvdXJjZV9zaXplKHJlc19haGIp
Owo+PiAgIAo+PiAgIAlpbml0X2NvbXBsZXRpb24oJmNxc3BpLT50cmFuc2Zlcl9jb21wbGV0ZSk7
Cj4+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
