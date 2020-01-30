Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C68F14E3BC
	for <lists+linux-mtd@lfdr.de>; Thu, 30 Jan 2020 21:15:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yCrjpWhUfUHf8vIAW/qmTaJ80s4t4s7dCflMOPKs4GE=; b=H6qdAlce8OLYgC
	YSLb3Lwiw2xddFZ/J8KOXCmjk14wUBwd4yoHZxJCcFuhVJw1BNSL5WW07iWtDTaQjusodcCjoB1wb
	XeEadxhks5uni237yuaD7JiAipjJM8ui66KmsOYQhSiNRrdzs2fUEsHrymY1GdiQUGvY1qb0Q7eNG
	4h+esneH7hex8mUWMA0QTKzta5SQf1LR+/aiK4J5vs/KuByIpeeLAKQh1GxOpvydoGYHuCU+jrsjv
	h47pgXt8IZZ72EQ9PhOMJ3OooAH86q9ONG0Ev7kauW+1G4dNS5RwJwF85bOLZOuh4o7GvyzqpUS/m
	WVXgWBgRa1FzQ1icS91g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixGDH-0006A3-VV; Thu, 30 Jan 2020 20:14:55 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixGD6-000694-1Z
 for linux-mtd@lists.infradead.org; Thu, 30 Jan 2020 20:14:45 +0000
X-Originating-IP: 93.23.196.10
Received: from xps13 (10.196.23.93.rev.sfr.net [93.23.196.10])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 4F9D460007;
 Thu, 30 Jan 2020 20:14:35 +0000 (UTC)
