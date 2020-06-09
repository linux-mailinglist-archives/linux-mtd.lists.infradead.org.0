Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46C3B1F3D79
	for <lists+linux-mtd@lfdr.de>; Tue,  9 Jun 2020 16:02:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QwiMr+cAE6xZa6NzpePzShEcSfQpXLCWCqtsv33HSvw=; b=ZVXn+un5FU2zJa
	q26nZAkpBgD9OtbgfUtkiMKfvCqWaN1yrV4eVVpUW2dHMsQtegpOXhksY+uzaoi4HCfKuRPmOre+7
	IsxwEVad32CVrSX0l6rYv7HDixstpYfJ5JVvKkQF8KWyWDNa1jgsjVrtuP769wBElNQOYQ6j1Q/N2
	BEsmaXHCmxjPmqatV2KmalMLUTQpFCfFEiNj7uqfOgS2xy9Vy1ngWhMYz0LthP4jplDBwbR6wegC0
	C8nwbsn/PETiI0MEIw4sMsH+p4newYnE9fMhS/ZDFgkKHggdbjhDXxFXyEBDrX/RLe61um3U9nR+Q
	gkLF94rVNvtLak3EJYtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiepm-0006Ag-Oh; Tue, 09 Jun 2020 14:02:34 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiepg-00069m-5a
 for linux-mtd@lists.infradead.org; Tue, 09 Jun 2020 14:02:30 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id E1290240020;
 Tue,  9 Jun 2020 14:02:18 +0000 (UTC)
Date: Tue, 9 Jun 2020 16:02:17 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Sivaprakash Murugesan <sivaprak@codeaurora.org>
Subject: Re: [PATCH V2 1/2] mtd: rawnand: qcom: remove write to unavailable
 register
Message-ID: <20200609160217.0b111883@xps13>
In-Reply-To: <1591701056-3944-2-git-send-email-sivaprak@codeaurora.org>
References: <1591701056-3944-1-git-send-email-sivaprak@codeaurora.org>
 <1591701056-3944-2-git-send-email-sivaprak@codeaurora.org>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_070228_349551_33FAB407 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.178.230 listed in wl.mailspike.net]
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
Cc: peter.ujfalusi@ti.com, richard@nod.at, linux-mtd@lists.infradead.org,
 vigneshr@ti.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgU2l2YXByYWthc2gsCgpTaXZhcHJha2FzaCBNdXJ1Z2VzYW4gPHNpdmFwcmFrQGNvZGVhdXJv
cmEub3JnPiB3cm90ZSBvbiBUdWUsICA5IEp1bgoyMDIwIDE2OjQwOjU1ICswNTMwOgoKPiBTRkxB
U0hDX0JVUlNUX0NGRyByZWdpc3RlciBpcyBub3QgYXZhaWxhYmxlIG9uIGFsbCBpcHEgbmFuZCBw
bGF0Zm9ybXMsCj4gaXQgaXMgYXZhaWxhYmxlIG9ubHkgb24gaXBxODA2NCBkZXZpY2VzIGFuZCB0
aGUgbmFuZCBjb250cm9sbGVyIHdvcmtzCj4gd2l0aG91dCBjb25maWd1cmluZyB0aGVzZSByZWdp
c3RlcnMgaW4gdGhpcyBwbGF0Zm9ybSwgc28gcmVnaXN0ZXIgd3JpdGUKPiB0byB0aGlzIGNhbiBi
ZSByZW1vdmVkLgoKTWF5YmUgaXQgd29ya3MgYmVjYXVzZSB0aGUgYm9vdGxvYWRlciBpcyBzZXR0
aW5nIHRoZSByZWdpc3RlciBpdHNlbGYuCldoYXQgaWYgeW91IHVzZSBhIGRpZmZlcmVudCBib290
bG9hZGVyLCBvciB0aGUgc2FtZSBib290bG9hZGVyIHdpdGhvdXQKTkFORCBzdXBwb3J0PwoKSSBk
b24ndCB0aGluayB0aGlzIGlzIGEgcHJvcGVyIGZpeCwgeW91IHNob3VsZCBpbnN0ZWFkIGhhdmUg
YSBkaWZmZXJlbnQKY29tcGF0aWJsZSBpZiB0aGUgSVAgaXMgbm90IHRoZSBzYW1lIGFuZCBkZXBl
bmRpbmcgb24gdGhpcyBjb21wYXRpYmxlCmRvIHRoZSB3cml0ZSwgb3Igbm90LgoKPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBTaXZhcHJha2FzaCBNdXJ1Z2VzYW4gPHNpdmFwcmFrQGNvZGVhdXJvcmEub3Jn
Pgo+IC0tLQo+ICBkcml2ZXJzL210ZC9uYW5kL3Jhdy9xY29tX25hbmRjLmMgfCAyIC0tCj4gIDEg
ZmlsZSBjaGFuZ2VkLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL210
ZC9uYW5kL3Jhdy9xY29tX25hbmRjLmMgYi9kcml2ZXJzL210ZC9uYW5kL3Jhdy9xY29tX25hbmRj
LmMKPiBpbmRleCA1YjExYzcwLi5lMGFmYTJjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbXRkL25h
bmQvcmF3L3Fjb21fbmFuZGMuYwo+ICsrKyBiL2RyaXZlcnMvbXRkL25hbmQvcmF3L3Fjb21fbmFu
ZGMuYwo+IEBAIC0zNiw3ICszNiw2IEBACj4gICNkZWZpbmUJTkFORF9ERVZfQ01EMQkJCTB4YTQK
PiAgI2RlZmluZQlOQU5EX0RFVl9DTUQyCQkJMHhhOAo+ICAjZGVmaW5lCU5BTkRfREVWX0NNRF9W
TEQJCTB4YWMKPiAtI2RlZmluZQlTRkxBU0hDX0JVUlNUX0NGRwkJMHhlMAo+ICAjZGVmaW5lCU5B
TkRfRVJBU0VEX0NXX0RFVEVDVF9DRkcJMHhlOAo+ICAjZGVmaW5lCU5BTkRfRVJBU0VEX0NXX0RF
VEVDVF9TVEFUVVMJMHhlYwo+ICAjZGVmaW5lCU5BTkRfRUJJMl9FQ0NfQlVGX0NGRwkJMHhmMAo+
IEBAIC0yNzc0LDcgKzI3NzMsNiBAQCBzdGF0aWMgaW50IHFjb21fbmFuZGNfc2V0dXAoc3RydWN0
IHFjb21fbmFuZF9jb250cm9sbGVyICpuYW5kYykKPiAgCXUzMiBuYW5kX2N0cmw7Cj4gIAo+ICAJ
Lyoga2lsbCBvbmVuYW5kICovCj4gLQluYW5kY193cml0ZShuYW5kYywgU0ZMQVNIQ19CVVJTVF9D
RkcsIDApOwo+ICAJbmFuZGNfd3JpdGUobmFuZGMsIGRldl9jbWRfcmVnX2FkZHIobmFuZGMsIE5B
TkRfREVWX0NNRF9WTEQpLAo+ICAJCSAgICBOQU5EX0RFVl9DTURfVkxEX1ZBTCk7Cj4gIAoKVGhh
bmtzLApNaXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
