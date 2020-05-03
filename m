Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEC8E1C2DAF
	for <lists+linux-mtd@lfdr.de>; Sun,  3 May 2020 17:54:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KYxPgGhnk55cQtOmCMpzCW/FqMKUlqMEPW8tRZs6nAs=; b=TrLrdAuhnNkKo1
	xB7B6mHHJEmVjFr5kKlN7QtiVlZs1gr4rEmEt1yCJbixP1CrIDQfKsaRUKRrep4iyloZOGbb5jtha
	8M/JV7WoXIuhPgJH/0s4bCpA8xwaXbVlx0hEq2L6rwerSWWjFdCDI/fLmGpy8nSIPaDjktsA0NGpy
	Z/WQ3jog8GK6stJ5jecW5WX1TvbT8LkXQxzlPPiZQUhdHJpgH2EiBsy0GnTzvKxkrw7vtkrb4ASxd
	m8WGGuwa75z57nRlEoIIPYPQyAeFoQikxglpfjZq5RftjUbC+k6lI2sOXxpewditpFEgoB+xSZfUM
	KSaYaIBZkfVuCihXTRKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVGwU-0002qC-Q0; Sun, 03 May 2020 15:54:10 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVGw8-0002dA-Dv
 for linux-mtd@lists.infradead.org; Sun, 03 May 2020 15:53:49 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id A6E83240007;
 Sun,  3 May 2020 15:53:42 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v2 0/8] MLC in SLC mode
Date: Sun,  3 May 2020 17:53:33 +0200
Message-Id: <20200503155341.16712-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_085348_607879_03EC3A0F 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Maxime Ripard <maxime@cerno.tech>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGVsbG8sCgpUaGlzIHNlcmllcyBoYXMgYmVlbiBseWluZyBmb3IgYSBsb25nIHRpbWUgaW4gQm9y
aXMnIHRyZWUsIGl0IGlzCmNsZWFuIGVub3VnaCB0byBiZSB1cHN0cmVhbWVkIG5vdy4KCkl0IGJh
c2ljYWxseSBhbGxvd3MgdG8gd29yayAic2FmZWx5IiB3aXRoIE1MQyBOQU5EcywgZGV0YWlscyBp
bnNpZGUuCgpJIHRlc3RlZCBpdCB3aXRoIGEgQy5ILkkuUCBhbmQgaXQgbG9va3Mgc3RhYmxlLiBN
b3JlIGV4dGVuc2l2ZSB0ZXN0aW5nCmlzIHdlbGNvbWUuCgpDaGVlcnMsCk1pcXXDqGwKCkNoYW5n
ZXMgaW4gdjI6CiogUmVtb3ZlZCB1bndhbnRlZCBmaWxlcyBzcG90dGVkIGJ5IEZsb3JpYW4uCiog
QWRkIFJpY2hhcmQncyBBY2sgb24gdGhlICJyZWxheCB0aGUgbm8gTUxDIHJ1bGUiIHBhdGNoLgoq
IFJlbmFtZSBNVERfTUxDX0lOX1NMQ19NT0RFIGludG8gTVREX1NMQ19PTl9NTENfRU1VTEFUSU9O
LgoqIFJlbmFtZSB0aGUgaGVscGVyIG10ZF9vb2JfaW9fc2xjKCkgaW50byBtdGRfaW9fZW11bGF0
ZWRfc2xjKCkuCiogQ2hhbmdlZCBib3VuY2luZyBlLW1haWwgYWRkcmVzcyBmcm9tIEJvcmlzIHRv
IGhpcyBrZXJuZWwub3JnLgoKQm9yaXMgQnJlemlsbG9uICg4KToKICBtdGQ6IHJhd25hbmQ6IHRv
c2hpYmE6IEFkZCBhIHNwZWNpZmljIGluaXQgZm9yIFRDNThURUc1RENMVEEwMAogIG10ZDogcmF3
bmFuZDogRGVmaW5lIHRoZSAiZGlzdGFuY2UgMyIgTUxDIHBhaXJpbmcgc2NoZW1lCiAgbXRkOiBy
YXduYW5kOiB0b3NoaWJhOiBTZXQgdGhlIHBhaXJpbmcgc2NoZW1lIGZvciBUQzU4VEVHNURDTFRB
MDAKICBtdGQ6IEFkZCBzdXBwb3J0IGZvciBlbXVsYXRlZCBTTEMgbW9kZSBvbiBNTEMgTkFORHMK
ICBkdC1iaW5kaW5nczogbXRkOiBwYXJ0aXRpb246IERvY3VtZW50IHRoZSBzbGMtbW9kZSBwcm9w
ZXJ0eQogIG10ZDogcGFydGl0aW9uczogb2ZwYXJ0OiBQYXJzZSB0aGUgc2xjLW1vZGUgcHJvcGVy
dHkKICBtdGQ6IGNtZGxpbmVwYXJ0OiBBZGQgYW4gc2xjIG9wdGlvbiB0byB1c2UgU0xDIG1vZGUg
b24gYSBwYXJ0CiAgdWJpOiBSZWxheCB0aGUgJ25vIE1MQycgcnVsZSBhbmQgYWxsb3cgTUxDcyBv
cGVyYXRpbmcgaW4gU0xDIG1vZGUKCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9tdGQvcGFydGl0
aW9uLnR4dCAgICAgfCAgIDMgKwogZHJpdmVycy9tdGQvbXRkY29yZS5jICAgICAgICAgICAgICAg
ICAgICAgICAgIHwgMTg5ICsrKysrKysrKysrKysrKystLQogZHJpdmVycy9tdGQvbXRkcGFydC5j
ICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDU0ICsrLS0tCiBkcml2ZXJzL210ZC9uYW5kL3Jh
dy9pbnRlcm5hbHMuaCAgICAgICAgICAgICAgfCAgIDMgKwogZHJpdmVycy9tdGQvbmFuZC9yYXcv
bmFuZF9iYXNlLmMgICAgICAgICAgICAgIHwgIDUwICsrKysrCiBkcml2ZXJzL210ZC9uYW5kL3Jh
dy9uYW5kX3Rvc2hpYmEuYyAgICAgICAgICAgfCAgMTQgKysKIGRyaXZlcnMvbXRkL3BhcnNlcnMv
Y21kbGluZXBhcnQuYyAgICAgICAgICAgICB8ICAxMiArLQogZHJpdmVycy9tdGQvcGFyc2Vycy9v
ZnBhcnQuYyAgICAgICAgICAgICAgICAgIHwgICAzICsKIGRyaXZlcnMvbXRkL3ViaS9idWlsZC5j
ICAgICAgICAgICAgICAgICAgICAgICB8ICAgNSArLQogaW5jbHVkZS9saW51eC9tdGQvbXRkLmgg
ICAgICAgICAgICAgICAgICAgICAgIHwgICA3ICstCiBpbmNsdWRlL2xpbnV4L210ZC9wYXJ0aXRp
b25zLmggICAgICAgICAgICAgICAgfCAgIDIgKwogaW5jbHVkZS91YXBpL210ZC9tdGQtYWJpLmgg
ICAgICAgICAgICAgICAgICAgIHwgICAxICsKIDEyIGZpbGVzIGNoYW5nZWQsIDMwMCBpbnNlcnRp
b25zKCspLCA0MyBkZWxldGlvbnMoLSkKCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24g
bWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtbXRkLwo=
