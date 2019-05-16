Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A228F20B4D
	for <lists+linux-mtd@lfdr.de>; Thu, 16 May 2019 17:31:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0y0uad40vXvtZ51jwAtGQUPLv89hXw6/w4HObgA+d4g=; b=kP3rb4mBo/v8vH
	32oRgTVXiCBtog8JDqTf5nLP11sCXE4RJH2SV5NrVORX0xKtnAmhhZ9VbnnnTuKxsz+GTJGMhfOqM
	oDeEJvXnAT7gAW+DowOmotunKJ7twxdvHhd8voX2MEA1xHq0QdFGpV3T7pJz6ijn1zceRlaom8p4G
	taLmzZUemp/IC2F5GDhm5szaS3JvueU4TVtuQTHQJ7pjt7NsvL97/6szeUKPWhCgKdY/xo1mAVNeK
	5bMheNY22/xMVZZjzNf8ZAUWu1eEY50T7tv561SIWIj+fqF6FkWRu2tsBcSafyj1D1/udrRda9+jg
	jcyWVQwDcpbz8I0rV3jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRIMN-0005iT-Tk; Thu, 16 May 2019 15:31:55 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRIMB-0005cO-01
 for linux-mtd@lists.infradead.org; Thu, 16 May 2019 15:31:44 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id D459F6083252;
 Thu, 16 May 2019 17:31:40 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id yR2y1RGS5PYa; Thu, 16 May 2019 17:31:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id C41EA608325E;
 Thu, 16 May 2019 17:31:39 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id N9F9A20Mf3cD; Thu, 16 May 2019 17:31:39 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 943AD6083252;
 Thu, 16 May 2019 17:31:39 +0200 (CEST)
Date: Thu, 16 May 2019 17:31:39 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: Brandon Maier <brandon.maier@collins.com>
Message-ID: <538011502.61455.1558020699516.JavaMail.zimbra@nod.at>
In-Reply-To: <CA+fik51C43hnuWNFYFfzxivMVFrMZ9hN=jsLbQOWb9qcm0fAxQ@mail.gmail.com>
References: <1556914418-40288-1-git-send-email-clayton.shotwell@rockwellcollins.com>
 <1556914418-40288-2-git-send-email-clayton.shotwell@rockwellcollins.com>
 <CAFLxGvxgQb1iCTdHbFWz6VmMU1mjnGOadkHtLvA68Jaa0BS=bg@mail.gmail.com>
 <CAFLxGvxoO7mMdH5dMKgqzz49qq-M49jSPi5SpmnA1RScgBmj5w@mail.gmail.com>
 <CA+fik51C43hnuWNFYFfzxivMVFrMZ9hN=jsLbQOWb9qcm0fAxQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] jffs2: Add sync to underlying mtd device when file
 system is synced
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.8_GA_3025 (ZimbraWebClient - FF60 (Linux)/8.8.8_GA_1703)
Thread-Topic: jffs2: Add sync to underlying mtd device when file system is
 synced
Thread-Index: DGlIYNXGANEdrWEqf/v+shvAI91Fsw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_083143_231103_228C1CDA 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: Boris Brezillon <bbrezillon@kernel.org>,
 Marek Vasut <marek.vasut@gmail.com>, linux-mtd <linux-mtd@lists.infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>,
 Clayton Shotwell <clayton.shotwell@rockwellcollins.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFZvbjogIkJyYW5kb24gTWFpZXIiIDxi
