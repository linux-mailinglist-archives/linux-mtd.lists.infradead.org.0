Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9DF1E0973
	for <lists+linux-mtd@lfdr.de>; Mon, 25 May 2020 10:59:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6s3lt4LnQGQC4PAs4avcM4CKU2fZ0cUdk/yoJQ+tvjk=; b=hcRTQ+43NBLkcc
	WmpTCAtNANA+Q57e5aD6SMkTvFtI7Avkp4tgkppXIBJy8Rpy6ouXxVPp+NxDLVcXUCQYfdIjVkmo+
	iBgAJEUQ3UxpYRfMTTUlvsWsLkNf5oxmDkTzp0P38yWXJ9FgRdPciQ/lwjN0R3guoqKx+plabsU2c
	sfbd0lzaOL8j1A728OJARYQaovnEOWU0udWPesDbk/fncfAGGPCs3IDNgqRUUX4XyPC+Fd5lqSeuS
	SFBeu/peQQzUnkfKaT6NqsXiYgF4HyufgOuf0BzxqVsT8VaquuEIyvuFCoWFCorFGIcmwNlxdx5yA
	iI+iq5dMDtQuNhxEqQBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd8xc-0004xK-Qh; Mon, 25 May 2020 08:59:52 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd8wk-0004NR-HW
 for linux-mtd@lists.infradead.org; Mon, 25 May 2020 08:59:00 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 178CC240016;
 Mon, 25 May 2020 08:58:52 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v2 00/17] Clean nandsim error path
Date: Mon, 25 May 2020 10:58:34 +0200
Message-Id: <20200525085851.17682-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_015858_724527_843029E3 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: Boris Brezillon <boris.brezillon@collabora.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGVsbG8sCgpBcyBwYXJ0IG9mIGEgYmlnZ2VyIGNsZWFudXAgSSByZWFsaXplZCB0aGUgZXJyb3Ig
cGF0aCBvZiBuYW5kc2ltLmMgd2FzCmhvcnJpYmx5IHdyb25nLiBUaGVyZSBhcmUgYSBmZXcgYWRk
aXRpb25hbCBjaGFuZ2VzLCBsaWtlIGhhdmluZyBhCmNvbnNpc3RlbnQgbmFtaW5nIGZvciBhIGdp
dmVuIG9iamVjdCwgYnV0IG1vcmVvdmVyIHRoaXMgaXMgYW4gZXJyb3IKcGF0aCBjbGVhbnVwLCBk
cml2ZXItd2lkZS4KCkNoZWVycywKTWlxdcOobAoKQ2hhbmdlcyBpbiB2MjoKKiBSZW9yZGVyZWQg
dGhlIGtmcmVlKCkgYW5kIHRoZSBsaXN0X2RlbCgpIHRvIGF2b2lkIGEgdXNlIGFmdGVyIGZyZWUK
ICBpc3N1ZSB0aGF0IEkgaW50cm9kdWNlZCBpbiB2MS4KKiBVc2VkIGRlYnVnZnNfcmVtb3ZlX3Jl
Y3Vyc2l2ZSgpIGluc3RlYWQgb2YganVzdCBkZWJ1Z2ZzX3JlbW92ZSgpLgoKTWlxdWVsIFJheW5h
bCAoMTcpOgogIG10ZDogcmF3bmFuZDogbmFuZHNpbTogQ29uc2lzdGVudCB1c2Ugb2YgJ25zJyBp
bnN0ZWFkIG9mICdkZXYnCiAgbXRkOiByYXduYW5kOiBuYW5kc2ltOiBVc2Ugb2N0YWwgcGVybWlz
c2lvbnMKICBtdGQ6IHJhd25hbmQ6IG5hbmRzaW06IFVzZSBhIGNvbnNpc3RlbnQgbnNfIHByZWZp
eCBmb3IgYWxsIGZ1bmN0aW9ucwogIG10ZDogcmF3bmFuZDogbmFuZHNpbTogQ2xlYW4gZXJyb3Ig
aGFuZGxpbmcKICBtdGQ6IHJhd25hbmQ6IG5hbmRzaW06IEtlZXAgdHJhY2sgb2YgdGhlIGNyZWF0
ZWQgZGVidWdmcyBlbnRyaWVzCiAgbXRkOiByYXduYW5kOiBuYW5kc2ltOiBSZW1vdmUgZGVidWdm
cyBlbnRyaWVzIGF0IHVubG9hZCB0aW1lCiAgbXRkOiByYXduYW5kOiBuYW5kc2ltOiBGaXggdGhl
IHR3byBuc19hbGxvY19kZXZpY2UoKSBlcnJvciBwYXRocwogIG10ZDogcmF3bmFuZDogbmFuZHNp
bTogRnJlZSBwYXJ0aXRpb24gbmFtZXMgb24gZXJyb3IgaW4gbnNfaW5pdCgpCiAgbXRkOiByYXdu
YW5kOiBuYW5kc2ltOiBGcmVlIHRoZSBhbGxvY2F0ZWQgZGV2aWNlIG9uIGVycm9yIGluIG5zX2lu
aXQoKQogIG10ZDogcmF3bmFuZDogbmFuZHNpbTogRnJlZSB0aGUgcGFydGl0aW9uIG5hbWVzIGlu
IG5zX2ZyZWUoKQogIG10ZDogcmF3bmFuZDogbmFuZHNpbTogU3RvcCB1c2luZyBuYW5kX3JlbGVh
c2UoKQogIG10ZDogcmF3bmFuZDogbmFuZHNpbTogVXNlIGFuIGFkZGl0aW9uYWwgbGFiZWwgd2hl
biBmcmVlaW5nIHRoZQogICAgbmFuZHNpbSBvYmplY3QKICBtdGQ6IHJhd25hbmQ6IG5hbmRzaW06
IEZyZWUgZXJhc2VfYmxvY2tfd2VhciBvbiBlcnJvcgogIG10ZDogcmF3bmFuZDogbmFuZHNpbTog
Rml4IHRoZSBsYWJlbCBwb2ludGluZyBvbiBuYW5kX2NsZWFudXAoKQogIG10ZDogcmF3bmFuZDog
bmFuZHNpbTogTWFuYWdlIGxpc3RzIG9uIGVycm9yIGluIG5zX2luaXRfbW9kdWxlKCkKICBtdGQ6
IHJhd25hbmQ6IG5hbmRzaW06IFJlbmFtZSBhIGxhYmVsIGluIG5zX2luaXRfbW9kdWxlKCkKICBt
dGQ6IHJhd25hbmQ6IG5hbmRzaW06IFJlb3JnYW5pemUgbnNfY2xlYW51cF9tb2R1bGUoKQoKIGRy
aXZlcnMvbXRkL25hbmQvcmF3L25hbmRzaW0uYyB8IDQzNyArKysrKysrKysrKysrKysrKysrLS0t
LS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyNTMgaW5zZXJ0aW9ucygrKSwgMTg0IGRlbGV0
aW9ucygtKQoKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
