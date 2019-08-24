Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9361B9BD14
	for <lists+linux-mtd@lfdr.de>; Sat, 24 Aug 2019 12:41:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4P0gZzN3wp6fHvVu34Y/60EDYBc8YbtK//+wR4pTwE0=; b=dDMdr8iNpA3uJT
	RcQUD3QPV2VRZ6VqHIzDq1dV3go19tdBNf0RHh2fgSPDVUMfmaIF6LIh4QJE0a8qXKv8mlWYLLkMt
	LPFBkzLTB416zTTeGk4yiArQCfIX9A+uB56sidKZw+7+DJ19SgLEsSJ1obdpr5TcflGnjO6aReuyb
	FZ5F8SKR+oywg2Fj8VmXVPXRo/Vxl8xmhGFXcbJti4grVs7OE/ThdzU9rWx8tuQdZ9EblKzo2OViQ
	g0nnDsaNFqXKWP7pGf3tuXY5OanGen7Nqo8BRK7S+rmTUea0C3z6xzDvHOdN/M9oq0SezQEglvSRQ
	xg1qVr56u/ZY4xUQqToA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1TTt-0007GN-2E; Sat, 24 Aug 2019 10:41:13 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1TTk-0007G2-AT
 for linux-mtd@lists.infradead.org; Sat, 24 Aug 2019 10:41:06 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id BA3D9E0003;
 Sat, 24 Aug 2019 10:40:49 +0000 (UTC)
Date: Sat, 24 Aug 2019 12:40:48 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [EXT] Re: [PATCH] mtd: spinand: micron: add support for
 MT29F1G01AAADD
Message-ID: <20190824124048.6345abb3@xps13>
In-Reply-To: <20190821071914.ymfpvio3o5ano2y5@pengutronix.de>
References: <20190814082232.2119-1-m.felsch@pengutronix.de>
 <20190819101718.39b3a5ca@xps13>
 <20190819133042.23jpf3eap2u5teuo@pengutronix.de>
 <20190819163449.6e62e6a5@xps13>
 <20190820063904.xg32xtdt6uf3vl77@pengutronix.de>
 <MN2PR08MB59515F78DFA89350B9A3E6D6B8AB0@MN2PR08MB5951.namprd08.prod.outlook.com>
 <MN2PR08MB5951FA28B34407D8614F3E28B8AB0@MN2PR08MB5951.namprd08.prod.outlook.com>
 <20190821071914.ymfpvio3o5ano2y5@pengutronix.de>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_034104_516290_AE3BEA22 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
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
Cc: "'bbrezillon@kernel.org'" <bbrezillon@kernel.org>,
 "'richard@nod.at'" <richard@nod.at>,
 "'frieder.schrempf@kontron.de'" <frieder.schrempf@kontron.de>,
 "'marek.vasut@gmail.com'" <marek.vasut@gmail.com>,
 "'linux-mtd@lists.infradead.org'" <linux-mtd@lists.infradead.org>,
 "'kernel@pengutronix.de'" <kernel@pengutronix.de>,
 'Peter Pan' <peterpandong@micron.com>,
 "Shivamurthy Shastri \(sshivamurthy\)" <sshivamurthy@micron.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgTWFyY28sCgpNYXJjbyBGZWxzY2ggPG0uZmVsc2NoQHBlbmd1dHJvbml4LmRlPiB3cm90ZSBv
