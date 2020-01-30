Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF0814E35E
	for <lists+linux-mtd@lfdr.de>; Thu, 30 Jan 2020 20:51:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xAM7MAU4dFHgqo0OxQ1pmqh7tvCaLk9YVSonpKFuC+k=; b=gTZuOk2Tq/xuig
	UszHiiEo715FcSL0GKpmSKFKNEkv5PB/P1Z+4yht+sUkX1eA2hDv3grSdxYcFpELh4H6dXLGGDrlt
	K8MkMD2hdMj9e4s2/pU01WTHm3nU+8uVD7NLljz4YrqaJjUSou/+HWqnWbLveUqlUC92kNCee4WFI
	+eF7f0EIutrq0SBzhwS1BAb5+VKJzDTAKMeLwgCIKIC4zWkevGSDJsBNNQbZ2Mvfz2m9HKEeM6NoG
	zs/4rzSDxdUjEeyzIJJaizr1TY22/JvOtieconKnIZXomZHoPCYXIT6v6h1H80rTXdqz9+bzzYwJL
	GlZvJyYk+Gj8DsbTiJgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixFqA-0004nD-Al; Thu, 30 Jan 2020 19:51:02 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixFq4-0004mX-DU; Thu, 30 Jan 2020 19:50:58 +0000
Received: from xps13 (10.196.23.93.rev.sfr.net [93.23.196.10])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 4F4EC100004;
 Thu, 30 Jan 2020 19:50:34 +0000 (UTC)
Date: Thu, 30 Jan 2020 20:50:30 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Brendan Higgins <brendanhiggins@google.com>
Subject: Re: [PATCH v1 2/7] mtd: rawnand: add unspecified HAS_IOMEM dependency
Message-ID: <20200130205030.0f58cb02@xps13>
In-Reply-To: <20200125162803.5a2375d7@xps13>
References: <20191211192742.95699-1-brendanhiggins@google.com>
 <20191211192742.95699-3-brendanhiggins@google.com>
 <20200109162303.35f4f0a3@xps13>
 <CAFd5g47VLB6zOJsSySAYrJie8hj-OkvOC89-z2b9xMBZ2bxvYA@mail.gmail.com>
 <20200125162803.5a2375d7@xps13>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_115056_592653_68D6031C 
X-CRM114-Status: GOOD (  17.26  )
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>, Richard Weinberger <richard@nod.at>,
 Jeff Dike <jdike@addtoit.com>, linux-um <linux-um@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-mtd@lists.infradead.org, David Gow <davidgow@google.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Piotr Sroka <piotrs@cadence.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGVsbG8sCgpNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPiB3cm90ZSBv
