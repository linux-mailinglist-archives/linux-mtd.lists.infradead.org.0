Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7DE3FB61A
	for <lists+linux-mtd@lfdr.de>; Wed, 13 Nov 2019 18:16:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jhMC179HDHmuSm1FmPuE8rVlrrbPFKk2t8eFyiL58h8=; b=LJl9NwOHk6Sxxs
	tu/bRCKNj7PcEFN4hCuZdrM2qjt4UEhMb2lnGOmTOUoQp3k3u6itlK0lTHB98q720qt9Zvr9oOBLe
	r1RNsu+4JcM5+Y0vSwFRVyNFnKCeE0O/Ay1f5+aDopsrMJQHaqNLkjRUMurxMvNaj0thqod6s/9tD
	zgZ9T8n8b9yrqDs+Jd0nzKrsLjHMLzb6Ef1bB9mZ+oBdld9KBmsFLPzJHaIqR1DmlHkhn/XWqiIfx
	n2VjghMmjVe8C+ZXA/jEXF41Unk379vI9T9lFI2YbjQaDF9Zy/uekoLjjx7wdlHnsbCicPsvH1EXj
	lzoeu48kUdI2UXXOSwGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUwFC-0001ez-PI; Wed, 13 Nov 2019 17:15:50 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUwEk-0001RA-GU
 for linux-mtd@lists.infradead.org; Wed, 13 Nov 2019 17:15:24 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 3E329E0007;
 Wed, 13 Nov 2019 17:15:07 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>
Subject: [PATCH v4 0/4] MTD concat
Date: Wed, 13 Nov 2019 18:15:01 +0100
Message-Id: <20191113171505.26128-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_091522_684604_E28B23D6 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Mark Brown <broonie@kernel.org>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Boris Brezillon <boris.brezillon@collabora.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGVsbG8sCgpBIHllYXIgYWdvIEJlcm5oYXJkIEZyYXVlbmRpZW5zdCBzdGFydGVkIGFuIGVmZm9y
dCB0byBicmluZyBNVEQKZGV2aWNlcyBjb25jYXRlbmF0aW9uIGdlbmVyaWMgWzFdLiBUb2RheSBJ
IGFsc28gbmVlZCB0aGlzCmNvbmNhdGVuYXRpb24gdG8gYmUgcG9zc2libGUgaW4gb3JkZXIgdG8g
c3VwcG9ydCBjb25maWd1cmF0aW9ucyB3aGVyZQp0d28gTVREIGRldmljZXMgYXJlIHRyZWF0ZWQg
bGlrZSBvbmUgYmlnZ2VyIGluIG9yZGVyIHRvIGJlIGFibGUgdG8KZGVmaW5lIHBhcnRpdGlvbnMg
YWNyb3NzIGNoaXAgYm91bmRhcmllcywgaGVuY2UgcmV2aXZpbmcgdGhpcwpwYXRjaHNldC4KCkFm
dGVyIGhhdmluZyB0YWxrZWQgd2l0aCBNYXJrIEJyb3duIGFuZCBCb3JpcyBCcmV6aWxsb24gdGhp
cyBhcHByb2FjaApzZWVtcyB0byBiZSB0aGUgY2xlYW5lc3QgYW5kIGVhc2llc3Qgb25lLiBJZiBk
aXNjdXNzaW9ucyBuZWVkIHRvCmhhcHBlbiwgaXQgaXMgcHJvYmFibHkgb24gdGhlIGR0LWJpbmRp
bmdzIGZpbGUgd2hlcmUgSSB0cmllZCB0bwpzdW1tYXJpemUgdGhlIGlzc3VlIGFuZCB0aGUgcG9z
c2libGUgc29sdXRpb25zIGluIHRoZSBjb21taXQgbG9nLgoKSSBjaGFuZ2VkIGEgYml0IHRoZSBj
b2RlIGxvZ2ljIGFuZCBzdHlsZSBidXQgbm90IHNvIG11Y2gsIGFsbCB0aGUKY2hhbmdlcyB3aXRo
IHRoZSAyMDE4IHZlcnNpb24gYXJlIGluIFsgXSBpbiB0aGUgY29tbWl0IGxvZ3MuCgpJIHdvdWxk
IGxpa2UgdG8gYWRkIGFub3RoZXIgd2F5IHRvIGNvbmNhdGVuYXRlIGRldmljZXM6IHdpdGggbW9k
dWxlCnBhcmFtZXRlcnMvYXJndW1lbnRzIG9uIHRoZSBjbWRsaW5lLiBJIHdpbGwgZXh0ZW5kIHRo
aXMgd29yayBvbmNlIHRoZQpiaW5kaW5ncyB3aWxsIGhhdmUgYmVlbiBkaXNjdXNzZWQgYW5kIGFj
Y2VwdGVkLgoKVGhhbmtzLApNaXF1w6hsCgpbMV0gaHR0cHM6Ly9sd24ubmV0L21sL2xpbnV4LWtl
cm5lbC8yMDE4MDkwNzE3MzUxNS4xOTk5MC0xLWtlcm5lbEBub3NwYW0ub2JlbGlrcy5kZS8KCgpC
ZXJuaGFyZCBGcmF1ZW5kaWVuc3QgKDMpOgogIG10ZDogQWRkIGdldF9tdGRfZGV2aWNlX2J5X25v
ZGUoKSBoZWxwZXIKICBkdC1iaW5kaW5nczogbXRkOiBEZXNjcmliZSBtdGQtY29uY2F0IGRldmlj
ZXMKICBtdGQ6IEFkZCBkcml2ZXIgZm9yIGNvbmNhdGVuYXRpbmcgZGV2aWNlcwoKTWlxdWVsIFJh
eW5hbCAoMSk6CiAgbXRkOiBjb25jYXQ6IEZpeCBhIGNvbW1lbnQgcmVmZXJyaW5nIHRvIGFuIHVu
a25vd24gc3ltYm9sCgogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbXRkL210ZC1jb25jYXQueWFt
bCAgIHwgIDU2ICsrKysrKysrCiBkcml2ZXJzL210ZC9LY29uZmlnICAgICAgICAgICAgICAgICAg
ICAgICAgICAgfCAgIDggKysKIGRyaXZlcnMvbXRkL01ha2VmaWxlICAgICAgICAgICAgICAgICAg
ICAgICAgICB8ICAgMSArCiBkcml2ZXJzL210ZC9tdGRfdmlydF9jb25jYXQuYyAgICAgICAgICAg
ICAgICAgfCAxMzIgKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL210ZC9tdGRjb25jYXQuYyAg
ICAgICAgICAgICAgICAgICAgICAgfCAgIDUgKy0KIGRyaXZlcnMvbXRkL210ZGNvcmUuYyAgICAg
ICAgICAgICAgICAgICAgICAgICB8ICAzOCArKysrKwogaW5jbHVkZS9saW51eC9tdGQvbXRkLmgg
ICAgICAgICAgICAgICAgICAgICAgIHwgICAyICsKIDcgZmlsZXMgY2hhbmdlZCwgMjM4IGluc2Vy
dGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL210ZC9tdGQtY29uY2F0LnlhbWwKIGNyZWF0ZSBtb2RlIDEw
MDY0NCBkcml2ZXJzL210ZC9tdGRfdmlydF9jb25jYXQuYwoKLS0gCjIuMjAuMQoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQg
ZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1tdGQvCg==
