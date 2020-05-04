Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8AE01C34B6
	for <lists+linux-mtd@lfdr.de>; Mon,  4 May 2020 10:44:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PmgpBm+kQn2Tw4YmpQoknz8FrI72hbCTQN9Zi/KMvRM=; b=aDeth1uc1zF7VN
	bzrJSkHsuRlO5V6joxPuyylGhoPRD02iiwR2V4iSvdyC+4kFZaXshpeP/Tg+A5Rq/a+UO1BOgHNer
	GRMZBWFwNm5tmjLiGsF8MWxV9ffPtaVZHPRK3WdyUPkJleLIJWrQ/jdlg2zfx5d4LH5HzhR1FqABu
	vDCk5wxhMlXlHzUMIwu5mlrNg5cBmGpcUP/maeGUwxTTSgqpRnaCDT34GG5fLRqfwKQnyRgyDUegX
	zrVmI5VF6G8KBhiZQIGnHzkz1qPcgOarIQcswJNR/7CIaGxN3DHOjeQD/eIcTbiL67ycqXrVH4FIi
	qjC9JNDnkEu9kuOIMTKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVWi0-0000Vd-90; Mon, 04 May 2020 08:44:16 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVWhn-0000Th-Q9
 for linux-mtd@lists.infradead.org; Mon, 04 May 2020 08:44:05 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 8DCEF240014;
 Mon,  4 May 2020 08:43:40 +0000 (UTC)
