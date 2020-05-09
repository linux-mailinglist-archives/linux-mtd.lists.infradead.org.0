Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57CA31CC46B
	for <lists+linux-mtd@lfdr.de>; Sat,  9 May 2020 22:10:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kux6gv66tRWIYfNPz3GypWrQrT8Oh9I5+Jpr4HQm+P4=; b=FQFGKuW+KxBOLU
	WPewLqkZGUK6lZdbS5YxTRxASkICu9ywcRjro4lLmYsI1P3h0T9+UTeL2iTgZfj5mKfWpuWCRhFsb
	Gutlro6K4hMKStVASiECMhng7fy238JDN3zeIFb/ZvNgzPvXC1YtwJK7MhbF0SBXg7KA766dDT0Xc
	KFo+IiNblIrIBFHJ1qwyXenheEJH6DeZQ5xqZf6FTfNS0jaGhW55fuy+hHDw6qjV4cvTDf3BazmMX
	zh6d7wk00j+sCIuorQhOJvTLcnPmHYbEayCQj/i0ycCCxyCNcYVVpkcQTuEr3QepVTZGNXWOfHP+L
	VEryTt70smHzaARYLcYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXVo6-0001M2-Ff; Sat, 09 May 2020 20:10:46 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXVnv-0001Le-Q5
 for linux-mtd@lists.infradead.org; Sat, 09 May 2020 20:10:37 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 81CA32A0200;
 Sat,  9 May 2020 21:10:34 +0100 (BST)
Date: Sat, 9 May 2020 22:10:32 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Lubomir Rintel <lkundrak@v3.sk>
Subject: Re: [PATCH 13/17] mtd: rawnand: cafe: Add exec_op() support
Message-ID: <20200509221032.6e1b6a35@collabora.com>
In-Reply-To: <20200502191843.GA363829@furthur.local>
References: <20200427082028.394719-14-boris.brezillon@collabora.com>
 <20200502111410.330584-1-lkundrak@v3.sk>
 <20200502151811.328eebb0@collabora.com>
 <20200502191843.GA363829@furthur.local>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_131035_972790_AED2B240 
X-CRM114-Status: UNSURE (   6.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: vigneshr@ti.com, tudor.ambarus@microchip.com, richard@nod.at,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com, dwmw2@infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T24gU2F0LCAyIE1heSAyMDIwIDIxOjE4OjQzICswMjAwCkx1Ym9taXIgUmludGVsIDxsa3VuZHJh
a0B2My5zaz4gd3JvdGU6Cgo+ICAgIENBRsOJIE5BTkQgMDAwMDowMDowYy4wOiBlbmFibGluZyBk
ZXZpY2UgKDAwMDAgLT4gMDAwMikKPiAgICBuYW5kOiBkZXZpY2UgZm91bmQsIE1hbnVmYWN0dXJl
ciBJRDogMHhhZCwgQ2hpcCBJRDogMHhkYwo+ICAgIG5hbmQ6IEh5bml4IE5BTkQgNTEyTWlCIDMs
M1YgOC1iaXQKPiAgICBuYW5kOiA1MTIgTWlCLCBTTEMsIGVyYXNlIHNpemU6IDEyOCBLaUIsIHBh
Z2Ugc2l6ZTogMjA0OCwgT09CIHNpemU6IDY0Cj4gICAgbmFuZDogMiBjaGlwcyBkZXRlY3RlZAoK
T2suIEdpdmVuIHRoZSBzaXplIG9mIHlvdXIgTkFORCwgeW91IHJlYWxseSBzaG91bGQgY29uc2lk
ZXIgdXNpbmcKVUJJL1VCSUZTIGlmIHlvdSB3YW50IHRvIGhhdmUgZGVjZW50IG1vdW50IHRpbWUg
KHlvdSBtaWdodCBldmVuIHdhbnQgdG8KdXNlIFVCSSBmYXN0bWFwIHRvIHNwZWVkIHVwIHRoZSBh
dHRhY2ggdGltZSBldmVuIG1vcmUpLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
