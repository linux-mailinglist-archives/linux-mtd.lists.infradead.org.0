Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5108DDFA3
	for <lists+linux-mtd@lfdr.de>; Mon, 29 Apr 2019 11:40:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mqyfk2d8/IHZoInwP2OpKpaVGra82dAhCW+BmDRFRu0=; b=Uj65G/8xyeckkz
	mgcO5tRFpVFqHpXaHHjH/rlDH1vhH7U6vQPfvinJpQRMqFMXdYGetY+6rzhZlFXRSdnJ7SP68g5Je
	GRmg/K2HoX0KtOkNqPCjt+FI+nfCn8D4CZt+1Lc3FUwkopprtS6lNbEgXytildnYfhqFeec8EOTJg
	rEeEmmO4jXNN/QvaKsRJ2/EJUp+Wrc8Riuzr4dsDC22Tk8SY2V9BuckTSZTTQiFSbU4VeIyXjRMfq
	ohTNFolz4HQJ4QvzVhQOHViA4w7mLaGov0dA107FWONByfn++Q3bHmhyuKx7lkyWY8FLRd1pt8pmy
	PCO9ZiYeXn3VB2PVoGfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL2lU-0001IM-TQ; Mon, 29 Apr 2019 09:40:00 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL2lM-0001Hv-Tf
 for linux-mtd@lists.infradead.org; Mon, 29 Apr 2019 09:39:54 +0000
Received: from xps13 (aaubervilliers-681-1-27-33.w90-88.abo.wanadoo.fr
 [90.88.147.33]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id DACF410000A;
 Mon, 29 Apr 2019 09:39:50 +0000 (UTC)
Date: Mon, 29 Apr 2019 11:39:49 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Vesta <laguna-mc@mail.com>
Subject: Re: Arguments when nanddump mtd partitions
Message-ID: <20190429113949.0213e769@xps13>
In-Reply-To: <trinity-5c9b9190-9eab-4324-be77-989be8846f42-1555169751470@3c-app-mailcom-lxa02>
References: <trinity-5c9b9190-9eab-4324-be77-989be8846f42-1555169751470@3c-app-mailcom-lxa02>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_023953_108125_0A79C540 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgVmVzdGEsCgpWZXN0YSA8bGFndW5hLW1jQG1haWwuY29tPiB3cm90ZSBvbiBTYXQsIDEzIEFw
ciAyMDE5IDE3OjM1OjUxICswMjAwOgoKPiBIZWxsbywKPiAKPiB3aGF0IHNob3VsZCBiZSB0aGUg
cHJvcGVyIGFyZ3VtZW50cyB3aGVuIG1ha2UgYmFja3VwIG9mIG10ZCBwYXJ0aXRpb25zPwo+IAo+
IG5hbmRkdW1wIC1mIC90bXAvbXRkMCAvZGV2L210ZDAKPiBvcgo+IG5hbmRkdW1wIC0tbm9lY2Mg
LS1vbWl0b29iIC1mIC90bXAvbXRkMCAvZGV2L210ZDAKPiAKPiAKPiAjIGNhdCAvcHJvYy9tdGQK
PiBkZXY6ICAgIHNpemUgICBlcmFzZXNpemUgIG5hbWUKPiBtdGQwOiAwMDA2MDAwMCAwMDAwNDAw
MCAidS1ib290Igo+IG10ZDE6IDAwMDIwMDAwIDAwMDA0MDAwICJ1LWJvb3RlbnYiCj4gbXRkMjog
MDEzZTAwMDAgMDAwMDQwMDAgIlJPTUlNQUdFIgo+IG10ZDM6IDAwNzAwMDAwIDAwMDA0MDAwICJI
QUxGSU1BR0UiCj4gbXRkNDogMDEyNjAwMDAgMDAwMDQwMDAgIkxJTlVYX1JPT1RGUyIKPiBtdGQ1
OiAwMDIwMDAwMCAwMDAwNDAwMCAiSFNfRlciCj4gLi4uCj4gCgpJIHdvdWxkIHNheSB0aGF0IGl0
IGRlcGVuZHMgb24geW91ciBjb250cm9sbGVyIGRyaXZlci4KCklkZWFsbHksIHlvdSBzaG91bGQg
cmVhZCBkYXRhK09PQiB3aXRoIEVDQyBlbmFibGVkLiBBbHNvIGVuYWJsZSB0aGUgRUNDCmNvcnJl
Y3Rpb24gd2hlbiB3cml0aW5nIGJhY2suIEJ1dCBpZiB5b3UgY29udHJvbGxlciBkcml2ZXIgaGFz
IG5vCnByb3BlciBzdXBwb3J0IGZvciBpdCBhbmQgeW91IGRvbid0IGNhcmUgYWJvdXQgT09CIChn
ZW5lcmFsbHk6IGluIGFsbApjYXNlcyBidXQgSkZGUzIpIHlvdSBtYXkgd2FudCB0byBqdXN0IGR1
bXAgdGhlIGRhdGEuCgpJZiBmb3Igc29tZSByZWFzb24geW91IGRlY2lkZSB0byBkdW1wIHRoZSBk
YXRhIGluIHJhdyBtb2RlLCB0aGVuIHlvdQp3aWxsIG5lZWQgdGhlIE9PQiBieXRlcyBhbmQgeW91
IHdpbGwgbmVlZCB0byB3cml0ZSB0aGVtIGJhY2sgaW4gcmF3Cm1vZGUgYXMgd2VsbC4KClRoYW5r
cywKTWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
