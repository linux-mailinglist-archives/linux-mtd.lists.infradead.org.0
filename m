Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3AAA1A93
	for <lists+linux-mtd@lfdr.de>; Thu, 29 Aug 2019 14:58:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R09+MyQHgX8xEc5PBM5yYFOZ4A5m7H5Ow5GOMrfy1hA=; b=ud+lzM/r9k2oi3
	NyTO7yhglFZb/0Dag3wUGk2/9j2fVOVlnNzldQyq80qUMomAurj3qJZxg8Equ/5WjwFNwINmm/I5e
	HOjBt8Vyw4pth6bnn+sOIyE4C5b+1y2gK6X9Q/5WdKtU5wVLpl4E2ZugMlRSGG9FprAibUW92ZBZ6
	ydQ6mC8vKGeSCyaXDozgnFyxqvrLdu3SymFHI8NHDQRBhh+vkeP42xf90MfWMBGQhlB2wlceHAIcd
	wmevxz8n/MtN3wK5PSIRbtByJKGkLkISkz4LoFwwmRm5DVSgKFroU/eVY7LvOAoWtYB9WkwnhZzQu
	htLQ6ABrSQUpzEixCjIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3K00-0005rs-7X; Thu, 29 Aug 2019 12:58:00 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Jzr-0005rE-9e
 for linux-mtd@lists.infradead.org; Thu, 29 Aug 2019 12:57:53 +0000
