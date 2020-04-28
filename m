Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D112F1BB98B
	for <lists+linux-mtd@lfdr.de>; Tue, 28 Apr 2020 11:11:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LhpIaW4NonIRwPEQkh35VKddqHj+P0z++alFxS1FWNM=; b=FSojnzunXnnPXK
	Rw3+GwxxdLvAMe1jyOmQ4ci+4R4o61Wc8+y8sphT85eD+TjwkfcNAjE2rh8GfwENhg7Arp1lEAyBK
	KObd+Cb8Dg6TUilwTyuNrDcbS/nVlIjMCPGPDeqqR+NxeADSpCh19KOh/fmbRro3dBC7LmT/NqVgl
	Loy+qIrZ3/I2MrDCyNM3F87csQK3e5Or3oj2cyF5VHXcxC4m0HHyg57cW7jjm8sWjdrTbCwCaM8Zi
	jSQ00Md2ZDNKZmQHx6+OrjuoSAcfk+PolwryR+GNl9bpD3p+Qtf2pGPbOuchTC95T4h8I6zCo1K4K
	3IOSMBBfcvIKB9oaLVbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTMGm-00019V-MM; Tue, 28 Apr 2020 09:11:12 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTMGb-00018k-H6
 for linux-mtd@lists.infradead.org; Tue, 28 Apr 2020 09:11:04 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 18FF42A13F1;
 Tue, 28 Apr 2020 10:10:58 +0100 (BST)
Date: Tue, 28 Apr 2020 11:10:54 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v2 3/9] mtd: rawnand: onfi: Fix redundancy detection check
Message-ID: <20200428111054.4a8cfd26@collabora.com>
In-Reply-To: <20200428105444.0778d750@xps13>
References: <20200424164042.26572-1-miquel.raynal@bootlin.com>
 <20200424164042.26572-4-miquel.raynal@bootlin.com>
 <20200425102225.002e740e@collabora.com>
 <20200428105444.0778d750@xps13>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_021101_696354_E20133C5 
