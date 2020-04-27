Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C8231BA646
	for <lists+linux-mtd@lfdr.de>; Mon, 27 Apr 2020 16:22:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hIHMfCwzbseJFbeZrSZGOGvtxtFl71jPGbtHcVUKAEk=; b=scVQFwstRfCUBO
	EdXnPZgboj6sdIwl4DpunJTpTz1WEbqyYXWUSE0gawCHVgj7Ddqt1xxVAFkrCtI04pVzui7nLTFWw
	VlUxYqCYbU7fJTSH/zmXzU/d8xZqXnTigSHyTeEo2E6X+0QmFwmRKiGftf3ntU66wFkbI4l60AKQ+
	zsWqQ7vDFfd0XZYPb0TeWXOxSCPgZzXgmHE9mtBMfpo2OAYKZLn6LJqiWOv3mjtp50vPnwq73Myxg
	AX9Ux9AQH49tEwY4n/Z93KBlVsf7vF8A6LS/B1tbXXciXho3rRMJT38iqxn2pDYm4bqGRti5e0tjg
	vJZdrKMSO0zJCtU5ZxdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT4eg-0002hf-B7; Mon, 27 Apr 2020 14:22:42 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT4eW-0002gZ-Sd
 for linux-mtd@lists.infradead.org; Mon, 27 Apr 2020 14:22:34 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id AB04AFF810;
 Mon, 27 Apr 2020 14:22:23 +0000 (UTC)
Date: Mon, 27 Apr 2020 16:22:22 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Ricardo Ribalda Delgado <ribalda@kernel.org>
Subject: Re: [PATCH v2] mtd: Fix mtd not the same name not registered if nvmem
Message-ID: <20200427162222.1c2b2c85@xps13>
In-Reply-To: <CAPybu_34nSmbu4JMK-uA3SWrj_eMUftZ8S6zf1Vpg3Etkz3SPw@mail.gmail.com>
References: <20200401100240.445447-1-ribalda@kernel.org>
 <20200402065953.9974-1-ribalda@kernel.org>
 <CAPybu_34nSmbu4JMK-uA3SWrj_eMUftZ8S6zf1Vpg3Etkz3SPw@mail.gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_072233_056460_670D4FA2 
