Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E138A1A58
	for <lists+linux-mtd@lfdr.de>; Thu, 29 Aug 2019 14:44:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GIShgMDfhSa6cqMFIDS2lQJEpp5CWAEF7Mks0HpCmUs=; b=euoPqMwbDXts7L
	4NkBdnrAsp2YgZEpJzCm0OEQmsKDoq462AseKqxIc3pbCZXFEK2HSgK72giSRQ20URi6zjUUl/1Df
	+zjZRz5Z/2GpIxHuIpXWbrng23C5xIwUTgWdqzwYuEZPiY5txfOYdrHWKfuoNvgUQsIu5uA/uW8mj
	NVlRRnnAEvya9A5FnCiFiU5lLOqvRBzA5Npkjm2CZ+e0e6pUj7oMn4idI3QDdXAxouvL0KScBqBLQ
	iMo2Zide6XEbM/HCOeJup//gKynOs081/5JZ22Cd4Grb6YJiEjTJ+XyL2NsizO92I8dH4DqT/kNSW
	+/YRiVVNvYPw9cVZFKbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3JnD-0001GH-3A; Thu, 29 Aug 2019 12:44:47 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Jn4-0001Fn-8y
 for linux-mtd@lists.infradead.org; Thu, 29 Aug 2019 12:44:39 +0000
X-Originating-IP: 86.250.200.211
Received: from xps13 (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 165B16000B;
 Thu, 29 Aug 2019 12:44:28 +0000 (UTC)
Date: Thu, 29 Aug 2019 14:44:28 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: [GIT PULL] mtd: Fixes for -rc7
Message-ID: <20190829144428.3cb4d481@xps13>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_054438_465957_12D36954 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 Frieder Schrempf <frieder.schrempf@kontron.de>, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGVsbG8gTGludXMsCgpUaGlzIGlzIGhvcGVmdWxseSB0aGUgbGFzdCBNVEQgZml4ZXMgUFIgZm9y
IHRoZSA1LjMgY3ljbGUgd2l0aCBhCnNpbmdsZSBjaGFuZ2UgdG8gYXZvaWQgYnVpbGQgZmFpbHVy
ZXMgd2hlbiBjb21waWxpbmcgSHlwZXJidXMgc3VwcG9ydC4KClRoYW5rcywKTWlxdcOobAoKClRo
ZSBmb2xsb3dpbmcgY2hhbmdlcyBzaW5jZSBjb21taXQgYTU1YWE4OWFhYjkwZmFlN2M4MTViMDU1
MWIwN2JlMzdkYjM1OWQ3NjoKCiAgTGludXggNS4zLXJjNiAoMjAxOS0wOC0yNSAxMjowMToyMyAt
MDcwMCkKCmFyZSBhdmFpbGFibGUgaW4gdGhlIEdpdCByZXBvc2l0b3J5IGF0OgoKICBnaXQ6Ly9n
aXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvbXRkL2xpbnV4LmdpdCB0YWdz
L210ZC9maXhlcy1mb3ItNS4zLXJjNwoKZm9yIHlvdSB0byBmZXRjaCBjaGFuZ2VzIHVwIHRvIGRj
OWNmZDI2OTIyMjVhMjE2NGY0ZjIwYjdkZWFmMzhjYTg2NDVkZTM6CgogIG10ZDogaHlwZXJidXM6
IGZpeCBkZXBlbmRlbmN5IGFuZCBidWlsZCBlcnJvciAoMjAxOS0wOC0yOSAxNDozMToyMyArMDIw
MCkKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0KSHlwZXJidXM6Ci0gQWRkIGEgJ2RlcGVuZHMgb24nIGluIHRoZSBjb3JlIEtj
b25maWcgZW50cnkgdG8gYXZvaWQgYnVpbGQgZXJyb3JzLgoKLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpSYW5keSBEdW5sYXAg
KDEpOgogICAgICBtdGQ6IGh5cGVyYnVzOiBmaXggZGVwZW5kZW5jeSBhbmQgYnVpbGQgZXJyb3IK
CiBkcml2ZXJzL210ZC9oeXBlcmJ1cy9LY29uZmlnIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKykKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
