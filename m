Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 057F21C874A
	for <lists+linux-mtd@lfdr.de>; Thu,  7 May 2020 12:53:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VNTnyBdk8ctgBvc/dUKzQRvFaFhGAXfM45A5aSzTTuA=; b=nWgKreN39q0Z+b
	pkVESmuCD5zQChsmr9nk+UcyB6mjaJnfy7UkIGM1eCOYoTOZhAvdkE6Ex+6lWWAsNLbmjJmLzs+n0
	wwFpHz1QDMCZ570mV26mSWpmQYetfOP+2N0sxPDcmuOoBKst/BSFUmigctWvhNNeo8YCNQcZTNcr/
	Je/KRnAoeFwnbosDD9yvO1TvS4fz7pKVwMhIfIy7/FL4tC5zCyEh0iUAuxcet/Mihzpo7f7I5cD2j
	XMUD5bq4SOcXycN7QlUfg474SrrP20vBhbwVOJ15W0d+f2AOKyhM38Ety3W3cjshiV85B78aOX7gP
	Ab/H8dxM0nDLQ5tN511g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWe9H-00045o-ND; Thu, 07 May 2020 10:53:03 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWe91-000449-Uu
 for linux-mtd@lists.infradead.org; Thu, 07 May 2020 10:52:49 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id AC60824000B;
 Thu,  7 May 2020 10:52:42 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v5 00/13] Supporting restricted NAND controllers