X-CRM114-Status: GOOD (  15.06  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, LKML <linux-kernel@vger.kernel.org>,
 Boris Brezillon <boris.brezillon@collabora.com>, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgUmljYXJkbywKClJpY2FyZG8gUmliYWxkYSBEZWxnYWRvIDxyaWJhbGRhQGtlcm5lbC5vcmc+
IHdyb3RlIG9uIFR1ZSwgMTQgQXByIDIwMjAKMTU6NDc6MjMgKzAyMDA6Cgo+IFBpbmc/Cj4gCj4g
T24gVGh1LCBBcHIgMiwgMjAyMCBhdCA4OjU5IEFNIFJpY2FyZG8gUmliYWxkYSBEZWxnYWRvCj4g
PHJpYmFsZGFAa2VybmVsLm9yZz4gd3JvdGU6Cj4gPgo+ID4gV2hlbiB0aGUgbnZtZW0gZnJhbWV3
b3JrIGlzIGVuYWJsZWQsIGEgbnZtZW0gZGV2aWNlIGlzIGNyZWF0ZWQgcGVyIG10ZAo+ID4gZGV2
aWNlL3BhcnRpdGlvbi4KPiA+Cj4gPiBJdCBpcyBub3QgdW5jb21tb24gdGhhdCBhIGRldmljZSBj
YW4gaGF2ZSBtdWx0aXBsZSBtdGQgZGV2aWNlcyB3aXRoCj4gPiBwYXJ0aXRpb25zIHRoYXQgaGF2
ZSB0aGUgc2FtZSBuYW1lLiBFZywgd2hlbiB0aGVyZSBEVCBvdmVybGF5IGlzIGFsbG93ZWQKPiA+
IGFuZCB0aGUgc2FtZSBkZXZpY2Ugd2l0aCBtdGQgaXMgYXR0YWNoZWQgdHdpY2UuCj4gPgo+ID4g
VW5kZXIgdGhhdCBjaXJjdW1zdGFuY2VzLCB0aGUgbXRkIGZhaWxzIHRvIHJlZ2lzdGVyIGR1ZSB0
byBhIG5hbWUKPiA+IGR1cGxpY2F0aW9uIG9uIHRoZSBudm1lbSBmcmFtZXdvcmsuCj4gPgo+ID4g
V2l0aCB0aGlzIHBhdGNoIHdlIGFkZCBhIF8xLCBfMiwgX1ggdG8gdGhlIHN1YnNlcXVlbnQgbmFt
ZXMgaWYgdGhlcmUgaXMKPiA+IGEgY29sbGl0aW9uLCBhbmQgdGhyb3cgYSB3YXJuaW5nLCBpbnN0
ZWFkIG9mIG5vdCBzdGFydGluZyB0aGUgbXRkCj4gPiBkZXZpY2UuCj4gPgo+ID4gWyAgICA4Ljk0
ODk5MV0gc3lzZnM6IGNhbm5vdCBjcmVhdGUgZHVwbGljYXRlIGZpbGVuYW1lICcvYnVzL252bWVt
L2RldmljZXMvUHJvZHVjdGlvbiBEYXRhJwo+ID4gWyAgICA4Ljk0ODk5Ml0gQ1BVOiA3IFBJRDog
MjQ2IENvbW06IHN5c3RlbWQtdWRldmQgTm90IHRhaW50ZWQgNS41LjAtcXRlYy1zdGFuZGFyZCAj
MTMKPiA+IFsgICAgOC45NDg5OTNdIEhhcmR3YXJlIG5hbWU6IEFNRCBEaWJibGVyL0RpYmJsZXIs
IEJJT1MgMDUuMjIuMDQuMDAxOSAxMC8yNi8yMDE5Cj4gPiBbICAgIDguOTQ4OTk0XSBDYWxsIFRy
YWNlOgo+ID4gWyAgICA4Ljk0ODk5Nl0gIGR1bXBfc3RhY2srMHg1MC8weDcwCj4gPiBbICAgIDgu
OTQ4OTk4XSAgc3lzZnNfd2Fybl9kdXAuY29sZCsweDE3LzB4MmQKPiA+IFsgICAgOC45NDkwMDBd
ICBzeXNmc19kb19jcmVhdGVfbGlua19zZC5pc3JhLjArMHhjMi8weGQwCj4gPiBbICAgIDguOTQ5
MDAyXSAgYnVzX2FkZF9kZXZpY2UrMHg3NC8weDE0MAo+ID4gWyAgICA4Ljk0OTAwNF0gIGRldmlj
ZV9hZGQrMHgzNGIvMHg4NTAKPiA+IFsgICAgOC45NDkwMDZdICBudm1lbV9yZWdpc3Rlci5wYXJ0
LjArMHgxYmYvMHg2NDAKPiA+IC4uLgo+ID4gWyAgICA4Ljk0ODkyNl0gbXRkIG10ZDg6IEZhaWxl
ZCB0byByZWdpc3RlciBOVk1FTSBkZXZpY2UKPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBSaWNhcmRv
IFJpYmFsZGEgRGVsZ2FkbyA8cmliYWxkYUBrZXJuZWwub3JnPgoKVGhhbmtzIGZvciBwcm9wb3Np
bmcgdGhpcyBjaGFuZ2UuIEluZGVlZCB3ZSBhcmUgYXdhcmUgb2YgdGhlIHByb2JsZW0KYW5kIHRo
ZSBiZXN0IHNvbHV0aW9uIHRoYXQgd2UgY291bGQgY29tZSB1cCB3aXRoIHdhcyB0byBjcmVhdGUg
YW4KYWRkaXRpb25hbCAidW5pcXVlX25hbWUiIGZpZWxkIHRvIHRoZSBtdGRfaW5mbyBzdHJ1Y3R1
cmUuIFRoaXMgbmV3CmZpZWxkIHdvdWxkIGhhdmUgdGhlIGZvcm06CgogICAgWzxwYXJlbnQtdW5p
cXVlLW5hbWU+PHNlcGFyYXRvcj5dPG10ZC1uYW1lPgoKVGhlIHNlcGFyYXRvciBtaWdodCBiZSAn
ficgKGJ1dCBJIGFtIGNvbXBsZXRlbHkgb3BlbiBvbiB0aGF0KSwgYW5kIHRoYXQKd291bGQgZ2l2
ZSBmb3IgaW5zdGFuY2U6CgogICAgbXktY29udHJvbGxlcn5teS1kZXZpY2V+bXktcGFydH5teXN1
Yi1wYXJ0CgpUaGVuLCB5b3UgbWlnaHQgdXNlIHRoaXMgbXRkLT51bmlxdWVfbmFtZSBpbnN0ZWFk
IG9mIG10ZC0+bmFtZS4gV291bGQKeW91IGdpdmUgdGhpcyBsb2dpYyBhIHRyeT8KClRoYW5rcywK
TWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
