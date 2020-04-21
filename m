Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A354F1B2D0D
	for <lists+linux-mtd@lfdr.de>; Tue, 21 Apr 2020 18:47:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0H0HtW5w/KDvJp+Zp32FEnSkgE/NPdr+IZ04O83qE8k=; b=nAXqUX6XjG+Ash
	mUCG8EOhYT01FxBExlttdcn33dnx7mkWk9vqQTPOM5lbdCwXMADxFvBxBSCnYL8uyF0qZeS5IBwpJ
	HHYhzHfQ6qxLdvLrWbrfnqJRrUgnwwUsXuD8SJPtRAdN/PV1u5y1q+uh1HjwtNr0yi5OdbYZnBpIS
	Q5xTOdPTGrUiTwY7uidWp4PFX33G04M1EZCRgm43eQv+2N54VergbkiwpwdYKgKUrP5Q4VjNJvc8L
	fftcBXxUyz9cy1OBTsSy1thBwwGe/vKCSP6lk0/vs83PKwMH3aR1cNMZJggigkR7JNqUQHXeBh7Dw
	iKamRa6nWWINYh/4+q3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQw3F-0004Db-44; Tue, 21 Apr 2020 16:47:13 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQw2l-0003ys-VX
 for linux-mtd@lists.infradead.org; Tue, 21 Apr 2020 16:46:45 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 812462000A;
 Tue, 21 Apr 2020 16:46:38 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH 0/8] Misc timing changes
Date: Tue, 21 Apr 2020 18:46:29 +0200
Message-Id: <20200421164637.8086-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_094644_152173_366E9F7C 
X-CRM114-Status: UNSURE (   8.61  )
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
Cc: Michal Simek <monstr@monstr.eu>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>,
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
ZmV3CmZpeGVzLgoKQ2hlZXJzLApNaXF1w6hsCgpNaXF1ZWwgUmF5bmFsICg4KToKICBtdGQ6IHJh
d25hbmQ6IHRpbWluZ3M6IEFkZCBtb2RlIGluZm9ybWF0aW9uIHRvIHRoZSB0aW1pbmdzIHN0cnVj
dHVyZQogIG10ZDogcmF3bmFuZDogdGltaW5nczogRml4IGRlZmF1bHQgdFJfbWF4IGFuZCB0Q0NT
X21pbiB0aW1pbmdzCiAgbXRkOiByYXduYW5kOiBvbmZpOiBGaXggcmVkdW5kYW5jeSBkZXRlY3Rp
b24gY2hlY2sKICBtdGQ6IHJhd25hbmQ6IG9uZmk6IFVzZSBhbiBpbnRlcm1lZGlhdGUgdmFyaWFi
bGUgdG8gZGVjb21wbGVmaXh5CiAgICBjb25kaXRpb25zCiAgbXRkOiByYXduYW5kOiBvbmZpOiBB
dm9pZCBkb2luZyBhIGNvcHkgb2YgdGhlIHBhcmFtZXRlciBwYWdlCiAgbXRkOiByYXduYW5kOiBv
bmZpOiBTaW1wbGlmeSB0aGUgTkFORCBvcGVyYXRpb25zIGR1cmluZyBkZXRlY3Rpb24KICBtdGQ6
IHJhd25hbmQ6IGplZGVjOiBVc2UgYW4gaW50ZXJtZWRpYXRlIHZhcmlhYmxlIHRvIGRlY29tcGxl
Zml4eQogICAgY29uZGl0aW9ucwogIG10ZDogcmF3bmFuZDogamVkZWM6IFNpbXBsaWZ5IHRoZSBO
QU5EIG9wZXJhdGlvbnMgZHVyaW5nIGRldGVjdGlvbgoKIGRyaXZlcnMvbXRkL25hbmQvcmF3L25h
bmRfamVkZWMuYyAgIHwgMjEgKysrKysrKystLS0tLS0tLS0KIGRyaXZlcnMvbXRkL25hbmQvcmF3
L25hbmRfb25maS5jICAgIHwgMzYgKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0KIGRyaXZl
cnMvbXRkL25hbmQvcmF3L25hbmRfdGltaW5ncy5jIHwgMTEgKysrKysrLS0tCiBpbmNsdWRlL2xp
bnV4L210ZC9yYXduYW5kLmggICAgICAgICB8IDEwICsrKysrLS0tCiA0IGZpbGVzIGNoYW5nZWQs
IDM5IGluc2VydGlvbnMoKyksIDM5IGRlbGV0aW9ucygtKQoKLS0gCjIuMjAuMQoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQg
ZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1tdGQvCg==
