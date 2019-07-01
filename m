Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E76DD85
	for <lists+linux-mtd@lfdr.de>; Mon, 29 Apr 2019 10:17:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2/Y7J7JeOZgK8sUAIUjDwj19pKg34nNML8bTRR0LrMY=; b=KjXtvTJ25NSPez
	jvuz6REMGOYd2cwHD+aCr5Yofl8rIZqW+FMcvrDIJz1bXUkOq8yIqJAE+rrWOzgJhfDskr3ReFztx
	9dc/sptKPXyo0SiBMnysO4bXxecHzSRev3skX2dTlyDVlMHGW96dHt6vHJ93YpVacrgPYvLycCtGX
	D0U5yof36y+45kKJ7Oh1Xt6eNXCeZCPUjZd4qFLYrzx+Qy5xYqh6h2vsJC8eAQ0NnGp+CTE3LjZ81
	rn315EtHDLmjEzUCOGWRfBICf1S7ndJm+Mcs7P+xiOZVG/nUeiVxS8OYeoSwAsudFFmngaaZB1VGz
	YAtuxGQJ0O/MUUn+Z/ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL1TJ-0008Uc-Gt; Mon, 29 Apr 2019 08:17:09 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL1TB-0008SE-47
 for linux-mtd@lists.infradead.org; Mon, 29 Apr 2019 08:17:02 +0000
X-Originating-IP: 90.88.147.33
Received: from xps13 (aaubervilliers-681-1-27-33.w90-88.abo.wanadoo.fr
 [90.88.147.33]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id BED4CFF81A;
 Mon, 29 Apr 2019 08:16:45 +0000 (UTC)
Date: Mon, 29 Apr 2019 10:16:44 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: =?UTF-8?B?UGF3ZcWC?= Chmiel <pawel.mikolaj.chmiel@gmail.com>
Subject: Re: [PATCH 1/5] mtd: onenand/samsung: Unify resource order for
 controller variants
Message-ID: <20190429101644.7c46c05d@xps13>
In-Reply-To: <20190426164224.11327-2-pawel.mikolaj.chmiel@gmail.com>
References: <20190426164224.11327-1-pawel.mikolaj.chmiel@gmail.com>
 <20190426164224.11327-2-pawel.mikolaj.chmiel@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_011701_315643_3FA96682 
X-CRM114-Status: UNSURE (   9.04  )
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
PiB3cm90ZSBvbiBGcmksIDI2IEFwciAyMDE5CjE4OjQyOjIwICswMjAwOgoKPiBGcm9tOiBUb21h
c3ogRmlnYSA8dG9tYXN6LmZpZ2FAZ21haWwuY29tPgo+IAo+IEJlZm9yZSB0aGlzIHBhdGNoLCB0
aGUgb3JkZXIgb2YgbWVtb3J5IHJlc291cmNlcyByZXF1ZXN0ZWQgYnkgdGhlIGRyaXZlcgo+IHdh
cyBjb250cm9sbGVyIGJhc2UgYXMgZmlyc3QgYW5kIE9uZU5BTkQgY2hpcCBiYXNlIGFzIHNlY29u
ZCBmb3IKPiBTM0M2NHh4L1M1UEMxMDAgdmFyaWFudCBhbmQgdGhlIG9wcG9zaXRlIGZvciBTNVBD
MTEwL1M1UFYyMTAgdmFyaWFudC4KPiAKPiBUbyBtYWtlIHRoaXMgbW9yZSBjb25zaXN0ZW50LCB0
aGlzIHBhdGNoIHN3YXBzIHRoZSBvcmRlciBvZiByZXNvdXJjZXMKPiBmb3IgdGhlIGxhdHRlciBh
bmQgdXBkYXRlcyBwbGF0Zm9ybSBjb2RlIGFjY29yZGluZ2x5LiBBcyBhIG5pY2Ugc2lkZQo+IGVm
ZmVjdCB0aGVyZSBpcyBhIHNsaWdodCByZWR1Y3Rpb24gaW4gbGluZSBjb3VudCBvZiBwcm9iZSBm
dW5jdGlvbi4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBUb21hc3ogRmlnYSA8dG9tYXN6LmZpZ2FAZ21h
aWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFBhd2XFgiBDaG1pZWwgPHBhd2VsLm1pa29sYWouY2ht
aWVsQGdtYWlsLmNvbT4KClRoYW5rcyBmb3IgdGhlIHBhdGNoIGJ1dCBpdCBsb29rcyBsaWtlIHlv
dSBhbHNvIGFyZSByZW5hbWluZyBmaWVsZHMgaW4KdGhlIG1haW4gb25lbmFuZCBzdHJ1Y3R1cmUu
IE1heWJlIGl0IGlzIHdvcnRoIGRvaW5nIGl0IGluIGEgcHJlbGltaW5hcnkKcGF0Y2guCgpUaGFu
a3MsCk1pcXXDqGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
