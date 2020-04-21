Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3295D1B2D9F
	for <lists+linux-mtd@lfdr.de>; Tue, 21 Apr 2020 19:00:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=D4lpOI+rpkUv8yq9Kc6zYqWmZ+AfFA6zDduQCIaAp5c=; b=SHJUrdK8h6UzhM
	RfQOo2DhimZR7nQix9x+2St41e4ObiRBQnpsdszjklWlzWxBjjYWBw8XNGrsJT3seXgw7i/idKJud
	SBHtACDSUJaOWeBaci5e+yRKdr+J9YM8FkExJBki0kxtLb2K7Hr4OffOb5X9WdTjFWwxtsJIochoq
	plmoiI8dF3c+H4X0mG2HXlwAf1cR8yyeLR3+Es+vAFMm82bdyLdlO+VQHYYXw6sLEbhurEa2EpXpM
	2KmPvDcnSh4MFemJfdJvt7Dj8UiSfGH4P9GJIqPjAaH86Pi2TCr6Bj0kX4i7/uIXRpe5IUyD7JVf4
	yiNwJOTnAin3ZvR7yFGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQwFi-0008UB-PY; Tue, 21 Apr 2020 17:00:06 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQwFT-0008IS-Cd
 for linux-mtd@lists.infradead.org; Tue, 21 Apr 2020 16:59:53 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 79219FF807;
 Tue, 21 Apr 2020 16:59:47 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH 0/2] New Arasan NAND controller driver
Date: Tue, 21 Apr 2020 18:59:44 +0200
Message-Id: <20200421165946.21471-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_095951_568977_690ED79A 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
Cc: Michal Simek <monstr@monstr.eu>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGVsbG8sCgpUaGlzIGlzIGEgZGVlcCByZXdvcmsgb2YgTmFnYSdzIEFyYXNhbiBOQU5EIGNvbnRy
b2xsZXIgZHJpdmVyLgpUaGlzIHZlcnNpb24gaXMgcHJlbGltaW5hcnksIGFsbG93cyB0byBib290
LCBidXQgdGhlcmUgYXJlIHR3bwpyZW1haW5pbmcgY2hhbmdlcyB0aGF0IG11c3QgYmUgd3JpdHRl
bjoKMS8gdGhlIGNvcmUgbXVzdCBiZSBhZGFwdGVkIHRvIGZvcmNlICJwYWNrZWQiIG9wZXJhdGlv
bnMgaW5zdGVhZCBvZgogICB1c2luZyBhIHNwbGl0ZWQgc2NoZW1lICh0aGlzIHdpbGwgbmVlZCB0
aGUgTkFORCBib3VuY2UgYnVmZmVyIGhhbmRsaW5nCiAgIHRvIGJlIHJld29ya2VkIGFzIHdlbGwp
CjIvIGEgZGVlcGVyIHVuZGVyc3RhbmRpbmcgb2YgdGhlIGhhcmR3YXJlIEVDQyBlbmdpbmUncyBi
ZWhhdmlvciBpbgogICBvcmRlciB0byB3b3JrYXJvdW5kIGl0cyBsaW1pdGF0aW9ucy4KClRoZSBk
cml2ZSBwcm9iZXMsIHJlZ2lzdGVycyBhbiBNVEQgZGV2aWNlIGFuZCB0aGVuIE5BTkQgY2hpcChz
KSBjYW4gYmUKaW5pdGlhbGl6ZWQuIFJlZ3VsYXIgcmVhZC93cml0ZSBvcGVyYXRpb25zIG5lZWQg
bW9yZSB3b3JrIGZvciBub3cuCgpUaGUgYmluZGluZ3MgaGF2ZSBiZWVuIGNoYW5nZWQgYSBsaXR0
bGUgYml0IGFuZCB0aGUgZmlsZSB0cmFuc2xhdGVkCmludG8ganNvbiBzY2hlbWEuCgpDaGVlcnMs
Ck1pcXXDqGwKCk1pcXVlbCBSYXluYWwgKDIpOgogIGR0LWJpbmRpbmdzOiBtdGQ6IERvY3VtZW50
IEFSQVNBTiBOQU5EIGJpbmRpbmdzCiAgbXRkOiByYXduYW5kOiBTdXBwb3J0IEFyYXNhbiBOQU5E
IGNvbnRyb2xsZXIKCiAuLi4vYmluZGluZ3MvbXRkL2FyYXNhbixuYW5kLWNvbnRyb2xsZXIueWFt
bCAgfCAgIDYzICsKIGRyaXZlcnMvbXRkL25hbmQvcmF3L0tjb25maWcgICAgICAgICAgICAgICAg
ICB8ICAgIDcgKwogZHJpdmVycy9tdGQvbmFuZC9yYXcvTWFrZWZpbGUgICAgICAgICAgICAgICAg
IHwgICAgMSArCiBkcml2ZXJzL210ZC9uYW5kL3Jhdy9hcmFzYW4tbmFuZC1jb250cm9sbGVyLmMg
fCAxMDkyICsrKysrKysrKysrKysrKysrCiA0IGZpbGVzIGNoYW5nZWQsIDExNjMgaW5zZXJ0aW9u
cygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9tdGQvYXJhc2FuLG5hbmQtY29udHJvbGxlci55YW1sCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJp
dmVycy9tdGQvbmFuZC9yYXcvYXJhc2FuLW5hbmQtY29udHJvbGxlci5jCgotLSAKMi4yMC4xCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
