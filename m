Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C48DC1624DE
	for <lists+linux-mtd@lfdr.de>; Tue, 18 Feb 2020 11:46:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tonyv9QwxvrOOiA6SjdE5CHZwr71Xu/aZBJHnKtAq54=; b=AepwB2RyyEOOoC
	S3hrH9/Ab0VM451KkaduPdrGRafYqv6j7K3HUVmrSLEw31FUK7M9fb8DtYslKZrPvSUQF8h9fWbsS
	NeaM4Cu6K5Ui+L7UmAUBBEh0vHn5kN4sFd58rn8qfazHJn3iCWOpCAEtU5B+ijEgn8L2wq6vZb92T
	Q4Hzns7kBkkR94L/JFfnJrzd3Gl/ezcxdyQspCCt1L/cV3qu8FoKnEM5C5ih8dTc31YVrjc8pcMnf
	OAkhWnbQBmERSrpABHb8Lah/NMgCsG9T+nG781hHUo8oM6QOlhRR37PSTR5TZ8q+0+oLaIec2z9vb
	i6T48oVw9mPCDD9UhZUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j40OP-0004ac-M6; Tue, 18 Feb 2020 10:46:17 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j40OG-0004ZO-UK
 for linux-mtd@lists.infradead.org; Tue, 18 Feb 2020 10:46:10 +0000
X-Originating-IP: 90.76.211.102
Received: from xps13 (lfbn-tou-1-1151-102.w90-76.abo.wanadoo.fr
 [90.76.211.102]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id B9E5140017;
 Tue, 18 Feb 2020 10:45:53 +0000 (UTC)
Date: Tue, 18 Feb 2020 11:45:53 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Piotr Sroka <piotrs@cadence.com>
Subject: Re: [PATCH 2/4] mtd: rawnand: cadence: fix calculating avaialble
 oob size
Message-ID: <20200218114537.723436b3@xps13>
In-Reply-To: <1581328530-29966-2-git-send-email-piotrs@cadence.com>
References: <1581328530-29966-1-git-send-email-piotrs@cadence.com>
 <1581328530-29966-2-git-send-email-piotrs@cadence.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_024609_113900_29C86020 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.194 listed in wl.mailspike.net]
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 linux-kernel@vger.kernel.org, Marek Vasut <marek.vasut@gmail.com>,
 linux-mtd@lists.infradead.org, Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>,
 Kazuhiro Kasai <kasai.kazuhiro@socionext.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgUGlvdHIsCgpQaW90ciBTcm9rYSA8cGlvdHJzQGNhZGVuY2UuY29tPiB3cm90ZSBvbiBNb24s
IDEwIEZlYiAyMDIwIDEwOjU1OjI2CiswMTAwOgoKVGhlcmUgaXMgYSB0eXBvIGluIHRoZSB0aXRs
ZSAoYXZhaWxhYmxlKS4KCj4gUHJldmlvdXNseSBlY2Nfc2VjdG9yIHNpemUgd2FzIHVzZWQgZm9y
IGNhbGN1bGF0aW9uIGJ1dCBpdHMgdmFsdWUKPiB3YXMgbm90IHlldCBrbm93bi4KCkNhbiB3ZSBy
ZXdvcmsgYSBsaXR0bGUgYml0IHRoaXM/IFdoYXQgYWJvdXQ6CgoJVGhlIHZhbHVlIG9mIGNkbnNf
Y2hpcC0+c2VjdG9yX2NvdW50IGlzIG5vdCBrbm93biBhdCB0aGUgbW9tZW50CglvZiB0aGUgZGVy
aXZhdGlvbiBvZiBlY2Nfc2l6ZSwgbGVhZGluZyB0byBhIHplcm8gdmFsdWUuIEZpeAoJdGhpcyBi
eSBhc3NpZ25pbmcgZWNjX3NpemUgbGF0ZXIgaW4gdGhlIGNvZGUuCgpBbHNvLCBJIHRoaW5rIGl0
IGRlc2VydmVzIGEgRml4ZXMvQ2M6c3RhYmxlIHRhZyEKCj4gCj4gU2lnbmVkLW9mZi1ieTogUGlv
dHIgU3Jva2EgPHBpb3Ryc0BjYWRlbmNlLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9tdGQvbmFuZC9y
YXcvY2FkZW5jZS1uYW5kLWNvbnRyb2xsZXIuYyB8IDMgKystCj4gIDEgZmlsZSBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9t
dGQvbmFuZC9yYXcvY2FkZW5jZS1uYW5kLWNvbnRyb2xsZXIuYyBiL2RyaXZlcnMvbXRkL25hbmQv
cmF3L2NhZGVuY2UtbmFuZC1jb250cm9sbGVyLmMKPiBpbmRleCA1MDYzYThiNDkzYTQuLjJlYmZk
MDkzNDczOSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL210ZC9uYW5kL3Jhdy9jYWRlbmNlLW5hbmQt
Y29udHJvbGxlci5jCj4gKysrIGIvZHJpdmVycy9tdGQvbmFuZC9yYXcvY2FkZW5jZS1uYW5kLWNv
bnRyb2xsZXIuYwo+IEBAIC0yNTk1LDcgKzI1OTUsNyBAQCBpbnQgY2FkZW5jZV9uYW5kX2F0dGFj
aF9jaGlwKHN0cnVjdCBuYW5kX2NoaXAgKmNoaXApCj4gIHsKPiAgCXN0cnVjdCBjZG5zX25hbmRf
Y3RybCAqY2Ruc19jdHJsID0gdG9fY2Ruc19uYW5kX2N0cmwoY2hpcC0+Y29udHJvbGxlcik7Cj4g
IAlzdHJ1Y3QgY2Ruc19uYW5kX2NoaXAgKmNkbnNfY2hpcCA9IHRvX2NkbnNfbmFuZF9jaGlwKGNo
aXApOwo+IC0JdTMyIGVjY19zaXplID0gY2Ruc19jaGlwLT5zZWN0b3JfY291bnQgKiBjaGlwLT5l
Y2MuYnl0ZXM7Cj4gKwl1MzIgZWNjX3NpemU7Cj4gIAlzdHJ1Y3QgbXRkX2luZm8gKm10ZCA9IG5h
bmRfdG9fbXRkKGNoaXApOwo+ICAJaW50IHJldDsKPiAgCj4gQEAgLTI2MzQsNiArMjYzNCw3IEBA
IGludCBjYWRlbmNlX25hbmRfYXR0YWNoX2NoaXAoc3RydWN0IG5hbmRfY2hpcCAqY2hpcCkKPiAg
CS8qIEVycm9yIGNvcnJlY3Rpb24gY29uZmlndXJhdGlvbi4gKi8KPiAgCWNkbnNfY2hpcC0+c2Vj
dG9yX3NpemUgPSBjaGlwLT5lY2Muc2l6ZTsKPiAgCWNkbnNfY2hpcC0+c2VjdG9yX2NvdW50ID0g
bXRkLT53cml0ZXNpemUgLyBjZG5zX2NoaXAtPnNlY3Rvcl9zaXplOwo+ICsJZWNjX3NpemUgPSBj
ZG5zX2NoaXAtPnNlY3Rvcl9jb3VudCAqIGNoaXAtPmVjYy5ieXRlczsKPiAgCj4gIAljZG5zX2No
aXAtPmF2YWlsX29vYl9zaXplID0gbXRkLT5vb2JzaXplIC0gZWNjX3NpemU7Cj4gIAoKVGhhbmtz
LApNaXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
