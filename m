Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 197E1584DC
	for <lists+linux-mtd@lfdr.de>; Thu, 27 Jun 2019 16:50:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zGENz/9iKHvbhX5zTTnEoNpQbrIIo1pz9tMfc4mrHt4=; b=Hl4sCZgdfFh8V8
	Jb9VhwWdNV8ny2d6EUvW+d+KpkySuF7d3ZshVUZ/1dhd1Y7TjWeZ2u2OYtMwKfkrP8egyv5cXA3dK
	Vwh9AX1P9ehyOnfHRQePgkI6jygWFLZGmmLJIoH7iDt0tQ7BeZQ5r6iwqs1k0sYPSx0/Hie1b+t5k
	onpNs2U4SDQFUWudA52Hyc4mKddal5mlpYxlbjcWuZqVpYjTko908cldyJy9hoG72kDI3HX6A6gRB
	K2RA8IPpMbNH/uJu6BB/3h6ZSDWJSrs4D/c4ljE2Faot6R9G8naNhG8sGkfCxqOv0urP0i7IrzI38
	L8GftnDr8bD9stvTsvXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgVj5-0003wW-RK; Thu, 27 Jun 2019 14:50:15 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgViJ-0003fO-Om
 for linux-mtd@lists.infradead.org; Thu, 27 Jun 2019 14:49:30 +0000
Received: from xps13 (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 9296D240019;
 Thu, 27 Jun 2019 14:49:15 +0000 (UTC)
Date: Thu, 27 Jun 2019 16:49:14 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: "Shivamurthy Shastri (sshivamurthy)" <sshivamurthy@micron.com>
Subject: Re: [PATCH v3 00/12] Introduce generic ONFI support
Message-ID: <20190627164914.1cae84ff@xps13>
In-Reply-To: <MN2PR08MB59514E77250C3F0DA76D4801B8140@MN2PR08MB5951.namprd08.prod.outlook.com>
References: <MN2PR08MB59514E77250C3F0DA76D4801B8140@MN2PR08MB5951.namprd08.prod.outlook.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_074928_614533_57F65F89 
X-CRM114-Status: GOOD (  10.21  )
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
Cc: Lucas Stach <dev@lynxeye.de>, Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Richard Weinberger <richard@nod.at>, Yixun Lan <yixun.lan@amlogic.com>,
 Chuanhong Guo <gch981213@gmail.com>, Stefan Agner <stefan@agner.ch>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Paul Cercueil <paul@crapouillou.net>, Marek Vasut <marek.vasut@gmail.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 Anders Roxell <anders.roxell@linaro.org>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>,
 "Bean Huo \(beanhuo\)" <beanhuo@micron.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgU2hpdmFtdXJ0aHksCgoiU2hpdmFtdXJ0aHkgU2hhc3RyaSAoc3NoaXZhbXVydGh5KSIgPHNz
aGl2YW11cnRoeUBtaWNyb24uY29tPiB3cm90ZSBvbgpNb24sIDMgSnVuIDIwMTkgMTI6NDM6MjAg
KzAwMDA6Cgo+IEN1cnJlbnQgc3VwcG9ydCB0byBPTkZJIHBhcmFtZXRlciBwYWdlIGlzIG9ubHkg
Zm9yIHJhdyBOQU5ELCB0aGlzIHBhdGNoCj4gc2VyaWVzIHR1cm4gT05GSSBzdXBwb3J0IGludG8g
Z2VuZXJpYy4gU28gdGhhdCwgb3RoZXIgTkFORCBkZXZpY2VzIGxpa2UKPiBTUEkgTkFORCBjYW4g
dXNlIHRoaXMuCj4gCj4gVGhlcmUgYXJlIGZpdmUgcGFydHMgaW4gdGhpcyBzZXJpZXMuCj4gMS4g
UHJlcGFyZSBmb3IgdHVybmluZyBPTkZJIGludG8gZ2VuZXJpYwo+IDIuIFR1cm4gT05GSSBpbnRv
IGdlbmVyaWMsIHdoaWNoIGNhbiBiZSB1c2VkIGJ5IFNQSSBOQU5EcyBsYXRlcgo+IDMuIFR1cm4g
U1BJIE5BTkQgY29yZSB0byB1c2UgcGFyYW1ldGVyIHBhZ2UKPiA0LiBSZWRlc2lnbiBNaWNyb24g
U1BJIE5BTkQgZHJpdmVyIGltcGxlbWVudGF0aW9uCj4gNS4gU3VwcG9ydCBmb3IgbmV3IE1pY3Jv
biBTUEkgTkFORCBkZXZpY2VzCj4gCgpJIGFtIHZlcnkgc29ycnkgZm9yIHRoZSBkZWxheSwgSSB3
aWxsIGhhdmUgYSBkZWVwIGxvb2sgYXQgeW91ciBzZXJpZXMKdmVyeSBzb29uLgoKPiBDaGFuZ2Vz
IGluIFYzCj4gLS0tLS0tLS0tLS0tLQo+IAo+ICogUmViYXNlZCB0byBuYW5kL25leHQKPiAqIFNw
bGl0IHRoZSBwYXRjaGVzIGFzIHBlciBzdWdnZXN0aW9uCj4gKiBBZGRyZXNzZWQgdGhlIGNvbW1l
bnRzCj4gKiBTb21lIGZpeGVzIHdoaWNoIEkgbWlzc2VkIGluIGxhc3QgdmVyc2lvbgoKQXMgYSBz
aW1wbGUgbm90ZSwgcGxlYXNlIG1pbmQgdGhhdCAiYWRkcmVzc2VkIHRoZSBjb21tZW50cyIgaXMg
d2F5IHRvbwpnZW5lcmljLiAiU29tZSBmaXhlcyIgYXMgd2VsbC4gSSBoYXZlIHBsZW50eSBvZiBz
ZXJpZXMgdG8gZm9sbG93LCB5b3UKbmVlZCB0byBkbyB2ZXJ5IGNhcmVmdWwgd2hlbiB5b3Ugd3Jp
dGUgdGhpcyBjaGFuZ2Vsb2csIGl0IGlzIGltcG9ydGFudApmb3IgbWUuCgpBbHNvLCBmb3IgdGhl
IG5leHQgc2VyaWVzIHlvdSBzdWJtaXQsIHBsZWFzZSB1c2UgYSB0aHJlYWRlZCBsb2dpYyB3aGVy
ZQphbGwgcGF0Y2hlcyBhcmUgYW5zd2VycyB0byB0aGUgY292ZXIgbGV0dGVyICh0aGlzIHdheSBp
dCBhcHBlYXJzIGFzIGEKdGhyZWFkIGFuZCBpdCBpcyBjb25zaWRlcmVkIGFzIG9uZSBzZXJpZXMg
YnkgcGF0Y2h3b3JrLgoKVGhhbmtzLApNaXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGlu
ZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
bXRkLwo=
