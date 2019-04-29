Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB1FE004
	for <lists+linux-mtd@lfdr.de>; Mon, 29 Apr 2019 12:02:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TzLqyivkBN5O2oYQfcwwhidttd7w9+qht2a3yIIxu4M=; b=myizl29uqtIS46
	oBGPLl/IV0QZJhcBpcIAX/nRUdPS9I5KJ5UM4X8C0xNKqwFeZmUCVauhmiWzq/dTcWXfwUx9bwbqO
	KOf5D8NeWbI7rsU2poJrJGiYesGwFvzeNSTulO3SH2xQeJV/fFibOejGdcfZ+3QA/EguPSvsylEoF
	CzRluxVSC7iew5OElcLyH65u7bN6gkOQE3TZR/fjQ1qlszZrnQUkk4fqvhNXgHx+KwULXPZ7zN0m3
	z3ZMhi71tbOxp/RmOxc59LXTEXxhNX6Lh8tA09TCxrPEDXhgjHDjAPpLo3yUPZkY1ev8oFKDWk/2p
	tX6qlg3/dDJOYj05dWGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL37d-0002q9-SW; Mon, 29 Apr 2019 10:02:53 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL37J-0002Y8-2n; Mon, 29 Apr 2019 10:02:34 +0000
X-UUID: d2a92615ae80407eb232b2ce53f9be9d-20190429
X-UUID: d2a92615ae80407eb232b2ce53f9be9d-20190429
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <xiaolei.li@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1037977541; Mon, 29 Apr 2019 02:02:26 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 29 Apr 2019 03:02:25 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by mtkmbs01n2.mediatek.inc
 (172.21.101.79) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Mon, 29 Apr 2019 18:02:17 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 29 Apr 2019 18:02:15 +0800
Message-ID: <1556532135.26455.51.camel@mhfsdcap03>
Subject: Re: [RFC PATCH v3 1/1] mtd: rawnand: mtk: Re-license MTK NAND
 driver as Dual MIT/GPL
From: xiaolei li <xiaolei.li@mediatek.com>
To: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
Date: Mon, 29 Apr 2019 18:02:15 +0800
In-Reply-To: <82cc648b1e92d5ed6876b025a2da1821@milecki.pl>
References: <20190429085116.60081-1-xiaolei.li@mediatek.com>
 <20190429085116.60081-2-xiaolei.li@mediatek.com>
 <82cc648b1e92d5ed6876b025a2da1821@milecki.pl>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 3722F1CCA0E1445F5003EAE7388B20E17F7446CEC1C12C0BD26A8029DC3112282000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_030233_133447_F9828B02 
X-CRM114-Status: UNSURE (   8.92  )
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
 srv_heupstream@mediatek.com, richard@nod.at, miquel.raynal@bootlin.com,
 jorge.ramirez-ortiz@linaro.org, yingjoe.chen@mediatek.com,
 boris.brezillon@collabora.com, linux-mtd@lists.infradead.org,
 yellowriver2010@hotmail.com, matthias.bgg@gmail.com,
 linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgUmFmYcWCLAoKT24gTW9uLCAyMDE5LTA0LTI5IGF0IDExOjQxICswMjAwLCBSYWZhxYIgTWnF
gmVja2kgd3JvdGU6Cj4gT24gMjAxOS0wNC0yOSAxMDo1MSwgWGlhb2xlaSBMaSB3cm90ZToKPiA+
IEl0IGlzIGFsbG93ZWQgdG8gdXNlIE1USyBOQU5EIGRyaXZlciB3aXRoIEdQTC0yLjAgb3IgTUlU
IGxpY2Vuc2UuCj4gCj4gV2hhdCBkbyB5b3UgbWVhbiBieSAiSXQgaXMgYWxsb3dlZCI/IEFjY29y
ZGluZyB0byB0aGUgbGljZW5zZSBpdCdzIAo+IHJhdGhlciBub3QuCj4gCj4gRGlkIHlvdSBtZWFu
IHNvbWV0aGluZyBsaWtlICJJdCBpdCB3YW50ZWQiPwo+IApUaGFua3MgZm9yIHlvdXIgQUNLIGFu
ZCB5b3VyIHN1Z2dlc3Rpb24uICJJdCBpcyB3YW50ZWQiIHNvdW5kcyBtb3JlCnByb3Blcmx5LgoK
PiAKPiA+IEJ1dCBub3cgaXQgaXMgb25seSBsaWNlbnNlZCBhcyBHUEwtMi4wLgo+ID4gU28gcmUt
bGljZW5zZSBpdCBhcyBkdWFsIE1JVC9HUEwgYW5kIHJlcGxhY2UgbGljZW5zZSB0ZXh0IHdpdGgK
PiA+IFNQRFggdGFnLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBYaWFvbGVpIExpIDx4aWFvbGVp
LmxpQG1lZGlhdGVrLmNvbT4KPiA+IEFja2VkLWJ5OiBKb3JnZSBSYW1pcmV6LU9ydGl6IDxqb3Jn
ZS5yYW1pcmV6LW9ydGl6QGxpbmFyby5vcmc+Cj4gPiBBY2tlZC1ieTogUnlkZXIgTGVlIDxyeWRl
ci5sZWVAbWVkaWF0ZWsuY29tPgo+IAo+IE15IGRldmVsb3BtZW50IGludm9sdmVtZW50IHdhcyB0
cml2aWFsL21pbmltYWwsIHNvIEknbSBPSyBpZiB0aGF0J3Mgd2hhdCAKPiBtb3N0Cj4gZGV2ZWxv
cGVycyB3YW50Lgo+IAo+IEFja2VkLWJ5OiBSYWZhxYIgTWnFgmVja2kgPHJhZmFsQG1pbGVja2ku
cGw+CgpUaGFua3MsClhpYW9sZWkKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
