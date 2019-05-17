Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AEAC21523
	for <lists+linux-mtd@lfdr.de>; Fri, 17 May 2019 10:13:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xTXCzJJzElSG6jdXlryCf/msTa7SqSGbItcVi83iGZY=; b=isb2BnBIZSG+05
	I0JrhQlh5VtQPQzO7fKf999PtjJ+I1nmLf+4EdRfXxacJMMbK5kcqOXVV20nuQKMl043LB23QbpgN
	rwlzSar6AkfHEPA7MU7nPIXo5fJ9qAxBX5y8kBWqHXKbgXwkBoF6Jn4ZN+f06vznnW6jG1u6mPDH3
	a6avbjopVNnIZoe5njitkZlufLo/hf3KMBh9GBC3PTurRtYkyCTkyCdu2mm5DW0hSYGzKoSuhuVpi
	s2HhRlmJECfO+Dub3L2hXXGOKqnGzu/RLELNLVIeLESNKpAud33xVke6t3eJ3XbTypKw3h0iigWLY
	7d7tjhuU/SJ7TspBNLFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRXzO-00044r-SZ; Fri, 17 May 2019 08:13:14 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRXzH-000445-Aw; Fri, 17 May 2019 08:13:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HfUNCgi2KJv5E7lE8RJSS6Eat2wh8JSxuM+Bk6ck2dE=; b=WXTjCO/t8XLvCQh9WMCHkg/eoG
 cNzGKJst36yVR+b/2sh5uvNrQ0yfr981h+Wu9lQxFqiI7SV8nqjdEiVDLLANr9UZ/Z7a5a8yqNyWB
 rj47cFdE2d+35Klf8y4u7+cPHGaNcUaLiEQnnr+TVq5yNZIrvY8E0s9HWwEjV5YtG2pgsSXFxB47b
 sNLzXUHf6zdlVI1G7XqGBeT2MCdvD39UOV+IksffAAMdvB1JbKzFZvJJWslPyHCWj3C+51Tqy6xxr
 6hMPjxwGzLhffeGxKorze1/+9NNNA7Gr7pqOSrzh1gKwuNCi+RZkqpp0NXjXaNsE0hslhIdSNg2fS
 qMCKcTXg==;
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRXzD-00024m-VR; Fri, 17 May 2019 08:13:05 +0000
Received: from xps13 (246.41.136.77.rev.sfr.net [77.136.41.246])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 3BFC924000F;
 Fri, 17 May 2019 08:12:28 +0000 (UTC)
Date: Fri, 17 May 2019 10:12:26 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: xiaolei li <xiaolei.li@mediatek.com>
Subject: Re: [PATCH v3 0/4] MTK NAND driver improvements and fixes
Message-ID: <20190517101226.17b23550@xps13>
In-Reply-To: <1558056767.26455.98.camel@mhfsdcap03>
References: <20190507102541.34341-1-xiaolei.li@mediatek.com>
 <1558056767.26455.98.camel@mhfsdcap03>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_091304_068103_86EC798C 
X-CRM114-Status: UNSURE (   5.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: richard@nod.at, linux-mediatek@lists.infradead.org,
 linux-mtd@lists.infradead.org, srv_heupstream@mediatek.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgeGlhb2xlaSwKCnhpYW9sZWkgbGkgPHhpYW9sZWkubGlAbWVkaWF0ZWsuY29tPiB3cm90ZSBv
biBGcmksIDE3IE1heSAyMDE5IDA5OjMyOjQ3CiswODAwOgoKPiBIaSBNaXF1ZWwsCj4gCj4gU29y
cnkgdG8gYm90aGVyIHlvdSwgYnV0IG1heSBJIGFzayBpZiBpdCBpcyBmaW5lIHRvIGFjY2VwdCB0
aGlzIHBhdGNoCj4gc2V0IG5vdywgcGF0Y2hlcyBhbGwgd2l0aCB5b3VyIHJldmlldy4KCldlIGFy
ZSBpbiB0aGUgbWlkZGxlIG9mIHRoZSBtZXJnZSB3aW5kb3csIHNvIHllcywgSSB3aWxsIHRha2Ug
eW91cgpwYXRjaGVzLCBidXQgbm90IG5vdy4KClRoYW5rcywKTWlxdcOobAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNj
dXNzaW9uIG1haWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LW10ZC8K
