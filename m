Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD221E03A1
	for <lists+linux-mtd@lfdr.de>; Mon, 25 May 2020 00:13:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qR/yJwGkVso8oF/ecj5d5Q4J7rtdZLBkJ2IcVJOTaCc=; b=nhFvca+9yHl2S9
	k2dOUUZ+77y9GiHy5QYgGFo3+MsiXpMPLT6l6l3CSGHMfD5Izh8RDtQlZRfyaSF7SmjbjIhH44E8m
	x/dG3sOseEX8gDC5+azPbfwK9lhTNV0ecoMsalB5++a7lQTU47sVhes6osWakz69DMs/tuEn/3j7T
	Mb0pEXN+5WXt5nMECyiHttgziavzDwiqwRIUPL9tSUYOAQz7yHiDvcez0lLGaDanpQI/8yNAQz0Ow
	FiBeQcCprqmBg4LDHP399tlGS8WNQlG9t5VFIOe0mu6uittouW9t2ZyWbSvCy+42xoOZ6o50g+wv5
	xq37wHcASHe9xZVjfBHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcysH-0001gs-15; Sun, 24 May 2020 22:13:41 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcys9-0001gZ-1Y
 for linux-mtd@lists.infradead.org; Sun, 24 May 2020 22:13:34 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 0B62E20007;
 Sun, 24 May 2020 22:13:29 +0000 (UTC)
Date: Mon, 25 May 2020 00:13:28 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard.weinberger@gmail.com>
Subject: Re: [PATCH 17/17] mtd: rawnand: nandsim: Reorganize
 ns_cleanup_module()
Message-ID: <20200525001328.6b52da1f@xps13>
In-Reply-To: <CAFLxGvzU2ESxZ74cve9w=CLBY2v95MMMJqzOFEmCAhVHYF5VvA@mail.gmail.com>
References: <20200509191431.15862-1-miquel.raynal@bootlin.com>
 <20200509191431.15862-18-miquel.raynal@bootlin.com>
 <CAFLxGvzU2ESxZ74cve9w=CLBY2v95MMMJqzOFEmCAhVHYF5VvA@mail.gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_151333_219158_1081AA1B 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.200 listed in wl.mailspike.net]
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
 Tudor Ambarus <Tudor.Ambarus@microchip.com>, dedekind@infradead.org,
 Richard Weinberger <richard@nod.at>,
 Boris Brezillon <boris.brezillon@collabora.com>, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgUmljaGFyZCwKClJpY2hhcmQgV2VpbmJlcmdlciA8cmljaGFyZC53ZWluYmVyZ2VyQGdtYWls
LmNvbT4gd3JvdGUgb24gU3VuLCAyNCBNYXkKMjAyMCAyMzozNzoxMyArMDIwMDoKCj4gT24gU2F0
LCBNYXkgOSwgMjAyMCBhdCA5OjE5IFBNIE1pcXVlbCBSYXluYWwgPG1pcXVlbC5yYXluYWxAYm9v
dGxpbi5jb20+IHdyb3RlOgo+ID4gICAgICAgICBuc19kZWJ1Z2ZzX3JlbW92ZShucyk7Cj4gPiAt
ICAgICAgIG5zX2ZyZWUobnMpOyAgICAvKiBGcmVlIG5hbmRzaW0gcHJpdmF0ZSByZXNvdXJjZXMg
Ki8KPiA+IC0gICAgICAgbmFuZF9yZWxlYXNlKGNoaXApOyAvKiBVbnJlZ2lzdGVyIGRyaXZlciAq
Lwo+ID4gLSAgICAgICBrZnJlZShucyk7ICAgICAgICAvKiBGcmVlIG90aGVyIHN0cnVjdHVyZXMg
Ki8KPiA+IC0gICAgICAgbnNfZnJlZV9saXN0cygpOwo+ID4gKyAgICAgICBXQVJOX09OKG10ZF9k
ZXZpY2VfdW5yZWdpc3Rlcihuc210ZCkpOwo+ID4gKyAgICAgICBuc19mcmVlKG5zKTsKPiA+ICsg
ICAgICAga2ZyZWUoZXJhc2VfYmxvY2tfd2Vhcik7Cj4gPiArICAgICAgIG5hbmRfY2xlYW51cChj
aGlwKTsKPiA+ICsgICAgICAgbGlzdF9mb3JfZWFjaF9zYWZlKHBvcywgbiwgJmdyYXZlX3BhZ2Vz
KSB7Cj4gPiArICAgICAgICAgICAgICAga2ZyZWUobGlzdF9lbnRyeShwb3MsIHN0cnVjdCBncmF2
ZV9wYWdlLCBsaXN0KSk7Cj4gPiArICAgICAgICAgICAgICAgbGlzdF9kZWwocG9zKTsgIAo+IAo+
IEFyZSB5b3Ugc3VyZSB5b3UgY2FuIHVzZSBwb3MgYWZ0ZXIgZnJlZWluZyB0aGUgZW50cnk/Cj4g
U21lbGxzIGxpa2UgdXNlIGFmdGVyIGZyZWUuCj4gCgpNbW1taCwgSSBzaG91bGQgcHJvYmFibHkg
aW52ZXJ0IHRob3NlIHR3byBsaW5lcywgZmlyc3QgY2FsbCBsaXN0X2RlbCgpCmFuZCB0aGVuIGNh
bGwga2ZyZWUoKSBvbiBsaXN0X2VudHJ5KCkuCgpUaGFua3MgZm9yIG5vdGljaW5nIQpNaXF1w6hs
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
