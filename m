Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE03D792D4
	for <lists+linux-mtd@lfdr.de>; Mon, 29 Jul 2019 20:09:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ki/0D5WS5dR/SJI0od4G6zRLAYqgfM+YgHmh43RCCRs=; b=O0AzNW1P4f5vE6
	n2R79JtbuYupVcoAT4HRhm0fnPNAUNJyWp11VxSK7GcjhHLCVwetdQ6NotHl869Swiw5Fcjo5FzH0
	t1untxO5jFlsd6G6MkKvDJxtYhZUSPbLiBSBt44QKQUITmOzCK3JtDodH7eB8P/eHgDxcjDO6dKYD
	T8KLI26WtiKFwSfr/aCabk83krComs/RENblR3TN+xhGcvrmnlbJDKKmR2e10ygADKUhh4bTRAA66
	x9PHL8t7oxguC2e0uX7N1vJFYL20WDbtM6CEBetn28B3FQK1xsolgrIrPE9CvUo+lmUYTR3AiEgTx
	GoblCvj1se4IKC6mfP3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsA4v-0000Wt-Kt; Mon, 29 Jul 2019 18:08:57 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsA4n-0000Vo-Gk
 for linux-mtd@lists.infradead.org; Mon, 29 Jul 2019 18:08:51 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id E832A60632C0;
 Mon, 29 Jul 2019 20:08:38 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id ehX5VuQgnl7G; Mon, 29 Jul 2019 20:08:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 70E276083139;
 Mon, 29 Jul 2019 20:08:38 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id XjNoOe8nauWF; Mon, 29 Jul 2019 20:08:38 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id D590B608311C;
 Mon, 29 Jul 2019 20:08:37 +0200 (CEST)
Date: Mon, 29 Jul 2019 20:08:37 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: Paul Cercueil <paul@crapouillou.net>
Message-ID: <339409106.53616.1564423717793.JavaMail.zimbra@nod.at>
In-Reply-To: <1564419921.1759.1@crapouillou.net>
References: <20190725220215.460-1-paul@crapouillou.net>
 <CAFLxGvyi0+0E3M12A7cRoHfEKd8-7Yr8EMG9J=2XcjCxPWY5pA@mail.gmail.com>
 <1564419921.1759.1@crapouillou.net>
Subject: Re: [PATCH 00/11] JZ4740 SoC cleanup
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF60 (Linux)/8.8.12_GA_3809)
Thread-Topic: JZ4740 SoC cleanup
Thread-Index: pyW9XJwx/g8VXIVrZC/ODWU++joHAw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_110849_705256_7E80C6D2 
X-CRM114-Status: UNSURE (   6.37  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 alsa-devel <alsa-devel@alsa-project.org>, James Hogan <jhogan@kernel.org>,
 linux-fbdev@vger.kernel.org,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Liam Girdwood <lgirdwood@gmail.com>, od@zcrc.me,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Lee Jones <lee.jones@linaro.org>,
 Artur Rojek <contact@artur-rojek.eu>, linux-pm@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, linux-mips@vger.kernel.org,
 Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Richard Weinberger <richard.weinberger@gmail.com>,
 Mark Brown <broonie@kernel.org>, linux-hwmon@vger.kernel.org,
 Sebastian Reichel <sre@kernel.org>, Ralf Baechle <ralf@linux-mips.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dmaengine@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+PiBXYXMgdGhpcyBzZXJpZXMgdGVzdGVk
IHdpdGggdGhlIEJlbiBOYW5vbm90ZSBkZXZpY2U/Cj4+IEkgaGF2ZSBvbmUgb2YgdGhlc2UgYW5k
IGZyb20gdGltZSB0byB0aW1lIEkgdXBncmFkZSB0aGUga2VybmVsIG9uIGl0Lgo+IAo+IFllcyEg
QXJ0dXIgKENjJ2QpIHRlc3RlZCBpdC4KPiAKPiBZb3UgY2FuIHRlc3QgaXQgeW91cnNlbGYsIGFm
dGVyIG1lcmdpbmcgdGhpcyBwYXRjaHNldCB3aXRoOgo+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcv
cHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3Zrb3VsL3NsYXZlLWRtYS5naXQKPiBicmFuY2ggbmV4
dCwKPiBnaXQ6Ly9naXQuZnJlZWRlc2t0b3Aub3JnL2dpdC9kcm0tbWlzYyBicmFuY2ggZHJtLW1p
c2MtbmV4dC4KPiAKPiBUaGVzZSB3aWxsIGJlIGluIDUuNC1yYzEuCgpBd2Vzb21lISBUaGFua3Mg
YSBsb3QgZm9yIGNsZWFuaW5nIHRoaXMgdXAuCgpUaGFua3MsCi8vcmljaGFyZAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBk
aXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LW10ZC8K
