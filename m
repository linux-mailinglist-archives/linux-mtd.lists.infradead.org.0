Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C10D4E982B
	for <lists+linux-mtd@lfdr.de>; Wed, 30 Oct 2019 09:29:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I1ZvowmiQdSvWOfQy99JpwSe2GR79yiqekmAEbYub2I=; b=B1EiQ1CAEOlPHq
	wn+UUPZxMm/8IBJ1KZDCBXT0BfULE3MUrNTY11gODjFDEf6x3c9JEZqv7dVQmxPGR4zEC9e5uuihT
	hFkAR2+2stPHIR7b+xGZQTrKQ84Oj5D7pwW5aDS78Pl8YsRHvCluD9IfrXdY3QBAdsOV5OYncpyzs
	X30F5Cz1tE5+6xgax59yxKdutlw1QIzZnQwlSSec2SWAiu9+31mf82xcliexiYXPpECvB3jOyhJji
	v9kYcnE6b5TY5QE7KbfsjWNdlqYFJ/eixNSbWJYZhkhERSDu+8IgewdDBAQHKR6ZvywwfosjTgj0h
	wja+oz7RSXxzj/xNY4+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPjLl-0006WS-SX; Wed, 30 Oct 2019 08:29:05 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPjLa-0006Vu-Ul
 for linux-mtd@lists.infradead.org; Wed, 30 Oct 2019 08:28:56 +0000
X-Originating-IP: 81.185.173.67
Received: from xps13 (67.173.185.81.rev.sfr.net [81.185.173.67])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 78C67240005;
 Wed, 30 Oct 2019 08:28:49 +0000 (UTC)
Date: Wed, 30 Oct 2019 09:28:49 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard.weinberger@gmail.com>
Subject: Re: [PATCH] MAINTAINERS: ubi/ubifs: Update the Git repository
Message-ID: <20191030092849.342b60b7@xps13>
In-Reply-To: <CAFLxGvw21S=_pyYaANUeXC--H9YSq0H2qUXPkdznHg0H3vxbTQ@mail.gmail.com>
References: <20191028160208.1110-1-miquel.raynal@bootlin.com>
 <CAFLxGvw21S=_pyYaANUeXC--H9YSq0H2qUXPkdznHg0H3vxbTQ@mail.gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_012855_130098_39DD7989 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Marek Vasut <marek.vasut@gmail.com>,
 linux-mtd@lists.infradead.org, Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

ClJpY2hhcmQgV2VpbmJlcmdlciA8cmljaGFyZC53ZWluYmVyZ2VyQGdtYWlsLmNvbT4gd3JvdGUg
b24gTW9uLCAyOCBPY3QKMjAxOSAxNzowNDozOSArMDEwMDoKCj4gT24gTW9uLCBPY3QgMjgsIDIw
MTkgYXQgNTowMiBQTSBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPiB3
cm90ZToKPiA+Cj4gPiBVQkkvVUJJRlMgZGV2ZWxvcG1lbnQgbm93IGhhcHBlbnMgb24gUmljaGFy
ZCBXZWluYmVyZ2VyJ3Mga2VybmVsLm9yZwo+ID4gJ3ViaWZzJyByZXBvc2l0b3J5Lgo+ID4KPiA+
IFNpZ25lZC1vZmYtYnk6IE1pcXVlbCBSYXluYWwgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5jb20+
Cj4gPiAtICAKPiAKPiBBY2tlZC1ieTogUmljaGFyZCBXZWluYmVyZ2VyIDxyaWNoYXJkQG5vZC5h
dD4KCkFwcGxpZWQgdG8gbXRkL25leHQgdG8gYXZvaWQgY29uZmxpY3RzIHdpdGggdGhlIHJlY2Vu
dCBjaGFuZ2VzLgoKClRoYW5rcywKTWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcg
bGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10
ZC8K
