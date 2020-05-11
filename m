Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13DF31CE072
	for <lists+linux-mtd@lfdr.de>; Mon, 11 May 2020 18:29:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uJFKu2SO0FRsnY8cETtbD+XDNsmBLhZZqRUD9VeM830=; b=ieZrwm0YNtF3rI
	8c4rUp0DqxU2w7aUP0hObYarW4eRhR/QmjaqR5ENlDKv26VMgPxcfQ66Mh9JIXlsi4lYe2OsMZvRj
	ZVrCLi7cymnfMG8Wh+fIyi5XPOPeG1Lv8fJZdaHJuJ7C9dCgqrlyXzwN1XkIEVJtWnHxvjUg0zZGa
	3egeXp0sc5u0/f9fgRwwrTeas64sdYdWplJA0rlEJzumK3l50bzh6bBpjt9umUSt31LFeChoOAoVP
	bhkL8Bb+i/RAzQCP1K/VSk3EJi885ZFe8YEhNZdCJU+OOVVO/wpeny0WcKeLJHXvA6sEsS6C0TAYP
	FNaPIyK4XAbT30/net/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYBJG-0002YY-Qf; Mon, 11 May 2020 16:29:42 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYBJ7-0002V0-5J
 for linux-mtd@lists.infradead.org; Mon, 11 May 2020 16:29:34 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id BACE960012;
 Mon, 11 May 2020 16:29:24 +0000 (UTC)
Date: Mon, 11 May 2020 18:29:23 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH] nand: raw: use write_oob_raw for MTD_OPS_AUTO_OOB mode
Message-ID: <20200511182923.6a4961ab@xps13>
In-Reply-To: <20200504123237.5c128668@collabora.com>
References: <20200504094253.2741109-1-noltari@gmail.com>
 <20200504123237.5c128668@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_092933_336973_431FB95E 
