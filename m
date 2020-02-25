Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A08716BD11
	for <lists+linux-mtd@lfdr.de>; Tue, 25 Feb 2020 10:12:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=im2CEBh21VzyuMneM5b7zX/nkMYFVhL+0EOrdtuPrUQ=; b=gG5QJbKG2anVG8
	qLsoSq0DXkaC6KEsZoQ/DRHxvo94ubwJCEjXTuz7pggaH0nyy7vZOlNt4GJVm6jnuquOQHfAgbIIu
	o4DJwv1NPCA/wZTVlXocEc1VnIhsOeGSFpkIegYfmmnSFwruMLmcfg76IsxkRcpB1QUlL4oKzHbJy
	2FA1O+Wise6sEmRxNcs86lths2loXUcDl92RpsPSyWZG3oJhLoqs4CbIAu1DXkVUMcK4rWUg8NLqK
	W7QG4YaHrtqtFYkR/hjuJpNXHlijysW46iy7oHSLJ7dVhb6na3smo/O6fU5LvwGyJNhaK3Xd121CS
	F+PaYxWxtls4QoAw1iMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6WGN-0002Sh-Hf; Tue, 25 Feb 2020 09:12:23 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6WGJ-0002Sa-8C
 for linux-mtd@bombadil.infradead.org; Tue, 25 Feb 2020 09:12:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=piScC5SUIjhvT+MNVAWlFvWmuVs3rDa0xLHo5bZUeCQ=; b=GNNZRVieh8DYWKRidOVosEfoSt
 uwnoyFVnDrhPoqgPusqvbrS0z6qPr8+22cn+UdcqRnVc9zXqQDBn0jdAm22+5no/8lGTwXY7jYLEZ
 476bxfyQhgZ7LCXxkDV3/FLDTJkApnVZsuS4lAQlWuHwMYYy5mvpFkH9Ag4W4nOKXasHOm731+2zG
 F4ZDm1Gv8wkA31H/6v/uXYYSMcb3lWuV3HarXwGP+MYWbIMyGBJPHZXtWz/z6c0BSf+SMxPCRZn/H
 5+655+VdPTH+VLgUpMjRf4e1c8TOszE+XG6DZaLiGvu5q9UMJ4OPn4Rp42/6dNIdtNdz/BwMV+nTG
 doK56ANw==;
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6WGC-0006Nn-TD
 for linux-mtd@lists.infradead.org; Tue, 25 Feb 2020 09:12:17 +0000
X-Originating-IP: 86.201.231.92
Received: from xps13 (lfbn-tou-1-149-92.w86-201.abo.wanadoo.fr [86.201.231.92])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id D4CC140008;
 Tue, 25 Feb 2020 09:11:27 +0000 (UTC)
Date: Tue, 25 Feb 2020 10:11:27 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Vignesh Raghavendra <vigneshr@ti.com>
Subject: Re: [PATCH] MAINTAINERS: Add staging branch for HyperBus
Message-ID: <20200225101127.3236c646@xps13>
In-Reply-To: <20200225050248.20722-1-vigneshr@ti.com>
References: <20200225050248.20722-1-vigneshr@ti.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_091213_087162_98031AFF 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: -2.6 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-2.6 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.194 listed in wl.mailspike.net]
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
Cc: Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgVmlnbmVzaCwKClZpZ25lc2ggUmFnaGF2ZW5kcmEgPHZpZ25lc2hyQHRpLmNvbT4gd3JvdGUg
b24gVHVlLCAyNSBGZWIgMjAyMAoxMDozMjo0OCArMDUzMDoKCj4gVXBkYXRlIEh5cGVyQnVzIGVu
dHJ5IHdpdGggYnJhbmNoIHVzZWQgdG8gc3RhZ2UgcGF0Y2hlcyB1bmRlcgo+IG10ZC5naXQKPiAK
PiBTaWduZWQtb2ZmLWJ5OiBWaWduZXNoIFJhZ2hhdmVuZHJhIDx2aWduZXNockB0aS5jb20+Cj4g
LS0tCj4gIE1BSU5UQUlORVJTIHwgMyArKysKPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9u
cygrKQo+IAo+IGRpZmYgLS1naXQgYS9NQUlOVEFJTkVSUyBiL01BSU5UQUlORVJTCj4gaW5kZXgg
YTBkODY0OTBjMmM2Li40Yjk5MzAyNjNkYzcgMTAwNjQ0Cj4gLS0tIGEvTUFJTlRBSU5FUlMKPiAr
KysgYi9NQUlOVEFJTkVSUwo+IEBAIC03NzY5LDYgKzc3NjksOSBAQCBGOglEb2N1bWVudGF0aW9u
L0FCSS90ZXN0aW5nL2RlYnVnZnMtaHlwZXJ2Cj4gIAo+ICBIWVBFUkJVUyBTVVBQT1JUCj4gIE06
CVZpZ25lc2ggUmFnaGF2ZW5kcmEgPHZpZ25lc2hyQHRpLmNvbT4KPiArTDoJbGludXgtbXRkQGxp
c3RzLmluZnJhZGVhZC5vcmcKPiArUToJaHR0cDovL3BhdGNod29yay5vemxhYnMub3JnL3Byb2pl
Y3QvbGludXgtbXRkL2xpc3QvCgpZb3UgZG9uJ3QgbWVudGlvbiB0aGVzZSB0d28gYWRkaXRpb25z
IGluIHlvdXIgY29tbWl0IGxvZywgY2FuIHlvdSBlZGl0Cm9yIHNwbGl0IHRoZSBwYXRjaCAoYm90
aCBhcmUgZmluZSk/CgpXaXRoIHRoaXMgYWRkcmVzc2VkOgpBY2tlZC1ieTogTWlxdWVsIFJheW5h
bCA8bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4KCj4gK1Q6CWdpdCBnaXQ6Ly9naXQua2VybmVs
Lm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvbXRkL2xpbnV4LmdpdCBjZmkvbmV4dAo+ICBT
OglTdXBwb3J0ZWQKPiAgRjoJZHJpdmVycy9tdGQvaHlwZXJidXMvCj4gIEY6CWluY2x1ZGUvbGlu
dXgvbXRkL2h5cGVyYnVzLmgKClRoYW5rcywKTWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1h
aWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LW10ZC8K
