Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4166CE5498
	for <lists+linux-mtd@lfdr.de>; Fri, 25 Oct 2019 21:45:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xDLRb+GOZwNE/bCixQzfuaTw2nedYYz6I3XNpHmWlZo=; b=UGM/7ouyu0VxtN
	4GIbH1bzwZaFvDgIMuuEIiDYVB7EmxZFq/GCnPYVtSLHw8VOu54QQG05ELoU9ke9yA7h6WqJ1oX/N
	LPesD1c9W9mWUh2hq5sLLsGzutapsvxr1NXQ9lO1KQWcpeRoUcXQzjP+gl8INbbITwfHqEmP8/xx7
	pVMiL1LW9E2xUrBQzKI6gK4tuqXXzghNziokDQ2JZ27JXd5qcEG4gMckdb4VcREcj6GQWBC8s4dff
	FzACZpXOUC64xPQKWiOEmbvKSINdPx+SgJ4ljhGQ9sateoBEFwakrPvQ0CmsQ93vK/lDIop8GFJNf
	wZH/kY5tDOWPGVXjeAEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO5WY-0001th-Pi; Fri, 25 Oct 2019 19:45:26 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO5WO-0001sp-3d
 for linux-mtd@lists.infradead.org; Fri, 25 Oct 2019 19:45:18 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id E2707C0008;
 Fri, 25 Oct 2019 19:45:03 +0000 (UTC)
