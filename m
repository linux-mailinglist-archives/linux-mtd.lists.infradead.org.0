Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD3D80CBE
	for <lists+linux-mtd@lfdr.de>; Sun,  4 Aug 2019 23:31:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pZiuAb/s/ylSoT7R4wla/3v0mIchpWPYGuUa8X3/PsI=; b=iHqjUfFXAtoRVc
	e0WyxuWWEdpVlKMwAi5XY6NWaR7zVBtohNj9h3wtNLfMD5aweuJYaGYUjtGeC5hJ+ZY9hBCLWLLaK
	tZQwHhFCiQYJ0fkp2oaedwZwoKlGkU1g7AxdRPgvodajrpb1whVup9HHAnWcJOCQzTGXrb27zrkUS
	kqQwLZoczbNQr/mu5ZJ0HNj/pOjxZLhOZxNmC/CiC8ibBTKB2V+CV0nSvl7F+fBiS4IhGKajDg+mi
	CeAVaVTIPYlCMaIr0NvKbVZjJGef04N1HR5xoPp75KMVSXcaCcAI9WRHz/cQUFdfkyFD4SFDG/K6q
	cDMBjsxYeJYBAL3jCM/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huO5u-0001Wy-Dz; Sun, 04 Aug 2019 21:31:10 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huO5o-0001WG-0C
 for linux-mtd@lists.infradead.org; Sun, 04 Aug 2019 21:31:05 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id B57961BF206;
 Sun,  4 Aug 2019 21:30:45 +0000 (UTC)
Date: Sun, 4 Aug 2019 23:30:44 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: [GIT PULL] mtd: Fixes for 5.3-rc4
Message-ID: <20190804232928.08b4b69a@xps13>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_143104_205171_070D8902 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
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

SGVsbG8gTGludXMsCgpIZXJlIGFyZSB0aHJlZSBNVEQgZml4ZXMgZm9yIHRoZSBuZXh0IC1yYy4K
ClRoYW5rcywKTWlxdcOobAoKClRoZSBmb2xsb3dpbmcgY2hhbmdlcyBzaW5jZSBjb21taXQgNWY5
ZTgzMmMxMzcwNzUwNDVkMTVjZDY4OTlhYjA1MDVjZmIyY2E0YjoKCiAgTGludXMgNS4zLXJjMSAo
MjAxOS0wNy0yMSAxNDowNTozOCAtMDcwMCkKCmFyZSBhdmFpbGFibGUgaW4gdGhlIEdpdCByZXBv
c2l0b3J5IGF0OgoKICBnaXQ6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9n
aXQvbXRkL2xpbnV4LmdpdCB0YWdzL210ZC9maXhlcy1mb3ItNS4zLXJjMwoKZm9yIHlvdSB0byBm
ZXRjaCBjaGFuZ2VzIHVwIHRvIDJiMzcyYTk2ODVhNzU3YTFkM2FiMzA2MTVlZjQyYjJkYjdjNDUy
OTg6CgogIG10ZDogaHlwZXJidXM6IEFkZCBoYXJkd2FyZSBkZXBlbmRlbmN5IHRvIEFNNjU0IGRy
aXZlciAoMjAxOS0wOC0wMyAwMjoxMTo1MiArMDIwMCkKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KTkFORDoKLSBGaXggTWlj
cm9uIGRyaXZlciBhcyBzb21lIGNoaXBzIGVuYWJsZSBpbnRlcm5hbCBFQ0MgY29ycmVjdGlvbgog
IGR1cmluZyB0aGVpciBkaXNjb3Zlcnkgd2hpbGUgdGhleSBhZHZlcnRpemUgdGhleSBkbyBub3Qg
aGF2ZSBhbnkuCgpIeXBlcmJ1czoKLSBSZXN0cmljdCB0aGUgYnVpbGQgdG8gb25seSBBUk02NCBT
b0NzIChhbmQgY29tcGlsZSB0ZXN0aW5nKSB3aGljaCBpcwogIHdoYXQgc2hvdWxkIGhhdmUgYmVl
biBkb25lIHNpbmNlIHRoZSBiZWdpbm5pbmcuCi0gRml4IEtjb25maWcgaXNzdWUgYnkgc2VsZWN0
aW9uIHNvbWV0aGluZyBpbnN0ZWFkIG9mIGltcGx5aW5nIGl0LgoKLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpKZWFuIERlbHZh
cmUgKDEpOgogICAgICBtdGQ6IGh5cGVyYnVzOiBBZGQgaGFyZHdhcmUgZGVwZW5kZW5jeSB0byBB
TTY1NCBkcml2ZXIKCk1hcmNvIEZlbHNjaCAoMSk6CiAgICAgIG10ZDogcmF3bmFuZDogbWljcm9u
OiBoYW5kbGUgb24tZGllICJFQ0Mtb2ZmIiBkZXZpY2VzIGNvcnJlY3RseQoKVmlnbmVzaCBSYWdo
YXZlbmRyYSAoMSk6CiAgICAgIG10ZDogaHlwZXJidXM6IEtjb25maWc6IEZpeCBIQk1DX0FNNjU0
IGRlcGVuZGVuY2llcwoKIGRyaXZlcnMvbXRkL2h5cGVyYnVzL0tjb25maWcgICAgICAgfCAgMyAr
Ky0KIGRyaXZlcnMvbXRkL25hbmQvcmF3L25hbmRfbWljcm9uLmMgfCAxNCArKysrKysrKysrKy0t
LQogMiBmaWxlcyBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
