Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C016A1360D0
	for <lists+linux-mtd@lfdr.de>; Thu,  9 Jan 2020 20:14:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WvCWmEdYAzwmRq8FiardWEJMPQz8iUCYRndqSs7XVyQ=; b=IZ9DXAsnJqOYoC
	T3XuX8xKs0Yz2JnqWeag1BjST2tIWQjuRNFWf55Bd+7pWhHL76TTdQOlnDicpWgprg9gpSPR3gE3e
	wXSpvP3JyL4R4nJM4Ugl8f+c0x1a3vnvsn6jGee1EHRKqHXhT92pyjzLiEFtYLigG7mlucw2D4HsS
	LAqN6U6R3hTxmvnd+8VwXwVaiJ9wPExW2VV+BtlU3IzDHB1qJI00G/d366n6Yp2BtP2UV76ZwE94P
	NklIiMe0rCM1jHwPSBNoOftP/RhbEcxuOEmy9umNabslVRHmk0FPsfwOqeRl6P6AJMmEJMkce5wVD
	CAreA4VGPKEBV4IQSCCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipdG3-0006b2-Hh; Thu, 09 Jan 2020 19:14:15 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipdFv-0006ZV-7e
 for linux-mtd@lists.infradead.org; Thu, 09 Jan 2020 19:14:08 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id B9E6329387E;
 Thu,  9 Jan 2020 19:13:58 +0000 (GMT)
Date: Thu, 9 Jan 2020 20:13:55 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v2] mtd: implement proper partition handling
Message-ID: <20200109201355.707c5b0d@collabora.com>
In-Reply-To: <20200109194556.34cf67dc@xps13>
References: <20191230111948.27005-1-miquel.raynal@bootlin.com>
 <1651325521.16954.1578526458487.JavaMail.zimbra@nod.at>
 <20200109191304.636c82e7@xps13>
 <1737779363.17836.1578595384783.JavaMail.zimbra@nod.at>
 <20200109194556.34cf67dc@xps13>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_111407_402274_2056EEC9 