Date: Thu, 30 Jan 2020 21:14:33 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: [GIT PULL] UBIFS changes for 5.6-rc1
Message-ID: <20200130211433.46abdf90@xps13>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_121444_223256_7D5B5101 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.195 listed in wl.mailspike.net]
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 Frieder Schrempf <frieder.schrempf@kontron.de>, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGVsbG8gTGludXMsCgpUaGlzIGlzIHRoZSBVQkkvVUJJRlMgUFIgZm9yIDUuNiwgc2VudCBvbiBi
ZWhhbGYgb2YgUmljaGFyZC4KClRoYW5rcywKTWlxdcOobAoKVGhlIGZvbGxvd2luZyBjaGFuZ2Vz
IHNpbmNlIGNvbW1pdCBiM2E5ODdiMDI2NGQzZGRiYjI0MjkzZWJmZjEwZWRkZmM0NzJmNjUzOgoK
ICBMaW51eCA1LjUtcmM2ICgyMDIwLTAxLTEyIDE2OjU1OjA4IC0wODAwKQoKYXJlIGF2YWlsYWJs
ZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6CgogIGdpdDovL2dpdC5rZXJuZWwub3JnL3B1Yi9z
Y20vbGludXgva2VybmVsL2dpdC9ydy91Ymlmcy5naXQgdGFncy91cHN0cmVhbS01LjYtcmMxCgpm
b3IgeW91IHRvIGZldGNoIGNoYW5nZXMgdXAgdG8gNWQzODA1YWYyNzljOTNlZjQ5YTY0NzAxZjM1
MjU0Njc2ZDcwOTYyMjoKCiAgdWJpOiBGaXggYW4gZXJyb3IgcG9pbnRlciBkZXJlZmVyZW5jZSBp
biBlcnJvciBoYW5kbGluZyBjb2RlICgyMDIwLTAxLTE5IDIzOjIzOjI4ICswMTAwKQoKLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LQpUaGlzIHB1bGwgcmVxdWVzdCBjb250YWlucyBtb3N0bHkgZml4ZXMgZm9yIFVCSSBhbmQgVUJJ
RlM6CgpVQkk6CiAtIEZpeGVzIGZvciBtZW1vcnkgbGVha3MgaW4gZXJyb3IgcGF0aHMKIC0gRml4
IGZvciBhbiBsb2dpYyBlcnJvciBpbiBhIGZhc3RtYXAgc2VsZmNoZWNrCgpVQklGUzoKIC0gRml4
IGZvciBGU19JT0NfU0VURkxBR1MgcmVsYXRlZCB0byBmc2NyeXB0IGZsYWcKIC0gU3VwcG9ydCBm
b3IgRlNfRU5DUllQVF9GTAogLSBGaXggZm9yIGEgZGVhZCBsb2NrIGluIGJ1bGstcmVhZCBtb2Rl
CgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tCkRhbiBDYXJwZW50ZXIgKDEpOgogICAgICB1Ymk6IEZpeCBhbiBlcnJvciBwb2lu
dGVyIGRlcmVmZXJlbmNlIGluIGVycm9yIGhhbmRsaW5nIGNvZGUKCkVyaWMgQmlnZ2VycyAoMik6
CiAgICAgIHViaWZzOiBGaXggRlNfSU9DX1NFVEZMQUdTIHVuZXhwZWN0ZWRseSBjbGVhcmluZyBl
bmNyeXB0IGZsYWcKICAgICAgdWJpZnM6IEFkZCBzdXBwb3J0IGZvciBGU19FTkNSWVBUX0ZMCgpH
ZWVydCBVeXR0ZXJob2V2ZW4gKDEpOgogICAgICB1YmlmczogRml4IGlub190IGZvcm1hdCB3YXJu
aW5ncyBpbiBvcnBoYW5fZGVsZXRlKCkKCkhvdSBUYW8gKDIpOgogICAgICB1Ymk6IENoZWNrIHRo
ZSBwcmVzZW5jZSBvZiB2b2x1bWUgYmVmb3JlIGNhbGwgdWJpX2Zhc3RtYXBfZGVzdHJveV9jaGVj
a21hcCgpCiAgICAgIHViaTogRnJlZSB0aGUgbm9ybWFsIHZvbHVtZXMgaW4gZXJyb3IgcGF0aHMg
b2YgdWJpX2F0dGFjaF9tdGRfZGV2KCkKClF1YW55YW5nIFdhbmcgKDEpOgogICAgICB1Ymlmczog
Rml4IG1lbW9yeSBsZWFrIGZyb20gYy0+c3VwX25vZGUKClNhc2NoYSBIYXVlciAoMik6CiAgICAg
IHViaTogZmFzdG1hcDogRml4IGludmVydGVkIGxvZ2ljIGluIHNlZW4gc2VsZmNoZWNrCiAgICAg
IHViaWZzOiBGaXggd3JvbmcgbWVtb3J5IGFsbG9jYXRpb24KCll1ZUhhaWJpbmcgKDEpOgogICAg
ICB1Ymk6IHdsOiBSZW1vdmUgc2V0IGJ1dCBub3QgdXNlZCB2YXJpYWJsZSAncHJldl9lJwoKWmhp
aGFvIENoZW5nICgxKToKICAgICAgdWJpZnM6IEZpeCBkZWFkbG9jayBpbiBjb25jdXJyZW50IGJ1
bGstcmVhZCBhbmQgd3JpdGVwYWdlCgogZHJpdmVycy9tdGQvdWJpL2F0dGFjaC5jICB8ICAyICst
CiBkcml2ZXJzL210ZC91YmkvYnVpbGQuYyAgIHwgMzEgKysrKysrKysrKysrKysrKysrKysrKysr
KystLS0tLQogZHJpdmVycy9tdGQvdWJpL2Zhc3RtYXAuYyB8IDIzICsrKysrKysrKysrKystLS0t
LS0tLS0tCiBkcml2ZXJzL210ZC91YmkvdWJpLmggICAgIHwgIDEgKwogZHJpdmVycy9tdGQvdWJp
L3Z0YmwuYyAgICB8ICA4ICsrLS0tLS0tCiBkcml2ZXJzL210ZC91Ymkvd2wuYyAgICAgIHwgIDMg
Ky0tCiBmcy91Ymlmcy9maWxlLmMgICAgICAgICAgIHwgIDQgKysrLQogZnMvdWJpZnMvaW9jdGwu
YyAgICAgICAgICB8IDE0ICsrKysrKysrKysrLS0tCiBmcy91Ymlmcy9vcnBoYW4uYyAgICAgICAg
IHwgIDQgKystLQogZnMvdWJpZnMvc2IuYyAgICAgICAgICAgICB8ICAyICstCiBmcy91Ymlmcy9z
dXBlci5jICAgICAgICAgIHwgIDIgKysKIDExIGZpbGVzIGNoYW5nZWQsIDYzIGluc2VydGlvbnMo
KyksIDMxIGRlbGV0aW9ucygtKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
