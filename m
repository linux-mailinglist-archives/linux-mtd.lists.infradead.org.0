Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 929F24C4D1
	for <lists+linux-mtd@lfdr.de>; Thu, 20 Jun 2019 03:15:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4yexEvoVaApUBfaeWRoK15F3lYWhH9IYR+9N+eK6YRY=; b=WXRXUGrJCv5nJk
	cRw4iIkXecm0Hnrk7k6hybSeXqKUj54e/ANh/DQnNOkT/UpnSlu2psybuoaslkr0FVqq+mYJ1BW73
	SbYE3IQoi+4lK1KS4iFZL12Z7jv7rFWU2nVnVcQKS1+WY3zHxc1ImIElGgm47vAFddPmz61SgLL6w
	zoXP5rjh3CWlVL0ohaqrfNZ4ruuElMScyyNXTHOsaKWhdWKUceHBJKSPUfF/txtCn3aubw12FfpRx
	Ff2XullgkV/eTR63Z43LwzCga/uH+6a1DRUx7RjPJTTek7lt93c36i/ZDCazju0ADtgt27QMCfrwm
	jN2jqCzPOmwUcWrEOZtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdlfo-0005ko-VO; Thu, 20 Jun 2019 01:15:33 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdlfa-0005jA-Ou; Thu, 20 Jun 2019 01:15:20 +0000
X-UUID: 33d9312673e747f6ae5232907f20a5dc-20190619
X-UUID: 33d9312673e747f6ae5232907f20a5dc-20190619
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <xiaolei.li@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1108526305; Wed, 19 Jun 2019 17:14:58 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 19 Jun 2019 18:14:56 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by mtkmbs05n2.mediatek.inc
 (172.21.101.140) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 20 Jun 2019 09:14:55 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 20 Jun 2019 09:14:47 +0800
Message-ID: <1560993287.19057.2.camel@mhfsdcap03>
Subject: Re: [RFC PATCH v4 1/1] mtd: rawnand: mtk: Re-license MTK NAND
 driver as Dual MIT/GPL
From: xiaolei li <xiaolei.li@mediatek.com>
To: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
Date: Thu, 20 Jun 2019 09:14:47 +0800
In-Reply-To: <ce02eca83c4d28f7ea32a586f25b0d35@milecki.pl>
References: <20190507092020.1917-1-xiaolei.li@mediatek.com>
 <20190507092020.1917-2-xiaolei.li@mediatek.com>
 <CAK8P3a3d-2U=hpb0P0+W-eZ0cviwKVwy6dWvHbhBCgF4CJUWKA@mail.gmail.com>
 <5052ea548ce89c1a588236d00319960b@milecki.pl>
 <1558685891.18315.33.camel@mhfsdcap03>
 <75974a2066425e5852d0295b22d2b259@milecki.pl>
 <1560936760.19057.1.camel@mhfsdcap03>
 <ce02eca83c4d28f7ea32a586f25b0d35@milecki.pl>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_181518_819969_C2F088C2 
