Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B68908A79F
	for <lists+linux-mtd@lfdr.de>; Mon, 12 Aug 2019 21:56:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qyd+eQo9lAmcCWkMxJASE3vYHCf9WMZyjA/YQrZo5gc=; b=XAom8rdVBwiSBZ
	kFlL/msrGRySja495zg0LRGlqG4MH3Mh/kch78wQL9xCrmSt391Ur8gG8RY4uw/NDyZBBFf+IxEMB
	FJMmTg+qUQ1x/cSkkQSxI9XHAYlZTDz52posUBiGe6tTRsZYQHf/RuN9bxmK6+3J8f/07N9GXJkVD
	VBdZ31ax4EvVZIEcAhKkO5rlLyXYTyUnxH6hpIhYLqra68HgLRcfUygC2sva+VyBk3Dox5cNvUlD7
	wwcslWqyZoFlMY6OejDiyGg5UxENMFC9zVHKIGlO4yDJBS5oYowx4hG3KSOLclKlECHq8Fr0ivWSR
	xiRwVwf/6P0olIx39NKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxGQD-0004Pd-Qr; Mon, 12 Aug 2019 19:56:02 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxGQ0-0004P5-AY
 for linux-mtd@lists.infradead.org; Mon, 12 Aug 2019 19:55:49 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 0E9EC6119B47;
 Mon, 12 Aug 2019 21:55:38 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id olv2A2vDsvKi; Mon, 12 Aug 2019 21:55:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id BFEEB6119B7C;
 Mon, 12 Aug 2019 21:55:37 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id qAHqHZW32J3C; Mon, 12 Aug 2019 21:55:37 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 995186119B47;
 Mon, 12 Aug 2019 21:55:37 +0200 (CEST)
Date: Mon, 12 Aug 2019 21:55:37 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: Han Xu <xhnjupt@gmail.com>
Message-ID: <411166061.63863.1565639737497.JavaMail.zimbra@nod.at>
In-Reply-To: <CA+EcR23V1nP9d6iYysT6vR+n8-BRnU-vursaxvcGB1LdBy+8NQ@mail.gmail.com>
References: <AM6PR04MB496741DA4839DC07450F3E3997150@AM6PR04MB4967.eurprd04.prod.outlook.com>
 <CAFLxGvwZ_85eR5Qkjka4CyDOAP_jw-hpk7WwttbAzjLFS4MavQ@mail.gmail.com>
 <CA+EcR23V1nP9d6iYysT6vR+n8-BRnU-vursaxvcGB1LdBy+8NQ@mail.gmail.com>
Subject: Re: 5.2.0-rc1 UBIFS bad unlock balance
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF60 (Linux)/8.8.12_GA_3809)
Thread-Topic: 5.2.0-rc1 UBIFS bad unlock balance
Thread-Index: FSIvKhkFdmoVgwf6XyFt4+BIL/3lvA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_125548_516100_804DDDC7 
X-CRM114-Status: UNSURE (   4.09  )
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
Cc: Han Xu <han.xu@nxp.com>, linux-mtd <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+PiBJIHNlZSB0aGUgYnVnLCB0aGFua3Mg
YSBsb3QgZm9yIHJlcG9ydGluZyEKPj4gQnV0IGl0IGlzIG5vdCBpbiA1LjItcmMxLCB0aGUgYmFk
IGNvbW1pdCBpcyBzbyBmYXIgb25seSBpbiBsaW51eC1uZXh0Lgo+IAo+IFBpbmcsIGFueSBmaXhp
bmcgcGxhbnM/CgpIdWg/IFRoZSBiYWQgY29tbWl0IHdhcyBkcm9wcGVkLiBBcmUgeW91IHN0aWxs
IHNlZWluZyB0aGlzIG9uIExpbnVzJyB0cmVlPwpNYXliZSBzb21ldGhpbmcgZWxzZSBpcyBiYWQu
CgpUaGFua3MsCi8vcmljaGFyZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
