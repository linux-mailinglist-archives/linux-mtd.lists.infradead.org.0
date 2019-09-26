Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95756BF204
	for <lists+linux-mtd@lfdr.de>; Thu, 26 Sep 2019 13:44:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0k75CE365pF+C/Rw+DQJyjByNnAYeYbmiYtmEYRs4Fo=; b=KZD78cOo/6KyB3
	cmkoebON5hiwCjswGc+8SyLuHgcnbxLA3YH6NQrfUDIjeoGNdYunKEcggY1sf796MjjApQEh0bfgB
	9mBqvOo9pnBJml/lY9htB9vXEh4ad9yZFOyV5M9Fx6IxsvMbckl5urG3OGTGKjHvLXxD3MmIFsDRw
	BiX9WrQnqROTlZ5eWmbh0rtN0dtS1TYVFrPzxSfygw6h0xjj8dLehC82sAo6SXJrjcrju83Kc1cad
	mfpV3AFu665dQNeXL7/SH7gDOlka5xASYWBhjtBIBcbYBUoXOjayad8C47ecZ5qJTOzoE85TLxyDz
	Io6qxrfererDtTEhhl7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDSCA-0006Lr-KS; Thu, 26 Sep 2019 11:44:26 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDSC3-0006LJ-Cj
 for linux-mtd@lists.infradead.org; Thu, 26 Sep 2019 11:44:21 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 3A254609D2CF;
 Thu, 26 Sep 2019 13:44:15 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id ReKmIO0lyASL; Thu, 26 Sep 2019 13:44:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id B694A609D2D9;
 Thu, 26 Sep 2019 13:44:14 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 4iGv9MrEF_UT; Thu, 26 Sep 2019 13:44:14 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 56AC5609D2CF;
 Thu, 26 Sep 2019 13:44:14 +0200 (CEST)
Date: Thu, 26 Sep 2019 13:44:14 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: Alexander Dahl <ada@thorsis.com>
Message-ID: <242144136.6776.1569498254158.JavaMail.zimbra@nod.at>
In-Reply-To: <1846895.TZtMPCjSJF@ada>
References: <20190725203442.29795-1-richard@nod.at> <1846895.TZtMPCjSJF@ada>
Subject: Re: [PATCH] ubi-utils: Implement a ubihealthd
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF60 (Linux)/8.8.12_GA_3809)
Thread-Topic: ubi-utils: Implement a ubihealthd
Thread-Index: OpUnHH8SFSKv2ahE7f7l+nWIcbh8Ww==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_044419_583809_426F8688 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-mtd <linux-mtd@lists.infradead.org>,
 david oberhollenzer <david.oberhollenzer@sigma-star.at>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

QWxleCwKCi0tLS0tIFVyc3Byw7xuZ2xpY2hlIE1haWwgLS0tLS0KPiBWb246ICJBbGV4YW5kZXIg
RGFobCIgPGFkYUB0aG9yc2lzLmNvbT4KPiBXaGF0IGlzIGl0IGV4YWN0bHksIHdoaWNoIHJlcXVp
cmVzIHN1Y2ggYSBuZXcgTGludXggS2VybmVsPyBUaGUgbGF0ZXN0IExUUyBpcwo+IHN0aWxsIHY0
LjE5IOKApiA7LSkKClRoZSBuZXcgVUJJIG1hY2hpbmVyeSB3aGljaCBhbGxvd3MgdXNlcnNwYWNl
IHRvIGNvbnRyb2wgc2NydWJiaW5nIHdhcyBhZGRlZCBpbiA1LjIuCgpbLi5dCgo+PiArCXNyYW5k
KHNlZWQpOwo+PiArfQo+IAo+IElzIGl0IHJlYWxseSBuZWNlc3NhcnkgdG8gc2VlZCB3aXRoIGdl
dHJhbmRvbSgpIGZvciBqdXN0IHJhbmRvbWl6aW5nIGEgbGlzdCBvZgo+IFBFQnM/IEkga25vdyB0
aGlzIGlzIGVtYmVkZGVkLCBhbmQgc2VlZGluZyB3aXRoIHRoZSBzYW1lIHRpbWUgb24gZWFjaCBi
b290Cj4gKHRob3NlIGRldmljZXMgYWx3YXlzIHN0YXJ0IDE5NzAgOy0pICkgbWlnaHQgYmUgYSBi
YWQgaWRlYSBmb3IgY3J5cHRvLCBidXQgZm9yCj4ganVzdCBzaHVmZmxpbmcgYSBQRUIgbGlzdCB0
byBzcHJlYWQgdGhvc2UgdGVzdHMgcmFuZG9tbHk/CgpZZXMuIFRoZSBsaXN0IHJlYWxseSBuZWVk
cyB0byBiZSBzaHVmZmxlZC4KCkJlZm9yZSBnZXRyYW5kb20oKSB3ZSB1c2VkIHRpbWUoKSBhbmQg
ZmFjZWQgZXhhY3RseSB0aGUgY2FzZSB3aGVyZSBjdXN0b21lciBib2FyZHMKYWx3YXlzIHN0YXJ0
ZWQgd2l0aCB0aGUgc2FtZSBwZXJtdXRhdGlvbiBiZWNhdXNlIHRoZXkgaGFkIG5vIFJUQy4KCklm
IHlvdSBkb24ndCBzaHVmZmxlIHRoZSBsaXN0IHlvdSBjYW5ub3QgaGF2ZSB0aGUgZGFlbW9uIHN0
YXRlbGVzcy4KCkZvciBleGFtcGxlLCBpZiB0aGUgYm9hcmQgcmVib290cyBvbmNlIGEgZGF5IGFu
ZCBjb21wbGV0aW5nIHRoZSBQRUIgbGlzdApuZWVkcyBhIHdlZWsgeW91IHdpbGwgYWx3YXlzIGNo
ZWNrIHRoZSBzYW1lIFBFQnMgYW5kIG1pc3MgdGhlIHNhbWUgb25lcy4KIAo+IEknZCByZWFsbHkg
bGlrZSB0byB0ZXN0IHRoaXMgZGFlbW9uLCBidXQgYWxzbyBmb3Igb2xkZXIgc3lzdGVtcyBub3Qg
cnVubmluZwo+IGJsZWVkaW5nIGVkZ2UgQlNQcy4gV291bGQgeW91IGFjY2VwdCBwYXRjaGVzIHRv
IG1ha2UgaXQgd29yayB3aXRoIGxldCdzIHNheQo+IGtlcm5lbCB2NC45IGFuZCBnbGliYyB2Mi4y
MCDigKYgTzotKQoKV2VsbCwgeW91IG5lZWQgdG8gYmFja3BvcnQgdGhlIFVCSSBjaGFuZ2VzIGFu
eXdheS4KQnV0IHBhdGNoZXMgdG8gbWFrZSBpdCB3b3JrIG9uIG90aGVyL29sZGVyIGxpYmNzIGFy
ZSBoYXBwaWx5IGFjY2VwdGVkCmlmIHRoZXkgYXJlIHNhbmUuIDotKQoKVGhhbmtzLAovL3JpY2hh
cmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
