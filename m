Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF90760CE0
	for <lists+linux-mtd@lfdr.de>; Fri,  5 Jul 2019 23:02:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WzsCMdWSSlI7NYoFsKbTc4kokt6nC/+N4VVnnmD37ks=; b=pZZ4W+zhDgb6AH
	ZrTazYKQMy7ay25hjN1A2Qo6MnhrNtmPMGwsRe9R/xSo7hMgJXMPHhpWCKd+C/CcGUgTfqQm774HH
	FlfZSU4CK65GDHNu9G3Ea+om8Q9WWw5F+crkR5LIDjHR1xxkFL0aQfgY8khPWZFjl88uNAXoLsZ5z
	vCnbNih8cnS9MeCNlKobAqOhGncszF/qB+3HED+UYk6yTqPEnwDbTEPcQ4tni0y/n9IQBTtl4/gU1
	y4PLv2O4gthgI9zKbZK7oVH8YueI2rR1wdZqY/lcKyQYJDFkTln9Vp2xd2uL/tA1OSZXdsQoxZHU0
	w+SiU0EYTXrzEpC0Eynw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjVLt-0007ET-C4; Fri, 05 Jul 2019 21:02:41 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjVLR-00072p-Va; Fri, 05 Jul 2019 21:02:15 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 3483620009;
 Fri,  5 Jul 2019 21:02:10 +0000 (UTC)
Date: Fri, 5 Jul 2019 23:02:08 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, David Woodhouse
 <dwmw2@infradead.org>, Brian Norris <computersforpeace@gmail.com>, Marek
 Vasut <marek.vasut@gmail.com>, Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Maxime Ripard
 <maxime.ripard@bootlin.com>
Subject: Re: [PATCH 1/2] Revert "mtd: rawnand: sunxi: Add A23/A33 DMA support"
Message-ID: <20190705230208.2ed60a69@xps13>
In-Reply-To: <20190705101232.30164-1-miquel.raynal@bootlin.com>
References: <20190705101232.30164-1-miquel.raynal@bootlin.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_140214_177295_E6F5FA11 
X-CRM114-Status: UNSURE (   7.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Cc: Chen-Yu Tsai <wens@csie.org>, linux-mtd@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGVsbG8sCgpNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPiB3cm90ZSBv
biBGcmksICA1IEp1bCAyMDE5CjEyOjEyOjMxICswMjAwOgoKPiBUaGlzIHJldmVydHMgY29tbWl0
IGM0OTgzNmYwNWFhMTUyODJmNzI4MGUwNmVkZTNmNmY4YTYzMjQ4MzMuCj4gCj4gVGhlIGNvbW1p
dCBpcyB3cm9uZyBhbmQgaXRzIGFwcHJvYWNoIGFjdHVhbGx5IGRvZXMgbm90IHdvcmsuIExldCdz
Cj4gcmV2ZXJ0IGl0IGluIG9yZGVyIHRvIGFkZCB0aGUgZmVhdHVyZSB3aXRoIGEgY2xlYW4gcGF0
Y2guCj4gCj4gU2lnbmVkLW9mZi1ieTogTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290
bGluLmNvbT4KPiAtLS0KCkJvdGggcGF0Y2hlcyBhcHBsaWVkIHRvIG10ZC9uZXh0IHdpdGggdGhl
IGZvbGxvd2luZyB0YWcgYWRkZWQ6CgpGaXhlczogYzQ5ODM2ZjA1YWExICgibXRkOiByYXduYW5k
OiBzdW54aTogQWRkIEEyMy9BMzMgRE1BIHN1cHBvcnQiKQoKClRoYW5rcywKTWlxdcOobAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
