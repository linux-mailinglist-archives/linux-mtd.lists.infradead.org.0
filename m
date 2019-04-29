Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE18DD17
	for <lists+linux-mtd@lfdr.de>; Mon, 29 Apr 2019 09:47:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f0lnu5wzvpIuPPkv+M5KUZ6YIE/8STMOMQLPBBPbgFc=; b=Jc+ehr4EKeaSf5
	uuud3wMBsqZAI7cyr9sz30MU10ql3/9P0tVDb/IgMCGcmfwUUKvoaCrTmrW48wEOz51vdIXYRZobC
	ka02QH+iI2wB6OawTXtqukkD2Mw+IXTS7eJJAVUfqPgQzzBoUlSbd1KBTt87a/Z1vi7rpWG0bhOkB
	QmbQJDbjXhsH0ua8GD9L8LlpeoXtzE6iwGmq8k+lqpEGrHbOTzzUDaHDTOjvaGO+jAYQYyu5wRkx2
	cDaWOhqFgHsNOd8sF8e0mzKJzEAtrX4dEarKGjogpN8JqFXSkifSwei7puBtBE5jXFvBbcL85OjGs
	vvLaly1DFWccrOsMoukQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL100-00040z-SU; Mon, 29 Apr 2019 07:46:52 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0zr-000403-Hs; Mon, 29 Apr 2019 07:46:45 +0000
Received: from xps13 (aaubervilliers-681-1-27-33.w90-88.abo.wanadoo.fr
 [90.88.147.33]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 57AE2100014;
 Mon, 29 Apr 2019 07:44:31 +0000 (UTC)
Date: Mon, 29 Apr 2019 09:44:30 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Xiaolei Li <xiaolei.li@mediatek.com>
Subject: Re: [RFC PATCH v2 1/1] mtd: rawnand: mtk: Re-license MTK NAND
 driver as Dual MIT/GPL
Message-ID: <20190429094430.7715f7a1@xps13>
In-Reply-To: <20190425015552.42638-2-xiaolei.li@mediatek.com>
References: <20190425015552.42638-1-xiaolei.li@mediatek.com>
 <20190425015552.42638-2-xiaolei.li@mediatek.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_004643_737256_459D3F08 
X-CRM114-Status: UNSURE (   6.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
Cc: daniel.thompson@linaro.org, ryder.lee@mediatek.com,
 srv_heupstream@mediatek.com, richard@nod.at, yingjoe.chen@mediatek.com,
 jorge.ramirez-ortiz@linaro.org, boris.brezillon@bootlin.com,
 linux-mtd@lists.infradead.org, yellowriver2010@hotmail.com, rafal@milecki.pl,
 linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgWGlhb2xlaSwKClhpYW9sZWkgTGkgPHhpYW9sZWkubGlAbWVkaWF0ZWsuY29tPiB3cm90ZSBv
biBUaHUsIDI1IEFwciAyMDE5IDA5OjU1OjUyCiswODAwOgoKPiBJdCBpcyBhbGxvd2VkIHRvIHVz
ZSBNVEsgTkFORCBkcml2ZXIgd2l0aCBHUEwtMi4wIG9yIE1JVCBsaWNlbnNlLgo+IEJ1dCBub3cg
aXQgaXMgb25seSBsaWNlbnNlZCBhcyBHUEwtMi4wLgo+IFNvIHJlLWxpY2Vuc2UgaXQgYXMgZHVh
bCBNSVQvR1BMLgo+IAoKWW91IGFsc28gcmVtb3ZlIHRoZSBsaWNlbnNlIHRleHQgYW5kIHJlcGxh
Y2UgaXQgd2l0aCBhbiBTUERYIHRhZywKcGxlYXNlIGRlc2NyaWJlIHRoaXMgY2hhbmdlIHRvby4K
Cj4gU2lnbmVkLW9mZi1ieTogWGlhb2xlaSBMaSA8eGlhb2xlaS5saUBtZWRpYXRlay5jb20+Cj4g
QWNrZWQtYnk6IEpvcmdlIFJhbWlyZXotT3J0aXogPGpvcmdlLnJhbWlyZXotb3J0aXpAbGluYXJv
Lm9yZz4KPiAtLS0KClRoYW5rcywKTWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcg
bGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10
ZC8K
