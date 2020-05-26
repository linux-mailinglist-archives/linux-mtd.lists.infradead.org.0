Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF2171BAED5
	for <lists+linux-mtd@lfdr.de>; Mon, 27 Apr 2020 22:08:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v1qfeUhyiq++OAu0eMCCJb4tlSlqovfusFWh+uMD8r8=; b=oig5nm4kC/Zi7y
	Pv/fiCr7kn9uljKmLoUYicEq2riXzyPv7HHqTFToXXOO45zBYyDgcEdSP55HIzBrdw/y7eLi/5gp2
	Zz8/BTmcVEY1dbCY9mmdpNysJEgScb8JL+e66qXyTOKAiguNweBcoXWXI64AdDeAg4ByT/DnhkAYT
	xy6u+XBOnayIxNaUuamnMjt8q+MmPTW8DgCYFbSryYgRlvgLgwu8gVhVM1a93/EzP62A8l1txuxEv
	z9V+lIV7rVcO2Bm8/rb4Dr/uDdt6siziPezWWdCblFIeBMwGbC/YirK4Uc+EJ8NSjVDEvCZWVQ06n
	hawL0rs0ujc7FNL3KEag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTA3d-0001fm-0K; Mon, 27 Apr 2020 20:08:49 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTA3S-0001eG-19
 for linux-mtd@lists.infradead.org; Mon, 27 Apr 2020 20:08:39 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 7DC6220006;
 Mon, 27 Apr 2020 20:08:35 +0000 (UTC)
Date: Mon, 27 Apr 2020 22:08:34 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: Re: [PATCH v2 1/3] mtd: lpddr: Fix bad logic in print_drs_error
Message-ID: <20200427220834.17083b3d@xps13>
In-Reply-To: <3fb0e29f5b601db8be2938a01d974b00c8788501.1588016644.git.gustavo@embeddedor.com>
References: <cover.1588016644.git.gustavo@embeddedor.com>
 <3fb0e29f5b601db8be2938a01d974b00c8788501.1588016644.git.gustavo@embeddedor.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_130838_202272_1056DDCE 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Cc: Joe Perches <joe@perches.com>, Richard Weinberger <richard@nod.at>,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 Vignesh Raghavendra <vigneshr@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgR3VzdGF2bywKCiJHdXN0YXZvIEEuIFIuIFNpbHZhIiA8Z3VzdGF2b0BlbWJlZGRlZG9yLmNv
bT4gd3JvdGUgb24gTW9uLCAyNyBBcHIKMjAyMCAxNDo1MDozNyAtMDUwMDoKCj4gVXBkYXRlIGxv
Z2ljIGZvciBicm9rZW4gdGVzdC4gVXNlIGEgbW9yZSBjb21tb24gbG9nZ2luZyBzdHlsZS4KPiAK
PiBJdCBhcHBlYXJzIHRoZSBsb2dpYyBpbiB0aGlzIGZ1bmN0aW9uIGlzIGJyb2tlbiBmb3IgdGhl
Cj4gY29uc2VjdXRpdmUgdGVzdHMgb2YKPiAKPiAgICAgICAgIGlmIChwcm9nX3N0YXR1cyAmIDB4
MykKPiAgICAgICAgICAgICAgICAgLi4uCj4gICAgICAgICBlbHNlIGlmIChwcm9nX3N0YXR1cyAm
IDB4MikKPiAgICAgICAgICAgICAgICAgLi4uCj4gICAgICAgICBlbHNlIChwcm9nX3N0YXR1cyAm
IDB4MSkKPiAgICAgICAgICAgICAgICAgLi4uCj4gCj4gTGlrZWx5IHRoZSBmaXJzdCB0ZXN0IHNo
b3VsZCBiZQo+IAo+ICAgICAgICAgaWYgKChwcm9nX3N0YXR1cyAmIDB4MykgPT0gMHgzKQo+IAo+
IEZvdW5kIGJ5IGluc3BlY3Rpb24gb2YgaW5jbHVkZSBmaWxlcyB1c2luZyBwcmludGsuCj4gCj4g
Rml4ZXM6IGViM2RiMjc1MDdmNyAoIltNVERdIExQRERSIFBGT1cgZGVmaW5pdGlvbiIpCj4gQ2M6
IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKPiBSZXBvcnRlZC1ieTogSm9lIFBlcmNoZXMgPGpvZUBw
ZXJjaGVzLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBHdXN0YXZvIEEuIFIuIFNpbHZhIDxndXN0YXZv
QGVtYmVkZGVkb3IuY29tPgo+IC0tLQo+IENoYW5nZXMgaW4gdjI6Cj4gIC0gTm9uZS4KPiAKPiAg
aW5jbHVkZS9saW51eC9tdGQvcGZvdy5oIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9t
dGQvcGZvdy5oIGIvaW5jbHVkZS9saW51eC9tdGQvcGZvdy5oCj4gaW5kZXggMTIyZjM0MzllMWFm
Li5jNjVkN2EzYmUzYzYgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9saW51eC9tdGQvcGZvdy5oCj4g
KysrIGIvaW5jbHVkZS9saW51eC9tdGQvcGZvdy5oCj4gQEAgLTEyOCw3ICsxMjgsNyBAQCBzdGF0
aWMgaW5saW5lIHZvaWQgcHJpbnRfZHJzX2Vycm9yKHVuc2lnbmVkIGRzcikKPiAgCj4gIAlpZiAo
IShkc3IgJiBEU1JfQVZBSUxBQkxFKSkKPiAgCQlwcmludGsoS0VSTl9OT1RJQ0UiRFNSLjE1OiAo
MCkgRGV2aWNlIG5vdCBBdmFpbGFibGVcbiIpOwo+IC0JaWYgKHByb2dfc3RhdHVzICYgMHgwMykK
PiArCWlmICgocHJvZ19zdGF0dXMgJiAweDAzKSA9PSAweDAzKQo+ICAJCXByaW50ayhLRVJOX05P
VElDRSJEU1IuOSw4OiAoMTEpIEF0dGVtcHQgdG8gcHJvZ3JhbSBpbnZhbGlkICIKPiAgCQkJCQkJ
ImhhbGYgd2l0aCA0MWggY29tbWFuZFxuIik7Cj4gIAllbHNlIGlmIChwcm9nX3N0YXR1cyAmIDB4
MDIpCgoKQWNrZWQtYnk6IE1pcXVlbCBSYXluYWwgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5jb20+
CgoKVGhhbmtzLApNaXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
