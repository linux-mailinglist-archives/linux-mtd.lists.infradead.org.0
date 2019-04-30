Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61BE9EE19
	for <lists+linux-mtd@lfdr.de>; Tue, 30 Apr 2019 03:00:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G4CLJVMvLLuB4WvUUqa4GojaudAe35fvt0fH9suhkTQ=; b=RFFswJ5dVcvVXb
	Rgp5lo6wQDhSOmTUmEu8A6Bek74vJw+U1zolFOiCGnE2SM49HHln+l1qg/hwFwHos9IDkCGQ4sIl2
	/z1tISBbmII49rwEPpGhNaY8vKTH3yYcg8WEvtJML9NS0sDBotOfCoKnZZOAGqwMeS2WB8z9uBETd
	SOBH+omhExoL9vrh3gjFyBue8p+9QyMfUOX0VqwF2OKg/aRV5ZxPblr85Rzz61BPpTiUhXvEJcpyN
	Wc2iyZauCsfGBNwXAIs67/1GLRdP8nBdhjdSod6w5MOCq3iS6edptqQU+IVhLYqgovvIOHxKIk1Jp
	u2/HKLH5RlQ4ado0yiOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLH7y-0002Sl-6w; Tue, 30 Apr 2019 01:00:10 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLH7m-0002SJ-0l; Tue, 30 Apr 2019 00:59:59 +0000
X-UUID: 683ab51f60324426a5d99c9682cc96f8-20190429
X-UUID: 683ab51f60324426a5d99c9682cc96f8-20190429
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <xiaolei.li@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 429387548; Mon, 29 Apr 2019 16:59:47 -0800
Received: from mtkmbs03n2.mediatek.inc (172.21.101.182) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 29 Apr 2019 17:59:45 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by mtkmbs03n2.mediatek.inc
 (172.21.101.182) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 30 Apr 2019 08:59:43 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 30 Apr 2019 08:59:42 +0800
Message-ID: <1556585982.26455.52.camel@mhfsdcap03>
Subject: Re: [PATCH 1/5] mtd: rawnand: mtk: Correct low level time
 calculation of r/w cycle
From: xiaolei li <xiaolei.li@mediatek.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Date: Tue, 30 Apr 2019 08:59:42 +0800
In-Reply-To: <20190429120226.43589cdd@xps13>
References: <20190429063834.45967-1-xiaolei.li@mediatek.com>
 <20190429063834.45967-2-xiaolei.li@mediatek.com>
 <20190429110341.208c096e@xps13>	<1556530553.26455.35.camel@mhfsdcap03>
 <20190429120226.43589cdd@xps13>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 81D1B13D1D068EC76291F1472589B877C62AC821AD383D3EAC1B2D2B7B37890B2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_175958_064854_464F73F0 
X-CRM114-Status: GOOD (  18.07  )
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

