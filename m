Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F9E21BB7DD
	for <lists+linux-mtd@lfdr.de>; Tue, 28 Apr 2020 09:41:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DRLrPVTpBXIoCFUKhiNdeiyAZMryt4LxMry05vsndFE=; b=E2MJSQPXAWHRS9
	LMYbguwXodsBWMpaI6FY0gdDiv3XBMo9qoEe1C/ld0kiFn6ZNxyPkZ8fDSQWPzRD5wQ6nhLfMzTBS
	nc2d/aS6fRBsf0moIsW8a5qhKp8Hdo55xcjWBVl9J0RA0LSvsl23NXJy8+h/mjyIz52VO9ocpRlR0
	+fvPeHhYa89wK6GReNm8RZmaKs079mdji6TGO8ILTaCZ34JUR5zMmu9Rar2DsYq2Oqed39tiOMBL5
	/JGaiG29+RvWZHUSY1AcYbyUnzqoh6DMK5FNcJM5N5ANMBrjjxPvoH8JB+8FOgV2afJz59cN/EjGZ
	vY/JRjJuOpOHzc5lZQbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTKrd-0007A4-KH; Tue, 28 Apr 2020 07:41:09 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTKrU-00078w-Cv
 for linux-mtd@lists.infradead.org; Tue, 28 Apr 2020 07:41:02 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 65549240008;
 Tue, 28 Apr 2020 07:40:50 +0000 (UTC)
Date: Tue, 28 Apr 2020 09:40:49 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: "Ramuthevar, Vadivel MuruganX"
 <vadivel.muruganx.ramuthevar@linux.intel.com>
Subject: Re: [PATCH v3 2/2] mtd: rawnand: Add NAND controller support on
 Intel LGM SoC
Message-ID: <20200428094049.3c0d4730@xps13>
In-Reply-To: <f72b5ae0-b0ac-61b8-8f64-c0e0f48afe02@linux.intel.com>
References: <20200423162113.38055-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200423162113.38055-3-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200424183612.4cfdbb6a@collabora.com>
 <20200427175127.0518c193@xps13>
 <cba30ccb-c190-d4d6-eab9-6083bd5d2aad@linux.intel.com>
 <20200428082759.25065146@collabora.com>
 <38334812-21b9-5b2c-db84-01c9eacc84d0@linux.intel.com>
 <20200428084704.5e04232a@collabora.com>
 <f72b5ae0-b0ac-61b8-8f64-c0e0f48afe02@linux.intel.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_004100_709917_2C9F4CBB 
