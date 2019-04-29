Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D83BDDD8E
	for <lists+linux-mtd@lfdr.de>; Mon, 29 Apr 2019 10:18:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G0YPhUW0VrYZf2cbTDYVt9XbwU8DYBOgvHgfu52T9yg=; b=msdDtP9SLWCOm6
	fLOuNArySJmYv7j6Ne9b/sUKg2VvdBX880H0RhRB0B2onssmlq6njQ7Ll6EZ5ZnKe/1IsfCW2U1tG
	7f2oO/CDjGAEQ74KSQPR/XksVT1sG+auDLyUZwKFVONieO0U07UjbpZaVrRJgogpg+GzAb6GPMi6U
	oEWJfMyMGyySxHCvWh4pUp8ZWXNZLmDpcnIWUDKT07HOt/ZQWohSZv3yAZqRvQbXMzty2a6pFt4y8
	7rF8IhlVoyLzWcOJS9J+CoIPY4AnsVGGHpi4qFzZsnGWmtPmXppCywGjXgfMbSn2qtHP4cq8WhH4u
	7Szho67VGx3DSeo0ykHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL1UZ-0000S2-PI; Mon, 29 Apr 2019 08:18:27 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL1UR-0000RW-Uk
 for linux-mtd@lists.infradead.org; Mon, 29 Apr 2019 08:18:21 +0000
X-Originating-IP: 90.88.147.33
Received: from xps13 (aaubervilliers-681-1-27-33.w90-88.abo.wanadoo.fr
 [90.88.147.33]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 1BD14FF802;
 Mon, 29 Apr 2019 08:18:15 +0000 (UTC)
Date: Mon, 29 Apr 2019 10:18:15 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: =?UTF-8?B?UGF3ZcWC?= Chmiel <pawel.mikolaj.chmiel@gmail.com>
Subject: Re: [PATCH 2/5] mtd: onenand/samsung: Make sure that bus clock is
 enabled
Message-ID: <20190429101815.0f25830d@xps13>
In-Reply-To: <20190426164224.11327-3-pawel.mikolaj.chmiel@gmail.com>
References: <20190426164224.11327-1-pawel.mikolaj.chmiel@gmail.com>
 <20190426164224.11327-3-pawel.mikolaj.chmiel@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_011820_136626_8FBB529B 
X-CRM114-Status: UNSURE (   7.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, bbrezillon@kernel.org,
 richard@nod.at, linux-kernel@vger.kernel.org,
 Tomasz Figa <tomasz.figa@gmail.com>, marek.vasut@gmail.com,
 kyungmin.park@samsung.com, robh+dt@kernel.org, linux-mtd@lists.infradead.org,
 computersforpeace@gmail.com, dwmw2@infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgUGF3ZcWCLAoKUGF3ZcWCIENobWllbCA8cGF3ZWwubWlrb2xhai5jaG1pZWxAZ21haWwuY29t
PiB3cm90ZSBvbiBGcmksIDI2IEFwciAyMDE5CjE4OjQyOjIxICswMjAwOgoKPiBGcm9tOiBUb21h
c3ogRmlnYSA8dG9tYXN6LmZpZ2FAZ21haWwuY29tPgo+IAo+IFRoaXMgcGF0Y2ggYWRkcyBiYXNp
YyBoYW5kbGluZyBvZiBjb250cm9sbGVyIGJ1cyBjbG9jayB0byBtYWtlIHN1cmUgdGhhdAo+IGlu
IGRldmljZSBwcm9iZSBpdCBpcyBlbmFibGVkIGFuZCBkZXZpY2UgY2FuIG9wZXJhdGUgY29ycmVj
dGx5LiBUaGUKPiBjbG9jayBpcyBvcHRpb25hbCBhbmQgZHJpdmVyIGJlaGF2aW9yIGlzIGlkZW50
aWNhbCBhcyBiZWZvcmUgdGhpcyBwYXRjaAo+IGlmIG5vdCBwcm92aWRlZC4KPiAKPiBTaWduZWQt
b2ZmLWJ5OiBUb21hc3ogRmlnYSA8dG9tYXN6LmZpZ2FAZ21haWwuY29tPgo+IFNpZ25lZC1vZmYt
Ynk6IFBhd2XFgiBDaG1pZWwgPHBhd2VsLm1pa29sYWouY2htaWVsQGdtYWlsLmNvbT4KClJldmll
d2VkLWJ5OiBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1U
RCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
