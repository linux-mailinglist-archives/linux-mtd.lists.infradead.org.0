Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4941BB989
	for <lists+linux-mtd@lfdr.de>; Tue, 28 Apr 2020 11:10:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oq43V9f6NXr31WdtHDfX4DnFge37Za9WvozfYroIQgs=; b=qtUpoGjw5egyqO
	HjjaskUHuYG2oDXjzvDZmnOKN17U/ylNwQr6cYNrrUk+9P6gdxN+z64BmlrES8IGJXts2JTiuKaA9
	8lpOrLIqZJzCoaeQl2/9293td7UpOtION31FmXgzBMzJx2KpmPDwVE2l8O5lFFvKjWBFMYYsDNufE
	YR0oklVKIi+unfrZxVmsqyy18ZFieRE/K2+wGl7QKyGkNdERx8g9eVMiyNe3ov+njQqcvrJeXiUqA
	jsXlEL6erq9QJ2WlPNYl+duv9MfUv3JcZ4oEBs7+k5NeHeoXtT+GM/o4+feYUPLqdxuRUruywTJJ0
	AJlOC4t+lCEcjvjjh1mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTMFx-0006p2-8p; Tue, 28 Apr 2020 09:10:21 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTMFp-0006n2-T1
 for linux-mtd@lists.infradead.org; Tue, 28 Apr 2020 09:10:15 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 152F224000A;
 Tue, 28 Apr 2020 09:10:06 +0000 (UTC)
Date: Tue, 28 Apr 2020 11:10:04 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Subject: Re: [PATCH v2 2/9] mtd: rawnand: timings: Fix default tR_max and
 tCCS_min timings
Message-ID: <20200428111004.388e9b67@xps13>
In-Reply-To: <53e0aaf1-f522-1e71-58c3-d007a8cd19fb@cogentembedded.com>
References: <20200424164042.26572-1-miquel.raynal@bootlin.com>
 <20200424164042.26572-3-miquel.raynal@bootlin.com>
 <53e0aaf1-f522-1e71-58c3-d007a8cd19fb@cogentembedded.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_021014_074772_B31326FC 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>,
 Boris Brezillon <boris.brezillon@collabora.com>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgU2VyZ2VpLAoKU2VyZ2VpIFNodHlseW92IDxzZXJnZWkuc2h0eWx5b3ZAY29nZW50ZW1iZWRk
ZWQuY29tPiB3cm90ZSBvbiBTYXQsIDI1CkFwciAyMDIwIDEyOjQwOjAyICswMzAwOgoKPiBIZWxs
byEKPiAKPiBPbiAyNC4wNC4yMDIwIDE5OjQwLCBNaXF1ZWwgUmF5bmFsIHdyb3RlOgo+IAo+ID4g
dFIgYW5kIFRDQ1MgYXJlIGN1cnJlbnRseSB3cm9uZ2x5IGV4cHJlc3NlZCBpbiBmZW10byBzZWNv
bmRzLCB3aGlsZSB3ZSAgCj4gCj4gICAgIHRDQ1M/IEZlbXRvc2Vjb25kcz8KCll1cCEgVGhhbmtz
IGZvciB0aGUgY29ycmVjdGlvbi4KCj4gCj4gPiBleHBlY3QgdGhlc2UgdmFsdWVzIHRvIGJlIGV4
cHJlc3NlZCBpbiBwaWNvc2Vjb25kcy4gU2V0IHJpZ2h0Cj4gPiBoYXJkY29kZWQgdmFsdWVzLgo+
ID4gCj4gPiBGaXhlczogNmE5NDMzODZlZTM2IG10ZDogcmF3bmFuZDogYWRkIGRlZmF1bHQgdmFs
dWVzIGZvciBkeW5hbWljIHRpbWluZ3MKPiA+IFNpZ25lZC1vZmYtYnk6IE1pcXVlbCBSYXluYWwg
PG1pcXVlbC5yYXluYWxAYm9vdGxpbi5jb20+Cj4gPiBSZXZpZXdlZC1ieTogQm9yaXMgQnJlemls
bG9uIDxib3Jpcy5icmV6aWxsb25AY29sbGFib3JhLmNvbT4gIAo+IFsuLi5dCj4gCj4gTUJSLCBT
ZXJnZWkKCk1pcXXDqGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
