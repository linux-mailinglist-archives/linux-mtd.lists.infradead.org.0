Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 929D74B3A8
	for <lists+linux-mtd@lfdr.de>; Wed, 19 Jun 2019 10:09:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MwJ55lFeLgzc1LTjN+qwfaaCDl8IU6BIHGnsLNf/+o4=; b=Wp8QY1ioxRjUdR
	YiInG2H6WJooT6+JZAjaNc9b8PaxUD/kM2bAuqLU1LkN2jJ692w9xTI32n4r8QLhkbxe6fzNLDWp/
	ZI93I8fPp/9daMm4mGB4xZJ3m8WQpwW48YTnGvRbBACgClp4e1mmbscIdqksqtCDXb42nptBOSiUr
	8145L4WWZxV30NvSNzcOMDuCcKB0GJnpGcRw+QdOnD+Sv7WE1RfBNQwESXOxQdXhTwqT7h3r1SyTS
	gGwxvAqhej8wvn/PgVLp/Y9ch3yJaUTMRA/14M+L6pzp1ROXydnQMPb8iYKSK4vCHoirfo3VhPzXI
	1gDkQfAZv/zlNg7+bAcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdVev-0004qY-Uv; Wed, 19 Jun 2019 08:09:33 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdVem-0004pY-AY
 for linux-mtd@lists.infradead.org; Wed, 19 Jun 2019 08:09:26 +0000
