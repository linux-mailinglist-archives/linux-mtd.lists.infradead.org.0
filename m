Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A338C3F9
	for <lists+linux-mtd@lfdr.de>; Tue, 13 Aug 2019 23:56:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nobbn1+26R0WJu/ydGRr5rxPcX88Ik8IKjSerVf/JsU=; b=JmIeC+/HRZciia
	Ak1XeZqsQMkRkegCaqXPqvR9g2L8Xaj2TjVFtBvRF2uv14RdSIpv8zVpgowxQfNx1EXjnFY7IolWt
	bQukC/V9x83ExT7NdIYLzmLsG1U5F2eI5mjZ//lu4jFioNw0DiByaTlNxsv0jdfWg76ranW7noJGw
	wv7YHi6eUzEEEtz0OYcRd53zyrRyDwiDJc8gPVao7YZxQmAVXSE4kppdtyv41+7Oy5oeJr6aI0Cbi
	8vqZtLPEnx8WznGGbSK5FHj2XZz+4wL7SL5z9SSAGv785a8IjxouJeUEhaVtZsLcjRIwNM28/rkSh
	iXr8DJcqL+LnZJODzJkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxelv-0001B7-99; Tue, 13 Aug 2019 21:56:03 +0000
Received: from lilium.sigma-star.at ([109.75.188.150])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxeln-0001Al-Ac
 for linux-mtd@lists.infradead.org; Tue, 13 Aug 2019 21:55:56 +0000
Received: from localhost (localhost [127.0.0.1])
 by lilium.sigma-star.at (Postfix) with ESMTP id 16392180099C8;
 Tue, 13 Aug 2019 23:55:54 +0200 (CEST)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id lLNr6IXDDxsA; Tue, 13 Aug 2019 23:55:53 +0200 (CEST)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id ulx9LCtXZ7-b; Tue, 13 Aug 2019 23:55:53 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: linux-mtd@lists.infradead.org
Subject: [PATCH v2] ubifs: Correctly initialize c->min_log_bytes
Date: Tue, 13 Aug 2019 23:55:48 +0200
Message-Id: <20190813215548.32340-1-richard@nod.at>
X-Mailer: git-send-email 2.16.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_145555_514983_23BE1194 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Richard Weinberger <richard@nod.at>, u.kleine-koenig@pengutronix.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Q3VycmVudGx5IG9uIGEgZnJlc2hseSBtb3VudGVkIFVCSUZTLCBjLT5taW5fbG9nX2J5dGVzIGlz
IDAuClRoaXMgY2FuIGxlYWQgdG8gYSBsb2cgb3ZlcnJ1biBhbmQgbWFrZSBjb21taXRzIGZhaWwu
CgpSZWNlbnQga2VybmVscyB3aWxsIHJlcG9ydCB0aGUgZm9sbG93aW5nIGFzc2VydDoKVUJJRlMg
YXNzZXJ0IGZhaWxlZDogYy0+bGhlYWRfbG51bSAhPSBjLT5sdGFpbF9sbnVtLCBpbiBmcy91Ymlm
cy9sb2cuYzo0MTIKCmMtPm1pbl9sb2dfYnl0ZXMgY2FuIGhhdmUgdHdvIHN0YXRlcywgMCBhbmQg
Yy0+bGViX3NpemUuCkl0IGNvbnRyb2xzIGhvdyBtdWNoIGJ5dGVzIG9mIHRoZSBsb2cgYXJlYSBh
cmUgcmVzZXJ2ZWQgZm9yIG5vbi1idWQKbm9kZXMgc3VjaCBhcyBjb21taXQgbm9kZXMuCgpBZnRl
ciBhIGNvbW1pdCBpdCBoYXMgdG8gYmUgc2V0IHRvIGMtPmxlYl9zaXplIHN1Y2ggdGhhdCB3ZSBo
YXZlIGFsd2F5cwplbm91Z2ggc3BhY2UgZm9yIGEgY29tbWl0LiBXaGlsZSBhIGNvbW1pdCBydW5z
IGl0IGNhbiBiZSAwIHRvIG1ha2UgdGhlCnJlbWFpbmluZyBieXRlcyBvZiB0aGUgbG9nIGF2YWls
YWJsZSB0byB3cml0ZXJzLgoKSGF2aW5nIGl0IHNldCB0byAwIHJpZ2h0IGFmdGVyIG1vdW50IGlz
IHdyb25nIHNpbmNlIG5vIHNwYWNlIGZvciBjb21taXRzCmlzIHJlc2VydmVkLgoKRml4ZXM6IDFl
NTE3NjRhM2MyYWMgKCJVQklGUzogYWRkIG5ldyBmbGFzaCBmaWxlIHN5c3RlbSIpClJlcG9ydGVk
LWFuZC10ZXN0ZWQtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0
cm9uaXguZGU+ClNpZ25lZC1vZmYtYnk6IFJpY2hhcmQgV2VpbmJlcmdlciA8cmljaGFyZEBub2Qu
YXQ+Ci0tLQogZnMvdWJpZnMvc3VwZXIuYyB8IDQgKysrKwogMSBmaWxlIGNoYW5nZWQsIDQgaW5z
ZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2ZzL3ViaWZzL3N1cGVyLmMgYi9mcy91Ymlmcy9zdXBl
ci5jCmluZGV4IDJjMDgwM2IwYWMzYS4uOGMxZDU3MTMzNGJjIDEwMDY0NAotLS0gYS9mcy91Ymlm
cy9zdXBlci5jCisrKyBiL2ZzL3ViaWZzL3N1cGVyLmMKQEAgLTYwOSw2ICs2MDksMTAgQEAgc3Rh
dGljIGludCBpbml0X2NvbnN0YW50c19lYXJseShzdHJ1Y3QgdWJpZnNfaW5mbyAqYykKIAljLT5t
YXhfYnVfYnVmX2xlbiA9IFVCSUZTX01BWF9CVUxLX1JFQUQgKiBVQklGU19NQVhfREFUQV9OT0RF
X1NaOwogCWlmIChjLT5tYXhfYnVfYnVmX2xlbiA+IGMtPmxlYl9zaXplKQogCQljLT5tYXhfYnVf
YnVmX2xlbiA9IGMtPmxlYl9zaXplOworCisJLyogTG9nIGlzIHJlYWR5LCBwcmVzZXJ2ZSBvbmUg
TEVCIGZvciBjb21taXRzLiAqLworCWMtPm1pbl9sb2dfYnl0ZXMgPSBjLT5sZWJfc2l6ZTsKKwog
CXJldHVybiAwOwogfQogCi0tIAoyLjE2LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBs
aXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRk
Lwo=
