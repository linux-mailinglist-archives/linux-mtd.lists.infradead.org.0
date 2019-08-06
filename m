Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80BBE83400
	for <lists+linux-mtd@lfdr.de>; Tue,  6 Aug 2019 16:32:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eiBbsaEwrDJI8bELSo9VeILOypffxphE6E2fgP5gwDA=; b=gnjq561F5jGk7s
	5E3nu/0JF4UaYus0tKFjFtGyHZNcejHQU3nu46eY1pqmooQY9fJF8079kYzDDPKktgd3+SLZbyswr
	mKqK5EW0vPo9URaI1vAm0RK0XdKpWYufXTjpAhDfv3ye6KrJqGLgAntYhiaFqvR9urOX0DSSzVGYp
	j/o0M8/D2SopaIs74ZCHP0JvLiaBqyE/atBQA0EumpihLbxvBGzrZQV2wMPbOYlEXUlYlKxMsA4WS
	RRowHKDydzK8pZ9chZFW2488ruYC4YwiqfZU7r/0GuwIfZZXkCIvT9fpsBsG0zxWKjzvDfjpP1zqR
	HbsEOCOAyxsJ/efF0nRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv0VT-0005rg-74; Tue, 06 Aug 2019 14:32:07 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv0VC-0005ka-VZ
 for linux-mtd@lists.infradead.org; Tue, 06 Aug 2019 14:31:53 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 15BAD60632C5;
 Tue,  6 Aug 2019 16:31:41 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 6tSzbEOwQAU8; Tue,  6 Aug 2019 16:31:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id CF0AA60632C6;
 Tue,  6 Aug 2019 16:31:38 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id cpqRSinVYc4o; Tue,  6 Aug 2019 16:31:38 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 83B8460632C5;
 Tue,  6 Aug 2019 16:31:38 +0200 (CEST)
Date: Tue, 6 Aug 2019 16:31:38 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: Liu Song <fishland@aliyun.com>
Message-ID: <797425154.59041.1565101898396.JavaMail.zimbra@nod.at>
In-Reply-To: <20190806142140.33013-1-fishland@aliyun.com>
References: <20190806142140.33013-1-fishland@aliyun.com>
Subject: Re: [PATCH] ubifs: limit the number of pages in shrink_liability
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF60 (Linux)/8.8.12_GA_3809)
Thread-Topic: ubifs: limit the number of pages in shrink_liability
Thread-Index: cczq56dldsF78VWHvcAJFcITyquhhQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_073151_209760_FA14B79F 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: linux-kernel <linux-kernel@vger.kernel.org>,
 liu song11 <liu.song11@zte.com.cn>, linux-mtd <linux-mtd@lists.infradead.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Artem Bityutskiy <dedekind1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFZvbjogIkxpdSBTb25nIiA8ZmlzaGxh
bmRAYWxpeXVuLmNvbT4KPiBBbjogInJpY2hhcmQiIDxyaWNoYXJkQG5vZC5hdD4sICJBcnRlbSBC
aXR5dXRza2l5IiA8ZGVkZWtpbmQxQGdtYWlsLmNvbT4sICJBZHJpYW4gSHVudGVyIiA8YWRyaWFu
Lmh1bnRlckBpbnRlbC5jb20+Cj4gQ0M6ICJsaW51eC1tdGQiIDxsaW51eC1tdGRAbGlzdHMuaW5m
cmFkZWFkLm9yZz4sICJsaW51eC1rZXJuZWwiIDxsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3Jn
PiwgImxpdSBzb25nMTEiCj4gPGxpdS5zb25nMTFAenRlLmNvbS5jbj4KPiBHZXNlbmRldDogRGll
bnN0YWcsIDYuIEF1Z3VzdCAyMDE5IDE2OjIxOjQwCj4gQmV0cmVmZjogW1BBVENIXSB1Ymlmczog
bGltaXQgdGhlIG51bWJlciBvZiBwYWdlcyBpbiBzaHJpbmtfbGlhYmlsaXR5Cgo+IEZyb206IExp
dSBTb25nIDxsaXUuc29uZzExQHp0ZS5jb20uY24+Cj4gCj4gSWYgdGhlIG51bWJlciBvZiBkaXJ0
eSBwYWdlcyB0byBiZSB3cml0dGVuIGJhY2sgaXMgbGFyZ2UsCj4gdGhlbiB3cml0ZWJhY2tfaW5v
ZGVzX3NiIHdpbGwgYmxvY2sgd2FpdGluZyBmb3IgYSBsb25nIHRpbWUsCj4gY2F1c2luZyBodW5n
IHRhc2sgZGV0ZWN0aW9uIGFsYXJtLiBUaGVyZWZvcmUsIHdlIHNob3VsZCBsaW1pdAo+IHRoZSBt
YXhpbXVtIG51bWJlciBvZiBwYWdlcyB3cml0dGVuIGJhY2sgdGhpcyB0aW1lLCB3aGljaCBsZXQK
PiB0aGUgYnVkZ2V0IGJlIGNvbXBsZXRlZCBmYXN0ZXIuIFRoZSByZW1haW5pbmcgZGlydHkgcGFn
ZXMKPiB0ZW5kIHRvIHJlbHkgb24gdGhlIHdyaXRlYmFjayBtZWNoYW5pc20gdG8gY29tcGxldGUg
dGhlCj4gc3luY2hyb25pemF0aW9uLgoKT24gd2hpY2gga2luZCBvZiBzeXN0ZW0gZG8geW91IGhp
dCB0aGlzPwpZb3VyIGZpeCBtYWtlcyBzZW5zZSBidXQgSSdkIGxpa2UgdG8gaGF2ZSBtb3JlIGJh
Y2tncm91bmQgaW5mb3JtYXRpb24uCgpVQklGUyBhY3RzIHRoYXQgd2F5IGZvciBhbG1vc3QgYSBk
ZWNhZGUsIHNlZToKYjZlNTEzMTZkYWVkICgid3JpdGViYWNrOiBzZXBhcmF0ZSBzdGFydGluZyBv
ZiBzeW5jIHZzIG9wcG9ydHVuaXN0aWMgd3JpdGViYWNrIikKClRoYW5rcywKLy9yaWNoYXJkCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
