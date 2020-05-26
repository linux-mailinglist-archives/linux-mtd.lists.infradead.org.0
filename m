Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC511C9438
	for <lists+linux-mtd@lfdr.de>; Thu,  7 May 2020 17:13:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dEjH6ouhN9jDNvT7uXYG4gNmP9I+i/SAT6y+W6T78os=; b=nrVgsdOH35LbJ/
	B6NzfUSpv1C+kABFcPx9UIXDto3inuC4+s2++LacuMZkua+8/GrNe1m0NHCX3XW8ZGU7u2c5I4L+O
	tHdFX5nYpup0DNVcM17m/HqKXyoEy2IU2wmiOBnajxB49ZFEldrjZZMN2nCDqBDM+Hlyf7GFGb9Q9
	PDmzWz9qfpvqgEayl5BSpn88Z11IDEC3SvgSlrLJVl9OBQitxmrKG+6YZaJwnk7MKI0Y94voQT1De
	3Rr+OJO2O+8WrKACK0hnVvNh0vaDUBrqrZAfS6S9WUR35McKZfncZUVH8hssi9/EyEiNJsoh7ecj5
	HkFyjyRE0YQjOhdrgwWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWiDF-0000sA-Nu; Thu, 07 May 2020 15:13:25 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWiD6-0000r8-4j
 for linux-mtd@lists.infradead.org; Thu, 07 May 2020 15:13:17 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 7996520000A;
 Thu,  7 May 2020 15:13:12 +0000 (UTC)
Date: Thu, 7 May 2020 17:13:11 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v3 7/8] mtd: rawnand: arasan: Add new Arasan NAND
 controller
Message-ID: <20200507171311.7669d0db@xps13>
In-Reply-To: <20200507141103.0c241877@collabora.com>
References: <20200507110034.14736-1-miquel.raynal@bootlin.com>
 <20200507110034.14736-8-miquel.raynal@bootlin.com>
 <20200507141103.0c241877@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_081316_315774_21B28F18 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
 [217.70.178.232 listed in bl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Michal Simek <monstr@monstr.eu>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Rob Herring <robh+dt@kernel.org>,
 linux-mtd@lists.infradead.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgQm9yaXMsCgpCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29t
PiB3cm90ZSBvbiBUaHUsIDcgTWF5CjIwMjAgMTQ6MTE6MDMgKzAyMDA6Cgo+IE9uIFRodSwgIDcg
TWF5IDIwMjAgMTM6MDA6MzMgKzAyMDAKPiBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJv
b3RsaW4uY29tPiB3cm90ZToKPiAKPiAKPiA+ICsKPiA+ICtzdGF0aWMgdm9pZCBhbmZjX2NoaXBz
X2NsZWFudXAoc3RydWN0IGFyYXNhbl9uZmMgKm5mYykKPiA+ICt7Cj4gPiArCXN0cnVjdCBhbmFu
ZCAqYW5hbmQsICp0bXA7Cj4gPiArCj4gPiArCWxpc3RfZm9yX2VhY2hfZW50cnlfc2FmZShhbmFu
ZCwgdG1wLCAmbmZjLT5jaGlwcywgbm9kZSkgewo+ID4gKwkJbmFuZF9yZWxlYXNlKCZhbmFuZC0+
Y2hpcCk7ICAKPiAKPiAJCXJldCA9IG10ZF9kZXZpY2VfdW5yZWdpc3RlcihuYW5kX3RvX210ZCgm
YW5hbmQtPmNoaXApKTsKPiAJCVdBUk5fT04ocmV0KTsKPiAJCW5hbmRfY2xlYW51cCgmYW5hbmQt
PmNoaXApOwo+IAo+IE9yIG1heWJlIGFkZCB0aGlzIFdBUk5fT04oKSB0byBuYW5kX3JlbGVhc2Uo
KSBzbyB3ZSBkb24ndCBoYXZlIHRvIGFzawo+IHBlb3BsZSB0byB1c2UgbXRkX2RldmljZV91bnJl
Z2lzdGVyKCkgKyBuYW5kX2NsZWFudXAoKS4KCkkgZG9uJ3QgZ2V0IHlvdXIgcG9pbnQgaGVyZT8g
SSdtIG5vdCBhZ2FpbnN0IGFkZGluZyBhIHdhcm5fb24gYmV0d2Vlbgpib3RoIGZ1bmN0aW9ucyBi
dXQgaXQncyBub3QgcmVsYXRlZCB0byB0aGlzIGRyaXZlcj8KCj4gV2UgcmVhbGx5Cj4gc2hvdWxk
IGZpeCB0aGF0IGF0IHNvbWUgcG9pbnQgKGFsbG9jYXRlIG5hbmRfY2hpcCBhbmQgbXRkX2luZm8K
PiBzZXBhcmF0ZWx5IGFuZCBsZWF2ZSBhIGR1bW15IG10ZF9pbmZvIG9iamVjdCB3aXRoIGFsbCBo
b29rcyByZXR1cm5pbmcKPiBFTk9ERVYgd2hlbiB0aGUgdW5yZWdpc3RlciBmYWlscykuCgpZZXMs
IHdlIHNob3VsZCBmaXggdGhhdC4KCj4gCj4gPiArCQlsaXN0X2RlbCgmYW5hbmQtPm5vZGUpOwo+
ID4gKwl9Cj4gPiArfSAgCgpUaGFua3MsCk1pcXXDqGwKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWls
aW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1tdGQvCg==