Date: Mon, 4 May 2020 10:43:39 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Ricardo Ribalda Delgado <ricardo@ribalda.com>
Subject: Re: [PATCH] mtd: Fix mtd not registered due to nvmem name collision
Message-ID: <20200504104339.31b4a858@xps13>
In-Reply-To: <20200430131721.360064-1-ricardo@ribalda.com>
References: <20200430131721.360064-1-ricardo@ribalda.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_014403_979094_0214D250 
X-CRM114-Status: GOOD (  17.36  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Ricardo Ribalda Delgado <ribalda@kernel.org>,
 Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 linux-kernel@vger.kernel.org, Boris Brezillon <boris.brezillon@collabora.com>,
 Alban Bedel <albeu@free.fr>, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgUmljaGFyZCwKClJpY2FyZG8gUmliYWxkYSBEZWxnYWRvIDxyaWNhcmRvQHJpYmFsZGEuY29t
PiB3cm90ZSBvbiBUaHUsIDMwIEFwciAyMDIwCjE1OjE3OjIxICswMjAwOgoKPiBGcm9tOiBSaWNh
cmRvIFJpYmFsZGEgRGVsZ2FkbyA8cmliYWxkYUBrZXJuZWwub3JnPgo+IAo+IFdoZW4gdGhlIG52
bWVtIGZyYW1ld29yayBpcyBlbmFibGVkLCBhIG52bWVtIGRldmljZSBpcyBjcmVhdGVkIHBlciBt
dGQKPiBkZXZpY2UvcGFydGl0aW9uLgo+IAo+IEl0IGlzIG5vdCB1bmNvbW1vbiB0aGF0IGEgZGV2
aWNlIGNhbiBoYXZlIG11bHRpcGxlIG10ZCBkZXZpY2VzIHdpdGgKPiBwYXJ0aXRpb25zIHRoYXQg
aGF2ZSB0aGUgc2FtZSBuYW1lLiBFZywgd2hlbiB0aGVyZSBEVCBvdmVybGF5IGlzIGFsbG93ZWQK
PiBhbmQgdGhlIHNhbWUgZGV2aWNlIHdpdGggbXRkIGlzIGF0dGFjaGVkIHR3aWNlLgo+IAo+IFVu
ZGVyIHRoYXQgY2lyY3Vtc3RhbmNlcywgdGhlIG10ZCBmYWlscyB0byByZWdpc3RlciBkdWUgdG8g
YSBuYW1lCj4gZHVwbGljYXRpb24gb24gdGhlIG52bWVtIGZyYW1ld29yay4KPiAKPiBXaXRoIHRo
aXMgcGF0Y2ggd2UgdXNlIHRoZSBtdGRYIG5hbWUgaW5zdGVhZCBvZiB0aGUgcGFydGl0aW9uIG5h
bWUsCj4gd2hpY2ggaXMgdW5pcXVlLgo+IAo+IFsgICAgOC45NDg5OTFdIHN5c2ZzOiBjYW5ub3Qg
Y3JlYXRlIGR1cGxpY2F0ZSBmaWxlbmFtZSAnL2J1cy9udm1lbS9kZXZpY2VzL1Byb2R1Y3Rpb24g
RGF0YScKPiBbICAgIDguOTQ4OTkyXSBDUFU6IDcgUElEOiAyNDYgQ29tbTogc3lzdGVtZC11ZGV2
ZCBOb3QgdGFpbnRlZCA1LjUuMC1xdGVjLXN0YW5kYXJkICMxMwo+IFsgICAgOC45NDg5OTNdIEhh
cmR3YXJlIG5hbWU6IEFNRCBEaWJibGVyL0RpYmJsZXIsIEJJT1MgMDUuMjIuMDQuMDAxOSAxMC8y
Ni8yMDE5Cj4gWyAgICA4Ljk0ODk5NF0gQ2FsbCBUcmFjZToKPiBbICAgIDguOTQ4OTk2XSAgZHVt
cF9zdGFjaysweDUwLzB4NzAKPiBbICAgIDguOTQ4OTk4XSAgc3lzZnNfd2Fybl9kdXAuY29sZCsw
eDE3LzB4MmQKPiBbICAgIDguOTQ5MDAwXSAgc3lzZnNfZG9fY3JlYXRlX2xpbmtfc2QuaXNyYS4w
KzB4YzIvMHhkMAo+IFsgICAgOC45NDkwMDJdICBidXNfYWRkX2RldmljZSsweDc0LzB4MTQwCj4g
WyAgICA4Ljk0OTAwNF0gIGRldmljZV9hZGQrMHgzNGIvMHg4NTAKPiBbICAgIDguOTQ5MDA2XSAg
bnZtZW1fcmVnaXN0ZXIucGFydC4wKzB4MWJmLzB4NjQwCj4gLi4uCj4gWyAgICA4Ljk0ODkyNl0g
bXRkIG10ZDg6IEZhaWxlZCB0byByZWdpc3RlciBOVk1FTSBkZXZpY2UKPiAKPiBGaXhlczogYzRk
ZmEyNWFiMzA3ICgibXRkOiBhZGQgc3VwcG9ydCBmb3IgcmVhZGluZyBNVEQgZGV2aWNlcyB2aWEg
dGhlIG52bWVtIEFQSSIpCj4gU2lnbmVkLW9mZi1ieTogUmljYXJkbyBSaWJhbGRhIERlbGdhZG8g
PHJpYmFsZGFAa2VybmVsLm9yZz4KPiAtLS0KPiAgZHJpdmVycy9tdGQvbXRkY29yZS5jIHwgMiAr
LQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9tdGQvbXRkY29yZS5jIGIvZHJpdmVycy9tdGQvbXRkY29yZS5j
Cj4gaW5kZXggMjkxNjY3NDIwOGIzLi4yOWQ0MTAwM2Q2ZTAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9tdGQvbXRkY29yZS5jCj4gKysrIGIvZHJpdmVycy9tdGQvbXRkY29yZS5jCj4gQEAgLTU1NSw3
ICs1NTUsNyBAQCBzdGF0aWMgaW50IG10ZF9udm1lbV9hZGQoc3RydWN0IG10ZF9pbmZvICptdGQp
Cj4gIAo+ICAJY29uZmlnLmlkID0gLTE7Cj4gIAljb25maWcuZGV2ID0gJm10ZC0+ZGV2Owo+IC0J
Y29uZmlnLm5hbWUgPSBtdGQtPm5hbWU7Cj4gKwljb25maWcubmFtZSA9IGRldl9uYW1lKCZtdGQt
PmRldik7Cj4gIAljb25maWcub3duZXIgPSBUSElTX01PRFVMRTsKPiAgCWNvbmZpZy5yZWdfcmVh
ZCA9IG10ZF9udm1lbV9yZWdfcmVhZDsKPiAgCWNvbmZpZy5zaXplID0gbXRkLT5zaXplOwoKV2Ug
aG9wZSB0aGlzIHdpbGwgZGVmaW5pdGVseSBmaXggdGhlIE5WTUVNIGR1cGxpY2F0ZSBuYW1lIGlz
c3VlLiBJZiBpdApkb2VzIG5vdCByZWxpYWJseSwgd2UgbWlnaHQgd2FudCB0byByZXZlcnQgdGhp
cyBwYXRjaCBhbmQgY3JlYXRlIGFuIE1URAp1bmlxdWUgSUQgZmllbGQgd2hpY2gsIGZvciBlYWNo
IE1URCBkZXZpY2UsIGNvbmNhdGVuYXRlcyB0aGUgbmFtZSBvZgppdHMgcGFyZW50IGFuZCBpdHMg
b3duIG10ZC0+bmFtZS4KCkFja2VkLWJ5OiBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJv
b3RsaW4uY29tPgoKVGhhbmtzLApNaXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBs
aXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRk
Lwo=
