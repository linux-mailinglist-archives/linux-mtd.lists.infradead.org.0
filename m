Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 279FCB8C67
	for <lists+linux-mtd@lfdr.de>; Fri, 20 Sep 2019 10:11:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=49VhsnE/16NA7ACbftblx2spgQV/XIUjqAuuf4kUsAw=; b=jtljy9IE/LFWZl
	Uvr76fJSp6UKaLpr24ylZZAOXYw0myTKu6m7Kj7rNuTgPxCzEAZZGVLvLvCOYn/0z8rJSDr8ft948
	vsGahFnvR9dy9evJpzqvJdxEA+ZL4l5JDN3sMqa4MwgOhnC0awxGh3EuIE1HfSda++JI4JKFixjPt
	XZNj+rRNEIdoTVBsGTrpzs/LRuVNRPmonqsWXYg+HIZnQ4GbAufxvevXrjXaVxQ/YJZicWeCTVwfr
	3D0ap9TBIHGWqf79v1SvJVOYCa3aW5PUdc7eGqSxLozD9JxAyfnD/qecTQm7VAwjF5KpOCyi9vtPz
	AWCbmfi4nbiaujjc+gbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBE02-0007SH-KH; Fri, 20 Sep 2019 08:10:42 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBDzt-0007RR-Aa
 for linux-mtd@lists.infradead.org; Fri, 20 Sep 2019 08:10:35 +0000
X-Originating-IP: 86.250.200.211
Received: from xps13 (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 70802FF805;
 Fri, 20 Sep 2019 08:10:16 +0000 (UTC)
Date: Fri, 20 Sep 2019 10:10:15 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Marek Vasut <marek.vasut@gmail.com>
Subject: Re: [PATCH] mtd: Remove myself from MAINTAINERS
Message-ID: <20190920101015.7f391e14@xps13>
In-Reply-To: <e5a5d49a-08f4-9947-c686-d9359b73f203@gmail.com>
References: <20190917160432.6602-1-marek.vasut@gmail.com>
 <e5a5d49a-08f4-9947-c686-d9359b73f203@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_011033_765022_ED7833C1 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
Cc: David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>, linux-mtd@lists.infradead.org,
 Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgTWFyZWssCgpNYXJlayBWYXN1dCA8bWFyZWsudmFzdXRAZ21haWwuY29tPiB3cm90ZSBvbiBU
dWUsIDE3IFNlcCAyMDE5IDE4OjQ4OjMyCiswMjAwOgoKPiBPbiA5LzE3LzE5IDY6MDQgUE0sIE1h
cmVrIFZhc3V0IHdyb3RlOgo+ID4gSSB3YXMgbm90IGFjdGl2ZSBmb3IgYSB2ZXJ5IGxvbmcgdGlt
ZSwgcmVtb3ZlIG15c2VsZiBmcm9tIHRoZSBtYWludGFpbmVycyBmaWxlLiAgCj4gCj4gVG8gZ2l2
ZSBzb21lIG1vcmUgY29udGV4dCBhcyB0byB3aHksIEkgcmVjZW50bHkgY2FtZSBhY3Jvc3MgWzFd
IGFnYWluCj4gZHVyaW5nIGFtIGludGVybmFsIGRpc2N1c3Npb24gYWJvdXQgR1BMIGNvbXBsaWFu
Y2UuIEhhcmFsZCBzdWdnZXN0cyB0aGF0Cj4gCj4gIgo+IEl0IG1hdHRlcnMgd2hvIGhhcyB3aGlj
aCB0aXRsZSBhbmQgd2hlbi4gU2hvdWxkIHNvbWVib2R5IG5vdCBiZSBhbgo+IGFjdGl2ZSBtYWlu
dGFpbmVyLCBtYWtlIHN1cmUgaGUncyBub3QgbGlzdGVkIGFzIHN1Y2guCj4gIgo+IAo+IFNvIHRo
ZSBxdWVzdGlvbiBpcywgc2hvdWxkIEkgc3RpY2sgYXJvdW5kIGJ5IHRpdGxlIG9ubHkgb3Igbm90
ID8KPiAKPiBbMV0gaHR0cDovL2xhZm9yZ2UuZ251bW9ua3Mub3JnL2Jsb2cvMjAxODAzMDctbWNo
YXJkeS1ncGwvCj4gCgpJIGFncmVlIHdpdGggSGFyYWxkIHN0YXRlbWVudCwgdGhlIE1URCBtYWlu
dGFpbmVyIGxpc3Qgd2FzIHRvbyBiaWcgZm9yCmp1c3QgYSBmZXcgYWN0aXZlIHBlb3BsZSBhY3R1
YWxseSBtYWludGFpbmluZyB0aGUgc3Vic3lzdGVtLiBUaGlzIGRvZXMKbm90IG1lYW4geW91LCBE
YXZpZCBhbmQgQnJpYW4gY2Fubm90IGNvbnRyaWJ1dGUgYW55bW9yZS4gSXQganVzdCBtZWFucwp0
aGF0IHlvdSBhcmUgbm90IGFjdGl2ZWx5IG1haW50YWluaW5nIHRoZSBjb2RlIGJhc2Ugb24gYSBk
YWlseSBiYXNpcwphbnltb3JlIGV2ZW4gaWYgeW91IHdpbGwgY29udGludWUgdG8gYmUgcHJlc2Vu
dCwgY29udHJpYnV0ZSwgYW5kIHJldmlldy4KClRoYW5rcyBmb3Igc3RhcnRpbmcgdGhlIG1vdmUs
IHBsZWFzZSBrZWVwIGluIG1pbmQgdGhhdCB3ZSBhbGwgdGhhbmsgeW91Cih0aGUgdGhyZWUgb2Yg
eW91KSBmb3IgYWxsIHRoZSB3b3JrIHlvdSBoYXZlIGRvbmUgYW5kIHRoZSBlZmZvcnQKeW91J3Zl
IHB1dCBpbiBidWlsZGluZyBhbmQgbWFpbnRhaW5pbmcgTVRELiBCcmlhbiwgRGF2aWQsIHdoYXQg
d291bGQgYmUKeW91ciBpbnB1dCBvbiB0aGlzPwoKCktpbmQgcmVnYXJkcywKTWlxdcOobAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
