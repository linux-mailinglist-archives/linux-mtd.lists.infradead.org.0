Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D805C2649
	for <lists+linux-mtd@lfdr.de>; Mon, 30 Sep 2019 21:40:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xs8g67JqqXqPA+BiAZeLwTSh1DxSkwP12lOX+GDjDMw=; b=azhMG0z8iqCSQH
	Ft8vlAq/V1cqcwPI0mXaG9UiFzlqORGCpeqGLoGo/yzX9pktrJL11o24pWBrqc5owS44SN+D5423o
	X1iVQKzoEi7NSU4l/tfxTdIZVKl4v/dEl6OKga2C0+2/sClHTFIp44fNJSyKO0xiLRlQOyMl6gtZX
	D2+IpaEUhLWpnvgKpc+TTfECbx/nFj3zQxbFbtxRBj0/TiZhxgQIrQlZQWAHz/Mo7u92+eJARaOhe
	7IhbD+MiXh2jwtwCgYNB/7beiiUhugRGUVVPlnkBxmrNBuUj9H54jbbQfa+vzxWHn++ZusvIpI2tk
	cfTp+AKQN0BAtljDPOMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF1WX-0001hl-3y; Mon, 30 Sep 2019 19:39:57 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF1WM-0001gD-BO
 for linux-mtd@lists.infradead.org; Mon, 30 Sep 2019 19:39:47 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 714A06083139;
 Mon, 30 Sep 2019 21:39:35 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id NkoqdQgpQWCD; Mon, 30 Sep 2019 21:39:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 110CB608313B;
 Mon, 30 Sep 2019 21:39:35 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id XeFpM0PpcIp7; Mon, 30 Sep 2019 21:39:34 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id BE0706083139;
 Mon, 30 Sep 2019 21:39:34 +0200 (CEST)
Date: Mon, 30 Sep 2019 21:39:34 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: Kamal Dasu <kamal.dasu@broadcom.com>
Message-ID: <724490481.10665.1569872374621.JavaMail.zimbra@nod.at>
In-Reply-To: <CAKekbevBxGh9HRLX_4N98NwKm4GnXWvy9kwi6i=nRVnmfmJ-vw@mail.gmail.com>
References: <20190906194719.15761-1-kdasu.kdev@gmail.com>
 <20190906194719.15761-2-kdasu.kdev@gmail.com>
 <CAC=U0a1qvKO+t_62df_JcQBETAuNq0pwRkAb-Ofi3ski2rfdEQ@mail.gmail.com>
 <20190930182458.761e8077@collabora.com>
 <CAKekbevBxGh9HRLX_4N98NwKm4GnXWvy9kwi6i=nRVnmfmJ-vw@mail.gmail.com>
Subject: Re: [PATCH 2/2] mtd: rawnand: use bounce buffer when vmalloced data
 buf detected
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF60 (Linux)/8.8.12_GA_3809)
Thread-Topic: rawnand: use bounce buffer when vmalloced data buf detected
Thread-Index: 59RFbZHlw9bdW9o2LKfMJ7mOlXE2MQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_123946_545020_AC640D0E 
X-CRM114-Status: UNSURE (   5.52  )
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Kamal Dasu <kdasu.kdev@gmail.com>,
 Boris Brezillon <bbrezillon@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 Marek Vasut <marek.vasut@gmail.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFZvbjogIkthbWFsIERhc3UiIDxrYW1h
bC5kYXN1QGJyb2FkY29tLmNvbT4KPiBUaGlzIGhhcyBiZWVuIG9ic2VydmVkIG9uIE1JUFM0SyBh
bmQgTUlQUzVLIGFyY2hpdGVjdHVyZXMuIFRoZXJlIGlzIGEKPiBjaGVjayBvbiB0aGUgY29udHJv
bGxlciBkcml2ZXIgdG8gdXNlIHBpbyBpbiBzdWNoIGNhc2VzLgoKSSBmZWFyIHlvdXIga2VybmVs
IG1pc3NlcyBjb21taXQ6CjA3NGExZTExNjdhZiAoIk1JUFM6IEJvdW5kcyBjaGVjayB2aXJ0X2Fk
ZHJfdmFsaWQiKQoKVGhhbmtzLAovL3JpY2hhcmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5n
IGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1t
dGQvCg==
