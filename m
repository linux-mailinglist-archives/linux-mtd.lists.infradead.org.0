Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF991CE113
	for <lists+linux-mtd@lfdr.de>; Mon, 11 May 2020 19:02:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UdlmZkSJ/M9APFsu2O2/DFJ/0csPOaiRHAfZ99T0EHo=; b=OrYL2BTgKxD2M6
	TOVyqvNQmZup7aM14sWUOx5EjWVD6r+CSFnbR7BHdcmNEtPsiKWI5+2AwgJB1hRvPsNtWur7b1UGx
	aZPQHsQNNqwW6deWHItAi688pzaVD1mOhg5aasGdMJDhHyrhmtJ1W/jEXTxhsrjHHgSUay7UWQIvD
	adOZTAnQ6pGfNEb80SZaaJ+HcMEyPa28Q5mgw3BlXUmcZ7HQ6LqaBW1cOBuQ/yA+riVWyTkF+Ubcy
	shkZeXaEy9pEFSlxXrR40WQ9ww2ATazLiz+IfysPW55gbS2q1yUVziknVBAz+1v9F6bkKrvq2ATrG
	IlQQhnHYvY8yn77SSKeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYBoe-00020d-Dn; Mon, 11 May 2020 17:02:08 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYBoW-00020D-Fq
 for linux-mtd@lists.infradead.org; Mon, 11 May 2020 17:02:01 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 6C91EC0008;
 Mon, 11 May 2020 17:01:57 +0000 (UTC)
Date: Mon, 11 May 2020 19:01:56 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: =?UTF-8?B?w4FsdmFybyBGZXJuw6FuZGV6?= Rojas <noltari@gmail.com>
Subject: Re: [PATCH 2/3] nand: brcmnand: fix CS0 layout
Message-ID: <20200511190156.51dcc316@xps13>
In-Reply-To: <20200510151406.2527856-2-noltari@gmail.com>
References: <20200510151406.2527856-1-noltari@gmail.com>
 <20200510151406.2527856-2-noltari@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_100200_662460_7122050D 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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
Cc: vigneshr@ti.com, kdasu.kdev@gmail.com, richard@nod.at,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-mtd@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com, computersforpeace@gmail.com,
 sumit.semwal@linaro.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgw4FsdmFybywKCsOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+
IHdyb3RlIG9uIFN1biwgMTAgTWF5IDIwMjAKMTc6MTQ6MDUgKzAyMDA6Cgo+IE9ubHkgdjMuMy12
NS4wIGhhdmUgYSBkaWZmZXJlbnQgQ1MwIGxheW91dC4KPiB2My4zLSBjb250cm9sbGVycyB1c2Ug
dGhlIHNhbWUgbGF5b3V0IGZvciBldmVyeSBDUy4KCkkgaGFkIGEgaGFyZCB0aW1lIHdoYXQgeW91
IG1lYW50IGhlcmUsIGp1c3QgYmVjYXVzZSBvZiB0aGUgdHJhaWxpbmcKZGFzaC4gCgogICAgIkNv
bnRyb2xsZXJzIGJlZm9yZSB2My4zLi4uIgoKd291bGQgYmUgbW9yZSB1bmRlcnN0YW5kYWJsZS4K
CkFsc28gcGxlYXNlIGFkZCBhIEZpeGVzL0NjOiBzdGFibGUgdGFnIGhlcmUuCgo+IAo+IFNpZ25l
ZC1vZmYtYnk6IMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+Cj4g
LS0tCj4gIGRyaXZlcnMvbXRkL25hbmQvcmF3L2JyY21uYW5kL2JyY21uYW5kLmMgfCA1ICsrKy0t
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbXRkL25hbmQvcmF3L2JyY21uYW5kL2JyY21uYW5kLmMgYi9k
cml2ZXJzL210ZC9uYW5kL3Jhdy9icmNtbmFuZC9icmNtbmFuZC5jCj4gaW5kZXggNmEwOGRkMDdi
MDU4Li43MmIyNjhkOGUzYTQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tdGQvbmFuZC9yYXcvYnJj
bW5hbmQvYnJjbW5hbmQuYwo+ICsrKyBiL2RyaXZlcnMvbXRkL25hbmQvcmF3L2JyY21uYW5kL2Jy
Y21uYW5kLmMKPiBAQCAtNjA2LDggKzYwNiw5IEBAIHN0YXRpYyBpbnQgYnJjbW5hbmRfcmV2aXNp
b25faW5pdChzdHJ1Y3QgYnJjbW5hbmRfY29udHJvbGxlciAqY3RybCkKPiAgCX0gZWxzZSB7Cj4g
IAkJY3RybC0+Y3Nfb2Zmc2V0cyA9IGJyY21uYW5kX2NzX29mZnNldHM7Cj4gIAo+IC0JCS8qIHY1
LjAgYW5kIGVhcmxpZXIgaGFzIGEgZGlmZmVyZW50IENTMCBvZmZzZXQgbGF5b3V0ICovCj4gLQkJ
aWYgKGN0cmwtPm5hbmRfdmVyc2lvbiA8PSAweDA1MDApCj4gKwkJLyogdjMuMy01LjAgaGF2ZSBh
IGRpZmZlcmVudCBDUzAgb2Zmc2V0IGxheW91dCAqLwo+ICsJCWlmIChjdHJsLT5uYW5kX3ZlcnNp
b24gPj0gMHgwMzAzICYmCj4gKwkJICAgIGN0cmwtPm5hbmRfdmVyc2lvbiA8PSAweDA1MDApCj4g
IAkJCWN0cmwtPmNzMF9vZmZzZXRzID0gYnJjbW5hbmRfY3Nfb2Zmc2V0c19jczA7Cj4gIAl9Cj4g
IAoKClRoYW5rcywKTWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
