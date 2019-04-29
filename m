Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F4CDD43
	for <lists+linux-mtd@lfdr.de>; Mon, 29 Apr 2019 09:58:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0DEC2HG3CCXtjOQL7kJJh1wsjj5ZevmZdcpk1kJBlwI=; b=XoO7howp6M/89M
	gKyCDISr8uG9NeGmcXbcvInO0kPol0R2cAB3+nfGF4wlB3KlTWWyuqRjrpuXRHRKv0I8RhprDIU5J
	t+ilz8a8w7fk5K5KB+b1n/15bOGocOwCoOvIBAcEAAySDY0CPpaqPlgnFfSKATu0WQEHT7t9djMm4
	fcLBzXr4O5clRclsPGXnJeqkeJJCPRdezP4lYmLxS7hQqnp7Um0NwFtpavLzwxgXDT4gynixlC7F9
	6B2EBehBWyO2MY0Gl2zebCixRci+3hBcmrOAAJoR/MJxawKrwsR5qCX4riAhN6OO08WuMR64r1W2P
	cabg4haU1ViscEppH8Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL1Ah-0000Vp-F4; Mon, 29 Apr 2019 07:57:55 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL1AZ-0000V9-IX; Mon, 29 Apr 2019 07:57:49 +0000
X-UUID: 8def36b1ecb4447faf48b87193fa79a3-20190428
X-UUID: 8def36b1ecb4447faf48b87193fa79a3-20190428
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <xiaolei.li@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1524038134; Sun, 28 Apr 2019 23:57:39 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 29 Apr 2019 00:57:37 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by mtkmbs08n1.mediatek.inc
 (172.21.101.55) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Mon, 29 Apr 2019 15:57:36 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 29 Apr 2019 15:57:34 +0800
Message-ID: <1556524654.26455.27.camel@mhfsdcap03>
Subject: Re: [RFC PATCH v2 1/1] mtd: rawnand: mtk: Re-license MTK NAND
 driver as Dual MIT/GPL
From: xiaolei li <xiaolei.li@mediatek.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Date: Mon, 29 Apr 2019 15:57:34 +0800
In-Reply-To: <20190429094430.7715f7a1@xps13>
References: <20190425015552.42638-1-xiaolei.li@mediatek.com>
 <20190425015552.42638-2-xiaolei.li@mediatek.com>
 <20190429094430.7715f7a1@xps13>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_005747_620506_4DDE316D 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
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
 srv_heupstream@mediatek.com, richard@nod.at, yingjoe.chen@mediatek.com,
 jorge.ramirez-ortiz@linaro.org, boris.brezillon@bootlin.com,
 linux-mtd@lists.infradead.org, yellowriver2010@hotmail.com, rafal@milecki.pl,
 linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgTWlxdWVsLAoKT24gTW9uLCAyMDE5LTA0LTI5IGF0IDA5OjQ0ICswMjAwLCBNaXF1ZWwgUmF5
bmFsIHdyb3RlOgo+IEhpIFhpYW9sZWksCj4gCj4gWGlhb2xlaSBMaSA8eGlhb2xlaS5saUBtZWRp
YXRlay5jb20+IHdyb3RlIG9uIFRodSwgMjUgQXByIDIwMTkgMDk6NTU6NTIKPiArMDgwMDoKPiAK
PiA+IEl0IGlzIGFsbG93ZWQgdG8gdXNlIE1USyBOQU5EIGRyaXZlciB3aXRoIEdQTC0yLjAgb3Ig
TUlUIGxpY2Vuc2UuCj4gPiBCdXQgbm93IGl0IGlzIG9ubHkgbGljZW5zZWQgYXMgR1BMLTIuMC4K
PiA+IFNvIHJlLWxpY2Vuc2UgaXQgYXMgZHVhbCBNSVQvR1BMLgo+ID4gCj4gCj4gWW91IGFsc28g
cmVtb3ZlIHRoZSBsaWNlbnNlIHRleHQgYW5kIHJlcGxhY2UgaXQgd2l0aCBhbiBTUERYIHRhZywK
PiBwbGVhc2UgZGVzY3JpYmUgdGhpcyBjaGFuZ2UgdG9vLgpPSy4gTm8gcHJvYmxlbS4KClRoYW5r
cywKWGlhb2xlaQo+IAo+ID4gU2lnbmVkLW9mZi1ieTogWGlhb2xlaSBMaSA8eGlhb2xlaS5saUBt
ZWRpYXRlay5jb20+Cj4gPiBBY2tlZC1ieTogSm9yZ2UgUmFtaXJlei1PcnRpeiA8am9yZ2UucmFt
aXJlei1vcnRpekBsaW5hcm8ub3JnPgo+ID4gLS0tCj4gCj4gVGhhbmtzLAo+IE1pcXXDqGwKCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
