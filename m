Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97BBBCB9E9
	for <lists+linux-mtd@lfdr.de>; Fri,  4 Oct 2019 14:08:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n/E0BACd5LZ0b8RgqsvyRdg65Lgeo9pKdj8itqI/Z5w=; b=b1/B2K90vx2c4B
	sQLhW9mIINkORZpdEGGFEPNyJU1MhbCN9L51uHwmBjaYMFvVMLXbQtSnkKxSfJEzF1nxJR9veAkgK
	AWdyoc/P77OVt5qQdBtkZn9LDLhZdHidhEpkub95+X9J+unoQl2lyalJmCSVKUYFaY8recmEEW3Vx
	TbYiYRWLaHWuuhPXi5JCekpB6Z+khuP7d1602J0EIo4XKoJFhfxTo9/YoR0ilhMjeq4B8nJCIpm+N
	G1XxGRZ36yCBu8O/6WTbwDRxYJZR4cSq5YNQZpT9vRBCeAOd7/usodAKLDOMApIxoYetBrs60tTLl
	W/TzcjJWg9ErYJXmojXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGMNh-00063M-KL; Fri, 04 Oct 2019 12:08:21 +0000
Received: from 9.mo68.mail-out.ovh.net ([46.105.78.111])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGMIv-0000al-1v
 for linux-mtd@lists.infradead.org; Fri, 04 Oct 2019 12:03:26 +0000
Received: from player792.ha.ovh.net (unknown [10.108.57.53])
 by mo68.mail-out.ovh.net (Postfix) with ESMTP id 5B58314250A
 for <linux-mtd@lists.infradead.org>; Fri,  4 Oct 2019 14:03:22 +0200 (CEST)
Received: from kaod.org (lfbn-1-2229-223.w90-76.abo.wanadoo.fr [90.76.50.223])
 (Authenticated sender: clg@kaod.org)
 by player792.ha.ovh.net (Postfix) with ESMTPSA id C8549AA664C7;
 Fri,  4 Oct 2019 12:03:06 +0000 (UTC)
From: =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>
To: linux-mtd@lists.infradead.org, Tudor Ambarus <tudor.ambarus@microchip.com>
Subject: [PATCH 13/16] mtd: spi-nor: aspeed: Check for disabled segments on
 the AST2600
