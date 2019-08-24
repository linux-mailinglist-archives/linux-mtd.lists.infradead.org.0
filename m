Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE54C9BD20
	for <lists+linux-mtd@lfdr.de>; Sat, 24 Aug 2019 12:48:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DVBdlIIk3YWCE0TY42lALBAmW9/gVgm321GbaaH8P70=; b=WG93u4Bp7lhd7P
	3czB9VgKLoLWOoy41Z9JiWzaZJNOdwbdEpVkmGxS92TjakKYw6lGtfulEAM57F7ievMKiyhvk6TFP
	AJUk8I+VnPu/MsfcGOsrmXb6D6uPNloQ96v7GbKW61aDZplKrSkleLclwL8xn3DA5TM8T4SyKwLfe
	oqBqAQZ1qzHA2e8CosVtDdBaqU8/ib9nv1eTxX8Nm0C7pcV4w6Ql+nIsm/qTBsWjNXS80v3NdE3A1
	mshyvuRO8ByWlHpNc4ADYNx0Nj+uxmdZ7/E8l0go6MBLcU/NNlLW8OkPMa7ge/JnRbLo8wtL+BGD/
	cCzLQF8bcY5EfN7PCyVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Tax-0000Vr-7a; Sat, 24 Aug 2019 10:48:31 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Tap-0000VA-FW
 for linux-mtd@lists.infradead.org; Sat, 24 Aug 2019 10:48:25 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 3D5FC1BF203;
 Sat, 24 Aug 2019 10:48:09 +0000 (UTC)
Date: Sat, 24 Aug 2019 12:48:07 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Randy Dunlap <rdunlap@infradead.org>
Subject: Re: [PATCH] mtd: hyperbus: fix dependency and build error
Message-ID: <20190824124807.393f125d@xps13>
In-Reply-To: <9b1b4ab1-681f-0ef9-7b5c-b6545f7464d2@infradead.org>
References: <9b1b4ab1-681f-0ef9-7b5c-b6545f7464d2@infradead.org>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_034823_665847_B8F6CB8C 
X-CRM114-Status: UNSURE (   8.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
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
Cc: Geert Uytterhoeven <geert@linux-m68k.org>, linux-mtd@lists.infradead.org,
 LKML <linux-kernel@vger.kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgVmlnbmVzaCwKClJhbmR5IER1bmxhcCA8cmR1bmxhcEBpbmZyYWRlYWQub3JnPiB3cm90ZSBv
biBUdWUsIDEzIEF1ZyAyMDE5IDE2OjAzOjEzCi0wNzAwOgoKPiBGcm9tOiBSYW5keSBEdW5sYXAg
PHJkdW5sYXBAaW5mcmFkZWFkLm9yZz4KPiAKPiBsaWIvZGV2cmVzLmMsIHdoaWNoIGltcGxlbWVu
dHMgZGV2bV9pb3JlbWFwX3Jlc291cmNlKCksIGlzIG9ubHkgYnVpbHQKPiB3aGVuIENPTkZJR19I
QVNfSU9NRU0gaXMgc2V0L2VuYWJsZWQsIHNvIE1URF9IWVBFUkJVUyBzaG91bGQgZGVwZW5kCj4g
b24gSEFTX0lPTUVNLiAgRml4ZXMgYSBidWlsZCBlcnJvciBhbmQgYSBLY29uZmlnIHdhcm5pbmcg
KGFzIHNlZW4gb24KPiBVTUwgYnVpbGRzKToKPiAKPiBXQVJOSU5HOiB1bm1ldCBkaXJlY3QgZGVw
ZW5kZW5jaWVzIGRldGVjdGVkIGZvciBNVERfQ09NUExFWF9NQVBQSU5HUwo+ICAgRGVwZW5kcyBv
biBbbl06IE1URCBbPW1dICYmIEhBU19JT01FTSBbPW5dCj4gICBTZWxlY3RlZCBieSBbbV06Cj4g
ICAtIE1URF9IWVBFUkJVUyBbPW1dICYmIE1URCBbPW1dCj4gCj4gRVJST1I6ICJkZXZtX2lvcmVt
YXBfcmVzb3VyY2UiIFtkcml2ZXJzL210ZC9oeXBlcmJ1cy9oeXBlcmJ1cy1jb3JlLmtvXSB1bmRl
ZmluZWQhCj4gCj4gRml4ZXM6IGRjYzdkMzQ0NmEwZiAoIm10ZDogQWRkIHN1cHBvcnQgZm9yIEh5
cGVyQnVzIG1lbW9yeSBkZXZpY2VzIikKPiBTaWduZWQtb2ZmLWJ5OiBSYW5keSBEdW5sYXAgPHJk
dW5sYXBAaW5mcmFkZWFkLm9yZz4KPiBDYzogVmlnbmVzaCBSYWdoYXZlbmRyYSA8dmlnbmVzaHJA
dGkuY29tPgo+IENjOiBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPgo+
IENjOiBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0QGxpbnV4LW02OGsub3JnPgo+IENjOiBsaW51
eC1tdGRAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IC0tLQoKVGhpcyBwYXRjaCBsb29rcyBsaWtlIGEg
Z29vZCBjYW5kaWRhdGUgZm9yIGZpeGVzLCBzaGFsbCBJIHNlbmQgYSBmaXhlcwpQUiBuZXh0IHdl
ZWsgd2l0aCBpdD8gKEFja2VkLWJ5IHdpc2hlZCkKCk1pcXXDqGwKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lv
biBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1tdGQvCg==