X-CRM114-Status: GOOD (  17.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Daniel
 Thompson <daniel.thompson@linaro.org>, Ryder Lee <ryder.lee@mediatek.com>,
 srv_heupstream@mediatek.com, Arnd Bergmann <arnd@arndb.de>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Richard Weinberger <richard@nod.at>, Miquel Raynal <miquel.raynal@bootlin.com>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>, jorge.ramirez-ortiz@linaro.org,
 yingjoe.chen@mediatek.com, boris.brezillon@collabora.com,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Wei Yongjun <weiyongjun1@huawei.com>, yellowriver2010@hotmail.com,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 rogercc.lin@mediatek.com, Dan Carpenter <dan.carpenter@oracle.com>,
 peterpandong@micron.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T24gV2VkLCAyMDE5LTA2LTE5IGF0IDEyOjQ5ICswMjAwLCBSYWZhxYIgTWnFgmVja2kgd3JvdGU6
Cj4gT24gMjAxOS0wNi0xOSAxMTozMiwgeGlhb2xlaSBsaSB3cm90ZToKPiA+IE9uIFR1ZSwgMjAx
OS0wNi0xOCBhdCAxMTozNiArMDIwMCwgUmFmYcWCIE1pxYJlY2tpIHdyb3RlOgo+ID4+IE9uIDIw
MTktMDUtMjQgMTA6MTgsIHhpYW9sZWkgbGkgd3JvdGU6Cj4gPj4gPiBPbiBGcmksIDIwMTktMDUt
MjQgYXQgMDk6NTUgKzAyMDAsIFJhZmHFgiBNacWCZWNraSB3cm90ZToKPiA+PiA+PiBPbiAyMDE5
LTA1LTI0IDA5OjUyLCBBcm5kIEJlcmdtYW5uIHdyb3RlOgo+ID4+ID4+ID4gT24gVHVlLCBNYXkg
NywgMjAxOSBhdCAxMToyMCBBTSBYaWFvbGVpIExpIDx4aWFvbGVpLmxpQG1lZGlhdGVrLmNvbT4K
PiA+PiA+PiA+IHdyb3RlOgo+ID4+ID4+ID4+Cj4gPj4gPj4gPj4gSXQgaXMgd2FudGVkIHRvIHVz
ZSBNVEsgTkFORCBkcml2ZXIgd2l0aCBHUEwtMi4wIG9yIE1JVCBsaWNlbnNlLgo+ID4+ID4+ID4+
IEJ1dCBub3cgaXQgaXMgb25seSBsaWNlbnNlZCBhcyBHUEwtMi4wLgo+ID4+ID4+ID4+IFNvIHJl
LWxpY2Vuc2UgaXQgYXMgZHVhbCBNSVQvR1BMIGFuZCByZXBsYWNlIGxpY2Vuc2UgdGV4dCB3aXRo
Cj4gPj4gPj4gPj4gU1BEWCB0YWcuCj4gPj4gPj4gPj4KPiA+PiA+PiA+PiBTaWduZWQtb2ZmLWJ5
OiBYaWFvbGVpIExpIDx4aWFvbGVpLmxpQG1lZGlhdGVrLmNvbT4KPiA+PiA+PiA+PiBBY2tlZC1i
eTogSm9yZ2UgUmFtaXJlei1PcnRpeiA8am9yZ2UucmFtaXJlei1vcnRpekBsaW5hcm8ub3JnPgo+
ID4+ID4+ID4+IEFja2VkLWJ5OiBSeWRlciBMZWUgPHJ5ZGVyLmxlZUBtZWRpYXRlay5jb20+Cj4g
Pj4gPj4gPj4gQWNrZWQtYnk6IFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KPiA+
PiA+PiA+PiBBY2tlZC1ieTogTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290bGluLmNv
bT4KPiA+PiA+PiA+PiBBY2tlZC1ieTogQm9yaXMgQnJlemlsbG9uIDxib3Jpcy5icmV6aWxsb25A
Y29sbGFib3JhLmNvbT4KPiA+PiA+PiA+PiBBY2tlZC1ieTogUm9nZXJDQyBMaW4gPHJvZ2VyY2Mu
bGluQG1lZGlhdGVrLmNvbT4KPiA+PiA+PiA+Cj4gPj4gPj4gPiBBY2tlZC1ieTogQXJuZCBCZXJn
bWFubiA8YXJuZEBhcm5kYi5kZT4KPiA+PiA+PiA+Cj4gPj4gPj4gPiBTb3JyeSBmb3IgbWlzc2lu
ZyB0aGlzIGVhcmxpZXIuCj4gPj4gPj4KPiA+PiA+PiBUaGFuayB5b3UhCj4gPj4gPj4KPiA+PiA+
PiBYaWFvbGVpOiBwbGVhc2UgcmVzZW5kIHRoaXMgcGF0Y2ggd2l0aG91dCBSRkMgaW4gYSBzdWJq
ZWN0LiBJIGJlbGlldmUKPiA+PiA+PiBpdAo+ID4+ID4+IGNhbiBiZSBhcHBsaWVkL3B1c2hlZCBu
b3cuCj4gPj4gPgo+ID4+ID4gVGhhbmtzIHZlcnkgbXVjaCBmb3IgeW91ciByZXNwb25zZSEKPiA+
PiA+IEkgd2lsbCBzZW5kIGEgZm9ybWFsIHBhdGNoIHNvb24uCj4gPj4gCj4gPj4gSGkgWGlhb2xl
aSwgd2hhdCdzIHRoZSBzdGF0dXMgb2YgdGhpcz8KPiA+PiAKPiA+PiBJdCB0b29rIHNvbWUgZWZm
b3J0IHRvIHNvcnQgdGhhdCBsaWNlbnNpbmcgb3V0LCBJIGJlbGlldmUgaGFuZGxpbmcgCj4gPj4g
dGhpcwo+ID4+IHNvb25lciB0aGFuIGxhdGVyIGlzIGhpZ2hseSByZWNvbW1lbmRlZC4KPiA+IAo+
ID4gVGhhbmtzIGZvciB5b3VyIGF0dGVudGlvbi4KPiA+IEkgc2VudCB0aGUgZm9ybWFsIHBhdGNo
IGFib3V0IHR3byB3ZWVrcyBhZ28uIFNvLCB5b3UgZGlkbid0IHJlY2VpdmUgaXQsCj4gPiByaWdo
dCA/Cj4gCj4gSXQgaGFzIG5ldmVyIHJlYWNoZWQgbWUgb3IgbWFpbGluZyBsaXN0LgoKT0suIEkg
d2lsbCByZS1zZW5kIGl0IHRvZGF5LiBUaGFua3MuCgo+IAo+IFNlZToKPiBodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9waXBlcm1haWwvbGludXgtbXRkLzIwMTktSnVuZS90aHJlYWQuaHRtbAo+
IGh0dHBzOi8vcGF0Y2h3b3JrLm96bGFicy5vcmcvcHJvamVjdC9saW51eC1tdGQvbGlzdC8/c2Vy
aWVzPSZzdWJtaXR0ZXI9NzE1OTkmc3RhdGU9KiZxPSZhcmNoaXZlPSZkZWxlZ2F0ZT0KPiAKPiBU
aGUgbGF0ZXN0IG9uZSBpcyBSRkMgdjQuCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxp
c3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQv
Cg==