X-CRM114-Status: GOOD (  22.93  )
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
Cc: linux-mtd@lists.infradead.org, Vignesh Raghavendra <vigneshr@ti.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T24gVHVlLCAyOCBBcHIgMjAyMCAxMDo1NDo0NCArMDIwMApNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwu
cmF5bmFsQGJvb3RsaW4uY29tPiB3cm90ZToKCj4gSGkgQm9yaXMsCj4gCj4gQm9yaXMgQnJlemls
bG9uIDxib3Jpcy5icmV6aWxsb25AY29sbGFib3JhLmNvbT4gd3JvdGUgb24gU2F0LCAyNSBBcHIK
PiAyMDIwIDEwOjIyOjI1ICswMjAwOgo+IAo+ID4gT24gRnJpLCAyNCBBcHIgMjAyMCAxODo0MDoz
NiArMDIwMAo+ID4gTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4gd3Jv
dGU6Cj4gPiAgIAo+ID4gPiBEdXJpbmcgT05GSSBkZXRlY3Rpb24sIHRoZSBDUkMgZGVyaXZlZCBm
cm9tIHRoZSBwYXJhbWV0ZXIgcGFnZSBhbmQgdGhlCj4gPiA+IENSQyBzdXBwb3NlZCB0byBiZSBh
dCB0aGUgZW5kIG9mIHRoZSBwYXJhbWV0ZXIgcGFnZSBhcmUgY29tcGFyZWQuIElmCj4gPiA+IHRo
ZXkgZG8gbm90IG1hdGNoLCB0aGUgc2Vjb25kIHRoZW4gdGhlIHRoaXJkIGNvcGllcyBvZiB0aGUg
cGFnZSBhcmUKPiA+ID4gdHJpZWQuCj4gPiA+IAo+ID4gPiBUaGUgY3VycmVudCBpbXBsZW1lbnRh
dGlvbiBjb21wYXJlcyB0aGUgbmV3bHkgZGVyaXZlZCBDUkMgd2l0aCB0aGUgQ1JDCj4gPiA+IGNv
bnRhaW5lZCBpbiB0aGUgZmlyc3QgcGFnZSBvbmx5LiBTbyBpZiB0aGlzIHBhcnRpY3VsYXIgQ1JD
IGFyZWEgaGFzCj4gPiA+IGJlZW4gY29ycnVwdGVkLCB0aGVuIHRoZSBkZXRlY3Rpb24gd2lsbCBm
YWlsIGZvciBhIHdyb25nIHJlYXNvbi4KPiA+ID4gCj4gPiA+IEZpeCB0aGlzIGlzc3VlIGJ5IGNo
ZWNraW5nIHRoZSBkZXJpdmVkIENSQyBhZ2FpbnN0IHRoZSByaWdodCBvbmUuCj4gPiA+ICAgICAK
PiA+ICAgCj4gCj4gWWVzLCBidXQgZ2l2ZW4gdGhlIGZhY3QgdGhhdCB3ZSBtb3ZlZCB0aGlzIGNv
ZGUgb3V0IG9mIG5hbmRfYmFzZS5jCj4gc2VuZGluZyBpdCB0byBzdGFibGUgd291bGQgbm90IGFw
cGx5LCBJIGRvbid0IGtub3cgd2hhdCdzIGJlc3QgaW4gdGhpcwo+IGNhc2U/CgpJdCB3b3VsZCBh
dCBsZWFzdCBiZSBiYWNrcG9ydGVkIHRvIGEgZmV3IHJlbGVhc2VzLCBhbmQgeW91IGNhbiBhbHdh
eXMKcHJvdmlkZSBhIHJlcGxhY2VtZW50IHdoZW4gR3JlZyBzZW5kcyB5b3UgdGhlICdwYXRjaCBk
aWQgbm90IGFwcGx5Jwpub3RpY2UuIFNvIHllcywgSSB0aGluayBpdCdzIHdvcnRoIGFkZGluZyBh
IGNjLXN0YWJsZSB0YWcgaGVyZS4KCj4gCj4gVGhlIGZhdWx0eSBjb21taXQgYmVpbmcKPiAzOTEz
OGMxZjRhMzEgbXRkOiByYXduYW5kOiB1c2UgYml0LXdpc2UgbWFqb3JpdHkgdG8gcmVjb3ZlciB0
aGUgT05GSSBwYXJhbSBwYWdlCj4gCj4gPiBUaGlzIG9uZSBwcm9iYWJseSBkZXNlcnZlcyBGaXhl
cyBhbmQgQ2Mtc3RhYmxlIHRhZ3MuCj4gPiAgIAo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBNaXF1ZWwg
UmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPgo+ID4gPiBSZXZpZXdlZC1ieTogQm9y
aXMgQnJlemlsbG9uIDxib3Jpcy5icmV6aWxsb25AY29sbGFib3JhLmNvbT4KPiA+ID4gLS0tCj4g
PiA+ICBkcml2ZXJzL210ZC9uYW5kL3Jhdy9uYW5kX29uZmkuYyB8IDIgKy0KPiA+ID4gIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+ID4gPiAKPiA+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbXRkL25hbmQvcmF3L25hbmRfb25maS5jIGIvZHJpdmVycy9tdGQv
bmFuZC9yYXcvbmFuZF9vbmZpLmMKPiA+ID4gaW5kZXggMGI4NzliZDBhNjhjLi44ZmU4ZDdiZGQy
MDMgMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvbXRkL25hbmQvcmF3L25hbmRfb25maS5jCj4g
PiA+ICsrKyBiL2RyaXZlcnMvbXRkL25hbmQvcmF3L25hbmRfb25maS5jCj4gPiA+IEBAIC0xNzMs
NyArMTczLDcgQEAgaW50IG5hbmRfb25maV9kZXRlY3Qoc3RydWN0IG5hbmRfY2hpcCAqY2hpcCkK
PiA+ID4gIAkJfQo+ID4gPiAgCj4gPiA+ICAJCWlmIChvbmZpX2NyYzE2KE9ORklfQ1JDX0JBU0Us
ICh1OCAqKSZwW2ldLCAyNTQpID09Cj4gPiA+IC0JCQkJbGUxNl90b19jcHUocC0+Y3JjKSkgewo+
ID4gPiArCQkgICAgbGUxNl90b19jcHUocFtpXS5jcmMpKSB7Cj4gPiA+ICAJCQlpZiAoaSkKPiA+
ID4gIAkJCQltZW1jcHkocCwgJnBbaV0sIHNpemVvZigqcCkpOwo+ID4gPiAgCQkJYnJlYWs7ICAg
IAo+ID4gICAKPiAKPiBUaGFua3MsCj4gTWlxdcOobAoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWls
aW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1tdGQvCg==
