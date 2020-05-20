Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D92761DB567
	for <lists+linux-mtd@lfdr.de>; Wed, 20 May 2020 15:44:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t8qCH9EMufFs9P9hcKSe63RjccKj9uHhzNomF8BzBWs=; b=dHosTKMyqPxWjv
	OTgvgRy0Nz5T8BbXNegPpNhb42JHOr4P39hLWuhKEc8O7/QjMyAbwqA1aVyJ+etZ9jXvO0tY7SGES
	XykCJQPxQgb5AM20QQrYRzeQlnWGID5ojEPntqrxdgEtLKVYdzgqLz4XukAYWm+7hEOZK2cmMDBw1
	AZgAmqjrIZILdv0mlzzSrdABJRK0afzxfCXbxRoKK6kmXbR6l7FwN7JUdyKHakDGd3T7s2VtFF98N
	I+QKFy8ph26nWnXq0MzyFs8dLn44Ag6t/urGiYIDjTOS34BmsAd0IIirUQa8wtMzJSyq8TdyRy39j
	J8jcsUoQYsUEti/vRltw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbP0v-0004SR-IK; Wed, 20 May 2020 13:44:05 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbP0h-0004MY-Bw
 for linux-mtd@lists.infradead.org; Wed, 20 May 2020 13:43:53 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id EABB9100003;
 Wed, 20 May 2020 13:43:44 +0000 (UTC)
Date: Wed, 20 May 2020 15:43:43 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rickard X Andersson <Rickard.Andersson@axis.com>
Subject: Re: [PATCH 2/2] mtd: rawnand: Add timings for Kioxia TH58NVG2S3HBAI4
Message-ID: <20200520154343.2ce58cc6@xps13>
In-Reply-To: <1589981533129.2663@axis.com>
References: <1589981533129.2663@axis.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_064351_550550_9D2F02C4 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Boris Brezillon <bbrezillon@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgUmlja2FyZCwKClJpY2thcmQgWCBBbmRlcnNzb24gPFJpY2thcmQuQW5kZXJzc29uQGF4aXMu
Y29tPiB3cm90ZSBvbiBXZWQsIDIwIE1heQoyMDIwIDEzOjMyOjE0ICswMDAwOgoKPiBIaSBNaXF1
ZWwsCj4gCj4gPiBJIGp1c3QgYSBicmFuY2ggd2l0aCBhIG5ldyBoZWxwZXIgdG8gZmlsbCB0aGlz
IGZpZWxkLCBpdCBpcyBjYWxsZWQKPiA+IG9uZmlfZmluZF9lcXVpdmFsZW50X3Nkcl9tb2RlKCku
Cj4gPgo+ID4gSXQgaXMgb25seSBjb21waWxlIHRlc3RlZCBzbyBwbGVhc2UgdmVyaWZ5IGl0IHdv
cmtzLiAgCj4gCj4gSSBoYXZlIGNyZWF0ZWQgYSBuZXcgcGF0Y2hzZXQgdGhhdCBJIHdpbGwgc2Vu
ZCBzaG9ydGx5LiBUaGlzIHBhdGNoc2V0IGRvZXMgaG93ZXZlciBub3QgdXNlIG9uZmlfZmluZF9l
cXVpdmFsZW50X3Nkcl9tb2RlKC4uKSwgdGhhdCBjb3VsZCBiZSBhIGZ1dHVyZSBpbXByb3ZtZW50
LiBNeSBwYXRjaHNldCBmYWxscyBiYWNrIHRvIG1vZGUgMCBpZiB0aGUgc3BlY2lhbGl6ZWQgdGlt
aW5ncyBkb2VzIG5vdCB3b3JrIGZvciB0aGUgY29udHJvbGxlci4gCgpUaGFua3MgZm9yIHVwZGF0
aW5nIQoKQWN0dWFsbHkgSSB3cm90ZSBpdCBiZWNhdXNlIG9mIGEgcHJldmlvdXMgZGlzY3Vzc2lv
biB3aXRoIEJvcmlzIHdobwp0b2xkIG1lIHRoYXQgdGhpcyBtb2RlIGZpZWxkIHdvdWxkIGJlIGJh
ZGx5IHVuZGVyc3Rvb2QgYW5kIGhlIGFjdHVhbGx5CmdvdCBpdCByaWdodCBhcyBpbiB5b3VyIHBy
ZXZpb3VzIHN1Ym1pc3Npb24gdGhpcyBmaWVsZCB3YXMgc2V0IHRvIDAKd2hpbGUsIElJUkMsIHlv
dSB0b2xkIG1lIGl0IHdhcyBjbG9zZSB0byBtb2RlIDMuIFRoaXMgaXMgaW1wb3J0YW50IHRvCmNv
bnRyb2xsZXJzIHRoYXQgY2Fubm90IHR3ZWFrIHRoZSBwYXJhbWV0ZXJzIGJ1dCBqdXN0IHBpY2sg
YW4gT05GSQptb2RlLiBTbyB0aGUgdGltaW5ncyB0aGV5IGNob29zZSBtdXN0IGZpdCB0aGUgc2xv
d2VzdCBtaW5zIGFuZCBmYXN0ZXN0Cm1heHMgb2YgeW91ciBuZXcgc2V0IG9mIHRpbWluZ3MuIEhl
bmNlIHRoZSB1c2Ugb2YgdGhlIGhlbHBlciB3aGljaApzZWVtcyBuZWVkZWQuIEl0IGlzIGFjdHVh
bGx5IHByZXR0eSBzdHJhaWdodGZvcndhcmQgc28gSSBkb24ndAp1bmRlcnN0YW5kIHlvdXIgY2hv
aWNlIG9mIG5vdCBtYWtpbmcgdXNlIG9mIGl0PwoKQXMgdGhpcyBpcyB0aGUgcHJpbWFyeSBjb250
cmlidXRpb24gb2YgdGhpcyB0eXBlLCBJIHdvdWxkIGxpa2UgdG8gZ2V0Cml0IHJpZ2h0IHNvIHRo
YXQgb3RoZXIgY29udHJpYnV0b3JzIGNhbiByZWZlciB0byBpdCA6KQoKVGhhbmtzLApNaXF1w6hs
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
