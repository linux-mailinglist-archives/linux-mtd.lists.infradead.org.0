Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D8A1FF442
	for <lists+linux-mtd@lfdr.de>; Thu, 18 Jun 2020 16:09:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9xCwMQ6YyZDFMLGLdslCcwl0VKHvbjjoWKpoxQHwpXo=; b=lhqXJHIW2nV9Dn
	nIyrTTBBgaaXK1yg3MBBOT5RxSC7Z1A7JVVHAT1jazAwvAZ4HdxYlZ7Wun9Jy/9/rqQ6+RWUGXpU1
	IpwD/RBs+YaHCZxc16ZgQH15XQakbNGwBbbhEyjBtlzKJ5hrFkljOg85qUCVs+MOSDxozg5Zpy49J
	nt3+vMEOWRxUglMhjs6zA/R+m2m9zQEEs38rB30G2UxgQmuI65tmPYJyDMwFTw2MVakEM3VcU6C03
	yh9XrFyadhMkIImho2l12BWfL2fRvvQaB8/Q8kWhEqtFN0Mo302D2gezZIg16tlnCHByOUoOE/6X+
	4pLECo5mIIZ2UMbE8q5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlvEd-0003ln-5j; Thu, 18 Jun 2020 14:09:43 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlvEV-0003l9-Vn
 for linux-mtd@lists.infradead.org; Thu, 18 Jun 2020 14:09:37 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id B86FDC0007;
 Thu, 18 Jun 2020 14:09:27 +0000 (UTC)
Date: Thu, 18 Jun 2020 16:09:25 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Guillaume Tucker <guillaume.tucker@collabora.com>
Subject: Re: next/master bisection: baseline.login on
 ox820-cloudengines-pogoplug-series-3
Message-ID: <20200618160925.6f77b1d1@xps13>
In-Reply-To: <20200618152324.0b0007a9@xps13>
References: <5eeb5bf7.1c69fb81.4f6e3.8979@mx.google.com>
 <13497644-ae34-d5e3-e76a-742cddf0f0a9@collabora.com>
 <20200618152324.0b0007a9@xps13>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_070936_160198_E4A3F740 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [217.70.183.198 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

SGkgR3VpbGxhdW1lLAoKTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4g
d3JvdGUgb24gVGh1LCAxOCBKdW4gMjAyMAoxNToyMzoyNCArMDIwMDoKCj4gSGkgR3VpbGxhdW1l
LAo+IAo+IEd1aWxsYXVtZSBUdWNrZXIgPGd1aWxsYXVtZS50dWNrZXJAY29sbGFib3JhLmNvbT4g
d3JvdGUgb24gVGh1LCAxOCBKdW4KPiAyMDIwIDEzOjI4OjA1ICswMTAwOgo+IAo+ID4gUGxlYXNl
IHNlZSB0aGUgYmlzZWN0aW9uIHJlcG9ydCBiZWxvdyBhYm91dCBhIGtlcm5lbCBwYW5pYy4KPiA+
IAo+ID4gUmVwb3J0cyBhcmVuJ3QgYXV0b21hdGljYWxseSBzZW50IHRvIHRoZSBwdWJsaWMgd2hp
bGUgd2UncmUKPiA+IHRyaWFsaW5nIG5ldyBiaXNlY3Rpb24gZmVhdHVyZXMgb24ga2VybmVsY2ku
b3JnIGJ1dCB0aGlzIG9uZQo+ID4gbG9va3MgdmFsaWQuCj4gPiAKPiA+IFNlZSB0aGUga2VybmVs
IE9vcHMgZHVlIHRvIGEgTlVMTCBwb2ludGVyIGZvbGxvd2VkIGJ5IGEgcGFuaWM6Cj4gPiAKPiA+
ICAgaHR0cHM6Ly9zdG9yYWdlLmtlcm5lbGNpLm9yZy9uZXh0L21hc3Rlci9uZXh0LTIwMjAwNjE4
L2FybS9veG5hc192Nl9kZWZjb25maWcvZ2NjLTgvbGFiLWJheWxpYnJlL2Jhc2VsaW5lLW94ODIw
LWNsb3VkZW5naW5lcy1wb2dvcGx1Zy1zZXJpZXMtMy5odG1sI0w1MDQKPiAKPiBUaGFua3MgZm9y
IHRoZSByZXBvcnQsIEkgd2lsbCBub3QgYmUgYWJsZSB0byBtYW5hZ2UgaXQgYmVmb3JlIE1vbmRh
eSwKPiBidXQgSSdsbCB0cnkgdG8gdGFrZSBjYXJlIG9mIGl0IGVhcmx5IG5leHQgd2Vlay4KCkFj
dHVhbGx5IEJvcmlzIHNhdyB0aGUgaXNzdWUsIEkganVzdCB1cGRhdGVkIG5hbmQvbmV4dCwgaXQg
c2hvdWxkIGJlCnBhcnQgb2YgdG9tb3Jyb3cncyBsaW51eC1uZXh0LiBDb3VsZCB5b3UgcGxlYXNl
IHJlcG9ydCBpZiBpdCBmaXhlcyB5b3VyCmJvb3Q/CgpUaGFua3MsCk1pcXXDqGwKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQg
ZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1tdGQvCg==