X-CRM114-Status: GOOD (  19.34  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: =?UTF-8?B?w4FsdmFybyBGZXJuw6FuZGV6?= Rojas <noltari@gmail.com>,
 christophe.kerello@st.com, vigneshr@ti.com, richard@nod.at,
 s.hauer@pengutronix.de, devik@eaxlabs.cz, linux-kernel@vger.kernel.org,
 stefan@agner.ch, linux-mtd@lists.infradead.org, tglx@linutronix.de,
 masonccyang@mxic.com.tw, piotrs@cadence.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGVsbG8sCgpCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPiB3
cm90ZSBvbiBNb24sIDQgTWF5CjIwMjAgMTI6MzI6MzcgKzAyMDA6Cgo+IE9uIE1vbiwgIDQgTWF5
IDIwMjAgMTE6NDI6NTMgKzAyMDAKPiDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgPG5vbHRhcmlA
Z21haWwuY29tPiB3cm90ZToKPiAKPiA+IFNvbWUgTkFORCBjb250cm9sbGVycyBjaGFuZ2UgdGhl
IEVDQyBieXRlcyB3aGVuIE9PQiBpcyB3cml0dGVuIHdpdGggRUNDCj4gPiBlbmFibGVkLgo+ID4g
VGhpcyBpcyBhIHByb2JsZW0gaW4gYnJjbW5hbmQsIHNpbmNlIGFkZGluZyBKRkZTMiBjbGVhbm1h
cmtlcnMgYWZ0ZXIgdGhlIHBhZ2UKPiA+IGhhcyBiZWVuIGVyYXNlZCB3aWxsIGNoYW5nZSB0aGUg
RUNDIGJ5dGVzIHRvIDAgYW5kIHRoZSBjb250cm9sbGVyIHdpbGwgdGhpbmsKPiA+IHRoZSBibG9j
ayBpcyBiYWQuCj4gPiBJdCBjYW4gYmUgZml4ZWQgYnkgdXNpbmcgd3JpdGVfb29iX3Jhdywgd2hp
Y2ggZW5zdXJlcyBFQ0MgaXMgZGlzYWJsZWQuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IMOBbHZh
cm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2
ZXJzL210ZC9uYW5kL3Jhdy9uYW5kX2Jhc2UuYyB8IDIgKy0KPiA+ICAxIGZpbGUgY2hhbmdlZCwg
MSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbXRkL25hbmQvcmF3L25hbmRfYmFzZS5jIGIvZHJpdmVycy9tdGQvbmFuZC9yYXcvbmFuZF9i
YXNlLmMKPiA+IGluZGV4IGMyNGU1ZTJiYTEzMC4uNzU1ZDI1MjAwNTIwIDEwMDY0NAo+ID4gLS0t
IGEvZHJpdmVycy9tdGQvbmFuZC9yYXcvbmFuZF9iYXNlLmMKPiA+ICsrKyBiL2RyaXZlcnMvbXRk
L25hbmQvcmF3L25hbmRfYmFzZS5jCj4gPiBAQCAtNDg4LDcgKzQ4OCw3IEBAIHN0YXRpYyBpbnQg
bmFuZF9kb193cml0ZV9vb2Ioc3RydWN0IG5hbmRfY2hpcCAqY2hpcCwgbG9mZl90IHRvLAo+ID4g
IAo+ID4gIAluYW5kX2ZpbGxfb29iKGNoaXAsIG9wcy0+b29iYnVmLCBvcHMtPm9vYmxlbiwgb3Bz
KTsKPiA+ICAKPiA+IC0JaWYgKG9wcy0+bW9kZSA9PSBNVERfT1BTX1JBVykKPiA+ICsJaWYgKG9w
cy0+bW9kZSA9PSBNVERfT1BTX0FVVE9fT09CIHx8IG9wcy0+bW9kZSA9PSBNVERfT1BTX1JBVykK
PiA+ICAJCXN0YXR1cyA9IGNoaXAtPmVjYy53cml0ZV9vb2JfcmF3KGNoaXAsIHBhZ2UgJiBjaGlw
LT5wYWdlbWFzayk7ICAKPiAKPiBUaGUgZG9jIHNheXM6Cj4gCj4gQE1URF9PUFNfUExBQ0VfT09C
OiAgT09CIGRhdGEgYXJlIHBsYWNlZCBhdCB0aGUgZ2l2ZW4gb2Zmc2V0IChkZWZhdWx0KQo+IEBN
VERfT1BTX0FVVE9fT09COiAgIE9PQiBkYXRhIGFyZSBhdXRvbWF0aWNhbGx5IHBsYWNlZCBhdCB0
aGUgZnJlZSBhcmVhcwo+ICAgICAgICAgICAgICAgICAgICAgIHdoaWNoIGFyZSBkZWZpbmVkIGJ5
IHRoZSBpbnRlcm5hbCBlY2NsYXlvdXQKPiBATVREX09QU19SQVc6ICAgICAgICBkYXRhIGFyZSB0
cmFuc2ZlcnJlZCBhcy1pcywgd2l0aCBubyBlcnJvcgo+IAkJICAgICBjb3JyZWN0aW9uOyB0aGlz
IG1vZGUgaW1wbGllcyAlTVREX09QU19QTEFDRV9PT0IKPiAKPiBUbyBtZSwgdGhhdCBtZWFucyBN
VERfT1BTX1BMQUNFX09PQiBhbmQgTVREX09QU19BVVRPX09PQiBkbyBub3QgaW1wbHkKPiBNVERf
T1BTX1JBVy4gQW55d2F5IHRob3NlIG1vZGVzIGFyZSBqdXN0IHRvbyB2YWd1ZS4gV2UgcmVhbGx5
IHNob3VsZAo+IHNlcGFyYXRlIHRoZSBFQ0MtZGlzYWJsZWQvRUNDLWVuYWJsZWQgY29uY2VwdCAo
QUtBIHJhdyB2cyBub24tcmF3IG1vZGUpCj4gZnJvbSB0aGUgT09CIHBsYWNlbWVudCBzY2hlbWUu
IElJUkMsIE1pcXVlbCBoYWQgYSBwYXRjaHNldCBkb2luZyB0aGF0Lgo+IAo+IFdlIGFsc28gc2hv
dWxkIGhhdmUgdGhlIGNvbmNlcHQgb2YgcHJvdGVjdGVkIE9PQi1yZWdpb24gdnMKPiB1bnByb3Rl
Y3RlZC1PT0ItcmVnaW9uIGlmIHdlIHdhbnQgSkZGUzIgdG8gd29yayB3aXRoIGNvbnRyb2xsZXJz
IHRoYXQKPiBwcm90ZWN0IHBhcnQgb2YgdGhlIE9PQiByZWdpb24uIE9uY2Ugd2UgaGF2ZSB0aGF0
IHdlIGNhbiBwYXRjaCBKRkZTMgo+IHRvIHdyaXRlIHRoaW5ncyB3aXRoICJFQ0MtZGlzYWJsZWQi
KyJhdXRvLU9PQi1wbGFjZW1lbnQtb24tdW5wcm90ZWN0ZWQKPiBhcmVhIi4KCkkgc2VlIHRoZSBw
cm9ibGVtIGJ1dCBhcyBCb3JpcyBzYWlkIHRoZSBmaXggaXMgbm90IHZhbGlkIGFzLWlzLgpQcm9i
bGVtIGlzOiBJIGRvbid0IGhhdmUgYSBiZXR0ZXIgcHJvcG9zYWwgeWV0LgoKSXMgZm9yY2luZyBK
RkZTMiB0byB3cml0ZSBjbGVhbm1hcmtlcnMgaW4gcmF3IG1vZGUgb25seSBhbiBvcHRpb24/Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
