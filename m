Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B06021F18E1
	for <lists+linux-mtd@lfdr.de>; Mon,  8 Jun 2020 14:38:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3pjgHGe4MnLkg53X8kn6fjP0VrRQymQEetELk1m4f3A=; b=Dxu0Q7NvG+Qacm
	PRNLT9MOlgByDP5JgWLoNrzsZPosFdTz4lInL7eXU/wR7wEfG9eCtRlawAfN1Z7QpPi4A+2PoCQPK
	C/1MCinwk0k4EXyHYva6c2tgABZuIyRoE6eGAX/j8Pf5M7Cu+YbLmHeYpRyVi4hKFQfcBR+JHl0Xj
	jqqhOp/ZgwFgqMxTxOsOUe3f2cOVs8qAKInafwgivrO6TD/w7AbIccn8S8Clal0hkP9jUZTn4g6w7
	AiNDPqwEhVgDrnCSpKtyboKWfCoMlqPCqQbaUZqQi2W62HCodxjeKehA7DlUqLxr/XVcfV1vyXQQm
	8n0a4nlAeCTi/luZLqTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiH2P-0005l3-DC; Mon, 08 Jun 2020 12:38:01 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiH2I-0005kF-3F
 for linux-mtd@lists.infradead.org; Mon, 08 Jun 2020 12:37:55 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 11E49240013;
 Mon,  8 Jun 2020 12:37:40 +0000 (UTC)
Date: Mon, 8 Jun 2020 14:37:39 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Sivaprakash Murugesan <sivaprak@codeaurora.org>
Subject: Re: [PATCH] mtd: raw: qcom_nand: Fix register write error
Message-ID: <20200608143739.368f2b53@xps13>
In-Reply-To: <1591613254-1065-1-git-send-email-sivaprak@codeaurora.org>
References: <1591613254-1065-1-git-send-email-sivaprak@codeaurora.org>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_053754_276223_42DD3CD6 
X-CRM114-Status: GOOD (  18.21  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.178.230 listed in wl.mailspike.net]
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
Cc: peter.ujfalusi@ti.com, richard@nod.at, linux-mtd@lists.infradead.org,
 vigneshr@ti.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgU2l2YXByYWthc2gsCgpTaXZhcHJha2FzaCBNdXJ1Z2VzYW4gPHNpdmFwcmFrQGNvZGVhdXJv