Date: Fri, 25 Oct 2019 21:45:02 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: <linux-mtd@lists.infradead.org>
Subject: Re: [PATCH] MAINTAINERS: mtd/ubi/ubifs: Remove inactive maintainers
Message-ID: <20191025214502.49f674a7@xps13>
In-Reply-To: <20191017142229.3853-1-miquel.raynal@bootlin.com>
References: <20191017142229.3853-1-miquel.raynal@bootlin.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_124516_376809_652C5507 
X-CRM114-Status: GOOD (  16.97  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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
 Artem Bityutskiy <dedekind1@gmail.com>, Richard Weinberger <richard@nod.at>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Adrian Hunter <adrian.hunter@intel.com>, linux-kernel@vger.kernel.org,
 Marek Vasut <marek.vasut@gmail.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgRGF2aWQsCgpHZW50bGUgcGluZz8KCk1pcXVlbCBSYXluYWwgPG1pcXVlbC5yYXluYWxAYm9v
dGxpbi5jb20+IHdyb3RlIG9uIFRodSwgMTcgT2N0IDIwMTkKMTY6MjI6MjkgKzAyMDA6Cgo+IERl
c3BpdGUgdGhlaXIgc3Vic3RhbnRpYWwgcGVyc29uYWwgaW52ZXN0bWVudCBpbiB0aGUgTVREL1VC
SS9VQklGUyBhCj4gZmV3IHllYXJzIGJhY2ssIERhdmlkLCBCcmlhbiwgQXJ0ZW0gYW5kIEFkcmlh
biBhcmUgbm90IGFjdGl2ZWx5Cj4gbWFpbnRhaW5pbmcgdGhlIHN1YnN5c3RlbSBhbnltb3JlLiBX
ZSB3YXJtbHkgc2FsdXRlIHRoZW0gZm9yIGFsbCB0aGUKPiB3b3JrIHRoZXkgaGF2ZSBhY2hpZXZl
ZCBhbmQgd2lsbCBvZiBjb3Vyc2Ugc3RpbGwgd2VsY29tZSB0aGVpcgo+IHBhcnRpY2lwYXRpb24g
YW5kIHJldmlld3MuCj4gCj4gVGhhdCBzYWlkLCBNYXJlayByZXRpcmVkIGhpbXNlbGYgYSBmZXcg
d2Vla3MgYWdvIHF1b3RpbmcgSGFyYWxkIFsxXToKPiAKPiAgICAgICAgIEl0IG1hdHRlcnMgd2hv
IGhhcyB3aGljaCB0aXRsZSBhbmQgd2hlbi4gU2hvdWxkIHNvbWVib2R5IG5vdAo+ICAgICAgICAg
YmUgYW4gYWN0aXZlIG1haW50YWluZXIsIG1ha2Ugc3VyZSBoZSdzIG5vdCBsaXN0ZWQgYXMgc3Vj
aC4KPiAKPiBGb3IgdGhpcyBzYW1lIHJlYXNvbiwgbGV04oCZcyB0cmltIHRoZSBtYWludGFpbmVy
cyBsaXN0IHdpdGggdGhlCj4gYWN0dWFsbHkgYWN0aXZlIG9uZXMgb3ZlciB0aGUgcGFzdCB0d28g
eWVhcnMuCj4gCj4gWzFdIGh0dHA6Ly9sYWZvcmdlLmdudW1vbmtzLm9yZy9ibG9nLzIwMTgwMzA3
LW1jaGFyZHktZ3BsLwo+IAo+IENjOiBEYXZpZCBXb29kaG91c2UgPGR3bXcyQGluZnJhZGVhZC5v
cmc+Cj4gQ2M6IEJyaWFuIE5vcnJpcyA8Y29tcHV0ZXJzZm9ycGVhY2VAZ21haWwuY29tPgo+IENj
OiBBcnRlbSBCaXR5dXRza2l5IDxkZWRla2luZDFAZ21haWwuY29tPgo+IENjOiBBZHJpYW4gSHVu
dGVyIDxhZHJpYW4uaHVudGVyQGludGVsLmNvbT4KPiBDYzogTWFyZWsgVmFzdXQgPG1hcmVrLnZh
c3V0QGdtYWlsLmNvbT4KPiBDYzogTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290bGlu
LmNvbT4KPiBDYzogUmljaGFyZCBXZWluYmVyZ2VyIDxyaWNoYXJkQG5vZC5hdD4KPiBDYzogVmln
bmVzaCBSYWdoYXZlbmRyYSA8dmlnbmVzaHJAdGkuY29tPgo+IENjOiBUdWRvciBBbWJhcnVzIDx0
dWRvci5hbWJhcnVzQG1pY3JvY2hpcC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTWlxdWVsIFJheW5h
bCA8bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4KPiAtLS0KPiAgTUFJTlRBSU5FUlMgfCA1IC0t
LS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9N
QUlOVEFJTkVSUyBiL01BSU5UQUlORVJTCj4gaW5kZXggMDYzMjQyMmNlOWQ0Li4wZTVlMDczNmVl
NTUgMTAwNjQ0Cj4gLS0tIGEvTUFJTlRBSU5FUlMKPiArKysgYi9NQUlOVEFJTkVSUwo+IEBAIC0x
MDUyOCw4ICsxMDUyOCw2IEBAIEY6CWluY2x1ZGUvbGludXgvdm1hbGxvYy5oCj4gIEY6CW1tLwo+
ICAKPiAgTUVNT1JZIFRFQ0hOT0xPR1kgREVWSUNFUyAoTVREKQo+IC1NOglEYXZpZCBXb29kaG91
c2UgPGR3bXcyQGluZnJhZGVhZC5vcmc+Cj4gLU06CUJyaWFuIE5vcnJpcyA8Y29tcHV0ZXJzZm9y
cGVhY2VAZ21haWwuY29tPgo+ICBNOglNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3Rs
aW4uY29tPgo+ICBNOglSaWNoYXJkIFdlaW5iZXJnZXIgPHJpY2hhcmRAbm9kLmF0Pgo+ICBNOglW
aWduZXNoIFJhZ2hhdmVuZHJhIDx2aWduZXNockB0aS5jb20+Cj4gQEAgLTE2NTc5LDggKzE2NTc3
LDYgQEAgRjoJZHJpdmVycy9tZWRpYS9wY2kvdHc2ODZ4Lwo+ICAKPiAgVUJJIEZJTEUgU1lTVEVN
IChVQklGUykKPiAgTToJUmljaGFyZCBXZWluYmVyZ2VyIDxyaWNoYXJkQG5vZC5hdD4KPiAtTToJ
QXJ0ZW0gQml0eXV0c2tpeSA8ZGVkZWtpbmQxQGdtYWlsLmNvbT4KPiAtTToJQWRyaWFuIEh1bnRl
ciA8YWRyaWFuLmh1bnRlckBpbnRlbC5jb20+Cj4gIEw6CWxpbnV4LW10ZEBsaXN0cy5pbmZyYWRl
YWQub3JnCj4gIFQ6CWdpdCBnaXQ6Ly9naXQuaW5mcmFkZWFkLm9yZy91Ymlmcy0yLjYuZ2l0Cj4g
IFc6CWh0dHA6Ly93d3cubGludXgtbXRkLmluZnJhZGVhZC5vcmcvZG9jL3ViaWZzLmh0bWwKPiBA
QCAtMTY2OTcsNyArMTY2OTMsNiBAQCBTOglNYWludGFpbmVkCj4gIEY6CWRyaXZlcnMvc2NzaS91
ZnMvdWZzLW1lZGlhdGVrKgo+ICAKPiAgVU5TT1JURUQgQkxPQ0sgSU1BR0VTIChVQkkpCj4gLU06
CUFydGVtIEJpdHl1dHNraXkgPGRlZGVraW5kMUBnbWFpbC5jb20+Cj4gIE06CVJpY2hhcmQgV2Vp
bmJlcmdlciA8cmljaGFyZEBub2QuYXQ+Cj4gIFc6CWh0dHA6Ly93d3cubGludXgtbXRkLmluZnJh
ZGVhZC5vcmcvCj4gIEw6CWxpbnV4LW10ZEBsaXN0cy5pbmZyYWRlYWQub3JnCgpUaGFua3MsCk1p
cXXDqGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
