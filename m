Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A76C815F95
	for <lists+linux-mtd@lfdr.de>; Tue,  7 May 2019 10:40:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w70MNy0F9Uz31uijRg+5Mh2iS3ZvVDZMungnP6hRZUU=; b=BxieZYshVwoqVa
	gXZPjepFkGe4qv+M2oshHtcGNzNiKGqlERLssMfPjWuJgU2h5rFA3HvuWPTcfUH4uQyYMyCrKnS6h
	V77wfIBkAjR7cZsOUKxAhtDxIyOcZsi+lwXQl4F8urUyUuEpsTqVYoCHA4wlknZ97C8PM02Cd5/qA
	ENn1V5clYaX1S0nX6tNWsMebLcJDVZLZU2OjofDlzQzusrAsbPJ2trHyHMTwrTjVP/WZ6b+M5+tcB
	wlbSXUQmkwoaNP/xqW9lnREqql5BDdb1ormLHiyCjRXsPRBIDaD8u8Ffb6Z7KqNoHWIXypJHtcnOa
	4NQrOgDnrksVUgfJMHeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNvec-00086K-2T; Tue, 07 May 2019 08:40:50 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNveS-00085S-B6; Tue, 07 May 2019 08:40:42 +0000
X-UUID: c96ba167cb4d46389d89e87ec76c561e-20190507
X-UUID: c96ba167cb4d46389d89e87ec76c561e-20190507
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <rogercc.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1164526623; Tue, 07 May 2019 00:40:19 -0800
Received: from mtkmbs03n1.mediatek.inc (172.21.101.181) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 7 May 2019 01:40:17 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs03n1.mediatek.inc (172.21.101.181) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 7 May 2019 16:40:15 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 7 May 2019 16:40:15 +0800
Message-ID: <1557218415.17298.1.camel@mtkswgap22>
Subject: Re: [RFC PATCH v3 1/1] mtd: rawnand: mtk: Re-license MTK NAND
 driver as Dual MIT/GPL
From: RogerCC.Lin <rogercc.lin@mediatek.com>
To: xiaolei li <xiaolei.li@mediatek.com>
Date: Tue, 7 May 2019 16:40:15 +0800
In-Reply-To: <1557133906.26455.91.camel@mhfsdcap03>
References: <20190429085116.60081-1-xiaolei.li@mediatek.com>
 <20190429085116.60081-2-xiaolei.li@mediatek.com>
 <82cc648b1e92d5ed6876b025a2da1821@milecki.pl>
 <1557047534.26455.81.camel@mhfsdcap03>
 <79539034414767c95e456a79391a18e7@milecki.pl>
 <1557104180.26455.89.camel@mhfsdcap03>
 <20190506101819.28cff338@collabora.com>
 <1557133906.26455.91.camel@mhfsdcap03>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_014040_380406_986994B7 
X-CRM114-Status: GOOD (  22.83  )
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
Cc: daniel.thompson@linaro.org, ryder.lee@mediatek.com,
 srv_heupstream@mediatek.com, richard@nod.at, miquel.raynal@bootlin.com,
 jorge.ramirez-ortiz@linaro.org, yingjoe.chen@mediatek.com,
 Boris Brezillon <boris.brezillon@collabora.com>, linux-mtd@lists.infradead.org,
 yellowriver2010@hotmail.com,
 =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T24gTW9uLCAyMDE5LTA1LTA2IGF0IDE3OjExICswODAwLCB4aWFvbGVpIGxpIHdyb3RlOgo+IE1p
