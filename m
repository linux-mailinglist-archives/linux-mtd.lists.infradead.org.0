Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D77C51E0742
	for <lists+linux-mtd@lfdr.de>; Mon, 25 May 2020 08:48:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VTUHhiETYx+B5BJMdTtMAoM0F1D1esDWt6QFAsPO6zQ=; b=A8xWyDt0R30DWU
	scwvTB7XBY9SDZXbXxZxM/d+J/VFWKRgwzT/OIMiwYz9VuXVT+lt2BLoWkMijMVWkiaNipZjZqM4K
	+svcZ5juu/VnnEqiCzscleSowTNwc1hxJ6QsSK7BjCcHgju86xkxQ5fl2hO1xsBz51JLcaxKd8Rej
	sxQ4f8DtiVWVAOrv+YF4iJd9IvIQgLE8UNJvkqzK6K+trnZCun0MKOwCx3lqkbodN4p1scAOuojWr
	BAun0Q3yaF4fEkY0Wg8ZvgvUR18aPuJaAX6tHXiKEhwAz/rs1rmJ5wsUTdJ4B0BBCEF5g+H+r5FPo
	V99zuVO7kniz0teD5q4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd6tr-0007y3-Jv; Mon, 25 May 2020 06:47:51 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd6tf-0007xd-K5
 for linux-mtd@lists.infradead.org; Mon, 25 May 2020 06:47:40 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 57A9E2A063E;
 Mon, 25 May 2020 07:47:38 +0100 (BST)
Date: Mon, 25 May 2020 08:47:35 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH 17/17] mtd: rawnand: nandsim: Reorganize
 ns_cleanup_module()
Message-ID: <20200525084735.0ca0dad3@collabora.com>
In-Reply-To: <20200525084637.328d2872@collabora.com>
References: <20200509191431.15862-1-miquel.raynal@bootlin.com>
 <20200509191431.15862-18-miquel.raynal@bootlin.com>
 <CAFLxGvzU2ESxZ74cve9w=CLBY2v95MMMJqzOFEmCAhVHYF5VvA@mail.gmail.com>
 <20200525001328.6b52da1f@xps13>
 <20200525084637.328d2872@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_234739_787458_D4CE5A76 
X-CRM114-Status: GOOD (  15.39  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard.weinberger@gmail.com>,
 Richard Weinberger <richard@nod.at>, dedekind@infradead.org,
 linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T24gTW9uLCAyNSBNYXkgMjAyMCAwODo0NjozNyArMDIwMApCb3JpcyBCcmV6aWxsb24gPGJvcmlz
LmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPiB3cm90ZToKCj4gT24gTW9uLCAyNSBNYXkgMjAyMCAw
MDoxMzoyOCArMDIwMAo+IE1pcXVlbCBSYXluYWwgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5jb20+
IHdyb3RlOgo+IAo+ID4gSGkgUmljaGFyZCwKPiA+IAo+ID4gUmljaGFyZCBXZWluYmVyZ2VyIDxy
aWNoYXJkLndlaW5iZXJnZXJAZ21haWwuY29tPiB3cm90ZSBvbiBTdW4sIDI0IE1heQo+ID4gMjAy
MCAyMzozNzoxMyArMDIwMDoKPiA+ICAgCj4gPiA+IE9uIFNhdCwgTWF5IDksIDIwMjAgYXQgOTox
OSBQTSBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPiB3cm90ZTogICAg
Cj4gPiA+ID4gICAgICAgICBuc19kZWJ1Z2ZzX3JlbW92ZShucyk7Cj4gPiA+ID4gLSAgICAgICBu
c19mcmVlKG5zKTsgICAgLyogRnJlZSBuYW5kc2ltIHByaXZhdGUgcmVzb3VyY2VzICovCj4gPiA+
ID4gLSAgICAgICBuYW5kX3JlbGVhc2UoY2hpcCk7IC8qIFVucmVnaXN0ZXIgZHJpdmVyICovCj4g
PiA+ID4gLSAgICAgICBrZnJlZShucyk7ICAgICAgICAvKiBGcmVlIG90aGVyIHN0cnVjdHVyZXMg
Ki8KPiA+ID4gPiAtICAgICAgIG5zX2ZyZWVfbGlzdHMoKTsKPiA+ID4gPiArICAgICAgIFdBUk5f
T04obXRkX2RldmljZV91bnJlZ2lzdGVyKG5zbXRkKSk7Cj4gPiA+ID4gKyAgICAgICBuc19mcmVl
KG5zKTsKPiA+ID4gPiArICAgICAgIGtmcmVlKGVyYXNlX2Jsb2NrX3dlYXIpOwo+ID4gPiA+ICsg
ICAgICAgbmFuZF9jbGVhbnVwKGNoaXApOwo+ID4gPiA+ICsgICAgICAgbGlzdF9mb3JfZWFjaF9z
YWZlKHBvcywgbiwgJmdyYXZlX3BhZ2VzKSB7Cj4gPiA+ID4gKyAgICAgICAgICAgICAgIGtmcmVl
KGxpc3RfZW50cnkocG9zLCBzdHJ1Y3QgZ3JhdmVfcGFnZSwgbGlzdCkpOwo+ID4gPiA+ICsgICAg
ICAgICAgICAgICBsaXN0X2RlbChwb3MpOyAgICAgIAo+ID4gPiAKPiA+ID4gQXJlIHlvdSBzdXJl
IHlvdSBjYW4gdXNlIHBvcyBhZnRlciBmcmVlaW5nIHRoZSBlbnRyeT8KPiA+ID4gU21lbGxzIGxp
a2UgdXNlIGFmdGVyIGZyZWUuCj4gPiA+ICAgICAKPiA+IAo+ID4gTW1tbWgsIEkgc2hvdWxkIHBy
b2JhYmx5IGludmVydCB0aG9zZSB0d28gbGluZXMsIGZpcnN0IGNhbGwgbGlzdF9kZWwoKQo+ID4g
YW5kIHRoZW4gY2FsbCBrZnJlZSgpIG9uIGxpc3RfZW50cnkoKS4gIAo+IAo+IFlvdSBjYW4gYWxz
byB1c2UgIGxpc3RfZm9yX2VhY2hfZW50cnlfc2FmZSgpOgo+IAo+IAlzdHJ1Y3QgZ3JhdmVfcGFn
ZSAqcG9zLCAqbjsKPiAKPiAJLi4uCj4gCj4gCWxpc3RfZm9yX2VhY2hfc2FmZShwb3MsIG4sICZn
cmF2ZV9wYWdlcywgbGlzdCkgewoKCWxpc3RfZm9yX2VhY2hfZW50cnlfc2FmZShwb3MsIG4sICZn
cmF2ZV9wYWdlcywgbGlzdCkgewoKPiAJCWxpc3RfZGVsKCZwb3MtPmxpc3QpOwo+IAkJa2ZyZWUo
cG9zKTsKPiAJfQo+IAo+ID4gCj4gPiBUaGFua3MgZm9yIG5vdGljaW5nIQo+ID4gTWlxdcOobCAg
Cj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
