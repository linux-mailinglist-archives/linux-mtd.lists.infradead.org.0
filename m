Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6963ACDD12
	for <lists+linux-mtd@lfdr.de>; Mon,  7 Oct 2019 10:19:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RvRHJa176Yhhze3WxEd4B5o1Q5EKPPVgfsqxgAx9vfQ=; b=dOAhL49z66LKNX
	NmjLSPO/4OhmPFXapwKPOLGqrA5uspaMcO1wknlHZfeCuPfWXXbfGEZBeNCdEFah55VrnVdPo1JtZ
	qlrTICrr673Y82eTc5bDIf6eMEiUcclGq7XNvSr10FVdHVKQat75La3zxBs15tazoI2kuXePNtASn
	hI0xFoT1SlBdUXn8kRZ4wK1yzrL1xEFzUxSBZoby+ICEq3kh/NE99FUja6f64xzXybnZRIwFH9vrw
	J+5uepcS8nlObZ4HpjsY4rnwxLAT+ZdvoKRPJDd8Geduszv6SXQDlZs9jdPwO3MGcwermOXHaKW8n
	1f9SaofWfKZJ8pXn8LZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHOEk-0004B2-4v; Mon, 07 Oct 2019 08:19:22 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHOEP-0003vO-RE
 for linux-mtd@lists.infradead.org; Mon, 07 Oct 2019 08:19:06 +0000
