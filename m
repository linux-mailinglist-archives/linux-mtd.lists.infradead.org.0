Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB46F5B599
	for <lists+linux-mtd@lfdr.de>; Mon,  1 Jul 2019 09:14:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qb259xbol0buZ9yTMtBOffoAG0coZVCuuoSzWzZ7Tag=; b=KpLXs91mzobFez
	JSEBPX0nyS6w7pwVyF4q20hI1gF19WAGaR+H762h9gx+lLoO9hCx9q0I6eBOxOa2EqZ7pOsPN+pgd
	p4pbc3o48YI0f+mQlhhogEHW+MFxYH37kQNnF7gTFOxxmTYVk7V8MIKiONyLPIKCn1KYjlD3mA7wi
	tCDa/BWym0bX6dmNicOoFWKg1dlTy4tbKmaCq3qidxLDnjsyb7qog4pShTpZpfEKu/eMyvWmrK3mK
	v/p8RhoBr+gLe0WmuU/rCkmcIhTI2Z+KbAlqwsjTvo+DgKcJyJXCiHsl4EOa69A8jWJN51gcAvmWM
	egJNbB+foB5fKyNnPgRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhqWD-0001Zv-33; Mon, 01 Jul 2019 07:14:29 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhqVq-0001Ng-Hn
 for linux-mtd@lists.infradead.org; Mon, 01 Jul 2019 07:14:08 +0000
X-Originating-IP: 86.250.200.211
Received: from xps13 (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id D61AEE0007;
 Mon,  1 Jul 2019 07:13:52 +0000 (UTC)
Date: Mon, 1 Jul 2019 09:13:52 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH][next] mtd: rawnand: gpmi: remove double assignment to
 block_size
Message-ID: <20190701091352.3e3caf11@xps13>
In-Reply-To: <20190604105859.16627-1-colin.king@canonical.com>
References: <20190604105859.16627-1-colin.king@canonical.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_001406_745234_D6989D6E 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 Sascha Hauer <s.hauer@pengutronix.de>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Marek Vasut <marek.vasut@gmail.com>,
 linux-mtd@lists.infradead.org, Han Xu <han.xu@nxp.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgQ29saW4sCgpDb2xpbiBLaW5nIDxjb2xpbi5raW5nQGNhbm9uaWNhbC5jb20+IHdyb3RlIG9u
IFR1ZSwgIDQgSnVuIDIwMTkKMTE6NTg6NTkgKzAxMDA6Cgo+IEZyb206IENvbGluIElhbiBLaW5n
IDxjb2xpbi5raW5nQGNhbm9uaWNhbC5jb20+Cj4gCj4gVGhlIHZhcmlhYmxlIGJsb2NrX3NpemUg
aXMgYmVpbmcgYXNzaWduZWQgdG8gaXRzZWxmIGFuZCB0bwo+IGdlby0+ZWNjX2NodW5rX3NpemUu
ICBDbGVhbiB1cCB0aGUgZG91YmxlIGFzc2lnbm1lbnQgYnkgcmVtb3ZpbmcKPiB0aGUgYXNzaWdu
bWVudCB0byBpdHNlbGYuCj4gCj4gQWRkcmVzc2VzLUNvdmVyaXR5OiAoIkV2YWx1YXRpb24gb3Jk
ZXIgdmlvbGF0aW9uIikKPiBTaWduZWQtb2ZmLWJ5OiBDb2xpbiBJYW4gS2luZyA8Y29saW4ua2lu
Z0BjYW5vbmljYWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL210ZC9uYW5kL3Jhdy9ncG1pLW5hbmQv
Z3BtaS1uYW5kLmMgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBk
ZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL210ZC9uYW5kL3Jhdy9ncG1pLW5h
bmQvZ3BtaS1uYW5kLmMgYi9kcml2ZXJzL210ZC9uYW5kL3Jhdy9ncG1pLW5hbmQvZ3BtaS1uYW5k
LmMKPiBpbmRleCA1ZGI4NDE3OGVkZmYuLjMzNGZlMzEzMDI4NSAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL210ZC9uYW5kL3Jhdy9ncG1pLW5hbmQvZ3BtaS1uYW5kLmMKPiArKysgYi9kcml2ZXJzL210
ZC9uYW5kL3Jhdy9ncG1pLW5hbmQvZ3BtaS1uYW5kLmMKPiBAQCAtMTQyOCw3ICsxNDI4LDcgQEAg
c3RhdGljIHZvaWQgZ3BtaV9iY2hfbGF5b3V0X3N0ZChzdHJ1Y3QgZ3BtaV9uYW5kX2RhdGEgKnRo
aXMpCj4gIAlzdHJ1Y3QgYmNoX2dlb21ldHJ5ICpnZW8gPSAmdGhpcy0+YmNoX2dlb21ldHJ5Owo+
ICAJdW5zaWduZWQgaW50IGVjY19zdHJlbmd0aCA9IGdlby0+ZWNjX3N0cmVuZ3RoID4+IDE7Cj4g
IAl1bnNpZ25lZCBpbnQgZ2ZfbGVuID0gZ2VvLT5nZl9sZW47Cj4gLQl1bnNpZ25lZCBpbnQgYmxv
Y2tfc2l6ZSA9IGJsb2NrX3NpemUgPSBnZW8tPmVjY19jaHVua19zaXplOwo+ICsJdW5zaWduZWQg
aW50IGJsb2NrX3NpemUgPSBnZW8tPmVjY19jaHVua19zaXplOwo+ICAKPiAgCXRoaXMtPmJjaF9m
bGFzaGxheW91dDAgPQo+ICAJCUJGX0JDSF9GTEFTSDBMQVlPVVQwX05CTE9DS1MoZ2VvLT5lY2Nf
Y2h1bmtfY291bnQgLSAxKSB8CgoKCkFwcGxpZWQgdG8gbmFuZC9uZXh0LCB0aGFua3MuCgpNaXF1
w6hsCgoKVGhhbmtzLApNaXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