X-Originating-IP: 90.88.23.150
Received: from xps13 (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr
 [90.88.23.150]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 726551BF203;
 Wed, 19 Jun 2019 08:09:05 +0000 (UTC)
Date: Wed, 19 Jun 2019 10:09:04 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: masonccyang@mxic.com.tw
Subject: Re: [PATCH v3 2/4] mtd: rawnand: Add Macronix MX25F0A NAND controller
Message-ID: <20190619100904.6b759377@xps13>
In-Reply-To: <OF5EAF94EB.AE31CF59-ON4825841E.002A2C38-4825841E.002C60BF@mxic.com.tw>
References: <1555320234-15802-1-git-send-email-masonccyang@mxic.com.tw>
 <1555320234-15802-3-git-send-email-masonccyang@mxic.com.tw>
 <20190512151820.4f2dd9da@xps13>
 <OF074A1F06.5C1A58BE-ON482583FD.0031CD95-482583FD.003437AD@mxic.com.tw>
 <20190520142333.390091d5@xps13>
 <OFADC47344.0F9941B2-ON48258403.002336E3-48258403.003141F0@mxic.com.tw>
 <20190527144250.71908bd9@xps13>
 <OFE923A8E5.50375C30-ON48258409.0009AE1B-48258409.00119767@mxic.com.tw>
 <20190617143510.4ded5728@xps13>
 <OF1C1397B4.241DC339-ON4825841D.000482A2-4825841D.0007B67E@mxic.com.tw>
 <20190618081436.5d488320@collabora.com>
 <20190618092901.3bdd9f61@collabora.com>
 <OF5EAF94EB.AE31CF59-ON4825841E.002A2C38-4825841E.002C60BF@mxic.com.tw>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_010924_683064_35E9CB42 
X-CRM114-Status: GOOD (  15.99  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, christophe.kerello@st.com,
 marcel.ziswiler@toradex.com, stefan@agner.ch, liang.yang@amlogic.com,
 linux-mtd@lists.infradead.org, lee.jones@linaro.org, richard@nod.at,
 marek.vasut@gmail.com, Boris Brezillon <boris.brezillon@collabora.com>,
 geert@linux-m68k.org, devicetree@vger.kernel.org, robh+dt@kernel.org,
 bbrezillon@kernel.org, juliensu@mxic.com.tw, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, paul.burton@mips.com, broonie@kernel.org,
 computersforpeace@gmail.com, dwmw2@infradead.org, zhengxunli@mxic.com.tw
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgTWFzb24sCgptYXNvbmNjeWFuZ0BteGljLmNvbS50dyB3cm90ZSBvbiBXZWQsIDE5IEp1biAy
MDE5IDE2OjA0OjQzICswODAwOgoKPiBIaSBCb3JpcywKPiAKPiA+IAo+ID4gUmU6IFtQQVRDSCB2
MyAyLzRdIG10ZDogcmF3bmFuZDogQWRkIE1hY3Jvbml4IE1YMjVGMEEgTkFORCBjb250cm9sbGVy
Cj4gPiAKPiA+IE9uIFR1ZSwgMTggSnVuIDIwMTkgMDg6MTQ6MzYgKzAyMDAKPiA+IEJvcmlzIEJy
ZXppbGxvbiA8Ym9yaXMuYnJlemlsbG9uQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+ID4gICAKPiA+
ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gSG93IHRvIG1ha2UgYWxsICNDUyBrZWVwIGhp
Z2ggZm9yIE5BTkQgdG8gZW50ZXIgCj4gPiA+ID4gPiA+ID4gPiBsb3ctcG93ZXIgc3RhbmRieSBt
b2RlIGlmIGRyaXZlciBkb24ndCB1c2UgICAKPiAibGVnYWN5LnNlbGVjdF9jaGlwKCkiIAo+ID4g
PiA+ID8gICAKPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiBTZWUgY29tbWl0IDAyYjRhNTI2
MDRhNCAoIm10ZDogcmF3bmFuZDogTWFrZSAtPnNlbGVjdF9jaGlwKCkgICAgCj4gPiA+ID4gb3B0
aW9uYWwgICAKPiA+ID4gPiA+ID4gPiB3aGVuIC0+ZXhlY19vcCgpIGlzIGltcGxlbWVudGVkIikg
d2hpY2ggc3RhdGVzOgo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ICAgICAgICAgIldoZW4g
Wy0+c2VsZWN0X2NoaXAoKSBpc10gbm90IGltcGxlbWVudGVkLCB0aGUgY29yZSAgIAo+IGlzIAo+
ID4gPiA+IGFzc3VtaW5nICAgCj4gPiA+ID4gPiA+ID4gICAgdGhlIENTIGxpbmUgaXMgYXV0b21h
dGljYWxseSBhc3NlcnRlZC9kZWFzc2VydGVkIGJ5IHRoZSAgIAo+IGRyaXZlciAKPiA+ID4gPiA+
ID4gPiAgICAtPmV4ZWNfb3AoKSBpbXBsZW1lbnRhdGlvbi4iICAgCj4gPiA+ID4gPiA+ID4gCj4g
PiA+ID4gPiA+ID4gT2YgY291cnNlLCB0aGUgYWJvdmUgaXMgcmlnaHQgb25seSB3aGVuIHRoZSBj
b250cm9sbGVyIGRyaXZlciAgICAKPiAgCj4gPiA+ID4gc3VwcG9ydHMgICAKPiA+ID4gPiA+ID4g
PiB0aGUgLT5leGVjX29wKCkgaW50ZXJmYWNlLiAgIAo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4g
Q3VycmVudGx5LCBpdCBzZWVtcyB0aGF0IHdlIHdpbGwgZ2V0IHRoZSBpbmNvcnJlY3QgZGF0YSBh
bmQgICAKPiBlcnJvcgo+ID4gPiA+ID4gPiBvcGVyYXRpb24gZHVlIHRvIENTIGluIGVycm9yIHRv
Z2dsaW5nIGlmIENTIGxpbmUgaXMgY29udHJvbGxlZCAgIAo+IGluIAo+ID4gPiA+ID4gPiAtPmV4
ZWNfb3AoKS4gICAKPiA+IAo+ID4gT2gsIGFuZCBwbGVhc2UgcHJvdmlkZSB0aGUgbW9kaWZpY2F0
aW9ucyB5b3UgYWRkZWQgb24gdG9wIG9mIHRoaXMgcGF0Y2guCj4gPiBSaWdodCBub3cgd2UncmUg
c3BlY3VsYXRpbmcgb24gd2hhdCB5b3UndmUgZG9uZSB3aGljaCBpcyBkZWZpbml0ZWx5IG5vdAo+
ID4gYW4gZWZmaWNpZW50IHdheSB0byBkZWJ1ZyB0aGlzIHNvcnQgb2YgaXNzdWVzLiAgCj4gCgpX
ZSByZWFsbHkgbmVlZCB0byBzZWUgdGhlIGRhdGFzaGVldCBvZiB0aGUgTkFORCBjaGlwIHdoaWNo
IGhhcyBhCnByb2JsZW0gYW5kIGhvdyB0aGlzIExQTSBtb2RlIGlzIGFkdmVydGl6ZWQgdG8gdW5k
ZXJzdGFuZCB3aGF0IHRoZQpjaGlwIGV4cGVjdHMgYW5kIGV2ZW50dWFsbHkgaG93IHRvIHdvcmst
YXJvdW5kIGl0LgoKPiBUaGUgcGF0Y2ggaXMgdG8gYWRkIGluIGJlZ2lubmluZyBvZiAtPmV4ZWNf
b3AoKSB0byBjb250cm9sIENTIyBsb3cgYW5kIAo+IGJlZm9yZSByZXR1cm4gZnJvbSAtPmV4ZWNf
b3AoKSB0byBjb250cm9sIENTIyBIaWdoLgo+IGkuZSwuCj4gc3RhdGljIGluIG14aWNfbmFuZF9l
eGVjX29wKCApCj4gewo+ICBjc190b19sb3coKTsKPiAKPiAKPiAKPiAgY3NfdG9faGlnaCgpOwo+
ICByZXR1cm47Cj4gfQo+IAo+IEJ1dCBmb3IgbmFuZF9vbmZpX2RldGVjdCgpLCAKPiBpdCBjYWxs
cyBuYW5kX3JlYWRfcGFyYW1fcGFnZV9vcCgpIGFuZCB0aGVuIG5hbmRfcmVhZF9kYXRhX29wKCku
Cj4gbXhpY19uYW5kX2V4ZWNfb3AoKSBiZSBjYWxsZWQgdHdpY2UgZm9yIG5hbmRfb25maV9kZXRl
Y3QoKQoKWWVzLCB0aGlzIGlzIGV4cGVjdGVkIGFuZCB1c3VhbGx5IGNoaXBzIGRvbid0IGNhcmUu
Cgo+IGFuZAo+IGRyaXZlciB3aWxsIGdldCBpbmNvcnJlY3QgT05GSSBwYXJhbWV0ZXIgdGFibGUg
ZGF0YSBmcm9tIAo+IG5hbmRfcmVhZF9kYXRhX29wKCkuCj4gCgpUaGFua3MsCk1pcXXDqGwKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
