Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AAF91DE546
	for <lists+linux-mtd@lfdr.de>; Fri, 22 May 2020 13:22:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sFMAojCcn810yPYmnWcpfH4dDMk7kKlkr4XmzJQP4D0=; b=hBfzY3HBV73ixC
	VkVTCV4DP3pmhxSB88hd/x1YDtWOzSnnu/GIYbYbnJ1bXfYVV/N/ITTdhvn/oPQlh955QO9TC94mY
	Dq+i0HV9HobIvsLIkyqYxuQLGsQzvMZgv7/sz4Ro0ypTJ7zBkmIEvv24cm9lXiwBNacGTH9FMtU5T
	ZtRepEV4gjQHN50H23CO7qoqoNwD2ueRkh+9flahOH5sgiHJzR1+hmm37GjrLraE2OILAT7ruPYIo
	Ye25IuwE0ddJKA+gsArVkw9aIWfIDWy2/wfOGSzyar17T05tiyWQtsCRfdvf74zuky4E9S/lptB2U
	8iAZhf4Pi7tTfxS24DiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc5kx-00008Y-F2; Fri, 22 May 2020 11:22:27 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc5kp-00007y-2n
 for linux-mtd@lists.infradead.org; Fri, 22 May 2020 11:22:20 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id C9369200009;
 Fri, 22 May 2020 11:22:15 +0000 (UTC)
Date: Fri, 22 May 2020 13:22:11 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: =?UTF-8?B?w4FsdmFybyBGZXJuw6FuZGV6?= Rojas <noltari@gmail.com>
Subject: Re: [PATCH v3 5/5] nand: brcmnand: support v2.1-v2.2 controllers
Message-ID: <20200522132211.16c657aa@xps13>
In-Reply-To: <20200522072525.3919332-6-noltari@gmail.com>
References: <20200512073329.742893-1-noltari@gmail.com>
 <20200522072525.3919332-1-noltari@gmail.com>
 <20200522072525.3919332-6-noltari@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_042219_393583_3899CAA1 
