Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDAD51FF2EA
	for <lists+linux-mtd@lfdr.de>; Thu, 18 Jun 2020 15:23:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MxOJnPjFQfE7WVivUqVt/ef/ICOKY+fgiMVLiR+p1uI=; b=JqKI1qGl9xzDWK
	C8qeGQv8nCMnLOrT1aBgDWlYsyF/BkTWhGkD2dkEeTTVQBOl6L38+exl17f8TPmeoCn5VSE4ORbT/
	dREaBQ+KNv9B2k+D9UupidiczF+Rs9BbDF8z9z4mUCyfIJTDq4b8okEW3ruO6y5lNLT2Pi876M7sW
	QNuc/2HiicyoZ4iOSW/RzyCnHXXAniVuxU2V0ftGvI0t0AjCGEjX0YU3CG70pJHyO3VJg5I/5kOUO
	SR3zrC+hIUqZ/aH74fTwjXYzfMk7uBUB2ZjYWh/MVydyLiGhtrlV72A2LrFmML+KrWk4c+ueKfNbl
	iqyv4qJMyRdLdNlqcb3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jluW9-0005Io-BM; Thu, 18 Jun 2020 13:23:45 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jluVz-0005Hv-Vc
 for linux-mtd@lists.infradead.org; Thu, 18 Jun 2020 13:23:37 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 73F3A20010;
 Thu, 18 Jun 2020 13:23:26 +0000 (UTC)
Date: Thu, 18 Jun 2020 15:23:24 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Guillaume Tucker <guillaume.tucker@collabora.com>
Subject: Re: next/master bisection: baseline.login on
 ox820-cloudengines-pogoplug-series-3
Message-ID: <20200618152324.0b0007a9@xps13>
In-Reply-To: <13497644-ae34-d5e3-e76a-742cddf0f0a9@collabora.com>
References: <5eeb5bf7.1c69fb81.4f6e3.8979@mx.google.com>
 <13497644-ae34-d5e3-e76a-742cddf0f0a9@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_062336_148747_5B1E1C01 
X-CRM114-Status: UNSURE (   9.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.200 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Yoshio Furuyama <ytc-mb-yfuruyama7@kioxia.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, kernelci-results@groups.io,
 Boris Brezillon <bbrezillon@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Stefan Agner <stefan@agner.ch>,
 Boris Brezillon <boris.brezillon@collabora.com>, linux-mtd@lists.infradead.org,
 linux-next@vger.kernel.org, Richard Weinberger <richard@nod.at>,
 Thomas Gleixner <tglx@linutronix.de>, Mason Yang <masonccyang@mxic.com.tw>,
 Enrico Weigelt <info@metux.net>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgR3VpbGxhdW1lLAoKR3VpbGxhdW1lIFR1Y2tlciA8Z3VpbGxhdW1lLnR1Y2tlckBjb2xsYWJv
cmEuY29tPiB3cm90ZSBvbiBUaHUsIDE4IEp1bgoyMDIwIDEzOjI4OjA1ICswMTAwOgoKPiBQbGVh
c2Ugc2VlIHRoZSBiaXNlY3Rpb24gcmVwb3J0IGJlbG93IGFib3V0IGEga2VybmVsIHBhbmljLgo+
IAo+IFJlcG9ydHMgYXJlbid0IGF1dG9tYXRpY2FsbHkgc2VudCB0byB0aGUgcHVibGljIHdoaWxl
IHdlJ3JlCj4gdHJpYWxpbmcgbmV3IGJpc2VjdGlvbiBmZWF0dXJlcyBvbiBrZXJuZWxjaS5vcmcg
YnV0IHRoaXMgb25lCj4gbG9va3MgdmFsaWQuCj4gCj4gU2VlIHRoZSBrZXJuZWwgT29wcyBkdWUg
dG8gYSBOVUxMIHBvaW50ZXIgZm9sbG93ZWQgYnkgYSBwYW5pYzoKPiAKPiAgIGh0dHBzOi8vc3Rv
cmFnZS5rZXJuZWxjaS5vcmcvbmV4dC9tYXN0ZXIvbmV4dC0yMDIwMDYxOC9hcm0vb3huYXNfdjZf
ZGVmY29uZmlnL2djYy04L2xhYi1iYXlsaWJyZS9iYXNlbGluZS1veDgyMC1jbG91ZGVuZ2luZXMt
cG9nb3BsdWctc2VyaWVzLTMuaHRtbCNMNTA0CgpUaGFua3MgZm9yIHRoZSByZXBvcnQsIEkgd2ls
bCBub3QgYmUgYWJsZSB0byBtYW5hZ2UgaXQgYmVmb3JlIE1vbmRheSwKYnV0IEknbGwgdHJ5IHRv
IHRha2UgY2FyZSBvZiBpdCBlYXJseSBuZXh0IHdlZWsuCgpUaGFua3MgZm9yIHlvdXIgcGF0aWVu
Y2UsCk1pcXXDqGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
