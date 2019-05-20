Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 551C823A10
	for <lists+linux-mtd@lfdr.de>; Mon, 20 May 2019 16:31:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TL687QDzCKdb3z+EMPk0YtYaAzZm1d8te82f2p8FtcM=; b=es38x4VM/9/hCh
	3SvDcSioyiheKGhekHXx6HXRBYN6yXtDLv4mNNrNmtWYD5IZPbccpkmZIKPa1txoEbL2f7KH7DwaH
	u4c6L4aBLsoawvDdoHm0UumGYtO1fGUXQxtdLPIzQeUyz1gH3lfK4NKnXrdpiIjXck1yZkvPTstNn
	6d5gk6bvh5N6Ddf5SpAhGXN07kS4ZbUkZdbnM7t9VE/lf/pYrXarGHIvXfp4yE1Zu9ooC4Wp3TcBv
	VOs5IncUuMD7YOVuNYutM8tKXg/dGxhkXnVcjPLb0ya5+W6yvH6dXExx1pwPRJUfU5XiqZtCNS3TS
	We/jnCCO1p02iBr/O5Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjKV-0000sh-J6; Mon, 20 May 2019 14:31:55 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjKJ-0000rz-H3
 for linux-mtd@lists.infradead.org; Mon, 20 May 2019 14:31:48 +0000
X-Originating-IP: 90.88.22.185
Received: from xps13 (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr
 [90.88.22.185]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 7DCA260005;
 Mon, 20 May 2019 14:31:32 +0000 (UTC)
Date: Mon, 20 May 2019 16:31:31 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Stefan Agner <stefan@agner.ch>
Subject: Re: [PATCH] mtd: rawnand: use longest matching pattern
Message-ID: <20190520163131.7c143ebe@xps13>
In-Reply-To: <20190419074717.22576-1-stefan@agner.ch>
References: <20190419074717.22576-1-stefan@agner.ch>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_073143_715771_CBF5F1B3 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: bbrezillon@kernel.org, richard@nod.at,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 marek.vasut@gmail.com, Boris Brezillon <boris.brezillon@collabora.com>,
 linux-mtd@lists.infradead.org, computersforpeace@gmail.com,
 dwmw2@infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgU3RlZmFuLAoKU3RlZmFuIEFnbmVyIDxzdGVmYW5AYWduZXIuY2g+IHdyb3RlIG9uIEZyaSwg
MTkgQXByIDIwMTkgMDk6NDc6MTcgKzAyMDA6Cgo+IFNvbWV0aW1lcyB0aGUgZXhlY19vcCBwYXJz
ZXIgZG9lcyBub3QgY2hvb3NlIHRoZSBvcHRpbWFsIHBhdHRlcm4gaWYKPiBtdWx0aXBsZSBwYXR0
ZXJucyB3aXRoIG9wdGlvbmFsIGVsZW1lbnRzIGFyZSBhdmFpbGFibGUuIFNpbmNlIHRoZSBzdGFj
awo+IGF1dG9tYXRpY2FsbHkgc3BsaXRzIG9wZXJhdGlvbnMgaW4gbXVsdGlwbGUgZXhlY19vcCBj
YWxscywgYSBub24tb3B0aW1hbAo+IHBhdHRlcm4gZ2V0cyBicm9rZW4gdXAgaW50byBtdWx0aXBs
ZSBjYWxscy4gRS5nLiBhbiBPT0IgcmVhZCB1c2luZyB0aGUKPiB2ZjYxMCBkcml2ZXI6Cj4gICBu
YW5kOiBleGVjdXRpbmcgc3Vib3A6Cj4gICBuYW5kOiAgICAgLT5DTUQgICAgICBbMHgwMF0KPiAg
IG5hbmQ6ICAgICAtPkFERFIgICAgIFs1IGN5YzogMDAgMDggZWEgOTQgMDJdCj4gICBuYW5kOiAg
ICAgLT5DTUQgICAgICBbMHgzMF0KPiAgIG5hbmQ6ICAgICAtPldBSVRSRFkgIFttYXggMjAwMDAw
IG1zXQo+ICAgbmFuZDogICAgICAgREFUQV9JTiAgWzY0IEJdCj4gICBuYW5kOiBleGVjdXRpbmcg
c3Vib3A6Cj4gICBuYW5kOiAgICAgICBDTUQgICAgICBbMHgwMF0KPiAgIG5hbmQ6ICAgICAgIEFE
RFIgICAgIFs1IGN5YzogMDAgMDggZWEgOTQgMDJdCj4gICBuYW5kOiAgICAgICBDTUQgICAgICBb
MHgzMF0KPiAgIG5hbmQ6ICAgICAgIFdBSVRSRFkgIFttYXggMjAwMDAwIG1zXQo+ICAgbmFuZDog
ICAgIC0+REFUQV9JTiAgWzY0IEJdCj4gCj4gSG93ZXZlciwgdGhlIHZmNjEwIGRyaXZlciBoYXMg
YSBwYXR0ZXJuIHdoaWNoIGNhbiBleGVjdXRlIHRoZSBjb21wbGV0ZQo+IGNvbW1hbmQgaW4gYSBz
aW5nbGUgZ28uLi4KPiAKPiBUaGlzIHBhdGNoIG1ha2VzIHN1cmUgdGhhdCB0aGUgbG9uZ2VzdCBt
YXRjaGluZyBwYXR0ZXJuIGlzIGNob3Nlbgo+IGluc3RlYWQgb2YgdGhlIGZpcnN0IChwb3RlbnRp
YWxseSBvbmx5IHBhcnRpYWwpIG1hdGNoLiBXaXRoIHRoaXMKPiBjaGFuZ2UgdGhlIHZmNjEwIHJl
YWRzIHRoZSBPT0IgaW4gYSBzaW5nbGUgZXhlY19vcCBjYWxsOgo+ICAgbmFuZDogZXhlY3V0aW5n
IHN1Ym9wOgo+ICAgbmFuZDogICAgIC0+Q01EICAgICAgWzB4MDBdCj4gICBuYW5kOiAgICAgLT5B
RERSICAgICBbNSBjeWM6IDAwIDA4IGMwIDFkIDAwXQo+ICAgbmFuZDogICAgIC0+Q01EICAgICAg
WzB4MzBdCj4gICBuYW5kOiAgICAgLT5XQUlUUkRZICBbbWF4IDIwMDAwMCBtc10KPiAgIG5hbmQ6
ICAgICAtPkRBVEFfSU4gIFs2NCBCXQo+IAo+IFJlcG9ydGVkLWJ5OiBTYXNjaGEgSGF1ZXIgPHMu
aGF1ZXJAcGVuZ3V0cm9uaXguZGU+Cj4gU3VnZ2VzdGVkLWJ5OiBCb3JpcyBCcmV6aWxsb24gPGJv
cmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPgo+IFRlc3RlZC1ieTogU3RlZmFuIEFnbmVyIDxz
dGVmYW5AYWduZXIuY2g+Cj4gU2lnbmVkLW9mZi1ieTogU3RlZmFuIEFnbmVyIDxzdGVmYW5AYWdu
ZXIuY2g+Cj4gLS0tCgpBcHBsaWVkLCB0aGFua3MuCgpNaXF1w6hsCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Np
b24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtbXRkLwo=
