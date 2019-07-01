Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC5EDD9E
	for <lists+linux-mtd@lfdr.de>; Mon, 29 Apr 2019 10:21:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3z2ensllvdlHfaOTAI47/oFW6W0vz+lmHht9zXBCL9I=; b=PGcb/8CnoCzuR9
	fTY1LEwpT6F58t/0yRY8D1QqkOC5LI0sakl5NciCbAJlpKyF1BGfKsAYeVvPJRrPuWGxg7+TCL+P9
	FSon5mSyolJsozG2B315h/PWJW6z+XRuwaebE77M54NXif98J/JK4V6wt05ybKvD5lCAlGFaoyell
	boP8mHgjseBLGkL1MfRQVk1f7fQBU87WDU6rvjbIH31cDf4uKJI7Jw+DxxiNH6pDC9iaY1mgER+46
	c34r4YyYoJuaV+tX5Yi/apTYhEK8PQ3Rr1BLyGRkBAdWL/oYSd4dRguG7vmOEkC73y0gy8Hbq714U
	VSslSawcncPARI9X5U7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL1XM-0002Up-M2; Mon, 29 Apr 2019 08:21:20 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL1XE-0002UR-O2
 for linux-mtd@lists.infradead.org; Mon, 29 Apr 2019 08:21:14 +0000
X-Originating-IP: 90.88.147.33
Received: from xps13 (aaubervilliers-681-1-27-33.w90-88.abo.wanadoo.fr
 [90.88.147.33]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id F2673FF81A;
 Mon, 29 Apr 2019 08:21:07 +0000 (UTC)
Date: Mon, 29 Apr 2019 10:21:06 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: =?UTF-8?B?UGF3ZcWC?= Chmiel <pawel.mikolaj.chmiel@gmail.com>
Subject: Re: [PATCH 3/5] mtd: onenand/samsung: Add device tree support
Message-ID: <20190429102106.4e6feeeb@xps13>
In-Reply-To: <20190426164224.11327-4-pawel.mikolaj.chmiel@gmail.com>
References: <20190426164224.11327-1-pawel.mikolaj.chmiel@gmail.com>
 <20190426164224.11327-4-pawel.mikolaj.chmiel@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_012112_927698_BFA77EB4 
X-CRM114-Status: UNSURE (   6.36  )
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
PiB3cm90ZSBvbiBGcmksIDI2IEFwciAyMDE5CjE4OjQyOjIyICswMjAwOgoKPiBGcm9tOiBUb21h
c3ogRmlnYSA8dG9tYXN6LmZpZ2FAZ21haWwuY29tPgo+IAo+IFRoaXMgcGF0Y2ggYWRkcyBzdXBw
b3J0IGZvciBpbnN0YW50YXRpb24gdXNpbmcgRGV2aWNlIFRyZWUuCgoiQWRkIHN1cHBvcnQgZm9y
Li4uIiBpcyBlbm91Z2guCgpPdGhlcndpc2U6CgpSZXZpZXdlZC1ieTogTWlxdWVsIFJheW5hbCA8
bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxp
c3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQv
Cg==
