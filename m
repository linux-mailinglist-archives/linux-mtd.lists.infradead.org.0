Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A37942F61
	for <lists+linux-mtd@lfdr.de>; Wed, 12 Jun 2019 20:54:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LbL3QU5RrNlK4y+QEAYu1jyWdq+0XMMRS70Ksvxkesc=; b=eLvZ+BdSdkdEfX
	ojVAFyV7PaQqtoQKoAE98XmXDfCkjKO/rLEN/KkPXmEIFbVMvSrtZb2G/iHzVmF5czUPcthEExoEY
	+Tm5KhBsuRTA8xVf271o+wBfy0lH9sCtwtYs06tfM/Rrm1d806gmu/EBUwBNY6SHOnYN5FgwX7gTv
	O6zzemH8BAywyXrH4ReTHl6ooEvrJVuW+k7V/r/8uiofrlmouPaUCobE7YAKVH2klQ7+/U8EnUMgr
	HBL+rYSW+H7x0UTA0bg5GF2ZTuvPrAFyb+RyMbCJW9MnGTc/B46qA+SZB9a43qzEC1/tfSUUMeUIg
	whaJI67GU7k+w3KpDj/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb8Nu-0004Lz-M8; Wed, 12 Jun 2019 18:54:10 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb8Nl-0004La-8z
 for linux-mtd@lists.infradead.org; Wed, 12 Jun 2019 18:54:02 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 0C9BE6074CF1;
 Wed, 12 Jun 2019 20:53:59 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id QYgeiFNA1T5S; Wed, 12 Jun 2019 20:53:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id CA8276083252;
 Wed, 12 Jun 2019 20:53:57 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 45nbyrztWEzS; Wed, 12 Jun 2019 20:53:57 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id A1A3D608F44E;
 Wed, 12 Jun 2019 20:53:57 +0200 (CEST)
Date: Wed, 12 Jun 2019 20:53:57 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <1642440141.89874.1560365637583.JavaMail.zimbra@nod.at>
In-Reply-To: <20190612152120.GA17450@kroah.com>
References: <20190612152120.GA17450@kroah.com>
Subject: Re: [PATCH] ubifs: no need to check return value of debugfs_create
 functions
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.8_GA_3025 (ZimbraWebClient - FF60 (Linux)/8.8.8_GA_1703)
Thread-Topic: ubifs: no need to check return value of debugfs_create functions
Thread-Index: 2vzYLmsTVZePtMXmg2es/qF7WMpFYQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_115401_459165_CE6CA46D 
X-CRM114-Status: UNSURE (   5.65  )
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
 Adrian Hunter <adrian.hunter@intel.com>,
 Artem Bityutskiy <dedekind1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

R3JlZywKCi0tLS0tIFVyc3Byw7xuZ2xpY2hlIE1haWwgLS0tLS0KPiBWb246ICJHcmVnIEtyb2Fo
LUhhcnRtYW4iIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4KPiBBbjogInJpY2hhcmQiIDxy
aWNoYXJkQG5vZC5hdD4sICJBcnRlbSBCaXR5dXRza2l5IiA8ZGVkZWtpbmQxQGdtYWlsLmNvbT4s
ICJBZHJpYW4gSHVudGVyIiA8YWRyaWFuLmh1bnRlckBpbnRlbC5jb20+Cj4gQ0M6ICJsaW51eC1t
dGQiIDxsaW51eC1tdGRAbGlzdHMuaW5mcmFkZWFkLm9yZz4KPiBHZXNlbmRldDogTWl0dHdvY2gs
IDEyLiBKdW5pIDIwMTkgMTc6MjE6MjAKPiBCZXRyZWZmOiBbUEFUQ0hdIHViaWZzOiBubyBuZWVk
IHRvIGNoZWNrIHJldHVybiB2YWx1ZSBvZiBkZWJ1Z2ZzX2NyZWF0ZSBmdW5jdGlvbnMKCj4gV2hl
biBjYWxsaW5nIGRlYnVnZnMgZnVuY3Rpb25zLCB0aGVyZSBpcyBubyBuZWVkIHRvIGV2ZXIgY2hl
Y2sgdGhlCj4gcmV0dXJuIHZhbHVlLiAgVGhlIGZ1bmN0aW9uIGNhbiB3b3JrIG9yIG5vdCwgYnV0
IHRoZSBjb2RlIGxvZ2ljIHNob3VsZAo+IG5ldmVyIGRvIHNvbWV0aGluZyBkaWZmZXJlbnQgYmFz
ZWQgb24gdGhpcy4KCndoeSBpcyBpdCBiYWQgaWYgd2UgaGFuZGxlIGVycm9ycyBmcm9tIGRlYnVn
ZnM/CkF0IGxlYXN0IGEgbmljZSBsb2cgbWVzc2FnZSBhIGxhICJzb3JyeSwgbm8gdWJpZnMgZGVi
dWdpbmcgZm9yIHlvdSIKd291bGQgYmUgbmljZSB0byBoYXZlLgoKVGhhbmtzLAovL3JpY2hhcmQK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
