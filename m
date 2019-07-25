Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3CB475945
	for <lists+linux-mtd@lfdr.de>; Thu, 25 Jul 2019 23:03:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xzeRnhhYgPRoOcJuZHMinJvfjuKrnQwS6RCYGTA/fr4=; b=ej3vmr1hphw2FX
	hykhMTEBWr/ubnJTJyMS0zKYuUt/KOonZpZChsxENebjpWHax18haz2ltfJnP2/JMppos159ZSH50
	wzM0n0xmqyWgNzgI5+K5ibD9CezyhPeJBoWiC3eE4N58jujoghxW//T4nFmbGrGKyAFFj8mXB0QsM
	v2mtX7+5rHFuXfZYnqQqPRtQH4iO7PsMMEbwfILOn94OW4ELrGiYe6IbHKyd9TRQO81sQEwZjcWwS
	8uXZoLUZHF5NEJ9MEYMAqogQWGGdqY6hJxeepxOq52q6ISTb2D3tx/R8+t15NFaNNOVDXv8FE7UPw
	ZJOT+b071U3vYAPZdYiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqktu-0000Lx-Ve; Thu, 25 Jul 2019 21:03:46 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqktk-0000LU-V0
 for linux-mtd@lists.infradead.org; Thu, 25 Jul 2019 21:03:38 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 1E20B608311C;
 Thu, 25 Jul 2019 23:03:35 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id LxP2cxpMBDD1; Thu, 25 Jul 2019 23:03:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id BEED9608313E;
 Thu, 25 Jul 2019 23:03:34 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id m6JdiSMsNDEw; Thu, 25 Jul 2019 23:03:34 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id A4FC3608311C;
 Thu, 25 Jul 2019 23:03:34 +0200 (CEST)
Date: Thu, 25 Jul 2019 23:03:34 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: linux-mtd <linux-mtd@lists.infradead.org>
Message-ID: <744856658.50252.1564088614575.JavaMail.zimbra@nod.at>
In-Reply-To: <20190725205627.31313-1-richard@nod.at>
References: <20190725205627.31313-1-richard@nod.at>
Subject: Re: [PATCH] ubifs: Correctly initialize c->min_log_bytes
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF60 (Linux)/8.8.12_GA_3809)
Thread-Topic: ubifs: Correctly initialize c->min_log_bytes
Thread-Index: SwnPH8ZESbV8mnXC/gLwFkHEHZxb8A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_140337_142880_D54C4B06 
X-CRM114-Status: UNSURE (   8.16  )
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
Cc: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFZvbjogInJpY2hhcmQiIDxyaWNoYXJk
QG5vZC5hdD4KPiBBbjogImxpbnV4LW10ZCIgPGxpbnV4LW10ZEBsaXN0cy5pbmZyYWRlYWQub3Jn
Pgo+IENDOiAiVXdlIEtsZWluZS1Lw7ZuaWciIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXgu
ZGU+LCAicmljaGFyZCIgPHJpY2hhcmRAbm9kLmF0Pgo+IEdlc2VuZGV0OiBEb25uZXJzdGFnLCAy
NS4gSnVsaSAyMDE5IDIyOjU2OjI3Cj4gQmV0cmVmZjogW1BBVENIXSB1YmlmczogQ29ycmVjdGx5
IGluaXRpYWxpemUgYy0+bWluX2xvZ19ieXRlcwoKPiBDdXJyZW50bHkgb24gYSBmcmVzaGx5IG1v
dW50ZWQgVUJJRlMsIGMtPm1pbl9sb2dfYnl0ZXMgaXMgMC4KPiBUaGlzIGNhbiBsZWFkIHRvIGEg
bG9nIG92ZXJydW4gYW5kIG1ha2UgY29tbWl0cyBmYWlsLgo+IAo+IFJlY2VudCBrZXJuZWxzIHdp
bGwgcmVwb3J0IHRoZSBmb2xsb3dpbmcgYXNzZXJ0Ogo+IFVCSUZTIGFzc2VydCBmYWlsZWQ6IGMt
PmxoZWFkX2xudW0gIT0gYy0+bHRhaWxfbG51bSwgaW4gZnMvdWJpZnMvbG9nLmM6NDEyCj4gCj4g
Yy0+bWluX2xvZ19ieXRlcyBjYW4gaGF2ZSB0d28gc3RhdGVzLCAwIGFuZCBjLT5sZWJfc2l6ZS4K
PiBJdCBjb250cm9scyBob3cgbXVjaCBieXRlcyBvZiB0aGUgbG9nIGFyZWEgYXJlIHJlc2VydmVk
IGZvciBub24tYnVkCj4gbm9kZXMgc3VjaCBhcyBjb21taXQgbm9kZXMuCj4gCj4gQWZ0ZXIgYSBj
b21taXQgaXQgaGFzIHRvIGJlIHNldCB0byBjLT5sZWJfc2l6ZSBzdWNoIHRoYXQgd2UgaGF2ZSBh
bHdheXMKPiBlbm91Z2h0IHNwYWNlIGZvciBhIGNvbW1pdC4gV2hpbGUgYSBjb21taXQgcnVucyBp
dCBjYW4gYmUgMCB0byBtYWtlIHRoZQo+IHJlbWFpbmluZyBieXRlcyBvZiB0aGUgbG9nIGF2YWls
YWJsZSB0byB3cml0ZXJzLgo+IAo+IEhhdmluZyBpdCBzZXQgdG8gMCByaWdodCBhZnRlciBtb3Vu
dCBpcyB3cm9uZyBzaW5jZSBubyBzcGFjZSBmb3IgY29tbWl0cwo+IGlzIHJlc2VydmVkLgo+IAo+
IFJlcG9ydGVkLWFuZC10ZXN0ZWQtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2Vu
aWdAcGVuZ3V0cm9uaXguZGU+Cj4gU2lnbmVkLW9mZi1ieTogUmljaGFyZCBXZWluYmVyZ2VyIDxy
aWNoYXJkQG5vZC5hdD4KCkZpeGVzOiAxZTUxNzY0YTNjMmFjICgiVUJJRlM6IGFkZCBuZXcgZmxh
c2ggZmlsZSBzeXN0ZW0iKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
