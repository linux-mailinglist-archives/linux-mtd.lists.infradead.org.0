Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58AC11F6AEB
	for <lists+linux-mtd@lfdr.de>; Thu, 11 Jun 2020 17:24:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f6UeRk0sAyxJYD2rEbov2mWTVkElB2VWgqz0KEpIiTo=; b=apgCtSJojZmx44
	jMSKGIew9MsZTMkiQb8X31++zsYJgLFzzP4T5nLlhhUcKf/JM13ptHLRmWFiZc/B7eOvCqB+9qIQT
	KI0Ckx3uW5w8tOP+lPrE9w4bsKsPd5Gtoj9qyvdbafGG0fOG7yNvDQZd6GVaJXncXa2Li3+Uh8qjd
	qwn0KDvPTVELr7qX+k1bgCtNt7ijefVY9xcIHfO7wZCxEbZfq65TqaUsZ8+hdKUdtQjnlCttu91wk
	xNvwBcfeuRiaWlZimCzMhFInyoDM97VVv2FfguzMU3EHi68yCUDM7X4ObtQhbwW4mb85AgTGcr7+T
	B6bstJk8ONPnsG61eNUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjP4D-0000mv-SD; Thu, 11 Jun 2020 15:24:33 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjP43-0000lw-9F
 for linux-mtd@lists.infradead.org; Thu, 11 Jun 2020 15:24:24 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 523F120000C;
 Thu, 11 Jun 2020 15:24:18 +0000 (UTC)
Date: Thu, 11 Jun 2020 17:24:17 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Kamal Dasu <kdasu.kdev@gmail.com>
Subject: Re: [PATCH 1/2] mtd: rawnand: brcmnand: Don't default to edu transfer
Message-ID: <20200611172417.66eb6c3b@xps13>
In-Reply-To: <CAC=U0a0ReuPpxZjB2vV_YNynrMx4OjzPmPPyJeVbhueFgFeNbQ@mail.gmail.com>
References: <20200611054454.2547-1-kdasu.kdev@gmail.com>
 <20200611091604.1bec2418@xps13>
 <CAC=U0a0ReuPpxZjB2vV_YNynrMx4OjzPmPPyJeVbhueFgFeNbQ@mail.gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_082423_462726_EFF62328 
X-CRM114-Status: GOOD (  18.75  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.178.232 listed in wl.mailspike.net]
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Brian Norris <computersforpeace@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgS2FtYWwsCgpLYW1hbCBEYXN1IDxrZGFzdS5rZGV2QGdtYWlsLmNvbT4gd3JvdGUgb24gVGh1
LCAxMSBKdW4gMjAyMCAxMToyMjo1NgotMDQwMDoKCj4gT24gVGh1LCBKdW4gMTEsIDIwMjAgYXQg
MzoxNiBBTSBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPiB3cm90ZToK
PiA+Cj4gPiBIaSBLYW1hbCwKPiA+Cj4gPiBLYW1hbCBEYXN1IDxrZGFzdS5rZGV2QGdtYWlsLmNv
bT4gd3JvdGUgb24gVGh1LCAxMSBKdW4gMjAyMCAwMTo0NDo1Mwo+ID4gLTA0MDA6Cj4gPiAgCj4g
PiA+IFdoZW4gZmxhc2gtZG1hIGlzIGFic2VudCBkbyBub3QgZGVmYXVsdCB0byB1c2luZyBmbGFz
aC1lZHUuCj4gPiA+IE1ha2Ugc3VyZSBmbGFzaC1lZHUgaXMgZW5hYmxlZCBiZWZvcmUgc2V0dGlu
ZyBFRFUgdHJhbnNmZXIKPiA+ID4gZnVuY3Rpb24uCj4gPiA+Cj4gPiA+IEZpeGVzOiBhNWQ1M2Fk
MjZhOGIgKCJtdGQ6IHJhd25hbmQ6IGJyY21uYW5kOiBBZGQgc3VwcG9ydCBmb3IgZmxhc2gtZWR1
IGZvciBkbWEgdHJhbnNmZXJzIikKPiA+ID4gU2lnbmVkLW9mZi1ieTogS2FtYWwgRGFzdSA8a2Rh
c3Uua2RldkBnbWFpbC5jb20+Cj4gPiA+IC0tLQo+ID4gPiAgZHJpdmVycy9tdGQvbmFuZC9yYXcv
YnJjbW5hbmQvYnJjbW5hbmQuYyB8IDUgKysrLS0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAzIGlu
c2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL210ZC9uYW5kL3Jhdy9icmNtbmFuZC9icmNtbmFuZC5jIGIvZHJpdmVycy9tdGQvbmFuZC9y
YXcvYnJjbW5hbmQvYnJjbW5hbmQuYwo+ID4gPiBpbmRleCA4ZjlmZmI0NmEwOWYuLjBjMWQ2ZTU0
MzU4NiAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9tdGQvbmFuZC9yYXcvYnJjbW5hbmQvYnJj
bW5hbmQuYwo+ID4gPiArKysgYi9kcml2ZXJzL210ZC9uYW5kL3Jhdy9icmNtbmFuZC9icmNtbmFu
ZC5jCj4gPiA+IEBAIC0yOTUzLDggKzI5NTMsOSBAQCBpbnQgYnJjbW5hbmRfcHJvYmUoc3RydWN0
IHBsYXRmb3JtX2RldmljZSAqcGRldiwgc3RydWN0IGJyY21uYW5kX3NvYyAqc29jKQo+ID4gPiAg
ICAgICAgICAgICAgIGlmIChyZXQgPCAwKQo+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgZ290
byBlcnI7Cj4gPiA+Cj4gPiA+IC0gICAgICAgICAgICAgLyogc2V0IGVkdSB0cmFuc2ZlciBmdW5j
dGlvbiB0byBjYWxsICovCj4gPiA+IC0gICAgICAgICAgICAgY3RybC0+ZG1hX3RyYW5zID0gYnJj
bW5hbmRfZWR1X3RyYW5zOwo+ID4gPiArICAgICAgICAgICAgIGlmIChoYXNfZWR1KGN0cmwpKQo+
ID4gPiArICAgICAgICAgICAgICAgICAgICAgLyogc2V0IGVkdSB0cmFuc2ZlciBmdW5jdGlvbiB0
byBjYWxsICovCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICBjdHJsLT5kbWFfdHJhbnMgPSBi
cmNtbmFuZF9lZHVfdHJhbnM7ICAKPiA+Cj4gPiBEb2VzIHRoaXMgZmFsbGJhY2sgdG8gcmV0dXJu
aW5nIGFuIGVycm9yIGluIGNhc2UgIWhhc19lZHUoKSA/IE90aGV3aXNlLAo+ID4gaG93IGlzIGl0
IGhhbmRsZWQ/Cj4gPiAgCj4gCj4gIFRoZSBkcml2ZXIgd2lsbCBkZWZhdWx0IHRvIHBpbyBpZiBi
b3RoIGZsYXNoLWRtYSBhbmQgZmFsc2gtZWR1IGFyZQo+IG5vdCBwcmVzZW50Lgo+IAo+ID4gVGhh
bmtzLAo+ID4gTWlxdcOobCAgCj4gCj4gS2FtYWwKCgpPaywgdGhhbmtzIGZvciB0aGUgY2xhcmlm
aWNhdGlvbiEKClRoYW5rcywKTWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlz
dApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
