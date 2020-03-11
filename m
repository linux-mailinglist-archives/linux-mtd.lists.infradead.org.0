Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E6771811E0
	for <lists+linux-mtd@lfdr.de>; Wed, 11 Mar 2020 08:25:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vxLvGjcZicVdH12Cq1jPz/A0ou3uXj/gkbbxE54H2cU=; b=g0e4M26L8yWqo3
	4KVmeq6CINnsdnWpOi7753M+PCfhdHI6vchTT8YfXYo1+jtgfLQvdxw9VFXYZWv3lRZcYRKt2+ST5
	EOzA4e8RJaj9Xqe0yFfYOv7roiZ4/ifxugMUFt5gqqoxcuw03MAJ/MlDFcY9s6keyB2VFD78mUKgE
	oTa6VvS6b7wmnqX4IOhY61v7d+rfkyOi6yhrFwLJTQaKpb4t9MBiQuzXbWsEr+zXymPM4In/RpJ4M
	Fme2hZ5+/VNrJHyKNPS7+yPKOQ5ikkwovzLCqaIs2iVL7eFUOaFaxS9FvXoMO+V8sR5WRsRRjFWxO
	/gsr2FrqUf9H2jRXQ0bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBvkO-0003zb-Vo; Wed, 11 Mar 2020 07:25:44 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBvkE-0003z5-RG
 for linux-mtd@lists.infradead.org; Wed, 11 Mar 2020 07:25:36 +0000
Received: from xps13 (lfbn-tou-1-1473-158.w90-89.abo.wanadoo.fr [90.89.41.158])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id DA407100006;
 Wed, 11 Mar 2020 07:25:23 +0000 (UTC)
Date: Wed, 11 Mar 2020 08:25:22 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: masonccyang@mxic.com.tw
Subject: Re: [PATCH v3 1/4] mtd: rawnand: Add support manufacturer specific
 lock/unlock operation
Message-ID: <20200311082522.53313163@xps13>
In-Reply-To: <OFCDE22522.001A7410-ON48258528.000E260F-48258528.000EA7E7@mxic.com.tw>
References: <1583220084-10890-1-git-send-email-masonccyang@mxic.com.tw>
 <1583220084-10890-2-git-send-email-masonccyang@mxic.com.tw>
 <20200310202723.16b48f4b@collabora.com>
 <OFCDE22522.001A7410-ON48258528.000E260F-48258528.000EA7E7@mxic.com.tw>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_002535_019534_C6C6FF69 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.178.231 listed in wl.mailspike.net]
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
Cc: vigneshr@ti.com, bbrezillon@kernel.org, juliensu@mxic.com.tw,
 richard@nod.at, s.hauer@pengutronix.de, yuehaibing@huawei.com,
 linux-kernel@vger.kernel.org, frieder.schrempf@kontron.de, rfontana@redhat.com,
 Boris Brezillon <boris.brezillon@collabora.com>, linux-mtd@lists.infradead.org,
 stefan@agner.ch, tglx@linutronix.de, allison@lohutok.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgTWFzb24sIEJvcmlzLAoKbWFzb25jY3lhbmdAbXhpYy5jb20udHcgd3JvdGUgb24gV2VkLCAx
MSBNYXIgMjAyMCAxMDo0MDowNCArMDgwMDoKCj4gSGkgQm9yaXMsCj4gCj4gPiA+IEFkZCBuYW5k
X2xvY2soKSAmIG5hbmRfdW5sb2NrKCkgZm9yIG1hbnVmYWN0dXJlciBzcGVjaWZpYyBsb2NrICYg
ICAKPiB1bmxvY2sKPiA+ID4gb3BlcmF0aW9uIHdoaWxlIHRoZSBkZXZpY2Ugc3VwcG9ydHMgQmxv
Y2sgUG9ydGVjdGlvbiBmdW5jdGlvbi4KPiA+ID4gCj4gPiA+IFNpZ25lZC1vZmYtYnk6IE1hc29u
IFlhbmcgPG1hc29uY2N5YW5nQG14aWMuY29tLnR3Pgo+ID4gPiBSZXBvcnRlZC1ieToga2J1aWxk
IHRlc3Qgcm9ib3QgPGxrcEBpbnRlbC5jb20+ICAKPiA+IAo+ID4gUmVwb3J0ZWQtYnkgb24gc29t
ZXRoaW5nIHRoYXQncyBub3QgYSBmaXggZG9lc24ndCBtYWtlIHNlbnNlLiBJIGtub3cKPiA+IHRo
ZSAwZGF5IGJvdCBhc2tlZCB5b3UgdG8gYWRkIHRoaXMgdGFnLCBidXQgdGhhdCBzaG91bGQgb25s
eSBiZSBkb25lIGlmCj4gPiB5b3Ugc3VibWl0IGEgc2VwYXJhdGUgcGF0Y2gsIGlkZWFsbHkgd2l0
aCBhIEZpeGVzIHRhZy4gSWYgdGhlIG9mZmVuZGluZwo+ID4gcGF0Y2ggaGFzIG5vdCBiZWVuIG1l
cmdlZCB5ZXQsIHlvdSBzaG91bGQganVzdCBmaXggdGhlIGNvbW1pdCBhbmQgaWdub3JlCj4gPiB0
aGUgUmVwb3J0ZWQtYnkgdGFnICh5b3UgY2FuIG1lbnRpb24gd2hvIHJlcG9ydGVkIHRoZSBwcm9i
bGVtIGluIHRoZQo+ID4gY2hhbmdlbG9nIHRob3VnaCkuCgpZZXN0ZXJkYXkgd2hlbiBhcHBseWlu
ZyBhbGwgdGhlIE5BTkQgcGF0Y2hlcyBteSBwZXJzb25hbCBJUCBhZGRyZXNzIGdvdApmbGFnZ2Vk
IGFzIHNwYW0gYnkgbWlzdGFrZSAofjUwMCBtYWlscyBpbiB+MTBzKSBzbyBJIGNvdWxkIG5vdCBh
bnN3ZXIKbWFudWFsbHkgYXMgSSB3aXNoZWQuCgpJbmRlZWQsIHRoaXMgUmVwb3J0ZWQtYnkgdGFn
IHdhcyBub3QgbmVlZGVkIGFuZCBJIGRyb3BwZWQgaXQgbWFudWFsbHkKd2hlbiBhcHBseWluZy4g
VGhpcyB0YWcgaXMgbWVhbnQgdG8gc2hvdyBhbiBlcnJvciB0aGF0IHdhcyBleGlzdGluZwoqYmVm
b3JlKiB5b3VyIHNlcmllcyBhbmQgdGhhdCB5b3UgYXJlIGZpeGluZyB3aXRoIHlvdXIgc2VyaWVz
LiBUaGlzIGlzCm5vdCBzb21ldGhpbmcgeW91IHNob3VsZCBhZGQgd2hlbiBhIHJvYm90IHRlbGxz
IHlvdSBzb21ldGhpbmcgaXMgd3JvbmcKaW4geW91ciBzZXJpZXMuCgpBbHNvLCBJIHJld3JvdGUg
c2V2ZXJhbCBwYXJhZ3JhcGhzIGFuZCBJIHByZWZpeGVkIHR3byBvZiB0aGVtIHdpdGggIm10ZDoK
cmF3bmFuZDogbWFjcm9uaXg6Ii4KClRoYW5rcywKTWlxdcOobAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9u
IG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LW10ZC8K
