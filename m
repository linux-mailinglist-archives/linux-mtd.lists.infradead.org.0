Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5864ADFF1
	for <lists+linux-mtd@lfdr.de>; Mon, 29 Apr 2019 11:58:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+JIE1h4iJcIMU+LXWhEAqvYgGYs9zE7EQ4lWKXT0jSE=; b=HBWCXLyjGvAY/r
	sPpmH5MQ+GG0IffR61+e9h9BKCIvK/M362nEXUmBhaKyygU2GctLeUshTSNLcs8WToCNk33MOfMVs
	WOMdjvyaB4PK5obnkL5TFjQ1RKJ52EKe/TmMVvbuV9HvJExCQuV9A+ZFJ4OoCSX+vb+7tiQ85dati
	p36wOou7JvnVWDFxOApLFxXMRucqskdLyOTkVV66jYvDH7hFni1xQ7aYnb94RyXBHtqGHCMgzIMoB
	sOlAtyMk8HEKCVhK6U2/bgsJPXF0puHPONxf45MImiPfLD057EFVEqT5/VgKYrIf5aZ+jtH05AhVg
	iirYByXIiSz5G4owqLuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL32s-0000vY-2E; Mon, 29 Apr 2019 09:57:58 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL32k-0000v2-9i; Mon, 29 Apr 2019 09:57:51 +0000
X-UUID: cd969dad2c0c417daf768d7224cbcb9d-20190429
X-UUID: cd969dad2c0c417daf768d7224cbcb9d-20190429
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <xiaolei.li@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2003842104; Mon, 29 Apr 2019 01:57:47 -0800
Received: from mtkmbs03n1.mediatek.inc (172.21.101.181) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 29 Apr 2019 02:57:46 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by mtkmbs03n1.mediatek.inc
 (172.21.101.181) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Mon, 29 Apr 2019 17:57:44 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 29 Apr 2019 17:57:43 +0800
Message-ID: <1556531863.26455.49.camel@mhfsdcap03>
Subject: Re: [PATCH 5/5] mtd: rawnand: mtk: Setup empty page threshold
 correctly
From: xiaolei li <xiaolei.li@mediatek.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Date: Mon, 29 Apr 2019 17:57:43 +0800
In-Reply-To: <20190429112200.42a86815@xps13>
References: <20190429063834.45967-1-xiaolei.li@mediatek.com>
 <20190429063834.45967-6-xiaolei.li@mediatek.com>
 <20190429112200.42a86815@xps13>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_025750_346895_1F206C2E 
