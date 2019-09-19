Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 034BDB81A1
	for <lists+linux-mtd@lfdr.de>; Thu, 19 Sep 2019 21:45:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jgIdxTOoGUlOYXN/Pe9VRisa1KOtgVU4dA/1gMRShP4=; b=r9MseK+npe6Iuu
	biGU7ehDHn5f94CQirL/ZKRKlzELjizJ3veJNRcbDLR9rhr4Dn7UxQ4xfLM25RQYx6mQYVawrQ/4R
	g0Z6nq9gEYX57XPQzqZ/1eKrcoL9RV6cvEze3NmNZmbh5aKpZM6svbqXSLnM47X8Do1l96DE+FJyV
	72nBg/TV77hb6BlAspBiLOPUwC9JmFhxI0oNJu6ams6mkhW3pebBkRVvfJU7IUJ9Jo2VLuk9wGl8F
	7fVwRW6KrAAJ7OeF0SA50droUJZSgeXCjL+aYnkc4soOWRUmz/5iuRTx2sk/4cSudcFg1uiXWnbM5
	klQmjz+K/TEdl8Ige06g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB2Mf-00041x-Qr; Thu, 19 Sep 2019 19:45:17 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB2A6-0002BJ-As; Thu, 19 Sep 2019 19:32:20 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 99667240003;
 Thu, 19 Sep 2019 19:32:14 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH v3 14/40] mtd: nand: Introduce the ECC engine abstraction
