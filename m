Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D5281360EA
	for <lists+linux-mtd@lfdr.de>; Thu,  9 Jan 2020 20:17:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+nSK+i5FYG0c9CBKmOS4CbnHaamQqs7M3dKRtA/LtQ0=; b=fKeikj/drY+RxV
	RG+8aX/LPMFWdT9keG0UBIHLQlMdKWyjEtirB7z/S2VXG/7Kltr13qr7PFrZH59BiEsj9DpEanRXL
	A8bJR/8uY4ylA/kbb9SAGPELLFH0+0jzi9pWhlCTOi2BnrAQh03imhgh20DxT5vmEN4ZE8i+vdPhc
	1IIc+py4CK4spFDxRLE4/rgpV9iG4L6aX2RkhT2kvluuUGPVHBHEEodqNUzJeDbCVbNcxbksWxV/E
	JxVJb/omsTyJ0aKfkEnhZrWAPdtAQ+OJCiVRRJNYzWrR6V/+dXJUz+zWPLxCHVGLKAsPu2ilgtsLH
	EZyWXZeFYOlOeUXtw7EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipdJ7-0001w1-Dk; Thu, 09 Jan 2020 19:17:25 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipdIZ-0001cw-1R; Thu, 09 Jan 2020 19:16:52 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 6E53C240003;
 Thu,  9 Jan 2020 19:16:45 +0000 (UTC)
Date: Thu, 9 Jan 2020 20:16:44 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH 07/16] dt-bindings: atmel-nand: add microchip,sam9x60-pmecc
Message-ID: <20200109201644.34c6b936@xps13>
In-Reply-To: <1578488123-26127-8-git-send-email-claudiu.beznea@microchip.com>
References: <1578488123-26127-1-git-send-email-claudiu.beznea@microchip.com>
 <1578488123-26127-8-git-send-email-claudiu.beznea@microchip.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_111651_223349_6AD1BDFD 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, alexandre.belloni@bootlin.com, vigneshr@ti.com,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, pmeerw@pmeerw.net, lee.jones@linaro.org,
 linux-rtc@vger.kernel.org, lars@metafoo.de, richard@nod.at,
 ludovic.desroches@microchip.com, wg@grandegger.com,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 tudor.ambarus@microchip.com, radu_nicolae.pirea@upb.ro,
 linux-can@vger.kernel.org, broonie@kernel.org, mkl@pengutronix.de,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org, a.zummo@towertech.it,
 richard.genoud@gmail.com, netdev@vger.kernel.org, nicolas.ferre@microchip.com,
 linux-spi@vger.kernel.org, vkoul@kernel.org, robh+dt@kernel.org,
 knaack.h@gmx.de, dmaengine@vger.kernel.org, eugen.hristev@microchip.com,
 jic23@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgQ2xhdWRpdSwKCkNsYXVkaXUgQmV6bmVhIDxjbGF1ZGl1LmJlem5lYUBtaWNyb2NoaXAuY29t
PiB3cm90ZSBvbiBXZWQsIDggSmFuIDIwMjAKMTQ6NTU6MTQgKzAyMDA6Cgo+IEFkZCBtaWNyb2No
aXAsc2FtOXg2MC1wbWVjYyB0byBEVCBiaW5kaW5ncyBkb2N1bWVudGF0aW9uLgo+IAo+IFNpZ25l
ZC1vZmYtYnk6IENsYXVkaXUgQmV6bmVhIDxjbGF1ZGl1LmJlem5lYUBtaWNyb2NoaXAuY29tPgo+
IC0tLQo+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbXRkL2F0bWVsLW5hbmQu
dHh0IHwgMSArCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+IAo+IGRpZmYgLS1n
aXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbXRkL2F0bWVsLW5hbmQudHh0
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL210ZC9hdG1lbC1uYW5kLnR4dAo+
IGluZGV4IDY4YjUxZGM1ODgxNi4uM2FhMjk3Yzk3YWI2IDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tdGQvYXRtZWwtbmFuZC50eHQKPiArKysgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbXRkL2F0bWVsLW5hbmQudHh0Cj4gQEAgLTU3
LDYgKzU3LDcgQEAgUmVxdWlyZWQgcHJvcGVydGllczoKPiAgCSJhdG1lbCxhdDkxc2FtOWc0NS1w
bWVjYyIKPiAgCSJhdG1lbCxzYW1hNWQ0LXBtZWNjIgo+ICAJImF0bWVsLHNhbWE1ZDItcG1lY2Mi
Cj4gKwkibWljcm9jaGlwLHNhbTl4NjAtcG1lY2MiCj4gIC0gcmVnOiBzaG91bGQgY29udGFpbiAy
IHJlZ2lzdGVyIHJhbmdlcy4gVGhlIGZpcnN0IG9uZSBpcyBwb2ludGluZyB0byB0aGUgUE1FQ0MK
PiAgICAgICAgIGJsb2NrLCBhbmQgdGhlIHNlY29uZCBvbmUgdG8gdGhlIFBNRUNDX0VSUkxPQyBi
bG9jay4KPiAgCgpSZXZpZXdlZC1ieTogTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290
bGluLmNvbT4KClRoYW5rcywKTWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlz
dApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
