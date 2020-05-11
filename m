Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B69111CE12F
	for <lists+linux-mtd@lfdr.de>; Mon, 11 May 2020 19:04:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=woyzTc45stjVuL9dsiA0/0blZ/kYX8QC8+08NBNzwjg=; b=olDnCCIcQWKQYo
	dpGl+9c9veYyOSepzahiZYltFyXCMH2n9JYMYHTwyNQRt0nOCEXrzo9atOO1JOSBmR/+XP0H5OKsk
	Bovn8fUwoLYrXCmt6FgSGxGLOE6MOMIP0qR2dpVq/IuA8rDeB/pv04ecuhVN5h2cgQaJaEiAE7SW5
	lGkCwib6RVKUAjKW7eaM0JUQv6J3+PwY3Z323eDPYkU+Wrih21BkCHGPhiNRZDtx83nKfJAKbTmq3
	gnNulFthyXzFW8zJj5mkWIbXo/1O9hDf77hjUl+7jZC3vBz3NxPCEU/Cvtofq9IfqoO9esGxLK3U+
	qmPvNVjdcPMFxQxGjgzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYBqW-000371-T1; Mon, 11 May 2020 17:04:04 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYBpv-0002bU-Pw
 for linux-mtd@lists.infradead.org; Mon, 11 May 2020 17:03:29 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 55DAB240005;
 Mon, 11 May 2020 17:03:22 +0000 (UTC)
Date: Mon, 11 May 2020 19:03:21 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: =?UTF-8?B?w4FsdmFybyBGZXJuw6FuZGV6?= Rojas <noltari@gmail.com>
Subject: Re: [PATCH 1/3] nand: brcmnand: rename v4 registers
Message-ID: <20200511190321.1091bbf2@xps13>
In-Reply-To: <20200510151406.2527856-1-noltari@gmail.com>
References: <20200510151406.2527856-1-noltari@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_100327_983090_BF4DC3EE 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
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
IHdyb3RlIG9uIFN1biwgMTAgTWF5IDIwMjAKMTc6MTQ6MDQgKzAyMDA6Cgo+IFRoZXNlIHJlZ2lz
dGVycyBhcmUgYWxzbyB1c2VkIG9uIHYzLjMuCj4gCj4gU2lnbmVkLW9mZi1ieTogw4FsdmFybyBG
ZXJuw6FuZGV6IFJvamFzIDxub2x0YXJpQGdtYWlsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9tdGQv
bmFuZC9yYXcvYnJjbW5hbmQvYnJjbW5hbmQuYyB8IDggKysrKy0tLS0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9tdGQvbmFuZC9yYXcvYnJjbW5hbmQvYnJjbW5hbmQuYyBiL2RyaXZlcnMvbXRkL25hbmQv
cmF3L2JyY21uYW5kL2JyY21uYW5kLmMKPiBpbmRleCBlNGUzY2VlYWMzOGYuLjZhMDhkZDA3YjA1
OCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL210ZC9uYW5kL3Jhdy9icmNtbmFuZC9icmNtbmFuZC5j
Cj4gKysrIGIvZHJpdmVycy9tdGQvbmFuZC9yYXcvYnJjbW5hbmQvYnJjbW5hbmQuYwo+IEBAIC0z
MzgsOCArMzM4LDggQEAgZW51bSBicmNtbmFuZF9yZWcgewo+ICAJQlJDTU5BTkRfRkNfQkFTRSwK
PiAgfTsKPiAgCj4gLS8qIEJSQ01OQU5EIHY0LjAgKi8KPiAtc3RhdGljIGNvbnN0IHUxNiBicmNt
bmFuZF9yZWdzX3Y0MFtdID0gewo+ICsvKiBCUkNNTkFORCB2My4zLXY0LjAgKi8KPiArc3RhdGlj
IGNvbnN0IHUxNiBicmNtbmFuZF9yZWdzX3YzM1tdID0gewo+ICAJW0JSQ01OQU5EX0NNRF9TVEFS
VF0JCT0gIDB4MDQsCj4gIAlbQlJDTU5BTkRfQ01EX0VYVF9BRERSRVNTXQk9ICAweDA4LAo+ICAJ
W0JSQ01OQU5EX0NNRF9BRERSRVNTXQkJPSAgMHgwYywKPiBAQCAtNTkxLDggKzU5MSw4IEBAIHN0
YXRpYyBpbnQgYnJjbW5hbmRfcmV2aXNpb25faW5pdChzdHJ1Y3QgYnJjbW5hbmRfY29udHJvbGxl
ciAqY3RybCkKPiAgCQljdHJsLT5yZWdfb2Zmc2V0cyA9IGJyY21uYW5kX3JlZ3NfdjYwOwo+ICAJ
ZWxzZSBpZiAoY3RybC0+bmFuZF92ZXJzaW9uID49IDB4MDUwMCkKPiAgCQljdHJsLT5yZWdfb2Zm
c2V0cyA9IGJyY21uYW5kX3JlZ3NfdjUwOwo+IC0JZWxzZSBpZiAoY3RybC0+bmFuZF92ZXJzaW9u
ID49IDB4MDQwMCkKPiAtCQljdHJsLT5yZWdfb2Zmc2V0cyA9IGJyY21uYW5kX3JlZ3NfdjQwOwo+
ICsJZWxzZSBpZiAoY3RybC0+bmFuZF92ZXJzaW9uID49IDB4MDMwMykKPiArCQljdHJsLT5yZWdf
b2Zmc2V0cyA9IGJyY21uYW5kX3JlZ3NfdjMzOwo+ICAKPiAgCS8qIENoaXAtc2VsZWN0IHN0cmlk
ZSAqLwo+ICAJaWYgKGN0cmwtPm5hbmRfdmVyc2lvbiA+PSAweDA3MDEpCgpSZXZpZXdlZC1ieTog
TWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vz
c2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1tdGQvCg==
