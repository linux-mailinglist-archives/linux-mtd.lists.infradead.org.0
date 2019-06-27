Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB3A587D4
	for <lists+linux-mtd@lfdr.de>; Thu, 27 Jun 2019 18:59:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wWxorGhzimkXiOsm+axdLkGxQsaEPdqvb29podLr1Vw=; b=qn0+gBQ1KDioI4
	23YoCYasfcJwTI5nxD5M4nWhL0F3cfbJC6MHKsfr5snsAVWU88sv/xm1QHCmBpYi5myonPs2abNjH
	E+5GvdTe91qlvvY45QEHBmsYBg+7NwcBZLiFgl8T7fqF5oGIhcQFO26fksmo8SeTx+gAfldxv+ajw
	qxlIJuKPWGpirNoL/aGn+hwXKXJKmzwm0ah25bnPwPaggXiO8UzgWaSib2HmjymtpPAtzoOOvz7q2
	cKNnNvd93FxVdO1vHhLn0UOqEvavci+4wVhKUvoLWWD0ACLIiWdSS5xA/RoOJv0PDyj2xdRSSlGZQ
	YS0Dxeapjdyh0vveiAYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgXkC-00035B-18; Thu, 27 Jun 2019 16:59:32 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgXk1-00034f-2q
 for linux-mtd@lists.infradead.org; Thu, 27 Jun 2019 16:59:22 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 5789AFF813;
 Thu, 27 Jun 2019 16:59:04 +0000 (UTC)
