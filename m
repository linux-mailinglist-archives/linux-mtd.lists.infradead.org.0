Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B75012DB26
	for <lists+linux-mtd@lfdr.de>; Tue, 31 Dec 2019 20:27:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=B/FEkAPeQ9vq0pcETMVFKMsdeFH55Gt1zZV0MexPxDc=; b=lOe5FPVt44UckN
	1y9576qXuV+2YfiO65415cXogMZrG/NDBZWEq9fTi0RoFQ74t1f07KBYIxdcd47gmTovvp2ni02EO
	6ZLU3zM5ZMwWstaqzFM7obbhD4TA56yAiXsIo/3/w3mx8vrYpxtUCbgoVUwldqabCAN7HImpPdKQ/
	Jw/iyIEmcUWaPuSt4ca+FZUJ4dT0ZtuVQ3ICh5e9paR2Cl1TA5exWuZFyeB2KOugr+Lncab89I6dU
	cf2IdKGCDfQCBpL+z8SKkUM3ZcGRAIJJYnS6eUE2DWIYRF+wqys9agISol47ofwZjquWNUruxF+np
	RrxAhXj+RtirW9irM5Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imNAz-00050X-SU; Tue, 31 Dec 2019 19:27:33 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imNAo-0004za-Na
 for linux-mtd@lists.infradead.org; Tue, 31 Dec 2019 19:27:24 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id A8094240005;
 Tue, 31 Dec 2019 19:27:13 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [RFC PATCH 0/3] Fix proposal for the Micron shallow erase issue
Date: Tue, 31 Dec 2019 20:26:53 +0100
Message-Id: <20191231192656.16376-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_112722_905894_4B7826B3 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
 Zoltan Szubbocsev <zszubbocsev@micron.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, tglx@linutronix.de,
 Piotr Wojtaszczyk <WojtaszczykP@cumminsallison.com>,
 Bean Huo <beanhuo@micron.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGVsbG8sCgpBZnRlciBhIGZpcnN0IHByb3Bvc2FsIGJ5IFRob21hcyBHbGVpeG5lciBhbmQgdGhl
biBhbm90aGVyIHByb3Bvc2FsIGJ5CkJlYW4gSHVvIChNaWNyb24pLCB0aGlzIGlzIGFuIGF0dGVt
cHQgdG8gbWFpbmxpbmUgdGhlIGZpeCBmb3IgTWljcm9uJ3MKInNoYWxsb3cgZXJhc2UiIGlzc3Vl
LiBJTUhPIHRoaXMgaXMgYSAicHJldHR5IHdheSIsIG5vdCBzbyBpbnZhc2l2ZSwKd2l0aCBhIGxp
bWl0ZWQgcGVyZm9ybWFuY2UgcGVuYWx0eS4KCkl0IGhhcyBvbmx5IGJlICpjb21waWxlLXRlc3Rl
ZCogYW5kIHRoaXMgaXMganVzdCB0byBrbm93IGlmIHRoZQphcHByb2FjaCBpcyBmaW5lIG9yIG5v
dCwgdGhlbiBJIHdpbGwgb3B0aW1pemUsIG1heWJlIHJld3JpdGUgYSBiaXQgYW5kCmZvcmNpYmx5
IChhc2sgdG8pIHRlc3QgaXQuCgpIYXBweSBuZXcgeWVhciEKTWlxdcOobAoKCk1pcXVlbCBSYXlu
YWwgKDMpOgogIG10ZDogcmF3bmFuZDogQWRkIHRoZSBuYW5kX2NoaXAtPmVyYXNlIGhvb2sKICBt
dGQ6IHJhd25hbmQ6IEFkZCB0aGUgbmFuZF9jaGlwLT53cml0ZV9vb2IgaG9vawogIG10ZDogcmF3
bmFuZDogbWljcm9uOiBBZGRyZXNzIHRoZSBzaGFsbG93IGVyYXNlIGlzc3VlCgogZGF0YV9idWYg
ICAgICAgICAgICAgICAgICAgICAgICAgICB8IDI5MDk5ICsrKysrKysrKysrKysrKysrKysrKysr
KysrKwogZGF0YWJ1ZiAgICAgICAgICAgICAgICAgICAgICAgICAgICB8IDI5MDk5ICsrKysrKysr
KysrKysrKysrKysrKysrKysrKwogZHJpdmVycy9tdGQvbmFuZC9yYXcvaW50ZXJuYWxzLmggICB8
ICAgICAyICsKIGRyaXZlcnMvbXRkL25hbmQvcmF3L25hbmRfYmFzZS5jICAgfCAgICAxNCArLQog
ZHJpdmVycy9tdGQvbmFuZC9yYXcvbmFuZF9taWNyb24uYyB8ICAgMTIxICsKIGluY2x1ZGUvbGlu
dXgvbXRkL3Jhd25hbmQuaCAgICAgICAgfCAgICAgNiArCiA2IGZpbGVzIGNoYW5nZWQsIDU4MzQw
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkYXRhX2J1
ZgogY3JlYXRlIG1vZGUgMTAwNjQ0IGRhdGFidWYKCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1
c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtbXRkLwo=
