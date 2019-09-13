Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85136B1DC2
	for <lists+linux-mtd@lfdr.de>; Fri, 13 Sep 2019 14:33:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=clVHxQND6NvToCC5G8VjTxPepKR0KmgqBCMcQnjP//s=; b=CtabpIeZFRn4vB
	CJ8bLo6UROWXnh3pET6jkohV5pvRX5Qnu++7GOPB/4WxIauphIoSGgeAYrf+sFcl2a27n2XvKkixL
	OxdcpN0Rh97DDVKf17x1Oap6y9z7CplE4Yp9YOZU8KcSj/k/EmZ0CVwECOw+KiTJjxNg6XzHlEBPt
	eCCc6+MFqub0VKg11GRKJvV7vnXexjwJvp5R0ks7DxsjKpJyvP5eBF+6ULOSz9fzQqzjucUau61G9
	j1PgtoKa1+QKArLzBuJzlWBvnY5Bn0midO9AzbNEjOQ72Fcdbcet6yL1K2Ip/ia3CFo3lOMvvc42u
	OUyzuHzcOr9IRprS2FuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8klm-0006st-MP; Fri, 13 Sep 2019 12:33:46 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8klS-0006rs-PT
 for linux-mtd@lists.infradead.org; Fri, 13 Sep 2019 12:33:28 +0000
X-Originating-IP: 86.250.200.211
Received: from xps13 (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id ACC306000B;
 Fri, 13 Sep 2019 12:33:14 +0000 (UTC)
Date: Fri, 13 Sep 2019 14:33:13 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH] mtd: rawnand: fix spelling mistake "gravepagess" ->
 "gravepages"
Message-ID: <20190913143313.43d17e86@xps13>
In-Reply-To: <20190913092243.7399-1-colin.king@canonical.com>
References: <20190913092243.7399-1-colin.king@canonical.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_053326_972955_F60DDE63 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Marek Vasut <marek.vasut@gmail.com>, linux-mtd@lists.infradead.org,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgQ29saW4sCgpDb2xpbiBLaW5nIDxjb2xpbi5raW5nQGNhbm9uaWNhbC5jb20+IHdyb3RlIG9u
IEZyaSwgMTMgU2VwIDIwMTkKMTA6MjI6NDMgKzAxMDA6Cgo+IEZyb206IENvbGluIElhbiBLaW5n
IDxjb2xpbi5raW5nQGNhbm9uaWNhbC5jb20+Cj4gCj4gVGhlcmUgaXMgYSBzcGVsbGluZyBtaXN0
YWtlIGluIGEgTlNfRVJSIGVycm9yIG1lc3NhZ2UuIEZpeCBpdC4KCkEgRml4ZXMgdGFnIHdvdWxk
IGJlIGdyZWF0IQoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBDb2xpbiBJYW4gS2luZyA8Y29saW4ua2lu
Z0BjYW5vbmljYWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL210ZC9uYW5kL3Jhdy9uYW5kc2ltLmMg
fCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL210ZC9uYW5kL3Jhdy9uYW5kc2ltLmMgYi9kcml2ZXJz
L210ZC9uYW5kL3Jhdy9uYW5kc2ltLmMKPiBpbmRleCA5YTcwNzU0YTYxZWYuLjc2YzMxZDFkZWEz
MSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL210ZC9uYW5kL3Jhdy9uYW5kc2ltLmMKPiArKysgYi9k
cml2ZXJzL210ZC9uYW5kL3Jhdy9uYW5kc2ltLmMKPiBAQCAtOTEwLDcgKzkxMCw3IEBAIHN0YXRp
YyBpbnQgcGFyc2VfZ3JhdmVwYWdlcyh2b2lkKQo+ICAJCXplcm9fb2sgPSAoKmcgPT0gJzAnID8g
MSA6IDApOwo+ICAJCXBhZ2Vfbm8gPSBzaW1wbGVfc3RydG91bChnLCAmZywgMCk7Cj4gIAkJaWYg
KCF6ZXJvX29rICYmICFwYWdlX25vKSB7Cj4gLQkJCU5TX0VSUigiaW52YWxpZCBncmF2ZXBhZ2Vz
cy5cbiIpOwo+ICsJCQlOU19FUlIoImludmFsaWQgZ3JhdmVwYWdlcy5cbiIpOwo+ICAJCQlyZXR1
cm4gLUVJTlZBTDsKPiAgCQl9Cj4gIAkJbWF4X3JlYWRzID0gMzsKCgpUaGFua3MsCk1pcXXDqGwK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