Date: Thu, 19 Sep 2019 21:31:14 +0200
Message-Id: <20190919193141.7865-15-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190919193141.7865-1-miquel.raynal@bootlin.com>
References: <20190919193141.7865-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_123218_742511_46F006F1 
X-CRM114-Status: GOOD (  22.35  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Tudor Ambarus <tudor.ambarus@microchip.com>,
 Julien Su <juliensu@mxic.com.tw>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 Paul Cercueil <paul@crapouillou.net>,
 Boris Brezillon <boris.brezillon@collabora.com>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Q3JlYXRlIGEgZ2VuZXJpYyBFQ0MgZW5naW5lIG9iamVjdC4KCkxhdGVyIHRoZSBlY2MuYyBmaWxl
IHdpbGwgcmVjZWl2ZSBtb3JlIGdlbmVyaWMgY29kZSBjb21pbmcgZnJvbQp0aGUgcmF3IE5BTkQg
c3BlY2lmaWMgcGFydC4gVGhpcyBpcyBhIGJhc2UgdG8gaW5zdGFudGlhdGUgRUNDIGVuZ2luZQpv
YmplY3RzLgoKU2lnbmVkLW9mZi1ieTogTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290
bGluLmNvbT4KLS0tCiBkcml2ZXJzL210ZC9uYW5kL0tjb25maWcgIHwgICA3ICsrCiBkcml2ZXJz
L210ZC9uYW5kL01ha2VmaWxlIHwgICAyICsKIGRyaXZlcnMvbXRkL25hbmQvZWNjLmMgICAgfCAx
MzggKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKIGluY2x1ZGUvbGludXgv
bXRkL25hbmQuaCAgfCAgNjkgKysrKysrKysrKysrKysrKysrKwogNCBmaWxlcyBjaGFuZ2VkLCAy
MTYgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbXRkL25hbmQvZWNj
LmMKCmRpZmYgLS1naXQgYS9kcml2ZXJzL210ZC9uYW5kL0tjb25maWcgYi9kcml2ZXJzL210ZC9u
YW5kL0tjb25maWcKaW5kZXggYzFhNDViMDcxMTY1Li5hNDQ3OGZmYTI3OWQgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvbXRkL25hbmQvS2NvbmZpZworKysgYi9kcml2ZXJzL210ZC9uYW5kL0tjb25maWcK
QEAgLTksNCArOSwxMSBAQCBzb3VyY2UgImRyaXZlcnMvbXRkL25hbmQvb25lbmFuZC9LY29uZmln
Igogc291cmNlICJkcml2ZXJzL210ZC9uYW5kL3Jhdy9LY29uZmlnIgogc291cmNlICJkcml2ZXJz
L210ZC9uYW5kL3NwaS9LY29uZmlnIgogCittZW51ICJFQ0MgZW5naW5lIHN1cHBvcnQiCisKK2Nv
bmZpZyBNVERfTkFORF9FQ0MKKwlib29sCisKK2VuZG1lbnUKKwogZW5kbWVudQpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9tdGQvbmFuZC9NYWtlZmlsZSBiL2RyaXZlcnMvbXRkL25hbmQvTWFrZWZpbGUK
aW5kZXggN2VjZDgwYzBhNjZlLi45ODEzNzI5NTNiNTYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbXRk
L25hbmQvTWFrZWZpbGUKKysrIGIvZHJpdmVycy9tdGQvbmFuZC9NYWtlZmlsZQpAQCAtNiwzICs2
LDUgQEAgb2JqLSQoQ09ORklHX01URF9OQU5EX0NPUkUpICs9IG5hbmRjb3JlLm8KIG9iai15CSs9
IG9uZW5hbmQvCiBvYmoteQkrPSByYXcvCiBvYmoteQkrPSBzcGkvCisKK25hbmRjb3JlLSQoQ09O
RklHX01URF9OQU5EX0VDQykgKz0gZWNjLm8KZGlmZiAtLWdpdCBhL2RyaXZlcnMvbXRkL25hbmQv
ZWNjLmMgYi9kcml2ZXJzL210ZC9uYW5kL2VjYy5jCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4
IDAwMDAwMDAwMDAwMC4uNGM3OTQzZGRmMmNjCi0tLSAvZGV2L251bGwKKysrIGIvZHJpdmVycy9t
dGQvbmFuZC9lY2MuYwpAQCAtMCwwICsxLDEzOCBAQAorLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZp
ZXI6IEdQTC0yLjArCisvKgorICogR2VuZXJpYyBFcnJvci1Db3JyZWN0aW5nIENvZGUgKEVDQykg
ZW5naW5lCisgKgorICogQ29weXJpZ2h0IChDKSAyMDE5IE1hY3Jvbml4CisgKiBBdXRob3I6Cisg
KiAgICAgTWlxdcOobCBSQVlOQUwgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5jb20+CisgKgorICoK
KyAqIFRoaXMgZmlsZSBkZXNjcmliZXMgdGhlIGFic3RyYWN0aW9uIG9mIGFueSBOQU5EIEVDQyBl
bmdpbmUuIEl0IGhhcyBiZWVuCisgKiBkZXNpZ25lZCB0byBmaXQgbW9zdCBjYXNlcywgaW5jbHVk
aW5nIHBhcmFsbGVsIE5BTkRzIGFuZCBTUEktTkFORHMuCisgKgorICogVGhlcmUgYXJlIHRocmVl
IG1haW4gc2l0dWF0aW9ucyB3aGVyZSBpbnN0YW50aWF0aW5nIHRoaXMgRUNDIGVuZ2luZSBtYWtl
cworICogc2Vuc2U6CisgKiAgIC0gImV4dGVybmFsIjogVGhlIEVDQyBlbmdpbmUgaXMgb3V0c2lk
ZSB0aGUgTkFORCBwaXBlbGluZSwgdHlwaWNhbGx5IHRoaXMKKyAqICAgICAgICAgICAgICAgICBp
cyBhIHNvZnR3YXJlIEVDQyBlbmdpbmUuIE9uZSBjYW4gYWxzbyBpbWFnaW5lIGEgZ2VuZXJpYwor
ICogICAgICAgICAgICAgICAgIGhhcmR3YXJlIEVDQyBlbmdpbmUgd2hpY2ggd291bGQgYmUgYW4g
SVAgaXRzZWxmLiBJbnRlcmFjdGluZworICogICAgICAgICAgICAgICAgIHdpdGggYSBTUEktTkFO
RCBkZXZpY2Ugd2l0aG91dCBvbi1kaWUgRUNDIGNvdWxkIGJlIGFjaGlldmVkCisgKiAgICAgICAg
ICAgICAgICAgdGhhbmtzIHRvIHRoZSB1c2Ugb2Ygc3VjaCBleHRlcm5hbCBlbmdpbmUuCisgKiAg
IC0gInBpcGVsaW5lZCI6IFRoZSBFQ0MgZW5naW5lIGlzIGluc2lkZSB0aGUgTkFORCBwaXBlbGlu
ZSwgaWUuIG9uIHRoZQorICogICAgICAgICAgICAgICAgICBjb250cm9sbGVyJ3Mgc2lkZS4gVGhp
cyBpcyB0aGUgY2FzZSBvZiBtb3N0IG9mIHRoZSByYXcgTkFORAorICogICAgICAgICAgICAgICAg
ICBjb250cm9sbGVycy4gVGhlc2UgY29udHJvbGxlcnMgdXN1YWxseSBlbWJlZCBhbiBoYXJkd2Fy
ZSBFQ0MKKyAqICAgICAgICAgICAgICAgICAgZW5naW5lIHdoaWNoIGlzIG1hbmFnZWQgdGhhbmtz
IHRvIHRoZSBzYW1lIHJlZ2lzdGVyIHNldCBhcworICogICAgICAgICAgICAgICAgICB0aGUgY29u
dHJvbGxlcidzLgorICogICAtICJvbmRpZSI6IFRoZSBFQ0MgZW5naW5lIGlzIGluc2lkZSB0aGUg
TkFORCBwaXBlbGluZSwgb24gdGhlIGNoaXAncyBzaWRlLgorICogICAgICAgICAgICAgIFNvbWUg
TkFORCBjaGlwcyBjYW4gY29ycmVjdCB0aGVtc2VsdmVzIHRoZSBkYXRhLiBUaGUgb24tZGllCisg
KiAgICAgICAgICAgICAgY29ycmVjdGlvbiBjYW4gYmUgZW5hYmxlZCwgZGlzYWJsZWQgYW5kIHRo
ZSBzdGF0dXMgb2YgdGhlCisgKiAgICAgICAgICAgICAgY29ycmVjdGlvbiBhZnRlciBhIHJlYWQg
bWF5IGJlIHJldHJpZXZlZCB3aXRoIGEgTkFORCBjb21tYW5kCisgKiAgICAgICAgICAgICAgKG1h
eSBiZSB2ZW5kb3Igc3BlY2lmaWMpLgorICoKKyAqIEJlc2lkZXMgdGhlIGluaXRpYWwgc2V0dXAg
YW5kIGZpbmFsIGNsZWFudXBzLCB0aGUgaW50ZXJmYWNlcyBhcmUgcmF0aGVyCisgKiBzaW1wbGU6
CisgKiAgIC0gInByZXBhcmUiOiBQcmVwYXJlIGFuIEkvTyByZXF1ZXN0LCBjaGVjayB0aGUgRUND
IGVuZ2luZSBpcyBlbmFibGVkIG9yCisgKiAgICAgICAgICAgICAgICBkaXNhYmxlZCBhcyByZXF1
ZXN0ZWQgYmVmb3JlIHRoZSBJL08uIEluIGNhc2Ugb2Ygc29mdHdhcmUKKyAqICAgICAgICAgICAg
ICAgIGNvcnJlY3Rpb24sIHRoaXMgc3RlcCBtYXkgaW52b2x2ZSB0byBkZXJpdmUgdGhlIEVDQyBi
eXRlcyBhbmQKKyAqICAgICAgICAgICAgICAgIHBsYWNlIHRoZW0gaW4gdGhlIE9PQiBhcmVhIGJl
Zm9yZSBhIHdyaXRlLgorICogICAtICJmaW5pc2giOiBGaW5pc2ggYW4gSS9PIHJlcXVlc3QsIGNo
ZWNrIHRoZSBzdGF0dXMgb2YgdGhlIG9wZXJhdGlvbiBpZS4KKyAqICAgICAgICAgICAgICAgdGhl
IGRhdGEgdmFsaWRpdHkgaW4gY2FzZSBvZiBhIHJlYWQgKHJlcG9ydCB0byB0aGUgdXBwZXIgbGF5
ZXIKKyAqICAgICAgICAgICAgICAgYW55IGJpdGZsaXAvZXJyb3JzKS4KKyAqCisgKiBCb3RoIHBy
ZXBhcmUvZmluaXNoIGNhbGxiYWNrcyBhcmUgc3VwcG9zZWQgdG8gZW5jbG9zZSBJL08gcmVxdWVz
dCBhbmQgd2lsbAorICogYmVoYXZlIGRpZmZlcmVudGx5IGRlcGVuZGluZyBvbiB0aGUgZGVzaXJl
ZCBjb3JyZWN0aW9uOgorICogICAtICJyYXciOiBDb3JyZWN0aW9uIGRpc2FibGVkCisgKiAgIC0g
ImVjYyI6IENvcnJlY3Rpb24gZW5hYmxlZAorICoKKyAqIFRoZSByZXF1ZXN0IGRpcmVjdGlvbiBp
cyBpbXBhY3RpbmcgdGhlIGxvZ2ljIGFzIHdlbGw6CisgKiAgIC0gInJlYWQiOiBMb2FkIGRhdGEg
ZnJvbSB0aGUgTkFORCBjaGlwCisgKiAgIC0gIndyaXRlIjogU3RvcmUgZGF0YSBpbiB0aGUgTkFO
RCBjaGlwCisgKgorICogTWl4aW5nIGFsbCB0aGlzIGNvbWJpbmF0aW9ucyB0b2dldGhlciBnaXZl
cyB0aGUgZm9sbG93aW5nIGJlaGF2aW9yLgorICoKKyAqIFsiZXh0ZXJuYWwiIEVDQyBlbmdpbmVd
CisgKiAgIC0gZXh0ZXJuYWwgKyBwcmVwYXJlICsgcmF3ICsgcmVhZDogZG8gbm90aGluZworICog
ICAtIGV4dGVybmFsICsgZmluaXNoICArIHJhdyArIHJlYWQ6IGRvIG5vdGhpbmcKKyAqICAgLSBl
eHRlcm5hbCArIHByZXBhcmUgKyByYXcgKyB3cml0ZTogZG8gbm90aGluZworICogICAtIGV4dGVy
bmFsICsgZmluaXNoICArIHJhdyArIHdyaXRlOiBkbyBub3RoaW5nCisgKiAgIC0gZXh0ZXJuYWwg
KyBwcmVwYXJlICsgZWNjICsgcmVhZDogZG8gbm90aGluZworICogICAtIGV4dGVybmFsICsgZmlu
aXNoICArIGVjYyArIHJlYWQ6IGNhbGN1bGF0ZSBleHBlY3RlZCBFQ0MgYnl0ZXMsIGV4dHJhY3QK
KyAqICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBFQ0MgYnl0ZXMgZnJvbSBP
T0IgYnVmZmVyLCBjb3JyZWN0CisgKiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgYW5kIHJlcG9ydCBhbnkgYml0ZmxpcC9lcnJvcgorICogICAtIGV4dGVybmFsICsgcHJlcGFy
ZSArIGVjYyArIHdyaXRlOiBjYWxjdWxhdGUgRUNDIGJ5dGVzIGFuZCBzdG9yZSB0aGVtIGF0Cisg
KiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHRoZSByaWdodCBwbGFjZSBp
biB0aGUgT09CIGJ1ZmZlciBiYXNlZAorICogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBvbiB0aGUgT09CIGxheW91dAorICogICAtIGV4dGVybmFsICsgZmluaXNoICArIGVj
YyArIHdyaXRlOiBkbyBub3RoaW5nCisgKgorICogWyJwaXBlbGluZWQiIEVDQyBlbmdpbmVdCisg
KiAgIC0gcGlwZWxpbmVkICsgcHJlcGFyZSArIHJhdyArIHJlYWQ6IGRpc2FibGUgdGhlIGNvbnRy
b2xsZXIncyBFQ0MgZW5naW5lIGlmCisgKiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIGFjdGl2YXRlZAorICogICAtIHBpcGVsaW5lZCArIGZpbmlzaCAgKyByYXcgKyByZWFk
OiBkbyBub3RoaW5nCisgKiAgIC0gcGlwZWxpbmVkICsgcHJlcGFyZSArIHJhdyArIHdyaXRlOiBk
aXNhYmxlIHRoZSBjb250cm9sbGVyJ3MgRUNDIGVuZ2luZSBpZgorICogICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgYWN0aXZhdGVkCisgKiAgIC0gcGlwZWxpbmVkICsgZmlu
aXNoICArIHJhdyArIHdyaXRlOiBkbyBub3RoaW5nCisgKiAgIC0gcGlwZWxpbmVkICsgcHJlcGFy
ZSArIGVjYyArIHJlYWQ6IGVuYWJsZSB0aGUgY29udHJvbGxlcidzIEVDQyBlbmdpbmUgaWYKKyAq
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZGVhY3RpdmF0ZWQKKyAqICAg
LSBwaXBlbGluZWQgKyBmaW5pc2ggICsgZWNjICsgcmVhZDogY2hlY2sgdGhlIHN0YXR1cywgcmVw
b3J0IGFueQorICogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBlcnJvci9i
aXRmbGlwCisgKiAgIC0gcGlwZWxpbmVkICsgcHJlcGFyZSArIGVjYyArIHdyaXRlOiBlbmFibGUg
dGhlIGNvbnRyb2xsZXIncyBFQ0MgZW5naW5lIGlmCisgKiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBkZWFjdGl2YXRlZAorICogICAtIHBpcGVsaW5lZCArIGZpbmlzaCAg
KyBlY2MgKyB3cml0ZTogZG8gbm90aGluZworICoKKyAqIFsib25kaWUiIEVDQyBlbmdpbmVdCisg
KiAgIC0gb25kaWUgKyBwcmVwYXJlICsgcmF3ICsgcmVhZDogc2VuZCBjb21tYW5kcyB0byBkaXNh
YmxlIHRoZSBvbi1jaGlwIEVDQworICogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IGVuZ2luZSBpZiBhY3RpdmF0ZWQKKyAqICAgLSBvbmRpZSArIGZpbmlzaCAgKyByYXcgKyByZWFk
OiBkbyBub3RoaW5nCisgKiAgIC0gb25kaWUgKyBwcmVwYXJlICsgcmF3ICsgd3JpdGU6IHNlbmQg
Y29tbWFuZHMgdG8gZGlzYWJsZSB0aGUgb24tY2hpcCBFQ0MKKyAqICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgZW5naW5lIGlmIGFjdGl2YXRlZAorICogICAtIG9uZGllICsgZmlu
aXNoICArIHJhdyArIHdyaXRlOiBkbyBub3RoaW5nCisgKiAgIC0gb25kaWUgKyBwcmVwYXJlICsg
ZWNjICsgcmVhZDogc2VuZCBjb21tYW5kcyB0byBlbmFibGUgdGhlIG9uLWNoaXAgRUNDCisgKiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZW5naW5lIGlmIGRlYWN0aXZhdGVkCisg
KiAgIC0gb25kaWUgKyBmaW5pc2ggICsgZWNjICsgcmVhZDogc2VuZCBjb21tYW5kcyB0byBjaGVj
ayB0aGUgc3RhdHVzLCByZXBvcnQKKyAqICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBhbnkgZXJyb3IvYml0ZmxpcAorICogICAtIG9uZGllICsgcHJlcGFyZSArIGVjYyArIHdyaXRl
OiBzZW5kIGNvbW1hbmRzIHRvIGVuYWJsZSB0aGUgb24tY2hpcCBFQ0MKKyAqICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgZW5naW5lIGlmIGRlYWN0aXZhdGVkCisgKiAgIC0gb25k
aWUgKyBmaW5pc2ggICsgZWNjICsgd3JpdGU6IGRvIG5vdGhpbmcKKyAqLworCisjaW5jbHVkZSA8
bGludXgvbW9kdWxlLmg+CisjaW5jbHVkZSA8bGludXgvbXRkL25hbmQuaD4KKworaW50IG5hbmRf
ZWNjX2luaXRfY3R4KHN0cnVjdCBuYW5kX2RldmljZSAqbmFuZCkKK3sKKwlpZiAoIW5hbmQtPmVj
Yy5lbmdpbmUtPm9wcy0+aW5pdF9jdHgpCisJCXJldHVybiAwOworCisJcmV0dXJuIG5hbmQtPmVj
Yy5lbmdpbmUtPm9wcy0+aW5pdF9jdHgobmFuZCk7Cit9CitFWFBPUlRfU1lNQk9MKG5hbmRfZWNj
X2luaXRfY3R4KTsKKwordm9pZCBuYW5kX2VjY19jbGVhbnVwX2N0eChzdHJ1Y3QgbmFuZF9kZXZp
Y2UgKm5hbmQpCit7CisJaWYgKG5hbmQtPmVjYy5lbmdpbmUtPm9wcy0+Y2xlYW51cF9jdHgpCisJ
CW5hbmQtPmVjYy5lbmdpbmUtPm9wcy0+Y2xlYW51cF9jdHgobmFuZCk7Cit9CitFWFBPUlRfU1lN
Qk9MKG5hbmRfZWNjX2NsZWFudXBfY3R4KTsKKworaW50IG5hbmRfZWNjX3ByZXBhcmVfaW9fcmVx
KHN0cnVjdCBuYW5kX2RldmljZSAqbmFuZCwKKwkJCSAgICBzdHJ1Y3QgbmFuZF9wYWdlX2lvX3Jl
cSAqcmVxLCB2b2lkICpvb2JidWYpCit7CisJaWYgKCFuYW5kLT5lY2MuZW5naW5lLT5vcHMtPnBy
ZXBhcmVfaW9fcmVxKQorCQlyZXR1cm4gMDsKKworCXJldHVybiBuYW5kLT5lY2MuZW5naW5lLT5v
cHMtPnByZXBhcmVfaW9fcmVxKG5hbmQsIHJlcSwgb29iYnVmKTsKK30KK0VYUE9SVF9TWU1CT0wo
bmFuZF9lY2NfcHJlcGFyZV9pb19yZXEpOworCitpbnQgbmFuZF9lY2NfZmluaXNoX2lvX3JlcShz
dHJ1Y3QgbmFuZF9kZXZpY2UgKm5hbmQsCisJCQkgICBzdHJ1Y3QgbmFuZF9wYWdlX2lvX3JlcSAq
cmVxLCB2b2lkICpvb2JidWYpCit7CisJaWYgKCFuYW5kLT5lY2MuZW5naW5lLT5vcHMtPmZpbmlz
aF9pb19yZXEpCisJCXJldHVybiAwOworCisJcmV0dXJuIG5hbmQtPmVjYy5lbmdpbmUtPm9wcy0+
ZmluaXNoX2lvX3JlcShuYW5kLCByZXEsIG9vYmJ1Zik7Cit9CitFWFBPUlRfU1lNQk9MKG5hbmRf
ZWNjX2ZpbmlzaF9pb19yZXEpOworCitNT0RVTEVfTElDRU5TRSgiR1BMIik7CitNT0RVTEVfQVVU
SE9SKCJNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPiIpOworTU9EVUxF
X0RFU0NSSVBUSU9OKCJHZW5lcmljIEVDQyBlbmdpbmUiKTsKZGlmZiAtLWdpdCBhL2luY2x1ZGUv
bGludXgvbXRkL25hbmQuaCBiL2luY2x1ZGUvbGludXgvbXRkL25hbmQuaAppbmRleCAxMWNkN2Nj
ODFhN2EuLmEzYTg2YmFlNWZiNyAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9tdGQvbmFuZC5o
CisrKyBiL2luY2x1ZGUvbGludXgvbXRkL25hbmQuaApAQCAtMTc3LDYgKzE3Nyw3NSBAQCBzdHJ1
Y3QgbmFuZF9vcHMgewogCWJvb2wgKCppc2JhZCkoc3RydWN0IG5hbmRfZGV2aWNlICpuYW5kLCBj
b25zdCBzdHJ1Y3QgbmFuZF9wb3MgKnBvcyk7CiB9OwogCisvKioKKyAqIHN0cnVjdCBuYW5kX2Vj
Y19jb250ZXh0IC0gQ29udGV4dCBmb3IgdGhlIEVDQyBlbmdpbmUKKyAqIEBjb25mOiBiYXNpYyBF
Q0MgZW5naW5lIHBhcmFtZXRlcnMKKyAqIEB0b3RhbDogVG90YWwgbnVtYmVyIG9mIGJ5dGVzIHVz
ZWQgZm9yIHN0b3JpbmcgRUNDIGNvZGVzLCB0aGlzIGlzIHVzZWQgYnkKKyAqICAgICAgICAgZ2Vu
ZXJpYyBPT0IgbGF5b3V0cworICogQHByaXY6IEVDQyBlbmdpbmUgZHJpdmVyIHByaXZhdGUgZGF0
YQorICovCitzdHJ1Y3QgbmFuZF9lY2NfY29udGV4dCB7CisJc3RydWN0IG5hbmRfZWNjX3Byb3Bz
IGNvbmY7CisJdW5zaWduZWQgaW50IHRvdGFsOworCXZvaWQgKnByaXY7Cit9OworCisvKioKKyAq
IHN0cnVjdCBuYW5kX2VjY19lbmdpbmVfb3BzIC0gR2VuZXJpYyBFQ0MgZW5naW5lIG9wZXJhdGlv
bnMKKyAqIEBpbml0X2N0eDogZ2l2ZW4gYSBkZXNpcmVkIHVzZXIgY29uZmlndXJhdGlvbiBmb3Ig
dGhlIHBvaW50ZWQgTkFORCBkZXZpY2UsCisgKiAgICAgICAgICAgIHJlcXVlc3RzIHRoZSBFQ0Mg
ZW5naW5lIGRyaXZlciB0byBzZXR1cCBhIGNvbmZpZ3VyYXRpb24gd2l0aAorICogICAgICAgICAg
ICB2YWx1ZXMgaXQgc3VwcG9ydHMuCisgKiBAY2xlYW51cF9jdHg6IGNsZWFuIHRoZSBjb250ZXh0
IGluaXRpYWxpemVkIGJ5IEBpbml0X2N0eC4KKyAqIEBwcmVwYXJlX2lvX3JlcTogaXMgY2FsbGVk
IGJlZm9yZSByZWFkaW5nL3dyaXRpbmcgYSBwYWdlIHRvIHByZXBhcmUgdGhlIEkvTworICogICAg
ICAgICAgICAgICAgICByZXF1ZXN0IHRvIGJlIHBlcmZvcm1lZCB3aXRoIEVDQyBjb3JyZWN0aW9u
LgorICogQGZpbmlzaF9pb19yZXE6IGlzIGNhbGxlZCBhZnRlciByZWFkaW5nL3dyaXRpbmcgYSBw
YWdlIHRvIHRlcm1pbmF0ZSB0aGUgSS9PCisgKiAgICAgICAgICAgICAgICAgcmVxdWVzdCBhbmQg
ZW5zdXJlIHByb3BlciBFQ0MgY29ycmVjdGlvbi4KKyAqLworc3RydWN0IG5hbmRfZWNjX2VuZ2lu
ZV9vcHMgeworCWludCAoKmluaXRfY3R4KShzdHJ1Y3QgbmFuZF9kZXZpY2UgKm5hbmQpOworCXZv
aWQgKCpjbGVhbnVwX2N0eCkoc3RydWN0IG5hbmRfZGV2aWNlICpuYW5kKTsKKwlpbnQgKCpwcmVw
YXJlX2lvX3JlcSkoc3RydWN0IG5hbmRfZGV2aWNlICpuYW5kLAorCQkJICAgICAgc3RydWN0IG5h
bmRfcGFnZV9pb19yZXEgKnJlcSwKKwkJCSAgICAgIHZvaWQgKm9vYmJ1Zik7CisJaW50ICgqZmlu
aXNoX2lvX3JlcSkoc3RydWN0IG5hbmRfZGV2aWNlICpuYW5kLAorCQkJICAgICBzdHJ1Y3QgbmFu
ZF9wYWdlX2lvX3JlcSAqcmVxLAorCQkJICAgICB2b2lkICpvb2JidWYpOworfTsKKworLyoqCisg
KiBzdHJ1Y3QgbmFuZF9lY2NfZW5naW5lIC0gR2VuZXJpYyBFQ0MgZW5naW5lIGFic3RyYWN0aW9u
IGZvciBOQU5EIGRldmljZXMKKyAqIEBvcHM6IEVDQyBlbmdpbmUgb3BlcmF0aW9ucworICovCitz
dHJ1Y3QgbmFuZF9lY2NfZW5naW5lIHsKKwlzdHJ1Y3QgbmFuZF9lY2NfZW5naW5lX29wcyAqb3Bz
OworfTsKKworaW50IG5hbmRfZWNjX2luaXRfY3R4KHN0cnVjdCBuYW5kX2RldmljZSAqbmFuZCk7
Cit2b2lkIG5hbmRfZWNjX2NsZWFudXBfY3R4KHN0cnVjdCBuYW5kX2RldmljZSAqbmFuZCk7Citp
bnQgbmFuZF9lY2NfcHJlcGFyZV9pb19yZXEoc3RydWN0IG5hbmRfZGV2aWNlICpuYW5kLAorCQkJ
ICAgIHN0cnVjdCBuYW5kX3BhZ2VfaW9fcmVxICpyZXEsIHZvaWQgKm9vYmJ1Zik7CitpbnQgbmFu
ZF9lY2NfZmluaXNoX2lvX3JlcShzdHJ1Y3QgbmFuZF9kZXZpY2UgKm5hbmQsCisJCQkgICBzdHJ1
Y3QgbmFuZF9wYWdlX2lvX3JlcSAqcmVxLCB2b2lkICpvb2JidWYpOworCisvKioKKyAqIHN0cnVj
dCBuYW5kX2VjYyAtIEhpZ2gtbGV2ZWwgRUNDIG9iamVjdAorICogQGRlZmF1bHRzOiBEZWZhdWx0
IHZhbHVlcywgZGVwZW5kIG9uIHRoZSB1bmRlcmx5aW5nIHN1YnN5c3RlbQorICogQHJlcXVpcmVt
ZW50czogRUNDIHJlcXVpcmVtZW50cyBmcm9tIHRoZSBOQU5EIGNoaXAgcGVyc3BlY3RpdmUKKyAq
IEB1c2VyX2NvbmY6IFVzZXIgZGVzaXJlcyBpbiB0ZXJtcyBvZiBFQ0MgcGFyYW1ldGVycworICog
QGN0eDogRUNDIGNvbnRleHQgZm9yIHRoZSBFQ0MgZW5naW5lLCBkZXJpdmVkIGZyb20gdGhlIGRl
dmljZSBAcmVxdWlyZW1lbnRzCisgKiAgICAgICB0aGUgQHVzZXJfY29uZiBhbmQgdGhlIEBkZWZh
dWx0cworICogQG9uZGllX2VuZ2luZTogT24tZGllIEVDQyBlbmdpbmUgcmVmZXJlbmNlLCBpZiBh
bnkKKyAqIEBlbmdpbmU6IEVDQyBlbmdpbmUgYWN0dWFsbHkgYm91bmQKKyAqLworc3RydWN0IG5h
bmRfZWNjIHsKKwlzdHJ1Y3QgbmFuZF9lY2NfcHJvcHMgZGVmYXVsdHM7CisJc3RydWN0IG5hbmRf
ZWNjX3Byb3BzIHJlcXVpcmVtZW50czsKKwlzdHJ1Y3QgbmFuZF9lY2NfcHJvcHMgdXNlcl9jb25m
OworCXN0cnVjdCBuYW5kX2VjY19jb250ZXh0IGN0eDsKKwlzdHJ1Y3QgbmFuZF9lY2NfZW5naW5l
ICpvbmRpZV9lbmdpbmU7CisJc3RydWN0IG5hbmRfZWNjX2VuZ2luZSAqZW5naW5lOworfTsKKwog
LyoqCiAgKiBzdHJ1Y3QgbmFuZF9kZXZpY2UgLSBOQU5EIGRldmljZQogICogQG10ZDogTVREIGlu
c3RhbmNlIGF0dGFjaGVkIHRvIHRoZSBOQU5EIGRldmljZQotLSAKMi4yMC4xCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBk
aXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LW10ZC8K
