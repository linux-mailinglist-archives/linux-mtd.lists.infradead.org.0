Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60ED81C7BC4
	for <lists+linux-mtd@lfdr.de>; Wed,  6 May 2020 23:00:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WHfYEmP5UTWNJvkg3DYIxJ0LBDFCMqTaSyfYY1UEZr8=; b=qzTK8VzT/6p7Mu
	WfoF/LDV3DBp1Er7DCpb+DqQNL+hSNwnS0QZoJfeBzQs5rzkYxqPSosmUaDfBJuh5+8Y4zIYVzk02
	eGeJB70VbCxo8GCQbzhZ6wQwSzuBEg6dj9DG1kaAs1+OUmrI52ppjIFh1JMmNRzV4lW/54j+Nro/e
	5yQdxI2ah6dmb9zyeqpdHQmFtw/PUsJadCe+EihHJ4gMioENHdaNTJ+K13C735XWNc21q6q8SflRI
	HpzFg3nBpYYOHvAMGLBcm0617AY7BWWEtRFjanbMMnyXFQmp9DluO2MC46a3PRDvn9I3RCikr5w8p
	6tqm7DdwoJdJ/r7xVidg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWR9Q-0000hQ-Uc; Wed, 06 May 2020 21:00:20 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWR8p-0000Ou-Rm
 for linux-mtd@lists.infradead.org; Wed, 06 May 2020 20:59:45 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 7E7BF609D2CC;
 Wed,  6 May 2020 22:59:40 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id kRHseWuFZAyF; Wed,  6 May 2020 22:59:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 267A8609D2FA;
 Wed,  6 May 2020 22:59:40 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id ZzbVuXZbVJWV; Wed,  6 May 2020 22:59:40 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id F12F6609D2CC;
 Wed,  6 May 2020 22:59:39 +0200 (CEST)
Date: Wed, 6 May 2020 22:59:39 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: Boris Brezillon <boris.brezillon@collabora.com>
Message-ID: <130342272.192940.1588798779898.JavaMail.zimbra@nod.at>
In-Reply-To: <20200506224016.2d48d0b4@collabora.com>
References: <20200503114029.30257-1-miquel.raynal@bootlin.com>
 <BN7PR08MB5684D8DFC50CB93B53705619DBA40@BN7PR08MB5684.namprd08.prod.outlook.com>
 <20200506180420.13996633@collabora.com>
 <BN7PR08MB56843895500F4ADA88262C59DBA40@BN7PR08MB5684.namprd08.prod.outlook.com>
 <1414270659.192477.1588790669444.JavaMail.zimbra@nod.at>
 <20200506210158.7fe33cec@collabora.com>
 <662469728.192614.1588792998746.JavaMail.zimbra@nod.at>
 <20200506224016.2d48d0b4@collabora.com>
Subject: Re: [EXT] [PATCH v2 3/3] mtd: rawnand: micron: Address the shallow
 erase issue
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF68 (Linux)/8.8.12_GA_3809)
Thread-Topic: rawnand: micron: Address the shallow erase issue
Thread-Index: vfLlf5cskDdYdM8NOQWP5QHfvrq9Mg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_135944_044496_830FB2F8 
X-CRM114-Status: UNSURE (   5.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Steve deRosier <derosier@gmail.com>, "Zoltan Szubbocsev,
 zszubbocsev" <zszubbocsev@micron.com>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, tglx <tglx@linutronix.de>,
 Piotr Wojtaszczyk <WojtaszczykP@cumminsallison.com>, "Bean Huo,
 beanhuo" <beanhuo@micron.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+PiBVQkkgc2NhbnMgb25seSBoZWFkZXJz
IGR1cmluZyBhdHRhY2guIElmIHlvdSBkb24ndCB0b3VjaCB0aGVzZSwgbm8gd2F5Lgo+IAo+IFNv
cnJ5LCBJIG1pc3VuZGVyc3Rvb2Qgd2hhdCB5b3UgbWVhbnQgYnkgcGF5bG9hZC4gVUJJIHNob3Vs
ZCBzY2hlZHVsZQo+IHRoZSBQRUIgZm9yIGVyYXNlIGlmIHRoZSBFQy9WSUQgaGVhZGVyIGlzIGNv
cnJ1cHRlZC4KClVCSSBldmVuIHRyaWVzIHRvIHJlY292ZXIgZnJvbSBzdWNoIGEgc2l0dWF0aW9u
LiBJZiBvbmx5IHRoZSBFQyBoZWFkZXIgaXMgYmFkLAppdCB3aWxsIGNyZWF0ZSBhIG5ldyBvbmUu
IE9ubHkgb2YgdGhlIFZJRCBoZWFkZXIgaXMgYmFkL21pc3NpbmcgYW5kIHRoZSBwYXlsb2FkCmlz
IGNvcnJ1cHRlZCAoRUNDIGVycm9ycyBvciBiaXQtZmxpcHMpIGl0IHdpbGwgZXJhc2UgaXQuCgpB
IG1pc3NpbmcgVklEIGhlYWRlciBwbHVzIGdvb2QgcGF5bG9hZCB3aWxsIGNhdXNlIFVCSSB0byBz
dG9wIGF0dGFjaGluZyBzaW5jZSBpdAp2aW9sYXRlcyB0aGUgSU8gbW9kZWwuCgpUaGFua3MsCi8v
cmljaGFyZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
