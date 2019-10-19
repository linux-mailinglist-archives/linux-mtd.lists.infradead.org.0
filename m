Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23341DD7BA
	for <lists+linux-mtd@lfdr.de>; Sat, 19 Oct 2019 11:39:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QQ3NPICD0QHURj3cZgl/rCQm+Gps+n9uKna8FiVeF3s=; b=cqPL4KDxbal1bT
	6wL372u5HqFspVD+exdf4a2w05rP15oDKlA2k+d7ktplkQedl18nE6L5uZXcHUoXRc+rXnDOvsE5s
	slxq39LAMc6sOquvf63xQMhV8w4eyrHpWpT9EuThLXabbiPBOxv1l4TRwBuSsw00wIssIIer2Roys
	lsTyfZPcFsD8zREk/HcRihYuhjjrlYuO5zFboi0jHu8TFhjsmiZibt9zfVsMgVnVS2TX6McazDvVR
	BO5oO2UZec3phZFGTBtQZuOPRJ3qGN0vSobkwQulFHrVI7LryFgQoobFFkQ5OvFFRG1eqKKPJ8aZn
	SE7GwLRoBTf6RcUp4C2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLlD3-00034n-TG; Sat, 19 Oct 2019 09:39:41 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLlCe-0002v6-QN; Sat, 19 Oct 2019 09:39:18 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 43C3A20002;
 Sat, 19 Oct 2019 09:39:01 +0000 (UTC)
Date: Sat, 19 Oct 2019 11:39:00 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH] mtd: rawnand: brcmnand: Fix sparse warning in
 has_flash_dma()
Message-ID: <20191019113824.15fa4f52@xps13>
In-Reply-To: <20191018233844.23838-1-f.fainelli@gmail.com>
References: <20191018233844.23838-1-f.fainelli@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_023916_992260_42A91E2A 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Kamal Dasu <kdasu.kdev@gmail.com>,
 Richard Weinberger <richard@nod.at>, open list <linux-kernel@vger.kernel.org>,
 Marek Vasut <marek.vasut@gmail.com>,
 "open list:BROADCOM STB NAND FLASH DRIVER" <linux-mtd@lists.infradead.org>,
 "open list:BROADCOM STB NAND FLASH
 DRIVER" <bcm-kernel-feedback-list@broadcom.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgRmxvcmlhbiwKCkZsb3JpYW4gRmFpbmVsbGkgPGYuZmFpbmVsbGlAZ21haWwuY29tPiB3cm90
ZSBvbiBGcmksIDE4IE9jdCAyMDE5CjE2OjM4OjQ0IC0wNzAwOgoKPiBTcGFyc2UgcmlnaHRmdWxs
eSBjb21wbGFpbmVkIGFib3V0IGhhc19mbGFzaF9kbWEoKToKPiArZHJpdmVycy9tdGQvbmFuZC9i
cmNtbmFuZC9icmNtbmFuZC5jOjk1MTo0MDogd2FybmluZzogVXNpbmcgcGxhaW4gaW50ZWdlciBh
cyBOVUxMIHBvaW50ZXIgW3NwYXJzZV0KCkkgZG9uJ3QgZ2V0IHdoeSB3b3VsZCBzcGFyc2UgY29t
cGxhaW4gYWJvdXQgdGhpcy4uLiBBbnl3YXkgSSBwcmVmZXIKdGhlICEhKDxwb2ludGVyPikgYWx0
ZXJuYXRpdmUgaWYgeW91IGRvbid0IG1pbmQuIE90aGVyd2lzZSB0aGUgIiE9Ck5VTEwiIGNvbXBh
cmlzb24gZmVlbHMgd3JvbmcuCgo+IAo+IEZpeGVzOiAyN2M1YjE3Y2QxYjEgKCJtdGQ6IG5hbmQ6
IGFkZCBOQU5EIGRyaXZlciAibGlicmFyeSIgZm9yIEJyb2FkY29tIFNUQiBOQU5EIGNvbnRyb2xs
ZXIiKQo+IFNpZ25lZC1vZmYtYnk6IEZsb3JpYW4gRmFpbmVsbGkgPGYuZmFpbmVsbGlAZ21haWwu
Y29tPgo+IC0tLQo+ICBkcml2ZXJzL210ZC9uYW5kL3Jhdy9icmNtbmFuZC9icmNtbmFuZC5jIHwg
MiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tdGQvbmFuZC9yYXcvYnJjbW5hbmQvYnJjbW5hbmQuYyBi
L2RyaXZlcnMvbXRkL25hbmQvcmF3L2JyY21uYW5kL2JyY21uYW5kLmMKPiBpbmRleCAxNWVmMzBi
MzY4YTUuLjczZjdhMDk0NTM5OSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL210ZC9uYW5kL3Jhdy9i
cmNtbmFuZC9icmNtbmFuZC5jCj4gKysrIGIvZHJpdmVycy9tdGQvbmFuZC9yYXcvYnJjbW5hbmQv
YnJjbW5hbmQuYwo+IEBAIC05MDksNyArOTA5LDcgQEAgc3RhdGljIGlubGluZSB2b2lkIGJyY21u
YW5kX3NldF93cChzdHJ1Y3QgYnJjbW5hbmRfY29udHJvbGxlciAqY3RybCwgYm9vbCBlbikKPiAg
Cj4gIHN0YXRpYyBpbmxpbmUgYm9vbCBoYXNfZmxhc2hfZG1hKHN0cnVjdCBicmNtbmFuZF9jb250
cm9sbGVyICpjdHJsKQo+ICB7Cj4gLQlyZXR1cm4gY3RybC0+Zmxhc2hfZG1hX2Jhc2U7Cj4gKwly
ZXR1cm4gY3RybC0+Zmxhc2hfZG1hX2Jhc2UgIT0gTlVMTDsKPiAgfQo+ICAKPiAgc3RhdGljIGlu
bGluZSB2b2lkIGRpc2FibGVfY3RybF9pcnFzKHN0cnVjdCBicmNtbmFuZF9jb250cm9sbGVyICpj
dHJsKQoKClRoYW5rcywKTWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
