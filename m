Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 796EE1CC3F5
	for <lists+linux-mtd@lfdr.de>; Sat,  9 May 2020 21:15:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wsL33xmui6wzFvfmie9zM4b0jKPjIC0tyjun0ehPA08=; b=Q6JM3hkypCbKJC
	IiH4eaT2oB0VWFpz3CD1LFppPXpPkoGDVz1JpXqganQIaOQdxDvy67TZOAv4omAKcicMMajfrE/OE
	7Sbq9IBFVPweN9Ka2N2C1+Z75cPFGyF7NHhQwxqEbV8FFGsQD4JJwxPNY5pMSaTtbfz/CYlk4MUoe
	TC351w57AJbAOj0ID3pBspkAACabfSnAG5OH4H1bzwKlTns4VktB0su1cfbs1KK2GEHfvGZ8IIrXV
	tQv8IJ+owYzJYDDP6zdelSMy/C6QRwBEOiuqZgMDmnNLP4s/0NOcbK+QWyG46bkRv951QPJYoVBYq
	3Ql5XFnQV1JNXSA0o4lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXUwR-00021X-Eo; Sat, 09 May 2020 19:15:19 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXUvl-0001lo-Qu
 for linux-mtd@lists.infradead.org; Sat, 09 May 2020 19:14:39 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 30A52100007;
 Sat,  9 May 2020 19:14:31 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH 00/17] Clean nandsim error path
Date: Sat,  9 May 2020 21:14:13 +0200
Message-Id: <20200509191431.15862-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_121438_000525_5727D7C9 
X-CRM114-Status: UNSURE (   6.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.178.231 listed in wl.mailspike.net]
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
Cc: dedekind@infradead.org, Boris Brezillon <boris.brezillon@collabora.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGVsbG8sCgpBcyBwYXJ0IG9mIGEgYmlnZ2VyIGNsZWFudXAgSSByZWFsaXplZCB0aGUgZXJyb3Ig
cGF0aCBvZiBuYW5kc2ltLmMgd2FzCmhvcnJpYmx5IHdyb25nLiBUaGVyZSBhcmUgYSBmZXcgYWRk
aXRpb25hbCBjaGFuZ2VzLCBsaWtlIGhhdmluZyBhCmNvbnNpc3RlbnQgbmFtaW5nIGZvciBhIGdp
dmVuIG9iamVjdCwgYnV0IG1vcmVvdmVyIHRoaXMgaXMgYW4gZXJyb3IKcGF0aCBjbGVhbnVwLCBk
cml2ZXItd2lkZS4KCkNoZWVycywKTWlxdcOobAoKTWlxdWVsIFJheW5hbCAoMTcpOgogIG10ZDog
cmF3bmFuZDogbmFuZHNpbTogQ29uc2lzdGVudCB1c2Ugb2YgJ25zJyBpbnN0ZWFkIG9mICdkZXYn
CiAgbXRkOiByYXduYW5kOiBuYW5kc2ltOiBVc2Ugb2N0YWwgcGVybWlzc2lvbnMKICBtdGQ6IHJh
d25hbmQ6IG5hbmRzaW06IFVzZSBhIGNvbnNpc3RlbnQgbnNfIHByZWZpeCBmb3IgYWxsIGZ1bmN0
aW9ucwogIG10ZDogcmF3bmFuZDogbmFuZHNpbTogQ2xlYW4gZXJyb3IgaGFuZGxpbmcKICBtdGQ6
IHJhd25hbmQ6IG5hbmRzaW06IEtlZXAgdHJhY2sgb2YgdGhlIGNyZWF0ZWQgZGVidWdmcyBlbnRy
aWVzCiAgbXRkOiByYXduYW5kOiBuYW5kc2ltOiBSZW1vdmUgZGVidWdmcyBlbnRyaWVzIGF0IHVu
bG9hZCB0aW1lCiAgbXRkOiByYXduYW5kOiBuYW5kc2ltOiBGaXggdGhlIHR3byBuc19hbGxvY19k
ZXZpY2UoKSBlcnJvciBwYXRocwogIG10ZDogcmF3bmFuZDogbmFuZHNpbTogRnJlZSBwYXJ0aXRp
b24gbmFtZXMgb24gZXJyb3IgaW4gbnNfaW5pdCgpCiAgbXRkOiByYXduYW5kOiBuYW5kc2ltOiBG
cmVlIHRoZSBhbGxvY2F0ZWQgZGV2aWNlIG9uIGVycm9yIGluIG5zX2luaXQoKQogIG10ZDogcmF3
bmFuZDogbmFuZHNpbTogRnJlZSB0aGUgcGFydGl0aW9uIG5hbWVzIGluIG5zX2ZyZWUoKQogIG10
ZDogcmF3bmFuZDogbmFuZHNpbTogU3RvcCB1c2luZyBuYW5kX3JlbGVhc2UoKQogIG10ZDogcmF3
bmFuZDogbmFuZHNpbTogVXNlIGFuIGFkZGl0aW9uYWwgbGFiZWwgd2hlbiBmcmVlaW5nIHRoZQog
ICAgbmFuZHNpbSBvYmplY3QKICBtdGQ6IHJhd25hbmQ6IG5hbmRzaW06IEZyZWUgZXJhc2VfYmxv
Y2tfd2VhciBvbiBlcnJvcgogIG10ZDogcmF3bmFuZDogbmFuZHNpbTogRml4IHRoZSBsYWJlbCBw
b2ludGluZyBvbiBuYW5kX2NsZWFudXAoKQogIG10ZDogcmF3bmFuZDogbmFuZHNpbTogTWFuYWdl
IGxpc3RzIG9uIGVycm9yIGluIG5zX2luaXRfbW9kdWxlKCkKICBtdGQ6IHJhd25hbmQ6IG5hbmRz
aW06IFJlbmFtZSBhIGxhYmVsIGluIG5zX2luaXRfbW9kdWxlKCkKICBtdGQ6IHJhd25hbmQ6IG5h
bmRzaW06IFJlb3JnYW5pemUgbnNfY2xlYW51cF9tb2R1bGUoKQoKIGRyaXZlcnMvbXRkL25hbmQv
cmF3L25hbmRzaW0uYyB8IDQzMSArKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0KIDEg
ZmlsZSBjaGFuZ2VkLCAyNDggaW5zZXJ0aW9ucygrKSwgMTgzIGRlbGV0aW9ucygtKQoKLS0gCjIu
MjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