cmEub3JnPiB3cm90ZSBvbiBNb24sICA4IEp1bgoyMDIwIDE2OjE3OjM0ICswNTMwOgoKU3ViamVj
dCBwcmVmaXggc2hvdWxkIGJlIG10ZDogcmF3bmFuZDogcWNvbToKCkFuZCBJIGRvbid0IHRoaW5r
ICJGaXggcmVnaXN0ZXIgd3JpdGUgZXJyb3IiIGlzIHJlbGV2YW50IGluIGFueSBvZiB0aGUKdHdv
IGZvbGxvd2luZyBjYXNlcy4KCj4gMS4gU0ZMQVNIQ19CVVJTVF9DRkcgcmVnaXN0ZXIgaXMgbm90
IGF2YWlsYWJsZSBvbiBhbGwgaXBxIG5hbmQgcGxhdGZvcm1zLAo+ICAgIGl0IGlzIGF2YWlsYWJs
ZSBvbmx5IG9uIGlwcTgwNjQgZGV2aWNlcyBhbmQgdGhlIG5hbmQgY29udHJvbGxlciB3b3Jrcwo+
ICAgIHdpdGhvdXQgY29uZmlndXJpbmcgdGhlc2UgcmVnaXN0ZXJzIGluIHRoaXMgcGxhdGZvcm0s
IHNvIHJlZ2lzdGVyCj4gICAgd3JpdGUgdG8gdGhpcyBjYW4gYmUgcmVtb3ZlZC4KPiAKPiAyLiBP
bmNlIEJBTSBtb2RlIGlzIGVuYWJsZWQgcmVnaXN0ZXIgd3JpdGVzIHRvIE5BTkRfQ1RSTCBzaG91
bGQgYmUKPiAgICBwZXJmb3JtZWQgdGhyb3VnaCBCQU0gY29tbWFuZCBkZXNjcmlwdG9ycy4gVGhl
IE5BTkQgQkFNIG1vZGUgd2lsbAo+ICAgIGJlIGVuYWJsZWQgYnkgYm9vdGxvYWRlcnMuIENoZWNr
IGlmIEJBTSBtb2RlIGlzIGFscmVhZHkgZW5hYmxlZCBhbmQKPiAgICBlbmFibGUgaXQgb25seSBp
ZiBub3QgZW5hYmxlZCBhbHJlYWR5Lgo+IAoKSXQgbG9va3MgbGlrZSB0aGVyZSBhcmUgdHdvIGNv
bXBsZXRlbHkgZGlmZmVyZW50IGNoYW5nZXMgdGhhdCB5b3UgYXJlCmRvaW5nIGhlcmUsIHBsZWFz
ZSBzcGxpdC4KCkFsc28sIHBsZWFzZSBleHBsYWluIHdoeSAjMiBpcyBuZWVkZWQsIGl0IGlzIG5v
dCB2ZXJ5IGNsZWFyLgoKVGhhbmtzLApNaXF1w6hsCgo+IFNpZ25lZC1vZmYtYnk6IFNpdmFwcmFr
YXNoIE11cnVnZXNhbiA8c2l2YXByYWtAY29kZWF1cm9yYS5vcmc+Cj4gLS0tCj4gIGRyaXZlcnMv
bXRkL25hbmQvcmF3L3Fjb21fbmFuZGMuYyB8IDExICsrKysrKysrLS0tCj4gIDEgZmlsZSBjaGFu
Z2VkLCA4IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvbXRkL25hbmQvcmF3L3Fjb21fbmFuZGMuYyBiL2RyaXZlcnMvbXRkL25hbmQvcmF3L3Fj
b21fbmFuZGMuYwo+IGluZGV4IDViMTFjNzAuLjdiZmQ5M2EgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9tdGQvbmFuZC9yYXcvcWNvbV9uYW5kYy5jCj4gKysrIGIvZHJpdmVycy9tdGQvbmFuZC9yYXcv
cWNvbV9uYW5kYy5jCj4gQEAgLTM2LDcgKzM2LDYgQEAKPiAgI2RlZmluZQlOQU5EX0RFVl9DTUQx
CQkJMHhhNAo+ICAjZGVmaW5lCU5BTkRfREVWX0NNRDIJCQkweGE4Cj4gICNkZWZpbmUJTkFORF9E
RVZfQ01EX1ZMRAkJMHhhYwo+IC0jZGVmaW5lCVNGTEFTSENfQlVSU1RfQ0ZHCQkweGUwCj4gICNk
ZWZpbmUJTkFORF9FUkFTRURfQ1dfREVURUNUX0NGRwkweGU4Cj4gICNkZWZpbmUJTkFORF9FUkFT
RURfQ1dfREVURUNUX1NUQVRVUwkweGVjCj4gICNkZWZpbmUJTkFORF9FQkkyX0VDQ19CVUZfQ0ZH
CQkweGYwCj4gQEAgLTI3NzQsMTQgKzI3NzMsMjAgQEAgc3RhdGljIGludCBxY29tX25hbmRjX3Nl
dHVwKHN0cnVjdCBxY29tX25hbmRfY29udHJvbGxlciAqbmFuZGMpCj4gIAl1MzIgbmFuZF9jdHJs
Owo+ICAKPiAgCS8qIGtpbGwgb25lbmFuZCAqLwo+IC0JbmFuZGNfd3JpdGUobmFuZGMsIFNGTEFT
SENfQlVSU1RfQ0ZHLCAwKTsKPiAgCW5hbmRjX3dyaXRlKG5hbmRjLCBkZXZfY21kX3JlZ19hZGRy
KG5hbmRjLCBOQU5EX0RFVl9DTURfVkxEKSwKPiAgCQkgICAgTkFORF9ERVZfQ01EX1ZMRF9WQUwp
Owo+ICAKPiAgCS8qIGVuYWJsZSBBRE0gb3IgQkFNIERNQSAqLwo+ICAJaWYgKG5hbmRjLT5wcm9w
cy0+aXNfYmFtKSB7Cj4gIAkJbmFuZF9jdHJsID0gbmFuZGNfcmVhZChuYW5kYywgTkFORF9DVFJM
KTsKPiAtCQluYW5kY193cml0ZShuYW5kYywgTkFORF9DVFJMLCBuYW5kX2N0cmwgfCBCQU1fTU9E
RV9FTik7Cj4gKwkJLyogT25jZSBCQU1fTU9ERV9FTiBiaXQgaXMgc2V0LCB3cml0ZXMgdG8gdGhl
IE5BTkRfQ1RSTAo+ICsJCSAqIHNob3VsZCBiZSBkb25lIHRocm91Z2ggQkFNIGNvbW1hbmQgZGVz
Y3JpcHRvcnMuCj4gKwkJICogaW4gbW9zdCBjYXNlcyBib290bG9hZGVyIGVuYWJsZXMgdGhlIGJh
bSBtb2RlIHdlCj4gKwkJICogbmVlZCB0byBzZXQgdGhlIEJBTSBtb2RlIG9ubHkgaWYgaXQgaXMg
bm90IHNldCBieQo+ICsJCSAqIGJvb3Rsb2FkZXIKPiArCQkgKi8KPiArCQlpZiAoIShuYW5kX2N0
cmwgJiBCQU1fTU9ERV9FTikpCj4gKwkJCW5hbmRjX3dyaXRlKG5hbmRjLCBOQU5EX0NUUkwsIG5h
bmRfY3RybCB8IEJBTV9NT0RFX0VOKTsKPiAgCX0gZWxzZSB7Cj4gIAkJbmFuZGNfd3JpdGUobmFu
ZGMsIE5BTkRfRkxBU0hfQ0hJUF9TRUxFQ1QsIERNX0VOKTsKPiAgCX0KCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1
c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtbXRkLwo=
