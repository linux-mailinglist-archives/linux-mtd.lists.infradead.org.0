Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ABA31E138B
	for <lists+linux-mtd@lfdr.de>; Mon, 25 May 2020 19:43:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zT7ipnNtg/ytMxK981tLMrk2f7g5j60UyEuGd1psNdA=; b=eh32fMovuJeMfn
	9LoeRMsDeSSJiMeV1TrGJ6Xs6igBH2ZB1UFZEY2UObZ72F0eozuyC2uo/BxqmUAaxVfQlZ1cY3sB9
	5CxDU/WjKe8/OOQ4FM8HrInUuht5iKhMX8gsHEK0KcD0AgHMQKaVJU/pAqsRyQRKfz9agvOmNLCrD
	QveJK91nXqZ/keuLhvGeT37ZYK3ZCNXIcpJJaIpSGZd0RiclCRO0H23eRV6b/R9yv5Kv5CD/99bJh
	urVW4ihUuLeUY9cIXysoF7t7DPRwwOq4VrhKUsyIj3PlF/fFP1dvKYXGjvUcBmDFpBNjQ93pFOP0q
	gTQFAUnJw42dEz3ib7hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdH8H-0003PR-GZ; Mon, 25 May 2020 17:43:25 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdH7i-000389-Ba
 for linux-mtd@lists.infradead.org; Mon, 25 May 2020 17:42:51 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 71E1F240002;
 Mon, 25 May 2020 17:42:40 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v4 00/19] Allow vendor drivers to propose their own timings
Date: Mon, 25 May 2020 19:42:20 +0200
Message-Id: <20200525174239.11349-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_104250_532570_72A83FB5 
X-CRM114-Status: GOOD (  10.44  )
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
Cc: Rickard Andersson <rickaran@axis.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

