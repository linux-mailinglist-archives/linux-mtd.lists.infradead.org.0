Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 421C6DDAF6
	for <lists+linux-mtd@lfdr.de>; Sat, 19 Oct 2019 22:49:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JwbdJUnVTUDuJwvFWRpnyD8BuUK4bPMu02y/ibMweNw=; b=e6XwlnGxwWlXRc
	FVpupFkgSiP4B8p91QaTYIk85OAlB6XHS+0YgzB83GLkY2pTzLoU7OvChCMGYoLCjY627Wm4Q1tWN
	kgO6MZdV7TaHOzy4PYopEfcZDNTZd77c874iv0HXJ0iVf+qu2rcecP+k5KsZng7XRjT34CdNqm2b4
	34bds4/7Jyn1O5av5CEr2Lqj2NG7AvOFE3nCN4G2mpJ7rer6pil5aHQg9OodrhO/8KCixgxieAQ7h
	S0IxLtC0bz/Coql6xM8o/sVC1oLoJfm+T1bzr7YrdbuVLgQxTXUZ3L49rstq+UfEy+2yb8Sjd0aXP
	NXhHISVW7fhKqpa9MUVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLvfU-0003Xc-8r; Sat, 19 Oct 2019 20:49:44 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLvfL-0003X5-Ft
 for linux-mtd@lists.infradead.org; Sat, 19 Oct 2019 20:49:37 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 69B016162114;
 Sat, 19 Oct 2019 22:49:33 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id l3NTirsF4jWR; Sat, 19 Oct 2019 22:49:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 0CF016162112;
 Sat, 19 Oct 2019 22:49:33 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id xqX5V0lVX9j3; Sat, 19 Oct 2019 22:49:32 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id D2E44608A386;
 Sat, 19 Oct 2019 22:49:32 +0200 (CEST)
Date: Sat, 19 Oct 2019 22:49:32 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: Alexander Sverdlin <alexander.sverdlin@gmail.com>
Message-ID: <1521412989.29582.1571518172735.JavaMail.zimbra@nod.at>
In-Reply-To: <20191019155556.3174231-1-alexander.sverdlin@gmail.com>
References: <20191019155556.3174231-1-alexander.sverdlin@gmail.com>
Subject: Re: [PATCH] Revert "jffs2: Fix possible null-pointer dereferences
 in jffs2_add_frag_to_fragtree()"
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF60 (Linux)/8.8.12_GA_3809)
Thread-Topic: Revert "jffs2: Fix possible null-pointer dereferences in
 jffs2_add_frag_to_fragtree()"
Thread-Index: ov9qtG3kHPA76xxIARdIccgECYZgig==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_134935_677219_C03FF67B 
X-CRM114-Status: UNSURE (   3.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: David Woodhouse <dwmw2@infradead.org>, Jia-Ju Bai <baijiaju1990@gmail.com>,
 linux-mtd <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFZvbjogIkFsZXhhbmRlciBTdmVyZGxp
biIgPGFsZXhhbmRlci5zdmVyZGxpbkBnbWFpbC5jb20+Cj4gQW46ICJsaW51eC1tdGQiIDxsaW51
eC1tdGRAbGlzdHMuaW5mcmFkZWFkLm9yZz4KPiBDQzogIkFsZXhhbmRlciBTdmVyZGxpbiIgPGFs
ZXhhbmRlci5zdmVyZGxpbkBnbWFpbC5jb20+LCAiRGF2aWQgV29vZGhvdXNlIiA8ZHdtdzJAaW5m
cmFkZWFkLm9yZz4sICJyaWNoYXJkIgo+IDxyaWNoYXJkQG5vZC5hdD4sICJKaWEtSnUgQmFpIiA8
YmFpamlhanUxOTkwQGdtYWlsLmNvbT4KPiBHZXNlbmRldDogU2Ftc3RhZywgMTkuIE9rdG9iZXIg
MjAxOSAxNzo1NTo1Ngo+IEJldHJlZmY6IFtQQVRDSF0gUmV2ZXJ0ICJqZmZzMjogRml4IHBvc3Np
YmxlIG51bGwtcG9pbnRlciBkZXJlZmVyZW5jZXMgaW4gamZmczJfYWRkX2ZyYWdfdG9fZnJhZ3Ry
ZWUoKSIKPiBUaGlzIHJldmVydHMgY29tbWl0IGYyNTM4Zjk5OTM0NTQwNWY3ZDJlMTE5NGMwYzhl
ZmE0ZTExZjdiM2EuCj4gCj4gTG9va3MgbGlrZSBOVUxMIHRoaXMgaXMgbmV2ZXIgZGVyZWZlcmVu
Y2VkIGluIHJlYWxpdHkgYmVjYXVzZSB0aGUgZnVuY3Rpb24KPiByZXR1cm5zIGVhcmxpZXIgd2l0
aCAicmV0dXJuIG5vX292ZXJsYXBwaW5nX25vZGUoLi4uKSIuCgpJbmRlZWQuIDstXAoKSmlhLUp1
IEJhaSwgdGhlIGlzc3VlIHlvdXIgdG9vbCBmb3VuZCBzZWVtcyB0byBiZSBhIGZhbHNlIHBvc2l0
aXZlLCBzbyBJJ2xsCnRha2UgdGhpcyByZXZlcnQuCgpUaGFua3MsCi8vcmljaGFyZAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1U
RCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
