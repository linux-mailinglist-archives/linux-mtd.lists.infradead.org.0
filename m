Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48CFE1C864F
	for <lists+linux-mtd@lfdr.de>; Thu,  7 May 2020 12:03:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u651HYGz4pbPQ/Nx6fSsLuxJzczzHEpmO8LR0UHl4N8=; b=PfTVKqL4PuS85R
	1C/jK6YzPC2Kbp20d8VFgf90C6UtAIBT3PmU+urWL6VD84+/etRAijA6cRe8Mzl5NowtVPWs1q76M
	NZihvAVKhpEbBLZLzui6h3bM9UP/eiFPs6rwrGgJZlCMXlnQ74tBl/n2TVzGl1CEo+L8f6q6kmzj+
	nBbqae61d+S/f5bjTNQHeulws9QTPR9xrQYzJUkEYveEeP13chdGB/UNyp0Gv6fJYwShzq1Eawdy3
	4Y0q8xWcySRsed9YXhkqsinELzLJ06LtnLQ7SdEqsL8Eoihs7LqCHdR0SuKFw8FxHq90y1sOpjEEP
	dN4di02OvPMTeXK1JjrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWdMz-0008Kj-Qs; Thu, 07 May 2020 10:03:09 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWdMt-0008KH-L6
 for linux-mtd@bombadil.infradead.org; Thu, 07 May 2020 10:03:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Subject:References:In-Reply-To:Message-ID:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=+4X+AW0ZYVjh+CHHdUSHlpnRmrfp9/kPFIjWdR90Kc8=; b=q1wIJSVhLz7yaGE1eHMZXtQk6v
 ssyAmUWqqqHXgh2IRnkOLKR2QAXbkeQRU6+U7brdqdlhyHBXxQ3q6TvyLpw45zKjhyRWHZx+DDIyl
 t3k0TSVSZsamBDlflLjA6yKWt5VYFpUysYk1z/3yt9tQk3yPdj6J3+s1xnXX0Z2v6dqeHTRMNU3gG
 VhraGCVYWHIB080//BdsLwhvicYvAe4EeIUKcOU08OpvMrFbFHageoR27CESKjyfKvLpidRwEljmA
 8f+s1olSYNgenzLF/6VhFz3Tu+xmuOyEbEFGGhuvZBxwM5eiYzHJ6kY3kJybj7D9gQMDvWfPSTHvQ
 Q5tLQ0wQ==;
Received: from lithops.sigma-star.at ([195.201.40.130])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWdMo-0006Dy-74
 for linux-mtd@lists.infradead.org; Thu, 07 May 2020 10:03:00 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 467466075EB6;
 Thu,  7 May 2020 12:02:16 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id cFjHhroT6IJe; Thu,  7 May 2020 12:02:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id DA6EB608311C;
 Thu,  7 May 2020 12:02:13 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id hzYKOmsiAjPR; Thu,  7 May 2020 12:02:13 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id AFAD0608932E;
 Thu,  7 May 2020 12:02:13 +0200 (CEST)
Date: Thu, 7 May 2020 12:02:13 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: Boris Brezillon <boris.brezillon@collabora.com>
Message-ID: <791376627.195447.1588845733613.JavaMail.zimbra@nod.at>
In-Reply-To: <20200507113050.71b6a27f@collabora.com>
References: <20200503114029.30257-1-miquel.raynal@bootlin.com>
 <1414270659.192477.1588790669444.JavaMail.zimbra@nod.at>
 <20200506210158.7fe33cec@collabora.com>
 <662469728.192614.1588792998746.JavaMail.zimbra@nod.at>
 <20200506224016.2d48d0b4@collabora.com>
 <130342272.192940.1588798779898.JavaMail.zimbra@nod.at>
 <BN7PR08MB5684AFAA722A0633357C064ADBA50@BN7PR08MB5684.namprd08.prod.outlook.com>
 <20200507113050.71b6a27f@collabora.com>