X-Originating-IP: 86.250.200.211
Received: from xps13 (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 1B18720009;
 Thu, 29 Aug 2019 12:57:38 +0000 (UTC)
Date: Thu, 29 Aug 2019 14:57:38 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>
Subject: [GIT PULL] mtd: nand: Changes for 5.4
Message-ID: <20190829145738.75734cd7@xps13>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_055751_960706_7DCDED4A 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Cc: linux-mtd@lists.infradead.org, Vignesh Raghavendra <vigneshr@ti.com>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGVsbG8gUmljaGFyZCwKClRoaXMgaXMgdGhlIE5BTkQgUFIgZm9yIDUuNC4KClRoYW5rcywKTWlx
dcOobAoKClRoZSBmb2xsb3dpbmcgY2hhbmdlcyBzaW5jZSBjb21taXQgNWY5ZTgzMmMxMzcwNzUw
NDVkMTVjZDY4OTlhYjA1MDVjZmIyY2E0YjoKCiAgTGludXMgNS4zLXJjMSAoMjAxOS0wNy0yMSAx
NDowNTozOCAtMDcwMCkKCmFyZSBhdmFpbGFibGUgaW4gdGhlIEdpdCByZXBvc2l0b3J5IGF0OgoK
ICBnaXQ6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvbXRkL2xpbnV4
LmdpdCB0YWdzL25hbmQvZm9yLTUuNAoKZm9yIHlvdSB0byBmZXRjaCBjaGFuZ2VzIHVwIHRvIGY0
ODBiOTY5NDQ4ZWUzODk2ZjU1ZWY2ZDAzN2FkNGEyZGYzOTE0YmY6CgogIG10ZDogcmF3bmFuZDog
b21hcDI6IEZpeCBudW1iZXIgb2YgYml0ZmxpcHMgcmVwb3J0aW5nIHdpdGggRUxNICgyMDE5LTA4
LTI5IDE0OjI4OjA5ICswMjAwKQoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpOQU5EIGNvcmUKKiBGaXhpbmcgdHlwb3MKKiBB
ZGRpbmcgbWlzc2luZyBvZl9ub2RlX3B1dCgpIGluIHZhcmlvdXMgZHJpdmVycwoKUmF3IE5BTkQg
Y29udHJvbGxlciBkcml2ZXJzOgoqIE1hY3Jvbml4OiBuZXcgY29udHJvbGxlciBkcml2ZXIKKiBP
bWFwMjogRml4aW5nIHRoZSBudW1iZXIgb2YgYml0ZmxpcHMgcmV0dXJuZWQKKiBCcmNtbmFuZDog
Rml4IGEgcG9pbnRlciBub3QgaXRlcmF0aW5nIG92ZXIgYWxsIHRoZSBwYWdlIGNodW5rcwoqIFc5
MHg5MDA6IERyaXZlciByZW1vdmVkCiogT25lbmFuZDogRml4IGEgbWVtb3J5IGxlYWsKKiBTaGFy
cHNsOiBNaXNzaW5nIGluY2x1ZGUgZ3VhcmQKKiBTVE0zMjogQXZvaWQgd2FybmluZ3Mgd2hlbiBi
dWlsZGluZyB3aXRoIFc9MQoqIEluZ2VuaWM6IEZpeCBhIGNvY2NpbmVsbGUgd2FybmluZwoqIHI4
NTI6IENhbGwgYSBoZWxwZXIgdG8gc2ltcGxpZnkgdGhlIGNvZGUKCi0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KQXJuZCBCZXJn
bWFubiAoMSk6CiAgICAgIG10ZDogcmF3bmFuZDogcmVtb3ZlIHc5MHg5MDAgZHJpdmVyCgpDaHJp
c3RvcGhlIEtlcmVsbG8gKDEpOgogICAgICBtdGQ6IHJhd25hbmQ6IHN0bTMyX2ZtYzI6IGF2b2lk
IHdhcm5pbmdzIHdoZW4gYnVpbGRpbmcgd2l0aCBXPTEgb3B0aW9uCgpDaHVob25nIFl1YW4gKDEp
OgogICAgICBtdGQ6IHJhd25hbmQ6IHI4NTI6IFVzZSBkZXZfZ2V0X2RydmRhdGEKCkNsYWlyZSBM
aW4gKDEpOgogICAgICBtdGQ6IHJhd25hbmQ6IGJyY21uYW5kOiBGaXggZWNjIGNodW5rIGNhbGN1
bGF0aW9uIGZvciBlcmFzZWQgcGFnZSBiaXRmaXBzCgpDb2xpbiBJYW4gS2luZyAoMSk6CiAgICAg
IG10ZDogcmF3bmFuZDogcmVtb3ZlIHJlZHVuZGFudCBhc3NpZ25tZW50IHRvIHZhcmlhYmxlIHJl
dAoKSnVsaWEgTGF3YWxsICgxKToKICAgICAgbXRkOiByYXduYW5kOiBpbmdlbmljOiBmaXggZGV2
bV9wbGF0Zm9ybV9pb3JlbWFwX3Jlc291cmNlLmNvY2NpIHdhcm5pbmdzCgpNYXNhaGlybyBZYW1h
ZGEgKDEpOgogICAgICBtdGQ6IHJhd25hbmQ6IHNoYXJwc2w6IGFkZCBpbmNsdWRlIGd1YXJkIHRv
IGxpbnV4L210ZC9zaGFycHNsLmgKCk1hc29uIFlhbmcgKDIpOgogICAgICBtdGQ6IHJhd25hbmQ6
IEFkZCBNYWNyb25peCByYXcgTkFORCBjb250cm9sbGVyIGRyaXZlcgogICAgICBkdC1iaW5kaW5n
czogbXRkOiBEb2N1bWVudCBNYWNyb25peCByYXcgTkFORCBjb250cm9sbGVyIGJpbmRpbmdzCgpO
aXNoa2EgRGFzZ3VwdGEgKDUpOgogICAgICBtdGQ6IHJhd25hbmQ6IHZmNjEwOiBBZGQgb2Zfbm9k
ZV9wdXQoKSBiZWZvcmUgZ290bwogICAgICBtdGQ6IHJhd25hbmQ6IG94bmFzOiBBZGQgb2Zfbm9k
ZV9wdXQoKQogICAgICBtdGQ6IHJhd25hbmQ6IHRhbmdvOiBBZGQgb2Zfbm9kZV9wdXQoKSBiZWZv
cmUgcmV0dXJuCiAgICAgIG10ZDogcmF3bmFuZDogbWVzb246IEFkZCBvZl9ub2RlX3B1dCgpIGJl
Zm9yZSByZXR1cm4KICAgICAgbXRkOiByYXduYW5kOiBpbmdlbmljOiBBZGQgb2Zfbm9kZV9wdXQo
KSBiZWZvcmUgcmV0dXJuCgpTYXNjaGEgSGF1ZXIgKDEpOgogICAgICBtdGQ6IHJhd25hbmQ6IG9t
YXAyOiBGaXggbnVtYmVyIG9mIGJpdGZsaXBzIHJlcG9ydGluZyB3aXRoIEVMTQoKVHVkb3IgQW1i
YXJ1cyAoMSk6CiAgICAgIG10ZDogbmFuZDogZml4IHR5cG8sIHMvZXJhc2FibG9ja3MvZXJhc2Vi
bG9ja3MKCldlbndlbiBXYW5nICgyKToKICAgICAgbXRkOiBvbmVuYW5kX2Jhc2U6IEZpeCBhIG1l
bW9yeSBsZWFrIGJ1ZwogICAgICBtdGQ6IHJhd25hbmQ6IEZpeCBhIG1lbW9yeSBsZWFrIGJ1ZwoK
IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tdGQvbXhpYy1uYW5kLnR4dCB8ICAz
NiArKysrKysrKysrCiBkcml2ZXJzL210ZC9uYW5kL29uZW5hbmQvb25lbmFuZF9iYXNlLmMgICAg
ICAgICAgICAgfCAgIDMgKwogZHJpdmVycy9tdGQvbmFuZC9yYXcvS2NvbmZpZyAgICAgICAgICAg
ICAgICAgICAgICAgIHwgIDE0ICsrLS0KIGRyaXZlcnMvbXRkL25hbmQvcmF3L01ha2VmaWxlICAg
ICAgICAgICAgICAgICAgICAgICB8ICAgMiArLQogZHJpdmVycy9tdGQvbmFuZC9yYXcvYnJjbW5h
bmQvYnJjbW5hbmQuYyAgICAgICAgICAgIHwgICA1ICstCiBkcml2ZXJzL210ZC9uYW5kL3Jhdy9p
bmdlbmljL2luZ2VuaWNfbmFuZF9kcnYuYyAgICAgfCAgIDUgKy0KIGRyaXZlcnMvbXRkL25hbmQv
cmF3L21lc29uX25hbmQuYyAgICAgICAgICAgICAgICAgICB8ICAgMSArCiBkcml2ZXJzL210ZC9u
YW5kL3Jhdy9teGljX25hbmQuYyAgICAgICAgICAgICAgICAgICAgfCA1ODIgKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKwogZHJpdmVycy9tdGQvbmFuZC9yYXcvbmFuZF9iYXNl
LmMgICAgICAgICAgICAgICAgICAgIHwgICAyICstCiBkcml2ZXJzL210ZC9uYW5kL3Jhdy9uYW5k
X2JidC5jICAgICAgICAgICAgICAgICAgICAgfCAgMTAgKy0tCiBkcml2ZXJzL210ZC9uYW5kL3Jh
dy9udWM5MDBfbmFuZC5jICAgICAgICAgICAgICAgICAgfCAzMDQgLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLQogZHJpdmVycy9tdGQvbmFuZC9yYXcvb21hcDIuYyAgICAgICAgICAgICAgICAgICAgICAg
IHwgICAyICstCiBkcml2ZXJzL210ZC9uYW5kL3Jhdy9veG5hc19uYW5kLmMgICAgICAgICAgICAg
ICAgICAgfCAgIDggKystCiBkcml2ZXJzL210ZC9uYW5kL3Jhdy9yODUyLmMgICAgICAgICAgICAg
ICAgICAgICAgICAgfCAgIDQgKy0KIGRyaXZlcnMvbXRkL25hbmQvcmF3L3N0bTMyX2ZtYzJfbmFu
ZC5jICAgICAgICAgICAgICB8ICA4NiArKysrKysrLS0tLS0tLS0tLS0tLS0tLQogZHJpdmVycy9t
dGQvbmFuZC9yYXcvdGFuZ29fbmFuZC5jICAgICAgICAgICAgICAgICAgIHwgICAxICsKIGRyaXZl
cnMvbXRkL25hbmQvcmF3L3ZmNjEwX25mYy5jICAgICAgICAgICAgICAgICAgICB8ICAgMSArCiBp
bmNsdWRlL2xpbnV4L210ZC9uYW5kLmggICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDIg
Ky0KIGluY2x1ZGUvbGludXgvbXRkL3NoYXJwc2wuaCAgICAgICAgICAgICAgICAgICAgICAgICB8
ICAgNSArKwogMTkgZmlsZXMgY2hhbmdlZCwgNjg1IGluc2VydGlvbnMoKyksIDM4OCBkZWxldGlv
bnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvbXRkL214aWMtbmFuZC50eHQKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL210ZC9uYW5k
L3Jhdy9teGljX25hbmQuYwogZGVsZXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbXRkL25hbmQvcmF3
L251YzkwMF9uYW5kLmMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