Received: from xps13 (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 6BD9C100010;
 Mon,  7 Oct 2019 08:18:48 +0000 (UTC)
Date: Mon, 7 Oct 2019 10:18:47 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Mason Yang <masonccyang@mxic.com.tw>
Subject: Re: [PATCH v3] mtd: rawnand: Add support for Macronix NAND randomizer
Message-ID: <20191007101847.7fcfcfc7@xps13>
In-Reply-To: <1567676229-23414-1-git-send-email-masonccyang@mxic.com.tw>
References: <1567676229-23414-1-git-send-email-masonccyang@mxic.com.tw>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_011902_186546_309395A7 
X-CRM114-Status: GOOD (  20.40  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
Cc: vigneshr@ti.com, bbrezillon@kernel.org, juliensu@mxic.com.tw,
 richard@nod.at, linux-kernel@vger.kernel.org, frieder.schrempf@kontron.de,
 marek.vasut@gmail.com, linux-mtd@lists.infradead.org, tglx@linutronix.de,
 computersforpeace@gmail.com, dwmw2@infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgTWFzb24sCgpNYXNvbiBZYW5nIDxtYXNvbmNjeWFuZ0BteGljLmNvbS50dz4gd3JvdGUgb24g
VGh1LCAgNSBTZXAgMjAxOSAxNzozNzowOQorMDgwMDoKCj4gTWFjcm9uaXggTkFORHMgc3VwcG9y
dCByYW5kb21pemVyIG9wZXJhdGlvbiBmb3IgdXNlciBkYXRhIHNjcmFtYmxlZCwKPiB3aGljaCBj
YW4gYmUgZW5hYmxlZCB3aXRoIGEgU0VUX0ZFQVRVUkUuCj4gCj4gVXNlciBkYXRhIHdyaXR0ZW4g
dG8gdGhlIE5BTkQgZGV2aWNlIHdpdGhvdXQgcmFuZG9taXplciBpcyBzdGlsbCByZWFkYWJsZQo+
IGFmdGVyIHJhbmRvbWl6ZXIgZnVuY3Rpb24gZW5hYmxlZC4KPiBUaGUgcGVuYWx0eSBvZiByYW5k
b21pemVyIGFyZSBzdWJwYWdlIGFjY2Vzc2VzIHByb2hpYml0ZWQgYW5kIG1vcmUgdGltZQo+IHBl
cmlvZCBpcyBuZWVkZWQgaW4gcHJvZ3JhbSBvcGVyYXRpb24gYW5kIGVudGVyaW5nIGRlZXAgcG93
ZXItZG93biBtb2RlLgo+IGkuZS4sIHRQUk9HIDMwMHVzIHRvIDM0MHVzKHJhbmRvbWl6ZXIgZW5h
YmxlZCkKPiAKPiBGb3IgbW9yZSBoaWdoLXJlbGlhYmlsaXR5IGNvbmNlcm4sIGlmIHN1YnBhZ2Ug
d3JpdGUgbm90IGF2YWlsYWJsZSB3aXRoCj4gaGFyZHdhcmUgRUNDIGFuZCB0aGVuIHRvIGVuYWJs
ZSByYW5kb21pemVyIGlzIHJlY29tbWVuZGVkIGJ5IGRlZmF1bHQuCj4gRHJpdmVyIGNoZWNrcyBi
eXRlIDE2NyBvZiBWZW5kb3IgQmxvY2tzIGluIE9ORkkgcGFyYW1ldGVyIHBhZ2UgdGFibGUKPiB0
byBzZWUgaWYgdGhpcyBoaWdoLXJlbGlhYmlsaXR5IGZ1bmN0aW9uIGlzIHN1cHBvcnRlZC4gQnkg
YWRkaW5nIGEgbmV3Cj4gc3BlY2lmaWMgRFQgcHJvcGVydHkgaW4gY2hpbGRyZW4gbm9kZXMgdG8g
ZW5hYmxlIHJhbmRvbWl6ZXIgZnVuY3Rpb24uCj4gaS5lLiwKPiAKPiAJbmFuZDogbmFuZC1jb250
cm9sbGVyQHVuaXQtYWRkcmVzcyB7Cj4gCj4gCQluYW5kQDAgewo+IAkJCXJlZyA9IDwwPjsKPiAJ
CQlteGljLGVuYWJsZS1yYW5kb21pemVyLW90cDsKPiAJCX07Cj4gCX07Cj4gCj4gLS0KPiBjaGFu
Z2Vsb2cKPiB2MzoKPiBUbyBlbmFibGUgcmFuZG9taXplciBieSBzcGVjaWZpYyBEVCBwcm9wZXJ0
eSBpbiBjaGlsZHJlbiBub2RlcywKPiBteGljLGVuYWJsZS1yYW5kb21pemVyLW90cDsKPiAKPiB2
MjoKPiBUbyBlbmFibGUgcmFuZG9taXplciBieSBjaGVja2luZyBjaGlwIG9wdGlvbnMgTkFORF9O
T19TVUJQQUdFX1dSSVRFCj4gCj4gdjE6Cj4gVG8gZW5hYmxlIHJhbmRvbWl6ZXIgYnkgc3lzLWZz
Cj4gCj4gU2lnbmVkLW9mZi1ieTogTWFzb24gWWFuZyA8bWFzb25jY3lhbmdAbXhpYy5jb20udHc+
Cj4gLS0tCj4gIGRyaXZlcnMvbXRkL25hbmQvcmF3L25hbmRfbWFjcm9uaXguYyB8IDY0ICsrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwoKQXMgbG9uZyBhcyB5b3UgbW9kaWZ5IGJp
bmRpbmdzLCB5b3Ugc2hvdWxkIHdyaXRlIGEgc2VwYXJhdGUgcGF0Y2ggdG8KdXBkYXRlIHRoZSBk
b2N1bWVudGF0aW9uIGFuZCBnZXQgaXQgYWNrZWQgYnkgUm9iIEhlcnJpbmcuCgo+ICAxIGZpbGUg
Y2hhbmdlZCwgNjQgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL210ZC9u
YW5kL3Jhdy9uYW5kX21hY3Jvbml4LmMgYi9kcml2ZXJzL210ZC9uYW5kL3Jhdy9uYW5kX21hY3Jv
bml4LmMKPiBpbmRleCA1ODUxMWFlLi5kNWRmMDlhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbXRk
L25hbmQvcmF3L25hbmRfbWFjcm9uaXguYwo+ICsrKyBiL2RyaXZlcnMvbXRkL25hbmQvcmF3L25h
bmRfbWFjcm9uaXguYwo+IEBAIC0xMSw2ICsxMSwxMyBAQAo+ICAjZGVmaW5lIE1BQ1JPTklYX1JF
QURfUkVUUllfQklUIEJJVCgwKQo+ICAjZGVmaW5lIE1BQ1JPTklYX05VTV9SRUFEX1JFVFJZX01P
REVTIDYKPiAgCj4gKyNkZWZpbmUgTUFDUk9OSVhfUkFORE9NSVpFUl9CSVQgQklUKDEpCj4gKyNk
ZWZpbmUgT05GSV9GRUFUVVJFX0FERFJfTVhJQ19SQU5ET01JWkVSIDB4QjAKPiArI2RlZmluZSBN
QUNST05JWF9SQU5ET01JWkVSX0VOUEdNIEJJVCgwKQo+ICsjZGVmaW5lIE1BQ1JPTklYX1JBTkRP
TUlaRVJfUkFOREVOIEJJVCgxKQo+ICsjZGVmaW5lIE1BQ1JPTklYX1JBTkRPTUlaRVJfUkFORE9Q
VCBCSVQoMikKPiArI2RlZmluZSBNQUNST05JWF9SQU5ET01JWkVSX01PREVfRVhJVCB+TUFDUk9O
SVhfUkFORE9NSVpFUl9FTlBHTQoKSSB3b3VsZCByYXRoZXIgcHJlZmVyIGEgCgojZGVmaW5lIC4u
LlJBTkRPTUlTRVJfTU9ERV9FTlRFUiAoRU5HUE0gfCBSQU5ERU4gfCBSQU5ET1BUKQojZGVmaW5l
IC4uLlJBTkRPTUlTRVJfTU9ERV9FWElUIChSQU5ERU4gfCBSQU5ET1BUKQoKPiArCj4gIHN0cnVj
dCBuYW5kX29uZmlfdmVuZG9yX21hY3Jvbml4IHsKPiAgCXU4IHJlc2VydmVkOwo+ICAJdTggcmVs
aWFiaWxpdHlfZnVuYzsKPiBAQCAtMjksMTUgKzM2LDcyIEBAIHN0YXRpYyBpbnQgbWFjcm9uaXhf
bmFuZF9zZXR1cF9yZWFkX3JldHJ5KHN0cnVjdCBuYW5kX2NoaXAgKmNoaXAsIGludCBtb2RlKQo+
ICAJcmV0dXJuIG5hbmRfc2V0X2ZlYXR1cmVzKGNoaXAsIE9ORklfRkVBVFVSRV9BRERSX1JFQURf
UkVUUlksIGZlYXR1cmUpOwo+ICB9Cj4gIAo+ICtzdGF0aWMgdm9pZCBtYWNyb25peF9uYW5kX3Jh
bmRvbWl6ZXJfY2hlY2tfZW5hYmxlKHN0cnVjdCBuYW5kX2NoaXAgKmNoaXApCgpZb3Ugc2hvdWxk
IHJldHVybiBzb21ldGhpbmcgYW5kIGNoZWNrIGl0IGZyb20gdGhlIGNhbGxpbmcgZnVuY3Rpb24u
Cgo+ICt7Cj4gKwl1OCBmZWF0dXJlW09ORklfU1VCRkVBVFVSRV9QQVJBTV9MRU5dOwo+ICsJaW50
IHJldDsKPiArCj4gKwlyZXQgPSBuYW5kX2dldF9mZWF0dXJlcyhjaGlwLCBPTkZJX0ZFQVRVUkVf
QUREUl9NWElDX1JBTkRPTUlaRVIsCj4gKwkJCQlmZWF0dXJlKTsKPiArCWlmIChmZWF0dXJlWzBd
KSB7Cj4gKwkJcHJfaW5mbygiTWFjcm9uaXggTkFORCByYW5kb21pemVyIGVuYWJsZWQ6MHgleFxu
IiwgZmVhdHVyZVswXSk7Cj4gKwkJcmV0dXJuOwo+ICsJfQo+ICsKPiArCWZlYXR1cmVbMF0gPSBN
QUNST05JWF9SQU5ET01JWkVSX0VOUEdNIHwgTUFDUk9OSVhfUkFORE9NSVpFUl9SQU5ERU4gfAo+
ICsJCSAgICAgTUFDUk9OSVhfUkFORE9NSVpFUl9SQU5ET1BUOwo+ICsJcmV0ID0gbmFuZF9zZXRf
ZmVhdHVyZXMoY2hpcCwgT05GSV9GRUFUVVJFX0FERFJfTVhJQ19SQU5ET01JWkVSLAo+ICsJCQkJ
ZmVhdHVyZSk7Cj4gKwlpZiAocmV0KQo+ICsJCWdvdG8gZXJyOwo+ICsKPiArCWZlYXR1cmVbMF0g
PSAweDA7Cj4gKwlyZXQgPSBuYW5kX3Byb2dfcGFnZV9vcChjaGlwLCAwLCAwLCBmZWF0dXJlLCAx
KTsKCldoYXQgaXMgdGhpcz8gQSBjb21tZW50IGlzIG5lZWRlZC4KCj4gKwlpZiAocmV0KQo+ICsJ
CWdvdG8gZXJyOwo+ICsKPiArCXJldCA9IG5hbmRfZ2V0X2ZlYXR1cmVzKGNoaXAsIE9ORklfRkVB
VFVSRV9BRERSX01YSUNfUkFORE9NSVpFUiwKPiArCQkJCWZlYXR1cmUpOwo+ICsJaWYgKHJldCkK
PiArCQlnb3RvIGVycjsKPiArCj4gKwlmZWF0dXJlWzBdICY9IE1BQ1JPTklYX1JBTkRPTUlaRVJf
TU9ERV9FWElUOwo+ICsJcmV0ID0gbmFuZF9zZXRfZmVhdHVyZXMoY2hpcCwgT05GSV9GRUFUVVJF
X0FERFJfTVhJQ19SQU5ET01JWkVSLAo+ICsJCQkJZmVhdHVyZSk7Cj4gKwlpZiAocmV0KQo+ICsJ
CWdvdG8gZXJyOwo+ICsKPiArCXByX2luZm8oIk1hY3Jvbml4IE5BTkQgcmFuZG9taXplciBlbmFi
bGUgb2tcbiIpOwoKVGhlIHByX2luZm8gIm9rIiBjb3VsZCBiZSBkcm9wcGVkLCB0aGUgImZhaWxl
ZCIgb25lIHdvdWxkIGdvIGluCm5hbmRfb25maV9pbml0KCkgYWZ0ZXIgYSBjaGVjayBvbiB0aGUg
cmV0dXJuIGNvZGUuCgpUaGVuLCBubyBtb3JlIGdvdG8ncy4KCj4gKwlyZXR1cm47Cj4gK2VycjoK
PiArCXByX2VycigiTWFjcm9uaXggTkFORCByYW5kb21pemVyIGVuYWJsZSBmYWlsZWRcbiIpOwo+
ICt9Cj4gKwo+ICBzdGF0aWMgdm9pZCBtYWNyb25peF9uYW5kX29uZmlfaW5pdChzdHJ1Y3QgbmFu
ZF9jaGlwICpjaGlwKQo+ICB7Cj4gIAlzdHJ1Y3QgbmFuZF9wYXJhbWV0ZXJzICpwID0gJmNoaXAt
PnBhcmFtZXRlcnM7Cj4gIAlzdHJ1Y3QgbmFuZF9vbmZpX3ZlbmRvcl9tYWNyb25peCAqbXhpYzsK
PiArCXN0cnVjdCBkZXZpY2Vfbm9kZSAqZG4gPSBuYW5kX2dldF9mbGFzaF9ub2RlKGNoaXApOwo+
ICsJaW50IHJhbmRfb3RwID0gMDsKPiAgCj4gIAlpZiAoIXAtPm9uZmkpCj4gIAkJcmV0dXJuOwo+
ICAKPiArCWlmIChvZl9maW5kX3Byb3BlcnR5KGRuLCAibXhpYyxlbmFibGUtcmFuZG9taXplci1v
dHAiLCBOVUxMKSkKPiArCQlyYW5kX290cCA9IDE7Cj4gKwo+ICAJbXhpYyA9IChzdHJ1Y3QgbmFu
ZF9vbmZpX3ZlbmRvcl9tYWNyb25peCAqKXAtPm9uZmktPnZlbmRvcjsKPiArCWlmIChyYW5kX290
cCAmJiBjaGlwLT5vcHRpb25zICYgTkFORF9OT19TVUJQQUdFX1dSSVRFICYmCj4gKwkgICAgbXhp
Yy0+cmVsaWFiaWxpdHlfZnVuYyAmIE1BQ1JPTklYX1JBTkRPTUlaRVJfQklUKSB7Cj4gKwkJaWYg
KHAtPnN1cHBvcnRzX3NldF9nZXRfZmVhdHVyZXMpIHsKPiArCQkJYml0bWFwX3NldChwLT5zZXRf
ZmVhdHVyZV9saXN0LAo+ICsJCQkJICAgT05GSV9GRUFUVVJFX0FERFJfTVhJQ19SQU5ET01JWkVS
LCAxKTsKPiArCQkJYml0bWFwX3NldChwLT5nZXRfZmVhdHVyZV9saXN0LAo+ICsJCQkJICAgT05G
SV9GRUFUVVJFX0FERFJfTVhJQ19SQU5ET01JWkVSLCAxKTsKPiArCQkJbWFjcm9uaXhfbmFuZF9y
YW5kb21pemVyX2NoZWNrX2VuYWJsZShjaGlwKTsKPiArCQl9Cj4gKwl9Cj4gKwo+ICAJaWYgKCht
eGljLT5yZWxpYWJpbGl0eV9mdW5jICYgTUFDUk9OSVhfUkVBRF9SRVRSWV9CSVQpID09IDApCj4g
IAkJcmV0dXJuOwo+ICAKClRoYW5rcywKTWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxp
bmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LW10ZC8K