biBTYXQsIDI1IEphbiAyMDIwCjE2OjI4OjAzICswMTAwOgoKPiBIaSBCcmVuZGFuLAo+IAo+IEJy
ZW5kYW4gSGlnZ2lucyA8YnJlbmRhbmhpZ2dpbnNAZ29vZ2xlLmNvbT4gd3JvdGUgb24gRnJpLCAy
NCBKYW4gMjAyMAo+IDE4OjEyOjEyIC0wODAwOgo+IAo+ID4gT24gVGh1LCBKYW4gOSwgMjAyMCBh
dCA3OjIzIEFNIE1pcXVlbCBSYXluYWwgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5jb20+IHdyb3Rl
OiAgCj4gPiA+Cj4gPiA+IEhpIEJyZW5kYW4sCj4gPiA+Cj4gPiA+IEJyZW5kYW4gSGlnZ2lucyA8
YnJlbmRhbmhpZ2dpbnNAZ29vZ2xlLmNvbT4gd3JvdGUgb24gV2VkLCAxMSBEZWMgMjAxOQo+ID4g
PiAxMToyNzozNyAtMDgwMDoKPiA+ID4gICAgCj4gPiA+ID4gQ3VycmVudGx5IENPTkZJR19NVERf
TkFORF9DQURFTkNFIGltcGxpY2l0bHkgZGVwZW5kcyBvbgo+ID4gPiA+IENPTkZJR19IQVNfSU9N
RU09eTsgY29uc2VxdWVudGx5LCBvbiBhcmNoaXRlY3R1cmVzIHdpdGhvdXQgSU9NRU0gd2UgZ2V0
Cj4gPiA+ID4gdGhlIGZvbGxvd2luZyBidWlsZCBlcnJvcjoKPiA+ID4gPgo+ID4gPiA+IGxkOiBk
cml2ZXJzL210ZC9uYW5kL3Jhdy9jYWRlbmNlLW5hbmQtY29udHJvbGxlci5vOiBpbiBmdW5jdGlv
biBgY2FkZW5jZV9uYW5kX2R0X3Byb2JlLmNvbGQuMzEnOgo+ID4gPiA+IGRyaXZlcnMvbXRkL25h
bmQvcmF3L2NhZGVuY2UtbmFuZC1jb250cm9sbGVyLmM6Mjk2OTogdW5kZWZpbmVkIHJlZmVyZW5j
ZSB0byBgZGV2bV9wbGF0Zm9ybV9pb3JlbWFwX3Jlc291cmNlJwo+ID4gPiA+IGxkOiBkcml2ZXJz
L210ZC9uYW5kL3Jhdy9jYWRlbmNlLW5hbmQtY29udHJvbGxlci5jOjI5Nzc6IHVuZGVmaW5lZCBy
ZWZlcmVuY2UgdG8gYGRldm1faW9yZW1hcF9yZXNvdXJjZScKPiA+ID4gPgo+ID4gPiA+IEZpeCB0
aGUgYnVpbGQgZXJyb3IgYnkgYWRkaW5nIHRoZSB1bnNwZWNpZmllZCBkZXBlbmRlbmN5Lgo+ID4g
PiA+Cj4gPiA+ID4gUmVwb3J0ZWQtYnk6IEJyZW5kYW4gSGlnZ2lucyA8YnJlbmRhbmhpZ2dpbnNA
Z29vZ2xlLmNvbT4KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBCcmVuZGFuIEhpZ2dpbnMgPGJyZW5k
YW5oaWdnaW5zQGdvb2dsZS5jb20+Cj4gPiA+ID4gLS0tICAgIAo+ID4gPgo+ID4gPiBTb3JyeSBm
b3IgdGhlIGRlbGF5Lgo+ID4gPgo+ID4gPiBBY2tlZC1ieTogTWlxdWVsIFJheW5hbCA8bWlxdWVs
LnJheW5hbEBib290bGluLmNvbT4gICAgCj4gPiAKPiA+IEl0IGxvb2tzIGxpa2UgbXkgY2hhbmdl
IGhhcyBub3QgYmVlbiBhcHBsaWVkIHRvIG5hbmQvbmV4dDsgaXMgdGhpcyB0aGUKPiA+IGJyYW5j
aCBpdCBzaG91bGQgYmUgYXBwbGllZCB0bz8gSSBoYXZlIGFsc28gdmVyaWZpZWQgdGhhdCB0aGlz
IHBhdGNoCj4gPiBpc24ndCBpbiBsaW51eC1uZXh0IGFzIG9mIEphbiAyNHRoLgo+ID4gCj4gPiBJ
cyBtdGQvbGludXggdGhlIGNvcnJlY3QgdHJlZSBmb3IgdGhpcz8gT3IgZG8gSSBuZWVkIHRvIHJl
YWNoIG91dCB0bwo+ID4gc29tZW9uZSBlbHNlPyAgCj4gCj4gV2hlbiBJIHNlbnQgbXkgQWNrZWQt
YnkgSSBzdXBwb3NlZCBzb21lb25lIGVsc2Ugd291bGQgcGljayB0aGUgcGF0Y2gsCj4gYnV0IHRo
ZXJlIGlzIGFjdHVhbGx5IG5vIGRlcGVuZGVuY3kgd2l0aCBhbGwgdGhlIG90aGVyIHBhdGNoZXMg
c28gSQo+IGRvbid0IGtub3cgd2h5IEkgZGlkIGl0Li4uIFNvcnJ5IGFib3V0IHRoYXQuIEknbGwg
dGFrZSBpdCBhbnl3YXkgaW4gbXkKPiBQUiBmb3IgNS42LgoKSXQgaXMgYXBwbGllZCBvbiB0b3Ag
b2YgbXRkL25leHQgc2luY2UgYSBmZXcgZGF5cywgaXQgd2lsbCBiZSBwYXJ0IG9mCnRoZSA1LjYg
UFIuCgpTb3JyeSBmb3IgdGhlIGRlbGF5LgoKVGhhbmtzLApNaXF1w6hsCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1
c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtbXRkLwo=
