Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C54D41CDAD3
	for <lists+linux-mtd@lfdr.de>; Mon, 11 May 2020 15:11:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=stGFqU8U9OkyRSgfHVRFjZpgVVrfyI4vkFdxgduh4bI=; b=JXnlExcEaxXDcZ
	bdOhZXy8TLE2PkTLc3LKxPwZ+3nWkw+0bbdYTc6T0RikioIWKP5k6Q6bFmvP4sETvxLPB25eB4Qdr
	vsErqO35wRcrep4VdHVoDg+HOundwN1dmog9ZJlNw+u4qhY7Ghbb0vC3JZ43xRTZdxoZTaZ16wvi0
	cbbShTae1waBbZlos3dM2dzhotj+Nc6nqF56gZPt76w38NZksyyypwvEWLOByb0MGZCr+q5cUui34
	blND2I7ftS4yc8ZDoV3slxfl4FM9hlHhnEirSMiw4V0oLIC3ejcDV6O2nWgszIAAIxBxW/Q9oZdYv
	NQ+f09FmCKPp9oP+ATrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY8Ct-0005oS-TE; Mon, 11 May 2020 13:10:56 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY8Cj-0005nM-Bp
 for linux-mtd@lists.infradead.org; Mon, 11 May 2020 13:10:47 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id B2F582000F;
 Mon, 11 May 2020 13:10:39 +0000 (UTC)
Date: Mon, 11 May 2020 15:10:38 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Subject: Re: [PATCH 45/62] mtd: rawnand: r852: Stop using nand_release()
Message-ID: <20200511151038.62727bbd@xps13>
In-Reply-To: <fd705f87-2d40-bb2f-99cb-6583e775e2c5@cogentembedded.com>
References: <20200510121220.18042-1-miquel.raynal@bootlin.com>
 <20200510121220.18042-46-miquel.raynal@bootlin.com>
 <fd705f87-2d40-bb2f-99cb-6583e775e2c5@cogentembedded.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_061045_541951_CB26D9DC 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Cc: Maxim Levitsky <maximlevitsky@gmail.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>,
 Boris Brezillon <boris.brezillon@collabora.com>, linux-mtd@lists.infradead.org,
 Vignesh Raghavendra <vigneshr@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgU2VyZ2VpLAoKU2VyZ2VpIFNodHlseW92IDxzZXJnZWkuc2h0eWx5b3ZAY29nZW50ZW1iZWRk
ZWQuY29tPiB3cm90ZSBvbiBNb24sIDExCk1heSAyMDIwIDEzOjMzOjAxICswMzAwOgoKPiBIZWxs
bwo+IAo+IE9uIDEwLjA1LjIwMjAgMTU6MTIsIE1pcXVlbCBSYXluYWwgd3JvdGU6Cj4gCj4gPiBU
aGlzIGhlbHBlciBpcyBub3QgdmVyeSB1c2VmdWwgYW5kIHZlcnkgb2Z0ZW4gcGVvcGxlIGdldCBj
b25mdXNlZDoKPiA+IHRoZXkgdXNlIG5hbmRfcmVsZWFzZSgpIGluc3RlYWQgb2YgbmFuZF9jbGVh
bnVwKCkuCj4gPiAKPiA+IExldCdzIHN0b3AgdXNpbmcgbmFuZF9yZWxlYXNlKCkgYnkgY2FsbGlu
ZyBtdGRfZGV2aWNlX3VucmVnaXN0ZXIoKSBhbmQKPiA+IG5hbmRfY2xlYW51cCgpIGRpcmVjdGx5
Lgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJv
b3RsaW4uY29tPgo+ID4gQ2M6IE1heGltIExldml0c2t5IDxtYXhpbWxldml0c2t5QGdtYWlsLmNv
bT4KPiA+IC0tLQo+ID4gICBkcml2ZXJzL210ZC9uYW5kL3Jhdy9yODUyLmMgfCA2ICsrKystLQo+
ID4gICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4g
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tdGQvbmFuZC9yYXcvcjg1Mi5jIGIvZHJpdmVycy9t
dGQvbmFuZC9yYXcvcjg1Mi5jCj4gPiBpbmRleCA3Nzc3NDI1MGZiMTEuLmY4NjVlM2E0N2IwMSAx
MDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvbXRkL25hbmQvcmF3L3I4NTIuYwo+ID4gKysrIGIvZHJp
dmVycy9tdGQvbmFuZC9yYXcvcjg1Mi5jCj4gPiBAQCAtNjUxLDcgKzY1MSw4IEBAIHN0YXRpYyBp
bnQgcjg1Ml9yZWdpc3Rlcl9uYW5kX2RldmljZShzdHJ1Y3Qgcjg1Ml9kZXZpY2UgKmRldikKPiA+
ICAgCWRldi0+Y2FyZF9yZWdpc3RlcmVkID0gMTsKPiA+ICAgCXJldHVybiAwOwo+ID4gICBlcnJv
cjM6Cj4gPiAtCW5hbmRfcmVsZWFzZShkZXYtPmNoaXApOwo+ID4gKwlXQVJOX09OKG10ZF9kZXZp
Y2VfdW5yZWdpc3RlcihuYW5kX3RvX210ZChkZXYtPmNoaXApKSk7ICAKPiAKPiAgICAgU29tZXRp
bWVzIHlvdSBkZWNsYXJlIGEgdmFyaWFibGUgdG8gcmVjZWl2ZSB0aGUgcmVzdWx0LCBzb21ldGlt
ZXMgKG1vcmUgc2VsZG9tKSB5b3UgZG9uJ3QuLi4gV2hhdCBndWlkZXMgeW91PwoKQWJzb2x1dGVs
eS4gVGhlIGxvZ2ljIChpZiBhbnkpIHdhczoKClVzZSAicmV0IiwgdW5sZXNzIEkgdGhpbmsgaXQg
ZG9lcyBub3QgZml0IHZlcnkgd2VsbCB0aGUgZHJpdmVyJ3Mgc3R5bGUKb3IgdGhlIGxvY2F0aW9u
IHdoZXJlIEkgcHV0IGl0LiBTbyBpbiB0aGUgZW5kLCBhcyBJIGNvbnNpZGVyIHRoYXQgYm90aAph
cmUgdG90YWxseSBmaW5lLCBpdCdzIGEgYml0IG1peGVkIGFuZCB0aGUgY2hvaWNlIHZlcnkgcGVy
c29ubmFsLiBEbyB5b3UKdGhpbmsgaXQgaXMgYSBwcm9ibGVtPwoKVGhhbmtzLApNaXF1w6hsCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