X-CRM114-Status: GOOD (  20.03  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Richard Weinberger <richard@nod.at>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T24gVGh1LCA5IEphbiAyMDIwIDE5OjQ1OjU2ICswMTAwCk1pcXVlbCBSYXluYWwgPG1pcXVlbC5y
YXluYWxAYm9vdGxpbi5jb20+IHdyb3RlOgoKPiBIaSBSaWNoYXJkLAo+IAo+IFJpY2hhcmQgV2Vp
bmJlcmdlciA8cmljaGFyZEBub2QuYXQ+IHdyb3RlIG9uIFRodSwgOSBKYW4gMjAyMCAxOTo0Mzow
NAo+ICswMTAwIChDRVQpOgo+IAo+ID4gTWlxdWVsLAo+ID4gCj4gPiAtLS0tLSBVcnNwcsO8bmds
aWNoZSBNYWlsIC0tLS0tICAKPiA+ID4+IFdoYXQgcHJvYmxlbSBkb2VzIHRoaXMgc29sdmU/Cj4g
PiA+PiAuLi5iZXNpZGUgb2YgYSBuaWNlIGRpZmZzdGF0IHdoaWNoIHJlbW92ZXMgbW9yZSB0aGFu
IGl0IGFkZHMuIDotKSAgICAKPiA+ID4gCj4gPiA+IEl0IGlzIG11Y2ggZWFzaWVyIHRvIGVzY2Fs
YWRlIHRvIHRoZSB0b3AgbW9zdCAibWFzdGVyIiBkZXZpY2Ugd2hlbgo+ID4gPiB0aGVyZSBhcmUg
bXVsdGlwbGUgbGV2ZWxzIG9mIHBhcnRpdGlvbmluZywgd2hpY2ggd2FzIG5vdCBjbGVhbmx5Cj4g
PiA+IGRlc2NyaWJlZCBJTUhPLiBBbHNvIGl0IGlzIGFscmVhZHkgdXNlZCBpbiB0aGUgTUxDLWlu
LXBzZXVkby1TTEMtbW9kZQo+ID4gPiBzZXJpZXMgOikgICAgCj4gPiAKPiA+IE9rLiBJbiBmYWN0
IEkgImZvdW5kIiB0aGlzIHBhdGNoIG15IGxvb2tpbmcgYXQgdGhlIFNMQyBlbXVsYXRpb24gcGF0
Y2hlcy4KPiA+ICAgCj4gPiA+PiA+ICtzdGF0aWMgaW5saW5lIHN0cnVjdCBtdGRfaW5mbyAqbXRk
X2dldF9tYXN0ZXIoc3RydWN0IG10ZF9pbmZvICptdGQpCj4gPiA+PiA+ICt7Cj4gPiA+PiA+ICsJ
d2hpbGUgKG10ZC0+cGFyZW50KQo+ID4gPj4gPiArCQltdGQgPSBtdGQtPnBhcmVudDsKPiA+ID4+
ID4gKwo+ID4gPj4gPiArCXJldHVybiBtdGQ7Cj4gPiA+PiA+ICt9ICAgIAo+ID4gPj4gCj4gPiA+
PiBTbywgcGFyZW50ID09IG1hc3Rlcj8gICAgCj4gPiA+IAo+ID4gPiB0b3AgbW9zdCBwYXJlbnQg
KHRoZSBvbmUgd2l0aG91dCBwYXJlbnQpID09IG1hc3RlciAhCj4gPiA+ICAgICAKPiA+ID4+IAo+
ID4gPj4gV2hlbiBJIGNyZWF0ZSBhIE1URCBvbnRvcCBvZiBVQkkgdXNpbmcgZ2x1ZWJpLCB3aG8g
d2lsbCBiZSBwYXJlbnQvbWFzdGVyPyAgICAKPiA+ID4gCj4gPiA+IEkgZG9uJ3QgcmVhbGx5IHVu
ZGVyc3RhbmQgdGhlIGlzc3VlIGhlcmU/ICAgIAo+ID4gCj4gPiBMZXQncyBzYXkgSSBoYXZlIG10
ZDAgd2l0aCBhbiB1YmkgYW5kIGEgdm9sdW1lICJ4eHgiLiBBZnRlciBlbmFibGluZwo+ID4gZ2x1
ZWJpIGEgbmV3IG10ZDEgd2lsbCBhcnJpdmUgb24gdGhlIHN5c3RlbS4KPiA+IFRoZSBzdGFja2lu
ZyBpcyBtdGQwIC0+IHViaSAodm9sdW1lIHh4eCkgLT4gbXRkMS4gIAo+IAo+IFRoaXMgaXMgbXVj
aCBjbGVhcmVyLCB0aGFua3MhCj4gCj4gPiBJcyBub3cgYSByZWxhdGlvbnNoaXAgYmV0d2VlbiBt
dGQxIGFuZCBtdGQwPyAgCj4gCj4gTm8gdGhlcmUgaXMgbm9uZS4gCj4gCj4gPiBJJ2QgZXhwZWN0
IG10ZDEncyBwYXJlbnQgYmVpbmcgbXRkMC4gIAo+IAo+IFRoaXMgd291bGQgYmUgYSBuZXcgZmVh
dHVyZSwgcmlnaHQ/IEkgZG9uJ3QgdGhpbmsgaXQgaXMgdGhlIGNhc2UgdG9kYXkuCgpXZSBkZWZp
bml0ZWx5IGRvbid0IHdhbnQgbXRkMSB0byBhcHBlYXIgYXMgYSBwYXJ0aXRpb24gb2YgbXRkMCBp
biB0aGF0CmNhc2UgKGJsb2NrcyBpbiBtdGQxIGNhbid0IGJlIG1hcHBlZCB0byBibG9ja3MgaW4g
bXRkMCB3aXRob3V0IHRoZSBVQkkKbGF5ZXIgYmVpbmcgaW52b2x2ZWQpLiBNYXliZSBpdCdkIGJl
IGNsZWFyZXIgaWYgd2UgbW92ZSB0aGUgcGFyZW50CmZpZWxkIHRvIG10ZF9wYXJ0IGFuZCBhZGQg
YW4gTVREX0lTX1BBUlRJVElPTiBmbGFnLiBPciBtYXliZSB3ZSBjYW4KanVzdCBjaG9vc2UgYSBi
ZXR0ZXIgbmFtZS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
