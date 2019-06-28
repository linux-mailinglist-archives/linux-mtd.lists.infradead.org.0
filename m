Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB135947B
	for <lists+linux-mtd@lfdr.de>; Fri, 28 Jun 2019 08:56:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kZdwG5xHKU6Z8YP3SdUon+9i6kCRFqLRgNA2uOyZ5Lg=; b=tbf204mHgk+yiS
	QJcpiZR2tGgaC7rSVPSdLvVEx8OiRDJ/LUldO4wEN+ocyy68SCoYkigYFq1M7zdeHngZ4IrIfT5XR
	reymiX77Hf5C1MzIhp1VnS74oDh+266QTAS+O9QjDW5e6+S2hwkLAfzUoHeSFePp6YPDR6TNx5Ivq
	IkgHExfUtnhgTpotoPz06J18Tbcg2L55oA8MNE1FqDG3G21J6/wQpUk6pmaG9ekTUmoMl2LtWkzxg
	JrShRFfrl6/v6p2nMhV8nxhWS/b0Tsmmn8ScSlg1ZzFmY0G/n4vGaZCfss+iVtNql4071BrCl2+/U
	9lyqt9aX25+jcU5xrjOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgkoX-0005y2-BH; Fri, 28 Jun 2019 06:56:53 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgkoM-0005xd-Mq
 for linux-mtd@lists.infradead.org; Fri, 28 Jun 2019 06:56:44 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 7C8296089331;
 Fri, 28 Jun 2019 08:56:41 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id CklqlVsz2Y-i; Fri, 28 Jun 2019 08:56:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 2CA096089332;
 Fri, 28 Jun 2019 08:56:41 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id KBjp4V1tNdXd; Fri, 28 Jun 2019 08:56:41 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 00C1F6089331;
 Fri, 28 Jun 2019 08:56:40 +0200 (CEST)
Date: Fri, 28 Jun 2019 08:56:40 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: Fuqian Huang <huangfq.daxian@gmail.com>
Message-ID: <1264454795.19263.1561705000880.JavaMail.zimbra@nod.at>
In-Reply-To: <20190627174101.4291-1-huangfq.daxian@gmail.com>
References: <20190627174101.4291-1-huangfq.daxian@gmail.com>
Subject: Re: [PATCH 44/87] fs: jffs2: replace kmalloc and memset with kzalloc
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF60 (Linux)/8.8.12_GA_3809)
Thread-Topic: jffs2: replace kmalloc and memset with kzalloc
Thread-Index: /mS+4pTDjR7Av4sfrwGnQFfj/xIdQQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_235642_894484_D255CE54 
X-CRM114-Status: UNSURE (   9.38  )
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
 David Woodhouse <dwmw2@infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFZvbjogIkZ1cWlhbiBIdWFuZyIgPGh1
YW5nZnEuZGF4aWFuQGdtYWlsLmNvbT4KPiBDQzogIkZ1cWlhbiBIdWFuZyIgPGh1YW5nZnEuZGF4
aWFuQGdtYWlsLmNvbT4sICJEYXZpZCBXb29kaG91c2UiIDxkd213MkBpbmZyYWRlYWQub3JnPiwg
InJpY2hhcmQiIDxyaWNoYXJkQG5vZC5hdD4sCj4gImxpbnV4LW10ZCIgPGxpbnV4LW10ZEBsaXN0
cy5pbmZyYWRlYWQub3JnPiwgImxpbnV4LWtlcm5lbCIgPGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5l
bC5vcmc+Cj4gR2VzZW5kZXQ6IERvbm5lcnN0YWcsIDI3LiBKdW5pIDIwMTkgMTk6NDE6MDAKPiBC
ZXRyZWZmOiBbUEFUQ0ggNDQvODddIGZzOiBqZmZzMjogcmVwbGFjZSBrbWFsbG9jIGFuZCBtZW1z
ZXQgd2l0aCBremFsbG9jCgo+IGttYWxsb2MgKyBtZW1zZXQoMCkgLT4ga3phbGxvYwo+IAo+IFNp
Z25lZC1vZmYtYnk6IEZ1cWlhbiBIdWFuZyA8aHVhbmdmcS5kYXhpYW5AZ21haWwuY29tPgo+IC0t
LQo+IGZzL2pmZnMyL2VyYXNlLmMgfCA0ICstLS0KPiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2ZzL2pmZnMyL2VyYXNlLmMg
Yi9mcy9qZmZzMi9lcmFzZS5jCj4gaW5kZXggODNiOGYwNmI0YTY0Li4zMGM0Mzg1YzY1NDUgMTAw
NjQ0Cj4gLS0tIGEvZnMvamZmczIvZXJhc2UuYwo+ICsrKyBiL2ZzL2pmZnMyL2VyYXNlLmMKPiBA
QCAtNDMsNyArNDMsNyBAQCBzdGF0aWMgdm9pZCBqZmZzMl9lcmFzZV9ibG9jayhzdHJ1Y3QgamZm
czJfc2JfaW5mbyAqYywKPiAJamZmczJfZGJnKDEsICIlcygpOiBlcmFzZSBibG9jayAlIzA4eCAo
cmFuZ2UgJSMwOHgtJSMwOHgpXG4iLAo+IAkJICBfX2Z1bmNfXywKPiAJCSAgamViLT5vZmZzZXQs
IGplYi0+b2Zmc2V0LCBqZWItPm9mZnNldCArIGMtPnNlY3Rvcl9zaXplKTsKPiAtCWluc3RyID0g
a21hbGxvYyhzaXplb2Yoc3RydWN0IGVyYXNlX2luZm8pLCBHRlBfS0VSTkVMKTsKPiArCWluc3Ry
ID0ga3phbGxvYyhzaXplb2Yoc3RydWN0IGVyYXNlX2luZm8pLCBHRlBfS0VSTkVMKTsKPiAJaWYg
KCFpbnN0cikgewo+IAkJcHJfd2Fybigia21hbGxvYyBmb3Igc3RydWN0IGVyYXNlX2luZm8gaW4g
amZmczJfZXJhc2VfYmxvY2sgZmFpbGVkLiBSZWZpbGluZwo+IAkJYmxvY2sgZm9yIGxhdGVyXG4i
KTsKCllvdSBtaXNzZWQgdGhpcyAia21hbGxvYyIgaW5zdGFuY2UuIDotRAoKPiAJCW11dGV4X2xv
Y2soJmMtPmVyYXNlX2ZyZWVfc2VtKTsKPiBAQCAtNTcsOCArNTcsNiBAQCBzdGF0aWMgdm9pZCBq
ZmZzMl9lcmFzZV9ibG9jayhzdHJ1Y3QgamZmczJfc2JfaW5mbyAqYywKPiAJCXJldHVybjsKPiAJ
fQo+IAo+IC0JbWVtc2V0KGluc3RyLCAwLCBzaXplb2YoKmluc3RyKSk7Cj4gLQo+IAlpbnN0ci0+
YWRkciA9IGplYi0+b2Zmc2V0Owo+IAlpbnN0ci0+bGVuID0gYy0+c2VjdG9yX3NpemU7CgpUaGFu
a3MsCi8vcmljaGFyZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
