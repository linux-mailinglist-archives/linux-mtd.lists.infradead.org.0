Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 281B5129B6
	for <lists+linux-mtd@lfdr.de>; Fri,  3 May 2019 10:18:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uF6TluNk3xJ7KAfS4NMz2nFdBSpS1FjyvJ7UaJpRL7M=; b=arw1qiEUZ7ZsnT
	pN7dRUIzhmJ24C7od98KRDwWjJY0KDksfvbbU7gxxUrIk1cIPxlhTDOBjEA1whnOVcpUnUDd+Hs/1
	5qNwYlXjhrg9VdeWdGyHAyz+B5dKSWBH5Gzbn/CK6MvBWF8wZGxeRi+OwTKHavM9atD+1B5HCcZT4
	BXjn4JFLIFFnE1PK70Y2IsB/Z2AUAZCNGwp3JVCpYrz0yAyA5pQMxZViT8C1Xfmxmg4tGcJcKcMT9
	PcmWS/Nv7Ad3LEO8ZbEm3A6x8uoF3N42ksIOTAHu8H6YClvICU3R3xP60nXXi6le9JYoGigkxhFfs
	hThwGi5wYRPomR1inzQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMTP6-0000gD-4C; Fri, 03 May 2019 08:18:48 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMTOo-0000Zw-GX; Fri, 03 May 2019 08:18:32 +0000
Received: from xps13 (aaubervilliers-681-1-29-145.w90-88.abo.wanadoo.fr
 [90.88.149.145]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 02129100014;
 Fri,  3 May 2019 08:18:10 +0000 (UTC)
Date: Fri, 3 May 2019 10:18:10 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v2 11/36] mtd: Fix typo in mtd_ooblayout_set_databytes()
 description
Message-ID: <20190503101810.2bea0f9f@xps13>
In-Reply-To: <20190331133246.61645c15@collabora.com>
References: <20190304222841.13899-1-miquel.raynal@bootlin.com>
 <20190304222841.13899-12-miquel.raynal@bootlin.com>
 <20190331133246.61645c15@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_011831_199684_467BBD4A 
X-CRM114-Status: GOOD (  15.85  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: Mason Yang <masonccyang@mxic.com.tw>, Vignesh R <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>, Julien Su <juliensu@mxic.com.tw>,
 Richard Weinberger <richard@nod.at>, Boris Brezillon <bbrezillon@kernel.org>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 Paul Cercueil <paul@crapouillou.net>, Marek Vasut <marek.vasut@gmail.com>,
 linux-mtd@lists.infradead.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgQm9yaXMsCgpCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29t
PiB3cm90ZSBvbiBTdW4sIDMxIE1hcgoyMDE5IDEzOjMyOjQ2ICswMjAwOgoKPiBPbiBNb24sICA0
IE1hciAyMDE5IDIzOjI4OjE2ICswMTAwCj4gTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBi
b290bGluLmNvbT4gd3JvdGU6Cj4gCj4gPiBGaXggYSBwcm9iYWJsZSBjb3B5L3Bhc3RlIGVycm9y
OiB0aGUgZnVuY3Rpb24gd29ya3MgbGlrZQo+ID4gbXRkX29vYmxheW91dF9zZXRfYnl0ZXMoKSwg
bm90IHRoZSAqX2dldF9ieXRlcygpIGFsdGVybmF0ZS4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTog
TWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4KPiA+IC0tLQo+ID4gIGRy
aXZlcnMvbXRkL210ZGNvcmUuYyB8IDIgKy0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKyksIDEgZGVsZXRpb24oLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbXRkL210
ZGNvcmUuYyBiL2RyaXZlcnMvbXRkL210ZGNvcmUuYwo+ID4gaW5kZXggMjFlM2NkYzA0MDM2Li42
ZWQ0ODAxODE2M2MgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL210ZC9tdGRjb3JlLmMKPiA+ICsr
KyBiL2RyaXZlcnMvbXRkL210ZGNvcmUuYwo+ID4gQEAgLTE1OTIsNyArMTU5Miw3IEBAIEVYUE9S
VF9TWU1CT0xfR1BMKG10ZF9vb2JsYXlvdXRfZ2V0X2RhdGFieXRlcyk7Cj4gPiAgICogQHN0YXJ0
OiBmaXJzdCBFQ0MgYnl0ZSB0byBzZXQKPiA+ICAgKiBAbmJ5dGVzOiBudW1iZXIgb2YgRUNDIGJ5
dGVzIHRvIHNldCAgCj4gCj4gTG9va3MgbGlrZSB0aGUgcGFyYW1ldGVyIGRlc2NyaXB0aW9ucyBh
cmUgd3JvbmcgdG9vLgoKQXJlIHlvdSBzdXJlPyBJIGRvbid0IHNlZSB3aGVyZS4KCj4gCj4gPiAg
ICoKPiA+IC0gKiBXb3JrcyBsaWtlIG10ZF9vb2JsYXlvdXRfZ2V0X2J5dGVzKCksIGV4Y2VwdCBp
dCBhY3RzIG9uIGZyZWUgYnl0ZXMuCj4gPiArICogV29ya3MgbGlrZSBtdGRfb29ibGF5b3V0X3Nl
dF9ieXRlcygpLCBleGNlcHQgaXQgYWN0cyBvbiBmcmVlIGJ5dGVzLgo+ID4gICAqCj4gPiAgICog
UmV0dXJucyB6ZXJvIG9uIHN1Y2Nlc3MsIGEgbmVnYXRpdmUgZXJyb3IgY29kZSBvdGhlcndpc2Uu
Cj4gPiAgICovICAKPiAKClRoYW5rcywKTWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxp
bmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LW10ZC8K
