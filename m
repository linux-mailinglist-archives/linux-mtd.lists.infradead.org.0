Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DACE3136064
	for <lists+linux-mtd@lfdr.de>; Thu,  9 Jan 2020 19:46:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+kv2+4AJTx8MAxGcSB80UhGW3k6mSEUicZl4kShjK24=; b=E2jzdBhG+CvEVz
	aYLlZLPRNWVdt8PKNElxplGP9PmMyCjI9IMGp9NTAkxzX+hK5ATjjVM0/RX6LbsES+96Nf14lJIbu
	fLtbOR+BzKPnwuZlFNUqNJFrEXCpRBwYaNDt73k1nrI+YT8/McguVXd4nUPajMyNJKOUsa00XoQQt
	OabaO0qVb/jNyUOvjbUH8vnweKY/xeNNYGIOrRZwXwfdTtyyHBpQSGrJYU6S+z/7/35Gh3sxXW6FC
	nwk0+BAgZ5iRN5ocxDrqq/Qq9DSFJIKkGNurYNDWrcE2iJAAeoryvFUl/XLTpkd0vvsL5LpGFlSUs
	ZJBMrUOA+C1ePCZ/F+FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipcp3-00028C-86; Thu, 09 Jan 2020 18:46:21 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipcos-00027o-HV
 for linux-mtd@lists.infradead.org; Thu, 09 Jan 2020 18:46:12 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 5E30324000A;
 Thu,  9 Jan 2020 18:46:07 +0000 (UTC)
Date: Thu, 9 Jan 2020 19:45:56 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>
Subject: Re: [PATCH v2] mtd: implement proper partition handling
Message-ID: <20200109194556.34cf67dc@xps13>
In-Reply-To: <1737779363.17836.1578595384783.JavaMail.zimbra@nod.at>
References: <20191230111948.27005-1-miquel.raynal@bootlin.com>
 <1651325521.16954.1578526458487.JavaMail.zimbra@nod.at>
 <20200109191304.636c82e7@xps13>
 <1737779363.17836.1578595384783.JavaMail.zimbra@nod.at>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_104610_717247_F3DB0BA7 
X-CRM114-Status: GOOD (  14.16  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Boris Brezillon <boris.brezillon@collabora.com>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgUmljaGFyZCwKClJpY2hhcmQgV2VpbmJlcmdlciA8cmljaGFyZEBub2QuYXQ+IHdyb3RlIG9u
IFRodSwgOSBKYW4gMjAyMCAxOTo0MzowNAorMDEwMCAoQ0VUKToKCj4gTWlxdWVsLAo+IAo+IC0t
LS0tIFVyc3Byw7xuZ2xpY2hlIE1haWwgLS0tLS0KPiA+PiBXaGF0IHByb2JsZW0gZG9lcyB0aGlz
IHNvbHZlPwo+ID4+IC4uLmJlc2lkZSBvZiBhIG5pY2UgZGlmZnN0YXQgd2hpY2ggcmVtb3ZlcyBt
b3JlIHRoYW4gaXQgYWRkcy4gOi0pICAKPiA+IAo+ID4gSXQgaXMgbXVjaCBlYXNpZXIgdG8gZXNj
YWxhZGUgdG8gdGhlIHRvcCBtb3N0ICJtYXN0ZXIiIGRldmljZSB3aGVuCj4gPiB0aGVyZSBhcmUg
bXVsdGlwbGUgbGV2ZWxzIG9mIHBhcnRpdGlvbmluZywgd2hpY2ggd2FzIG5vdCBjbGVhbmx5Cj4g
PiBkZXNjcmliZWQgSU1ITy4gQWxzbyBpdCBpcyBhbHJlYWR5IHVzZWQgaW4gdGhlIE1MQy1pbi1w
c2V1ZG8tU0xDLW1vZGUKPiA+IHNlcmllcyA6KSAgCj4gCj4gT2suIEluIGZhY3QgSSAiZm91bmQi
IHRoaXMgcGF0Y2ggbXkgbG9va2luZyBhdCB0aGUgU0xDIGVtdWxhdGlvbiBwYXRjaGVzLgo+IAo+
ID4+ID4gK3N0YXRpYyBpbmxpbmUgc3RydWN0IG10ZF9pbmZvICptdGRfZ2V0X21hc3RlcihzdHJ1
Y3QgbXRkX2luZm8gKm10ZCkKPiA+PiA+ICt7Cj4gPj4gPiArCXdoaWxlIChtdGQtPnBhcmVudCkK
PiA+PiA+ICsJCW10ZCA9IG10ZC0+cGFyZW50Owo+ID4+ID4gKwo+ID4+ID4gKwlyZXR1cm4gbXRk
Owo+ID4+ID4gK30gIAo+ID4+IAo+ID4+IFNvLCBwYXJlbnQgPT0gbWFzdGVyPyAgCj4gPiAKPiA+
IHRvcCBtb3N0IHBhcmVudCAodGhlIG9uZSB3aXRob3V0IHBhcmVudCkgPT0gbWFzdGVyICEKPiA+
ICAgCj4gPj4gCj4gPj4gV2hlbiBJIGNyZWF0ZSBhIE1URCBvbnRvcCBvZiBVQkkgdXNpbmcgZ2x1
ZWJpLCB3aG8gd2lsbCBiZSBwYXJlbnQvbWFzdGVyPyAgCj4gPiAKPiA+IEkgZG9uJ3QgcmVhbGx5
IHVuZGVyc3RhbmQgdGhlIGlzc3VlIGhlcmU/ICAKPiAKPiBMZXQncyBzYXkgSSBoYXZlIG10ZDAg
d2l0aCBhbiB1YmkgYW5kIGEgdm9sdW1lICJ4eHgiLiBBZnRlciBlbmFibGluZwo+IGdsdWViaSBh
IG5ldyBtdGQxIHdpbGwgYXJyaXZlIG9uIHRoZSBzeXN0ZW0uCj4gVGhlIHN0YWNraW5nIGlzIG10
ZDAgLT4gdWJpICh2b2x1bWUgeHh4KSAtPiBtdGQxLgoKVGhpcyBpcyBtdWNoIGNsZWFyZXIsIHRo
YW5rcyEKCj4gSXMgbm93IGEgcmVsYXRpb25zaGlwIGJldHdlZW4gbXRkMSBhbmQgbXRkMD8KCk5v
IHRoZXJlIGlzIG5vbmUuIAoKPiBJJ2QgZXhwZWN0IG10ZDEncyBwYXJlbnQgYmVpbmcgbXRkMC4K
ClRoaXMgd291bGQgYmUgYSBuZXcgZmVhdHVyZSwgcmlnaHQ/IEkgZG9uJ3QgdGhpbmsgaXQgaXMg
dGhlIGNhc2UgdG9kYXkuCgpUaGFua3MsCk1pcXXDqGwKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWls
aW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1tdGQvCg==
