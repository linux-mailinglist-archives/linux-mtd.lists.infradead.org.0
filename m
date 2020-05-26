Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 872561BACE6
	for <lists+linux-mtd@lfdr.de>; Mon, 27 Apr 2020 20:36:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dOrYFUzsWrtnyaOkWI0xrF1AETQbYh4hzZoJcJtMknU=; b=VA+nsD+IYK6faT
	APE83W/HvVkN0u1tMtD65HZcPXJks97os+SOdCG50B/rJjSrwUO3m4DaC7eZElbHEnV0we98q8zxY
	j/LUswFFHib6wbvjn5boUsDv44fa44w7LnOsBrQF/O6GxgTVxx8CCNG4xTZaJU//NApLzctcJ1HDY
	YE1MnC7L3KYfQfSmDqrt8FDxjNsl8JsHR2S1/igXestRP9Wv4z+M3XcRcM2e2Cz57MdhdZU6DfweH
	O2FZ5nDKXQXCGcCnO9rBX65psvK36+zXeCiEShRAFBSBP5+LElNVdVyrpta7AcnvhXD5EPCyG6TEx
	a6ePIUL0FaD1KUD5Nzgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT8cV-0000kd-G4; Mon, 27 Apr 2020 18:36:43 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT8cC-0000eX-54
 for linux-mtd@lists.infradead.org; Mon, 27 Apr 2020 18:36:25 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 61BE620008;
 Mon, 27 Apr 2020 18:36:21 +0000 (UTC)
Date: Mon, 27 Apr 2020 20:36:19 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH 2/2] mtd: rawnand: atmel: Convert the driver to exec_op()
Message-ID: <20200427203619.0d41bdac@xps13>
In-Reply-To: <20200427202751.5deee49e@collabora.com>
References: <20200418194959.1017197-1-boris.brezillon@collabora.com>
 <20200418194959.1017197-2-boris.brezillon@collabora.com>
 <20200427171719.395b84a7@xps13>
 <20200427202751.5deee49e@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_113624_375922_265F8BD3 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Boris Brezillon <bbrezillon@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgQm9yaXMsCgpCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29t
PiB3cm90ZSBvbiBNb24sIDI3IEFwcgoyMDIwIDIwOjI3OjUxICswMjAwOgoKPiBPbiBNb24sIDI3
IEFwciAyMDIwIDE3OjE3OjE5ICswMjAwCj4gTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBi
b290bGluLmNvbT4gd3JvdGU6Cj4gCj4gPiA+ICsJTkFORF9PUF9QQVJTRVJfUEFUVEVSTihhdG1l
bF9oc21jX2V4ZWNfd2FpdHJkeSwKPiA+ID4gKwkJTkFORF9PUF9QQVJTRVJfUEFUX1dBSVRSRFlf
RUxFTShmYWxzZSkpLAo+ID4gPiArKTsKPiA+ID4gKwo+ID4gPiArc3RhdGljIGludCBhdG1lbF9o
c21jX25hbmRfZXhlY19vcChzdHJ1Y3QgYXRtZWxfbmFuZCAqbmFuZCwKPiA+ID4gKwkJCQkgICBj
b25zdCBzdHJ1Y3QgbmFuZF9vcGVyYXRpb24gKm9wLAo+ID4gPiArCQkJCSAgIGJvb2wgY2hlY2tf
b25seSkKPiA+ID4gK3sKPiA+ID4gKwlpbnQgcmV0Owo+ID4gPiArCj4gPiA+ICsJaWYgKGNoZWNr
X29ubHkpCj4gPiA+ICsJCXJldHVybiBuYW5kX29wX3BhcnNlcl9leGVjX29wKCZuYW5kLT5iYXNl
LAo+ID4gPiArCQkJCQkgICAgICAmYXRtZWxfaHNtY19vcF9wYXJzZXIsIG9wLCB0cnVlKTsKPiA+
ID4gKwo+ID4gPiArCWF0bWVsX2hzbWNfbmFuZF9zZWxlY3RfZGllKG5hbmQsIG9wLT5jcyk7Cj4g
PiA+ICsJcmV0ID0gbmFuZF9vcF9wYXJzZXJfZXhlY19vcCgmbmFuZC0+YmFzZSwgJmF0bWVsX2hz
bWNfb3BfcGFyc2VyLCBvcCwKPiA+ID4gKwkJCQkgICAgIGZhbHNlKTsKPiA+ID4gKwlhdG1lbF9o
c21jX25hbmRfdW5zZWxlY3RfZGllKG5hbmQpOwo+ID4gPiArCj4gPiA+ICsJcmV0dXJuIHJldDsK
PiA+ID4gIH0KPiA+ID4gICAgICAKPiA+IAo+ID4gV2l0aCB0aGUgYWJvdmUgZml4ZWQsIHBsZWFz
ZSBhZGQgbXkKPiA+IAo+ID4gUmV2aWV3ZWQtYnk6IE1pcXVlbCBSYXluYWwgPG1pcXVlbC5yYXlu
YWxAYm9vdGxpbi5jb20+ICAKPiAKPiBPbmUsIG1vcmUgdGhpbmcuIEknbGwgcHJvYmFibHkgc3Bs
aXQgdGhlIGNvbnZlcnNpb24gaW4gMiBzdGVwcyB0byBtYWtlCj4gdGhlIGRpZmZzdGF0IG1vcmUg
cmVhZGFibGUgKGFkZCBleGVjX29wKCkgKyBnZXQgcmlkIG9mIGxlZ2FjeSBpbXBsZW0pLgo+IFRo
YXQncyB3aGF0IEkgZGlkIGZvciB0aGUgYmNtNDd4eCBkcml2ZXIgYW5kIEkgZmluZCBpdCBlYXNp
ZXIgdG8KPiByZXZpZXcuIExldCBtZSBrbm93IGlmIHlvdSdkIHJhdGhlciBrZWVwIHRoaW5ncyBh
cyB0aGV5IGFyZSBub3cuCgoKQm90aCBhcmUgdG90YWxseSBmaW5lLCBpZiBpdCdzIG9rYXkgZm9y
IHlvdSB0byBzcGxpdCB0aGVuIHBsZWFzZSBkbyBpdAooQW5kIEkgdGhpbmsgeW91IGNhbiBhbHJl
YWR5IGFkZCBteSBSLWIgdG8gYm90aCkgOikKClRoYW5rcywKTWlxdcOobAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNj
dXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LW10ZC8K
