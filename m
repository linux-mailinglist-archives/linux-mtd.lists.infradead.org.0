Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A99AD22B2
	for <lists+linux-mtd@lfdr.de>; Thu, 10 Oct 2019 10:26:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v43K+RxYcgYkrfuA15pSoM/VOmbIIGyk92bEFg6zoHY=; b=PYhUoM0hhasB+M
	rbNoMuzqb9dHOYcvy63ozshb1cmTE3W4tIdkWox4TFs6SkrioPLtYgWTvSTJLq1tYLMSxKV6osVsr
	bESqhUXWQnUNaUFjAGLJX3QTEwInrhx/rp3yCDpoe5GjV/3dS1ly623Na/AZ3O0uklnWqqeawO0NO
	ZGaVv4wh1tZeDXFc6NezmV54F78nGq9pUwitqaJQirnfGANABC4YWS6SQ7oP4xvwVFSx2Z/y2uUtv
	CDsyy5XBPKYxs+60MsAT4Yrpd3Y2HAu13WLWdQw0o5sNplyb1VdUTmreH/vqjLrz75U8WVNjAe6Ts
	HoJDa4vT2fZIEwSv1Jaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iITmK-0002md-7C; Thu, 10 Oct 2019 08:26:32 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iITmA-0002lq-6Y
 for linux-mtd@lists.infradead.org; Thu, 10 Oct 2019 08:26:23 +0000
Received: from xps13 (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 5F40D24000D;
 Thu, 10 Oct 2019 08:26:07 +0000 (UTC)
Date: Thu, 10 Oct 2019 10:26:06 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Fuqian Huang <huangfq.daxian@gmail.com>
Subject: Re: [PATCH] mtd: maps: l440gx: Avoid print address to dmesg
Message-ID: <20191010102606.253ff6b9@xps13>
In-Reply-To: <20191010080130.25402-1-huangfq.daxian@gmail.com>
References: <20191010080130.25402-1-huangfq.daxian@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_012622_373741_98FF1717 
X-CRM114-Status: GOOD (  14.34  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 linux-kernel@vger.kernel.org, Marek Vasut <marek.vasut@gmail.com>,
 linux-mtd@lists.infradead.org, Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgRnVxaWFuLAoKRnVxaWFuIEh1YW5nIDxodWFuZ2ZxLmRheGlhbkBnbWFpbC5jb20+IHdyb3Rl
IG9uIFRodSwgMTAgT2N0IDIwMTkKMTY6MDE6MzAgKzA4MDA6Cgo+IEF2b2lkIHByaW50IHRoZSBh
ZGRyZXNzIG9mIGw0NDBneF9tYXAudmlydCBldmVyeSB0aW1lIGw0NDBneCBpbml0Lgo+IAo+IFNp
Z25lZC1vZmYtYnk6IEZ1cWlhbiBIdWFuZyA8aHVhbmdmcS5kYXhpYW5AZ21haWwuY29tPgo+IC0t
LQo+ICBkcml2ZXJzL210ZC9tYXBzL2w0NDBneC5jIHwgMSAtCj4gIDEgZmlsZSBjaGFuZ2VkLCAx
IGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbXRkL21hcHMvbDQ0MGd4LmMg
Yi9kcml2ZXJzL210ZC9tYXBzL2w0NDBneC5jCj4gaW5kZXggODc2ZjEyZjQwMDE4Li5lN2U0MGJj
YTgyZDEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tdGQvbWFwcy9sNDQwZ3guYwo+ICsrKyBiL2Ry
aXZlcnMvbXRkL21hcHMvbDQ0MGd4LmMKPiBAQCAtODYsNyArODYsNiBAQCBzdGF0aWMgaW50IF9f
aW5pdCBpbml0X2w0NDBneCh2b2lkKQo+ICAJCXJldHVybiAtRU5PTUVNOwo+ICAJfQo+ICAJc2lt
cGxlX21hcF9pbml0KCZsNDQwZ3hfbWFwKTsKPiAtCXByaW50ayhLRVJOX05PVElDRSAid2luZG93
X2FkZHIgPSAweCUwOGx4XG4iLCAodW5zaWduZWQgbG9uZylsNDQwZ3hfbWFwLnZpcnQpOwo+ICAK
PiAgCS8qIFNldHVwIHRoZSBwbSBpb2Jhc2UgcmVzb3VyY2UKPiAgCSAqIFRoaXMgY29kZSBzaG91
bGQgbW92ZSBpbnRvIHNvbWUga2luZCBvZiBnZW5lcmljIGJyaWRnZQoKCkl0IGxvb2tzIG1vcmUg
bGlrZSBhIGRlYnVnIG1lc3NhZ2UsIG1heWJlIHR1cm4gaXQgaW50byBhIEtFUk5fREVCVUc/ClVz
dWFsbHkgcGVvcGxlIGRvIG5vdCBydW4gdGhlaXIga2VybmVscyB3aXRoIHN1Y2ggYSBsb3cgdHJh
Y2UgbGltaXQuCgpUaGFua3MsCk1pcXXDqGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxp
c3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQv
Cg==
