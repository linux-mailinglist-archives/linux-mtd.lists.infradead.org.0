Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50AC11B7BDE
	for <lists+linux-mtd@lfdr.de>; Fri, 24 Apr 2020 18:42:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/VLRsgv/tjp1QgOLMjk7U1mTiPGf6SRFyT+JfPaEKNU=; b=lsWjeLIw8QY3qd
	0VF6WqVbjazOA0k4Xs2n2TPZG+/g8iIrLwBcru7nNxDtutszWCmQWzmeFrkks7k5r4my4HJ8Dqq4H
	dDuyTmy8F3ncvdYnm1rLx9o17jgHGpojsbrdohYk9pTORb11IYP5hQUKXA4LyBtXrLNDgsJ20fr5+
	s+jOW7d9alQRPkMskEcrvXMjCbwEQkBolkRe5+HBA8+BtiQ5nHsdAevvCRol/9/FGCpZNa2TzbNP1
	wACZMvXWBkUkdXM4R83yiq3eczEy0fgunAPAMkiLhh06kqOX/CBKbX9Donkp15HiGQkr09FCRLjVQ
	FjYp+AsSpNgSiatjLFIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS1Os-0004ks-26; Fri, 24 Apr 2020 16:42:02 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS1Ng-0003s8-6N
 for linux-mtd@lists.infradead.org; Fri, 24 Apr 2020 16:40:50 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 0013420004;
 Fri, 24 Apr 2020 16:40:43 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v2 0/9] Misc timing changes
Date: Fri, 24 Apr 2020 18:40:33 +0200
Message-Id: <20200424164042.26572-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_094048_423082_1290BB42 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Cc: Boris Brezillon <boris.brezillon@collabora.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGVsbG8sCgpXaGlsZSB3b3JraW5nIG9uIHRoZSBlYXJseSAtPmV4ZWNfb3AoKSBpbml0aWFsaXph
dGlvbnMsIEkgZmlndXJlZCB0aGUKbG9naWMgbWlnaHQgbmVlZCB0byBiZSB1cGRhdGVkIGEgbGl0
dGxlIGJpdCBpbiBvcmRlciB0byBzdXBwb3J0CiJwcm9ibGVtYXRpYyIgSVBzIGxpa2UgQXJhc2Fu
IHdoaWNoIGRvIG5vdCBsZWF2ZSBhIGxvdCBvZiBsYXRpdHVkZSB0bwp0aGUgY29yZS4gV2hpbGUg
ZG9pbmcgdGhlc2UgY2hhbmdlcyBpbiB0aGUgbG9naWMsIEkgYWxzbyBkZWNpZGVkIHRvCmNsZWFu
dXAgdGhpcyBwb3J0aW9uIGEgYml0LCB3aGljaCBlbmRlZCB3aXRoIHRoZSB3cml0aW5nIG9mIGEg
ZmV3CmFjdHVhbCBmaXhlcy4KCkNoZWVycywKTWlxdcOobAoKQ2hhbmdlcyBpbiB2MjoKKiBVcGRh
dGVkIGEgYml0IHRoZSBrZXJuZWwgZG9jIGFzIHN1Z2dlc3RlZCBieSBCb3Jpcy4KKiBVcGRhdGVk
L2ZpeGVkIHR5cG9zIGluIHRoZSBjb21taXQgbG9ncyBmb2xsb3dpbmcgQm9yaXMgYW5kIFNlcmdl
eQogIGNvbW1lbnRzLgoqIERyb3BwZWQgdGhlIE9ORkkvSkVERUMgcGFyYW1ldGVyIHBhZ2UgcmVh
ZCBzaW1wbGlmaWNhdGlvbi4gSW5kZWVkCiAgdGhleSBjYW4gY2F1c2UgdHJvdWJsZXMuIEkgbW92
ZWQgdGhlc2UgdHdvIHBhdGNoZXMgdG8gYW5vdGhlciBzZXJpZXMKICB3aGljaCB0YWtlcyBjYXJl
IGFib3V0IHVwZGF0aW5nIHNvbWUgb2YgdGhlIGNvcmUncyBvcGVyYXRpb25zIGZvcgogIGNvbXBs
ZXggY29udHJvbGxlcnMuCgpNaXF1ZWwgUmF5bmFsICg5KToKICBtdGQ6IHJhd25hbmQ6IHRpbWlu
Z3M6IEFkZCBtb2RlIGluZm9ybWF0aW9uIHRvIHRoZSB0aW1pbmdzIHN0cnVjdHVyZQogIG10ZDog
cmF3bmFuZDogdGltaW5nczogRml4IGRlZmF1bHQgdFJfbWF4IGFuZCB0Q0NTX21pbiB0aW1pbmdz
CiAgbXRkOiByYXduYW5kOiBvbmZpOiBGaXggcmVkdW5kYW5jeSBkZXRlY3Rpb24gY2hlY2sKICBt
dGQ6IHJhd25hbmQ6IG9uZmk6IFVzZSBpbnRlcm1lZGlhdGUgdmFyaWFibGVzIHRvIGltcHJvdmUg
cmVhZGFiaWxpdHkKICBtdGQ6IHJhd25hbmQ6IG9uZmk6IERlZmluZSB0aGUgbnVtYmVyIG9mIHBh
cmFtZXRlciBwYWdlcwogIG10ZDogcmF3bmFuZDogb25maTogQXZvaWQgZG9pbmcgYSBjb3B5IG9m
IHRoZSBwYXJhbWV0ZXIgcGFnZQogIG10ZDogcmF3bmFuZDogb25maTogRHJvcCBhIHVzZWxlc3Mg
cGFyYW1ldGVyIHBhZ2UgcmVhZAogIG10ZDogcmF3bmFuZDogamVkZWM6IERlZmluZSB0aGUgbnVt
YmVyIG9mIHBhcmFtZXRlciBwYWdlcwogIG10ZDogcmF3bmFuZDogamVkZWM6IFVzZSBpbnRlcm1l
ZGlhdGUgdmFyaWFibGVzIHRvIGltcHJvdmUgcmVhZGFiaWxpdHkKCiBkcml2ZXJzL210ZC9uYW5k
L3Jhdy9uYW5kX2plZGVjLmMgICB8IDExICsrKystLS0KIGRyaXZlcnMvbXRkL25hbmQvcmF3L25h
bmRfb25maS5jICAgIHwgNDggKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0KIGRyaXZlcnMv
bXRkL25hbmQvcmF3L25hbmRfdGltaW5ncy5jIHwgMTEgKysrKystLQogaW5jbHVkZS9saW51eC9t
dGQvcmF3bmFuZC5oICAgICAgICAgfCAxMCArKysrLS0KIDQgZmlsZXMgY2hhbmdlZCwgNDYgaW5z
ZXJ0aW9ucygrKSwgMzQgZGVsZXRpb25zKC0pCgotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNz
aW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LW10ZC8K