cmFuZG9uLm1haWVyQGNvbGxpbnMuY29tPgo+IEFuOiAiUmljaGFyZCBXZWluYmVyZ2VyIiA8cmlj
aGFyZC53ZWluYmVyZ2VyQGdtYWlsLmNvbT4KPiBDQzogIkNsYXl0b24gU2hvdHdlbGwiIDxjbGF5
dG9uLnNob3R3ZWxsQHJvY2t3ZWxsY29sbGlucy5jb20+LCAibGludXgtbXRkIiA8bGludXgtbXRk
QGxpc3RzLmluZnJhZGVhZC5vcmc+LCAiQm9yaXMKPiBCcmV6aWxsb24iIDxiYnJlemlsbG9uQGtl
cm5lbC5vcmc+LCAicmljaGFyZCIgPHJpY2hhcmRAbm9kLmF0PiwgIk1hcmVrIFZhc3V0IiA8bWFy
ZWsudmFzdXRAZ21haWwuY29tPiwgIkJyaWFuIE5vcnJpcyIKPiA8Y29tcHV0ZXJzZm9ycGVhY2VA
Z21haWwuY29tPiwgIkRhdmlkIFdvb2Rob3VzZSIgPGR3bXcyQGluZnJhZGVhZC5vcmc+Cj4gR2Vz
ZW5kZXQ6IERvbm5lcnN0YWcsIDE2LiBNYWkgMjAxOSAxNzoxMjo0NQo+IEJldHJlZmY6IFJlOiBb
UEFUQ0ggMi8yXSBqZmZzMjogQWRkIHN5bmMgdG8gdW5kZXJseWluZyBtdGQgZGV2aWNlIHdoZW4g
ZmlsZSBzeXN0ZW0gaXMgc3luY2VkCgo+IENsYXl0b24gaXMgb3V0IGN1cnJlbnRseSwgYnV0IEkg
Y2FuIGNvbW1lbnQgb24gd2hhdCBoZSBoYWQgdG9sZCBtZS4KClRoYW5rcyEKIAo+IE9uIFRodSwg
TWF5IDE2LCAyMDE5IGF0IDY6MDUgQU0gUmljaGFyZCBXZWluYmVyZ2VyCj4+ID4gUGxlYXNlIGV4
cGxhaW4gd2hhdCBmYWlsdXJlIHlvdSBhcmUgZmFjaW5nIHdpdGhvdXQgbXRkX3N5bmMoKS4KPj4g
PiBqZmZzMiBpcyBzdXBwb3NlZCB0byByZWNvdmVyIGZyb20gYSBwb3dlciBmYWlsdXJlIGF0IGFu
eSB0aW1lLCBqdXN0IGxpa2UgdWJpZnMuCj4gCj4gVGhlIHN5c3RlbSBleGhpYml0aW5nIHByb2Js
ZW1zIHJ1bnMgamZmczIgb24gYSBnbHVlYmkgZGV2aWNlLiBPdXIKPiBzb2Z0d2FyZSBzeW5jKCkn
cyB0aGUgamZmczIgYXQgY2VydGFpbiBwb2ludHMgc28gdGhhdCBpdCdzIHNhZmUgaWYKPiBwb3dl
ciBpcyBjdXQuIFRoZSBqZmZzMiBhbHdheXMgcmVjb3ZlcnMgdGhlIGZpbGVzeXN0ZW0gYWZ0ZXIg
cG93ZXIKPiBjdXQsIGJ1dCBzb21ldGltZXMgZGF0YSB3cml0dGVuIGJlZm9yZSB0aGUgc3luYygp
IGNhbGwgZ2V0cyBsb3N0Lgo+IAo+IFRoZXNlIHBhdGNoZXMgYXR0ZW1wdCB0byBzb2x2ZSB0aGlz
IHByb2JsZW0gYnkgMSkgY2FsbGluZyBfc3luYygpIG9uCj4gdGhlIHVuZGVybHlpbmcgbXRkIGRl
dmljZSBhZnRlciB3cml0aW5nIHRvIGZsdXNoIGFueSBidWZmZXJzIGluIHRoZQo+IG10ZCwgYW5k
IDIpIGFkZGluZyBhIF9zeW5jKCkgY2FsbGJhY2sgdG8gZ2x1ZWJpIHNvIHRoYXQgaWYgc29tZXRo
aW5nCj4gc3luY3MgdGhlIG10ZCBkZXZpY2UsIHdlIHN5bmMgYW55IGJsb2NrcyBhc3NvY2lhdGVk
IHdpdGggaXQuCgpUaGUgaW50ZXJlc3RpbmcgcXVlc3Rpb24gaXMsIGRvIHlvdSBsb29zZSBkYXRh
IHdoaWNoIHdhcyBhbHJlYWR5CndyaXR0ZW4gYW5kIHN5bmNlZCB1c2luZyBmc3luYygpIG9yIGZk
YXRhc3luYygpPwoKQm90aCBKRkZTMiBhbmQgVUJJRlMgdHJ5IHRvIGF2b2lkIHdyaXRlcyBhbmQg
YXJlIHJhdGhlciBzdHJpY3Qgd2hlbiBpdApjb21lcyB0byBmc3luYygpLgoKVGhhbmtzLAovL3Jp
Y2hhcmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
