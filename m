Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E54D1360A8
	for <lists+linux-mtd@lfdr.de>; Thu,  9 Jan 2020 20:01:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mrfcRQB1K7kE6p6L2lWnEMVHJGDZPDK8m+t5V7KRQ+k=; b=MX6Ejh9arsRUK+
	OK/pMRn0ptIJar++PLVQtlo6b3J1mXvOJjhHfiuwzF0Zqi5zAsaJ378Gfzkly7PmK1DLnqAF682rv
	33b62W4M2vm8i7f9aF9neikDRifIhED5WX2/hUw2Q5mHCt6TfQ1LJYSba6K2f3q5mYQSiEU2GT04w
	9Kyg75FfS2ly1auSpZADSx/KXT/6zgC1bnXy25k1qZLihWQZOTZRLu3l6kSAMTbSJIiwFQgXVGORP
	LX+6j6oPvyzkkIdwPFtIpeWKhVpKcrei3ivbPK0hQ320YDCPz0j6MB3XfNw8lj0EAjxpm+FmsQkSR
	svSgz5/arFre/t2CNe/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipd3s-0001j4-Fs; Thu, 09 Jan 2020 19:01:40 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipd3k-0001hf-Am
 for linux-mtd@lists.infradead.org; Thu, 09 Jan 2020 19:01:34 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 9883D240003;
 Thu,  9 Jan 2020 19:01:28 +0000 (UTC)
Date: Thu, 9 Jan 2020 20:01:27 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Han Xu <han.xu@nxp.com>
Subject: Re: [PATCH] mtd: rawnand: gpmi: fix the suspend/resume issue
Message-ID: <20200109200127.0ace18cb@xps13>
In-Reply-To: <1578589556-683-1-git-send-email-han.xu@nxp.com>
References: <1578589556-683-1-git-send-email-han.xu@nxp.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_110132_647397_CE92985B 
X-CRM114-Status: GOOD (  17.23  )
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
Cc: vigneshr@ti.com, richard@nod.at, esben@geanix.com, sean@geanix.com,
 boris.brezillon@collabora.com, linux-mtd@lists.infradead.org,
 martin@geanix.com, s.hauer@pengutronix.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgRXNiZW4sIEhhbiwKCkhhbiBYdSA8aGFuLnh1QG54cC5jb20+IHdyb3RlIG9uIEZyaSwgMTAg
