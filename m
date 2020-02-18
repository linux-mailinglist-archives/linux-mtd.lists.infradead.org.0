Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55AA41624E9
	for <lists+linux-mtd@lfdr.de>; Tue, 18 Feb 2020 11:48:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iYctxtAageHf2mFezp4Fr0GLLHDhtGJWkOS/lHVmN+g=; b=Egwpt9c4i15Kpt
	yV/9/UZDCuqowfCJQGmv5QybFFWnIYmSoKg/sC+3Qn43RL6xrjkeoOxEFlRGUt3NS9oCVnfHJcmdm
	mRKM7VvbUANF2D5yudQcQo4OQOtTGL15yDsi/Up3b2PwosIXPyEZyr/UyooCdTAb0sdicYhCqMUas
	pGzw7wcNPbBdu8qbk/bKErSe/4zbh9SqYiT7HzD3TvwK9BoOlSpORKNpqxwhjivebzD+OWWzsfZoA
	BPj3MftKW8PaStNPACwAXgXcCoPx2f2Y1yXnQDCxZSUz/t1KBI76WLOz0M6FhMc9X9WJ0zX05Necl
	bb7CrcNluJmBbCH/rOqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j40QA-0004tm-8i; Tue, 18 Feb 2020 10:48:06 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j40Q0-0004sx-Jc
 for linux-mtd@lists.infradead.org; Tue, 18 Feb 2020 10:47:58 +0000
Received: from xps13 (lfbn-tou-1-1151-102.w90-76.abo.wanadoo.fr
 [90.76.211.102]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 0F8B8100003;
 Tue, 18 Feb 2020 10:47:51 +0000 (UTC)
Date: Tue, 18 Feb 2020 11:47:51 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Piotr Sroka <piotrs@cadence.com>
Subject: Re: [PATCH 3/4] mtd: rawnand: cadence: change bad block marker size
Message-ID: <20200218114751.70efa015@xps13>
In-Reply-To: <1581328530-29966-3-git-send-email-piotrs@cadence.com>
References: <1581328530-29966-1-git-send-email-piotrs@cadence.com>
 <1581328530-29966-3-git-send-email-piotrs@cadence.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_024756_783517_57ECDB9D 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 linux-kernel@vger.kernel.org, Marek Vasut <marek.vasut@gmail.com>,
 linux-mtd@lists.infradead.org, Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>,
 Kazuhiro Kasai <kasai.kazuhiro@socionext.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgUGlvdHIsCgpQaW90ciBTcm9rYSA8cGlvdHJzQGNhZGVuY2UuY29tPiB3cm90ZSBvbiBNb24s
IDEwIEZlYiAyMDIwIDEwOjU1OjI3CiswMTAwOgoKPiBJbmNyZWFzZSBiYWQgYmxvY2sgbWFya2Vy
IHNpemUgZnJvbSBvbmUgYnl0ZSB0byB0d28gYnl0ZXMuCj4gQmFkIGJsb2NrIG1hcmtlciBpcyBo
YW5kbGVkIGJ5IHNraXAgYnl0ZXMgZmVhdHVyZSBvZiBIUE5GQy4KPiBDb250cm9sbGVyIGV4Y3Bl
Y3RzIHRoaXMgdmFsdWUgdG8gYmUgYW4gZXZlbiBudW1iZXIuCgogICAgICAgICAgICAgZXhwZWN0
cwoKRG8gd2UgYnJlYWsgZXhpc3RpbmcgdXNlcnMgd2l0aCB0aGlzIGNoYW5nZT8gRG8geW91IGtu
b3cgaG93IHRoZQpjb250cm9sbGVyIGJlaGF2ZWQgdW50aWwgbm93PwoKQWxzbyBuZWVkcyBhIEZp
eGVzL3N0YWJsZSB0YWcgSSBndWVzcz8KCj4gCj4gU2lnbmVkLW9mZi1ieTogUGlvdHIgU3Jva2Eg
PHBpb3Ryc0BjYWRlbmNlLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9tdGQvbmFuZC9yYXcvY2FkZW5j
ZS1uYW5kLWNvbnRyb2xsZXIuYyB8IDkgKysrLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGlu
c2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbXRk
L25hbmQvcmF3L2NhZGVuY2UtbmFuZC1jb250cm9sbGVyLmMgYi9kcml2ZXJzL210ZC9uYW5kL3Jh
dy9jYWRlbmNlLW5hbmQtY29udHJvbGxlci5jCj4gaW5kZXggMmViZmQwOTM0NzM5Li41YzFiYmIw
NWFiNTEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tdGQvbmFuZC9yYXcvY2FkZW5jZS1uYW5kLWNv
bnRyb2xsZXIuYwo+ICsrKyBiL2RyaXZlcnMvbXRkL25hbmQvcmF3L2NhZGVuY2UtbmFuZC1jb250
cm9sbGVyLmMKPiBAQCAtMjYxMiwxMiArMjYxMiw5IEBAIGludCBjYWRlbmNlX25hbmRfYXR0YWNo
X2NoaXAoc3RydWN0IG5hbmRfY2hpcCAqY2hpcCkKPiAgCWNoaXAtPm9wdGlvbnMgfD0gTkFORF9O
T19TVUJQQUdFX1dSSVRFOwo+ICAKPiAgCWNkbnNfY2hpcC0+YmJtX29mZnMgPSBjaGlwLT5iYWRi
bG9ja3BvczsKPiAtCWlmIChjaGlwLT5vcHRpb25zICYgTkFORF9CVVNXSURUSF8xNikgewo+IC0J
CWNkbnNfY2hpcC0+YmJtX29mZnMgJj0gfjB4MDE7Cj4gLQkJY2Ruc19jaGlwLT5iYm1fbGVuID0g
MjsKPiAtCX0gZWxzZSB7Cj4gLQkJY2Ruc19jaGlwLT5iYm1fbGVuID0gMTsKPiAtCX0KPiArCWNk
bnNfY2hpcC0+YmJtX29mZnMgJj0gfjB4MDE7Cj4gKwkvKiB0aGlzIHZhbHVlIHNob3VsZCBiZSBl
dmVuIG51bWJlciAqLwo+ICsJY2Ruc19jaGlwLT5iYm1fbGVuID0gMjsKPiAgCj4gIAlyZXQgPSBu
YW5kX2VjY19jaG9vc2VfY29uZihjaGlwLAo+ICAJCQkJICAgJmNkbnNfY3RybC0+ZWNjX2NhcHMs
CgpUaGFua3MsCk1pcXXDqGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