X-CRM114-Status: GOOD (  18.50  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 masonccyang@mxic.com.tw, vigneshr@ti.com, arnd@arndb.de,
 hauke.mehrtens@intel.com, richard@nod.at, brendanhiggins@google.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-mips@vger.kernel.org,
 Boris Brezillon <boris.brezillon@collabora.com>, linux-mtd@lists.infradead.org,
 tglx@linutronix.de, qi-ming.wu@intel.com, andriy.shevchenko@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgVmFkaXZlbCBNdXJ1Z2FuWCwKCiJSYW11dGhldmFyLCBWYWRpdmVsIE11cnVnYW5YIgo8dmFk
aXZlbC5tdXJ1Z2FueC5yYW11dGhldmFyQGxpbnV4LmludGVsLmNvbT4gd3JvdGUgb24gVHVlLCAy
OCBBcHIgMjAyMAoxNDo1MDozNSArMDgwMDoKCj4gSGkgQm9yaXMsCj4gCj4gT24gMjgvNC8yMDIw
IDI6NDcgcG0sIEJvcmlzIEJyZXppbGxvbiB3cm90ZToKPiA+IE9uIFR1ZSwgMjggQXByIDIwMjAg
MTQ6NDA6NTggKzA4MDAKPiA+ICJSYW11dGhldmFyLCBWYWRpdmVsIE11cnVnYW5YIgo+ID4gPHZh
ZGl2ZWwubXVydWdhbngucmFtdXRoZXZhckBsaW51eC5pbnRlbC5jb20+IHdyb3RlOgo+ID4gICAK
PiA+PiBIaSBCb3JpcywKPiA+Pgo+ID4+IE9uIDI4LzQvMjAyMCAyOjI3IHBtLCBCb3JpcyBCcmV6
aWxsb24gd3JvdGU6ICAKPiA+Pj4gT24gVHVlLCAyOCBBcHIgMjAyMCAxNDoxNzozMCArMDgwMAo+
ID4+PiAiUmFtdXRoZXZhciwgVmFkaXZlbCBNdXJ1Z2FuWCIKPiA+Pj4gPHZhZGl2ZWwubXVydWdh
bngucmFtdXRoZXZhckBsaW51eC5pbnRlbC5jb20+IHdyb3RlOiAgCj4gPj4+ICAgID4+Pj4gSGkg
TWlxdWVsLCAgCj4gPj4+Pgo+ID4+Pj4gICAgICAgVGhhbmsgeW91IHZlcnkgbXVjaCBmb3IgdGhl
IHJldmlldyBjb21tZW50cyBhbmQgeW91ciB0aW1lLi4uCj4gPj4+Pgo+ID4+Pj4gT24gMjcvNC8y
MDIwIDExOjUxIHBtLCBNaXF1ZWwgUmF5bmFsIHdyb3RlOiAgCj4gPj4+Pj4gSGkgUmFtdXRoZXZh
ciwgIAo+ID4+Pj4+ICAgICAgID4+Pj4+Pj4gK3N0YXRpYyBpbnQgZWJ1X25hbmRfcHJvYmUoc3Ry
dWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikgIAo+ID4+Pj4+Pj4gK3sKPiA+Pj4+Pj4+ICsJc3Ry
dWN0IGRldmljZSAqZGV2ID0gJnBkZXYtPmRldjsKPiA+Pj4+Pj4+ICsJc3RydWN0IGVidV9uYW5k
X2NvbnRyb2xsZXIgKmVidV9ob3N0Owo+ID4+Pj4+Pj4gKwlzdHJ1Y3QgbmFuZF9jaGlwICpuYW5k
Owo+ID4+Pj4+Pj4gKwlwaHlzX2FkZHJfdCBuYW5kYWRkcl9wYTsKPiA+Pj4+Pj4+ICsJc3RydWN0
IG10ZF9pbmZvICptdGQ7Cj4gPj4+Pj4+PiArCXN0cnVjdCByZXNvdXJjZSAqcmVzOwo+ID4+Pj4+
Pj4gKwlpbnQgcmV0Owo+ID4+Pj4+Pj4gKwl1MzIgY3M7Cj4gPj4+Pj4+PiArCj4gPj4+Pj4+PiAr
CWVidV9ob3N0ID0gZGV2bV9remFsbG9jKGRldiwgc2l6ZW9mKCplYnVfaG9zdCksIEdGUF9LRVJO
RUwpOwo+ID4+Pj4+Pj4gKwlpZiAoIWVidV9ob3N0KQo+ID4+Pj4+Pj4gKwkJcmV0dXJuIC1FTk9N
RU07Cj4gPj4+Pj4+PiArCj4gPj4+Pj4+PiArCWVidV9ob3N0LT5kZXYgPSBkZXY7Cj4gPj4+Pj4+
PiArCW5hbmRfY29udHJvbGxlcl9pbml0KCZlYnVfaG9zdC0+Y29udHJvbGxlcik7Cj4gPj4+Pj4+
PiArCj4gPj4+Pj4+PiArCXJlcyA9IHBsYXRmb3JtX2dldF9yZXNvdXJjZV9ieW5hbWUocGRldiwg
SU9SRVNPVVJDRV9NRU0sICJlYnVuYW5kIik7Cj4gPj4+Pj4+PiArCWVidV9ob3N0LT5lYnVfYWRk
ciA9IGRldm1faW9yZW1hcF9yZXNvdXJjZSgmcGRldi0+ZGV2LCByZXMpOwo+ID4+Pj4+Pj4gKwlp
ZiAoSVNfRVJSKGVidV9ob3N0LT5lYnVfYWRkcikpCj4gPj4+Pj4+PiArCQlyZXR1cm4gUFRSX0VS
UihlYnVfaG9zdC0+ZWJ1X2FkZHIpOwo+ID4+Pj4+Pj4gKwo+ID4+Pj4+Pj4gKwlyZXMgPSBwbGF0
Zm9ybV9nZXRfcmVzb3VyY2VfYnluYW1lKHBkZXYsIElPUkVTT1VSQ0VfTUVNLCAiaHNuYW5kIik7
Cj4gPj4+Pj4+PiArCWVidV9ob3N0LT5uYW5kX2FkZHIgPSBkZXZtX2lvcmVtYXBfcmVzb3VyY2Uo
JnBkZXYtPmRldiwgcmVzKTsKPiA+Pj4+Pj4+ICsJaWYgKElTX0VSUihlYnVfaG9zdC0+bmFuZF9h
ZGRyKSkKPiA+Pj4+Pj4+ICsJCXJldHVybiBQVFJfRVJSKGVidV9ob3N0LT5uYW5kX2FkZHIpOwo+
ID4+Pj4+Pj4gKwo+ID4+Pj4+Pj4gKwlyZXQgPSBkZXZpY2VfcHJvcGVydHlfcmVhZF91MzIoZGV2
LCAibmFuZCxjcyIsICZjcyk7ICAKPiA+Pj4+Pj4KPiA+Pj4+Pj4gQ1MgaWRzIHNob3VsZCBiZSBl
bmNvZGVkIGluIHRoZSByZWcgcHJvcGVydHkgKHNlZSBbMV0pLiAgCj4gPj4+Pj4KPiA+Pj4+PiBJ
cyBpdCB5b3VyIGNob2ljZSB0byBvbmx5IHN1cHBvcnQgYSBzaW5nbGUgQ1Mgb3IgaXMgaXQgYWN0
dWFsbHkgYQo+ID4+Pj4+IGNvbnRyb2xsZXIgbGltaXRhdGlvbj8gIAo+ID4+Pj4KPiA+Pj4+IFll
cyAsIGl0cyBjb250cm9sbGVyIGxpbWl0YXRpb24gdG8gc3VwcG9ydCBvbmx5IG9uZSBDUyAgCj4g
Pj4+Cj4gPj4+IEknbSBwcmV0dHkgc3VyZSB0aGF0J3Mgbm90IHRydWUsIG90aGVyd2lzZSB5b3Ug
d291bGRuJ3QgaGF2ZSB0byBzZWxlY3QKPiA+Pj4gdGhlIENTIHlvdSB3YW50IHRvIHVzZSA6UC4g
IAo+ID4+Cj4gPj4gQXQgYSB0aW1lIGl0IHN1cHBvcnRzIG9ubHkgb25lIGNoaXAgc2VsZWN0LiAg
Cj4gPiAKPiA+IFllcywgbGlrZSA5OSUgb2YgdGhlIE5BTkQgY29udHJvbGxlcnMsIGJ1dCB0aGF0
IGRvZXNuJ3QgbWVhbiB5b3UgY2FuJ3QKPiA+IHN1cHBvcnQgbXVsdGktQ1MgY2hpcHMuIEFsbCB5
b3UgaGF2ZSB0byBkbyBpcyBhdHRhY2ggYW4gYXJyYXkgb2YKPiA+IGVidV9uYW5kX2NzIHRvIHlv
dXIgZWJ1X25hbmRfY2hpcCAoYXMgZG9uZSBpbiB0aGUgYXRtZWwgZHJpdmVyIEkKPiA+IHBvaW50
ZWQgdG8pLiBuYW5kX29wZXJhdGlvbi5jcyB0ZWxscyB5b3Ugd2hpY2ggQ1MgKGluZGV4IGluIHlv
dXIKPiA+IGVidV9uYW5kX2NzIGFycmF5KSBhIHNwZWNpZmljIG9wZXJhdGlvbiBpcyB0YXJnZXRp
bmcsIGFuZCB5b3UgY2FuIHBpY2sKPiA+IHRoZSByaWdodCBNTUlPIHJhbmdlL3JlZyB2YWx1ZSBi
YXNlZCBvbiB0aGF0LiAgCj4gCj4gQWdyZWVkLCBzdXJlIEkgd2lsbCBhZGQgdGhhdCBhbmQgdXBk
YXRlIG5leHQgc2VyaWVzIG9mIHBhdGNoZXMgLgoKVGhlcmUgYXJlIGFsc28gbWFueSBvdGhlciBw
bGFjZXMgd2hlcmUgeW91IGFzc3VtZSBibGluZGx5IHRoYXQgdGhlcmUKaXMgb25seSBvbmUgQ1Mu
IFlvdSBjYW4gY2hlY2sgdGhlIEF0bWVsIE5BTkQgY29udHJvbGxlciBkcml2ZXIgYXMgQm9yaXMK
c2FpZCBhbmQgd2Ugd2lsbCBwcm9iYWJseSBwcm9wb3NlIG1vcmUgbGl0dGxlIGNoYW5nZXMgdG8g
YmUgbW9yZQpnZW5lcmljLgoKVGhhbmtzLApNaXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFp
bGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtbXRkLwo=