cXVlbCwgQm9yaXMsIHRoYW5rcyBmb3IgeW91ciBBQ0suCj4gCj4gT24gTW9uLCAyMDE5LTA1LTA2
IGF0IDEwOjE4ICswMjAwLCBCb3JpcyBCcmV6aWxsb24gd3JvdGU6Cj4gPiBPbiBNb24sIDYgTWF5
IDIwMTkgMDg6NTY6MjAgKzA4MDAKPiA+IHhpYW9sZWkgbGkgPHhpYW9sZWkubGlAbWVkaWF0ZWsu
Y29tPiB3cm90ZToKPiA+IAo+ID4gPiBIaSBSYWZhbCwKPiA+ID4gCj4gPiA+IE9uIFN1biwgMjAx
OS0wNS0wNSBhdCAxNzowNiArMDIwMCwgUmFmYcWCIE1pxYJlY2tpIHdyb3RlOgo+ID4gPiA+IE9u
IDIwMTktMDUtMDUgMTE6MTIsIHhpYW9sZWkgbGkgd3JvdGU6ICAKPiA+ID4gPiA+IFVwIHRvIG5v
dywKPiA+ID4gPiA+IFhpYW9sZWkgTGkgPHhpYW9sZWkubGlAbWVkaWF0ZWsuY29tPiAodGhlIGF1
dGhvciBhbmQgbWFqb3IgCj4gPiA+ID4gPiBjb250cmlidXRvciksCj4gPiA+ID4gPiBKb3JnZSBS
YW1pcmV6LU9ydGl6IDxqb3JnZS5yYW1pcmV6LW9ydGl6QGxpbmFyby5vcmc+ICh0aGUgYXV0aG9y
IGFuZAo+ID4gPiA+ID4gbWFqb3IgY29udHJpYnV0b3IpLAo+ID4gPiA+ID4gUnlkZXIgTGVlIDxy
eWRlci5sZWVAbWVkaWF0ZWsuY29tPiAoZGV2ZWxvcGVyKSwKPiA+ID4gPiA+IFJhZmHFgiBNacWC
ZWNraSA8cmFmYWxAbWlsZWNraS5wbD4gKGRldmVsb3BlcikKPiA+ID4gPiA+IHNlbnQgQUNLIGZv
ciB0aGlzIFJGQyBwYXRjaC4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gTWF5IEkgYXNrIGlmIGl0IGlz
IGVub3VnaCB0byBhY2NlcHQgdGhpcyBjaGFuZ2U/IE9yIHNob3VsZCBJIHdhaXQgZm9yCj4gPiA+
ID4gPiBvdGhlciBkZXZlbG9wZXIncyByZXNwb25zZT8gIAo+ID4gPiA+IAo+ID4gPiA+IEkgY2Fu
J3QgaW1hZ2luZSByZS1saWNlbnNpbmcgc29tZW9uZSdzIHdvcmsgd2l0aG91dCBhIHBlcm1pc3Np
b24uICAKPiA+ID4gCj4gPiA+IEkgaGF2ZSBubyBpbnRlbnRpb24gdG8gb2ZmZW5kIG90aGVyJ3Mg
Y29udHJpYnV0aW9uLgo+ID4gPiBUaGF0IGlzIHdoeSBJIHNlbnQgdGhpcyBSRkMgcGF0Y2ggdG8g
YXNrIGZvciBBQ0tzIGZyb20gY29udHJpYnV0b3JzLgo+ID4gPiAKPiA+ID4gPiAKPiA+ID4gPiBU
aGUgYmVzdCB5b3UgY2FuIGRvIGlzIGlnbm9yaW5nIGNvbnRyaWJ1dG9ycyB0aGF0IHN1Ym1pdHRl
ZCBjaGFuZ2VzIHRoYXQKPiA+ID4gPiBhcmVuJ3QgcmVhbGx5IGNvcHlyaWdodGFibGUgKHNvbWV0
aGluZyBsaWtlIGZpeGluZyBhIGNvbW1lbnQgdHlwbywgc29tZQo+ID4gPiA+IGF1dG8tZ2VuZXJh
dGVkIGRpZmYtcykuCj4gPiA+ID4gCj4gPiA+ID4gSSB1c2VkIGZvbGxvd2luZyBjb21tYW5kIHRv
IGNoZWNrIG10a19uYW5kLmMgZmlsZSBoaXN0b3J5Ogo+ID4gPiA+ICMgZ2l0IGxvZyAtLWZvbGxv
dyBkcml2ZXJzL210ZC9uYW5kL3Jhdy9tdGtfbmFuZC5jIHwgZ3JlcCAKPiA+ID4gPiAiU2lnbmVk
LW9mZi1ieSIgfCBzb3J0IHwgdW5pcSAtYyB8IHNvcnQgLXIgLW4KPiA+ID4gPiAgICAgICAxOSAg
ICAgU2lnbmVkLW9mZi1ieTogTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290bGluLmNv
bT4KPiA+ID4gPiAgICAgICAxOCAgICAgU2lnbmVkLW9mZi1ieTogQm9yaXMgQnJlemlsbG9uIDxi
b3Jpcy5icmV6aWxsb25AYm9vdGxpbi5jb20+Cj4gPiA+ID4gICAgICAgMTUgICAgIFNpZ25lZC1v
ZmYtYnk6IEJvcmlzIEJyZXppbGxvbiAKPiA+ID4gPiA8Ym9yaXMuYnJlemlsbG9uQGZyZWUtZWxl
Y3Ryb25zLmNvbT4KPiA+ID4gPiAgICAgICAgNiAgICAgU2lnbmVkLW9mZi1ieTogWGlhb2xlaSBM
aSA8eGlhb2xlaS5saUBtZWRpYXRlay5jb20+Cj4gPiA+ID4gICAgICAgIDMgICAgIFNpZ25lZC1v
ZmYtYnk6IFJvZ2VyQ0MgTGluIDxyb2dlcmNjLmxpbkBtZWRpYXRlay5jb20+Cj4gPiA+ID4gICAg
ICAgIDIgICAgIFNpZ25lZC1vZmYtYnk6IE1pcXVlbCBSYXluYWwgCj4gPiA+ID4gPG1pcXVlbC5y
YXluYWxAZnJlZS1lbGVjdHJvbnMuY29tPgo+ID4gPiA+ICAgICAgICAxICAgICBTaWduZWQtb2Zm
LWJ5OiBXZWkgWW9uZ2p1biA8d2VpeW9uZ2p1bjFAaHVhd2VpLmNvbT4KPiA+ID4gPiAgICAgICAg
MSAgICAgU2lnbmVkLW9mZi1ieTogUnlkZXIgTGVlIDxyeWRlci5sZWVAbWVkaWF0ZWsuY29tPgo+
ID4gPiA+ICAgICAgICAxICAgICBTaWduZWQtb2ZmLWJ5OiBSYWZhxYIgTWnFgmVja2kgPHJhZmFs
QG1pbGVja2kucGw+Cj4gPiA+ID4gICAgICAgIDEgICAgIFNpZ25lZC1vZmYtYnk6IFBldGVyIFBh
biA8cGV0ZXJwYW5kb25nQG1pY3Jvbi5jb20+Cj4gPiA+ID4gICAgICAgIDEgICAgIFNpZ25lZC1v
ZmYtYnk6IE1hc2FoaXJvIFlhbWFkYSAKPiA+ID4gPiA8eWFtYWRhLm1hc2FoaXJvQHNvY2lvbmV4
dC5jb20+Cj4gPiA+ID4gICAgICAgIDEgICAgIFNpZ25lZC1vZmYtYnk6IEpvcmdlIFJhbWlyZXot
T3J0aXogCj4gPiA+ID4gPGpvcmdlLnJhbWlyZXotb3J0aXpAbGluYXJvLm9yZz4KPiA+ID4gPiAK
PiA+ID4gPiBJZGVhbGx5IHlvdSBzaG91bGQgc3RpbGwgZ2V0IGFja3MgZnJvbToKPiA+ID4gPiAK
PiA+ID4gPiAxKSBNaXF1ZWwKPiA+ID4gPiBDb250cmlidXRvciBvZiAyMSBjaGFuZ2VzCj4gPiA+
ID4gCj4gPiA+ID4gMikgQm9yaXMKPiA+ID4gPiBDb250cmlidXRvciBvZiAzMyBjaGFuZ2VzCj4g
PiAKPiA+IE5vdCBzdXJlIHRoYXQncyByZWFsbHkgbmVjZXNzYXJ5IGdpdmVuIHRoZSB0eXBlIG9m
IGNoYW5nZXMgZG9uZSBpbiB0aG9zZQo+ID4gMzMgY29tbWl0cyAobW9zdGx5IG1lY2hhbmljYWwg
Y2hhbmdlcyBkdWUgdG8gbW9kaWZpY2F0aW9ucyBpbiB0aGUgTkFORAo+ID4gZnJhbWV3b3JrKSwg
YnV0IGhlcmUgaXMgbXkKPiA+IAo+ID4gQWNrZWQtYnk6IEJvcmlzIEJyZXppbGxvbiA8Ym9yaXMu
YnJlemlsbG9uQGNvbGxhYm9yYS5jb20+Cj4gPiAKPiA+ID4gPiAKPiA+ID4gPiAzKSBSb2dlckND
Cj4gPiA+ID4gQ29udHJpYnV0b3Igb2YgMyBjaGFuZ2VzOgo+ID4gPiA+IDk4ZGVhOGQ3MTkzMSAo
Im10ZDogbmFuZDogbXRrOiBTdXBwb3J0IE1UNzYyMiBOQU5EIGZsYXNoIGNvbnRyb2xsZXIuIikK
PiA+ID4gPiBiNDVlZTU1MDFlZGUgKCJtdGQ6IG5hbmQ6IG10azogU3VwcG9ydCBkaWZmZXJlbnQg
TVRLIE5BTkQgZmxhc2ggCj4gPiA+ID4gY29udHJvbGxlciBJUCIpCj4gPiA+ID4gNTU5ZTU4ZTdl
ZDJkICgibXRkOiBuYW5kOiBmaXggY2hhbmNlcyB0byBjcmVhdGUgaW5jb21wbGV0ZSBFQ0MgZGF0
YSB3aGVuIAo+ID4gPiA+IHdyaXRpbmciKQo+ID4gPiA+IApBY2tlZC1ieTogUm9nZXJDQyBMaW4g
PHJvZ2VyY2MubGluQG1lZGlhdGVrLmNvbT4KPiA+ID4gPiA0KSBXZWkKPiA+ID4gPiBDb250cmli
dXRvciBvZiAxIGNoYW5nZToKPiA+ID4gPiAwN2Y3NjQ0M2VmODEgKCJtdGQ6IG5hbmQ6IG1lZGlh
dGVrOiByZW1vdmUgcmVkdW5kYW50IGRldl9lcnIgY2FsbCBpbiAKPiA+ID4gPiBtdGtfbmZjX3By
b2JlKCkiKQo+ID4gPiA+IAo+ID4gPiA+IDUpIFBldGVyCj4gPiA+ID4gQ29udHJpYnV0b3Igb2Yg
MSBjaGFuZ2U6Cj4gPiA+ID4gZDQwOTJkNzZhNGE0ICgibXRkOiBuYW5kOiBSZW5hbWUgbmFuZC5o
IGludG8gcmF3bmFuZC5oIikKPiA+ID4gPiAKPiA+ID4gPiA2KSBNYXNhaGlybwo+ID4gPiA+IENv
bnRyaWJ1dG9yIG9mIDEgY2hhbmdlOgo+ID4gPiA+IGYwZGJlNGFhMzVlNyAoIm10ZDogbmFuZDog
bWVkaWF0ZWs6IHJldHVybiBlcnJvciBjb2RlIG9mIAo+ID4gPiA+IG5hbmRfc2Nhbl9pZGVudC90
YWlsKCkgb24gZXJyb3IiKQo+ID4gPiA+IAo+ID4gPiA+IEkgZ3Vlc3Mgd2UgY291bGQgYWNjZXB0
IHlvdXIgcGF0Y2ggd2l0aG91dCBhY2tzIGZyb20gV2VpLCBQZXRlciBhbmQgCj4gPiA+ID4gTWFz
YWhpcm8uCj4gPiA+ID4gCj4gPiA+ID4gWW91IGRlZmluaXRlbHkgbmVlZCBhbiBhcHByb3ZhbCBm
cm9tIE1pcXVlbCwgQm9yaXMgYW5kIFJvZ2VyQ0MuCj4gPiA+ID4gCj4gPiA+ID4gSXQgZG9lc24n
dCBzZWVtIHlvdSB0b29rIHRoaXMgcmUtbGljZW5zaW5nIHRhc2sgdG9vIHNlcmlvdXNseS4KPiA+
ID4gPiAKPiA+ID4gPiBQbGVhc2UgcGF5IG1vcmUgYXR0ZW50aW9uIHRvIHRoaXMgbGljZW5zaW5n
IHByb2JsZW0sIHlvdSBjYW4gc3RhcnQgd2l0aCAKPiA+ID4gPiBkb2luZwo+ID4gPiA+IGEgc2lt
aWxhciByZXNlYXJjaCBmb3IgbXRrX2VjYy5jIGFuZCBtdGtfZWNjLmguICAKPiA+ID4gCj4gPiA+
IFRoYW5rcyBmb3IgeW91ciBBQ0sgYW5kIGdvb2Qgc3VnZ2VzdGlvbi4gSXQgaXMgcmVhbGx5IGhl
bHBmdWwgZm9yIG1lLgo+ID4gPiAKPiA+ID4gVGhhbmtzLAo+ID4gPiBYaWFvbGVpCj4gPiA+IAo+
ID4gCj4gCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
