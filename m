Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C584D13D638
	for <lists+linux-mtd@lfdr.de>; Thu, 16 Jan 2020 09:53:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lx5UoRUT3I5p5lye6jeAV3K3lA3Nj+q3FTHwWXk44Xo=; b=rvn9jjWlQ3Tj7Q
	uZ4p7rf1WbGilc9pY6Hj9Mk7aVOLFmwOB/E1JU9DdWsJ3h+hQ85j43lNFgibxWRHTjZZoKWEUWYYo
	mBSW5/ZRzv8MhnsgGVc0tBCrN30IDjO7BWqY7HVRwm0eYJ+YnN74OHbLnOEB/XYZrzLdt9aqvvJ92
	JHYsSvbOvw3rwV+3YS7YjPyx/qbTw+JW5Jf4aG86Aqs/nwvcQsdPyTUQ0QTALp7xdy2dD8kiLw9nz
	aqjyPFzT8H5mA1dEogjn4SdaIX9+CTGFrh5fbttqtJ2d4Vpm/pGCpTiPmafAKF+zQoLEy8zVZd9Eg
	tuoN7TQWKWz7CqYqMM1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is0uL-00087o-VE; Thu, 16 Jan 2020 08:53:41 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is0tr-0007yb-LU; Thu, 16 Jan 2020 08:53:15 +0000
X-Originating-IP: 90.76.211.102
Received: from xps13 (lfbn-tou-1-1151-102.w90-76.abo.wanadoo.fr
 [90.76.211.102]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 293A64000B;
 Thu, 16 Jan 2020 08:53:02 +0000 (UTC)
Date: Thu, 16 Jan 2020 09:53:01 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v3 12/40] mtd: nand: Rename a core structure
Message-ID: <20200116095301.14c191ac@xps13>
In-Reply-To: <20191012113530.6fe78c71@dhcp-172-31-174-146.wireless.concordia.ca>
References: <20190919193141.7865-1-miquel.raynal@bootlin.com>
 <20190919193141.7865-13-miquel.raynal@bootlin.com>
 <20191012113530.6fe78c71@dhcp-172-31-174-146.wireless.concordia.ca>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_005311_838328_258296C5 
X-CRM114-Status: GOOD (  15.66  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.194 listed in wl.mailspike.net]
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

SGkgQm9yaXMsCgpCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29t
PiB3cm90ZSBvbiBTYXQsIDEyIE9jdAoyMDE5IDExOjM1OjMwICswMjAwOgoKPiBPbiBUaHUsIDE5
IFNlcCAyMDE5IDIxOjMxOjEyICswMjAwCj4gTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBi
b290bGluLmNvbT4gd3JvdGU6Cj4gCj4gPiBQcmVwYXJlIHRoZSBtaWdyYXRpb24gdG8gYSBnZW5l
cmljIEVDQyBlbmdpbmUgYnkgcmVuYW1pbmcgdGhlCj4gPiBuYW5kX2VjY19yZXEgc3RydWN0dXJl
IGludG8gbmFuZF9lY2NfcHJvcHMuIFRoaXMgc3RydWN0dXJlIHdpbGwgYmUgdGhlCj4gPiBiYXNl
IG9mIGEgd2lkZXIgJ25hbmRfZWNjJyBzdHJ1Y3R1cmUuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6
IE1pcXVlbCBSYXluYWwgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5jb20+Cj4gPiAtLS0KPiA+ICBp
bmNsdWRlL2xpbnV4L210ZC9uYW5kLmggICAgfCA4ICsrKystLS0tCj4gPiAgaW5jbHVkZS9saW51
eC9tdGQvc3BpbmFuZC5oIHwgMiArLQo+ID4gIDIgZmlsZXMgY2hhbmdlZCwgNSBpbnNlcnRpb25z
KCspLCA1IGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9t
dGQvbmFuZC5oIGIvaW5jbHVkZS9saW51eC9tdGQvbmFuZC5oCj4gPiBpbmRleCA1MzFjMTc5OWJm
MmMuLjcwNzJmMTQyMzllNSAxMDA2NDQKPiA+IC0tLSBhL2luY2x1ZGUvbGludXgvbXRkL25hbmQu
aAo+ID4gKysrIGIvaW5jbHVkZS9saW51eC9tdGQvbmFuZC5oCj4gPiBAQCAtMTI4LDExICsxMjgs
MTEgQEAgc3RydWN0IG5hbmRfcGFnZV9pb19yZXEgewo+ID4gIH07Cj4gPiAgCj4gPiAgLyoqCj4g
PiAtICogc3RydWN0IG5hbmRfZWNjX3JlcSAtIE5BTkQgRUNDIHJlcXVpcmVtZW50cwo+ID4gKyAq
IHN0cnVjdCBuYW5kX2VjY19wcm9wcyAtIE5BTkQgRUNDIHByb3BlcnRpZXMKPiA+ICAgKiBAc3Ry
ZW5ndGg6IEVDQyBzdHJlbmd0aAo+ID4gLSAqIEBzdGVwX3NpemU6IEVDQyBzdGVwL2Jsb2NrIHNp
emUKPiA+ICsgKiBAc3RlcF9zaXplOiBOdW1iZXIgb2YgYnl0ZXMgcGVyIHN0ZXAKPiA+ICAgKi8K
PiA+IC1zdHJ1Y3QgbmFuZF9lY2NfcmVxIHsKPiA+ICtzdHJ1Y3QgbmFuZF9lY2NfcHJvcHMgewo+
ID4gIAl1bnNpZ25lZCBpbnQgc3RyZW5ndGg7Cj4gPiAgCXVuc2lnbmVkIGludCBzdGVwX3NpemU7
Cj4gPiAgfTsKPiA+IEBAIC0xOTEsNyArMTkxLDcgQEAgc3RydWN0IG5hbmRfb3BzIHsKPiA+ICBz
dHJ1Y3QgbmFuZF9kZXZpY2Ugewo+ID4gIAlzdHJ1Y3QgbXRkX2luZm8gbXRkOwo+ID4gIAlzdHJ1
Y3QgbmFuZF9tZW1vcnlfb3JnYW5pemF0aW9uIG1lbW9yZzsKPiA+IC0Jc3RydWN0IG5hbmRfZWNj
X3JlcSBlY2NyZXE7Cj4gPiArCXN0cnVjdCBuYW5kX2VjY19wcm9wcyBlY2NyZXE7ICAKPiAKPiBM
ZXQncyByZW5hbWUgdGhpcyBmaWVsZCB0b286IHMvZWNjcmVxL2VjY3Byb3BzLwoKVGhpcyBpcyBq
dXN0IGEgdHJhbnNpdGlvbiBzdGVwLCB0aGlzIGZpZWxkIGlzIGJlaW5nIHJlcGxhY2VkIGJ5IGEg
bXVjaAp3aWRlciBzdHJ1Y3R1cmUgdHdvIHBhdGNoZXMgbGF0ZXIuIFRoZSBpbXBhY3Qgb2YgcmVu
YW1pbmcgdGhpcyBmaWVsZCBpcwpodWdlIGNvbXBhcmVkIHRvIGl0cyBpbnRlcmVzdCBzbyBJJ2Qg
cHJlZmVyIG5vdCB0byBkbyBpdC4KCk1pcXXDqGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5n
IGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1t
dGQvCg==
