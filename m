Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB4641BA572
	for <lists+linux-mtd@lfdr.de>; Mon, 27 Apr 2020 15:53:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i2t8YORCJaqtif43DORFvb3+PyxA/FcL51AmMbGumHA=; b=V9bmnszSI7ayPB
	P8FcnrfXrTGk/Vx0EN6oKRJS+FinbC3uTgA3UQKCZgvu7puN9m9N7KLBrRVmmjM7jpXJod1B5KkfN
	yreCWRuaoluvACcrHE25bLqJC6yRZUAEhbS98sfDE0kOkVPfwqp3pQWshX4jA4AgJre0olzdxlIOy
	mRAbs4lqvXq8GQRne+Q1vxxIm0eP0qZoRnAuTX7xlTNHrMPp0/V/TtisfTcD2yVPC3TC5UVZRLj6y
	pMF3SshGWGZDlE/oj71ZmPlGQG6JjmZAWEKL4jdxMCqWrrkQR0PztONqzJVg5Jq7+xom5rpgCnhkP
	J1ungjsYB0QjxzYUrwbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT4CT-0004X4-AE; Mon, 27 Apr 2020 13:53:33 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT4CE-0004V2-F5
 for linux-mtd@lists.infradead.org; Mon, 27 Apr 2020 13:53:20 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id F2974C0005;
 Mon, 27 Apr 2020 13:53:14 +0000 (UTC)
Date: Mon, 27 Apr 2020 15:53:13 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Jason Yan <yanaijie@huawei.com>
Subject: Re: [PATCH] mtd: physmap_of_gemini: remove defined but not used
 symbol 'syscon_match'
Message-ID: <20200427155313.43847da8@xps13>
In-Reply-To: <20200403081544.37061-1-yanaijie@huawei.com>
References: <20200403081544.37061-1-yanaijie@huawei.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_065318_634290_E5A4DD22 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
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
Cc: richard@nod.at, tglx@linutronix.de, linux-mtd@lists.infradead.org,
 vigneshr@ti.com, Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgSmFzb24sCgorIExpbnVzIFcuCgpKYXNvbiBZYW4gPHlhbmFpamllQGh1YXdlaS5jb20+IHdy
b3RlIG9uIEZyaSwgMyBBcHIgMjAyMCAxNjoxNTo0NCArMDgwMDoKCj4gSXQncyBub3QgdXNlZCBi
eSBhbnlvbmUgbm93LCByZW1vdmUgaXQuIEZpeCB0aGUgZm9sbG93aW5nIGdjYyB3YXJuaW5nOgo+
IAo+IGRyaXZlcnMvbXRkL21hcHMvcGh5c21hcC1nZW1pbmkuYzo0OTozNDogd2FybmluZzog4oCY
c3lzY29uX21hdGNo4oCZIGRlZmluZWQKPiBidXQgbm90IHVzZWQgWy1XdW51c2VkLWNvbnN0LXZh
cmlhYmxlPV0KPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgc3lzY29uX21hdGNo
W10gPSB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fgo+
IAo+IFJlcG9ydGVkLWJ5OiBIdWxrIFJvYm90IDxodWxrY2lAaHVhd2VpLmNvbT4KPiBTaWduZWQt
b2ZmLWJ5OiBKYXNvbiBZYW4gPHlhbmFpamllQGh1YXdlaS5jb20+Cj4gLS0tCgpJIGFtIG5vdCBz
dXJlIHRoaXMgaXMgdGhlIHJpZ2h0IHNvbHV0aW9uLiBUaGlzIGNvbXBhdGlibGUgaGFzIGJlZW4K
YWRkZWQgaW4gdGhpcyBkcml2ZXIgYnkgTGludXMgaW4gOWQzYjUwODZmNmQ0ICgibXRkOiBwaHlz
bWFwX29mX2dlbWluaToKSGFuZGxlIHBpbiBjb250cm9sIikuIEkgYmVsaWV2ZSBoZSBoYWQgYSBn
b29kIHJlYXNvbiB0byBkbyBzbyBidXQgeW91CmFyZSByaWdodCB0aGF0IGl0IGlzIG5vdCB1c2Vk
LiBMaW51cywgYW55IGlucHV0PwoKPiAgZHJpdmVycy9tdGQvbWFwcy9waHlzbWFwLWdlbWluaS5j
IHwgNSAtLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9tdGQvbWFwcy9waHlzbWFwLWdlbWluaS5jIGIvZHJpdmVycy9tdGQvbWFw
cy9waHlzbWFwLWdlbWluaS5jCj4gaW5kZXggYTI4OWM4YjVjYWJmLi5kNGE0NmUxNTlkMzggMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9tdGQvbWFwcy9waHlzbWFwLWdlbWluaS5jCj4gKysrIGIvZHJp
dmVycy9tdGQvbWFwcy9waHlzbWFwLWdlbWluaS5jCj4gQEAgLTQ2LDExICs0Niw2IEBACj4gIAo+
ICAjZGVmaW5lIEZMQVNIX1BBUkFMTEVMX0hJR0hfUElOX0NOVAkoMSA8PCAyMCkJLyogZWxzZSBs
b3cgcGluIGNudCAqLwo+ICAKPiAtc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgc3lz
Y29uX21hdGNoW10gPSB7Cj4gLQl7IC5jb21wYXRpYmxlID0gImNvcnRpbmEsZ2VtaW5pLXN5c2Nv
biIgfSwKPiAtCXsgfSwKPiAtfTsKPiAtCj4gIHN0cnVjdCBnZW1pbmlfZmxhc2ggewo+ICAJc3Ry
dWN0IGRldmljZSAqZGV2Owo+ICAJc3RydWN0IHBpbmN0cmwgKnA7CgpUaGFua3MsCk1pcXXDqGwK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
