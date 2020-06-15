Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD6B1F9EAD
	for <lists+linux-mtd@lfdr.de>; Mon, 15 Jun 2020 19:38:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i6Oq1tl+je+WvTp7hpmCJVFaqqt0z0LOoKbG2+glYPA=; b=s3O/gDWe45CBqx
	5exf/yIdfmIKzvwOrVRyN/k34tmE5OyQpTvFirGKWZlLU8RgDgBewhAMZGpauiQEErq3NnniyYs89
	td0gU5xkk5l8Cmx8X8oPty94N+dY4iFAT3jTiOdVWP0wTetLyJdHMXx/DZnGSaAulB6W3H7I4LyCR
	HEhw8J8ve8CLUbt8VIVgAWWfw1cWsVBi+kCS1R9u/gcCzr2OJ6NfnbOaoB4fsvglIx9wOtQeSH2AT
	MR+JPNeg6kJsLVW7sasMIyb8fn4ceoutegZqp+et941D95t0YBldxGDML/34bBjSlkQP0mlFOgwl4
	98r1ip9BW9MXbtvKFZFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkt4O-0003nD-2q; Mon, 15 Jun 2020 17:38:52 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkt41-0003dk-KT; Mon, 15 Jun 2020 17:38:31 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 15B6420009;
 Mon, 15 Jun 2020 17:38:20 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: =?utf-8?q?=C3=81lvaro_Fern=C3=A1ndez_Rojas?= <noltari@gmail.com>,
 tsbogend@alpha.franken.de, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, miquel.raynal@bootlin.com,
 richard@nod.at, vigneshr@ti.com, jonas.gorski@gmail.com,
 linus.walleij@linaro.org, linux-mips@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org
Subject: Re: [PATCH v4] mtd: parsers: bcm63xx: simplify CFE detection
Date: Mon, 15 Jun 2020 19:38:20 +0200
Message-Id: <20200615173820.25624-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200615091740.2958303-1-noltari@gmail.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 6c91c7bc6f841fa54627af10c4bc85de2eb843db
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_103829_804945_0744148F 
X-CRM114-Status: UNSURE (   5.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.200 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T24gTW9uLCAyMDIwLTA2LTE1IGF0IDA5OjE3OjQwIFVUQywgPT91dGYtOD9xPz1DMz04MWx2YXJv
X0Zlcm49QzM9QTFuZGV6X1JvamFzPz0gd3JvdGU6Cj4gSW5zdGVhZCBvZiB0cnlpbmcgdG8gcGFy
c2UgQ0ZFIHZlcnNpb24gc3RyaW5nLCB3aGljaCBpcyBjdXN0b21pemVkIGJ5IHNvbWUKPiB2ZW5k
b3JzLCBsZXQncyBqdXN0IGNoZWNrIHRoYXQgIkNGRTEiIHdhcyBwYXNzZWQgb24gYXJndW1lbnQg
My4KPiAKPiBTaWduZWQtb2ZmLWJ5OiDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgPG5vbHRhcmlA
Z21haWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEpvbmFzIEdvcnNraSA8am9uYXMuZ29yc2tpQGdt
YWlsLmNvbT4KPiBSZXZpZXdlZC1ieTogRmxvcmlhbiBGYWluZWxsaSA8Zi5mYWluZWxsaUBnbWFp
bC5jb20+CgpBcHBsaWVkIHRvIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9r
ZXJuZWwvZ2l0L210ZC9saW51eC5naXQgbmFuZC9uZXh0LCB0aGFua3MuCgpNaXF1ZWwKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBN
VEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