Subject: Re: [EXT] [PATCH v2 3/3] mtd: rawnand: micron: Address the shallow
 erase issue
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF68 (Linux)/8.8.12_GA_3809)
Thread-Topic: rawnand: micron: Address the shallow erase issue
Thread-Index: PQzS55Pk92rdJiZ8mIxUWRglbulx4w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_110258_672021_20E3058B 
X-CRM114-Status: UNSURE (   5.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Steve deRosier <derosier@gmail.com>, "Zoltan Szubbocsev,
 zszubbocsev" <zszubbocsev@micron.com>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, tglx <tglx@linutronix.de>,
 Piotr Wojtaszczyk <WojtaszczykP@cumminsallison.com>, "Bean Huo,
 beanhuo" <beanhuo@micron.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFZvbjogIkJvcmlzIEJyZXppbGxvbiIg
PGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPgo+IEFuOiAiQmVhbiBIdW8sIGJlYW5odW8i
IDxiZWFuaHVvQG1pY3Jvbi5jb20+LCAiTWlxdWVsIFJheW5hbCIgPG1pcXVlbC5yYXluYWxAYm9v
dGxpbi5jb20+Cj4gQ0M6ICJyaWNoYXJkIiA8cmljaGFyZEBub2QuYXQ+LCAiVmlnbmVzaCBSYWdo
YXZlbmRyYSIgPHZpZ25lc2hyQHRpLmNvbT4sICJUdWRvciBBbWJhcnVzIiA8VHVkb3IuQW1iYXJ1
c0BtaWNyb2NoaXAuY29tPiwKPiAibGludXgtbXRkIiA8bGludXgtbXRkQGxpc3RzLmluZnJhZGVh
ZC5vcmc+LCAiU3RldmUgZGVSb3NpZXIiIDxkZXJvc2llckBnbWFpbC5jb20+LCAiVGhvbWFzIFBl
dGF6em9uaSIKPiA8dGhvbWFzLnBldGF6em9uaUBib290bGluLmNvbT4sICJ0Z2x4IiA8dGdseEBs
aW51dHJvbml4LmRlPiwgIlpvbHRhbiBTenViYm9jc2V2LCB6c3p1YmJvY3NldiIgPHpzenViYm9j
c2V2QG1pY3Jvbi5jb20+LAo+ICJQaW90ciBXb2p0YXN6Y3p5ayIgPFdvanRhc3pjenlrUEBjdW1t
aW5zYWxsaXNvbi5jb20+Cj4gR2VzZW5kZXQ6IERvbm5lcnN0YWcsIDcuIE1haSAyMDIwIDExOjMw
OjUwCj4gQmV0cmVmZjogUmU6IFtFWFRdIFtQQVRDSCB2MiAzLzNdIG10ZDogcmF3bmFuZDogbWlj
cm9uOiBBZGRyZXNzIHRoZSBzaGFsbG93IGVyYXNlIGlzc3VlCgo+IE9uIFRodSwgNyBNYXkgMjAy
MCAwOToyODo1OSArMDAwMAo+ICJCZWFuIEh1byAoYmVhbmh1bykiIDxiZWFuaHVvQG1pY3Jvbi5j
b20+IHdyb3RlOgo+IAo+PiBIaSBSaWNoYXJkCj4+IFRoYW5rcy4KPj4gCj4+IEhvdyBhYm91dCB0
aGlzIHNwZWNpYWwgIHNpdHVhdGlvbjoKPj4gCj4+IFBhZ2UgMChFQykgaXMgZ29vZDsKPj4gUGFn
ZSAxKFZJRCkgaXMgYmFkOwo+IAo+IFVCSSBzaG91bGQgcmVqZWN0IHRoZSBMRUIgYmVjYXVzZSBv
ZiB0aGlzIFZJRCBjb3JydXB0aW9uLCBidXQgSSdtIG5vdAo+IHN1cmUgaG93IHdlbGwgdGhhdCB3
b3JrcyB3aGVuIHlvdSBhZGQgZmFzdG1hcCBpbiB0aGUgbWl4IDotLy4KCkZhc3RtYXAgY2FuIGRl
YWwgd2l0aCB0aGF0LgpVcG9uIGZpcnN0IGFjY2VzcyBpdCBjaGVja3MgZm9yIGEgVklEIGhlYWRl
ci4KClRoYW5rcywKLy9yaWNoYXJkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