QXMgcmFpc2VkIGJ5IFJpY2thcmQsIGNlcnRhaW4gY2hpcHMgbGlrZSBUb3NoaWJhL0tpb3hpYQpU
SDU4TlZHMlMzSEJBSTQgYXJlIG5vdCBPTkZJIGNvbXBsaWFudCBhbmQgYmVjYXVzZSBvZiB0aGF0
LCB3b3JrIGF0IGEKdmVyeSBzbG93IHBhY2UuIFRoaXMgY2hpcCBpbiBwYXJ0aWN1bGFyIHN1cHBv
cnRzIHJ1bm5pbmcgYXQgYSBwYWNlCiJjbG9zZSIgdG8gT05GSSBtb2RlIDQuCgpUaGlzIHNlcmll
cyBwcm92aWRlcyBhIHdheSB0byBtYW51ZmFjdHVyZXIgZHJpdmVycyB0byBwcm9wb3NlIGEgZGF0
YQppbnRlcmZhY2UgdG8gdGhlIGNvcmUgd2l0aCBhIHZlcnkgc2ltcGxlIGludGVyZmFjZSAoc2Vl
IHBhdGNoIDE5LzE5KS4KCkNoZWVycywKTWlxdcOobAoKQ2hhbmdlcyBzaW5jZSB2MzoKKiBUb29r
IFJpY2thcmQgcGF0Y2ggYmFzZWQgb24gbXkgcHJldmlvdXMgcHJvcG9zYWxzIG92ZXIgR2l0aHVi
IGFuZAogIHR3ZWFrZWQgYSBmZXcgbW9yZSB0aGluZ3M6CiAgLSBBZGRlZCBhICJnZW5lcmljIiBo
ZWxwZXIgdG8gZmFsbGJhY2sgb24gc2xvd2VyIE9ORkkgbW9kZXMgd2hlbiB0aGUKICAgIHByb3Bv
c2VkIGludGVyZmFjZSBpcyBub3Qgc3VwcG9ydGVkIGJ5IHRoZSBjb250cm9sbGVyLgogIC0gRml4
ZWQgbW9yZSBrZG9jLgogIC0gU2ltcGxpZmllZCB0aGUgdmVuZG9yIGRyaXZlciBzaWRlIGJ5IHBy
b3ZpZGluZyBhZGRpdGlvbmFsIGhlbHBlcnMuCiogVHdlYWtlZCBhIGxpdHRsZSBiaXQgUmlja2Fy
ZCBwYXRjaCB0byBmaXQgdGhlIGxhdGVzdCBjaGFuZ2VzLgoKTWlxdWVsIFJheW5hbCAoMTgpOgog
IG10ZDogcmF3bmFuZDogVXNlIHVuc2lnbmVkIHR5cGVzIGZvciBuYW5kX2NoaXAgdW5zaWduZWQg
dmFsdWVzCiAgbXRkOiByYXduYW5kOiBPbmx5IHVzZSB1OCBpbnN0ZWFkIG9mIHVpbnQ4X3QgaW4g
bmFuZF9jaGlwIHN0cnVjdHVyZQogIG10ZDogcmF3bmFuZDogQ3JlYXRlIGEgbmFuZF9jaGlwIG9w
ZXJhdGlvbnMgc3RydWN0dXJlCiAgbXRkOiByYXduYW5kOiBSZW5hbWUgdGhlIG1hbnVmYWN0dXJl
ciBzdHJ1Y3R1cmUKICBtdGQ6IHJhd25hbmQ6IERlY2xhcmUgdGhlIG5hbmRfbWFudWZhY3R1cmVy
IHN0cnVjdHVyZSBvdXQgb2YgbmFuZF9jaGlwCiAgbXRkOiByYXduYW5kOiBSZW9yZ2FuaXplIHRo
ZSBuYW5kX2NoaXAgc3RydWN0dXJlCiAgbXRkOiByYXduYW5kOiBDb21wYXJlIHRoZSBhY3R1YWwg
dGltaW5nIHZhbHVlcwogIG10ZDogcmF3bmFuZDogUmVuYW1lIG9uZmlfdGltaW5nX21vZGVfZGVm
YXVsdAogIG10ZDogcmF3bmFuZDogVXNlIHRoZSBkYXRhIGludGVyZmFjZSBtb2RlIGVudHJ5IHdo
ZW4gcmVsZXZhbnQKICBtdGQ6IHJhd25hbmQ6IFJlbmFtZSBuYW5kX2hhc19zZXR1cF9kYXRhX2lu
dGVyZmFjZSgpCiAgbXRkOiByYXduYW5kOiBGaXggbmFuZF9zZXR1cF9kYXRhX2ludGVyZmFjZSgp
IGRlc2NyaXB0aW9uCiAgbXRkOiByYXduYW5kOiBSZW5hbWUgbmFuZF9pbml0X2RhdGFfaW50ZXJm
YWNlKCkKICBtdGQ6IHJhd25hbmQ6IHRpbWluZ3M6IFVwZGF0ZSBvbmZpX2ZpbGxfZGF0YV9pbnRl
cmZhY2UoKSBrZXJuZWwgZG9jCiAgbXRkOiByYXduYW5kOiB0aW1pbmdzOiBQcm92aWRlIG9uZmlf
ZmlsbF9kYXRhX2ludGVyZmFjZSgpIHdpdGggYSBkYXRhCiAgICBpbnRlcmZhY2UKICBtdGQ6IHJh
d25hbmQ6IHRpbWluZ3M6IEFkZCBhIGhlbHBlciB0byBmaW5kIHRoZSBjbG9zZXN0IE9ORkkgbW9k
ZQogIG10ZDogcmF3bmFuZDogSW50cm9kdWNlIG5hbmRfY2hvb3NlX2Jlc3Rfc2RyX2lmYWNlKCkK
ICBtdGQ6IHJhd25hbmQ6IEludHJvZHVjZSBuYW5kX2Nob29zZV9iZXN0X3ZlbmRvcl9zZHJfaWZh
Y2UoKQogIG10ZDogcmF3bmFuZDogQWRkIHRoZSAtPmNob29zZV9kYXRhX2ludGVyZmFjZSgpIGhv
b2sKClJpY2thcmQgeCBBbmRlcnNzb24gKDEpOgogIG10ZDogcmF3bmFuZDogQWRkIHRpbWluZ3Mg
Zm9yIEtpb3hpYSBUSDU4TlZHMlMzSEJBSTQKCiBkcml2ZXJzL210ZC9uYW5kL3Jhdy9pbnRlcm5h
bHMuaCAgICAgfCAgMTcgKy0KIGRyaXZlcnMvbXRkL25hbmQvcmF3L25hbmRfYmFzZS5jICAgICB8
IDE4MSArKysrKysrKysrKysrKy0tLS0tLS0tCiBkcml2ZXJzL210ZC9uYW5kL3Jhdy9uYW5kX2h5
bml4LmMgICAgfCAgIDIgKy0KIGRyaXZlcnMvbXRkL25hbmQvcmF3L25hbmRfaWRzLmMgICAgICB8
ICAxOSArKy0KIGRyaXZlcnMvbXRkL25hbmQvcmF3L25hbmRfbGVnYWN5LmMgICB8ICAgMiArLQog
ZHJpdmVycy9tdGQvbmFuZC9yYXcvbmFuZF9tYWNyb25peC5jIHwgIDEwICstCiBkcml2ZXJzL210
ZC9uYW5kL3Jhdy9uYW5kX21pY3Jvbi5jICAgfCAgIDIgKy0KIGRyaXZlcnMvbXRkL25hbmQvcmF3
L25hbmRfdGltaW5ncy5jICB8ICA2MiArKysrKysrLQogZHJpdmVycy9tdGQvbmFuZC9yYXcvbmFu
ZF90b3NoaWJhLmMgIHwgIDQwICsrKystCiBpbmNsdWRlL2xpbnV4L210ZC9yYXduYW5kLmggICAg
ICAgICAgfCAyMjQgKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tCiAxMCBmaWxlcyBjaGFuZ2Vk
LCAzNTQgaW5zZXJ0aW9ucygrKSwgMjA1IGRlbGV0aW9ucygtKQoKLS0gCjIuMjAuMQoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBN
VEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
