Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79F8524BFD
	for <lists+linux-mtd@lfdr.de>; Tue, 21 May 2019 11:48:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hUmXeqi7eIFo16EwasoonUHz7kmcpnA6tIlBiVxs2ak=; b=UpO22I35lOL18U
	DIbGd9E+q25dn0nyAY7z7N0opbSv7NC4/im/ePSpJS3L+m6MArQFS8d+ebK8WXqFmzwUNZHz7Vd02
	H5lvqVzczck2A1DszyuwgltBb0P2FIU5FoUzYTgKYTcew0rYYkoDVAwGf/Yx4ypp1DugZEIG2S1WQ
	0UuCYz//tfMz73Yt+WNjG2JEx5l2tP5+nFTgHbvaxMCIyuQV5MY3trCQd5gWhDlIiVeUAj5+3WfY1
	S0nLe55yBc3iTciAvJkUPFjleN4i9xAOGsBpAJ54AkAhHLwkns+JBk8OYXPCI+mT0EjuFqEvHeR4A
	Koqpur8RzrUkdycgqdAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT1Nn-0004r9-0G; Tue, 21 May 2019 09:48:31 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT1Nf-0004qd-Ed
 for linux-mtd@lists.infradead.org; Tue, 21 May 2019 09:48:25 +0000
X-Originating-IP: 90.88.22.185
Received: from xps13 (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr
 [90.88.22.185]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 310351C0010;
 Tue, 21 May 2019 09:48:09 +0000 (UTC)
Date: Tue, 21 May 2019 11:48:08 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v2] mtd: rawnand: initialize ntargets with maxchips
Message-ID: <20190521114808.76c56e27@xps13>
In-Reply-To: <20190521114022.2c3bbc77@collabora.com>
References: <20190521084335.15026-1-s.hauer@pengutronix.de>
 <20190521090417.7883-1-miquel.raynal@bootlin.com>
 <20190521114022.2c3bbc77@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_024823_639034_1756550D 
X-CRM114-Status: GOOD (  15.24  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Richard Weinberger <richard@nod.at>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-mtd@lists.infradead.org, kernel@pengutronix.de,
 Boris Brezillon <bbrezillon@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgQm9yaXMsCgpCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29t
PiB3cm90ZSBvbiBUdWUsIDIxIE1heQoyMDE5IDExOjQwOjIyICswMjAwOgoKPiBPbiBUdWUsIDIx
IE1heSAyMDE5IDExOjA0OjE3ICswMjAwCj4gTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBi
b290bGluLmNvbT4gd3JvdGU6Cj4gCj4gPiBPbiBUdWUsIDIwMTktMDUtMjEgYXQgMDg6NDM6MzUg
VVRDLCBTYXNjaGEgSGF1ZXIgd3JvdGU6ICAKPiA+ID4gbWVtb3JnLT5udGFyZ2V0cyBpcyBpbml0
aWFsaXplZCB3aXRoICcxJy4gSXQgc2hvdWxkIGJlIGluaXRpYWxpemVkIHdpdGgKPiA+ID4gdGhl
IG1heGNoaXBzIGFyZ3VtZW50IGZyb20gbmFuZF9zY2FuKCkgaW5zdGVhZC4gT3RoZXJ3aXNlIG11
bHRpIGNoaXAKPiA+ID4gc3VwcG9ydCBlcnJvcnMgb3V0IG9uIHRoZSBzZWNvbmRhcnkgY2hpcCBz
ZWxlY3RzIHdoZW4gdHJ5aW5nIHRvIGNhbGwKPiA+ID4gbmFuZF9yZXNldCgpIG9uIHRoZW06Cj4g
PiA+IAo+ID4gPiBXQVJOSU5HOiBDUFU6IDAgUElEOiAxIGF0IGRyaXZlcnMvbXRkL25hbmQvcmF3
L2ludGVybmFscy5oOjExNAo+ID4gPiBuYW5kX3Jlc2V0X29wKzB4MTk0LzB4MWM0Cj4gPiA+IAo+
ID4gPiBXaXRoIHRoaXMgbWVtb3JnLT5udGFyZ2V0cyBpcyBpbml0aWFsaXplZCB3aXRoIHRoZSBt
YXhpbXVtIG51bWJlciBvZgo+ID4gPiBjaGlwIHNlbGVjdHMgc3VwcG9ydGVkIGJ5IHRoZSBkcml2
ZXIuIEFmdGVyIGhhdmluZyBkZXRlY3RlZCB0aGUgbnVtYmVyCj4gPiA+IG9mIGFjdHVhbGx5IGNv
bm5lY3RlZCBjaGlwcyBtZW1vcnktPm50YXJnZXRzIGlzIHVwZGF0ZWQgd2l0aCB0aGF0Cj4gPiA+
IG51bWJlci4KPiA+ID4gCj4gPiA+IEZpeGVzOiAzMjgxM2UyODg0MTQgKCJtdGQ6IHJhd25hbmQ6
IEdldCByaWQgb2YgY2hpcC0+bnVtY2hpcHMiKQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBTYXNjaGEg
SGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+Cj4gPiA+IFJldmlld2VkLWJ5OiBCb3JpcyBC
cmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPiAgICAKPiA+IAo+ID4gQXBw
bGllZCB0byBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9t
dGQvbGludXguZ2l0IG10ZC9uZXh0LCB0aGFua3MuICAKPiAKPiBBcmUgeW91IHN1cmUgaXQncyBt
dGQvbmV4dD8gSSdkIGV4cGVjdCBpdCB0byBiZSBxdWV1ZWQgaW4gbXRkL2ZpeGVzIG5vdAo+IG10
ZC9uZXh0LgoKWWVzLCBJIGZhaWxlZCB0byBjaGVja291dCB0aGUgcmlnaHQgYnJhbmNoIDopCkkg
bWVhbnQgbXRkL2ZpeGVzLCB3aWxsIG1vdmUgdGhlIHBhdGNoLgoKVGhhbmtzLApNaXF1w6hsCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
