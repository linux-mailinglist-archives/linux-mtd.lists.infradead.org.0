Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B1E13B079
	for <lists+linux-mtd@lfdr.de>; Tue, 14 Jan 2020 18:07:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rL4Ma97BS+Khd/yG0pPxI/YJWJSnRyjmeccf3B9SUa8=; b=LvV3iCMIUrDL/F
	qiJYdz075iIDMj9AeS5GwVVbY3AEp2A4VfNwXIXH+h7zYJLxeaL+jhR5qBkgKfYJ0WCVEOVW6seP2
	Kp5K88M8R6d8SJJBiyKsgTSki5y4FZJWr9Sd+e3Q9/+h+xNnlFpz3kSUwUMOcSXuq0SgQ3TyLEEG5
	egpmCoR5WGgVK++c5wp44k26UumhCdw87y75BW/PqgD/itarj7OOCTwJOewO/m22zhK0yI43IFwrg
	Nwd3n2HPs9wHkz5H9JAXghxtDlgjUeeuoOMOzjgGQKByrpXg3ZRnhg75hrFpyG6i1YxrOPqiwa9nz
	ifGGrCV5h692AS3+ltqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irPf1-0001RO-EE; Tue, 14 Jan 2020 17:07:23 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irPd6-0008OS-Go; Tue, 14 Jan 2020 17:05:31 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13.lan (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id DC790C0003;
 Tue, 14 Jan 2020 17:05:19 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] mtd: onenand: samsung: Fix printing format for size_t
 on 64-bit
Date: Tue, 14 Jan 2020 18:05:09 +0100
Message-Id: <20200114170509.1470-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191229183612.22133-2-krzk@kernel.org>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 887100f9534aec6989f8142531514c440e7c3734
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_090524_724728_D72C7A89 
X-CRM114-Status: UNSURE (   6.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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
Cc: linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T24gU3VuLCAyMDE5LTEyLTI5IGF0IDE4OjM2OjExIFVUQywgS3J6eXN6dG9mIEtvemxvd3NraSB3
cm90ZToKPiBQcmludCBzaXplX3QgYXMgJXp1IHRvIGZpeCAtV2Zvcm1hdCB3YXJuaW5ncyB3aGVu
IGNvbXBpbGluZyBvbiA2NC1iaXQKPiBwbGF0Zm9ybSAoZS5nLiB3aXRoIENPTVBJTEVfVEVTVCk6
Cj4gCj4gICAgIGRyaXZlcnMvbXRkL25hbmQvb25lbmFuZC9zYW1zdW5nX210ZC5jOiBJbiBmdW5j
dGlvbiDigJhzNXBjMTEwX3JlYWRfYnVmZmVycmFt4oCZOgo+ICAgICBkcml2ZXJzL210ZC9uYW5k
L29uZW5hbmQvc2Ftc3VuZ19tdGQuYzo2NjE6MTY6IHdhcm5pbmc6Cj4gICAgICAgICBmb3JtYXQg
4oCYJWTigJkgZXhwZWN0cyBhcmd1bWVudCBvZiB0eXBlIOKAmGludOKAmSwgYnV0IGFyZ3VtZW50
IDMgaGFzIHR5cGUg4oCYc2l6ZV90IHtha2EgbG9uZyB1bnNpZ25lZCBpbnR94oCZIFstV2Zvcm1h
dD1dCj4gICAgICAgIGRldl9lcnIoZGV2LCAiQ291bGRuJ3QgbWFwIGEgJWQgYnl0ZSBidWZmZXIg
Zm9yIERNQVxuIiwgY291bnQpOwo+IAo+IFNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBLb3psb3dz
a2kgPGtyemtAa2VybmVsLm9yZz4KCkFwcGxpZWQgdG8gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9w
dWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvbXRkL2xpbnV4LmdpdCBuYW5kL25leHQsIHRoYW5rcy4K
Ck1pcXVlbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
