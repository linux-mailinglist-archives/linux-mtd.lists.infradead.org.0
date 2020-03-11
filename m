Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8540E181199
	for <lists+linux-mtd@lfdr.de>; Wed, 11 Mar 2020 08:17:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J0SzNH7odEzArLdUij4uUdCKttaq8j28mGqq2gzNauw=; b=K4TIuEr7DbpQFu
	gGjk+A6SX223siGQKMs6MaE1ALu4J7Gqg76frlTnpLx1vapEgeZQOLixfcbHondFUFfBCx5aLKEgM
	Da0lJ6zmlUJdE581r+Pt5eZs31Qf8aVlBcJpRh6zko50I56zB5FpNtt9SWBZE3W8VTh5x9U2wSJB0
	CVinIFIHZI1XClXZXP25fOD22AqRd2dvSJ2W6zvmw3XDHJEtobyiq/MIzsVi7PaD9+U+OALBDlyG1
	qGIqAyjuB5LeRDcLuurJzjXOWpt4f3OgOXPY1J0doCjl8ksWr7pfNpYmuJ6+w1O4nG3OKJszaSiME
	1xCTMDmkC+yGifEls6Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBvcM-0006CX-NP; Wed, 11 Mar 2020 07:17:26 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBvcE-0006C4-ET
 for linux-mtd@lists.infradead.org; Wed, 11 Mar 2020 07:17:20 +0000
X-Originating-IP: 90.89.41.158
Received: from xps13 (lfbn-tou-1-1473-158.w90-89.abo.wanadoo.fr [90.89.41.158])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 44C9B1C000D;
 Wed, 11 Mar 2020 07:17:03 +0000 (UTC)
Date: Wed, 11 Mar 2020 08:17:02 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Piotr Sroka <piotrs@cadence.com>
Subject: Re: [PATCH 2/4] mtd: rawnand: cadence: fix calculating avaialble
 oob size
Message-ID: <20200310193823.76319593@xps13>
In-Reply-To: <20200310182951.17794-1-miquel.raynal@bootlin.com>
References: <1581328530-29966-2-git-send-email-piotrs@cadence.com>
 <20200310182951.17794-1-miquel.raynal@bootlin.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_001718_617023_A2235C71 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.197 listed in wl.mailspike.net]
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 linux-kernel@vger.kernel.org, Marek Vasut <marek.vasut@gmail.com>,
 linux-mtd@lists.infradead.org, Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>,
 Kazuhiro Kasai <kasai.kazuhiro@socionext.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgUGlvdHIsCgpNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPiB3cm90
ZSBvbiBUdWUsIDEwIE1hciAyMDIwCjE5OjI5OjUxICswMTAwOgoKPiBPbiBNb24sIDIwMjAtMDIt
MTAgYXQgMDk6NTU6MjYgVVRDLCBQaW90ciBTcm9rYSB3cm90ZToKPiA+IFByZXZpb3VzbHkgZWNj
X3NlY3RvciBzaXplIHdhcyB1c2VkIGZvciBjYWxjdWxhdGlvbiBidXQgaXRzIHZhbHVlCj4gPiB3
YXMgbm90IHlldCBrbm93bi4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogUGlvdHIgU3Jva2EgPHBp
b3Ryc0BjYWRlbmNlLmNvbT4gIAo+IAo+IEFwcGxpZWQgdG8gaHR0cHM6Ly9naXQua2VybmVsLm9y
Zy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvbXRkL2xpbnV4LmdpdCBuYW5kL25leHQsIHRoYW5r
cy4KPiAKCkkgYXBwbGllZCBwYXRjaCAyLCAzIGFuZCA0IGFmdGVyIGhhdmluZyBjaGFuZ2VkIHRo
ZSBjb21taXQgbWVzc2FnZSBhcwpzdWdnZXN0ZWQgYW5kIHdpdGggdGhlIEZpeGVzL0NjOiBzdGFi
bGUgdGFncyBhZGRlZC4KClRoYW5rcywKTWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxp
bmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LW10ZC8K