X-CRM114-Status: GOOD (  16.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: richard@nod.at, linux-mediatek@lists.infradead.org,
 linux-mtd@lists.infradead.org, srv_heupstream@mediatek.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgTWlxdWVsLAoKT24gTW9uLCAyMDE5LTA0LTI5IGF0IDExOjIyICswMjAwLCBNaXF1ZWwgUmF5
bmFsIHdyb3RlOgo+IEhpIFhpYW9sZWksCj4gCj4gWGlhb2xlaSBMaSA8eGlhb2xlaS5saUBtZWRp
YXRlay5jb20+IHdyb3RlIG9uIE1vbiwgMjkgQXByIDIwMTkgMTQ6Mzg6MzQKPiArMDgwMDoKPiAK
PiA+IE1USyBOQU5EIENvbnRyb2xsZXIgaGFzIHRoZSBhYmlsaXR5IHRvIGNoZWNrIHdoZXRoZXIg
cmVhZCBkYXRhIGFyZQo+ID4gbW9zdGx5IDB4ZmYgYnkgY29tcGFyaW5nIHplcm8gYml0IGNvbnV0
IG9mIHJlYWQgZGF0YSB3aXRoIGVtcHR5Cj4gCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgY291bnQgPyAKU29ycnkgZm9yIHRoZSB0eXBvLiBXaWxsIGZpeCBpdC4KCj4gPiB0
aHJlc2hvbGQgYXV0b21hdGljYWxseS4KPiA+IAo+ID4gQnV0IG5vdyB3ZSBuZXZlciBzZXQgdGhp
cyB0aHJlc2hvbGQgYW5kIGFsd2F5cyBtYWtlIGl0IGJlIGRlZmF1bHQgdmFsdWUKPiA+IHdoaWNo
IGlzIDEwLgo+ID4gCj4gPiBUaGlzIHBhdGNoIGZpeGVzIHRoaXMgcHJvYmxlbSBieSBzZXR0aW5n
IGVtcHR5IHRocmVzaG9sZCBhcyB0aGUgcHJvZHVjdAo+ID4gb2YgcmVhZCBzZWN0b3IgY291bnQg
YW5kIGVjYyBzdHJlbmd0aC4KPiAKPiBEbyB3ZSB1c2UgdGhlc2UgZmVhdHVyZSB5ZXQ/Clllcy4g
VGhpcyBmZWF0dXJlIGlzIGFsd2F5cyBvbi4KCk5BTkQgQ29udHJvbGxlciBjb3VudHMgemVybyBi
aXQgd2hlbiByZWFkIGRhdGEsIGFuZCBjb21wYXJlIHplcm8gYml0CmNvdW50IHdpdGggZW1wdHkg
dGhyZXNob2xkIHRvIGRldGVybWluZSB3aGV0aGVyIGRhdGEgaXMgbW9zdGx5IDB4ZmYuCklmIHpl
cm8gYml0IGNvdW50IGlzIGxlc3MgdGhhbiB0aGUgdGhyZXNob2xkLCBiaXRbMTJdIG9mIHJlZ2lz
dGVyCk5GSV9TVEEsIFNUQV9FTVBfUEFHRSBpbiBtdGtfbmFuZC5jLCB3aWxsIGJlIHNldCBhcyAx
LgoKPiAKPiBzL2VjYy9FQ0MvCk9LLgo+IAo+ID4gCj4gPiBGaXhlczogOTNkYjQ0NmE0MjRjICgi
bXRkOiBuYW5kOiBtb3ZlIHJhdyBOQU5EIHJlbGF0ZWQgY29kZSB0byB0aGUgcmF3LyBzdWJkaXIi
KQo+IAo+IERpdHRvLgpPSy4KCj4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBYaWFvbGVpIExpIDx4aWFv
bGVpLmxpQG1lZGlhdGVrLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvbXRkL25hbmQvcmF3L210
a19uYW5kLmMgfCA1ICsrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQo+
ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tdGQvbmFuZC9yYXcvbXRrX25hbmQuYyBiL2Ry
aXZlcnMvbXRkL25hbmQvcmF3L210a19uYW5kLmMKPiA+IGluZGV4IGNmNWU1MGU3MDRhZS4uNjc1
ZDRmYWEzNDgwIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9tdGQvbmFuZC9yYXcvbXRrX25hbmQu
Ywo+ID4gKysrIGIvZHJpdmVycy9tdGQvbmFuZC9yYXcvbXRrX25hbmQuYwo+ID4gQEAgLTk0LDYg
Kzk0LDcgQEAKPiA+ICAjZGVmaW5lIE5GSV9NQVNURVJfU1RBCQkoMHgyMjQpCj4gPiAgI2RlZmlu
ZQkJTUFTVEVSX1NUQV9NQVNLCQkoMHgwRkZGKQo+ID4gICNkZWZpbmUgTkZJX0VNUFRZX1RIUkVT
SAkoMHgyM0MpCj4gPiArI2RlZmluZQkJRU1QVFlfVEhSRVNIX01BU0sJR0VOTUFTSyg3LCAwKQo+
ID4gIAo+ID4gICNkZWZpbmUgTVRLX05BTUUJCSJtdGstbmFuZCIKPiA+ICAjZGVmaW5lIEtCKHgp
CQkJKCh4KSAqIDEwMjRVTCkKPiA+IEBAIC05MzEsNiArOTMyLDEwIEBAIHN0YXRpYyBpbnQgbXRr
X25mY19yZWFkX3N1YnBhZ2Uoc3RydWN0IG10ZF9pbmZvICptdGQsIHN0cnVjdCBuYW5kX2NoaXAg
KmNoaXAsCj4gPiAgCQlyZXR1cm4gLUVJTlZBTDsKPiA+ICAJfQo+ID4gIAo+ID4gKwkvKiBTZXR1
cCBlbXB0eSB0aHJlc2hvbGQgKi8KPiA+ICsJcmVnID0gbWF4KHNlY3RvcnMgKiBjaGlwLT5lY2Mu
c3RyZW5ndGgsIEVNUFRZX1RIUkVTSF9NQVNLKTsKPiA+ICsJbmZpX3dyaXRlbChuZmMsIHJlZywg
TkZJX0VNUFRZX1RIUkVTSCk7Cj4gPiArCj4gPiAgCXJlZyA9IG5maV9yZWFkdyhuZmMsIE5GSV9D
TkZHKTsKPiA+ICAJcmVnIHw9IENORkdfUkVBRF9FTiB8IENORkdfRE1BX0JVUlNUX0VOIHwgQ05G
R19BSEI7Cj4gPiAgCWlmICghcmF3KSB7Cj4gCj4gCj4gCj4gCj4gVGhhbmtzLAo+IE1pcXXDqGwK
ClRoYW5rcywKWGlhb2xlaQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
