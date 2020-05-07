Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3553E1C85DC
	for <lists+linux-mtd@lfdr.de>; Thu,  7 May 2020 11:31:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8bC44GZ+TegPBNoQD63RXD+k/anj8JuEs87DC0R5fSM=; b=aqrCRut4nBqkEs
	SA0N0QZWW0TCQS6Z8Jdyacs6Sx+evVCqwZ0SadA69oMtLye8X1fN3nfxrr+j5tiw2I9fBs+qr8mD7
	gbVTiPCQgR1M7l4tE48k29AojC4/l8l7n3Vr9TKvHbLwEGkYTTfdeJ9fw+DOVA55RZTch4HWdjoHG
	u/z4l9sMu7kmTle7zF+BuTKg5dzAVvxxY+CYWbgw1+OWSlx3ngTCmnrH57yZa+pSiDH/IiaEQKeQ8
	jFvV/Z/VFBIOvDoJH7VFJHdpSSIVmdBhU7kBgnsJFR+bS07QWKxHfLc4UqN+DqR3np+eswMyPsQFm
	tv9kkE535QqTdEbYW4uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWcry-0003pU-AL; Thu, 07 May 2020 09:31:06 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWcro-0003or-A7
 for linux-mtd@lists.infradead.org; Thu, 07 May 2020 09:30:57 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id F08862A28A1;
 Thu,  7 May 2020 10:30:53 +0100 (BST)
Date: Thu, 7 May 2020 11:30:50 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: "Bean Huo (beanhuo)" <beanhuo@micron.com>, Miquel Raynal
 <miquel.raynal@bootlin.com>
Subject: Re: [EXT] [PATCH v2 3/3] mtd: rawnand: micron: Address the shallow
 erase issue
Message-ID: <20200507113050.71b6a27f@collabora.com>
In-Reply-To: <BN7PR08MB5684AFAA722A0633357C064ADBA50@BN7PR08MB5684.namprd08.prod.outlook.com>
References: <20200503114029.30257-1-miquel.raynal@bootlin.com>
 <BN7PR08MB5684D8DFC50CB93B53705619DBA40@BN7PR08MB5684.namprd08.prod.outlook.com>
 <20200506180420.13996633@collabora.com>
 <BN7PR08MB56843895500F4ADA88262C59DBA40@BN7PR08MB5684.namprd08.prod.outlook.com>
 <1414270659.192477.1588790669444.JavaMail.zimbra@nod.at>
 <20200506210158.7fe33cec@collabora.com>
 <662469728.192614.1588792998746.JavaMail.zimbra@nod.at>
 <20200506224016.2d48d0b4@collabora.com>
 <130342272.192940.1588798779898.JavaMail.zimbra@nod.at>
 <BN7PR08MB5684AFAA722A0633357C064ADBA50@BN7PR08MB5684.namprd08.prod.outlook.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_023056_483129_1DDF980F 
X-CRM114-Status: GOOD (  15.07  )
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Steve deRosier <derosier@gmail.com>,
 "Zoltan Szubbocsev \(zszubbocsev\)" <zszubbocsev@micron.com>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, tglx <tglx@linutronix.de>,
 Piotr Wojtaszczyk <WojtaszczykP@cumminsallison.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T24gVGh1LCA3IE1heSAyMDIwIDA5OjI4OjU5ICswMDAwCiJCZWFuIEh1byAoYmVhbmh1bykiIDxi
ZWFuaHVvQG1pY3Jvbi5jb20+IHdyb3RlOgoKPiBIaSBSaWNoYXJkCj4gVGhhbmtzLiAKPiAKPiBI
b3cgYWJvdXQgdGhpcyBzcGVjaWFsICBzaXR1YXRpb246IAo+IAo+IFBhZ2UgMChFQykgaXMgZ29v
ZDsKPiBQYWdlIDEoVklEKSBpcyBiYWQ7CgpVQkkgc2hvdWxkIHJlamVjdCB0aGUgTEVCIGJlY2F1
c2Ugb2YgdGhpcyBWSUQgY29ycnVwdGlvbiwgYnV0IEknbSBub3QKc3VyZSBob3cgd2VsbCB0aGF0
IHdvcmtzIHdoZW4geW91IGFkZCBmYXN0bWFwIGluIHRoZSBtaXggOi0vLgoKPiBQYWdlIDIgKGRh
dGEpIGlzIGdvb2Q7Cj4gUGFnZSAzKCBkYXRhKSBpcyBiYWQsIG9yIGNvbnRhaW4gZmlsbGluZyBw
YXR0ZXJuLgo+IFBhZ2UgNCAoZGF0YSkgaXMgZ29vZCwgb3IgZW1wdHk7Cj4gUGFnZSA1KCBkYXRh
KSBpcyBiYWQsIG9yIGNvbnRhaW4gZmlsbGluZyBwYXR0ZXJuLgo+IFBhZ2UgNiAoZGF0YSkgaXMg
Z29vZCwgb3IgZW1wdHk7Cj4gLi4uLi4KPiAKPiAKPiBCZWFuCj4gCj4gPiAKPiA+IC0tLS0tIFVy
c3Byw7xuZ2xpY2hlIE1haWwgLS0tLS0gIAo+ID4gPj4gVUJJIHNjYW5zIG9ubHkgaGVhZGVycyBk
dXJpbmcgYXR0YWNoLiBJZiB5b3UgZG9uJ3QgdG91Y2ggdGhlc2UsIG5vIHdheS4gIAo+ID4gPgo+
ID4gPiBTb3JyeSwgSSBtaXN1bmRlcnN0b29kIHdoYXQgeW91IG1lYW50IGJ5IHBheWxvYWQuIFVC
SSBzaG91bGQgc2NoZWR1bGUKPiA+ID4gdGhlIFBFQiBmb3IgZXJhc2UgaWYgdGhlIEVDL1ZJRCBo
ZWFkZXIgaXMgY29ycnVwdGVkLiAgCj4gPiAKPiA+IFVCSSBldmVuIHRyaWVzIHRvIHJlY292ZXIg
ZnJvbSBzdWNoIGEgc2l0dWF0aW9uLiBJZiBvbmx5IHRoZSBFQyBoZWFkZXIgaXMgYmFkLCBpdAo+
ID4gd2lsbCBjcmVhdGUgYSBuZXcgb25lLiBPbmx5IG9mIHRoZSBWSUQgaGVhZGVyIGlzIGJhZC9t
aXNzaW5nIGFuZCB0aGUgcGF5bG9hZCBpcwo+ID4gY29ycnVwdGVkIChFQ0MgZXJyb3JzIG9yIGJp
dC1mbGlwcykgaXQgd2lsbCBlcmFzZSBpdC4KPiA+IAo+ID4gQSBtaXNzaW5nIFZJRCBoZWFkZXIg
cGx1cyBnb29kIHBheWxvYWQgd2lsbCBjYXVzZSBVQkkgdG8gc3RvcCBhdHRhY2hpbmcgc2luY2Ug
aXQKPiA+IHZpb2xhdGVzIHRoZSBJTyBtb2RlbC4KPiA+IAo+ID4gVGhhbmtzLAo+ID4gLy9yaWNo
YXJkICAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