Date: Thu, 27 Jun 2019 18:59:01 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Christophe Kerello <christophe.kerello@st.com>
Subject: Re: [PATCH] mtd: rawnand: stm32_fmc2: increase DMA completion timeouts
Message-ID: <20190627185901.6247a77c@xps13>
In-Reply-To: <1561128480-14531-1-git-send-email-christophe.kerello@st.com>
References: <1561128480-14531-1-git-send-email-christophe.kerello@st.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_095921_287949_88FB35F9 
X-CRM114-Status: GOOD (  15.52  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
Cc: Amelie Delaunay <amelie.delaunay@st.com>, vigneshr@ti.com,
 bbrezillon@kernel.org, richard@nod.at, linux-kernel@vger.kernel.org,
 marek.vasut@gmail.com, linux-mtd@lists.infradead.org,
 computersforpeace@gmail.com, dwmw2@infradead.org,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgQ2hyaXN0b3BoZSwKCkNocmlzdG9waGUgS2VyZWxsbyA8Y2hyaXN0b3BoZS5rZXJlbGxvQHN0
LmNvbT4gd3JvdGUgb24gRnJpLCAyMSBKdW4KMjAxOSAxNjo0ODowMCArMDIwMDoKCj4gV2hlbiB0
aGUgc3lzdGVtIGlzIG92ZXJsb2FkZWQsIERNQSBkYXRhIHRyYW5zZmVyIGNvbXBsZXRpb24gb2Nj
dXJzIGFmdGVyCj4gMTAwbXMuIEluY3JlYXNlIHRoZSB0aW1lb3V0cyB0byBsZXQgaXQgdGhlIHRp
bWUgdG8gY29tcGxldGUuCj4gCj4gU2lnbmVkLW9mZi1ieTogQW1lbGllIERlbGF1bmF5IDxhbWVs
aWUuZGVsYXVuYXlAc3QuY29tPgoKVGhlIGZpcnN0IFNvQiBzaG91bGQgYmUgdGhlIGF1dGhvcidz
LiBFaXRoZXIgQW1lbGllIGlzIHRoZSBhdXRob3IgYW5kCnlvdSBzaG91bGQgdXNlICdnaXQgY29t
bWl0IC0tYW1lbmQgLS1hdXRob3I9Li4uIiBvciBzaGUgaXMgbm90IGFuZApzaG91bGQgYmUgZHJv
cHBlZCAodW5sZXNzIHNoZSBzZW5kcyB0aGUgcGF0Y2ggd2hpY2ggaXMgeW91cnMsIGFuZCBpbgp0
aGlzIGNhc2UgaGVyIG5hbWUgc2hvdWxkIGFwcGVhciBzZWNvbmQpLgoKPiBTaWduZWQtb2ZmLWJ5
OiBDaHJpc3RvcGhlIEtlcmVsbG8gPGNocmlzdG9waGUua2VyZWxsb0BzdC5jb20+Cj4gLS0tCj4g
IGRyaXZlcnMvbXRkL25hbmQvcmF3L3N0bTMyX2ZtYzJfbmFuZC5jIHwgNCArKy0tCj4gIDEgZmls
ZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvbXRkL25hbmQvcmF3L3N0bTMyX2ZtYzJfbmFuZC5jIGIvZHJpdmVycy9tdGQv
bmFuZC9yYXcvc3RtMzJfZm1jMl9uYW5kLmMKPiBpbmRleCA0YWFiZWEyLi5jN2Y3YzZmIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvbXRkL25hbmQvcmF3L3N0bTMyX2ZtYzJfbmFuZC5jCj4gKysrIGIv
ZHJpdmVycy9tdGQvbmFuZC9yYXcvc3RtMzJfZm1jMl9uYW5kLmMKPiBAQCAtOTgxLDcgKzk4MSw3
IEBAIHN0YXRpYyBpbnQgc3RtMzJfZm1jMl94ZmVyKHN0cnVjdCBuYW5kX2NoaXAgKmNoaXAsIGNv
bnN0IHU4ICpidWYsCj4gIAo+ICAJLyogV2FpdCBETUEgZGF0YSB0cmFuc2ZlciBjb21wbGV0aW9u
ICovCj4gIAlpZiAoIXdhaXRfZm9yX2NvbXBsZXRpb25fdGltZW91dCgmZm1jMi0+ZG1hX2RhdGFf
Y29tcGxldGUsCj4gLQkJCQkJIG1zZWNzX3RvX2ppZmZpZXMoMTAwKSkpIHsKPiArCQkJCQkgbXNl
Y3NfdG9famlmZmllcyg1MDApKSkgewo+ICAJCWRldl9lcnIoZm1jMi0+ZGV2LCAiZGF0YSBETUEg
dGltZW91dFxuIik7Cj4gIAkJZG1hZW5naW5lX3Rlcm1pbmF0ZV9hbGwoZG1hX2NoKTsKPiAgCQly
ZXQgPSAtRVRJTUVET1VUOwo+IEBAIC05OTAsNyArOTkwLDcgQEAgc3RhdGljIGludCBzdG0zMl9m
bWMyX3hmZXIoc3RydWN0IG5hbmRfY2hpcCAqY2hpcCwgY29uc3QgdTggKmJ1ZiwKPiAgCS8qIFdh
aXQgRE1BIEVDQyB0cmFuc2ZlciBjb21wbGV0aW9uICovCj4gIAlpZiAoIXdyaXRlX2RhdGEgJiYg
IXJhdykgewo+ICAJCWlmICghd2FpdF9mb3JfY29tcGxldGlvbl90aW1lb3V0KCZmbWMyLT5kbWFf
ZWNjX2NvbXBsZXRlLAo+IC0JCQkJCQkgbXNlY3NfdG9famlmZmllcygxMDApKSkgewo+ICsJCQkJ
CQkgbXNlY3NfdG9famlmZmllcyg1MDApKSkgewoKSUlSQyBJIGFscmVhZHkgYXNrZWQgeW91IHRo
aXMgYnV0IGNvdWxkIHlvdSBwbGVhc2UgbWFrZSBhIGRlZmluZSBhbmQgYXQKdGhlIHNhbWUgdGlt
ZSBtYWtlIGl0IDEwMDAgbXMsIEkgZG9uJ3Qgc2VlIHRoZSBwb2ludCBpbiBiZWluZyBjbG9zZQp0
byB0aGUgbWF4aW11bSBsYXRlbmN5LiBJZiB0aGlzIGlzIHJlYWNoZWQsIHlvdXIgdHJhbnNmZXIg
d2FzCnNjcmV3ZWQgYWxyZWFkeSwgdGhlcmUgaXMgbm8gcGVyZm9ybWFuY2UgaW1wYWN0IGhlcmUu
CgpTb3JyeSBmb3IgdGhlIGxhdGUgbm90aWNlIGJ1dCBJIHdpbGwgY2xvc2UgdGhlIG5hbmQvbmV4
dCBicmFuY2gKdG9tb3Jyb3csIHNvIEknbGwgcXVldWUgeW91ciB2MiBvbmx5IGlmIEkgcmVjZWl2
ZSBpdCBzb29uIGVub3VnaCA6KQoKVGhhbmtzLApNaXF1w6hsCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24g
bWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtbXRkLwo=
