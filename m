Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B119136100
	for <lists+linux-mtd@lfdr.de>; Thu,  9 Jan 2020 20:22:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y9HvAznxSzMp70UgzyRk7LNpUdPX80XBfnvN/ustwIc=; b=lVJqzYz+ApQBuE
	sd8Osqj39tq5r6ceUJS+dWBatagp9B+9Jp7JOf9+Gt8Zi6S+uaujL+BC69JSIHp4dT8+L6pUIlFaX
	VcK1xgsvWzC0egfH1t2dfBeVdES9n5lZZbvwi9lg8quOwIzNv3XCh6+KWHZvaAFLAiMetH4xL0iTU
	v8VW8yo6suVKnZdaFOanTHhbztlRE1MYm/kzOpCHWKDZPpM03lrFL5pqwSpjQ9Hs6XxyW+1MXnTXI
	QyP0EeRyihyYb7xmZiM1VjNkW4M4GPMy025lfxUK6Kh/bMyS5J3wf4tZTNvY0UfEmTgW/bi/KdYJ5
	fHWUvKyLWwOveuG+u0wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipdO7-00058V-KB; Thu, 09 Jan 2020 19:22:35 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipdNz-00057Z-0C
 for linux-mtd@lists.infradead.org; Thu, 09 Jan 2020 19:22:28 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id EE0CA200002;
 Thu,  9 Jan 2020 19:22:23 +0000 (UTC)
Date: Thu, 9 Jan 2020 20:22:22 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH 4/8] mtd: Add support for emulated SLC mode on MLC NANDs
Message-ID: <20200109202222.75dc95af@xps13>
In-Reply-To: <20200109201935.3e02b05e@collabora.com>
References: <20191230165129.11925-1-miquel.raynal@bootlin.com>
 <20191230165129.11925-5-miquel.raynal@bootlin.com>
 <1518112485.16967.1578527342428.JavaMail.zimbra@nod.at>
 <20200109191612.77d987d3@xps13>
 <1885178044.17826.1578595182604.JavaMail.zimbra@nod.at>
 <20200109201935.3e02b05e@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_112227_180045_137E7414 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>,
 Boris Brezillon <boris.brezillon@bootlin.com>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgQm9yaXMsCgpCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29t
PiB3cm90ZSBvbiBUaHUsIDkgSmFuCjIwMjAgMjA6MTk6MzUgKzAxMDA6Cgo+IE9uIFRodSwgOSBK
YW4gMjAyMCAxOTozOTo0MiArMDEwMCAoQ0VUKQo+IFJpY2hhcmQgV2VpbmJlcmdlciA8cmljaGFy
ZEBub2QuYXQ+IHdyb3RlOgo+IAo+ID4gTWlxdWVsLAo+ID4gCj4gPiAtLS0tLSBVcnNwcsO8bmds
aWNoZSBNYWlsIC0tLS0tICAKPiA+ID4+IEkgc3VnZ2VzdCBnaXZpbmcgYSBuYW1lIHdoaWNoIGlu
ZGljYXRlcyB0aGF0IHdlIGFyZSBhY3R1YWxseSBlbXVsYXRpbmcKPiA+ID4+IGFuIFNMQy4gTWF5
YmUgTVREX1NMQ19FTVVMQVRJT04/Cj4gPiA+PiBTb21lIE1MQyBOQU5EcyBzdXBwb3J0IFNMQyBt
b2RlIGluIGhhcmR3YXJlLCBNVERfTUxDX0lOX1NMQ19NT0RFIHJlYWRzIGxpa2UKPiA+ID4+IHRo
aXMgZmVhdHVyZS4gICAgCj4gPiA+IAo+ID4gPiBZb3UncmUgcmlnaHQuIFdoYXQgYWJvdXQgTVRE
X1NMQ19PTl9NTENfRU1VTEFUSU9OPyAgICAKPiA+IAo+ID4gTWFrZXMgc2Vuc2UuCj4gPiAgICAg
Cj4gPiA+PiBUaGUgbmFtZSBpcyBtaXNsZWFkaW5nLiBXZSBkb24ndCBkbyBPT0IgSU8gb24gYSBT
TEMgTkFORCwKPiA+ID4+IHdlIGVtdWxhdGUgU0xDLiAgICAKPiAKPiBXZSBzaG91bGQgcmVhbGx5
IHJlcGxhY2UgdGhvc2UgbXRkX29vYl8gcHJlZml4ZXMgYnkgc29tZXRoaW5nCj4gbW9yZSBhY2N1
cmF0ZSBsaWtlIG10ZF9pb18gYXQgc29tZSBwb2ludCAodGhvc2UgaGVscGVycyBjYW4gZG8gbW9y
ZSB0aGFuCj4ganVzdCByZWFkL3dyaXRlIHRoZSBPT0IgcmVnaW9uKS4KCkkgdGhpbmsgSSBoYXZl
IHNvbWUgV0lQIGFib3V0IHRoaXMuIE5vdCB0aGUgdGltZSBmb3IgZXZlcnl0aGluZyBqdXN0CmR1
cmluZyB0aGVzZSB2YWNhdGlvbnMgOnAKCj4gCj4gPiA+IAo+ID4gPiBXaGF0IHdvdWxkIHlvdSBy
ZWNvbW1lbmQ/IG10ZF9vb2JfaW9fZW11bF9zbGM/ICAgIAo+ID4gCj4gPiBZZXMuIExldCdzIHVz
ZSAiZW11bF9zbGMiIHRvIGluZGljYXRlIFNMQyBlbXVsYXRpb24uICAKPiAKPiBIb3cgYWJvdXQg
bXRkX2lvX2VtdWxhdGVkX3NsYygpPwoKRmluZSEKClRoYW5rcywKTWlxdcOobAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBk
aXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LW10ZC8K
