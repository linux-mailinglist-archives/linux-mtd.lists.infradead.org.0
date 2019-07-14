Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9207B67E40
	for <lists+linux-mtd@lfdr.de>; Sun, 14 Jul 2019 10:09:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GEdPFZrW5JajZ8xg7W5eV3GkAnvUHFEYWrdimCXQHds=; b=ttIiNpjKIc0hbg
	jUWI85Pw2dDwqNWtS9EfnLiuNBBNxwI62XAiCyGsml73j9LV7vHZpU4T84ErPjLDZL683JR87llIU
	nnaHCqwPgk4eDYso5J4c9EbtcoqDHaQl/2gs+S/a58VOVzGxi6neg6tYzVMpqHnLz8xl0BULOOHxO
	o/SptqYaAOerEUwUx/hmEur5I3SlQzw38Y2KOV/2zXYA5FLq9VW1d7sgfDS71tIn/29FICUnIVbI8
	1wpEerYSjzcFp4oi3jwRLsJK5dEXgOkz9apCoTtQ7prQEeYSQQeUdFb840PPzXHpzSME9CJGFVNhF
	CraUWG2hMe/xgUhImKfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmZYx-00027c-52; Sun, 14 Jul 2019 08:08:51 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmZYd-00026F-6M
 for linux-mtd@lists.infradead.org; Sun, 14 Jul 2019 08:08:32 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 795D26074CD5;
 Sun, 14 Jul 2019 10:08:14 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id eKZ1_-FAqHP2; Sun, 14 Jul 2019 10:08:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id A91606074CF8;
 Sun, 14 Jul 2019 10:08:13 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Gj_TEWnhlqDG; Sun, 14 Jul 2019 10:08:13 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 6EFC76074CD5;
 Sun, 14 Jul 2019 10:08:13 +0200 (CEST)
Date: Sun, 14 Jul 2019 10:08:13 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Message-ID: <1574230514.38485.1563091693340.JavaMail.zimbra@nod.at>
In-Reply-To: <CAK7LNAQLheA3E0UrjirNHzpS2x+xmjc2YCupCBMNoHOwviz6GQ@mail.gmail.com>
References: <20190618030926.30616-1-yamada.masahiro@socionext.com>
 <1318390798.95477.1560838785550.JavaMail.zimbra@nod.at>
 <CAK7LNARA62uqi8rkDeJ=zjA6vnruTAH2VGOBd4=sQMhF+FHMLA@mail.gmail.com>
 <957967732.18164.1561621143523.JavaMail.zimbra@nod.at>
 <CAK7LNAQLheA3E0UrjirNHzpS2x+xmjc2YCupCBMNoHOwviz6GQ@mail.gmail.com>
Subject: Re: [PATCH v2] jffs2: remove C++ style comments from uapi header
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF60 (Linux)/8.8.12_GA_3809)
Thread-Topic: jffs2: remove C++ style comments from uapi header
Thread-Index: k7Rpp5q8qEL2qvCXPcgb90UVZnu2JA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_010831_387964_E61E5029 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Marek Vasut <marek.vasut@gmail.com>, linux-mtd <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IExvb2tzIGxpa2UgdGhpcyB0cml2aWFs
IHBhdGNoIG1pc3NlZCB0aGUgcHVsbCByZXF1ZXN0Lgo+IAo+IAo+IE15IG1vdGl2YXRpb24gaXMg
dG8gbWFrZSBzdXJlIFVBUEkgaGVhZGVycwo+IGFyZSByZWFsbHkgY29tcGlsYWJsZSBpbiB1c2Vy
LXNwYWNlLAo+IGFuZCBub3cgY2hlY2tlZCBieSB0aGUgZm9sbG93aW5nIGNvbW1pdDoKPiAKPiBj
b21taXQgZDZmYzlmY2JhYTY1NWNmZjJkMmJlMDVlMTY4NjdkMTkxOGY3OGI4NQo+IEF1dGhvcjog
TWFzYWhpcm8gWWFtYWRhIDx5YW1hZGEubWFzYWhpcm9Ac29jaW9uZXh0LmNvbT4KPiBEYXRlOiAg
IE1vbiBKdWwgMSAwOTo1ODo0MCAyMDE5ICswOTAwCj4gCj4gICAga2J1aWxkOiBjb21waWxlLXRl
c3QgZXhwb3J0ZWQgaGVhZGVycyB0byBlbnN1cmUgdGhleSBhcmUgc2VsZi1jb250YWluZWQKPiAK
PiAKPiAKPiBJcyB0aGVyZSBhIGNoYW5jZSBmb3IgaXQgYmVpbmcgbWVyZ2VkLAoKU3VyZS4gSSB0
aGluayBpdCBpcyBva2F5IHRvIHNlbmQgaXQgZm9yIC1yYzIuCgpUaGFua3MsCi8vcmljaGFyZAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
