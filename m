Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0299B1D8997
	for <lists+linux-mtd@lfdr.de>; Mon, 18 May 2020 22:51:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y/TXSQZLFfyB3cZgFh9DMw9Jym5oEED/JclJ/E68hwI=; b=DIlB06uA25J0uK
	+4XKx7tDVeSq8ma+pCr392z/NSYjCr5+wAXCOLUzFcqLzWX3Kn43dO+ED0qc5RTwpzSI4hM2/N2ys
	iOvc45ldBxVMeRsA2bBRzmIq6+Ukw9vFxvwcjNE24RJv8P6f7A9JLAOnsrOAuKfYyg/Fgzvvie6s1
	3beGbZ4M3j8Ow2vyv2x9rrRPxaHlpiwk8zZg4gk79VMG9/ltVt8PAEQJCefl+IVb6MbYlAiNU+vWU
	bSNua6vCqe4Pj2t3N+gaSj5OcZGRKPh8+V85SZDOsY6ut+j8bntaXDW/DpuyXELkH60vu9Fqh6cET
	C3okBvzq3q1BA+NdaoRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jamjL-0002St-9s; Mon, 18 May 2020 20:51:23 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jamj4-0002Rt-Na
 for linux-mtd@lists.infradead.org; Mon, 18 May 2020 20:51:12 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 7154F6071A74;
 Mon, 18 May 2020 22:51:02 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id KUrDaPiIdUDY; Mon, 18 May 2020 22:51:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 5D0B16071A76;
 Mon, 18 May 2020 22:51:00 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id KhVKLKkHVMLA; Mon, 18 May 2020 22:51:00 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 39EAF6071A74;
 Mon, 18 May 2020 22:51:00 +0200 (CEST)
Date: Mon, 18 May 2020 22:51:00 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Message-ID: <560174857.237649.1589835060139.JavaMail.zimbra@nod.at>
In-Reply-To: <20200518215649.5273b132@xps13>
References: <20200430131721.360064-1-ricardo@ribalda.com>
 <20200504104339.31b4a858@xps13>
 <CAPybu_3D5p7P5ND5qb8-2QmaQhQuvdEbiNKkeK5PbHdF3s-2Fg@mail.gmail.com>
 <20200518215649.5273b132@xps13>
Subject: Re: [PATCH] mtd: Fix mtd not registered due to nvmem name collision
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF68 (Linux)/8.8.12_GA_3809)
Thread-Topic: Fix mtd not registered due to nvmem name collision
Thread-Index: Q7Nx72pmZrkxf39ekBQmY2OOnvapSg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_135107_667769_FFAE6977 
X-CRM114-Status: UNSURE (   4.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Ricardo Ribalda Delgado <ricardo@ribalda.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Boris Brezillon <boris.brezillon@collabora.com>, Alban Bedel <albeu@free.fr>,
 linux-mtd <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFZvbjogIk1pcXVlbCBSYXluYWwiIDxt
aXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPgo+IEFuOiAiUmljYXJkbyBSaWJhbGRhIERlbGdhZG8i
IDxyaWNhcmRvQHJpYmFsZGEuY29tPgo+IENDOiAicmljaGFyZCIgPHJpY2hhcmRAbm9kLmF0Piwg
IlZpZ25lc2ggUmFnaGF2ZW5kcmEiIDx2aWduZXNockB0aS5jb20+LCAibGludXgtbXRkIiA8bGlu
dXgtbXRkQGxpc3RzLmluZnJhZGVhZC5vcmc+LAo+ICJsaW51eC1rZXJuZWwiIDxsaW51eC1rZXJu
ZWxAdmdlci5rZXJuZWwub3JnPiwgIkJvcmlzIEJyZXppbGxvbiIgPGJvcmlzLmJyZXppbGxvbkBj
b2xsYWJvcmEuY29tPiwgIkFsYmFuIEJlZGVsIgo+IDxhbGJldUBmcmVlLmZyPgo+IEdlc2VuZGV0
OiBNb250YWcsIDE4LiBNYWkgMjAyMCAyMTo1Njo0OQo+IEJldHJlZmY6IFJlOiBbUEFUQ0hdIG10
ZDogRml4IG10ZCBub3QgcmVnaXN0ZXJlZCBkdWUgdG8gbnZtZW0gbmFtZSBjb2xsaXNpb24KCj4g
SGkgUmljYXJkbywKPiAKPiBSaWNhcmRvIFJpYmFsZGEgRGVsZ2FkbyA8cmljYXJkb0ByaWJhbGRh
LmNvbT4gd3JvdGUgb24gTW9uLCAxOCBNYXkgMjAyMAo+IDE2OjAxOjQ3ICswMjAwOgo+IAo+PiBI
aQo+PiAKPj4gVGhpcyBpcyBqdXN0IGEgZnJpZW5kbHkgcGluZyBhZnRlciB0d28gd2Vla3MgOykK
PiAKPiBEb24ndCB3b3JyeSwgaXQncyBpbiB0aGUgcGlwZSA6KQoKQW5kIG5vdyBhcHBsaWVkIGFu
ZCBwdXNoZWQuIDotKQoKVGhhbmtzLAovL3JpY2hhcmQKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWls
aW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1tdGQvCg==