X-CRM114-Status: GOOD (  16.20  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Cc: vigneshr@ti.com, kdasu.kdev@gmail.com, richard@nod.at,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-mtd@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com, computersforpeace@gmail.com,
 sumit.semwal@linaro.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgw4FsdmFybywKCsOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+
IHdyb3RlIG9uIEZyaSwgMjIgTWF5IDIwMjAKMDk6MjU6MjUgKzAyMDA6Cgo+IHYyLjE6IHRlc3Rl
ZCBvbiBOZXRnZWFyIERHTkQzNzAwdjEgKEJDTTYzNjgpCj4gdjIuMjogdGVzdGVkIG9uIE5ldGdl
YXIgREdORDM3MDB2MiAoQkNNNjM2MikKPiAKPiBTaWduZWQtb2ZmLWJ5OiDDgWx2YXJvIEZlcm7D
oW5kZXogUm9qYXMgPG5vbHRhcmlAZ21haWwuY29tPgo+IC0tLQo+ICB2MzogZml4IHBhZ2Ugc2l6
ZSBzaGlmdCBmb3IgdjIuMSBjb250cm9sbGVycy4KCllvdSBjaGFuZ2VkIHRoZSBzdWJqZWN0IHRp
dGxlIHRvbyB3aGljaCBpcyBub3QgYWNjdXJhdGUgYW55bW9yZSwgYW55CnJlYXNvbiB0byBkbyB0
aGF0PyBBbnl0aGluZyBlbHNlIGNoYW5nZWQgaW4gdGhpcyBzZXJpZXMgdGhhdCBJIGFtIG5vdAph
d2FyZSBvZj8KCj4gIHYyOiBzcGxpdCBwYWdlIHNpemVzIHJlbmFtZSBpbnRvIGEgZGlmZmVyZW50
IHBhdGNoLgo+ICAgICAgbmFtZSBhbGwgYmxvY2sgYW5kIHBhZ2Ugc2l6ZXMgdmVyc2lvbnMuCj4g
Cj4gIGRyaXZlcnMvbXRkL25hbmQvcmF3L2JyY21uYW5kL2JyY21uYW5kLmMgfCA4NSArKysrKysr
KysrKysrKysrKysrKystLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDc2IGluc2VydGlvbnMoKyksIDkg
ZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbXRkL25hbmQvcmF3L2JyY21u
YW5kL2JyY21uYW5kLmMgYi9kcml2ZXJzL210ZC9uYW5kL3Jhdy9icmNtbmFuZC9icmNtbmFuZC5j
Cj4gaW5kZXggZWY2MGRiYmVhYzJiLi4yYzhhNDY4YzJlMzggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9tdGQvbmFuZC9yYXcvYnJjbW5hbmQvYnJjbW5hbmQuYwo+ICsrKyBiL2RyaXZlcnMvbXRkL25h
bmQvcmF3L2JyY21uYW5kL2JyY21uYW5kLmMKPiBAQCAtMjY0LDYgKzI2NCw3IEBAIHN0cnVjdCBi
cmNtbmFuZF9jb250cm9sbGVyIHsKPiAgCWNvbnN0IHVuc2lnbmVkIGludAkqYmxvY2tfc2l6ZXM7
Cj4gIAl1bnNpZ25lZCBpbnQJCW1heF9wYWdlX3NpemU7Cj4gIAljb25zdCB1bnNpZ25lZCBpbnQJ
KnBhZ2Vfc2l6ZXM7Cj4gKwl1bnNpZ25lZCBpbnQJCXBhZ2Vfc2l6ZV9zaGlmdDsKPiAgCXVuc2ln
bmVkIGludAkJbWF4X29vYjsKPiAgCXUzMgkJCWZlYXR1cmVzOwo+ICAKPiBAQCAtMzM4LDYgKzMz
OSwzNiBAQCBlbnVtIGJyY21uYW5kX3JlZyB7Cj4gIAlCUkNNTkFORF9GQ19CQVNFLAo+ICB9Owo+
ICAKPiArLyogQlJDTU5BTkQgdjIuMS12Mi4yICovCj4gK3N0YXRpYyBjb25zdCB1MTYgYnJjbW5h
bmRfcmVnc192MjFbXSA9IHsKPiArCVtCUkNNTkFORF9DTURfU1RBUlRdCQk9ICAweDA0LAo+ICsJ
W0JSQ01OQU5EX0NNRF9FWFRfQUREUkVTU10JPSAgMHgwOCwKPiArCVtCUkNNTkFORF9DTURfQURE
UkVTU10JCT0gIDB4MGMsCj4gKwlbQlJDTU5BTkRfSU5URkNfU1RBVFVTXQkJPSAgMHg1YywKPiAr
CVtCUkNNTkFORF9DU19TRUxFQ1RdCQk9ICAweDE0LAo+ICsJW0JSQ01OQU5EX0NTX1hPUl0JCT0g
IDB4MTgsCj4gKwlbQlJDTU5BTkRfTExfT1BdCQk9ICAgICAwLAo+ICsJW0JSQ01OQU5EX0NTMF9C
QVNFXQkJPSAgMHg0MCwKPiArCVtCUkNNTkFORF9DUzFfQkFTRV0JCT0gICAgIDAsCj4gKwlbQlJD
TU5BTkRfQ09SUl9USFJFU0hPTERdCT0gICAgIDAsCj4gKwlbQlJDTU5BTkRfQ09SUl9USFJFU0hP
TERfRVhUXQk9ICAgICAwLAo+ICsJW0JSQ01OQU5EX1VOQ09SUl9DT1VOVF0JCT0gICAgIDAsCj4g
KwlbQlJDTU5BTkRfQ09SUl9DT1VOVF0JCT0gICAgIDAsCj4gKwlbQlJDTU5BTkRfQ09SUl9FWFRf
QUREUl0JPSAgMHg2MCwKPiArCVtCUkNNTkFORF9DT1JSX0FERFJdCQk9ICAweDY0LAo+ICsJW0JS
Q01OQU5EX1VOQ09SUl9FWFRfQUREUl0JPSAgMHg2OCwKPiArCVtCUkNNTkFORF9VTkNPUlJfQURE
Ul0JCT0gIDB4NmMsCj4gKwlbQlJDTU5BTkRfU0VNQVBIT1JFXQkJPSAgMHg1MCwKPiArCVtCUkNN
TkFORF9JRF0JCQk9ICAweDU0LAo+ICsJW0JSQ01OQU5EX0lEX0VYVF0JCT0gICAgIDAsCj4gKwlb
QlJDTU5BTkRfTExfUkRBVEFdCQk9ICAgICAwLAo+ICsJW0JSQ01OQU5EX09PQl9SRUFEX0JBU0Vd
CT0gIDB4MjAsCj4gKwlbQlJDTU5BTkRfT09CX1JFQURfMTBfQkFTRV0JPSAgICAgMCwKPiArCVtC
UkNNTkFORF9PT0JfV1JJVEVfQkFTRV0JPSAgMHgzMCwKPiArCVtCUkNNTkFORF9PT0JfV1JJVEVf
MTBfQkFTRV0JPSAgICAgMCwKPiArCVtCUkNNTkFORF9GQ19CQVNFXQkJPSAweDIwMCwKPiArfTsK
PiArCj4gIC8qIEJSQ01OQU5EIHYzLjMtdjQuMCAqLwo+ICBzdGF0aWMgY29uc3QgdTE2IGJyY21u
YW5kX3JlZ3NfdjMzW10gPSB7Cj4gIAlbQlJDTU5BTkRfQ01EX1NUQVJUXQkJPSAgMHgwNCwKPiBA
QCAtNTM2LDYgKzU2Nyw5IEBAIGVudW0gewo+ICAJQ0ZHX0JVU19XSURUSAkJCT0gQklUKENGR19C
VVNfV0lEVEhfU0hJRlQpLAo+ICAJQ0ZHX0RFVklDRV9TSVpFX1NISUZUCQk9IDI0LAo+ICAKPiAr
CS8qIE9ubHkgZm9yIHYyLjEgKi8KPiArCUNGR19QQUdFX1NJWkVfU0hJRlRfdjJfMQk9IDMwLAo+
ICsKPiAgCS8qIE9ubHkgZm9yIHByZS12Ny4xICh3aXRoIG5vIENGR19FWFQgcmVnaXN0ZXIpICov
Cj4gIAlDRkdfUEFHRV9TSVpFX1NISUZUCQk9IDIwLAo+ICAJQ0ZHX0JMS19TSVpFX1NISUZUCQk9
IDI4LAo+IEBAIC01NzEsMTIgKzYwNSwxNiBAQCBzdGF0aWMgaW50IGJyY21uYW5kX3JldmlzaW9u
X2luaXQoc3RydWN0IGJyY21uYW5kX2NvbnRyb2xsZXIgKmN0cmwpCj4gIHsKPiAgCXN0YXRpYyBj
b25zdCB1bnNpZ25lZCBpbnQgYmxvY2tfc2l6ZXNfdjZbXSA9IHsgOCwgMTYsIDEyOCwgMjU2LCA1
MTIsIDEwMjQsIDIwNDgsIDAgfTsKPiAgCXN0YXRpYyBjb25zdCB1bnNpZ25lZCBpbnQgYmxvY2tf
c2l6ZXNfdjRbXSA9IHsgMTYsIDEyOCwgOCwgNTEyLCAyNTYsIDEwMjQsIDIwNDgsIDAgfTsKPiAr
CXN0YXRpYyBjb25zdCB1bnNpZ25lZCBpbnQgYmxvY2tfc2l6ZXNfdjJfMltdID0geyAxNiwgMTI4
LCA4LCA1MTIsIDI1NiwgMCB9Owo+ICsJc3RhdGljIGNvbnN0IHVuc2lnbmVkIGludCBibG9ja19z
aXplc192Ml8xW10gPSB7IDE2LCAxMjgsIDgsIDUxMiwgMCB9Owo+ICAJc3RhdGljIGNvbnN0IHVu
c2lnbmVkIGludCBwYWdlX3NpemVzX3YzXzRbXSA9IHsgNTEyLCAyMDQ4LCA0MDk2LCA4MTkyLCAw
IH07Cj4gKwlzdGF0aWMgY29uc3QgdW5zaWduZWQgaW50IHBhZ2Vfc2l6ZXNfdjJfMltdID0geyA1
MTIsIDIwNDgsIDQwOTYsIDAgfTsKPiArCXN0YXRpYyBjb25zdCB1bnNpZ25lZCBpbnQgcGFnZV9z
aXplc192Ml8xW10gPSB7IDUxMiwgMjA0OCwgMCB9Owo+ICAKPiAgCWN0cmwtPm5hbmRfdmVyc2lv
biA9IG5hbmRfcmVhZHJlZyhjdHJsLCAwKSAmIDB4ZmZmZjsKPiAgCj4gLQkvKiBPbmx5IHN1cHBv
cnQgdjQuMCs/ICovCj4gLQlpZiAoY3RybC0+bmFuZF92ZXJzaW9uIDwgMHgwNDAwKSB7Cj4gKwkv
KiBPbmx5IHN1cHBvcnQgdjIuMSsgKi8KPiArCWlmIChjdHJsLT5uYW5kX3ZlcnNpb24gPCAweDAy
MDEpIHsKPiAgCQlkZXZfZXJyKGN0cmwtPmRldiwgInZlcnNpb24gJSN4IG5vdCBzdXBwb3J0ZWRc
biIsCj4gIAkJCWN0cmwtPm5hbmRfdmVyc2lvbik7Cj4gIAkJcmV0dXJuIC1FTk9ERVY7Cj4gQEAg
LTU5Myw2ICs2MzEsOCBAQCBzdGF0aWMgaW50IGJyY21uYW5kX3JldmlzaW9uX2luaXQoc3RydWN0
IGJyY21uYW5kX2NvbnRyb2xsZXIgKmN0cmwpCj4gIAkJY3RybC0+cmVnX29mZnNldHMgPSBicmNt
bmFuZF9yZWdzX3Y1MDsKPiAgCWVsc2UgaWYgKGN0cmwtPm5hbmRfdmVyc2lvbiA+PSAweDAzMDMp
Cj4gIAkJY3RybC0+cmVnX29mZnNldHMgPSBicmNtbmFuZF9yZWdzX3YzMzsKPiArCWVsc2UgaWYg
KGN0cmwtPm5hbmRfdmVyc2lvbiA+PSAweDAyMDEpCj4gKwkJY3RybC0+cmVnX29mZnNldHMgPSBi
cmNtbmFuZF9yZWdzX3YyMTsKPiAgCj4gIAkvKiBDaGlwLXNlbGVjdCBzdHJpZGUgKi8KPiAgCWlm
IChjdHJsLT5uYW5kX3ZlcnNpb24gPj0gMHgwNzAxKQo+IEBAIC02MTgsMTQgKzY1OCwzMiBAQCBz
dGF0aWMgaW50IGJyY21uYW5kX3JldmlzaW9uX2luaXQoc3RydWN0IGJyY21uYW5kX2NvbnRyb2xs
ZXIgKmN0cmwpCj4gIAkJY3RybC0+bWF4X3BhZ2Vfc2l6ZSA9IDE2ICogMTAyNDsKPiAgCQljdHJs
LT5tYXhfYmxvY2tfc2l6ZSA9IDIgKiAxMDI0ICogMTAyNDsKPiAgCX0gZWxzZSB7Cj4gLQkJY3Ry
bC0+cGFnZV9zaXplcyA9IHBhZ2Vfc2l6ZXNfdjNfNDsKPiArCQlpZiAoY3RybC0+bmFuZF92ZXJz
aW9uID49IDB4MDMwNCkKPiArCQkJY3RybC0+cGFnZV9zaXplcyA9IHBhZ2Vfc2l6ZXNfdjNfNDsK
PiArCQllbHNlIGlmIChjdHJsLT5uYW5kX3ZlcnNpb24gPj0gMHgwMjAyKQo+ICsJCQljdHJsLT5w
YWdlX3NpemVzID0gcGFnZV9zaXplc192Ml8yOwo+ICsJCWVsc2UKPiArCQkJY3RybC0+cGFnZV9z
aXplcyA9IHBhZ2Vfc2l6ZXNfdjJfMTsKPiArCj4gKwkJaWYgKGN0cmwtPm5hbmRfdmVyc2lvbiA+
PSAweDAyMDIpCj4gKwkJCWN0cmwtPnBhZ2Vfc2l6ZV9zaGlmdCA9IENGR19QQUdFX1NJWkVfU0hJ
RlQ7Cj4gKwkJZWxzZQo+ICsJCQljdHJsLT5wYWdlX3NpemVfc2hpZnQgPSBDRkdfUEFHRV9TSVpF
X1NISUZUX3YyXzE7Cj4gKwo+ICAJCWlmIChjdHJsLT5uYW5kX3ZlcnNpb24gPj0gMHgwNjAwKQo+
ICAJCQljdHJsLT5ibG9ja19zaXplcyA9IGJsb2NrX3NpemVzX3Y2Owo+IC0JCWVsc2UKPiArCQll
bHNlIGlmIChjdHJsLT5uYW5kX3ZlcnNpb24gPj0gMHgwNDAwKQo+ICAJCQljdHJsLT5ibG9ja19z
aXplcyA9IGJsb2NrX3NpemVzX3Y0Owo+ICsJCWVsc2UgaWYgKGN0cmwtPm5hbmRfdmVyc2lvbiA+
PSAweDAyMDIpCj4gKwkJCWN0cmwtPmJsb2NrX3NpemVzID0gYmxvY2tfc2l6ZXNfdjJfMjsKPiAr
CQllbHNlCj4gKwkJCWN0cmwtPmJsb2NrX3NpemVzID0gYmxvY2tfc2l6ZXNfdjJfMTsKPiAgCj4g
IAkJaWYgKGN0cmwtPm5hbmRfdmVyc2lvbiA8IDB4MDQwMCkgewo+IC0JCQljdHJsLT5tYXhfcGFn
ZV9zaXplID0gNDA5NjsKPiArCQkJaWYgKGN0cmwtPm5hbmRfdmVyc2lvbiA8IDB4MDIwMikKPiAr
CQkJCWN0cmwtPm1heF9wYWdlX3NpemUgPSAyMDQ4Owo+ICsJCQllbHNlCj4gKwkJCQljdHJsLT5t
YXhfcGFnZV9zaXplID0gNDA5NjsKPiAgCQkJY3RybC0+bWF4X2Jsb2NrX3NpemUgPSA1MTIgKiAx
MDI0Owo+ICAJCX0KPiAgCX0KPiBAQCAtODExLDYgKzg2OSw5IEBAIHN0YXRpYyB2b2lkIGJyY21u
YW5kX3dyX2NvcnJfdGhyZXNoKHN0cnVjdCBicmNtbmFuZF9ob3N0ICpob3N0LCB1OCB2YWwpCj4g
IAllbnVtIGJyY21uYW5kX3JlZyByZWcgPSBCUkNNTkFORF9DT1JSX1RIUkVTSE9MRDsKPiAgCWlu
dCBjcyA9IGhvc3QtPmNzOwo+ICAKPiArCWlmICghY3RybC0+cmVnX29mZnNldHNbcmVnXSkKPiAr
CQlyZXR1cm47Cj4gKwo+ICAJaWYgKGN0cmwtPm5hbmRfdmVyc2lvbiA9PSAweDA3MDIpCj4gIAkJ
Yml0cyA9IDc7Cj4gIAllbHNlIGlmIChjdHJsLT5uYW5kX3ZlcnNpb24gPj0gMHgwNjAwKQo+IEBA
IC04NjksOCArOTMwLDEwIEBAIHN0YXRpYyBpbmxpbmUgdTMyIGJyY21uYW5kX3NwYXJlX2FyZWFf
bWFzayhzdHJ1Y3QgYnJjbW5hbmRfY29udHJvbGxlciAqY3RybCkKPiAgCQlyZXR1cm4gR0VOTUFT
Syg3LCAwKTsKPiAgCWVsc2UgaWYgKGN0cmwtPm5hbmRfdmVyc2lvbiA+PSAweDA2MDApCj4gIAkJ
cmV0dXJuIEdFTk1BU0soNiwgMCk7Cj4gLQllbHNlCj4gKwllbHNlIGlmIChjdHJsLT5uYW5kX3Zl
cnNpb24gPj0gMHgwMzAzKQo+ICAJCXJldHVybiBHRU5NQVNLKDUsIDApOwo+ICsJZWxzZQo+ICsJ
CXJldHVybiBHRU5NQVNLKDQsIDApOwo+ICB9Cj4gIAo+ICAjZGVmaW5lIE5BTkRfQUNDX0NPTlRS
T0xfRUNDX1NISUZUCTE2Cj4gQEAgLTIzNzgsNyArMjQ0MSw3IEBAIHN0YXRpYyBpbnQgYnJjbW5h
bmRfc2V0X2NmZyhzdHJ1Y3QgYnJjbW5hbmRfaG9zdCAqaG9zdCwKPiAgCQkoISEoY2ZnLT5kZXZp
Y2Vfd2lkdGggPT0gMTYpIDw8IENGR19CVVNfV0lEVEhfU0hJRlQpIHwKPiAgCQkoZGV2aWNlX3Np
emUgPDwgQ0ZHX0RFVklDRV9TSVpFX1NISUZUKTsKPiAgCWlmIChjZmdfb2ZmcyA9PSBjZmdfZXh0
X29mZnMpIHsKPiAtCQl0bXAgfD0gKHBhZ2Vfc2l6ZSA8PCBDRkdfUEFHRV9TSVpFX1NISUZUKSB8
Cj4gKwkJdG1wIHw9IChwYWdlX3NpemUgPDwgY3RybC0+cGFnZV9zaXplX3NoaWZ0KSB8Cj4gIAkJ
ICAgICAgIChibG9ja19zaXplIDw8IENGR19CTEtfU0laRV9TSElGVCk7Cj4gIAkJbmFuZF93cml0
ZXJlZyhjdHJsLCBjZmdfb2ZmcywgdG1wKTsKPiAgCX0gZWxzZSB7Cj4gQEAgLTIzOTAsOSArMjQ1
MywxMSBAQCBzdGF0aWMgaW50IGJyY21uYW5kX3NldF9jZmcoc3RydWN0IGJyY21uYW5kX2hvc3Qg
Kmhvc3QsCj4gIAo+ICAJdG1wID0gbmFuZF9yZWFkcmVnKGN0cmwsIGFjY19jb250cm9sX29mZnMp
Owo+ICAJdG1wICY9IH5icmNtbmFuZF9lY2NfbGV2ZWxfbWFzayhjdHJsKTsKPiAtCXRtcCB8PSBj
ZmctPmVjY19sZXZlbCA8PCBOQU5EX0FDQ19DT05UUk9MX0VDQ19TSElGVDsKPiAgCXRtcCAmPSB+
YnJjbW5hbmRfc3BhcmVfYXJlYV9tYXNrKGN0cmwpOwo+IC0JdG1wIHw9IGNmZy0+c3BhcmVfYXJl
YV9zaXplOwo+ICsJaWYgKGN0cmwtPm5hbmRfdmVyc2lvbiA+PSAweDAzMDIpIHsKPiArCQl0bXAg
fD0gY2ZnLT5lY2NfbGV2ZWwgPDwgTkFORF9BQ0NfQ09OVFJPTF9FQ0NfU0hJRlQ7Cj4gKwkJdG1w
IHw9IGNmZy0+c3BhcmVfYXJlYV9zaXplOwo+ICsJfQo+ICAJbmFuZF93cml0ZXJlZyhjdHJsLCBh
Y2NfY29udHJvbF9vZmZzLCB0bXApOwo+ICAKPiAgCWJyY21uYW5kX3NldF9zZWN0b3Jfc2l6ZV8x
ayhob3N0LCBjZmctPnNlY3Rvcl9zaXplXzFrKTsKPiBAQCAtMjc2Niw2ICsyODMxLDggQEAgY29u
c3Qgc3RydWN0IGRldl9wbV9vcHMgYnJjbW5hbmRfcG1fb3BzID0gewo+ICBFWFBPUlRfU1lNQk9M
X0dQTChicmNtbmFuZF9wbV9vcHMpOwo+ICAKPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZp
Y2VfaWQgYnJjbW5hbmRfb2ZfbWF0Y2hbXSA9IHsKPiArCXsgLmNvbXBhdGlibGUgPSAiYnJjbSxi
cmNtbmFuZC12Mi4xIiB9LAo+ICsJeyAuY29tcGF0aWJsZSA9ICJicmNtLGJyY21uYW5kLXYyLjIi
IH0sCj4gIAl7IC5jb21wYXRpYmxlID0gImJyY20sYnJjbW5hbmQtdjQuMCIgfSwKPiAgCXsgLmNv
bXBhdGlibGUgPSAiYnJjbSxicmNtbmFuZC12NS4wIiB9LAo+ICAJeyAuY29tcGF0aWJsZSA9ICJi
cmNtLGJyY21uYW5kLXY2LjAiIH0sCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
