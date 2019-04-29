Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73553DCC7
	for <lists+linux-mtd@lfdr.de>; Mon, 29 Apr 2019 09:24:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ZSoIqXNSOIF2LFDZUG7kdLU8XPxXISKy49oujEObrE=; b=Pj90AhBDv5UB3b
	MjI4twNdegHFzfvfMcMmCdLEvVllhGgabt9qfCcbzh+AlM9lPxx1h853xGW0ht7YnO11V72AR5hPw
	EnG5sJ2I6tfbyecrbu2pevcknySmpJNr3wHvspmFjJx+TiuwNrPoGIXejPkfhT0WBSFXHO9EdlDYu
	TCAT/HeIU8QH5z9LEV3zc299nHfwxusScZ8uxO9Hni/ope0TyVmudaSHOjZQ3RkTtcAgRYZ77QnsF
	HY8js/kqICWzVvjoQ0Xh3Bf2izneG4wz2qirwM4SRyelRvBOoinflpn7aZREdScjgnkqDEsEN7KAU
	TaPSODoYesLCqdF7ToQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL0ec-0004ER-Hd; Mon, 29 Apr 2019 07:24:46 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0eU-0004Do-BR
 for linux-mtd@lists.infradead.org; Mon, 29 Apr 2019 07:24:40 +0000
Received: from xps13 (aaubervilliers-681-1-27-33.w90-88.abo.wanadoo.fr
 [90.88.147.33]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 96BE9100002;
 Mon, 29 Apr 2019 07:23:42 +0000 (UTC)
Date: Mon, 29 Apr 2019 09:23:41 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH 14/14] mtd: rawnand: gpmi: Implement exec_op
Message-ID: <20190429092341.2880f453@xps13>
In-Reply-To: <20190424070940.gonhzo6bwbcljplq@pengutronix.de>
References: <20190409113421.3037-1-s.hauer@pengutronix.de>
 <20190409113421.3037-15-s.hauer@pengutronix.de>
 <20190417123355.529297e2@xps13>
 <20190424070940.gonhzo6bwbcljplq@pengutronix.de>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_002438_542254_EAB1EEE4 
X-CRM114-Status: GOOD (  12.55  )
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
Cc: kernel@pengutronix.de, Boris Brezillon <bbrezillon@kernel.org>,
 Richard Weinberger <richard@nod.at>, Vinod Koul <vkoul@kernel.org>,
 linux-mtd@lists.infradead.org, NXP Linux Team <linux-imx@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, Han Xu <han.xu@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgU2FzY2hhLAoKU2FzY2hhIEhhdWVyIDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPiB3cm90ZSBv
biBXZWQsIDI0IEFwciAyMDE5CjA5OjA5OjQwICswMjAwOgoKPiBIaSBNaXF1ZWwsCj4gCj4gVGhh
bmtzIGZvciB0aGUgcmV2aWV3LiBJIGZpeGVkIGFsbCBvZiBpdC4KPiAKPiBPbiBXZWQsIEFwciAx
NywgMjAxOSBhdCAxMjozMzo1NVBNICswMjAwLCBNaXF1ZWwgUmF5bmFsIHdyb3RlOgo+ID4gSGkg
U2FzY2hhLAo+ID4gICAKPiA+ID4gKwkJY2FzZSBOQU5EX09QX0RBVEFfSU5fSU5TVFI6Cj4gPiA+
ICsJCQlpZiAoIWluc3RyLT5jdHguZGF0YS5sZW4pCj4gPiA+ICsJCQkJYnJlYWs7Cj4gPiA+ICsJ
CQlidWZfcmVhZCA9IGluc3RyLT5jdHguZGF0YS5idWYuaW47Cj4gPiA+ICsJCQlidWZfbGVuID0g
aW5zdHItPmN0eC5kYXRhLmxlbjsKPiA+ID4gKwkJCW5idWZzKys7Cj4gPiA+ICsKPiA+ID4gKwkJ
CWRlc2MgPSBncG1pX2NoYWluX2RhdGFfcmVhZCh0aGlzLCBidWZfcmVhZCwgYnVmX2xlbiwKPiA+
ID4gKwkJCQkJCSAgICZkaXJlY3QpOwo+ID4gPiArCQkJYnJlYWs7Cj4gPiA+ICsJCX0gIAo+ID4g
Cj4gPiBTbyB0aGVyZSBpcyBubyBsaW1pdGF0aW9uIGZvciB0aGUgY29udHJvbGxlciBpbiB0ZXJt
cyBvZgo+ID4gYWRkcmVzcy9kYXRhIGN5Y2xlcyB0aGF0IGNhbiBiZSBhc3NlcnRlZCBpbiBvbmUg
Z28/ICAKPiAKPiBObyBJIHRoaW5rIG5vdCwgYXQgbGVhc3Qgbm90IGEgcHJhY3RpY2FsIG9uZS4g
SSBjYW4ndCBmaW5kIGFueXRoaW5nCj4gYWJvdXQgaXQgaW4gdGhlIHJlZmVyZW5jZSBtYW51YWwu
Cj4gCj4gV2hlcmUgaXMgeW91ciBxdWVzdGlvbiBhaW1pbmcgYXQ/CgpJJ20gZmluZSB3aXRoIHlv
dXIgYW5zd2VyLCBpdCB3YXMganVzdCB0byBiZSBzdXJlIHRoYXQgdGhlIGNvbnRyb2xsZXIncwps
aW1pdGF0aW9ucyAoaWYgYW55KSB3aGVyZSBkZXNjcmliZWQuCgoKVGhhbmtzIGZvciB5b3VyIHdv
cmssCk1pcXXDqGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