SmFuIDIwMjAgMDE6MDU6NTYgKzA4MDA6Cgo+IGZpeCBzZXZlcmFsIGlzc3VlcyB3aGVuIHN5c3Rl
bSBzdXNwZW5kL3Jlc3VtZSwKPiAKPiAtIGxldmVyYWdlIHRoZSBydW50aW1lIHBtIGZvciBzeXN0
ZW0gc3VzcGVuZC9yZXN1bWUKPiAtIGVuYWJsZSB0aGUgY2xvY2sgYmVmb3JlIHJlZ2lzdGVyIGFj
Y2Vzcwo+IC0gcmUtYXBwbHkgdGltaW5nIHNldHRpbmdzCj4gLSBzZXQgdGhlIHByb3BlciBwaW5j
dHJsIHN0YXRlCgpFc2JlbiBhcmUgeW91IGZpbmUgd2l0aCB0aGlzIHBhdGNoPwoKT3IgbWF5YmUg
SGFuIHlvdSBjb3VsZCB0YWtlIG92ZXIgRWJlbidzIHBhdGNoIGFuZCBleHRlbmQgaXQ/Cgo+IAo+
IFNpZ25lZC1vZmYtYnk6IEhhbiBYdSA8aGFuLnh1QG54cC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMv
bXRkL25hbmQvcmF3L2dwbWktbmFuZC9ncG1pLW5hbmQuYyB8IDU5ICsrKysrKysrKysrKysrKyst
LS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDQ0IGluc2VydGlvbnMoKyksIDE1IGRlbGV0aW9ucygt
KQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL210ZC9uYW5kL3Jhdy9ncG1pLW5hbmQvZ3BtaS1u
YW5kLmMgYi9kcml2ZXJzL210ZC9uYW5kL3Jhdy9ncG1pLW5hbmQvZ3BtaS1uYW5kLmMKPiBpbmRl
eCAzMzRmZTMxMzAyODUuLjM3NDM3ZDQ3YWI5YSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL210ZC9u
YW5kL3Jhdy9ncG1pLW5hbmQvZ3BtaS1uYW5kLmMKPiArKysgYi9kcml2ZXJzL210ZC9uYW5kL3Jh
dy9ncG1pLW5hbmQvZ3BtaS1uYW5kLmMKPiBAQCAtMTUsNiArMTUsNyBAQAo+ICAjaW5jbHVkZSA8
bGludXgvb2YuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L29mX2RldmljZS5oPgo+ICAjaW5jbHVkZSA8
bGludXgvcG1fcnVudGltZS5oPgo+ICsjaW5jbHVkZSA8bGludXgvcGluY3RybC9jb25zdW1lci5o
Pgo+ICAjaW5jbHVkZSA8bGludXgvZG1hL214cy1kbWEuaD4KPiAgI2luY2x1ZGUgImdwbWktbmFu
ZC5oIgo+ICAjaW5jbHVkZSAiZ3BtaS1yZWdzLmgiCj4gQEAgLTE0Niw3ICsxNDcsMTEgQEAgc3Rh
dGljIGludCBfX2dwbWlfZW5hYmxlX2NsayhzdHJ1Y3QgZ3BtaV9uYW5kX2RhdGEgKnRoaXMsIGJv
b2wgdikKPiAgc3RhdGljIGludCBncG1pX2luaXQoc3RydWN0IGdwbWlfbmFuZF9kYXRhICp0aGlz
KQo+ICB7Cj4gIAlzdHJ1Y3QgcmVzb3VyY2VzICpyID0gJnRoaXMtPnJlc291cmNlczsKPiAtCWlu
dCByZXQ7Cj4gKwlpbnQgcmV0ID0gMDsKPiArCj4gKwlyZXQgPSBwbV9ydW50aW1lX2dldF9zeW5j
KHRoaXMtPmRldik7Cj4gKwlpZiAocmV0IDwgMCkKPiArCQlyZXR1cm4gcmV0Owo+ICAKPiAgCXJl
dCA9IGdwbWlfcmVzZXRfYmxvY2soci0+Z3BtaV9yZWdzLCBmYWxzZSk7Cj4gIAlpZiAocmV0KQo+
IEBAIC0xNzksOCArMTg0LDEwIEBAIHN0YXRpYyBpbnQgZ3BtaV9pbml0KHN0cnVjdCBncG1pX25h
bmRfZGF0YSAqdGhpcykKPiAgCSAqLwo+ICAJd3JpdGVsKEJNX0dQTUlfQ1RSTDFfREVDT1VQTEVf
Q1MsIHItPmdwbWlfcmVncyArIEhXX0dQTUlfQ1RSTDFfU0VUKTsKPiAgCj4gLQlyZXR1cm4gMDsK
PiAgZXJyX291dDoKPiArCXBtX3J1bnRpbWVfbWFya19sYXN0X2J1c3kodGhpcy0+ZGV2KTsKPiAr
CXBtX3J1bnRpbWVfcHV0X2F1dG9zdXNwZW5kKHRoaXMtPmRldik7Cj4gKwo+ICAJcmV0dXJuIHJl
dDsKPiAgfQo+ICAKPiBAQCAtNTI4LDcgKzUzNSw3IEBAIHN0YXRpYyBpbnQgY29tbW9uX25mY19z
ZXRfZ2VvbWV0cnkoc3RydWN0IGdwbWlfbmFuZF9kYXRhICp0aGlzKQo+ICBzdGF0aWMgaW50IGJj
aF9zZXRfZ2VvbWV0cnkoc3RydWN0IGdwbWlfbmFuZF9kYXRhICp0aGlzKQo+ICB7Cj4gIAlzdHJ1
Y3QgcmVzb3VyY2VzICpyID0gJnRoaXMtPnJlc291cmNlczsKPiAtCWludCByZXQ7Cj4gKwlpbnQg
cmV0ID0gMDsKPiAgCj4gIAlyZXQgPSBjb21tb25fbmZjX3NldF9nZW9tZXRyeSh0aGlzKTsKPiAg
CWlmIChyZXQpCj4gQEAgLTU1MCw3ICs1NTcsNiBAQCBzdGF0aWMgaW50IGJjaF9zZXRfZ2VvbWV0
cnkoc3RydWN0IGdwbWlfbmFuZF9kYXRhICp0aGlzKQo+ICAJLyogU2V0ICphbGwqIGNoaXAgc2Vs
ZWN0cyB0byB1c2UgbGF5b3V0IDAuICovCj4gIAl3cml0ZWwoMCwgci0+YmNoX3JlZ3MgKyBIV19C
Q0hfTEFZT1VUU0VMRUNUKTsKPiAgCj4gLQlyZXQgPSAwOwo+ICBlcnJfb3V0Ogo+ICAJcG1fcnVu
dGltZV9tYXJrX2xhc3RfYnVzeSh0aGlzLT5kZXYpOwo+ICAJcG1fcnVudGltZV9wdXRfYXV0b3N1
c3BlbmQodGhpcy0+ZGV2KTsKPiBAQCAtMjY3Niw3ICsyNjgyLDcgQEAgc3RhdGljIGludCBncG1p
X25hbmRfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgCXJldHVybiAwOwo+
ICAKPiAgZXhpdF9uZmNfaW5pdDoKPiAtCXBtX3J1bnRpbWVfcHV0KCZwZGV2LT5kZXYpOwo+ICsJ
cG1fcnVudGltZV9kb250X3VzZV9hdXRvc3VzcGVuZCgmcGRldi0+ZGV2KTsKPiAgCXBtX3J1bnRp
bWVfZGlzYWJsZSgmcGRldi0+ZGV2KTsKPiAgCXJlbGVhc2VfcmVzb3VyY2VzKHRoaXMpOwo+ICBl
eGl0X2FjcXVpcmVfcmVzb3VyY2VzOgo+IEBAIC0yNjg4LDcgKzI2OTQsNiBAQCBzdGF0aWMgaW50
IGdwbWlfbmFuZF9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgewo+ICAJ
c3RydWN0IGdwbWlfbmFuZF9kYXRhICp0aGlzID0gcGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldik7
Cj4gIAo+IC0JcG1fcnVudGltZV9wdXRfc3luYygmcGRldi0+ZGV2KTsKPiAgCXBtX3J1bnRpbWVf
ZGlzYWJsZSgmcGRldi0+ZGV2KTsKPiAgCj4gIAluYW5kX3JlbGVhc2UoJnRoaXMtPm5hbmQpOwo+
IEBAIC0yNzAwLDEwICsyNzA1LDEyIEBAIHN0YXRpYyBpbnQgZ3BtaV9uYW5kX3JlbW92ZShzdHJ1
Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAjaWZkZWYgQ09ORklHX1BNX1NMRUVQCj4gIHN0
YXRpYyBpbnQgZ3BtaV9wbV9zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikKPiAgewo+IC0Jc3Ry
dWN0IGdwbWlfbmFuZF9kYXRhICp0aGlzID0gZGV2X2dldF9kcnZkYXRhKGRldik7Cj4gKwlpbnQg
cmV0Owo+ICAKPiAtCXJlbGVhc2VfZG1hX2NoYW5uZWxzKHRoaXMpOwo+IC0JcmV0dXJuIDA7Cj4g
KwlwaW5jdHJsX3BtX3NlbGVjdF9zbGVlcF9zdGF0ZShkZXYpOwo+ICsJcmV0ID0gcG1fcnVudGlt
ZV9mb3JjZV9zdXNwZW5kKGRldik7Cj4gKwo+ICsJcmV0dXJuIHJldDsKPiAgfQo+ICAKPiAgc3Rh
dGljIGludCBncG1pX3BtX3Jlc3VtZShzdHJ1Y3QgZGV2aWNlICpkZXYpCj4gQEAgLTI3MTEsOSAr
MjcxOCwxMyBAQCBzdGF0aWMgaW50IGdwbWlfcG1fcmVzdW1lKHN0cnVjdCBkZXZpY2UgKmRldikK
PiAgCXN0cnVjdCBncG1pX25hbmRfZGF0YSAqdGhpcyA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwo+
ICAJaW50IHJldDsKPiAgCj4gLQlyZXQgPSBhY3F1aXJlX2RtYV9jaGFubmVscyh0aGlzKTsKPiAt
CWlmIChyZXQgPCAwKQo+ICsJcmV0ID0gcG1fcnVudGltZV9mb3JjZV9yZXN1bWUoZGV2KTsKPiAr
CWlmIChyZXQpIHsKPiArCQlkZXZfZXJyKHRoaXMtPmRldiwgIkVycm9yIGluIHJlc3VtZSAlZFxu
IiwgcmV0KTsKPiAgCQlyZXR1cm4gcmV0Owo+ICsJfQo+ICsKPiArCXBpbmN0cmxfcG1fc2VsZWN0
X2RlZmF1bHRfc3RhdGUoZGV2KTsKPiAgCj4gIAkvKiByZS1pbml0IHRoZSBHUE1JIHJlZ2lzdGVy
cyAqLwo+ICAJcmV0ID0gZ3BtaV9pbml0KHRoaXMpOwo+IEBAIC0yNzI5LDIyICsyNzQwLDQwIEBA
IHN0YXRpYyBpbnQgZ3BtaV9wbV9yZXN1bWUoc3RydWN0IGRldmljZSAqZGV2KQo+ICAJCXJldHVy
biByZXQ7Cj4gIAl9Cj4gIAo+ICsJLyogcmUtYXBwbHkgdGhlIHRpbWluZyBzZXR0aW5nICovCj4g
Kwl0aGlzLT5ody5tdXN0X2FwcGx5X3RpbWluZ3MgPSB0cnVlOwo+ICsKPiAgCXJldHVybiAwOwo+
ICB9Cj4gICNlbmRpZiAvKiBDT05GSUdfUE1fU0xFRVAgKi8KPiAgCj4gLXN0YXRpYyBpbnQgX19t
YXliZV91bnVzZWQgZ3BtaV9ydW50aW1lX3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2KQo+ICsj
ZGVmaW5lIGdwbWlfZW5hYmxlX2Nsayh4KQlfX2dwbWlfZW5hYmxlX2Nsayh4LCB0cnVlKQo+ICsj
ZGVmaW5lIGdwbWlfZGlzYWJsZV9jbGsoeCkJX19ncG1pX2VuYWJsZV9jbGsoeCwgZmFsc2UpCj4g
Kwo+ICtzdGF0aWMgaW50IGdwbWlfcnVudGltZV9zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikK
PiAgewo+ICAJc3RydWN0IGdwbWlfbmFuZF9kYXRhICp0aGlzID0gZGV2X2dldF9kcnZkYXRhKGRl
dik7Cj4gIAo+IC0JcmV0dXJuIF9fZ3BtaV9lbmFibGVfY2xrKHRoaXMsIGZhbHNlKTsKPiArCWdw
bWlfZGlzYWJsZV9jbGsodGhpcyk7Cj4gKwlyZWxlYXNlX2RtYV9jaGFubmVscyh0aGlzKTsKPiAr
Cj4gKwlyZXR1cm4gMDsKPiAgfQo+ICAKPiAtc3RhdGljIGludCBfX21heWJlX3VudXNlZCBncG1p
X3J1bnRpbWVfcmVzdW1lKHN0cnVjdCBkZXZpY2UgKmRldikKPiArc3RhdGljIGludCBncG1pX3J1
bnRpbWVfcmVzdW1lKHN0cnVjdCBkZXZpY2UgKmRldikKPiAgewo+ICAJc3RydWN0IGdwbWlfbmFu
ZF9kYXRhICp0aGlzID0gZGV2X2dldF9kcnZkYXRhKGRldik7Cj4gKwlpbnQgcmV0Owo+ICAKPiAt
CXJldHVybiBfX2dwbWlfZW5hYmxlX2Nsayh0aGlzLCB0cnVlKTsKPiArCXJldCA9IGdwbWlfZW5h
YmxlX2Nsayh0aGlzKTsKPiArCWlmIChyZXQpCj4gKwkJcmV0dXJuIHJldDsKPiArCj4gKwlyZXQg
PSBhY3F1aXJlX2RtYV9jaGFubmVscyh0aGlzKTsKPiArCWlmIChyZXQgPCAwKQo+ICsJCXJldHVy
biByZXQ7Cj4gKwo+ICsJcmV0dXJuIDA7Cj4gIH0KPiAgCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
ZGV2X3BtX29wcyBncG1pX3BtX29wcyA9IHsKCgoKClRoYW5rcywKTWlxdcOobAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBk
aXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LW10ZC8K
