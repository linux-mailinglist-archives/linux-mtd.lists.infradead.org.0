Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5489A13CE79
	for <lists+linux-mtd@lfdr.de>; Wed, 15 Jan 2020 21:59:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QRrKyod2d+h4bnYgjk745ZexJ3/qu7uEcgRJNkJu0T8=; b=ZfSDrYZj0fqK83
	SfID7GmKNwrSVBkOOfp5MGQEYuf5bBCb5u+iH1LXl3FoDqihm9SvLUozSpEEk7wFXlaKefXwFJFgL
	RpzhalNERDNRRzlZ0RENF0BdP4wRozpqppkNa+gxAULpPC5JVHgt40qoT3RFRq8LTGzyBS15T4RuW
	tdD/nIDJ0Tqnmrw6qYc25+c3TcghbYS8RXGfOClZlxwQ7l54UQvMh6gLFDXvC/RSSOrBD+j5NNtIp
	fg4EEDTi3s2alj32Wdya/hMSOsAT01OSb9RG+XUqfFebQa+1pMVVGRs2IfWtdVl1utnZ+gQvThPlg
	c/LD1YXFaeNFAbALGxHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irplE-0005bE-CN; Wed, 15 Jan 2020 20:59:32 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irpkn-0005S5-TH; Wed, 15 Jan 2020 20:59:07 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 6C49F240005;
 Wed, 15 Jan 2020 20:58:49 +0000 (UTC)
Date: Wed, 15 Jan 2020 21:58:40 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v3 05/40] mtd: rawnand: Create a new enumeration to
 describe properly ECC types
Message-ID: <20200115215840.2eced09f@xps13>
In-Reply-To: <20191012111400.10654982@dhcp-172-31-174-146.wireless.concordia.ca>
References: <20190919193141.7865-1-miquel.raynal@bootlin.com>
 <20190919193141.7865-6-miquel.raynal@bootlin.com>
 <20191012111400.10654982@dhcp-172-31-174-146.wireless.concordia.ca>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_125906_085134_0D046591 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: Mason Yang <masonccyang@mxic.com.tw>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>, Julien Su <juliensu@mxic.com.tw>,
 Richard Weinberger <richard@nod.at>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 Paul Cercueil <paul@crapouillou.net>, Marek Vasut <marek.vasut@gmail.com>,
 linux-mtd@lists.infradead.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgQm9yaXMsCgo+ID4gKy8qKgo+ID4gKyAqIGVudW0gbmFuZF9lY2NfZW5naW5lX3R5cGUgLSBO
QU5EIEVDQyBlbmdpbmUgdHlwZS9wcm92aWRlcgo+ID4gKyAqIEBOQU5EX0lOVkFMSURfRUNDX0VO
R0lORTogSW52YWxpZCB2YWx1ZQo+ID4gKyAqIEBOQU5EX05PX0VDQ19FTkdJTkU6IE5vIEVDQyBj
b3JyZWN0aW9uCj4gPiArICogQE5BTkRfU09GVF9FQ0NfRU5HSU5FOiBTb2Z0d2FyZSBFQ0MgY29y
cmVjdGlvbgo+ID4gKyAqIEBOQU5EX0hXX0VDQ19FTkdJTkU6IEhhcmR3YXJlIChjb250cm9sbGVy
IHNpZGUpIEVDQyBjb3JyZWN0aW9uCj4gPiArICogQE5BTkRfT05fRElFX0VDQ19FTkdJTkU6IEhh
cmR3YXJlIChjaGlwIHNpZGUpIEVDQyBjb3JyZWN0aW9uCj4gPiArICovCj4gPiArZW51bSBuYW5k
X2VjY19lbmdpbmVfdHlwZSB7Cj4gPiArCU5BTkRfSU5WQUxJRF9FQ0NfRU5HSU5FLCAgCj4gCj4g
U2FtZSBjb21tZW50IGFzIGZvciB0aGUgTkFORF9FQ0NfSU5WQUxJRCBhZGRpdGlvbjogaWYgeW91
IGRvbid0IGhhdmUgYW4KPiBlbnRyeSBpbiBuYW5kX2VjY19lbmdpbmVfcHJvdmlkZXJzIGZvciB0
aGlzIElOVkFMSUQgY2FzZSwgaXQncyBwcm9iYWJseQo+IGJldHRlciB0byBkZWZpbmUgaXQgdG8g
LTEuCj4gCj4gPiArCU5BTkRfTk9fRUNDX0VOR0lORSwKPiA+ICsJTkFORF9TT0ZUX0VDQ19FTkdJ
TkUsCj4gPiArCU5BTkRfSFdfRUNDX0VOR0lORSwgIAo+IAo+IEknZCByZW5hbWUgdGhhdCBvbmUg
aW50bwo+IAo+IAlOQU5EX0NPTlRST0xMRVJfRUNDX0VOR0lORSwKPiAKPiBIVyBpcyBhIGJpdCB0
b28gdmFndWUuCj4gCj4gPiArCU5BTkRfT05fRElFX0VDQ19FTkdJTkUsICAKPiAKPiBJIGFsc28g
ZmluZCBpdCBjbGVhcmVyIHdoZW4gdGhlIHNhbWUgcHJlZml4IGlzIHVzZWQ6Cj4gCj4gCU5BTkRf
RUNDX0VOR0lORV9JTlZBTElEID0gLTEsCj4gCU5BTkRfRUNDX0VOR0lORV9OT05FID0gMCwKPiAJ
TkFORF9FQ0NfRU5HSU5FX1NPRlQsCj4gCU5BTkRfRUNDX0VOR0lORV9DT05UUk9MTEVSLAo+IAlO
QU5EX0VDQ19FTkdJTkVfT05fRElFLAo+IAo+IExvb2tzIGdvb2Qgb3RoZXJ3aXNlLiBGZWVsIGZy
ZWUgdG8gaWdub3JlIG15IGNvbW1lbnRzIGlmIHlvdSBkaXNhZ3JlZS4KClNhbWUgcHJlZml4IGl0
IGlzIQoKSG93ZXZlciwgSSBkb24ndCB3YW50IHRvIHN0YXJ0IGFzIC0xIGFzIG90aGVyd2lzZSB1
c2luZyBhIGZvci1sb29wIHRvCmxvb3Agb3ZlciBlYWNoIEVDQyBlbmdpbmUgd291bGQgYmUgbGVz
cyBzdHJhaWdodGZvcndhcmQuCgpUaGFua3MsCk1pcXXDqGwKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBt
YWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1tdGQvCg==