biBXZWQsIDIxIEF1ZyAyMDE5CjA5OjE5OjE0ICswMjAwOgoKPiBIaSBTaGl2YW11cnRoeSwgTWlx
dWVsLAo+IAo+IE9uIDE5LTA4LTIwIDExOjMzLCBTaGl2YW11cnRoeSBTaGFzdHJpIChzc2hpdmFt
dXJ0aHkpIHdyb3RlOgo+ID4gSGkgTWFyY28sICAKPiAKPiBbIC4uLiBdCj4gCj4gPiA+ID4gT2th
eS4gSnVzdCBvbmUgbGFzdCBxdWVzdGlvbi4gV2hhdCBpcyB0aGUgY29tbW9uIHdheSB0byBnbyB0
byBzcGVjaWZ5Cj4gPiA+ID4gdGhlIGZyZWUgYXJlYT8gQnkgdGhpcyBJIG1lYW4gdGhhdCB0aGUg
TkFORCBoYXMgdHdvIGFyZWFzIHRvIHN0b3JlIHRoZQo+ID4gPiA+IHVzZXIgbWV0YWRhdGEgY2Fs
bGluZyBpdCAndXNlciBtZXRhZGF0YSBJJyBhbmQgJ3VzZXIgbWV0YWRhdGEgSUknLiAndXNlcgo+
ID4gPiA+IG1ldGFkYXRhIElJJyBpc24ndCBlY2MgcHJvdGVjdGVkIHNvIEkgc2tpcCB0aGVtLiBC
dXQgdGhlIGN1cnJlbnQKPiA+ID4gPiBzdXBwb3J0ZWQgY2hpcCBkb2VzIG5vdCBza2lwIHRoZSB1
c2VyIG1ldGFkYXRhIGFyZWEgd2hpY2ggaXNuJ3QKPiA+ID4gPiBwcm90ZWN0ZWQgWzFdIHRhYmxl
IDEwLgo+ID4gPiA+Cj4gPiA+ID4gWzFdIGh0dHBzOi8vd3d3Lm1pY3Jvbi5jb20vfi9tZWRpYS9k
b2N1bWVudHMvcHJvZHVjdHMvZGF0YS0KPiA+ID4gPiBzaGVldC9uYW5kLWZsYXNoLzcwLXNlcmll
cy9tNzlhXzJnYl8zdl9uYW5kX3NwaS5wZGYgIAo+IAo+IEBNaXF1ZWwKPiBEbyB5b3UgY2FuIG1l
IGhlbHAgd2l0aCB0aGF0PwoKVGhlIHh4eF9vb2JsYXlvdXRfZnJlZS9lY2MgaGVscGVycyBhcmUg
aGVyZSBmb3IgdGhhdC4gU2VjdGlvbiBpcyB0aGUKbnVtYmVyIG9mIGRpc3RpbmN0IGNodW5rcyB5
b3UgaGF2ZSBpbiB0aGUgT09CLiBJZiB5b3UgaGF2ZSB0d28gY2h1bmtzCmJ1dCAobWV0YWRhdGEg
SSBhbmQgSUkpIGJ1dCB5b3UgZG9uJ3Qgd2FudCB0byBleHBvc2UgdGhlIHVucHJvdGVjdGVkCmJ5
dGVzLCB0aGVuIGp1c3QgaGlkZSBtZXRhZGF0YSBJSSB3aXRoIGEKCmlmIChzZWN0aW9uKQogICAg
ICAgcmV0dXJuIC1FUkFOR0UKCgpEb2VzIHRoaXMgYW5zd2VyIHlvdXIgcXVlc3Rpb24/Cgo+IAo+
ID4gPiAKPiA+ID4gSSBoYXZlIHdyaXR0ZW4gcGF0Y2ggdG8gbWFrZSBoZWxwZXJzIHRvIGJlIG1v
cmUgZ2VuZXJpYy4KPiA+ID4gVGhleSB3b3JrIGZvciBNaWNyb24ncyBNNzhBLCBNNzlBIGFuZCBN
NzBBIHNlcmllcyBTUEkgTkFORHMuCj4gPiA+ICAgCj4gPiAKPiA+IEkgbWlzc2VkIGxpbmsgaW4g
bGFzdCBlbWFpbCwgaGVyZSBpdCBpcy4KPiA+IAo+ID4gaHR0cDovL3BhdGNod29yay5vemxhYnMu
b3JnL3BhdGNoLzExMzQ3MjQvICAKPiAKPiBUaGlzIHBhdGNoIHNlZW0gbm90IHRvIGFkZHJlc3Mg
bXkgb29ibGF5b3V0Li4gU28gbXkgcGF0Y2ggaXMgc3RpbGwKPiBuZWVkZWQuCj4gCj4gUmVnYXJk
cywKPiAgIE1hcmNvCj4gCgpUaGFua3MsCk1pcXXDqGwKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWls
aW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1tdGQvCg==