Date: Fri,  4 Oct 2019 13:59:16 +0200
Message-Id: <20191004115919.20788-14-clg@kaod.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191004115919.20788-1-clg@kaod.org>
References: <20191004115919.20788-1-clg@kaod.org>
MIME-Version: 1.0
X-Ovh-Tracer-Id: 3821867236165716915
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrhedugdegudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_050325_256828_ECC2D076 
X-CRM114-Status: GOOD (  15.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.105.78.111 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 Richard Weinberger <richard@nod.at>, Marek Vasut <marek.vasut@gmail.com>,
 Joel Stanley <joel@jms.id.au>, Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T24gdGhlIEFTVDI2MDAsIHRoZSBzZWdtZW50IG9mIGEgZmxhc2ggU1BJIGRldmljZSBjYW4gYmUg
ZGlzYWJsZWQgd2l0aAp6ZXJvIHJlZ2lzdGVyIHZhbHVlLiBCeSBkZWZhdWx0LCB0aGUgQ1MwIEFI
QiB3aW5kb3cgaXMgb3BlbiBidXQgdGhlCm90aGVyIENTIGFyZSBub3QuIFRoaXMgaXMgY2xvc2lu
ZyB0aGUgYWNjZXNzIHRvIHRoZSBmbGFzaCBkZXZpY2UgaW4KdXNlciBtb2RlIGFuZCBhbHNvIGZv
cmJpZHMgc2Nhbm5pbmcuIEZvciBtdWx0aXBsZSBDUywgd2Ugd2lsbCBuZWVkCmZpcm13YXJlIG9y
IGEgRFQgcHJvcGVydHkgdG8gcmVvcGVuIHRoZSBmbGFzaCBBSEIgd2luZG93LgoKU2lnbmVkLW9m
Zi1ieTogQ8OpZHJpYyBMZSBHb2F0ZXIgPGNsZ0BrYW9kLm9yZz4KUmV2aWV3ZWQtYnk6IEFuZHJl
dyBKZWZmZXJ5IDxhbmRyZXdAYWouaWQuYXU+Ci0tLQogZHJpdmVycy9tdGQvc3BpLW5vci9hc3Bl
ZWQtc21jLmMgfCAyMyArKysrKysrKysrKysrKysrKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE5
IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tdGQv
c3BpLW5vci9hc3BlZWQtc21jLmMgYi9kcml2ZXJzL210ZC9zcGktbm9yL2FzcGVlZC1zbWMuYwpp
bmRleCBjOTc3ZjhmMjhhZWYuLmZhZDA4NzM4ZTUzNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9tdGQv
c3BpLW5vci9hc3BlZWQtc21jLmMKKysrIGIvZHJpdmVycy9tdGQvc3BpLW5vci9hc3BlZWQtc21j
LmMKQEAgLTMwNywxMiArMzA3LDIwIEBAIHN0YXRpYyB1MzIgYXNwZWVkX3NtY19zZWdtZW50X2Vu
ZF9hc3QyNjAwKHN0cnVjdCBhc3BlZWRfc21jX2NvbnRyb2xsZXIgKmN0bHIsCiB7CiAJdTMyIGVu
ZF9vZmZzZXQgPSByZWcgJiBBU1QyNjAwX1NFR19BRERSX01BU0s7CiAKKwkvKiBzZWdtZW50IGlz
IGRpc2FibGVkICovCisJaWYgKCFlbmRfb2Zmc2V0KQorCQlyZXR1cm4gY3Rsci0+YWhiX2Jhc2Vf
cGh5OworCiAJcmV0dXJuIGN0bHItPmFoYl9iYXNlX3BoeSArIGVuZF9vZmZzZXQgKyAweDEwMDAw
MDsKIH0KIAogc3RhdGljIHUzMiBhc3BlZWRfc21jX3NlZ21lbnRfcmVnX2FzdDI2MDAoc3RydWN0
IGFzcGVlZF9zbWNfY29udHJvbGxlciAqY3RsciwKIAkJCQkJICB1MzIgc3RhcnQsIHUzMiBlbmQp
CiB7CisJLyogZGlzYWJsZSB6ZXJvIHNpemUgc2VnbWVudHMgKi8KKwlpZiAoc3RhcnQgPT0gZW5k
KQorCQlyZXR1cm4gMDsKKwogCXJldHVybiAoKHN0YXJ0ICYgQVNUMjYwMF9TRUdfQUREUl9NQVNL
KSA+PiAxNikgfAogCQkoKGVuZCAtIDEpICYgQVNUMjYwMF9TRUdfQUREUl9NQVNLKTsKIH0KQEAg
LTY1Niw4ICs2NjQsMTUgQEAgc3RhdGljIHUzMiBjaGlwX3NldF9zZWdtZW50KHN0cnVjdCBhc3Bl
ZWRfc21jX2NoaXAgKmNoaXAsIHUzMiBjcywgdTMyIHN0YXJ0LAogCSAqIHNpemUsIGJ1dCB0YWtl
IGludG8gYWNjb3VudCB0aGUgcG9zc2libGUgb3ZlcmxhcCB3aXRoIHRoZQogCSAqIHByZXZpb3Vz
IHNlZ21lbnQKIAkgKi8KLQlpZiAoIXNpemUpCi0JCXNpemUgPSBpbmZvLT5zZWdtZW50X2VuZChj
b250cm9sbGVyLCBzZWdfb2xkdmFsKSAtIHN0YXJ0OworCWlmICghc2l6ZSkgeworCQllbmQgPSBp
bmZvLT5zZWdtZW50X2VuZChjb250cm9sbGVyLCBzZWdfb2xkdmFsKTsKKworCQkvKgorCQkgKiBD
aGVjayBmb3IgZGlzYWJsZWQgc2VnbWVudCAoQVNUMjYwMCkuCisJCSAqLworCQlpZiAoZW5kICE9
IGFoYl9iYXNlX3BoeSkKKwkJCXNpemUgPSBlbmQgLSBzdGFydDsKKwl9CiAKIAkvKgogCSAqIFRo
ZSBzZWdtZW50IGNhbm5vdCBleGNlZWQgdGhlIG1heGltdW0gd2luZG93IHNpemUgb2YgdGhlCkBA
IC02ODYsOCArNzAxLDggQEAgc3RhdGljIHUzMiBjaGlwX3NldF9zZWdtZW50KHN0cnVjdCBhc3Bl
ZWRfc21jX2NoaXAgKmNoaXAsIHUzMiBjcywgdTMyIHN0YXJ0LAogCQlzaXplID0gZW5kIC0gc3Rh
cnQ7CiAJfQogCi0JZGV2X2luZm8oY2hpcC0+bm9yLmRldiwgIkNFJWQgd2luZG93IFsgMHglLjh4
IC0gMHglLjh4IF0gJWRNQiIsCi0JCSBjcywgc3RhcnQsIGVuZCwgc2l6ZSA+PiAyMCk7CisJZGV2
X2luZm8oY2hpcC0+bm9yLmRldiwgIkNFJWQgd2luZG93IFsgMHglLjh4IC0gMHglLjh4IF0gJWRN
QiVzIiwKKwkJIGNzLCBzdGFydCwgZW5kLCBzaXplID4+IDIwLCBzaXplID8gIiIgOiAiIChkaXNh
YmxlZCkiKTsKIAogCXJldHVybiBzaXplOwogfQotLSAKMi4yMS4wCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNz
aW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LW10ZC8K
