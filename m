Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD371926F1
	for <lists+linux-mtd@lfdr.de>; Wed, 25 Mar 2020 12:16:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wDwjkrbPrZ7InbCoJILKxhavOlNNEvli0vNiO7i9KpI=; b=AM4S0mXQmr6hYR
	jtIE371vrJPErIQphXVnLCE3wXkKMn/8UolyI17zEOzS4248tjUG4g2XuyLyZ04/onRHzPyBwUpt7
	1Ps2YipiUpa/S75sVNEnNhTw++x4ywr4ibGMBALnHSHqr3rC0Zf8vtq1NTOVroYPK/0tdLk5BIJVI
	FgDhPKx3Zt2frjYZIgkYg5GInBpEJq9ja9j2IVgdw6qfsSUpjAwCl40SUfZl7xVlwPtEKH7M2MyLE
	xgoLqTv23LW8vhOIxnmEdYwDgKfmf+wezV1n/Pt9wVAYqNUGkSfaAwx+A+M6MfczYRCa+oEyrTSPa
	w5fL9Va+MjGX84LcZtiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH41L-00083b-DI; Wed, 25 Mar 2020 11:16:27 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH41A-00082r-Hu
 for linux-mtd@lists.infradead.org; Wed, 25 Mar 2020 11:16:18 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id F140D24000F;
 Wed, 25 Mar 2020 11:16:09 +0000 (UTC)
Date: Wed, 25 Mar 2020 12:16:08 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: <Tudor.Ambarus@microchip.com>
Subject: Re: [PATCH] mtd: Convert fallthrough comments into statements
Message-ID: <20200325121608.4d2e9f13@xps13>
In-Reply-To: <3012544.xGDKOrPs75@192.168.0.120>
References: <20200324222538.16446-1-miquel.raynal@bootlin.com>
 <3012544.xGDKOrPs75@192.168.0.120>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_041616_731718_668C4CBE 
X-CRM114-Status: UNSURE (   7.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: joe@perches.com, richard@nod.at, linux-mtd@lists.infradead.org,
 vigneshr@ti.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

PFR1ZG9yLkFtYmFydXNAbWljcm9jaGlwLmNvbT4gd3JvdGUgb24gV2VkLCAyNSBNYXIgMjAyMCAx
MTowNjowOCArMDAwMDoKCj4gT24gV2VkbmVzZGF5LCBNYXJjaCAyNSwgMjAyMCAxMjoyNTozOCBB
TSBFRVQgTWlxdWVsIFJheW5hbCB3cm90ZToKPiA+ICBkcml2ZXJzL210ZC9zcGktbm9yL2FzcGVl
ZC1zbWMuYyAgICAgICAgICAgICAgICB8ICAyICstCj4gPiAgZHJpdmVycy9tdGQvc3BpLW5vci9z
cGktbm9yLmMgICAgICAgICAgICAgICAgICAgfCAgMSAtICAKPiAKPiBIaSwgTWlxdWVsLAo+IAo+
IFRoaXMgd2lsbCBjb25mbGljdCB3aXRoIHRoZSBTUEkgTk9SIGNoYW5nZXMgdGhhdCBJIG1hZGUg
aW4gc3BpLW5vci9mb3ItNS43OiBJIAo+IG1vdmVkIGFsbCB0aGUgU1BJIE5PUiBjb250cm9sbGVy
cyBpbiAvZHJpdmVycy9tdGQvc3BpLW5vci9jb250cm9sbGVycyBhbmQKPiBkcml2ZXJzL210ZC9z
cGktbm9yL3NwaS1ub3IuYyBiZWNhbWUgZHJpdmVycy9tdGQvc3BpLW5vci9jb3JlLmMuCgpSaWdo
dCwgSSBiYXNlZCBpdCBvbiBtdGQvbmV4dC4gSSB3aWxsIGFwcGx5IGl0IGFmdGVyIG1lcmdpbmcg
YWxsIHlvdXIKYnJhbmNocyBhbmQgZml4IG15IHBhdGNoIGlmIG5lZWRlZC4KClRoYW5rcywKTWlx
dcOobAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
