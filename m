Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDAE74B4FC
	for <lists+linux-mtd@lfdr.de>; Wed, 19 Jun 2019 11:33:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ijG2cYPslUoGPji6xhax28KxGMCp8zGrsJm2yjZ8wis=; b=Mo/HIEq6PLcErD
	7Frbj02+gXC2qpD6Th5VnYkeLECSokmk4VGj6s/QvEkRdWTYRDG9wO49XKR+ezDL9yR3Xx2RSfKLk
	7mc8f2TZ7xU43D8anMlapTn2+o3mucPqdMdMNSzjxOuJkCsqsWdcCtVuYjX2sgEbpooqdg1eRES2R
	kaUf/EFoY5QcECC/49hJFX8bg7Dv7efz1cgvY/LlRQHElN3ZXUzaevIWZDTrkPKElAGv8NnmGaP4P
	AlnmSPoXpstYEpDfIstZS9d5L7S1u3GmODocKVyOiEfBEmDa4Nkc65zHgabUL+uDP1l8n8Elwx2rF
	iEFwGPcoTHHRA4MAen0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdWxi-0005pn-GI; Wed, 19 Jun 2019 09:33:02 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdWxV-0005oQ-No; Wed, 19 Jun 2019 09:32:51 +0000
X-UUID: 5fab98beb67749cfbbc78a42cda4e01c-20190619
X-UUID: 5fab98beb67749cfbbc78a42cda4e01c-20190619
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <xiaolei.li@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1472731413; Wed, 19 Jun 2019 01:32:45 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 19 Jun 2019 02:32:43 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by mtkmbs01n1.mediatek.inc
 (172.21.101.68) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Wed, 19 Jun 2019 17:32:41 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 19 Jun 2019 17:32:40 +0800
Message-ID: <1560936760.19057.1.camel@mhfsdcap03>
Subject: Re: [RFC PATCH v4 1/1] mtd: rawnand: mtk: Re-license MTK NAND
 driver as Dual MIT/GPL
From: xiaolei li <xiaolei.li@mediatek.com>
To: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
Date: Wed, 19 Jun 2019 17:32:40 +0800
In-Reply-To: <75974a2066425e5852d0295b22d2b259@milecki.pl>
References: <20190507092020.1917-1-xiaolei.li@mediatek.com>
 <20190507092020.1917-2-xiaolei.li@mediatek.com>
 <CAK8P3a3d-2U=hpb0P0+W-eZ0cviwKVwy6dWvHbhBCgF4CJUWKA@mail.gmail.com>
 <5052ea548ce89c1a588236d00319960b@milecki.pl>
 <1558685891.18315.33.camel@mhfsdcap03>
 <75974a2066425e5852d0295b22d2b259@milecki.pl>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_023249_782659_D34E39E8 
X-CRM114-Status: GOOD (  16.16  )
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

