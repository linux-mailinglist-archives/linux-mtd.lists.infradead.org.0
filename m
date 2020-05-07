Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F95C1C94FD
	for <lists+linux-mtd@lfdr.de>; Thu,  7 May 2020 17:25:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n0z+Pu3UxP8a9LjxwyN84xqxgk6/1DAdyVphfPQ4xbQ=; b=YEDQJ5WkA9pMkG
	GO8xXz8+cQA+LO0aVbnlMJOk5DmT6VkgREhQlZCppXoiHaQCOgFziKhldV41n+e1d5qxi6+VFVKzQ
	HsBEzYZiAUu8pXDfYhyD8W0b88XFyPKmXyWrkrSSZIfVY5gdsVUCo0+CwNTdfT+oiOPfAnxZm9GZ5
	LC/5QDNZ5Tijuc9kf8YBSXvCF2SSMnp1LxueicEYemud/Xm6fy12etIdlCDXjzNGLFEzm6Ku4KJ6L
	HPEk82AAPsn98HBdCF4xozsGAdoJaLnRSIKMYfsoIuZku4BFRXpPtivr1VNHrf0gBQd2LpJzWUvh+
	v+WfY3knvMhtqdn4teYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWiOj-0001aJ-BT; Thu, 07 May 2020 15:25:17 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWiOS-0001V2-BW
 for linux-mtd@lists.infradead.org; Thu, 07 May 2020 15:25:01 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id DECBF2A204A;
 Thu,  7 May 2020 16:24:55 +0100 (BST)
Date: Thu, 7 May 2020 17:24:53 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, Vignesh Raghavendra
 <vigneshr@ti.com>
Subject: Re: [PATCH v3 7/8] mtd: rawnand: arasan: Add new Arasan NAND
 controller
Message-ID: <20200507172453.15a03574@collabora.com>
In-Reply-To: <20200507171311.7669d0db@xps13>
References: <20200507110034.14736-1-miquel.raynal@bootlin.com>
 <20200507110034.14736-8-miquel.raynal@bootlin.com>
 <20200507141103.0c241877@collabora.com>
 <20200507171311.7669d0db@xps13>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_082500_527975_4F504A86 
X-CRM114-Status: GOOD (  17.95  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Michal Simek <monstr@monstr.eu>, Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Rob Herring <robh+dt@kernel.org>,
 linux-mtd@lists.infradead.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T24gVGh1LCA3IE1heSAyMDIwIDE3OjEzOjExICswMjAwCk1pcXVlbCBSYXluYWwgPG1pcXVlbC5y
YXluYWxAYm9vdGxpbi5jb20+IHdyb3RlOgoKPiBIaSBCb3JpcywKPiAKPiBCb3JpcyBCcmV6aWxs
b24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPiB3cm90ZSBvbiBUaHUsIDcgTWF5Cj4g
MjAyMCAxNDoxMTowMyArMDIwMDoKPiAKPiA+IE9uIFRodSwgIDcgTWF5IDIwMjAgMTM6MDA6MzMg
KzAyMDAKPiA+IE1pcXVlbCBSYXluYWwgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5jb20+IHdyb3Rl
Ogo+ID4gCj4gPiAgIAo+ID4gPiArCj4gPiA+ICtzdGF0aWMgdm9pZCBhbmZjX2NoaXBzX2NsZWFu
dXAoc3RydWN0IGFyYXNhbl9uZmMgKm5mYykKPiA+ID4gK3sKPiA+ID4gKwlzdHJ1Y3QgYW5hbmQg
KmFuYW5kLCAqdG1wOwo+ID4gPiArCj4gPiA+ICsJbGlzdF9mb3JfZWFjaF9lbnRyeV9zYWZlKGFu
YW5kLCB0bXAsICZuZmMtPmNoaXBzLCBub2RlKSB7Cj4gPiA+ICsJCW5hbmRfcmVsZWFzZSgmYW5h
bmQtPmNoaXApOyAgICAKPiA+IAo+ID4gCQlyZXQgPSBtdGRfZGV2aWNlX3VucmVnaXN0ZXIobmFu
ZF90b19tdGQoJmFuYW5kLT5jaGlwKSk7Cj4gPiAJCVdBUk5fT04ocmV0KTsKPiA+IAkJbmFuZF9j
bGVhbnVwKCZhbmFuZC0+Y2hpcCk7Cj4gPiAKPiA+IE9yIG1heWJlIGFkZCB0aGlzIFdBUk5fT04o
KSB0byBuYW5kX3JlbGVhc2UoKSBzbyB3ZSBkb24ndCBoYXZlIHRvIGFzawo+ID4gcGVvcGxlIHRv
IHVzZSBtdGRfZGV2aWNlX3VucmVnaXN0ZXIoKSArIG5hbmRfY2xlYW51cCgpLiAgCj4gCj4gSSBk
b24ndCBnZXQgeW91ciBwb2ludCBoZXJlPyBJJ20gbm90IGFnYWluc3QgYWRkaW5nIGEgd2Fybl9v
biBiZXR3ZWVuCj4gYm90aCBmdW5jdGlvbnMgYnV0IGl0J3Mgbm90IHJlbGF0ZWQgdG8gdGhpcyBk
cml2ZXI/CgpXZSd2ZSBhc2tlZCBwZW9wbGUgdG8gbm90IGNhbGwgbmFuZF9yZWxlYXNlKCkgYnV0
IGluc3RlYWQgY2FsbAptdGRfZGV2aWNlX3VucmVnaXN0ZXIoKStuYW5kX2NsZWFudXAoKSwgd2hp
Y2ggaXMgbm90IGRvbmUgaGVyZS4gTXkKcG9pbnQgaXMsIGlmIGV2ZW4gdXMgY2FuJ3QgZ2V0IGl0
IHJpZ2h0LCBtYXliZSBpdCdzIGEgc2lnbiB3ZSBzaG91bGQKaW5zdGVhZCBwYXRjaCBuYW5kX3Jl
bGVhc2UoKSB0byBkbyB0aGUgcmlnaHQgdGhpbmcuCgo+IAo+ID4gV2UgcmVhbGx5Cj4gPiBzaG91
bGQgZml4IHRoYXQgYXQgc29tZSBwb2ludCAoYWxsb2NhdGUgbmFuZF9jaGlwIGFuZCBtdGRfaW5m
bwo+ID4gc2VwYXJhdGVseSBhbmQgbGVhdmUgYSBkdW1teSBtdGRfaW5mbyBvYmplY3Qgd2l0aCBh
bGwgaG9va3MgcmV0dXJuaW5nCj4gPiBFTk9ERVYgd2hlbiB0aGUgdW5yZWdpc3RlciBmYWlscyku
ICAKPiAKPiBZZXMsIHdlIHNob3VsZCBmaXggdGhhdC4KPiAKPiA+ICAgCj4gPiA+ICsJCWxpc3Rf
ZGVsKCZhbmFuZC0+bm9kZSk7Cj4gPiA+ICsJfQo+ID4gPiArfSAgICAKPiAKPiBUaGFua3MsCj4g
TWlxdcOobAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