T24gTW9uLCAyMDE5LTA0LTI5IGF0IDEyOjAyICswMjAwLCBNaXF1ZWwgUmF5bmFsIHdyb3RlOgo+
IEhpIHhpYW9sZWksCj4gCj4geGlhb2xlaSBsaSA8eGlhb2xlaS5saUBtZWRpYXRlay5jb20+IHdy
b3RlIG9uIE1vbiwgMjkgQXByIDIwMTkgMTc6MzU6NTMKPiArMDgwMDoKPiAKPiA+IEhpIE1pcXVl
bCwKPiA+IAo+ID4gVGhhbmtzIGZvciB5b3VyIHJldmlldy4KPiA+IAo+ID4gCj4gPiBPbiBNb24s
IDIwMTktMDQtMjkgYXQgMTE6MDMgKzAyMDAsIE1pcXVlbCBSYXluYWwgd3JvdGU6Cj4gPiA+IEhp
IFhpYW9sZWksCj4gPiA+IAo+ID4gPiBYaWFvbGVpIExpIDx4aWFvbGVpLmxpQG1lZGlhdGVrLmNv
bT4gd3JvdGUgb24gTW9uLCAyOSBBcHIgMjAxOSAxNDozODozMAo+ID4gPiArMDgwMDoKPiA+ID4g
ICAKPiA+ID4gPiBBdCBwcmVzZW50LCB0aGUgZmxvdyBvZiBjYWxjdWxhdGluZyBBQyB0aW1pbmcg
b2YgcmVhZC93cml0ZSBjeWNsZSBpbiBTRFIKPiA+ID4gPiBtb2RlIGlzIHRoYXQ6Cj4gPiA+ID4g
QXQgZmlyc3QsIGNhbGN1bGF0ZSBoaWdoIGhvbGQgdGltZSB3aGljaCBpcyB2YWxpZCBmb3IgYm90
aCByZWFkIGFuZCB3cml0ZQo+ID4gPiA+IGN5Y2xlIHVzaW5nIHRoZSBtYXggdmFsdWUgYmV0d2Vl
biB0UkVIX21pbiBhbmQgdFdIX21pbi4KPiA+ID4gPiBTZWNvbmRseSwgY2FsY3VsYXRlIFdFIyBw
dWxzZSB3aWR0aCB1c2luZyB0V1BfbWluLgo+ID4gPiA+IFRocmlkbHksIGNhbGN1bGF0ZSBSRSMg
cHVsc2Ugd2lkdGggdXNpbmcgdGhlIGJpZ2dlciBvbmUgYmV0d2VlbiB0UkVBX21heAo+ID4gPiA+
IGFuZCB0UlBfbWluLgo+ID4gPiA+IAo+ID4gPiA+IEJ1dCBOQU5EIFNQRUMgc2hvd3MgdGhhdCBD
b250cm9sbGVyIHNob3VsZCBhbHNvIG1lZXQgd3JpdGUvcmVhZCBjeWNsZSB0aW1lLgo+ID4gPiA+
IFRoYXQgaXMgd3JpdGUgY3ljbGUgdGltZSBzaG91bGQgYmUgbW9yZSB0aGFuIHRXQ19taW4gYW5k
IHJlYWQgY3ljbGUgc2hvdWxkCj4gPiA+ID4gYmUgbW9yZSB0aGFuIHRSQ19taW4uIE9idmlvdXNs
eSwgd2UgZG8gbm90IGFjaGlldmUgdGhhdCBub3cuCj4gPiA+ID4gCj4gPiA+ID4gVGhpcyBwYXRj
aCBjb3JyZWN0cyB0aGUgbG93IGxldmVsIHRpbWUgY2FsY3VsYXRpb24gdG8gbWVldCBtaW5pbXVt
Cj4gPiA+ID4gcmVhZC93cml0ZSBjeWNsZSB0aW1lIHJlcXVpcmVkLiBBZnRlciBnZXR0aW5nIHRo
ZSBoaWdoIGhvbGQgdGltZSwgV0UjIGxvdwo+ID4gPiA+IGxldmVsIHRpbWUgd2lsbCBiZSBwcm9t
aXNlZCB0byBtZWV0IHRXUF9taW4gYW5kIHRXQ19taW4gcmVxdWlyZW1lbnQsCj4gPiA+ID4gYW5k
IFJFIyBsb3cgbGV2ZWwgdGltZSB3aWxsIGJlIHByb21pc2VkIHRvIG1lZXQgdFJFQV9tYXgsIHRS
UF9taW4gYW5kCj4gPiA+ID4gdFJDX21pbiByZXF1aXJlbWVudC4KPiA+ID4gPiAKPiA+ID4gPiBG
aXhlczogOTNkYjQ0NmE0MjRjICgibXRkOiBuYW5kOiBtb3ZlIHJhdyBOQU5EIHJlbGF0ZWQgY29k
ZSB0byB0aGUgcmF3LyBzdWJkaXIiKSAgCj4gPiA+IAo+ID4gPiBUaGlzIGlzIGRlZmluaXRlbHkg
bm90IHRoZSBmYXVsdHkgcGF0Y2guIFBsZWFzZSB1c2UgLS1mb2xsb3cgd2hlbgo+ID4gPiBzZWFy
Y2hpbmcgZm9yIHRoZSBjdWxwcml0LCB0byBhdm9pZCBiZWluZyBibG9ja2VkIGJ5IHRoZQo+ID4g
PiByZW5hbWluZy9tb3Zpbmcgd29yay4gIAo+ID4gWWVzLiBUaGlzIGlzc3VlIGV4aXN0cyBiZWZv
cmUgcmF3LyBzdWRpciBiZWluZyBjcmVhdGVkLgo+ID4gCj4gPiBUaGUgZmF1bHR5IHBhdGNoIHNo
b3VsZCBiZSAnY29tbWl0IGVkZmVlMzYxOWM0OSAoIm10ZDogbmFuZDogbXRrOiBhZGQKPiA+IC0+
c2V0dXBfZGF0YV9pbnRlcmZhY2UoKSBob29rIiknIHdoaWNoIGNhbm5vdCBiZSBmb3VuZCBpbiBn
aXQgaGlzdG9yeSAgCj4gPiBub3cuCj4gPiAKPiA+IFNob3VsZCBJIGxpc3QgaXQgaGVyZT8KPiAK
PiBXaGF0IGRvIHlvdSBtZWFuPyBUaGlzIGNvbW1pdCBleGlzdHMsIEkgY2FuIGFjdHVhbGx5ICJn
aXQgc2hvdyIgaXQuCj4gClNvcnJ5LiBJIGZpbmQgaXQuIFdpbGwgZml4IGl0IGluIG5leHQgcGF0
Y2ggdmVyc2lvbi4KVGhhbmtzLgoKPiAKPiBUaGFua3MsCj4gTWlxdcOobAoKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRp
c2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtbXRkLwo=