SGkgUmFmYWwsCgpPbiBUdWUsIDIwMTktMDYtMTggYXQgMTE6MzYgKzAyMDAsIFJhZmHFgiBNacWC
ZWNraSB3cm90ZToKPiBPbiAyMDE5LTA1LTI0IDEwOjE4LCB4aWFvbGVpIGxpIHdyb3RlOgo+ID4g
T24gRnJpLCAyMDE5LTA1LTI0IGF0IDA5OjU1ICswMjAwLCBSYWZhxYIgTWnFgmVja2kgd3JvdGU6
Cj4gPj4gT24gMjAxOS0wNS0yNCAwOTo1MiwgQXJuZCBCZXJnbWFubiB3cm90ZToKPiA+PiA+IE9u
IFR1ZSwgTWF5IDcsIDIwMTkgYXQgMTE6MjAgQU0gWGlhb2xlaSBMaSA8eGlhb2xlaS5saUBtZWRp
YXRlay5jb20+Cj4gPj4gPiB3cm90ZToKPiA+PiA+Pgo+ID4+ID4+IEl0IGlzIHdhbnRlZCB0byB1
c2UgTVRLIE5BTkQgZHJpdmVyIHdpdGggR1BMLTIuMCBvciBNSVQgbGljZW5zZS4KPiA+PiA+PiBC
dXQgbm93IGl0IGlzIG9ubHkgbGljZW5zZWQgYXMgR1BMLTIuMC4KPiA+PiA+PiBTbyByZS1saWNl
bnNlIGl0IGFzIGR1YWwgTUlUL0dQTCBhbmQgcmVwbGFjZSBsaWNlbnNlIHRleHQgd2l0aAo+ID4+
ID4+IFNQRFggdGFnLgo+ID4+ID4+Cj4gPj4gPj4gU2lnbmVkLW9mZi1ieTogWGlhb2xlaSBMaSA8
eGlhb2xlaS5saUBtZWRpYXRlay5jb20+Cj4gPj4gPj4gQWNrZWQtYnk6IEpvcmdlIFJhbWlyZXot
T3J0aXogPGpvcmdlLnJhbWlyZXotb3J0aXpAbGluYXJvLm9yZz4KPiA+PiA+PiBBY2tlZC1ieTog
UnlkZXIgTGVlIDxyeWRlci5sZWVAbWVkaWF0ZWsuY29tPgo+ID4+ID4+IEFja2VkLWJ5OiBSYWZh
xYIgTWnFgmVja2kgPHJhZmFsQG1pbGVja2kucGw+Cj4gPj4gPj4gQWNrZWQtYnk6IE1pcXVlbCBS
YXluYWwgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5jb20+Cj4gPj4gPj4gQWNrZWQtYnk6IEJvcmlz
IEJyZXppbGxvbiA8Ym9yaXMuYnJlemlsbG9uQGNvbGxhYm9yYS5jb20+Cj4gPj4gPj4gQWNrZWQt
Ynk6IFJvZ2VyQ0MgTGluIDxyb2dlcmNjLmxpbkBtZWRpYXRlay5jb20+Cj4gPj4gPgo+ID4+ID4g
QWNrZWQtYnk6IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+Cj4gPj4gPgo+ID4+ID4gU29y
cnkgZm9yIG1pc3NpbmcgdGhpcyBlYXJsaWVyLgo+ID4+IAo+ID4+IFRoYW5rIHlvdSEKPiA+PiAK
PiA+PiBYaWFvbGVpOiBwbGVhc2UgcmVzZW5kIHRoaXMgcGF0Y2ggd2l0aG91dCBSRkMgaW4gYSBz
dWJqZWN0LiBJIGJlbGlldmUgCj4gPj4gaXQKPiA+PiBjYW4gYmUgYXBwbGllZC9wdXNoZWQgbm93
Lgo+ID4gCj4gPiBUaGFua3MgdmVyeSBtdWNoIGZvciB5b3VyIHJlc3BvbnNlIQo+ID4gSSB3aWxs
IHNlbmQgYSBmb3JtYWwgcGF0Y2ggc29vbi4KPiAKPiBIaSBYaWFvbGVpLCB3aGF0J3MgdGhlIHN0
YXR1cyBvZiB0aGlzPwo+IAo+IEl0IHRvb2sgc29tZSBlZmZvcnQgdG8gc29ydCB0aGF0IGxpY2Vu
c2luZyBvdXQsIEkgYmVsaWV2ZSBoYW5kbGluZyB0aGlzCj4gc29vbmVyIHRoYW4gbGF0ZXIgaXMg
aGlnaGx5IHJlY29tbWVuZGVkLgoKVGhhbmtzIGZvciB5b3VyIGF0dGVudGlvbi4KSSBzZW50IHRo
ZSBmb3JtYWwgcGF0Y2ggYWJvdXQgdHdvIHdlZWtzIGFnby4gU28sIHlvdSBkaWRuJ3QgcmVjZWl2
ZSBpdCwKcmlnaHQgPwoKVGhhbmtzLApYaWFvbGVpCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxp
bmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LW10ZC8K