Date: Thu,  7 May 2020 12:52:28 +0200
Message-Id: <20200507105241.14299-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_035248_272115_6C6B2D44 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
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
Cc: Michal Simek <monstr@monstr.eu>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGVsbG8sCgpUaGUgZmlyc3QgNiBwYXRjaGVzIGFyZSBqdXN0IG1pc2NlbGxhbmVvdXMgY2hhbmdl
cywgdGhhdCBkbyBub3QgYnJpbmcKZnVuY3Rpb25hbCBjaGFuZ2VzIGJ1dCBjbGFyaWZ5IGEgZmV3
IGNvcmUgYXJlYXMuCgpQYXRjaGVzIDcgdG8gMTAgY2hhbmdlIHRoZSBOQU5EIG9wZXJhdGlvbnMg
dXNlZCB0byByZWFkIE9ORkkvSkVERUMKcGFyYW1ldGVyIHBhZ2VzLiBJIGV4cGVjdCBhbGwgY29u
dHJvbGxlcnMgdG8gc3VwcG9ydCBpdCBub3cuCgpQYXRjaCAxMSBhZGQgbmV3IG5hbmRfbW9ub2xp
dGhpY19yZWFkL3dyaXRlX3BhZ2VfcmF3KCkgaGVscGVycywgdGhhdApjb3VsZCBiZSB1c2VkIGJ5
IGRyaXZlcnMgd2hpY2ggYXJlICJjb25zdHJhaW5lZCIuCgpGaW5hbGx5LCBwYXRjaGVzIDEyIGFu
ZCAxMyBzb2Z0ZW4gdGhlIHJ1bGVzIHNvIHRoYXQgdGhlIGhvb2tzIGxpbmtlZAp0byB0aGUgYWJv
dmUgaGVscGVycyBhcmUgbm90IG92ZXJ3cml0dGVuIGJ5IHRoZSBjb3JlIG9yIE5BTkQgY2hpcApk
cml2ZXJzLgoKVGhpcyBzZXJpZXMgaXMgbmVlZGVkIGluIG9yZGVyIHRvIHN1cHBvcnQgY29udHJv
bGxlcnMgbGlrZSBBcmFzYW4ncy4KClRoYW5rcywKTWlxdcOobAoKCkNoYW5nZXMgaW4gdjU6Ciog
RHJvcHBlZCB0aGUgIkRlZmF1bHQiIGluCiAgIkRlZmF1bHQgbmFuZF9yZWFkL3dyaXRlX3BhZ2Vf
cmF3IGltcGxlbWVudGF0aW9ucyIgY29tbWVudCBpbiBhCiAgaGVhZGVyLgoqIENoYW5nZWQgdGhl
IG5hbWUgb2YgbmFuZF9jaGVja19zdXBwb3J0ZWRfb3AoKSBpbnRvIG5hbmRfY2hlY2tfb3AoKS4K
CkNoYW5nZXMgaW4gdjQ6CiogQ29sbGVjdGVkIFJldmlld2VkLWJ5IHRhZ3MuCiogQ2hhbmdlZCB0
aGUgeHh4KCkgPT0gMCBjb25kaXRpb25zIGludG8gIXh4eCgpCiogUmVtb3ZlZCB0aGUgdXNlIG9m
IHBidWYgaW4gdGhlIEpFREVDIGRyaXZlciwga2VlcCB1c2luZyBwIG9ubHkKKiBEcm9wcGVkIHRo
ZSBleHRyYSBzZW50ZW5jZSBpbiB0aGUga2VybmVsIGRvYyBvZiBtb25vbGl0aGljIGhlbHBlcnMK
CkNoYW5nZXMgaW4gdjM6Ciogcy9OQU5EX1VTRV9ETUFfQlVGRkVSL05BTkRfVVNFU19ETUEvIGFz
IHN1Z2dlc3RlZCBieSBCb3Jpcy4KKiBDb2xsZWN0ZWQgUmV2aWV3ZWQtYnkgdGFncy4KKiBFbmhh
bmNlIHRoZSBrZXJuZWwgZG9jIG9mIHRoZSBtb25vbGl0aGljIGhlbHBlcnMuCiogQWRkZWQgYSBu
YW5kX2NoZWNrX3N1cHBvcnRlZF9vcCgpIGhlbHBlci4KKiBBZGQgYSBjaGVja19vbmx5IGFyZ3Vt
ZW50IHRvIHRoZSBuYW5kX3JlYWRfZGF0YV9vcCgpIGhlbHBlciBzbyB0aGF0CiAgd2UgY2FuIGNo
ZWNrIGlmIGl0IGlzIHN1cHBvcnRlZCBieSB0aGUgY29udHJvbGxlciBkcml2ZXIgKHRoaXMgdXNl
cwogIHRoZSBuYW5kX2NoZWNrX3N1cHBvcnRlZF9vcCgpIGhlbHBlcikuCiogRW5oYW5jZSB0aGUg
T05GSS9KRURFQyBwYXJhbWV0ZXIgcGFnZSBkaXNjb3ZlcmllczogaW4gY2FzZSB0aGUKICBkcml2
ZXIgZG9lcyBub3Qgc3VwcG9ydCAtPmV4ZWNfb3AoKSwgd2Ugc3RpbGwgdXNlIHRoZSBzYW1lIGJl
aGF2aW9yCiAgYXMgYmVmb3JlIChyZWFkaW5nIGRhdGEgYnl0ZXMgb25seSksIG90aGVyd2lzZSB3
ZSBjaGVjayBpZiByZWFkaW5nCiAgZGF0YSBieXRlcyBpcyBzdXBwb3J0ZWQgb3Igbm90LiBJZiBp
dCBpcyBub3QsIHRoZW4gd2UgZmFsbGJhY2sgdG8gYQogIENIQU5HRSBSRUFEIENPTFVNTiBvcGVy
YXRpb24uCgpDaGFuZ2VzIGluIHYyOgoqIEZpeGVkIHRoZSB0d28gd3JvbmcgY29udmVyc2lvbnMg
b2YgZmxhZyB2YWx1ZXMgZnJvbSA4LWJpdCBkaWdpdHMKICBpbnRvIEJJVCgpIG1hY3Jvcy4KKiBE
cm9wcGVkICJIZWxwIHN1cHBvcnRpbmcgY29udHJvbGxlcnMgdGhhdCBhcmUgbm90IGFibGUgdG8g
c3BsaXQKICBvcGVyYXRpb25zIi4gSW5zdGVhZCwgZGVjaWRlZCBvbiB0aGUgZmx5IGZvciB0aGUg
cmVhZF9wYXJhbV9wYWdlKCkKICB1c2VzIChPTkZJIGFuZCBKRURFQyBkaXNjb3ZlcnkpIGFuZCB3
cm90ZSBzZXBhcmF0ZSBoZWxwZXJzIGZvcgogIHJlYWQvd3JpdGVfcGFnZV9yYXcoKSAodGhlIEFy
YXNhbiBkcml2ZXIgd2lsbCB1c2UgdGhlbSkuCiogUHJldmVudCB0aGUgY29yZSBhbmQgTkFORCBj
aGlwIGRyaXZlcnMgdG8gb3ZlcmxvYWQgdGhlCiAgZWNjLT5yZWFkL3dyaXRlX3BhZ2VfcmF3KCkg
aG9va3MuCiogQWRkZWQgUmV2aWV3ZWQtYnkgdGFncy4KCk1pcXVlbCBSYXluYWwgKDEzKToKICBt
dGQ6IHJhd25hbmQ6IFRyYW5zbGF0ZSBvYnNjdXJlIGJpdGZpZWxkcyBpbnRvIHJlYWRhYmxlIG1h
Y3JvcwogIG10ZDogcmF3bmFuZDogUmVvcmRlciB0aGUgbmFuZF9jaGlwLT5vcHRpb25zIGZsYWdz
CiAgbXRkOiByYXduYW5kOiBSZW5hbWUgYSBOQU5EIGNoaXAgb3B0aW9uCiAgbXRkOiByYXduYW5k
OiBGaXggY29tbWVudHMgYWJvdXQgdGhlIHVzZSBvZiBidWZwb2kKICBtdGQ6IHJhd25hbmQ6IFJl
bmFtZSB0aGUgdXNlX2J1ZnBvaSB2YXJpYWJsZXMKICBtdGQ6IHJhd25hbmQ6IEF2b2lkIGluZGly
ZWN0IGFjY2VzcyB0byAtPmRhdGFfYnVmKCkKICBtdGQ6IHJhd25hbmQ6IEFkZCBhIGhlbHBlciB0
byBjaGVjayBzdXBwb3J0ZWQgb3BlcmF0aW9ucwogIG10ZDogcmF3bmFuZDogR2l2ZSB0aGUgcG9z
c2liaWxpdHkgdG8gdmVyaWZ5IGEgcmVhZCBvcGVyYXRpb24gaXMKICAgIHN1cHBvcnRlZAogIG10
ZDogcmF3bmFuZDogb25maTogQWRhcHQgdGhlIHBhcmFtZXRlciBwYWdlIHJlYWQgdG8gY29uc3Ry
YWludAogICAgY29udHJvbGxlcnMKICBtdGQ6IHJhd25hbmQ6IGplZGVjOiBBZGFwdCB0aGUgcGFy
YW1ldGVyIHBhZ2UgcmVhZCB0byBjb25zdHJhaW50CiAgICBjb250cm9sbGVycwogIG10ZDogcmF3
bmFuZDogRXhwb3NlIG1vbm9saXRoaWMgcmVhZC93cml0ZV9wYWdlX3JhdygpIGhlbHBlcnMKICBt
dGQ6IHJhd25hbmQ6IEFsbG93IGNvbnRyb2xsZXJzIHRvIG92ZXJsb2FkIHNvZnQgRUNDIGhvb2tz
CiAgbXRkOiByYXduYW5kOiBtaWNyb246IEFsbG93IGNvbnRyb2xsZXJzIHRvIG92ZXJsb2FkIHJh
dyBhY2Nlc3NvcnMKCiBkcml2ZXJzL210ZC9uYW5kL3Jhdy9hdG1lbC9uYW5kLWNvbnRyb2xsZXIu
YyB8ICAgMiArLQogZHJpdmVycy9tdGQvbmFuZC9yYXcvYnJjbW5hbmQvYnJjbW5hbmQuYyAgICAg
fCAgIDIgKy0KIGRyaXZlcnMvbXRkL25hbmQvcmF3L2RlbmFsaS5jICAgICAgICAgICAgICAgIHwg
ICAyICstCiBkcml2ZXJzL210ZC9uYW5kL3Jhdy9mc21jX25hbmQuYyAgICAgICAgICAgICB8ICAg
MiArLQogZHJpdmVycy9tdGQvbmFuZC9yYXcvaW50ZXJuYWxzLmggICAgICAgICAgICAgfCAgIDkg
KwogZHJpdmVycy9tdGQvbmFuZC9yYXcvbWFydmVsbF9uYW5kLmMgICAgICAgICAgfCAgIDQgKy0K
IGRyaXZlcnMvbXRkL25hbmQvcmF3L21lc29uX25hbmQuYyAgICAgICAgICAgIHwgICAyICstCiBk
cml2ZXJzL210ZC9uYW5kL3Jhdy9tdGtfbmFuZC5jICAgICAgICAgICAgICB8ICAgMiArLQogZHJp
dmVycy9tdGQvbmFuZC9yYXcvbmFuZF9iYXNlLmMgICAgICAgICAgICAgfCAxODcgKysrKysrKysr
KysrKystLS0tLQogZHJpdmVycy9tdGQvbmFuZC9yYXcvbmFuZF9qZWRlYy5jICAgICAgICAgICAg
fCAgMTkgKy0KIGRyaXZlcnMvbXRkL25hbmQvcmF3L25hbmRfbGVnYWN5LmMgICAgICAgICAgIHwg
ICA4ICstCiBkcml2ZXJzL210ZC9uYW5kL3Jhdy9uYW5kX21pY3Jvbi5jICAgICAgICAgICB8ICAx
MiArLQogZHJpdmVycy9tdGQvbmFuZC9yYXcvbmFuZF9vbmZpLmMgICAgICAgICAgICAgfCAgMjAg
Ky0KIGRyaXZlcnMvbXRkL25hbmQvcmF3L3Fjb21fbmFuZGMuYyAgICAgICAgICAgIHwgICAyICst
CiBkcml2ZXJzL210ZC9uYW5kL3Jhdy9zdG0zMl9mbWMyX25hbmQuYyAgICAgICB8ICAgMiArLQog
ZHJpdmVycy9tdGQvbmFuZC9yYXcvc3VueGlfbmFuZC5jICAgICAgICAgICAgfCAgIDIgKy0KIGRy
aXZlcnMvbXRkL25hbmQvcmF3L3RhbmdvX25hbmQuYyAgICAgICAgICAgIHwgICAyICstCiBkcml2
ZXJzL210ZC9uYW5kL3Jhdy90ZWdyYV9uYW5kLmMgICAgICAgICAgICB8ICAgMiArLQogaW5jbHVk
ZS9saW51eC9tdGQvcmF3bmFuZC5oICAgICAgICAgICAgICAgICAgfCAgOTkgKysrKystLS0tLQog
MTkgZmlsZXMgY2hhbmdlZCwgMjU2IGluc2VydGlvbnMoKyksIDEyNCBkZWxldGlvbnMoLSkKCi0t
IAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
